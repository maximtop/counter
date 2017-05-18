# Pet project for sales accounting

App is deployed to the heroku here: [Counter](https://fathomless-shore-32492.herokuapp.com)

## Todo:
- [x] Enable errors flashing
- [ ] Add dismissing buttons [here](https://v4-alpha.getbootstrap.com/components/alerts/#dismissing)
- [x] Add validation to the forms
- [ ] Add authorization and authentication
- [ ] Add possibility to sort transaction table by different columns
- [ ] Add phone formatter
- [ ] Phone numbers save as country + area + phone
- [ ] Add Product entity
- [ ] Add possibility via pressing button to duplicate transaction
- [ ] Add autocomplete in the clients selector. (Use [Selectize.js](http://selectize.github.io/selectize.js/))

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

