let timeEl =document.querySelector("#time");
// let time =$("#time");
let projects = JSON.parse(localStorage.getItem("projects"))  || [];
let submitEl = document.querySelector("button");
let nameEl = document.querySelector("#name")
let typeEl = document.querySelector("#type")
let dateEl = document.querySelector("#date")

setInterval(function(){


    timeEl.textContent = dayjs().format("MMM, DD YYYY [at] hh:mm:ss")
    //time.text(dayjs().format("MMM, DD YYYY [at] hh:mm:ss"))
}, 1000)



for (let i = 0; i < projects.length; i++) {

    let newTr = document.createElement("tr")

    newTr.innerHTML = `
    <td>${projects[i].name}</td>
    <td>${projects[i].type}</td>
    <td>@${projects[i].date}</td>
  `
  document.querySelector("tbody").append(newTr);
    
}


submitEl.addEventListener("click", function(event){
event.preventDefault();
    let project = {
        name:nameEl.value,
        type:typeEl.value,
        date: dateEl.value
    }
    

    let newTr = document.createElement("tr")

    newTr.innerHTML = `
    <td>${project.name}</td>
    <td>${project.type}</td>
    <td>@${project.date}</td>
  `
  document.querySelector("tbody").append(newTr);

    projects.push(project);

    localStorage.setItem("projects", JSON.stringify(projects))

})

