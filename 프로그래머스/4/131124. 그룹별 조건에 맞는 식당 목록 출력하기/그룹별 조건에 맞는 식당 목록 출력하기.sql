# MEMBER_PROFILE, REST_REVIEW 테이블에서
# 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회
# 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력
# 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬
SELECT
    MEMBER_NAME,
    R.REVIEW_TEXT AS REVIEW_TEXT,
    DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM
    MEMBER_PROFILE AS M JOIN REST_REVIEW AS R ON M.MEMBER_ID = R.MEMBER_ID
WHERE
    M.MEMBER_ID IN (
        SELECT MEMBER_ID
        FROM (
            SELECT MEMBER_ID, DENSE_RANK() OVER(ORDER BY COUNT(*) DESC) AS RNK
            FROM REST_REVIEW
            GROUP BY MEMBER_ID
        ) AS SUB
        WHERE RNK = 1
    )
ORDER BY
    REVIEW_DATE ASC, REVIEW_TEXT ASC;