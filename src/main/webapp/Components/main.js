$(document).ready(function(){
	$("#alertSuccess").hide();
	$("#alertError").hide();
}); 

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {
	
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();
	
	// Form validation-------------------
	var status = validateInventoryForm();
	if(status != true)
		{
		$("#alertError").text(status);
		$("#alertError").show();
		return;
		}
	
// If valid------------------------
	
	//$("#formInventory").submit
	var type = ($("#hidUserIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "UserAPI",
		type : type,
		data : $("#formInventory").serialize(),
		dataType : "text",
		complete : function(response, status) 
		{
			onInventorySaveCompelet(response.responseText, status);
		}
	});
});
	
	function onInventorySaveCompelet(response, status) {
		if (status == "success") 
		{
			var resultSet = JSON.parse(response);
			
			if (resultSet.status.trim() == "success") 
			{
				$("#alertSuccess").text("Successfully saved.");
				$("#alertSuccess").show();
				
				$("#divUserGrid").html(resultSet.data);
				
			} else if (resultSet.status.trim() == "error") {
				
				$("#alertError").text(resultSet.data);
				$("#alertError").show();
			}
		} else if (status == "error") {
			$("#alertError").text("Error while saving.");
			$("#alertError").show();
		} else {
			$("#alertError").text("Unknown error while saving..");
			$("#alertError").show();
		}
		$("#hidUserIDSave").val("");
		$("#formInventory")[0].reset();
	}
	



//UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
		{
			$("#hidUserIDSave").val($(this).closest("tr").find('#hidIUserIDUpdate').val());
			$("#userName").val($(this).closest("tr").find('td:eq(0)').text());
			$("#age").val($(this).closest("tr").find('td:eq(1)').text());
			$("#gender").val($(this).closest("tr").find('td:eq(2)').text());
			$("#email").val($(this).closest("tr").find('td:eq(3)').text());
		});


//remove
$(document).on("click", ".btnRemove", function(event) {
	$.ajax({
		url : "UserAPI",
		type : "DELETE",
		data : "UserId=" + $(this).data("userId"),
		dataType : "text",
		complete : function(response, status) 
		{
			onInventoryDeleteComplete(response.responseText, status);
		}
	});
});


function onInventoryDeleteComplete(response, status) {
	if (status == "success")
	{
		var resultSet = JSON.parse(response);
		
		if (resultSet.status.trim() == "success") 
		{
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			
			$("#divInventoryGrid").html(resultSet.data);
		
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}

//CLIENTMODEL=========================================================================
function validateInventoryForm() {

	if ($("#username").val().trim() == "") {
		return "Insert User Name.";
	}

	if ($("#addres").val().trim() == "") {
		return "Insert Address.";
	}

	if ($("#age").val().trim() == "") {
		return "Insert Age.";
	}

	if ($("#email").val().trim() == "") {
		return "Insert Email.";
	}
	
	if ($("#gender").val().trim() == "") {
		return "Intert Gender"
	}


	
	return true;
}


