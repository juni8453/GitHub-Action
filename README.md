#### Deploy 실패
- dial tcp 3.39.195.248:22: i/o timeout 에러 발생
- 시도) AWS_HOST_DNS 가 잘못된 것 같아서 다시 수정
- 결과) 배포 성공 !

- EC2 인스턴스를 새로 생성했는데 docker 를 깜빡하고 설치하지 않았음
- 시도) AWS EC2 인스턴스에 다시 docker 설정
- 결과) 배포 성공 !

- DATASOURCE_URL, DATASOURCE_NAME, DATASOURCE_PASSWORD 환경변수 셋팅 테스트
- 잘 안되고 있는 중 ..
- Actions secrets 가 잘못돼있는 것 같아서 수정 (실패)
-   