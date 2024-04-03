#PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서
#2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회
#진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성
#결과는 진료예약일시를 기준으로 오름차순 정렬해주세요.
SELECT APNT_NO,
       PT_NAME,
       J.PT_NO,
       MCDP_CD,
       DR_NAME,
       APNT_YMD
FROM
(
SELECT D.DR_NAME,
        A.APNT_NO,
        A.MCDP_CD,
        A.APNT_YMD,
        A.PT_NO
FROM DOCTOR D JOIN APPOINTMENT A ON D.DR_ID=A.MDDR_ID
WHERE D.MCDP_CD = 'CS' AND A.APNT_YMD LIKE '2022-04-13%' AND A.APNT_CNCL_YN = 'N'
  ) J INNER JOIN PATIENT P ON J.PT_NO=P.PT_NO
ORDER BY APNT_YMD