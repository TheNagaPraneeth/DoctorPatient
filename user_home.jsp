<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<%@ include file="/resources/scripts/myStyle.css" %>
<script type="text/javascript">
<%@ include file="/resources/scripts/script.js" %>
</script>
<%@ include file="/resources/header/header.html" %>
</head>
<body>
<div id="edit_profile" style="display:none;">
<%@ include file="/resources/forms/form_editProfile.html" %>
</div>
<div id="organ_donate" style="display:none;">
<%@ include file="/resources/forms/form_organDonate.html" %>
</div>
<br>
<br>
<div id="controller_repsonse" style="${ctrl_resp}">
<c:choose>
	<c:when test = "${section == 'response'}">
    <span>${response}</span>
    </c:when>
    <c:when test = "${section == 'bookAppointment'}">
    <c:choose>
    	<c:when test = "${user.SPECIALITY == 'PATIENT'}">
    	<%@ include file="/resources/forms/form_appointment.html" %>
    	</c:when>
    </c:choose>
    </c:when>
    <c:when test = "${section == 'viewPatientBooking'}">
		<%@ include file="/resources/forms/patientViewRequest.html" %>
    </c:when>
    <c:when test = "${section == 'viewDoctorBooking'}">
		<%@ include file="/resources/forms/doctorViewAppointments.html" %>
    </c:when>
    <c:when test = "${section == 'editProfile'}">
		<%@ include file="/resources/forms/form_editProfile.html" %>
    </c:when>
    <c:when test = "${section == 'doctorRespond'}">
		<%@ include file="/resources/forms/doctorRespond.html" %>
    </c:when>
    <c:when test = "${section == 'viewOrganDonors'}">
		<%@ include file="/resources/forms/viewOrganDonars.html" %>
    </c:when>
</c:choose>
</div>
</body>
</html>
