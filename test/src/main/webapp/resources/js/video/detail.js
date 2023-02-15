// detail 페이지 내 영상부분 찜하기, 좋아요, 싫어요 버튼 누를시 칠해져있는 아이콘으로 변경하기
const comu_btn = document.querySelectorAll('.comu_btn');

for(var i = 0; i<comu_btn.length; i++) {
    comu_btn[i].addEventListener('click', function(){
        this.classList.toggle('fas');
    });
}

// 댓글 원글 눌렀을때 댓글작성하기
