
INSERT INTO USER_INFO
VALUES ('user1','user1','홍길동','AAA@NAVER.COM','01011112222','12345','서울특별시 강남구 테헤란로10길 9 그랑프리 빌딩','4F','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user2','user2','가나다','ddd@NAVER.COM','01031234422','53222','대전광역시 중구 부사동 209-1','102호','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user3','user3','라치데','fff@NAVER.COM','01044445555','86544','강원도 평창군 평창읍 하리 66-3','201호','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user4','user4','비애아','ccc@NAVER.COM','01013333444','43435','강원도 태백시 황지동 665-1','1402호','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user5','user5','지나차','eee@NAVER.COM','01066667777','75433','대전광역시 중구 문화동 11-223','503호','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user6','user6','재애채','ggg@NAVER.COM','01022224444','34211','경상남도 남해군 미조면 송정리 1258-1','13F','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user7','user7','라피이','hhh@NAVER.COM','01076777666','90678','경기도 김포시 장기동 1847','1F','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user8','user8','쿠라다','qqq@NAVER.COM','01033335555','73844','부산광역시 영도구 봉래동5가 122-37','901호','Y','Y','Y','USER', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user9','user9','티타이','qawe@NAVER.COM','01033231115','73844','경상남도 거제시 장평동 31-22','1호','Y','Y','Y','ADMIN', 1, DEFAULT, NULL)
;
INSERT INTO USER_INFO
VALUES ('user10','user10','바라라','feghe@NAVER.COM','01039458333','73844','충청남도 보령시 대천동 438-12','1203호','Y','Y','Y','ADMIN', 1, DEFAULT, NULL)
;
--결제 구현용 더미 데이터
INSERT INTO PLACE_INFO VALUES(
    0, '랭스터디카페', 'ㅇㅇ구 ㅁㅁ대로 155길', '더미용', '11230'
);
INSERT INTO STUDY_ROOM VALUES(
    0, '스터디룸A', 48000, SYSDATE, 8, 0
);
COMMIT;