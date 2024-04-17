# MEMBER_PROFILE, REST_REVIEW 테이블에서
# 리뷰를 가장 많이 작성한 회원의 리뷰들을 조회
# 회원 이름, 리뷰 텍스트, 리뷰 작성일이 출력
# 결과는 리뷰 작성일을 기준으로 오름차순, 리뷰 작성일이 같다면 리뷰 텍스트를 기준으로 오름차순 정렬
SELECT MEMBER_NAME,
       REVIEW_TEXT,
       DATE_FORMAT (REVIEW_DATE,'%Y-%m-%d') DATE_FORMAT
FROM MEMBER_PROFILE M JOIN REST_REVIEW R USING (MEMBER_ID)
WHERE R.MEMBER_ID = (SELECT MEMBER_ID
                      FROM REST_REVIEW
                      GROUP BY MEMBER_ID
                      ORDER BY COUNT(*) DESC
                      LIMIT 1)
ORDER BY 3, 2