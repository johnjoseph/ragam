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
				var content='<h2>'+sec[0]+'</h2><p>'+sec[1]+'</p>';
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
				for(var j=0;j<3;j++)
				{
					con_out+=(j==2)?con[j]+'@ragam.org.in<br/>':con[j]+'<br/>';
				}
				con_out+='<br/><br/>';	
			}
			var color2=response['color2'];
			var color1=response['color1'];
			$('<span/>',{'id':'Contacts'}).appendTo('#event_text_left').html('<h2>Contacts</h2>'+con_out);
			$('#content_wrap').css({'background-color':color2});
			$('#event_text>span>span').css({'background-color':color1});
			$('#event_logo').css({'border-color':color2,'background-color':color1}); 
	     $('html, body').animate({
				scrollTop:$('#content_wrap').offset().top
      },800);
		}
	});
}

var keyFilter = null, teamFilter = null, prizeFilter = null;
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
    var visible_cat=$('#elist>li>ul:visible');
    if (visible_cat.length > 2) return true;
    if (visible_cat.length > 0) {
      visible_cat.hide(300, function () { this.removeAttribute("style"); });
    }
    var sib_ul = $(this).closest('li').children('ul');
    if (sib_ul.is(':hidden')) {
      sib_ul.show(300);
    }
  });

  var keypressTimeout;
  $('input#key_filter').keypress(function(e) { /* this does not handle backspace */
    var kf_in = this;

    if (keypressTimeout)
      clearTimeout(keypressTimeout);
    
    var code = e.keyCode || e.which;
    if (code == 13) {
      filterRequest(kf_in.value);
      return true;
    }

    keypressTimeout = setTimeout(function() {
      filterRequest(kf_in.value);
    }, 1200);
  }).blur(function() {
    if (this.value.trim() == "") {
      keyFilter = null;
      filterUpdate();
    }
  });
  $("#team_filter").noUiSlider({
     range: [0, 20]
    ,start: 0
    ,handles: 1
    ,step: 1
    ,connect: false
    ,behaviour: 'tap'
    ,serialization: {
      resolution: 1
      ,to: function(val) {
        var val_str=val.toString();
        if (val==20)
          val_str="20+";
        else if (val==0)
          val_str="any";
        $("#selected_team_size").html(val_str);
      }
    }
  }).change(function(){
    $.ajax({
      url: "get_events.php",
      data: { tsize: $("#team_filter").val() },
      dataType: "json",
      success: function(data, status, jqx) {
        if (data instanceof Array) {
          teamFilter = data;
        } else {
          teamFilter = null;
        }
        filterUpdate();
      }
    });
  });
  $("#prize_filter").noUiSlider({
     range: [0, 100000]
    ,start: 0
    ,handles: 1
    ,step: 1000
    ,connect: "upper"
    ,behaviour: 'tap'
    ,serialization: {
      resolution: 1
      ,to: function(val) {
        var val_str=val.toString();
        if (val==0)
          val_str="any";
        $("#selected_prize").html(val_str);
      }
    }
  }).change(function(){
    $.ajax({
      url: "get_events.php",
      data: { prize: $("#prize_filter").val() },
      dataType: "json",
      success: function(data, status, jqx) {
        if (data instanceof Array) {
          prizeFilter = data;
        } else {
          prizeFilter = null;
        }
        filterUpdate();
      }
    });
  });
});

function filterRequest(query) {
  $.ajax({
    url: "get_events.php",
    data: { q : query },
    dataType: "json",
    success: function(data, status, jqx) {
      if (data instanceof Array) {
        keyFilter = data;
      } else {
        keyFilter = null;
      }
      filterUpdate();
    }
  });
}

function intersection(arr1, arr2) {
  var res = [];
  if (!arr1 || !arr2) return res;
  for (i=0; i<arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) >= 0)
      res.push(arr2[i]);
  }
  return res;
}

function filterUpdate() {
  var finalFilter = keyFilter;
  var i;

  if (finalFilter === null)
    finalFilter = teamFilter;
  else  if (teamFilter !== null) {
    finalFilter = intersection(finalFilter, teamFilter);
  }

  if (finalFilter === null)
    finalFilter = prizeFilter;
  else if (prizeFilter !== null) {
    finalFilter = intersection(finalFilter, prizeFilter);
  }

  $(".filtered").removeClass("filtered");
  if (finalFilter === null) return;
  for (var i = 0; i<finalFilter.length; i++) {
    $("#e_"+finalFilter[i]).addClass("filtered");
  }
}
