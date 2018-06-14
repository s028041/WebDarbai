$(document).ready(function () {
    var compare1 = document.getElementById("compare1DropDownList");
    var compare2 = document.getElementById("compare2DropDownList");
    if(compare1 != null) document.getElementById("compare1DropDownList").addEventListener("change", comparebtn);
    if(compare2 != null) document.getElementById("compare2DropDownList").addEventListener("change", comparebtn);
    
    
    function comparebtn() {
        if ($("#compare1DropDownList").val() == $("#compare2DropDownList").val()) {
            $("#comparebtn").prop("disabled", true);
        } else {
            $("#comparebtn").prop("disabled", false);
        }
    }

   /* var validFilesTypes = ["bmp", "gif", "png", "jpg", "jpeg"];

    $('#InsertMobile_ImageUpload').change(function (e) {
      
        var file = document.getElementById("InsertMobile_ImageUpload");
            var path = file.value;
            var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();
            var isValidFile = false;
            for (var i = 0; i < validFilesTypes.length; i++) {
                if (ext == validFilesTypes[i]) {
                    isValidFile = true;
                    break;
                }
            }
            
            if (!isValidFile) {
                $('InsertMobile_ImageUpload').val("");
                console.log(ext);
            }
        

    });*/
    /*var title = null;

    $('#InsertMobile_ImageUpload').change(function (e) {
        title = $(this).val();
        $('#InsertMobile_PictureDirTextBox').val(title.split('\\').pop());
    });

    function getFilename() {
        if(title != null)
            return title;
    }*/
});