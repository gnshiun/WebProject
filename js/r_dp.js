$(function () {
    $('#sandbox-container input').datepicker({
    dateFormat: "yy-mm-dd", 
    showButtonPanel:true,
    changeMonth: true,
    minDate:"+0d",
    maxDate:"+1m",
    });
    });