Selezionare tutti gli studenti nati nel 1990:
SELECT *
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990; 


Selezionare tutti i corsi che valgono più di 10 crediti:
SELECT *
FROM `courses` 
WHERE cfu > 10;


Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students`
WHERE FLOOR(DATEDIFF(CURDATE(), `date_of_birth`) / 365.25) > 30 


Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di
laurea (286)
SELECT *
FROM `courses`
WHERE `period` = 'I semestre'
AND `year` =  1;


Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del
20/06/2020 (21)
SELECT * 
FROM `exams` 
WHERE `date` = '2020-06-20'
AND HOUR(`hour`) >= 14;


Selezionare tutti i corsi di laurea magistrale (38)
SELECT *
FROM `degrees`
WHERE `level` = 'magistrale';


Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT('id') AS 'totale'
FROM `departments`;


Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(`id`) AS 'insegnanti_senza_numero'
FROM `teachers`
WHERE `phone` IS NULL;

