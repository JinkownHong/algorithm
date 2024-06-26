#USER_INFO 테이블과 ONLINE_SALE 테이블에서
#년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성
#결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.
SELECT YEAR(SALES_DATE) YEAR,
       MONTH(SALES_DATE) MONTH,
       GENDER,
       COUNT(DISTINCT(USER_ID)) USERS
FROM USER_INFO A INNER JOIN ONLINE_SALE B USING(USER_ID)
WHERE GENDER IS NOT NULL
GROUP BY 1,2,3
ORDER BY 1, 2, 3