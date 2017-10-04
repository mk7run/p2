/**************************************************************/
/*   It is required to use Array.prototype methods            */
/*   when iterating over a sales team's array of employees.   */
/**************************************************************/

var SalesTeam = {
  team: [],
  addEmployee = function(employee){
    this.team.push(employee);
  },
  createTeam = function(employees) {
    this.team = this.team.concat(employees);
  }
};
