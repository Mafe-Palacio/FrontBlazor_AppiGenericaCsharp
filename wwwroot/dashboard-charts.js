/** dashboard-charts.js
     Helpers para Chart.js usados desde Blazor via JS Interop
    Archivo: wwwroot/dashboard-charts.js
    Agregar en App.razor: <script src="dashboard-charts.js"></script>
*/

window.dashCharts = (() => {
    /** Registro de instancias para poder destruirlas al salir del componente */
    const _instancias = {};

    /** ─── Colores del tema (matching crud.css variables) */
    const VERDE_DEEP   = '#6fa057';
    const VERDE_DARK   = '#8dba74';
    const VERDE_LIGHT  = '#d4edca';
    const AZUL         = '#1d4ed8';
    const AZUL_LIGHT   = '#dbeafe';
    const MORADO       = '#6d28d9';
    const MORADO_LIGHT = '#ede9fe';
    const NARANJA      = '#d4870a';
    const NARANJA_L    = '#fff3e0';
    const ROJO         = '#e05555';
    const ROJO_LIGHT   = '#fdeaea';

    const PALETTE = [VERDE_DEEP, AZUL, MORADO, NARANJA, ROJO,
                     '#0891b2', '#059669', '#7c3aed', '#db2777', '#b45309'];

    /**  Destruir instancia previa */
    function destroy(canvasId) {
        if (_instancias[canvasId]) {
            _instancias[canvasId].destroy();
            delete _instancias[canvasId];
        }
    }

    /** ─── Gráfica de Barras: Líneas por Grupo de Investigación */
    function renderBarras(canvasId, labels, data) {
        destroy(canvasId);
        const ctx = document.getElementById(canvasId);
        if (!ctx) return;

        const gradientes = data.map((_, i) => {
            const g = ctx.getContext('2d').createLinearGradient(0, 0, 0, 260);
            const color = PALETTE[i % PALETTE.length];
            g.addColorStop(0, color);
            g.addColorStop(1, color + '55');
            return g;
        });

        _instancias[canvasId] = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labels,
                datasets: [{
                    label: 'Líneas de investigación',
                    data: data,
                    backgroundColor: gradientes,
                    borderColor: PALETTE.slice(0, data.length),
                    borderWidth: 2,
                    borderRadius: 8,
                    borderSkipped: false,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: { display: false },
                    tooltip: {
                        backgroundColor: '#1e2a1a',
                        titleColor: '#fff',
                        bodyColor: '#d4edca',
                        padding: 10,
                        cornerRadius: 8,
                        callbacks: {
                            label: ctx => ` ${ctx.parsed.y} líneas`
                        }
                    }
                },
                scales: {
                    x: {
                        grid: { display: false },
                        ticks: {
                            color: '#6b7c65',
                            font: { size: 11 },
                            maxRotation: 30,
                        }
                    },
                    y: {
                        beginAtZero: true,
                        grid: { color: '#d0e3c822' },
                        ticks: {
                            color: '#6b7c65',
                            stepSize: 1,
                            font: { size: 11 }
                        }
                    }
                },
                animation: {
                    duration: 800,
                    easing: 'easeOutQuart'
                }
            }
        });
    }

    /** ─── Gráfica de Dona: ODS por Categoría */
    function renderDona(canvasId, labels, data) {
        destroy(canvasId);
        const ctx = document.getElementById(canvasId);
        if (!ctx) return;

        const coloresCategoria = {
            'Social':      AZUL,
            'Ambientales': VERDE_DEEP,
            'Económicos':  NARANJA,
            'Estrategicos': MORADO,
        };

        const colores = labels.map(l => coloresCategoria[l] || ROJO);

        _instancias[canvasId] = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: labels,
                datasets: [{
                    data: data,
                    backgroundColor: colores.map(c => c + 'cc'),
                    borderColor: colores,
                    borderWidth: 2,
                    hoverOffset: 10,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                cutout: '65%',
                plugins: {
                    legend: {
                        position: 'bottom',
                        labels: {
                            color: '#1e2a1a',
                            font: { size: 12 },
                            padding: 16,
                            usePointStyle: true,
                            pointStyleWidth: 10,
                        }
                    },
                    tooltip: {
                        backgroundColor: '#1e2a1a',
                        titleColor: '#fff',
                        bodyColor: '#d4edca',
                        padding: 10,
                        cornerRadius: 8,
                        callbacks: {
                            label: ctx => ` ${ctx.label}: ${ctx.parsed} ODS`
                        }
                    }
                },
                animation: {
                    animateRotate: true,
                    duration: 900,
                    easing: 'easeOutQuart'
                }
            }
        });
    }

    return { renderBarras, renderDona, destroy };
})();
