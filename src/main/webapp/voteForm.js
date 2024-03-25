//vote 스크립트
function check(){
		if(document.form.jumin.value==""){
			alert("주민번호가 입력되지 않았습니다!");
			document.form.jumin.focus();
			return false;
		}
		if(document.form.name.value==""){
			alert("성명이 입력되지 않았습니다!");
			document.form.name.focus();
			return false;
		}
		
		if(document.form.no.value==""){
			alert("후보번호가 선택되지 않았습니다!");
			document.form.unitprice.focus();
			return false;
		}
		if(document.form.time.value==""){
			alert("투표시간이 입력되지 않앗습니다!");
			document.form.time.focus();
			return false;
		}
		if(document.form.time.value.length !=4){
			alert("투표시간을 숫자 4자리로 입력해주세요 예)0930");
			document.form.time.focus();
			return false;
		}
		if(document.form.area.value==""){
			alert("투표장소가 입력되지 않았습니다!");
			document.form.area.focus();
			return false;
		}
		let cnt=0;
		let rdo=document.getElementsByName("confirm");
		for (let i=0;i<rdo.length;i++){
			if (rdo[i].checked == true){
				cnt++;
				break;
			}
		}
		if(cnt == 0){
			alert("유권자확인이 선택되지 않았습니다!");
			return false;
		}
		
		document.form.submit();
	}