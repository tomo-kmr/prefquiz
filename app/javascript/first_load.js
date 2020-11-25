if (document.URL.match(/prefs/)){
  function first_load() {
    // 回答の選択肢をクリックした時の設定
    const list2 = document.querySelectorAll(".list2")
    const list3 = document.querySelectorAll(".list3")
    const answer = document.getElementById("answer")

    for (let i = 0; i <= 3; i++ ) {
      list2[i].addEventListener('click', ()=>{
        list3[i].setAttribute("style","visibility:visible")
        answer.setAttribute("style","display:block")
      })
    }
    // 画像を回転させる
    const map = document.getElementById("japan")
    map.style.transform = `rotate(${gon.prefs[0].rotate}deg)`; 
  }
  window.addEventListener('load', first_load)
}