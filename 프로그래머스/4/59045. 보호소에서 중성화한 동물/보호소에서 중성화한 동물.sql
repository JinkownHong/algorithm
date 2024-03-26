# 보호소에서 중성화 수술을 거친 동물
# 보호소에 들어올 당시에는 중성화되지 않았지만,
# 보호소를 나갈 당시에는 중성화된 동물
# 아이디와 생물 종, 이름을 조회
# 아이디 순으로 조회
SELECT A.ANIMAL_ID,
       A.ANIMAL_TYPE,
       A.NAME
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS O ON A.ANIMAL_ID=O.ANIMAL_ID
WHERE A.SEX_UPON_INTAKE LIKE '%Intact%' AND REGEXP_LIKE(SEX_UPON_OUTCOME,'^Neutered|^Spayed') 
ORDER BY 1