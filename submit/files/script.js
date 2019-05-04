   //page loading animation part 1
   $(window).on('load', function() {
    $("#pageLoad").fadeOut('fast');
});

$(document).ready(function() {
    //page loading animation part 2
    $("#app").fadeIn('fast');});
 

    ////////////******************************************************************************////////////////////////////

function login(){
    $.confirm({
        theme: 'modern',
        icon: 'fas fa-user-circle',
        title: 'Please Enter Password?',
        content: '<input type="password" placeholder="Greenmap password" class="del-pass form-control is-valid" required style="text-align:center;">' ,
        draggable: true,
        animationBounce: 2.5,
        type: 'green',
        typeAnimated: true,
        buttons: {
            Delete: {
            text: 'Login',
            btnClass: 'btn-green',
            action : function () {
                var del_password = this.$content.find('.del-pass').val().trim();
                if(del_password== '' || del_password !='greenmap@uomleos'){
                    $.confirm({
                        theme: 'modern',
                        icon: 'fas fa-exclamation-circle',
                        title: 'Password Incorrect',
                        content: 'Please enter correct login password & try again' ,
                        draggable: true,
                        animationBounce: 2.5,
                        type: 'red',
                        typeAnimated: true,
                        buttons: {
                            Delete: {
                            text: 'Try Again',
                            btnClass: 'btn-red',
                            action : function () {
                                login();
                            }
                        },
                            
                        }
                    });
                }else{
                    sessionStorage.setItem("projectmaplogin", true);
                }
            }
        },
            
        }
    });    
}

if(!sessionStorage.getItem("projectmaplogin")){
    login();
}

  

$("#submit").click(function(){
    var name = $("#name").val().trim();
    var year = $("#year").val().trim();
   
var address = $("#address").val().trim();
var lat = $("#lat").val().trim();
var lon = $("#lon").val().trim();
var password =  'greenmap@uomleos' //$("#password").val().trim();
var   desc = $("#description").val().trim();
console.log(desc);
if(address!='' && name !='' && lat!='' && lon!=''  && year!='0' && desc !=''){

    if($.isNumeric( lat ) && $.isNumeric( lon )){

        if(password!= '' && password=='greenmap@uomleos'){
            $.post("https://www.greenmap.uomleos.org/submit/files/add.php",
            
    {
        pname: name,
        pyear:year,
        paddress: address,
        plat : lat,
        plon : lon,
        pdesc: desc
    },
    function(data, status){
        if(status=='success'){
            loadSubmitted();
            $.alert({
                theme: 'modern',
                title: 'Successfully saved!',
                content: "Your enterd location successfully added!<br><a href='https://www.greenmap.uomleos.org/' title='View map'>Goto Map</a>",
                icon: 'fas fa-check-circle',
                type: 'green',
                draggable: true,
            });
            $("#name").val('');
            $("#address").val('');
            $("#lat").val('');
            $("#lon").val('');
            $("#password").val('');
            $("#description").val('');
        }else{
            $.alert({
                theme: 'modern',
                title: 'Submission Error!',
                content: "Error happend while submitting data. Please try again!",
                icon: 'fas fa-exclamation-circle',
                type: 'red',
                draggable: true,
            });
        }
    });
        }else{
            $.alert({
                theme: 'modern',
                title: 'Password Incorrect!',
                content: "Please enter correct passowrd!",
                icon: 'fas fa-exclamation-circle',
                type: 'red',
                draggable: true,
            });
            $("#password").val('');
            $("#password").css('border-color','red');
        }

    }else{
        $.alert({
            theme: 'modern',
            title: 'Lat Lon Error!',
            content: "Please enter correct latitude & longitude values!",
            icon: 'fas fa-exclamation-circle',
            type: 'red',
            draggable: true,
        });
        $("#lat").css('border-color','red');
        $("#lon").css('border-color','red');
        $("#password").val('');
        $("#password").css('border-color','red');
    }

}else{
    $.alert({
        theme: 'modern',
        title: 'Warning!',
        content: "Please Complete all fields before submitting!",
        icon: 'fas fa-exclamation-circle',
        type: 'red',
        draggable: true,
    });
    $("#password").val('');
    $("#password").css('border-color','red');
}


   
  
});

function loadSubmitted(){
$.get("https://www.greenmap.uomleos.org/submit/files/get.php", function(data, status){
                    var locations = JSON.parse(data);
    //place the markers
    var projects_1 = "";
    var projects_2 = "";
    var count_1 = 0;
    var count_2 = 0;

                 for (var i = 0; i < locations.length; i++) {
                     console.log()
                     if(locations[i].year=="2019/20"){
                         count_1+=1;
                        projects_1+='<span class="badge badge-primary h2" >'+locations[i].name+'&nbsp;&nbsp;<span class="delete-btn" onclick="deleteProject(this);" data-toggle="tooltip" data-placement="top" title="Delete '+locations[i].name+'" data-id="'+locations[i].id+'" data-name="'+locations[i].name+'"><i class="fas fa-times-circle"></i></span></span>&nbsp;';
                     }else{
                         count_2+=1;
                         projects_2+='<span class="badge badge-warning h2" >'+locations[i].name+'&nbsp;&nbsp;<span class="delete-btn" onclick="deleteProject(this);" data-toggle="tooltip" data-placement="top" title="Delete '+locations[i].name+'" data-id="'+locations[i].id+'" data-name="'+locations[i].name+'"><i class="fas fa-times-circle"></i></span></span>&nbsp;';
                     }
                }
                //console.log(projects);
                document.getElementById('2017_18_count').innerHTML = count_1;
                document.getElementById('2018_19_count').innerHTML = count_2;
                document.getElementById('2017_18').innerHTML = projects_1;
                document.getElementById('2018_19').innerHTML = projects_2;
                

        
        
        });
}

loadSubmitted();

function deleteProject(project){
    
    var project_name = $(project).attr('data-name');
    var project_id = $(project).attr('data-id');

    $.confirm({
        theme: 'modern',
        icon: 'far fa-trash-alt',
        title: 'Remove '+project_name+' ?',
        content: 'please confirm to delete',
        closeIcon: true,
        draggable: true,
        animationBounce: 2.5,
        type: 'red',
        typeAnimated: true,
        buttons: {
            Delete: {
            text: 'Delete',
            btnClass: 'btn-red',
            action : function () {
                $.post("https://www.greenmap.uomleos.org/submit/files/delete.php",
                {
                    id: project_id
                },
                function(data, status){
                    if(status=='success'){
                        loadSubmitted();
                        $.alert({
                            theme: 'modern',
                            title: 'Successfully Deleted!',
                            content: "Project deleted successfully!",
                            icon: 'fas fa-check-circle',
                            type: 'green',
                            draggable: true,
                        });
    
            
                    }else{
                        $.alert({
                            theme: 'modern',
                            title: 'Error!',
                            content: "Error happend while deleting data. Please try again!",
                            icon: 'fas fa-exclamation-circle',
                            type: 'red',
                            draggable: true,
                        });
                    }
                });
            }
        },
            cancel: function () {
                
            }
            
        }
    });
}