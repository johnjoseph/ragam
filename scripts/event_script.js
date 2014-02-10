function sail(eventname)
{
	var name=eventname.replace('_',' ');
	$.ajax({
			url:'fetch.php',
			data:{'eventname':name},
			type:'GET',
			cache:true,
			dataType:'json',
			success:function(response)
			{
				$('#event_text').html('');
				$('#event_title').html(response['name']);
				var desc=response['desc'].split('||sec||');
				for(var i=0;i<desc.length;i++)
				{
					var sec=desc[i].split('||ttl||');
					if(i){$('<h3/>',{'id':sec[0]}).appendTo('#event_text').html(sec[0])};
					$('<p/>').appendTo('#event_text').html(sec[1]);
				}
			    $('html, body').animate({
			        scrollTop:$('#content_wrap').offset().top
			    },800);
			}

	});
}

function shuffle()
{

}

$(document).ready(function()
{
	var path=window.location.pathname.split('/');
	if((path[2]=="events")&&(path[3]!=""))
	{
		sail(path[3]);
	}
	else if((path[2]=="events")&&(path[3]==""))
	{
		sail(shuffle());
	}
	$('#elist_moveup').click(function()
	{
	    $('#elist_wrap').animate({
	        'margin-top':-$('#elist_wrap').height()
	    },800);
	});
});

