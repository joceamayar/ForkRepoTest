// function 'wait()' is scaled to return a new promise

const fs = require("fs")

function asyncWriteFile() {


  
  
  
  //TODO: return the promise!!!
  
  //TODO: (OPTIONAL) try passing an empty string file name to make the catch fire off
   new Promise((resolve, reject) => {
    fs.writeFile("helloWorld.txt", "hello world!!!", function (err) {

 //TODO:  reject if there is an error


 //TODO: resolve if there's no error




    })
  })
};


asyncWriteFile()


//TODO: in the event of success console log success

//TODO:  in the event of an error console log the error
