if (document.URL.match(/prefs/)){
  function change(){
    const next = document.getElementById("next-btn")
    const title = document.getElementById('title')
    
    if (next.getAttribute("data-load") != null) {
      return null;
    }
    next.setAttribute("data-load", "true");
    
    next.addEventListener('click', ()=>{
      let img = document.getElementById('japan');
      img.remove()
      const HTML = `
      <img src="/assets/_${1}_.png" alt="サンプル画像です" class='japan' id='japan'>
      `;
      title.insertAdjacentHTML("afterend", HTML);
    })
  }
  setInterval(change, 1000);
}