'use strict';

module.exports = function (config) {
	config.set({
		autoWatch: true,
		basePath: '',
		frameworks: ['jasmine'],
		logLevel: config.LOG_INFO,
		browsers: ['PhantomJS'],
		singleRun: false,
		reporters: ['progress'],
		files: [
			'components/angular/angular.js',
			'components/angular-mocks/angular-mocks.js',
			'src/*.coffee',
			'spec/*.coffee'
		]
	});
};
