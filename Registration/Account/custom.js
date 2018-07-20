$(window).on("load", function (e) {
	if($(window).width() <= '1024')
	{
		$("#sign-in").addClass("tab-pane fade in active");
		$("#sign-up").addClass("tab-pane fade");
	}
});

$(window).resize(function(){
    if($(window).width() <= '1024')
	{
		$("#sign-in").addClass("tab-pane fade in active");
		$("#sign-up").addClass("tab-pane fade");
	}
	
	if($(window).width() >= '1224')
	{
		if($("#sign-in").hasClass("tab-pane fade in active"))
		{
			$("#sign-in").removeClass("tab-pane fade in active");				
		}
		if($("#sign-in").hasClass("tab-pane fade"))
		{
			$("#sign-in").removeClass("tab-pane fade");
		}
		if($("#sign-up").hasClass("tab-pane fade in active"))
		{
			$("#sign-up").removeClass("tab-pane fade in active");
		}
		if($("#sign-up").hasClass("tab-pane fade"))
		{
			$("#sign-up").removeClass("tab-pane fade");
		}
	}
});


$('.tab a').on('click', function (e) {
	//e.preventDefault();
	//$(this).parent().addClass('active');
	//$(this).parent().siblings().removeClass('active');
	//target = $(this).attr('href');
	//$('.tab-content > div').not(target).hide();
	//$(target).fadeIn(800);
});

function openCity(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tabcontent.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}