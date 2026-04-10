using System.Net.Http.Json;
using System.Text.Json;

namespace FrontBlazor_AppiGenericaCsharp.Services
{
    // Servicio para ejecutar stored procedures via la API.
    // Se inyecta en las paginas Blazor con @inject SpService Sp
    public class SpService
    {
        private readonly HttpClient _http;

        private readonly JsonSerializerOptions _jsonOptions = new()
        {
            PropertyNameCaseInsensitive = true
        };

        public SpService(HttpClient http)
        {
            _http = http;
        }

        // --------------------------------------------------
        // EJECUTAR SP: POST /api/procedimientos/ejecutarsp
        // Envia nombreSP + parametros y devuelve resultados
        // --------------------------------------------------
        public async Task<(bool exito, List<Dictionary<string, object?>> resultados, string mensaje)>
            EjecutarSpAsync(string nombreSP, Dictionary<string, object?>? parametros = null)
        {
            try
            {
                // Armar el payload: { "nombreSP": "...", ...parametros }
                var payload = new Dictionary<string, object?> { ["nombreSP"] = nombreSP };
                if (parametros != null)
                {
                    foreach (var kvp in parametros)
                        payload[kvp.Key] = kvp.Value;
                }

                var respuesta = await _http.PostAsJsonAsync("/api/procedimientos/ejecutarsp", payload);
                
                // Leer como string primero para evitar crash si viene vacio
                var texto = await respuesta.Content.ReadAsStringAsync();

                if (string.IsNullOrWhiteSpace(texto))
                {
                    if (respuesta.IsSuccessStatusCode)
                        return (true, new(), "Operacion completada.");
                    else
                        return (false, new(), $"Error HTTP {(int)respuesta.StatusCode}.");
                }

                // Parsear el JSON
                JsonElement contenido;
                try
                {
                    contenido = JsonSerializer.Deserialize<JsonElement>(texto, _jsonOptions);
                }
                catch
                {
                    return (false, new(), $"Respuesta inesperada: {texto}");
                }
                // Intentar leer el mensaje
                string mensaje = contenido.TryGetProperty("mensaje", out JsonElement msg)
                    ? msg.GetString() ?? ""
                    : contenido.TryGetProperty("Mensaje", out JsonElement msg2)
                        ? msg2.GetString() ?? ""
                        : "";

                if (!respuesta.IsSuccessStatusCode)
                {
                    // Intentar obtener detalle del error
                    string detalle = contenido.TryGetProperty("detalle", out JsonElement det)
                        ? det.GetString() ?? mensaje
                        : mensaje;

                    if (string.IsNullOrEmpty(detalle))
                        detalle = "Error del servidor.";

                    return (false, new(), detalle);
                }

                // Extraer la lista de resultados
                var resultados = new List<Dictionary<string, object?>>();

                // La API puede devolver "resultados" o "Resultados"
                if (contenido.TryGetProperty("resultados", out var arr) ||
                    contenido.TryGetProperty("Resultados", out arr))
                {
                    if (arr.ValueKind == JsonValueKind.Array)
                    {
                        foreach (var fila in arr.EnumerateArray())
                        {
                            var dic = new Dictionary<string, object?>();
                            foreach (var prop in fila.EnumerateObject())
                            {
                                dic[prop.Name] = prop.Value.ValueKind switch
                                {
                                    JsonValueKind.String => prop.Value.GetString(),
                                    JsonValueKind.Number => prop.Value.TryGetInt32(out int i)
                                        ? i
                                        : prop.Value.GetDouble(),
                                    JsonValueKind.True  => true,
                                    JsonValueKind.False => false,
                                    JsonValueKind.Null  => null,
                                    _ => prop.Value.GetRawText()
                                };
                            }
                            resultados.Add(dic);
                        }
                    }
                }

                return (true, resultados, mensaje);
            }
            catch (Exception ex)
            {
                return (false, new(), $"Error: {ex.Message}");
            }
        }
    }
}
