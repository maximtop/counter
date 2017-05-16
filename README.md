# Pet project for sales accounting

View on heroku [Counter](https://fathomless-shore-32492.herokuapp.com)

## Entities
### Transactions
* client
* product
* quantity
* price
* total_cost

### Products
* title
* description
* cost_price
* target_price
* currency

### Clients
* name
* phone
* transactions_id

## Todo:
- [x] Enable errors flashing
- [ ] Add validation to the forms
- [ ] Add authorization and authentication
- [ ] Add sorting to the transaction table
- [ ] Add phone formatter
- [ ] Add Product entity
- [ ] Add autocomplete in the clients selector. (Use [Selectize.js](http://selectize.github.io/selectize.js/))