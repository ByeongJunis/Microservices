# Microservice-serverless
물품 구매를 원하는 사용자가 물품 구매 신청을 할 시, 물품의 재고가 없다면 공장에 재고를 요청하고, 입고를 받는 서비스입니다. 
<br>(재고가 없을 시 광고주에게 알림이 갑니다.)

## Diagram
![d9d6fbe53f57165d](https://user-images.githubusercontent.com/48310065/173232207-415844b2-d00a-4962-9521-baf5e9374986.png)


# yaml-ec2-sh
### REST API 문서 배포 자동화
- openapi.yaml 로 api spec이 이미 정리가 되었습니다. 
- 추가적인 필드 MessageAttributeTel를 추가해서, 새로운 버전 변경   
- 자동화된 방법으로 새로운 버전을 배포
- 접속 가능한 링크 (S3)

#### 참조 키워드
- swagger editor
- redoc-cli
- docker
- nginx
- ssh
- scp

#### 목표
- 쉘스크립트로 작성하여 자동화 업무를 할 수 있다.
