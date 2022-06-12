## 로컬에서 curl을 이용해 구매 요청 테스트

```
$ curl --location --request POST 'https://t1h6h0k2tf.execute-api.ap-northeast-2.amazonaws.com/send' --header 'Content-Type: application/json' --data-raw '{   "MessageGroupId": "stock-empty-group",    "subject": "도너츠 재고 부족",  "message": "재고 부족",    "MessageAttributeProductId": "CP-502101",    "MessageAttributeFactoryId": "FF-500293"}'

{"message":"재고부족, 제품 생산 요청!"}%
```

## 재고 부족 상황시, 알림 전송

```
{
  MessageGroupId: 'stock-empty-group',
  subject: '도너츠 재고 부족',
  message: '재고 부족',
  MessageAttributeProductId: 'CP-502101',
  MessageAttributeFactoryId: 'FF-500293'
}
재고 부족 상황!!
{
  ResponseMetadata: { RequestId: 'a7066312-be66-52bc-905a-39cecb5ac517' },
  MessageId: '569b0a8e-97a3-51dc-b1a3-5052e29fd677',
  SequenceNumber: '10000000000000049000'
}
``