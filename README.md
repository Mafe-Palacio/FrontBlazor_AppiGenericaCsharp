# 🔬 CRUD Investigación — Frontend Blazor

Sistema web de gestión de investigación académica desarrollado en **Blazor Server (.NET 9)**, conectado a una **API genérica en C#** que ejecuta stored procedures sobre **SQL Server**. Incluye autenticación JWT, control de acceso por roles y rutas, y una interfaz de diseño propio con sistema de tokens CSS en verde.

---

## 🚀 Tecnologías

| Capa | Tecnología |
|---|---|
| Frontend | Blazor Server — .NET 9 |
| Backend | ASP.NET Core Web API — C# |
| Base de datos | SQL Server (stored procedures) |
| Autenticación | JWT + BCrypt |
| Estilos | CSS custom (design system propio, sin frameworks de UI) |
| Íconos | Bootstrap Icons |

---

## ✨ Funcionalidades

### 🔐 Autenticación y seguridad
- Login con JWT — token almacenado en sesión cifrada
- Recuperación de contraseña con código temporal por correo (SMTP)
- Cambio de contraseña voluntario y forzado (tras recuperación)
- Registro de nuevos usuarios con contraseña hasheada con BCrypt
- Control de acceso por **roles** y **rutas** — redirige a `/sin-acceso` si no tiene permiso
- Cierre de sesión seguro

### 📋 Módulos CRUD
Cada módulo incluye: listar, buscar, crear, editar y eliminar (borrado lógico) vía stored procedures.

| Módulo | Ruta |
|---|---|| Línea de Investigación | `/linea-investigacion` |
| Área de Conocimiento | `/area-conocimiento` |
| Área de Aplicación | `/area-aplicacion` |
| Objetivo de Desarrollo Sostenible | `/objetivo-desarrollo-sostenible` |
| Grupo de Investigación | `/grupo-investigacion` |
| Semillero | `/semillero` |
| Participa Grupo | `/participa-grupo` |
| Participa Semillero | `/participa-semillero` |
| Grupo — Línea | `/grupo-linea` |
| AC — Línea | `/ac-linea` |
| AA — Línea | `/aa-linea` |
| Semillero — Línea | `/semillero-linea` |
| ODS — Línea | `/ods-linea` |

### 🗂️ Maestro-Detalle
- **Grupos con Semilleros** (`/grupos-semilleros`): tabla maestra de grupos con sub-tabla de semilleros anidada. Permite crear, editar y eliminar tanto el grupo como sus semilleros desde una sola vista, con botón de agregar semillero por grupo.

---

## 🏗️ Arquitectura

```
FrontBlazor_AppiGenericaCsharp/
├── Components/
│   ├── Layout/
│   │   ├── MainLayout.razor       # Layout principal + control de acceso
│   │   ├── NavMenu.razor          # Menú lateral con secciones
│   │   └── EmptyLayout.razor      # Layout sin menú (login, registro)
│   └── Pages/
│       ├── Login.razor
│       ├── CrearUsuario.razor
│       ├── CambiarContrasena.razor
│       ├── RecuperarContrasena.razor
│       ├── SinAcceso.razor
│       ├── MaestroDetalle.razor   # Grupos + Semilleros
│       └── [un .razor por módulo CRUD]
├── Services/
│   ├── SpService.cs               # Ejecuta SPs via POST /api/procedimientos/ejecutarsp
│   ├── AuthService.cs             # Login, sesión, roles, rutas
│   └── ApiService.cs              # Llamadas REST genéricas (registro, encriptación)
└── wwwroot/
    ├── crud.css                   # Design system: variables, tabla, formulario, login
    └── app.css
```

---

## ⚙️ Configuración

### `appsettings.json` (Frontend)
```json
{
  "ApiBaseUrl": "http://localhost:5035",
  "Smtp": {
    "Host": "smtp.gmail.com",
    "Port": 587,
    "User": "tu-correo@gmail.com",
    "Pass": "tu-app-password",
    "From": "tu-correo@gmail.com"
  }
}
```

### `appsettings.json` (API)
```json
{
  "ConnectionStrings": {
    "DefaultConnection": "Server=...;Database=...;..."
  },
  "Jwt": {
    "Key": "MinimumThirtyTwoCharacterSecretKey!!",
    "DuracionMinutos": 60
  }
}
```

---

## 🗄️ Base de datos — tablas de seguridad

```sql
CREATE TABLE usuario   (email VARCHAR(200) PRIMARY KEY, contrasena VARCHAR(200) NOT NULL);
CREATE TABLE rol       (id INT IDENTITY PRIMARY KEY, nombre VARCHAR(100) NOT NULL);
CREATE TABLE rol_usuario (id INT IDENTITY PRIMARY KEY, fkemail VARCHAR(200) REFERENCES usuario(email), fkidrol INT REFERENCES rol(id));
CREATE TABLE ruta      (id INT IDENTITY PRIMARY KEY, ruta VARCHAR(200) NOT NULL, descripcion TEXT DEFAULT '');
CREATE TABLE rutarol   (id INT IDENTITY PRIMARY KEY, fkidrol INT REFERENCES rol(id), fkidruta INT REFERENCES ruta(id));
```

> ⚠️ Las contraseñas deben insertarse **a través de la API** usando `?camposEncriptar=contrasena` para que BCrypt las hashee correctamente. No insertar en texto plano.

---

## 🧩 Patrón de comunicación con la API

Todas las páginas CRUD utilizan `SpService` que hace `POST /api/procedimientos/ejecutarsp`:

```csharp
var (ok, datos, msg) = await Sp.EjecutarSpAsync("SP_LISTAR_GRUPOS", new()
{
    ["p_id"] = 1
});
```

La API devuelve `{ "exito": true, "resultados": [...], "mensaje": "..." }` y el servicio lo deserializa a `List<Dictionary<string, object?>>`.

---

## 🎨 Design System

El proyecto usa un sistema de diseño propio definido en `crud.css` sin depender de componentes de Bootstrap. Variables principales:

```css
--green:        #A2CB8B;
--green-dark:   #8dba74;
--green-deeper: #6fa057;
--green-light:  #d4edca;
--green-faint:  #f0f7ed;
```

Clases reutilizables: `crud-wrapper`, `crud-table`, `table-wrap`, `form-card`, `btn-add`, `btn-action`, `btn-edit`, `btn-delete`, `id-badge`, `alert-custom`, `search-bar`, `md-*` (maestro-detalle).

---

## 👩‍💻 Desarrollado por

**Maria Fernanda Palacio** — Ingeniería de Sistemas  
Instituto Tecnológico Metropolitano (ITM) — 2026