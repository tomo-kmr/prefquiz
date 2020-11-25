if (document.URL.match( /prefs/ )){
  function change(){
    const next = document.getElementById("next-btn")
    const title = document.getElementById('title')
    let cnt = 1

    if (next.getAttribute("data-load") != null) {
      return null;
    }
    next.setAttribute("data-load", "true");
    
    next.addEventListener('click', ()=>{
      const list3 = document.querySelectorAll(".list3")
      const answer = document.getElementById("answer")
      for (let i = 0; i <= 3; i++ ) {
        list3[i].setAttribute("style","visibility:hidden")
        answer.setAttribute("style","display:none")
      }
      
      let chg_part = document.getElementById("change-part");
      chg_part.remove()
       if (cnt <= 4){
        const HTML1 = `
        <div id="change-part">
          <p class='number-problem' id='number-problem' >${cnt+1}問目/全5問</p>
          <img src="/assets/_${gon.prefs[cnt].pic_no}_.png" alt="サンプル画像です" class='japan' id='japan'>
        </div>
        `;
        title.insertAdjacentHTML("afterend", HTML1);
        // 画像を回転させる
      }else{
        const HTML1 = `
        <div id="change-part">
          <p class='number-problem' id='number-problem' >また最初からもしくは画面を更新して挑戦してください</p>
        </div>
        `;
        title.insertAdjacentHTML("afterend", HTML1);
      };
      const map = document.getElementById("japan")
      map.style.transform = `rotate(${gon.prefs[cnt].rotate}deg)`; 

      for (i=0;i<=3;i++){
        if (gon.prefs[cnt].answer_no == i){
          document.getElementById(`list2_${i}`).innerHTML=gon.prefs[cnt].pref_name
          document.getElementById(`list3_${i}`).innerHTML="正解"
        }else{ 
          document.getElementById(`list2_${i}`).innerHTML=gon.prefs_all[i+cnt*3].pref_name
          document.getElementById(`list3_${i}`).innerHTML="不正解"
        }
      }document.getElementById("answer").innerHTML=`正解は${gon.prefs[cnt].pref_name}です`
      cnt = cnt +1
    })
  }
  setInterval(change, 1000);
}