# USED_GOODS_BOARD와 USED_GOODS_REPLY 테이블에서 (FROM)
# 2022년 10월에 작성된 (WHERE)
# 게시글 제목, 게시글 ID, 댓글 ID, 댓글 작성자 ID, 댓글 내용, 댓글 작성일을 조회 (SELECT)
# 댓글 작성일을 기준으로 오름차순 정렬, 댓글 작성일이 같다면 게시글 제목을 기준으로 오름차순 정렬
# (ORDER BY)

SELECT TITLE,
       R.BOARD_ID,
       REPLY_ID,
       R.WRITER_ID,
       R.CONTENTS,
       DATE_FORMAT(R.CREATED_DATE,'%Y-%m-%d') CREATED_DATE
FROM USED_GOODS_BOARD B JOIN USED_GOODS_REPLY R USING (BOARD_ID)
WHERE MONTH(B.CREATED_DATE)=10
ORDER BY 6, 1