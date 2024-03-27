#입양을 간 동물 중 보호 기간이 가장 길었던 동물 두 마리
#아이디와 이름을 조회
#결과는 보호 기간이 긴 순으로 조회
SELECT A.ANIMAL_ID,
       A.NAME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS O ON A.ANIMAL_ID=O.ANIMAL_ID
ORDER BY O.DATETIME-A.DATETIME DESC
LIMIT 2