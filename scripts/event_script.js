$(document).ready(function()
{
	var path=window.location.pathname.split('/');
	if(path[1]=='events')
	{
		alert(path[2]);
	}
});