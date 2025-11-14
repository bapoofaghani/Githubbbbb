const parameters = {
    RETHINK_HOST: "localhost",
    RETHINK_PORT: 28015,
};

if (process.env.RUNNING_IN_DOCKER !== "1") {
    const fs = require("fs");

    const configPHP = fs.readFileSync("../config.php").toString("utf-8");
    const pattern = /define\s*\(\'([^\']+)\'\s*,\s*(?:RUNNING_IN_DOCKER.+:)?\s*(?:(?:\'([^\']+)\')|(\d+))\)/ig;
    while ((match = pattern.exec(configPHP)) !== null) {
        parameters[match[1]] = match[2] || match[3];
    }

} else {
    parameters.DOMAIN = process.env.DOMAIN;
    parameters.DB_NAME = process.env.DB_NAME;
    parameters.DB_HOST = process.env.DB_HOST;
    parameters.DB_USER = process.env.DB_USER;
    parameters.DB_PASS = process.env.DB_PASS;
    parameters.RETHINK_HOST = process.env.RETHINK_HOST;
    parameters.RETHINK_PORT = process.env.RETHINK_PORT;
    parameters.PORT_1 = process.env.PORT_1;
    parameters.PORT_2 = process.env.PORT_2;
    parameters.PORT_3 = process.env.PORT_3;
}
module.exports = {
    rethinkdb: {
        host: parameters.RETHINK_HOST,
        port: parseInt(parameters.RETHINK_PORT),
        authKey: "",
        db: parameters.DB_NAME
    },
    mysql: {
        host: parameters.DB_HOST,
        user: parameters.DB_USER,
        password: parameters.DB_PASS,
        database: parameters.DB_NAME,
    },
    port_1: parseInt(parameters.PORT_1),
    port_2: parseInt(parameters.PORT_2),
    port_3: parseInt(parameters.PORT_3),
    domain: parameters.DOMAIN,
}
