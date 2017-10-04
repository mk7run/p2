/**************************************************************/
/*   It is required to use Array.prototype methods            */
/*   when iterating over a sales team's array of employees.   */
/**************************************************************/

var SalesTeam = function(employees){
  this.employees = employees;
}



SalesTeam.prototype.find = function(name){
  this.employees.forEach(function(employee){
    if (name == employee.firstName) {
      return employee
    };
  });
};

SalesTeam.prototype.length = function(){
  return this.employees.length;
};

SalesTeam.prototype.bonusEarners = function(){
  return this.employees.filter(employee => employee.totalSales());
}

