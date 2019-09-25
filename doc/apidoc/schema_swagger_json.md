--- 

title: RailsDocsDemo (params in:body) 

language_tabs: 
   - shell 

toc_footers: 
   - <a href='#'>Sign Up for a Developer Key</a> 
   - <a href='https://github.com/lavkumarv'>Documentation Powered by lav</a> 

includes: 
   - errors 

search: true 

--- 

# Introduction 


<p>Another API description</p>
 

**Version:** 1.0 

# /API/V1/PETS
## ***GET*** 

**Summary:** Get all pets

**Description:** 

### HTTP Request 
`***GET*** /api/v1/pets` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | All your pets |

## ***POST*** 

**Summary:** Create a pet

**Description:** 

### HTTP Request 
`***POST*** /api/v1/pets` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| body | body |  | No |  |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Created pet |

# /API/V1/PETS/{ID}
## ***GET*** 

**Summary:** Get specific pet

**Description:** 

### HTTP Request 
`***GET*** /api/v1/pets/{id}` 

**Parameters**

| Name | Located in | Description | Required | Type |
| ---- | ---------- | ----------- | -------- | ---- |
| id | path |  | Yes | number |

**Responses**

| Code | Description |
| ---- | ----------- |
| 200 | Specific pet |

<!-- Converted with the swagger-to-slate https://github.com/lavkumarv/swagger-to-slate -->
