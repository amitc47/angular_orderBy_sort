<html>
<link rel="stylesheet" href="style/style.css"/>
<body>
<div ng-app="app" ng-controller="myController">
<script type="text/javascript" src="script/angular.js"></script>
<script type="text/javascript" src="script/script.js"></script>
No of row to display <input type="number" min="0" max="10" ng-model="rowCount"/><br/><br/>
Order by <select ng-model="sortColumn">
			<option value="name">Name ASC</option>
			<option value="-name">Name DSC</option>
			<option value="dob">DOB ASC</option>
			<option value="-dob">DOB DSC</option>
			<option value="gender">Gender ASC</option>
			<option value="-gender">Gender DSC</option>
			<option value="salary">Salary ASC</option>
			<option value="-salary">Salary DSC</option>
		</select><br/><br/>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Date of Birth</th>
				<th>Gender</th>
				<th>Salary</th>
				
			</tr>
		</thead>
		<tbody>
			<tr ng-repeat="employee in employees | limitTo:rowCount | orderBy:sortColumn">
				<td>{{employee.name | uppercase}}</td>
				<td>{{employee.dob | date : "dd-mm-yyyy"}}</td>
				<td>{{employee.gender | lowercase}}</td>
				<td>{{employee.salary | currency:"£":1}}</td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>
