// dashboard-charts.js  —  Chart.js helpers para Blazor
// wwwroot/dashboard-charts.js

window.dashCharts = (() => {
    const _inst = {};

    const VERDE = ['#2d6a1f','#3d7a2a','#4e8c3a','#6fa057','#8dba74',
                   '#a2cb8b','#b8dba0','#c8e8b5','#1a4d12','#5a9648'];

    function destroy(id) {
        if (_inst[id]) { _inst[id].destroy(); delete _inst[id]; }
    }

    // ── G1: Barras verticales — Grupos por Categoría ─────────────
    function renderBarras(id, labels, data) {
        destroy(id);
        const ctx = document.getElementById(id);
        if (!ctx) return;
        _inst[id] = new Chart(ctx, {
            type: 'bar',
            data: {
                labels,
                datasets: [{
                    label: 'Cantidad',
                    data,
                    backgroundColor: VERDE.slice(0, data.length).map(c => c + 'cc'),
                    borderColor:     VERDE.slice(0, data.length),
                    borderWidth: 2, borderRadius: 8, borderSkipped: false,
                }]
            },
            options: {
                responsive: true, maintainAspectRatio: false,
                plugins: {
                    legend: { display: false },
                    tooltip: { backgroundColor:'#1e2a1a', titleColor:'#fff', bodyColor:'#d4edca',
                               padding:10, cornerRadius:8,
                               callbacks: { label: c => ` ${c.parsed.y} grupos` } }
                },
                scales: {
                    x: { grid:{display:false}, ticks:{color:'#6b7c65', font:{size:12}} },
                    y: { beginAtZero:true, grid:{color:'#d0e3c822'},
                         ticks:{color:'#6b7c65', stepSize:1, font:{size:11}} }
                },
                animation: { duration:800, easing:'easeOutQuart' }
            }
        });
    }

    // ── G2: Pie — Áreas de Conocimiento ──────────────────────────
    // Leyenda a la DERECHA para que no quede cortada con altura fija
    function renderPie(id, labels, data) {
        destroy(id);
        const ctx = document.getElementById(id);
        if (!ctx) return;
        _inst[id] = new Chart(ctx, {
            type: 'pie',
            data: {
                labels,
                datasets: [{
                    data,
                    backgroundColor: VERDE.slice(0, data.length).map(c => c + 'dd'),
                    borderColor: '#fff',
                    borderWidth: 2,
                    hoverOffset: 10,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                layout: { padding: { right: 8 } },
                plugins: {
                    legend: {
                        position: 'right',          // ← a la derecha, no abajo
                        align: 'center',
                        labels: {
                            color: '#1e2a1a',
                            font: { size: 11, family: 'Inter, sans-serif' },
                            padding: 14,
                            usePointStyle: true,
                            pointStyleWidth: 9,
                            boxHeight: 9,
                        }
                    },
                    tooltip: {
                        backgroundColor:'#1e2a1a', titleColor:'#fff', bodyColor:'#d4edca',
                        padding:10, cornerRadius:8,
                        callbacks: { label: c => ` ${c.label}: ${c.parsed}` }
                    }
                },
                animation: { animateRotate:true, duration:900, easing:'easeOutQuart' }
            }
        });
    }

    // ── G3: Líneas — Evolución de Fundaciones ────────────────────
    function renderLineas(id, anios, dataGrupos, dataSemilleros) {
        destroy(id);
        const ctx = document.getElementById(id);
        if (!ctx) return;
        _inst[id] = new Chart(ctx, {
            type: 'line',
            data: {
                labels: anios,
                datasets: [
                    {
                        label: 'Grupos',
                        data: dataGrupos,
                        borderColor: '#2d6a1f', backgroundColor: '#2d6a1f22',
                        borderWidth: 2.5, pointRadius: 5, pointBackgroundColor: '#2d6a1f',
                        tension: 0.4, fill: true,
                    },
                    {
                        label: 'Semilleros',
                        data: dataSemilleros,
                        borderColor: '#8dba74', backgroundColor: '#8dba7422',
                        borderWidth: 2.5, pointRadius: 5, pointBackgroundColor: '#8dba74',
                        tension: 0.4, fill: true,
                    }
                ]
            },
            options: {
                responsive: true, maintainAspectRatio: false,
                plugins: {
                    legend: { position:'top', labels:{ color:'#1e2a1a', font:{size:11},
                              usePointStyle:true, padding:14 } },
                    tooltip: { backgroundColor:'#1e2a1a', titleColor:'#fff', bodyColor:'#d4edca',
                               padding:10, cornerRadius:8, mode:'index', intersect:false }
                },
                scales: {
                    x: { grid:{color:'#d0e3c822'}, ticks:{color:'#6b7c65', font:{size:11}} },
                    y: { beginAtZero:true, grid:{color:'#d0e3c822'},
                         ticks:{color:'#6b7c65', stepSize:1, font:{size:11}} }
                },
                animation: { duration:900, easing:'easeOutQuart' }
            }
        });
    }

    // ── G4: Barras horizontales — Top Grupos con más Líneas ──────
    function renderBarrasH(id, labels, data) {
        destroy(id);
        const ctx = document.getElementById(id);
        if (!ctx) return;
        _inst[id] = new Chart(ctx, {
            type: 'bar',
            data: {
                labels,
                datasets: [{
                    label: 'Líneas',
                    data,
                    backgroundColor: VERDE.slice(0, data.length).map(c => c + 'cc'),
                    borderColor:     VERDE.slice(0, data.length),
                    borderWidth: 2, borderRadius: 6,
                }]
            },
            options: {
                indexAxis: 'y',
                responsive: true, maintainAspectRatio: false,
                plugins: {
                    legend: { display: false },
                    tooltip: { backgroundColor:'#1e2a1a', titleColor:'#fff', bodyColor:'#d4edca',
                               padding:10, cornerRadius:8,
                               callbacks: { label: c => ` ${c.parsed.x} líneas` } }
                },
                scales: {
                    x: { beginAtZero:true, grid:{color:'#d0e3c822'},
                         ticks:{color:'#6b7c65', font:{size:11}} },
                    y: { grid:{display:false}, ticks:{color:'#6b7c65', font:{size:11},
                         maxRotation:0} }
                },
                animation: { duration:800, easing:'easeOutQuart' }
            }
        });
    }

    return { renderBarras, renderPie, renderLineas, renderBarrasH, destroy };
})();
