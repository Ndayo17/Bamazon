// Install the npm packages used
var mysql = require("mysql");
var inquirer = require("inquirer");
require("console.table");

// connect  MySQL database
var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "",
  database: "bamazon"
});

connection.connect(function(err) {
    if (err) {
      console.error("error connecting: " + err.stack);
    }
    ShowAllProducts();
  });

  //inquirer to prompt user input
  function productInfo(){
      inquirer.prompt([
          {
              type:"input",
              message:"what item id of the product you would like to buy?",
              name:"product",
              filter:Number
          },
          {
            type:"input",
            message:"How many units would you like to buy",
            name:"quantity",
            filter:Number
          },
        ]).then(function (res){
            var item2 = res.product;
            var quantity2 = res.quantity;

            connection.query("SELECT * FROM products WHERE ?",{item_id:item2},function(err,res){
                if (err) throw err;
    
                console.log("Your total for " + "(" + res.quantity + ")" + " - " + res[].ProductName + " is: " + res[item2].Price.toFixed(2) * quantity2);
                connection.query("UPDATE products SET ? WHERE ?", [{
                    quantity2: res[item2].quantity2 
                }, {
                    id: res[item2].id
                }], function(err, res) {
                    //console.log(err);
                    checkAndBuy2();
                });

            } else {
                console.log("Sorry, insufficient Quanity at this time. All we have is " + res[item2].res.quantity + " in our Inventory.");
                
            }
        })
    })
}

            