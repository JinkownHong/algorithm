-- 코드를 입력하세요
SELECT ANIMAL_TYPE,
       COUNT(ANIMAL_TYPE)
FROM ANIMAL_INS
GROUP BY 1
ORDER BY 1