# 우유(Milk)와 요거트(Yogurt)를 동시에 구입한 장바구니가 있는지 알아보려 합니다.
# 우유와 요거트를 동시에 구입한 장바구니의 아이디를 조회하는 SQL문을 작성
# 결과는 장바구니의 아이디 순으로 정렬

# 장바구니별 우유, 요거트 개수 세기
WITH CHECKING AS (
    SELECT CART_ID
        , COUNT(CASE WHEN NAME = 'Milk' THEN 1 END) COUNT_MILK
        , COUNT(CASE WHEN NAME = 'Yogurt' THEN 1 END) COUNT_YOGURT
    FROM CART_PRODUCTS
    WHERE NAME IN ('Milk','Yogurt')
    GROUP BY CART_ID
)

# 장바구니내 우유, 요거트 1개 이상 있는지 확인
SELECT CART_ID
FROM CHECKING
WHERE COUNT_MILK >= 1 AND COUNT_YOGURT >= 1
ORDER BY CART_ID ASC