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
				$('#edesc_sections').html("<li class='edesc_focused'><a href='#Intro'>Introduction</a></li>");
				$('#event_title').html(response['name']);
				var desc=response['desc'].split('||sec||');
				for(var i=0;i<desc.length;i++)
				{
					var sec=desc[i].split('||ttl||');
					if(i){$('#edesc_sections').append("<li><a href='#"+sec[0]+"'>"+sec[0]+"</a></li>")};
					if(i){$('<h3/>').appendTo('#event_text').html(sec[0])};
					$('<p/>').appendTo('#event_text').html(sec[1]);
				}
			}

	});
}

$(document).ready(function()
{
	var path=window.location.pathname.split('/');
	if((path[2]=="events")&&(path[3]!=""))
	{
		sail(path[3]);
	}
});

