---
title: 'RailsDocsDemo (params in:body)'
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="railsdocsdemo-params-in-body-">RailsDocsDemo (params in:body) v1.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

<p>Another API description</p>

Base URLs:

* <a href="//localhost:3000">//localhost:3000</a>

<h1 id="railsdocsdemo-params-in-body--pets">pets</h1>

## get_api_v1_pets

<a id="opIdget_api_v1_pets"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /localhost:3000/api/v1/pets \
  -H 'Accept: */*'

```

```http
GET /localhost:3000/api/v1/pets HTTP/1.1

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '/localhost:3000/api/v1/pets',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('/localhost:3000/api/v1/pets',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '/localhost:3000/api/v1/pets',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('/localhost:3000/api/v1/pets', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("/localhost:3000/api/v1/pets");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/localhost:3000/api/v1/pets", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/pets`

*Get all pets*

> Example responses

> 200 Response

<h3 id="get_api_v1_pets-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|All your pets|Inline|

<h3 id="get_api_v1_pets-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[Pet](#schemapet)]|false|none|none|
|» name|string|true|none|Name of pet|
|» photo_url|string|false|none|Photo of pet|
|» status|string|true|none|Status of pet|
|» owner|[Owner](#schemaowner)|true|none|none|
|»» name|string|true|none|Name of owner|
|»» age|string|false|none|Age of owner|
|»» gender|string|false|none|Gender of owner|

<aside class="success">
This operation does not require authentication
</aside>

## post_api_v1_pets

<a id="opIdpost_api_v1_pets"></a>

> Code samples

```shell
# You can also use wget
curl -X POST /localhost:3000/api/v1/pets \
  -H 'Content-Type: application/json' \
  -H 'Accept: */*'

```

```http
POST /localhost:3000/api/v1/pets HTTP/1.1

Content-Type: application/json
Accept: */*

```

```javascript
var headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

$.ajax({
  url: '/localhost:3000/api/v1/pets',
  method: 'post',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = '{
  "pet_creation_request": {
    "name": "string"
  }
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'*/*'

};

fetch('/localhost:3000/api/v1/pets',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Content-Type' => 'application/json',
  'Accept' => '*/*'
}

result = RestClient.post '/localhost:3000/api/v1/pets',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Content-Type': 'application/json',
  'Accept': '*/*'
}

r = requests.post('/localhost:3000/api/v1/pets', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("/localhost:3000/api/v1/pets");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("POST");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Content-Type": []string{"application/json"},
        "Accept": []string{"*/*"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("POST", "/localhost:3000/api/v1/pets", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`POST /api/v1/pets`

*Create a pet*

> Body parameter

```json
{
  "pet_creation_request": {
    "name": "string"
  }
}
```

<h3 id="post_api_v1_pets-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|false|none|
|» pet_creation_request|body|[Pet_Creation_Request](#schemapet_creation_request)|false|none|
|»» name|body|string|false|none|

> Example responses

> 200 Response

<h3 id="post_api_v1_pets-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Created pet|[Pet](#schemapet)|

<aside class="success">
This operation does not require authentication
</aside>

## get_api_v1_pets_id

<a id="opIdget_api_v1_pets_id"></a>

> Code samples

```shell
# You can also use wget
curl -X GET /localhost:3000/api/v1/pets/{id} \
  -H 'Accept: */*'

```

```http
GET /localhost:3000/api/v1/pets/{id} HTTP/1.1

Accept: */*

```

```javascript
var headers = {
  'Accept':'*/*'

};

$.ajax({
  url: '/localhost:3000/api/v1/pets/{id}',
  method: 'get',

  headers: headers,
  success: function(data) {
    console.log(JSON.stringify(data));
  }
})

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'*/*'

};

fetch('/localhost:3000/api/v1/pets/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```ruby
require 'rest-client'
require 'json'

headers = {
  'Accept' => '*/*'
}

result = RestClient.get '/localhost:3000/api/v1/pets/{id}',
  params: {
  }, headers: headers

p JSON.parse(result)

```

```python
import requests
headers = {
  'Accept': '*/*'
}

r = requests.get('/localhost:3000/api/v1/pets/{id}', params={

}, headers = headers)

print r.json()

```

```java
URL obj = new URL("/localhost:3000/api/v1/pets/{id}");
HttpURLConnection con = (HttpURLConnection) obj.openConnection();
con.setRequestMethod("GET");
int responseCode = con.getResponseCode();
BufferedReader in = new BufferedReader(
    new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer response = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
    response.append(inputLine);
}
in.close();
System.out.println(response.toString());

```

```go
package main

import (
       "bytes"
       "net/http"
)

func main() {

    headers := map[string][]string{
        "Accept": []string{"*/*"},
        
    }

    data := bytes.NewBuffer([]byte{jsonReq})
    req, err := http.NewRequest("GET", "/localhost:3000/api/v1/pets/{id}", data)
    req.Header = headers

    client := &http.Client{}
    resp, err := client.Do(req)
    // ...
}

```

`GET /api/v1/pets/{id}`

*Get specific pet*

<h3 id="get_api_v1_pets_id-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|number|true|none|

> Example responses

> 200 Response

<h3 id="get_api_v1_pets_id-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Specific pet|[Pet](#schemapet)|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocSowner">Owner</h2>

<a id="schemaowner"></a>

```json
{
  "name": "string",
  "age": "string",
  "gender": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|Name of owner|
|age|string|false|none|Age of owner|
|gender|string|false|none|Gender of owner|

<h2 id="tocSpet">Pet</h2>

<a id="schemapet"></a>

```json
{
  "name": "string",
  "photo_url": "string",
  "status": "string",
  "owner": {
    "name": "string",
    "age": "string",
    "gender": "string"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|true|none|Name of pet|
|photo_url|string|false|none|Photo of pet|
|status|string|true|none|Status of pet|
|owner|[Owner](#schemaowner)|true|none|none|

<h2 id="tocSpet_creation_request">Pet_Creation_Request</h2>

<a id="schemapet_creation_request"></a>

```json
{
  "name": "string"
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|name|string|false|none|none|

