
function isEmpty(str){
    if(str != null && str != undefined && $.trim(str) != ""){
        return false;
    } else {
        return true;
    }
}

function alert2(str, callback, icon){
    if(!isEmpty(icon))
        str = "<p style='font-size:70px;margin-bottom:5px;'>" + icon + "</p>" + str;

    Swal.fire({
        allowOutsideClick: false,
        html: str,
        confirmButtonText: "확인",
        confirmButtonClass: "btn btn-confirm mt-2"
    }).then((result) => {
        if(callback != null){
             callback();
        }
    });
}

function confirm2(str, icon, confirmCallback, cencelCallback){
    if(!isEmpty(icon))
        str = "<p style='font-size:70px;margin-bottom:5px;'>" + icon + "</p>" + str;

    Swal.fire({
        allowOutsideClick: false,
        html: str,
        confirmButtonText: "넵",
        confirmButtonClass: "btn btn-confirm mt-2",
        showCancelButton: true,
        cancelButtonClass: 'btn btn-cancel mt-2',
        cancelButtonText: '아니오'

    }).then((result) => {
        if (result.value) {
            if(confirmCallback != null){
                 confirmCallback();
            }
        } else {
            if(cencelCallback != null){
                 cencelCallback();
            }
        }

    });
}

function showLoading(str){
    Swal.fire({
        allowOutsideClick: false,
        html: "<div class='spinner-border avatar-lg text-primary m-2' role='status'></div><div class='mt-2'>" + str + "</div>",
        showConfirmButton: false
    });
}

function hideLoading(){
    Swal.close();
}

function addButtonLoader(btn){
    $(btn).append("<span class='btn-loader spinner-border spinner-border-sm ml-1' role='status' aria-hidden='true'></span>")
}

function removeButtonLoader(btn){
    $(btn + " span").remove(".btn-loader");
}


function onlyNumber(){
    if((event.keyCode<48)||(event.keyCode>57))
       event.returnValue=false;
}

function birthdayCheck(str){

    str = str.replace("/", "");
    if(str.length != 4){
        return false;
    } else {
        let month = Number(str.substring(0,2));
        let day = Number(str.substring(2));

        if(month == 0) return false;
        if(month > 12) return false;

        if(day == 0) return false;
        if(day > 31) return false;

        return true;
    }
}


/** 숫자에 콤마 넣기*/
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


/** 숫자만 입력 받기 With 콤마 **/
function numberOnlyWithComma(t) {
	// 콤마 빼고
	let x = t.value.replace(/,/gi, '');

	// 숫자 정규식 확인
	let regexp = /^[0-9]*$/;

	if(!regexp.test(x))
	    $(t).val($(t).val().substr(0, $(t).val().length -1 ));
	else
	    $(t).val(numberWithCommas(x));

}

/** 숫자만 입력 받기 With 하이픈 **/
function numberOnlyWithHipen(t) {
   $(t).val( $(t).val().replace(/[^0-9-]/gi,""));
}

/** 이미지만 업로드 **/
function checkImageUpload(obj) {
    let file_kind = obj.value.lastIndexOf('.');
    let file_name = obj.value.substring(file_kind+1,obj.length);
    let file_type = file_name.toLowerCase();
    let check_file_type = ['jpg','gif','png','jpeg','bmp'];

    if(check_file_type.indexOf(file_type) == -1) {
        alert2("이미지 파일 업로드 하세요", function(){ },"🤷🏻‍♂️");
        let parent_Obj=obj.parentNode
        let node = parent_Obj.replaceChild(obj.cloneNode(true),obj);
        return false;
    }


}