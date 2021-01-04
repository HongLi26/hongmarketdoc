#### 1.add address

** POST /shippings


> request

```
receiverName=Jeffery
receiverPhone=010
receiverMobile=647689458
receiverProvince=Ontario
receiverCity=Toronto
receiverDistrict=NorthYork
receiverAddress=281 new street
receiverZip=L9F3H7
```

> response

success

```
{
    "status": 0,
    "msg": "Succeeded to add address",
    "data": {
        "shippingId": 28
    }
}
```

fail
```
{
    "status": 1,
    "msg": "Failed to succeed"
}
```


------


#### 2.delete address

**DELETE /shippings/{shippingId}

DELETE /shippings/28

> request

```
shippingId
```

> response

success

```
{
    "status": 0,
    "msg": "Succeeded to delete address"
}
```

fail
```
{
    "status": 1,
    "msg": "Failed to delete"
}
```


------


#### 3.update address

**PUT /shippings/{shippingId}

> request

```
receiverName=Jeffery
receiverPhone=010
receiverMobile=647689458
receiverProvince=Ontario
receiverCity=Toronto
receiverDistrict=NorthYork
receiverAddress=281 new street
receiverZip=L9F3H7
```

> response

success

```
{
    "status": 0,
    "msg": "Succeeded to update address"
}
```

fail
```
{
    "status": 1,
    "msg": "Failed to update address"
}
```


------


####4.get address list

**GET /shippings**

> request

```
pageNum(default: 1),pageSize(default: 10)
```

> response

success

```
{
    "status": 0,
    "data": {
        "pageNum": 1,
        "pageSize": 10,
        "size": 2,
        "orderBy": null,
        "startRow": 1,
        "endRow": 2,
        "total": 2,
        "pages": 1,
        "list": [
            {
                "id": 4,
                "userId": 13,
                "receiverName": "Jeffery",
                "receiverPhone": "010",
                "receiverMobile": "6251487988",
                "receiverProvince": "Ontario",
                "receiverCity": "Toronto",
                "receiverDistrict": "NorthYork",
                "receiverAddress": "221 Old Street",
                "receiverZip": "L9D3S0",
                "createTime": 1485066385000,
                "updateTime": 1485066385000
            },
            {
                "id": 5,
                "userId": 13,
                "receiverName": "Jeffery",
                "receiverPhone": "010",
                "receiverMobile": "6251487988",
                "receiverProvince": "Ontario",
                "receiverCity": "Toronto",
                "receiverDistrict": "NorthYork",
                "receiverAddress": "221 Old Street",
                "receiverZip": "L9D3S0",
                "createTime": 1485066385000,
                "updateTime": 1485066385000
            }
        ],
        "firstPage": 1,
        "prePage": 0,
        "nextPage": 0,
        "lastPage": 1,
        "isFirstPage": true,
        "isLastPage": true,
        "hasPreviousPage": false,
        "hasNextPage": false,
        "navigatePages": 8,
        "navigatepageNums": [
            1
        ]
    }
}
```

fail
```
{
    "status": 1,
    "msg": "Please log in"
}
```
