#### 1.log in

**POST /user/login**

> request

Content-Type: application/json

```
{
	"username":"admin",
	"password":"admin",
}
```
> response

fail
```
{
    "status": 1,
    "msg": "Wrong password"
}
```

success
```
{
    "status": 0,
    "data": {
        "id": 12,
        "username": "aaa",
        "email": "aaa@gmail.com",
        "phone": null,
        "role": 0,
        "createTime": 1479048325000,
        "updateTime": 1479048325000
    }
}
```


-------

#### 2.sign up
**POST /user/register**

> request

```
{
	"username":"admin",
	"password":"admin",
	"email":"admin@gmail.com"
}
```


> response

success
```
{
    "status": 0,
    "msg": "Succeeded"
}
```


fail
```
{
    "status": 2,
    "msg": "The user has existed"
}
```


#### 3.get user information
**GET /user**

> request

```
No parameters
```
> response

success
```
{
    "status": 0,
    "data": {
        "id": 12,
        "username": "aaa",
        "email": "aaa@gmail.com",
        "phone": null,
        "role": 0,
        "createTime": 1479048325000,
        "updateTime": 1479048325000
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


#### 4.log out
**POST /user/logout

> request

```
No parameters
```

> response

success

```
{
    "status": 0,
    "msg": "Succeeded to log out"
}
```

fail
```
{
    "status": -1,
    "msg": "Error on server"
}
```
