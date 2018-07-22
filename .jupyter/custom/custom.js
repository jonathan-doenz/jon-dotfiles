require(["nbextensions/snippets_menu/main"], function (snippets_menu) {
	console.log('Loading `snippets_menu` customizations from `custom.js`');
	var horizontal_line = '---';
	var my_favorites = {
		'name' : 'Own customization',
		'sub-menu' : [
			{
				'name' : 'Import Python libraries',
				'snippet' : ['import numpy as np',
				'import pandas as pd',
				'import matplotlib.pyplot as plt',
				'%matplotlib inline', 
				'import seaborn as sns',],
			},
			{
				'name' : 'Another menu item',
				'snippet' : ['another_new_command(2.78)',],
			},
		],
	};
	snippets_menu.options['menus'] = snippets_menu.default_menus;
	snippets_menu.options['menus'][0]['sub-menu'].push(horizontal_line);
	snippets_menu.options['menus'][0]['sub-menu'].push(my_favorites);
	console.log('Loaded `snippets_menu` customizations from `custom.js`');
});
