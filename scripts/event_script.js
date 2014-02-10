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
				$('#event_title').html(response['name']);
				var desc=response['desc'].split('||sec||');
				for(var i=0;i<desc.length;i++)
				{
					var sec=desc[i].split('||ttl||');
					var content=(i)?'<h3>'+sec[0]+'</h3><p>'+sec[1]+'</p>':'<p>'+sec[1]+'</p>';
					var title=sec[0].replace(' ','_');
					if(title=='Prize_Money')
					{
						$('<span/>',{'id':title}).appendTo('#event_text_left').html(content);
					}
					else
					{
						$('<span/>',{'id':title}).appendTo('#event_text_right').html(content);
					}
				}
				var contacts=response['contacts'].split('||0||');
				var con_out='';
				for(var i=0;i<2;i++)
				{
					var con=contacts[i].split('||@||');
					for(var j=0;j<con.length;j++)
					{
						con_out+=con[j]+'<br/>';
					}
					con_out+='<br/><br/>';	
				}
				$('<span/>',{'id':'contacts'}).appendTo('#event_text_left').html('<h3>Contacts</h3>'+con_out);
			    $('html, body').animate({
			        scrollTop:$('#content_wrap').offset().top
			    },800);
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
  $('#elist>li>h4').click(function() {
    if ($('#elist_filter').width() >= 175) return true;
    var visible_cat=$('#elist>li>ul:visible');
    if (visible_cat.length > 0) {
      visible_cat.hide(300, function () { this.removeAttribute("style"); });
    }
    var sib_ul = $(this).closest('li').children('ul');
    if (sib_ul.is(':hidden')) {
      sib_ul.show(300);
    }
  });
});

