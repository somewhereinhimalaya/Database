## How this works

## Customer views product to product payment

one product in one cart 

step 1
```text
customer views  product
```

step 2 
```text
customer add product in cart of quantity 10 
stores in orderitem
```

step 3: customer orders 
```text
change order table stores the detail
order_id is equal to orderitemid
```

step 4: customer choose the payment 
```text
fetch the amount put in payment table amount column
change the status of payment
like changes the payment is made and this detail is sent to admin
```
