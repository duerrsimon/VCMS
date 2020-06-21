const HtmlWebpackPlugin = require('html-webpack-plugin');
const VueLoaderPlugin = require('vue-loader/lib/plugin');

module.exports = {
	  entry: './src/main.js',
	  module: {
		      rules: [
			            { test: /\.js$/, use: 'babel-loader' },
			            { test: /\.vue$/, use: 'vue-loader' },
			            { test: /\.css$/, use: ['vue-style-loader', 'css-loader']},
			          ]
			},
			resolve: {
				alias: {
				  'vue$': 'vue/dist/vue.esm.js' // 'vue/dist/vue.common.js' for webpack 1
				}
			  },
	  plugins: [
		      new HtmlWebpackPlugin({
			            template: './src/posters.html',
			          }),
		      new VueLoaderPlugin(),
		    ]
};
