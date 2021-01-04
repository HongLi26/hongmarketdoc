#### 1.get cart list
** GET /carts

> request

```
Need to log in and need not to enter parameter
```

> response

success

```

{
    "status": 0,
    "data": {
        "cartProductVoList": [
            {
                "productId": 1,
                "quantity": 1,
                "productName": "iphone7",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 7199.22,
                "productStatus": 1,
                "productTotalPrice": 7199.22,
                "productStock": 86,
                "productSelected": true,
            },
            {
                "productId": 2,
                "quantity": 1,
                "productName": "oppo R8",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 2999.11,
                "productStatus": 1,
                "productTotalPrice": 2999.11,
                "productStock": 86,
                "productSelected": false,
            }
        ],
        "selectedAll": false,
        "cartTotalPrice": 10198.33,
        "cartTotalQuantity": 2
    }
}

```

fail
```
{
    "status": 10,
    "msg": "Please log in"
}
```


------


#### 2.add item to the cart

** POST /carts

> request

```
productId
selected: true
```

The quantity of items added 1

> response

success

```
{
    "status": 0,
    "data": {
        "cartProductVoList": [
            {
                "productId": 1,
                "quantity": 12,
                "productName": "iphone7",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 7199.22,
                "productStatus": 1,
                "productTotalPrice": 86390.64,
                "productStock": 86,
                "productSelected": true
            },
            {
                "productId": 2,
                "quantity": 1,
                "productName": "oppo R8",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 2999.11,
                "productStatus": 1,
                "productTotalPrice": 2999.11,
                "productStock": 86,
                "productSelected": true
            }
        ],
        "selectedAll": true,
        "cartTotalPrice": 89389.75,
        "cartTotalQuantity": 13
    }
}
```

fail
```
{
    "status": 10,
    "msg": "Please log in"
}
```


------





#### 3.update cart

** PUT /carts/{productId}

> request

```
quantity //not necessary
selected: true //not necessary
```

> response

The response is as 2

success

```
{
    "status": 0,
    "data": {
        "cartProductVoList": [
            {
                "productId": 1,
                "quantity": 12,
                "productName": "iphone7",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 7199.22,
                "productStatus": 1,
                "productTotalPrice": 86390.64,
                "productStock": 86,
                "productSelected": true
            },
            {
                "productId": 2,
                "quantity": 1,
                "productName": "oppo R8",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 2999.11,
                "productStatus": 1,
                "productTotalPrice": 2999.11,
                "productStock": 86,
                "productSelected": true,
            }
        ],
        "selectedAll": true,
        "cartTotalPrice": 89389.75,
        "cartTotalQuantity": 13
    }
}
```

fail
```
{
    "status": 10,
    "msg": "Please log in"
}
```


------



#### 4.delete the specific item in the cart

** DELETE /carts/{productId}

> request

```
productId
```

> response

success

```
{
    "status": 0,
    "data": {
        "cartProductVoList": [
            {
                "productId": 2,
                "quantity": 1,
                "productName": "oppo R8",
                "productSubtitle": "Context",
                "productMainImage": "mainimage.jpg",
                "productPrice": 2999.11,
                "productStatus": 1,
                "productTotalPrice": 2999.11,
                "productStock": 86,
                "productSelected": true
            }
        ],
        "selectedAll": true,
        "cartTotalPrice": 2999.11,
        "cartTotalQuantity": 1
    }
}
```

fail
```
{
    "status": 10,
    "msg": "Please log in"
}
```


------

#### 5.Select all

** PUT /carts/selectAll

> request

```
Need to log in and the input parameters are not necessary
```

> response

success

same with "list cart" API

------

#### 6.Unselect all

** PUT /carts/unSelectAll

> request

```
Need to log in and the input parameters are not necessary
```

> response

success

same with "list cart" API

------

#### 7.Get total quantity of the items in the cart

** GET /carts/products/sum

> request

```
Need to log in and the input parameters are not necessary
```

> response

```
{
    "status": 0,
    "data": 2
}
```
