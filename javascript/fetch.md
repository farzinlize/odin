```
fetch(`url`, {
 method: "POST",
 headers: {"Content-Type": "application/json"},
 body: JSON.stringify({blah:"blah"})
})
.then(response => response.json())
.then(data => console.log(data.name)) 
.catch(error => console.log(error))
.finally(() => ... )
}
```