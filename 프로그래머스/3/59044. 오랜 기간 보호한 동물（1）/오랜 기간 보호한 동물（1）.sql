-- 코드를 입력하세요
# 아직 입양을 못간 동물 중(LEFT,'DATETIME'이 가장 오래된 것이데, ANIMAL_OUTS 테이블에는 포함되지 않는), 가장 오래 보호소에 있었던 동물 3마리
# 출력 필요 컬럼 (NAME / DATETIME)
#보호 시작일 순으로 출력 필요 

SELECT I.NAME,
       I.DATETIME
FROM ANIMAL_INS I LEFT JOIN ANIMAL_OUTS O ON I.ANIMAL_ID = O.ANIMAL_ID
WHERE O.ANIMAL_ID IS NULL
ORDER BY 2
LIMIT 3