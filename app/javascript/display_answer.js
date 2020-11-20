if (document.URL.match(/prefs/)){
  function display_answer() {
    const list2 = document.querySelectorAll(".list2")
    const list3 = document.querySelectorAll(".list3")
    const answer = document.getElementById("answer")

    for (let i = 0; i <= 3; i++ ) {
      list2[i].addEventListener('click', ()=>{
        list3[i].setAttribute("style","display:inline")
        answer.setAttribute("style","display:block")
      })
    }
  }
  window.addEventListener('load', display_answer)
}