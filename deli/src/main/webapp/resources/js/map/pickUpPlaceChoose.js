
 let place_name;

 function openChild(name){
	place_name=name;
	let url = document.getElementById('url').value;
	 url = place_name;
	}
 
  		function onClick(){
	
		if(place_name==""||place_name==undefined){
			alert("다시입력해주세요");
			return;
		}

  			let popupWidth = 500;
  			let popupHeight = 600;
  			let left = Math.ceil((window.screen.width-popupWidth)/2);
  			let top = Math.ceil((window.screen.height-popupHeight)/2);;
  			
 		openWin = window.open("/deli/place/category.dlv?name="+place_name,"childForm","width="+popupWidth+",height="+popupHeight+",left="+left+",top="+top+"resizable=yes") 
 		}
 
