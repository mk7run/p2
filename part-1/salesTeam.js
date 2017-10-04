/**************************************************************/
/*   It is required to use Array.prototype methods            */
/*   when iterating over a sales team's array of employees.   */
/**************************************************************/

var SalesTeam = function(employees){
  this.employees = employees;
  var team = employees.concat(employees);
};
