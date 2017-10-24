/**************************************************************/
/*   It is required to use Array.prototype methods            */
/*   when iterating over a sales team's array of employees.   */
/**************************************************************/

function SalesTeam(employees){
  this.employees = employees;
};

SalesTeam.prototype.find = function(person){
  var foundEmployee = this.employees.find(function(employee){
    return employee.firstName === person
  });
  return foundEmployee;
};

SalesTeam.prototype.bonusEarners = function(){
  var bonusEarners = this.employees.filter(function(employee){
    return employee.totalSales() >= 2500
  });
  return bonusEarners;
};