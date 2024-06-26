# PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계
# 결과는 매출액을 기준으로 내림차순 정렬
# 매출액이 같다면 상품코드를 기준으로 오름차순 정렬
SELECT P.PRODUCT_CODE,
       P.PRICE*SUM(O.SALES_AMOUNT) SALES
FROM PRODUCT P INNER JOIN OFFLINE_SALE O ON P.PRODUCT_ID=O.PRODUCT_ID
GROUP BY 1
ORDER BY 2 DESC, 1