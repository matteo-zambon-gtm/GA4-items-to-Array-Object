___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "GA4 items to Array Object",
  "description": "This variable converts item parameters to an array object. You can have the full list of items name to use for Tik-Tok Pixel or other pixels. You can do it with id, category, price, quantitiy, etc.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "itemParameter",
    "displayName": "Item Parameter (es: item_name)",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "item_name",
        "displayValue": "item_name"
      },
      {
        "value": "item_id",
        "displayValue": "item_id"
      },
      {
        "value": "price",
        "displayValue": "price"
      },
      {
        "value": "item_brand",
        "displayValue": "item_brand"
      },
      {
        "value": "item_category",
        "displayValue": "item_category"
      },
      {
        "value": "item_category2",
        "displayValue": "item_category2"
      },
      {
        "value": "item_category3",
        "displayValue": "item_category3"
      },
      {
        "value": "item_category4",
        "displayValue": "item_category4"
      },
      {
        "value": "item_variant",
        "displayValue": "item_variant"
      },
      {
        "value": "item_list_name",
        "displayValue": "item_list_name"
      },
      {
        "value": "item_list_id",
        "displayValue": "item_list_id"
      },
      {
        "value": "index",
        "displayValue": "index"
      },
      {
        "value": "quantity",
        "displayValue": "quantity"
      },
      {
        "value": "promotion_id",
        "displayValue": "promotion_id"
      },
      {
        "value": "promotion_name",
        "displayValue": "promotion_name"
      },
      {
        "value": "creative_name",
        "displayValue": "creative_name"
      },
      {
        "value": "creative_slot",
        "displayValue": "creative_slot"
      },
      {
        "value": "location_id",
        "displayValue": "location_id"
      }
    ],
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const dl = require('copyFromDataLayer');
const makeInteger = require('makeInteger');
const makeNumber = require('makeNumber');
const ga4Events = ['view_item_list', 'select_item', 'view_item', 'remove_from_cart', 'add_to_cart', 'add_to_wishlist', 'view_promotion', 'select_promotion', 'view_cart', 'begin_checkout', 'add_shipping_info', 'add_payment_info', 'purchase', 'refund'];

const event = dl('event');
const ecommerce = dl('ecommerce', 1);
const itemParameter = data.itemParameter;

if(ga4Events.indexOf(event) >= 0){
  let prods = ecommerce.items;
  let arrObj =[];

 
  if (itemParameter === 'item_name')
  {
      arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_name')){
        return prod.item_name.toString();
      }
    });
  }

  if (itemParameter === 'item_id')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_id')){
        return prod.item_id.toString();
      }
    });
  }

  if (itemParameter === 'item_brand')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_brand')){
        return prod.item_brand.toString();
      }
    });
  }
  
  if (itemParameter === 'price')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('price')){
        return prod.price.toString();
      }
    });
  }
  if (itemParameter === 'item_category')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_category')){
        return prod.item_category.toString();
      }
    });
  }
  if (itemParameter === 'item_category2')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_category2')){
        return prod.item_category2.toString();
      }
    });
  }
  if (itemParameter === 'item_category3')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_category3')){
        return prod.item_category3.toString();
      }
    });
  }
  if (itemParameter === 'item_category4')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_category4')){
        return prod.item_category4.toString();
      }
    });
  }
  if (itemParameter === 'item_variant')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_variant')){
        return prod.item_variant.toString();
      }
    });
  }
  if (itemParameter === 'item_list_name')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_list_name')){
        return prod.item_list_name.toString();
      }
    });
  }
  if (itemParameter === 'item_list_id')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('item_list_id')){
        return prod.item_list_id.toString();
      }
    });
  }
  if (itemParameter === 'index')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('index')){
        return prod.index.toString();
      }
    });
  }
  if (itemParameter === 'quantity')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('quantity')){
        return prod.quantity.toString();
      }
    });
  }
  if (itemParameter === 'promotion_id')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('promotion_id')){
        return prod.promotion_id.toString();
      }
    });
  }
  if (itemParameter === 'promotion_name')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('promotion_name')){
        return prod.promotion_name.toString();
      }
    });
  }
  if (itemParameter === 'creative_name')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('creative_name')){
        return prod.creative_name.toString();
      }
    });
  }
  if (itemParameter === 'creative_slot')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('creative_slot')){
        return prod.creative_slot.toString();
      }
    });
  }
  if (itemParameter === 'location_id')
  {
    arrObj = prods.map(function(prod) {
      if(prod.hasOwnProperty('location_id')){
        return prod.location_id.toString();
      }
    });
  }

  return arrObj;
}
else{
  return [];
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "event"
              },
              {
                "type": 1,
                "string": "ecommerce.*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Untitled test 1
  code: |-
    const mockData = {
      // Mocked field values
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    // Verify that the variable returns a result.
    assertThat(variableResult).isNotEqualTo(undefined);
setup: |-
  let input = data.itemParameter;
  return input.toUpperCase();


___NOTES___

Created on 8/13/2021, 3:43:44 PM


