#### 1.create order

** POST /orders

> request

```
shippingId
```

> response

success

```
{
    "status": 0,
    "data": {
        "orderNo": 1291136461000,
        "payment": 2999.11,
        "paymentType": 1,
        "postage": 0,
        "status": 10,
        "paymentTime": null,
        "sendTime": null,
        "endTime": null,
        "closeTime": null,
        "createTime": 1291136461000,
        "orderItemVoList": [
            {
                "orderNo": 1291136461000,
                "productId": 2,
                "productName": "oppo R8",
                "productImage": "mainimage.jpg",
                "currentUnitPrice": 2999.11,
                "quantity": 1,
                "totalPrice": 2999.11,
                "createTime": null
            }
        ],
        "shippingId": 5,
        "shippingVo": {
                "id": 4,
                "userId": 13,
                "receiverName": "Jeffery",
                "receiverPhone": "010",
                "receiverMobile": "6479587844",
                "receiverProvince": "Ontario",
                "receiverCity": "Toronto",
                "receiverDistrict": "NorthYork",
                "receiverAddress": "231 Old Street",
                "receiverZip": "L5G2G8",
                "createTime": 1485066385000,
                "updateTime": 1485066385000
            }
    }
}
```

fail
```
{
    "status": 1,
    "msg": "Failed to create order"
}
```

------

#### 2.List order

** GET /orders

> request

```
pageSize(default=10)
pageNum(default=1)
```

Status:0-cancelled -10-unpaid，20-paid，40-delivered，50-succeeded，60-close

> response

success

```
{
  "status": 0,
  "data": {
    "pageNum": 1,
    "pageSize": 3,
    "size": 3,
    "orderBy": null,
    "startRow": 1,
    "endRow": 3,
    "total": 16,
    "pages": 6,
    "list": [
      {
        "orderNo": 1291136461000,
        "payment": 2999.11,
        "paymentType": 1,
        "paymentTypeDesc": "Online payment",
        "postage": 0,
        "status": 10,
        "statusDesc": "unpaid",
        "paymentTime": "2010-02-11 12:27:18",
        "sendTime": "2010-02-11 12:27:18",
        "endTime": "2010-02-11 12:27:18",
        "closeTime": "2010-02-11 12:27:18",
        "createTime": "2010-01-23 16:04:36",
        "orderItemVoList": [
          {
            "orderNo": 1291136461000,
            "productId": 2,
            "productName": "oppo R8",
            "productImage": "mainimage.jpg",
            "currentUnitPrice": 2999.11,
            "quantity": 1,
            "totalPrice": 2999.11,
            "createTime": "2010-01-23 16:04:36"
          }
        ],
        "shippingId": 5,
        "receiverName": "Jeffery",
        "shippingVo": null
      },
      {
        "orderNo": 1291136461001,
        "payment": 2999.11,
        "paymentType": 1,
        "paymentTypeDesc": "Online payment",
        "postage": 0,
        "status": 10,
        "statusDesc": "Unpaid",
        "paymentTime": "2010-02-11 12:27:18",
        "sendTime": "2010-02-11 12:27:18",
        "endTime": "2010-02-11 12:27:18",
        "closeTime": "2010-02-11 12:27:18",
        "createTime": "2010-01-23 16:04:35",
        "orderItemVoList": [
          {
            "orderNo": 1291136461001,
            "productId": 2,
            "productName": "oppo R8",
            "productImage": "mainimage.jpg",
            "currentUnitPrice": 2999.11,
            "quantity": 1,
            "totalPrice": 2999.11,
            "createTime": "2010-01-23 16:04:35"
          }
        ],
        "shippingId": 5,
        "receiverName": "Jeffery",
        "shippingVo": null
      },
      {
        "orderNo": 1291136461002,
        "payment": 2999.11,
        "paymentType": 1,
        "paymentTypeDesc": "Online payment",
        "postage": 0,
        "status": 10,
        "statusDesc": "Unpaid",
        "paymentTime": "2010-02-11 12:27:18",
        "sendTime": "2010-02-11 12:27:18",
        "endTime": "2010-02-11 12:27:18",
        "closeTime": "2010-02-11 12:27:18",
        "createTime": "2010-01-23 16:04:35",
        "orderItemVoList": [
          {
            "orderNo": 1291136461002,
            "productId": 2,
            "productName": "oppo R8",
            "productImage": "mainimage.jpg",
            "currentUnitPrice": 2999.11,
            "quantity": 1,
            "totalPrice": 2999.11,
            "createTime": "2010-01-23 16:04:35"
          }
        ],
        "shippingId": 5,
        "receiverName": "Jeffery",
        "shippingVo": null
      }
    ],
    "firstPage": 1,
    "prePage": 0,
    "nextPage": 2,
    "lastPage": 6,
    "isFirstPage": true,
    "isLastPage": false,
    "hasPreviousPage": false,
    "hasNextPage": true,
    "navigatePages": 8,
    "navigatepageNums": [
      1,
      2,
      3,
      4,
      5,
      6
    ]
  }
}
```

fail
```
{
  "status": 10,
  "msg": "Please log in"
}


or

{
  "status": 1,
  "msg": "You are not authorized"
}



```

------

#### 3.details of order

** GET /orders/{orderNo}

> request

```
orderNo
```

> response

success

```
{
  "status": 0,
  "data": {
    "orderNo": 1291136461000,
    "payment": 30000.00,
    "paymentType": 1,
    "paymentTypeDesc": "online payment",
    "postage": 0,
    "status": 10,
    "statusDesc": "unpaid",
    "paymentTime": "",
    "sendTime": "",
    "endTime": "",
    "closeTime": "",
    "createTime": "2010-11-30 22:23:49",
    "orderItemVoList": [
      {
        "orderNo": 1291136461000,
        "productId": 1,
        "productName": "iphone7",
        "productImage": "mainimage.jpg",
        "currentUnitPrice": 10000.00,
        "quantity": 1,
        "totalPrice": 10000.00,
        "createTime": "2010-11-30 22:23:49"
      },
      {
        "orderNo": 1291136461000,
        "productId": 2,
        "productName": "oppo R8",
        "productImage": "mainimage.jpg",
        "currentUnitPrice": 20000.00,
        "quantity": 1,
        "totalPrice": 20000.00,
        "createTime": "2010-11-30 22:23:49"
      }
    ],
    "shippingId": 3,
    "receiverName": "Jeffery",
    "shippingVo": {
      "receiverName": "Jeffery",
      "receiverPhone": "0100",
      "receiverMobile": "678",
      "receiverProvince": "Ontario",
      "receiverCity": "Toronto",
      "receiverDistrict": "NorthYork",
      "receiverAddress": "281 middle street",
      "receiverZip": "L9D3B8"
    }
  }
}

```

fail
```
{
  "status": 1,
  "msg": "No order"
}
```

------

#### 4.cancel order

** PUT /orders/{orderNo}

> request

```
orderNo
```

> response

success

```
{
  "status": 0
}

```

fail
```
{
  "status": 1,
  "msg": "No order"
}

or
{
  "status": 1,
  "msg": "This order has been paid and can not be cancelled"
}
```

------
