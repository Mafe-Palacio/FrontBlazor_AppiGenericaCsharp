# Tutorial: Frontend Blazor CRUD
# Parte 4: Layout y Navegacion

En esta parte modificamos el menu lateral para agregar links a las 6 tablas y limpiamos el layout principal.

---

## 4.1 Que es el Layout en Blazor

El **Layout** es la estructura visual que envuelve todas las paginas. En Blazor se define con dos archivos:

```
┌──────────────────────────────────────────────────────┐
│  MainLayout.razor                                     │
│  ┌────────────┐  ┌────────────────────────────────┐  │
│  │ NavMenu.razor│  │  Contenido de la pagina       │  │
│  │             │  │  (@Body)                       │  │
│  │  Home       │  │                                │  │
│  │  Empresa    │  │  Aqui se renderiza cada         │  │
│  │  Persona    │  │  pagina segun la URL:           │  │
│  │  Producto   │  │                                │  │
│  │  Rol        │  │  /          → Home.razor        │  │
│  │  Ruta       │  │  /producto  → Producto.razor    │  │
│  │  Usuario    │  │  /empresa   → Empresa.razor     │  │
│  │             │  │                                │  │
│  └────────────┘  └────────────────────────────────┘  │
└──────────────────────────────────────────────────────┘
```

- **MainLayout.razor** — Define la estructura general: sidebar (menu) + area de contenido
- **NavMenu.razor** — Define los links del menu lateral
- **@Body** — Placeholder donde Blazor inyecta la pagina actual

Cuando el usuario hace click en "Producto" en el menu, Blazor reemplaza `@Body` con el contenido de `Producto.razor`. No recarga toda la pagina, solo cambia el contenido central.

---

## 4.2 NavLink: El Componente de Navegacion

Blazor usa `<NavLink>` en lugar de `<a>` para los links del menu. La diferencia es que `NavLink` automaticamente agrega la clase CSS `active` cuando la URL coincide con su `href`:

```razor
<NavLink class="nav-link" href="producto">
    Producto
</NavLink>
```

- Si el usuario esta en `/producto`, el link se resalta visualmente (fondo mas claro)
- Si el usuario esta en otra pagina, el link se ve normal
- `Match="NavLinkMatch.All"` — Solo resalta si la URL coincide exactamente (se usa para Home "/")

---

## 4.3 Modificar NavMenu.razor

El template trae links a Counter y Weather que ya eliminamos. Los reemplazamos por links a nuestras 6 tablas.

Abrimos `Components/Layout/NavMenu.razor` y lo dejamos asi:

```razor
<div class="top-row ps-3 navbar navbar-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="">CRUD Facturas</a>
    </div>
</div>

<input type="checkbox" title="Navigation menu" class="navbar-toggler" />

<div class="nav-scrollable" onclick="document.querySelector('.navbar-toggler').click()">
    <nav class="nav flex-column">

        @* Link a la pagina de inicio *@
        <div class="nav-item px-3">
            <NavLink class="nav-link" href="" Match="NavLinkMatch.All">
                <span class="bi bi-house-door-fill-nav-menu" aria-hidden="true"></span> Home
            </NavLink>
        </div>

        @* Links a las 6 tablas sin clave foranea *@
        <div class="nav-item px-3">
            <NavLink class="nav-link" href="empresa">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Empresa
            </NavLink>
        </div>

        <div class="nav-item px-3">
            <NavLink class="nav-link" href="persona">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Persona
            </NavLink>
        </div>

        <div class="nav-item px-3">
            <NavLink class="nav-link" href="producto">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Producto
            </NavLink>
        </div>

        <div class="nav-item px-3">
            <NavLink class="nav-link" href="rol">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Rol
            </NavLink>
        </div>

        <div class="nav-item px-3">
            <NavLink class="nav-link" href="ruta">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Ruta
            </NavLink>
        </div>

        <div class="nav-item px-3">
            <NavLink class="nav-link" href="usuario">
                <span class="bi bi-list-nested-nav-menu" aria-hidden="true"></span> Usuario
            </NavLink>
        </div>

    </nav>
</div>
```

**Que cambiamos:**
- `navbar-brand` ahora dice **"CRUD Facturas"** en lugar del nombre del proyecto
- Eliminamos los links a Counter y Weather
- Agregamos 6 links nuevos: Empresa, Persona, Producto, Rol, Ruta, Usuario
- Cada `href` corresponde a la ruta de la pagina que crearemos (ej: `href="producto"` navega a `@page "/producto"`)
- `@* ... *@` — Asi se escriben comentarios en Razor (no se envian al navegador)

---

## 4.4 Modificar MainLayout.razor

El layout principal trae un link "About" que no necesitamos. Lo limpiamos:

Abrimos `Components/Layout/MainLayout.razor` y lo dejamos asi:

```razor
@inherits LayoutComponentBase

<div class="page">
    <div class="sidebar">
        <NavMenu />
    </div>

    <main>
        <div class="top-row px-4">
            <span>Frontend Blazor — API GenericaCsharp</span>
        </div>

        <article class="content px-4">
            @Body
        </article>
    </main>
</div>

<div id="blazor-error-ui" data-nosnippet>
    An unhandled error has occurred.
    <a href="." class="reload">Reload</a>
    <span class="dismiss">🗙</span>
</div>
```

**Que cambiamos:**
- `@inherits LayoutComponentBase` — Indica que este componente es un layout (obligatorio)
- Reemplazamos el link "About" por un texto descriptivo
- `<NavMenu />` — Renderiza el menu lateral que acabamos de modificar
- `@Body` — Aqui Blazor inyecta el contenido de la pagina actual
- El bloque `blazor-error-ui` lo dejamos igual, es el manejador de errores del framework

---

## 4.5 Como Funciona la Navegacion

Cuando la aplicacion esta corriendo:

```
  1. Usuario abre http://localhost:5100/
                    │
                    ▼
  2. Blazor carga MainLayout.razor
     - Renderiza el sidebar con NavMenu.razor
     - Busca @page "/" → encuentra Home.razor
     - Inyecta Home.razor en @Body
                    │
                    ▼
  3. Usuario hace click en "Producto" en el menu
                    │
                    ▼
  4. Blazor intercepta la navegacion (NO recarga la pagina)
     - La URL cambia a http://localhost:5100/producto
     - Busca @page "/producto" → encontrara Producto.razor (lo crearemos en la Parte 5)
     - Reemplaza @Body con Producto.razor
     - El menu y el layout se mantienen intactos
```

Esta es la navegacion SPA (Single Page Application): el sidebar y el layout nunca se recargan, solo cambia el contenido central.

**Nota:** Los links a las tablas aun no funcionan porque todavia no hemos creado las paginas (Producto.razor, Empresa.razor, etc.). Eso lo haremos en las Partes 5 y 6.

---

## 4.6 Commit

```powershell
git add .
git commit -m "Modificar layout y navegacion: menu con links a las 6 tablas"
git push
```

---

## Siguiente Parte

En la **Parte 5** crearemos el CRUD completo de la tabla **Producto** — la pagina mas importante del tutorial. Incluira: tabla con datos, formulario para crear, boton editar, boton eliminar, alertas y spinner de carga.
