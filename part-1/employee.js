/*********************************************************/
/*   It is required to use a for loop                    */
/*   when iterating over an employee's array of sales.   */
/*********************************************************/

function Employee(args={}){
  this.firstName = args.firstName;
  this.sales = args.sales
};

Employee.prototype.totalSales = function(){
  var employee = this;
  for (var i = 0; i < employee.sales.length; i++){
    return employee.sales.reduce(function(sum, sale){ return sum + sale});
  };
};

Employee.prototype.averageSales = function(){
  return (this.totalSales() / this.sales.length)
};