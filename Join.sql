1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`id`, `students`.`name`, `students`.`surname`, `students`.`registration_number`, `students`.`date_of_birth`, `students`.`email`
FROM `degrees` 
INNER JOIN `students` ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = 'Corso di Laurea in Economia';


2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT *
FROM `degrees`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
WHERE `degrees`.`level` = 'magistrale'
AND `departments`.`name` = 'Dipartimento di Neuroscienze';


3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.*
FROM `courses` 
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `teachers`.`id` = 44;


4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il
relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT `students`.`name`, `students`.`surname`, `students`.`registration_number`, `degrees`.`name`, `departments`.`name`
FROM `students` 
INNER JOIN `degrees` ON `degrees`.`id` = `students`.`degree_id`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
ORDER BY `students`.`surname`, `students`.`name`


5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name`, `courses`.`name`, `courses`.`period`, `courses`.`year`, `courses`.`cfu`, `teachers`.`name`, `teachers`.`surname`
FROM `degrees` 
INNER JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`ON `teachers`.`id` = `course_teacher`.`teacher_id`


6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT `teachers`.*
FROM `teachers`
INNER JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `degrees` ON `degrees`.`id` = `courses`.`degree_id`
INNER JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
WHERE `departments`.`name` = 'Dipartimento di Matematica';


7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per