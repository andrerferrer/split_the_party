// go to the homepage and run
// https://kitt.lewagon.com/camps/999
[ ...document.querySelectorAll('.tas a') ].map( e => e.children[0].dataset.title ).join(',')