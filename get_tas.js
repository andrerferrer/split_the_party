// go to the https://kitt.lewagon.com/camps/999 (replacing 999 with the batch number) and run the following script in the console of the browser
[ ...document.querySelectorAll('.dashboard-session-today-staff a') ].map( e => e.children[0].dataset.title ).join(',')
