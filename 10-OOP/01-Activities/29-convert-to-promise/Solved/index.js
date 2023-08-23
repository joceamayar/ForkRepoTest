// function 'wait()' is scaled to return a new promise

const fs = require("fs");

function asyncWriteFile() {
  //TODO: return the promise!!!

  //TODO: (OPTIONAL) try passing an empty string file name to make the catch fire off
  return new Promise((resolve, reject) => {
    fs.writeFile("hello.txt", "hello world!!!", function (e) {
      if (e) {
        //TODO:  reject if there is an error
        reject(new Error("super bad error"));
      } else {
        resolve("yay it worked")
      }
    });
  });
}

asyncWriteFile()
.then((data) => {
  //TODO: in the event of success console log success
  console.log(data)
  console.log("done");
})
.catch((anything) => console.log(anything));
//TODO:  in the event of an error console log the error



