const express = require('express');
const server = express();
const ejs = require('ejs');
const mysql = require('mysql');

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'node',
    password: 'websystem',
    database: 'web'
});

server.get('/', function( req, res ){
    let tynumber = req.query.tynumber || 4;
    let query = 'select units.id, units.name, class.start_class, class.weapons, class.class_change from units inner join class on units.class_id = class.id and type = ' + tynumber + ' order by units.id;';
    console.log( query );
    connection.query( query, (error, rows, fields) => {
        if( error ) {
            console.log('Query Error');
        }
        res.render('sql1.ejs',{ content: rows });
    });
});

server.get('/status', function( req, res ){
    let stasort = req.query.stasort || 'Lv';
    let stanumber = req.query.stanumber || 10;
    let query = 'select units.id, units.name, status.Lv, status.HP, status.str, status.skl, status.spd, status.lck, status.def, status.res, status.con, status.mov, from units inner join status on units.status_id = status.id order by ' + stasort + ' desc limit ' + stanumber + ';';
    console.log( query );
    connection.query( query, (error, rows, fields) => {
        if( error ) {
            console.log('Query Error');
        }
        res.render('sql2.ejs',{ content: rows });
    });
});

server.get('/baseball', function( req, res ){
    res.send( 'はらへった' );
});

server.listen( 80, function() {
    console.log( 'listening on port 80' );
});
