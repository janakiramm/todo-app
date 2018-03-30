var mongoose = require( 'mongoose' );
var Schema   = mongoose.Schema;
var DBHost=process.env["DBHOST"] || "db";

var Todo = new Schema({
    user_id    : String,
    content    : String,
    updated_at : Date
});

mongoose.model( 'Todo', Todo );

mongoose.connect( DBHost+'/express-todo' );
