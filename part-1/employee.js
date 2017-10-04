/*********************************************************/
/*   It is required to use a for loop                    */
/*   when iterating over an employee's array of sales.   */
/*********************************************************/
var Employee = function(args={}) {
  this.firstName = args.firstName;
  this.sales = args.sales;
};

Employee.prototype.totalSales = function(){
  var total = 0
  this.sales.forEach(function(sale){
    total += sale;
  });
  return total;
};

Employee.prototype.averageSales = function(){
  var that = this;
  return (this.totalSales()/this.sales.length)
};
