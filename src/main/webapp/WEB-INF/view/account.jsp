<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Budget Buddy</title>
	<jsp:include page="template/css-include.jsp"/>
	<jsp:include page="template/favicon.jsp"/>
	<style>
		* {
			box-sizing: border-box
		}
		
		/* Set height of body and the document to 100% */
		body, html {
			height: 100%;
			margin: 0;
			font-family: Arial;
		}
		
		/* Style tab links */
		.tablink {
			background-color: #555;
			color: white;
			float: left;
			border: none;
			outline: none;
			cursor: pointer;
			padding: 14px 16px;
			font-size: 17px;
			width: 25%;
		}
		
		.tablink:hover {
			background-color: #777;
		}
		
		/* Style the tab content (and add height:100% for full page content) */
		.tabcontent {
			color: black;
			display: none;
			padding: 100px 20px;
			height: 100%;
		}
		
		#currentBudget {
			background-color: white;
		}
		
		#suggestedBudget {
			background-color: white;
		}
		
		#budgetAdvice {
			background-color: white;
		}
		
		#estimated401k {
			background-color: white;
		}
	</style>
</head>
<body>
	<jsp:include page="template/header.jsp"/>
	<div id="logo" class="container">
		<div>
			<h1>Welcome to your Account Page!</h1>
			<img src="${pageContext.request.contextPath}/resources/img/logo.png">
		</div>
	</div>

	<button class="tablink"
		onclick="openPage('currentBudget', this, 'green')">Current
		Budget</button>
	<button class="tablink"
		onclick="openPage('suggestedBudget', this, 'green')" id="defaultOpen">Suggested
		Budget</button>
	<button class="tablink"
		onclick="openPage('budgetAdvice', this, 'green')">Budget
		Advice</button>
	<button class="tablink"
		onclick="openPage('savingsTarget', this, 'green')">Savings Target</button>

	<div id="currentBudget" class="tabcontent">
		<h3>Current Budget</h3>
		<p>Budget generated with your current income, fixed expenses, and savings
			target</p>
			<a href="${pageContext.request.contextPath}/account/budget-form">Update Budget</a>
			
			
			<p> Housing: $${budget.rent }</p>
			<p>Utilities: $${budget.utilities}</p>
			<p>Car Payment: $${budget.carPayment}</p>
			<p>Car Insurance: $${budget.carInsurance}</p>
			
			<p>Other Bills: $${budget.remainingExpenses}</p>
			
			<p>Savings Target: $${budget.savingsTarget}</p>
			<p>General Savings: $${budget.generalSavings}</p>
			<p>Retirement: $${budget.retirement}</p>
			<p>Spending: $${budget.spending}</p>
	</div>

	<div id="suggestedBudget" class="tabcontent">
		<h3>Suggest Budget</h3>
		<p>Budget suggested by Budget Buddy</p>
		<p>Housing: $${suggestedBudget.housing} </p>
		<p>Utilities: $${suggestedBudget.utilities}</p>
		<p>Transportation: $${suggestedBudget.transportation}</p>
		<p>Retirement: $${suggestedBudget.retirement}</p>
		<p>Spending: $${suggestedBudget.spending}</p>
		<p>Food: $${suggestedBudget.food }</p>
		<p>Savings: $${suggestedBudget.savings }</p>
		<p>Miscellaneous: $${suggestedBudget.miscellaneous }</p>
	</div>

	<div id="budgetAdvice" class="tabcontent">
		<h3>Budget Advice</h3>
		<p>Advice based off suggested budget and current budget.Is the
			your fixed expenses too high? If so,for what categories?</p>
			<p>${budgetAdvice.housingMessage }</p>
			<p>${budgetAdvice.transportationMessage }</p>
			<p>${budgetAdvice.utilitiesMessage }</p>
	</div>

	<div id="savingsTarget" class="tabcontent">
		<h3>Savings Target</h3>
		<p>Real Time of Savings Target Status</p>
			<p>Savings Target Total: $${savingsTarget.savingsTargetTotal}</p>
		<p>Monthly Savings Target: $${savingsTarget.monthlySavingsTarget}</p>
		<p>Start Date: ${savingsTarget.startDate}</p>
		<p>End Date: ${savingsTarget.endDate }</p>
		<p>Days Remaining: ${savingsTarget.daysLeft }</p>
		
	</div>

	<script>
		function openPage(pageName, elmnt, color) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].style.backgroundColor = "";
			}
			document.getElementById(pageName).style.display = "block";
			elmnt.style.backgroundColor = color;

		}
		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script>
	<%@ include file="template/js-include.html"%>
</body>
</html>