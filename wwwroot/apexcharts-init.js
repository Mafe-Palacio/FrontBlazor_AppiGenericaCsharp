// apexcharts-init.js
// Funciones JS llamadas desde Blazor via IJSRuntime (JSInterop).
// Chart.js se carga desde CDN en App.razor antes de este archivo.

// Referencia global para poder destruir el chart antes de recrearlo
window._chartGruposInstance = null;

/**
 * crearGraficaBarras - Crea una grafica de barras comparativa con Chart.js.
 * Llamada desde GraficaGruposSemilleros.razor via:
 *   JS.InvokeVoidAsync("crearGraficaBarras", elementId, etiquetas, grupos, semilleros)
 *
 * @param {string}   elementId  - id del <canvas> donde se dibuja la grafica
 * @param {string[]} etiquetas  - Nombres del eje X
 * @param {number[]} grupos     - Valores de Grupos de Investigacion
 * @param {number[]} semilleros - Valores de Semilleros
 */
window.crearGraficaBarras = (elementId, etiquetas, grupos, semilleros) => {
    const canvas = document.getElementById(elementId);
    if (!canvas) {
        console.warn("[Chart] Canvas no encontrado:", elementId);
        return;
    }

    // Destruir chart anterior si existe (evita "canvas already in use")
    if (window._chartGruposInstance) {
        window._chartGruposInstance.destroy();
        window._chartGruposInstance = null;
    }

    const ctx = canvas.getContext("2d");

    window._chartGruposInstance = new Chart(ctx, {
        type: "bar",
        data: {
            labels: etiquetas,
            datasets: [
                {
                    label: "Grupos / Categorías",
                    data: grupos,
                    backgroundColor: "rgba(111, 160, 87, 0.75)",  // --green-deeper con opacidad
                    borderColor:     "#6fa057",
                    borderWidth:     1.5,
                    borderRadius:    6,
                    borderSkipped:   false
                },
                {
                    label: "Semilleros",
                    data: semilleros,
                    backgroundColor: "rgba(141, 186, 116, 0.55)", // --green-dark con opacidad
                    borderColor:     "#8dba74",
                    borderWidth:     1.5,
                    borderRadius:    6,
                    borderSkipped:   false
                }
            ]
        },
        options: {
            responsive: true,
            maintainAspectRatio: true,
            plugins: {
                legend: {
                    position: "top",
                    labels: {
                        font:  { size: 13, family: "'Helvetica Neue', sans-serif" },
                        color: "#1e2a1a",   // --text
                        padding: 20,
                        usePointStyle: true,
                        pointStyle: "rectRounded"
                    }
                },
                tooltip: {
                    backgroundColor: "#1e2a1a",
                    titleColor:      "#d4edca",
                    bodyColor:       "#ffffff",
                    cornerRadius:    8,
                    padding:         10
                }
            },
            scales: {
                x: {
                    grid: { display: false },
                    ticks: {
                        color: "#6b7c65",  // --text-muted
                        font:  { size: 12 }
                    }
                },
                y: {
                    beginAtZero: true,
                    grid: {
                        color:     "rgba(208, 227, 200, 0.5)", // --border con opacidad
                        lineWidth: 1
                    },
                    ticks: {
                        color:     "#6b7c65",
                        font:      { size: 12 },
                        precision: 0  // Solo enteros en el eje Y
                    }
                }
            }
        }
    });
};
