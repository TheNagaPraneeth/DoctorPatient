
function divFunction(id) {
	var divs = ["form_appointment","controller_repsonse","edit_profile","organ_donate"];
for(i = 0; i <  divs.length; i++){
	if(divs[i] == id)
    	{document.getElementById(divs[i]).style.display = "block";}
	else
    	{document.getElementById(divs[i]).style.display = "none";}
	}
}
