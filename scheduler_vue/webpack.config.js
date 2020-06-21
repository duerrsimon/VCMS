const HtmlWebpackPlugin = require('html-webpack-plugin');
const VueLoaderPlugin = require('vue-loader/lib/plugin');
var path = require('path');

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
						  "@ant-design/icons/lib/dist$": path.resolve(__dirname, "./src/icons.js")
						}
			  },
	  plugins: [
		      new HtmlWebpackPlugin({
			            template: './src/dragdrop.html',
			          }),
		      new VueLoaderPlugin(),
		    ]

};
