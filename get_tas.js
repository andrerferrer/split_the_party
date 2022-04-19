// go to the https://kitt.lewagon.com/camps/999 (replacing 999 with the batch number) and run
[ ...document.querySelectorAll('.dashboard-session-today-staff a') ].map( e => e.children[0].dataset.title ).join(',')
