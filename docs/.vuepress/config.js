module.exports = {
	title: 'Study JSP',
	
	description: 'JSP学习记录',
	themeConfig: {
		logo: '/img/jsp.jpg',
		sidebar: 'auto',
		nav: [{
				text: 'Home',
				link: '/'
			},
			{
				text: 'GitHUb',
				link: 'https://github.com/Muieay/JSP_Notes'
			},
		],
		sidebar: [
			'Start',
			'MD/JSP语法',
			'MD/include包含',
			'MD/域对象',
			'MD/EL',
			'MD/JSTL',
			'MD/JavaBean',
			'MD/过滤器'
		]
	},
	head: [
    ['link', { rel: 'shortcut icon', type: "image/x-icon", href: `./img/favicon.ico` }]
  ]
}
