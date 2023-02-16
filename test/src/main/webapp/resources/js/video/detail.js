// detail 페이지 내 영상부분 찜하기, 좋아요, 싫어요 버튼 누를시 칠해져있는 아이콘으로 변경하기
const comu_btn = document.querySelectorAll('.comu_btn');

for(var i = 0; i<comu_btn.length; i++) {
    comu_btn[i].addEventListener('click', function(){
        this.classList.toggle('fas');
    });
}

// 배우정보 많아서 div 밖으로 넘어갈때 처리
var actor_info = document.querySelector(".actor_info");
var actor_info_height = actor_info.offsetHeight;
var actor_info_content_height = actor_info.scrollHeight;

if (actor_info_content_height > actor_info_height) { 
	var newArea = document.createElement("div");
	newArea.id = "info2";
	document.body.appendChild(newArea); 
	document.getElementById("info2").innerHTML = "이거는 추가해보는 테스트코드임"; 
	document.querySelector("actor_info").style.height = "50%"; 
	document.getElementById("info2").style.display = "block"; 
}

// 댓글 원글 눌렀을때 댓글작성하기
