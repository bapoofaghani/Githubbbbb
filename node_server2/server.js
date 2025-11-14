/**
 * Created by Muhammad-ASUS on 8/10/2018.
 */

var express = require('express');
var schedule = require('node-schedule');

var config = require('./config');
var databaseController = require('./controllers/databaseController');

const hostname = '0.0.0.0';
const port = config.port_2;

var app = express();

app.set('views', __dirname + '/views');
app.set('view engine', 'json');

var auth = require('./router/auth');
app.use('/api/user/Newgame/', auth);

databaseController.connectDB(function (conn) {
	databaseController.createDatabase(conn, config.rethinkdb.db)
		.then(function () {
			return databaseController.createTable(conn, 'online_gamer');
		})
		.catch(function (err) {
			console.log('Error connecting to RethinkDB: ' + err);
		});
});



var expressWs = require('express-ws')(app);
var websocket_connect = require('./controllers/websocket_connect');

app.ws('/connect', function (ws, req) {
	var new_change = true;

	ws.onclose = function (event) {
		console.log('connection is closed');

		var target = event.target;
		var events = target._events;
		events.message(JSON.stringify({
			token: 0
		}))

		ws.on('message', function (msg) {

		})
	}


	ws.on('message', function (msg) {
		console.log(msg);
		msg_jsons = JSON.parse(msg);

		if (msg_jsons.token == 0) {
		}
		else if (msg_jsons.token != 0) {
			if (new_change === true) {
				new_change = false;
				var msg_json = JSON.parse(msg);
				var token = msg_json.token;
				command = msg_json;
				var cancel_job = false;
				var j = schedule.scheduleJob('*/5 * * * * *', function () {

					if (ws.readyState == 3 && cancel_job === false) {

						j.cancel();

						websocket_connect.connection_close(msg_json, function (result) {

						})
					}
				});
				var filter = {};
				databaseController.changeData(filter, function (cursor) {

					if (cursor.new_val != null) {
						if (cursor.new_val.token == token && cursor.new_val.user_id == msg_json.uid) {
							if (ws.readyState === ws.OPEN) {

								websocket_connect.check_cursor(msg, cursor, function (json) {

									ws.send(json);
								})
							}
							else {
							}

						}
						else if (cursor.new_val.status == 3 && cursor.new_val.user_id != msg_json.uid) {
							if (ws.readyState === ws.OPEN) {

								websocket_connect.get_game_list(msg, cursor, function (json) {

									ws.send(json);
								})
							}
						}
					}
				});
			}

			websocket_connect.get_msg(msg, function (json) {
				if (json != null)
					ws.send(json);
			});
		}
	});
});
console.log(port,hostname);
app.listen(port, hostname);
