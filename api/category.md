#### 1.list categories

**GET /categories**

> request

No need to log in

> response


success
```
{
    "status": 0,
    "data": [{
        "id": 100001,
        "parentId": 0,
        "name": "Appliance",
        "sortOrder": 1,
        "subCategories": [{
            "id": 100006,
            "parentId": 100001,
            "name": "Refrigerator",
            "sortOrder": 2,
            "subCategories": [{
                "id": 100040,
                "parentId": 100006,
                "name": "Advancedrefrigerator",
                "sortOrder": 1,
                "subCategories": []
            }]
        },  {
        "id": 100005,
        "parentId": 0,
        "name": "Book",
        "sortOrder": 1,
        "subCategories": [{
            "id": 100026,
            "parentId": 100005,
            "name": "Kids",
            "sortOrder": 1,
            "subCategories": []
        }, {
            "id": 100027,
            "parentId": 100005,
            "name": "Cooking",
            "sortOrder": 1,
            "subCategories": []
        }]
    }]
}
```
