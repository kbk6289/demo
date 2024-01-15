 FROM openjdk:17-jdk-slim
 
 ## HOME DIR =====
 ## 이동할 경로
 ## 경로가 없을 경우, 생성 후 이동
 ## 이후 명령어는 WORKDIR경로에서 실행
 WORKDIR /good
 
 ## copy files
 ## [문법] COPY 파일위치경로/파일이름.확장자 복사할위치/파일이름.확장자
 
 ## demo-0.0.1-SNAPSHOT.jar 파일을 
 ## 현재 경로에 demo.jar 이름으로 복사
 COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar
 
 ## sh파일도 복사함
 COPY hello.sh ./hello.sh
 
 ## RUN 리눅스 명령어
 ## hello.sh 파일에 실행 권한 추가
 RUN chmod +x ./hello.sh
 
 ENTRYPOINT [ "sh", "./hello.sh" ]