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
				'name' : 'Automatically reload modules',
				'snippet' : ['%load_ext autoreload',
					'%autoreload 2',],
			},
			// {
			// 	'name' : 'Import my tidy modules',
			// 	'snippet' : ['import sys',
			// 		sys.path.append('/Users/jonathandoenz/Dropbox/python_stuff/my_python_modules/tidy'),
			// 		'',
			// 		'import features_extraction as fe',
			// 		'import tidy',],
			// },
			// {
			// 	'name' : 'Import my modules',
			// 	'snippet' : ['import sys',
			// 		sys.path.append('/Users/jonathandoenz/Dropbox/EPFL_2018-2019/admission_year/Semester_1/machineLearning/personal_modules'),
			// 		'',
			// 		'from costs import error_vec, compute_loss',
			// 		'from gradient_descent import MAE_subgradient, compute_gradient, gradient_descent',
			// 		'from stochastic_gradient_descent import compute_stoch_gradient, stochastic_gradient_descent',
			// 		'from grid_search import get_best_parameters, generate_w, grid_search',],
			// },
			// {
			// 	'name' : 'Another menu item',
			// 	'snippet' : ['another_new_command(2.78)',],
			// },
		],
	};
	snippets_menu.options['menus'] = snippets_menu.default_menus;
	snippets_menu.options['menus'][0]['sub-menu'].push(horizontal_line);
	snippets_menu.options['menus'][0]['sub-menu'].push(my_favorites);
	console.log('Loaded `snippets_menu` customizations from `custom.js`');
});
