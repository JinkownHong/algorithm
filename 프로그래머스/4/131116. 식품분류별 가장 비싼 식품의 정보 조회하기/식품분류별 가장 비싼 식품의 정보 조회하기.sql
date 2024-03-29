#식품 분류 별 가격이 제일 비싼 식품
#식품분류(CATEGORY), 가격(PRICE), 이름을(PRODUCT_NAME) 조회
#이때 식품분류가 '과자', '국', '김치', '식용유'인 경우만 출력
#결과는 식품 가격을 기준으로 내림차순 정렬
SELECT CATEGORY, PRICE, PRODUCT_NAME
FROM
(
    SELECT CATEGORY, MAX(PRICE) PRICE
    FROM FOOD_PRODUCT
    GROUP BY CATEGORY
) A JOIN FOOD_PRODUCT B USING(CATEGORY,PRICE)
WHERE CATEGORY IN('과자','국','김치','식용유')
ORDER BY 2 DESC