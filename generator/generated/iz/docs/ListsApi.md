# ListsApi

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**listsGet**](ListsApi.md#listsGet) | **GET** /lists | Available information lists
[**listsSlugGet**](ListsApi.md#listsSlugGet) | **GET** /lists/{slug} | Information list



## listsGet

Available information lists

### Example

```bash
 listsGet
```

### Parameters

This endpoint does not need any parameter.

### Return type

**map[String, array]**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: aplication/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## listsSlugGet

Information list

### Example

```bash
 listsSlugGet slug=value
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **slug** | **string** | List Slug | [default to null]

### Return type

**array**

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not Applicable
- **Accept**: aplication/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

