const systemd = require('service-systemd');
const { exec } = require("child_process");

const matches = __dirname.match(/^\/home\/([^\/]+)\//);
if (!matches) {
	console.error("please put this file in /home directory");
	process.exit(1);
}
const user = matches[1];
const settings = [
	{
		name: 'socket-' + user + 1,
		cwd: __dirname,
		app: 'server.js',
		user: user,
		group: user,
		engine: "node",
		"engine.bin": "/usr/bin/node",
	},
	{
		name: 'socket-' + user + 2,
		cwd: __dirname,
		app: 'server3.js',
		user: user,
		group: user,
		engine: "node",
		"engine.bin": "/usr/bin/node",
	},
	{
		name: 'socket-' + user + 3,
		cwd: __dirname,
		app: 'sss.js',
		user: user,
		group: user,
		engine: "node",
		"engine.bin": "/usr/bin/node",
	}
];
for (const setting of settings) {

	systemd.add(setting).then(() => {
		console.log(setting.name + ' installed');
		console.log("starting " + setting.name);
		exec("systemctl start " + setting.name);
	}).catch((e) => {
		console.error('something wrong in adding ' + setting.name + ": ", e);
	});
}