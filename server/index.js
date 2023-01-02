// IMPORT FROM PACKAGE
const express  = require("express");
const mongoose = require("mongoose");  
// IMPORT FROM OTHER FILES
const authRouter = require("./routes/auth");

//init
const PORT =3000;

const app = express();
const DB = "mongodb+srv://dipesh:dipesh123@cluster0.tmmlpqr.mongodb.net/?retryWrites=true&w=majority"

 // middleware
 app.use(express.json());
app.use(authRouter);

// connnetion
mongoose
.connect(DB)
.then(()=> {
console.log("connection successful");

})
.catch((e) => {
    console.log(e);

});
   

app.listen(PORT,"0.0.0.0",  () => {
console.log(`connected at port  ${PORT} `);
});
