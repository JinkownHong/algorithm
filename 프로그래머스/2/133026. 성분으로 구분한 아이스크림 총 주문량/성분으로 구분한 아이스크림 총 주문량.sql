#상반기 동안 각 아이스크림 성분 타입과 성분 타입에 대한 아이스크림의 총주문량
#총주문량이 작은 순서대로 조회
#이때 총주문량을 나타내는 컬럼명은 TOTAL_ORDER로 지정
SELECT I.INGREDIENT_TYPE,
       SUM(F.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF F INNER JOIN ICECREAM_INFO I ON F.FLAVOR=I.FLAVOR
GROUP BY 1
ORDER BY 2