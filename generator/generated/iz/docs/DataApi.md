# DataApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**dataSlugGet**](DataApi.md#dataSlugGet) | **GET** /data/{slug} | Data in information list
[**dataSlugSearchGet**](DataApi.md#dataSlugSearchGet) | **GET** /data/{slug}/search | Search in information list



## dataSlugGet

Data in information list

### Example

```bash
 dataSlugGet slug=value  page=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **string** | Data in list specified by slug | [default to null]
 **page** | **integer** | Page number | [default to 1]

### Return type

[**Data**](Data.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: aplication/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## dataSlugSearchGet

Search in information list

### Example

```bash
 dataSlugSearchGet slug=value  page=value  column=value  search=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **string** | List Slug | [default to null]
 **page** | **integer** | Page number | [default to 1]
 **column** | **string** | Column | [default to null]
 **search** | **string** | Search | [default to null]

### Return type

[**Data**](Data.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: aplication/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

