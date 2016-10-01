angular.module('starter.controllers', [])

.controller('AppCtrl', function($scope, $ionicModal, $timeout) {

})

.controller('SearchController', function($scope, $http, $state) {

  $scope.query = "";
  $scope.type = "";

  $scope.startSearch = function() {

  	if(this.query === "" || this.type === "") {
  		console.error("Invalid input");
  		return;
  	}

  	var q = this.query;
  	var m = this.type;

  	$state.go('app.searchResults', {m: m, q: q});

  }


})

.controller('SearchResultController', function($scope, $stateParams, $http) {

	$scope.searchResults = [];

	var type = $stateParams.m;
	var query = $stateParams.q;

	var url = "http://www.wrostdevelopers.com/Police/";
	var data = {};

	if(type === "name") {
		url += 'name.php';

		data['action'] = "name_search";
		data['name'] = query;

	} else if(type === "id") {
		url += 'case.php';
		data['action'] = "search_case";
		data['case_no'] = query;
	}

	$http({
		method: 'POST',
		url: url,
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		transformRequest: function(obj) {
	        var str = [];
	        for(var p in obj)
	        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
	        return str.join("&");
	    },
		data: data
	}).success(function(data) {
		data = JSON.parse(data.replace('`', ''));
		console.log(data);

		if(type === "id") {
			$scope.searchResults[0] = data.results;
		} else {
			$scope.searchResults = data.results;
		}


	}).error(function(error) {

		alert("An error occured. Please try again later");

	});

})

.controller('ResultController', function($scope, $http, $stateParams) {

	$scope.details = {  
         case_no : "",
         name:"",
         id :"",
         location :"",
         age:"",
         crime_type :"",
         notes:"",
         officer_name:"",
         work_id:""
      }

	$http({
		method: 'POST',
		url: "http://www.wrostdevelopers.com/Police/case.php",
		headers: {'Content-Type': 'application/x-www-form-urlencoded'},
		transformRequest: function(obj) {
	        var str = [];
	        for(var p in obj)
	        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
	        return str.join("&");
	    },
		data: {
			case_no: $stateParams.case_no,
			action: "search_case"
		}
	}).success(function(data) {
		data = JSON.parse(data.replace('`', ''));
		$scope.details = data.results;


	}).error(function(error) {

		alert("An error occured. Please try again later");

	});

})

.controller('FieldInterviewController', function($scope, $http, $window) {

	$scope.interview = {
		fullName: "",
		idNumber: "",
		location: "",
		age: 0,
		crimeType: "",
		notes: "",
		officerName: "",
		officerId: ""
	};

	$scope.save = function() {
		
		var info = this.interview;
		if(info.fullName === "" ||
			info.idNumber === "" ||
			info.location === "" ||
			info.age === 0 ||
			info.crimeType === "" ||
			info.notes === "" ||
			info.officerName === "" ||
			info.officerId === "") {
			console.error("Please check input");
			return;
		}

		$http({
			method: 'POST',
			url: 'http://www.wrostdevelopers.com/Police/interview.php',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			transformRequest: function(obj) {
		        var str = [];
		        for(var p in obj)
		        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
		        return str.join("&");
		    },
		    data: {
		    	action: 'add_interview',
		    	name: info.name,
		    	id: info.idNumber,
		    	location: info.location,
		    	age: info.age,
		    	crime_type: info.crimeType,
		    	notes: info.notes,
		    	officer_name: info.officerName,
		    	work_id: info.officerId
		    }
		}).success(function(response) {
			$window.location.href = '/index.html';

		}).error(function(errorReponse) {
			alert('Error. Please try again later');
		})

	}

})

.controller('InformantController', function($scope, $http, $window) {

	$scope.interview = {
		fullName: "",
		idNumber: "",
		category: "",
		crimeType: "",
		location: "",
		place: "",
		phoneNumber: "",
		notes: "",
		officerName: "",
		officerId: ""
	};

	$scope.save = function() {
		
		var info = this.interview;
		if(info.fullName === "" ||
			info.idNumber === "" ||
			info.category === "" ||
			info.crimeType === "" ||
			info.location === "" ||
			info.place === "" ||
			info.phoneNumber === "" ||
			info.notes === "" ||
			info.officerName === "" ||
			info.officerId === "") {
			console.error("Please check input");
			return;
		}

		$http({
			method: 'POST',
			url: 'http://www.wrostdevelopers.com/Police/witness.php',
			headers: {'Content-Type': 'application/x-www-form-urlencoded'},
			transformRequest: function(obj) {
		        var str = [];
		        for(var p in obj)
		        str.push(encodeURIComponent(p) + "=" + encodeURIComponent(obj[p]));
		        return str.join("&");
		    },
		    data: {
		    	action: 'witness_account',
		    	officer_name: info.officerName,
		    	work_id: info.officerId,
		    	name: info.name,
		    	id: info.idNumber,
		    	category: info.category,
		    	crime: info.crimeType,
		    	location: info.location,
		    	place: info.place,
		    	phone: info.phoneNumber,
		    	note: info.notes
		    	
		    }
		}).success(function(response) {
			$window.location.href = '/index.html';

		}).error(function(errorReponse) {
			alert('Error. Please try again later');
		});


	}

})
