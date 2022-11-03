--SOAL NO 3
SET SERVEROUTPUT ON;
-- Procedure ini membuat pola yang telah ditentukan
-- Procedure pola 1
CREATE OR REPLACE PROCEDURE pola_1 AS
    x NUMBER(5); -- variable untuk nilai x yang berupa baris
    y NUMBER(5); -- variable untuk nilai y yang berupa kolom
BEGIN
    FOR x IN 0..9 LOOP
        FOR y IN 0..9 LOOP
            IF (x=y OR (x+y)= 9)  THEN
                DBMS_OUTPUT.PUT(' X');
            ELSE
            DBMS_OUTPUT.PUT(' *');
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

-- EXECUTE pola_1; (untuk men-execute, namun pada device saya dilakukan dengan cara manual

-- Procedure pola 2
CREATE OR REPLACE PROCEDURE pola_2 AS
x NUMBER(5); -- variable untuk nilai x yang berupa baris
    y NUMBER(5); -- variable untuk nilai y yang berupa kolom
BEGIN
    FOR x IN 1..10 LOOP
        FOR y IN 1..10 LOOP
            IF (x<=y)  THEN
                IF (x*y<100) THEN
                DBMS_OUTPUT.PUT(TO_CHAR(x * y,'00'));
                ELSE
                DBMS_OUTPUT.PUT(TO_CHAR(x * x,'000'));
                END IF;
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE(' ');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' ');
END;

-- EXECUTE pola_2; (untuk men-execute, namun pada device saya dilakukan dengan cara manual

-- Procedure pola 3
CREATE OR REPLACE PROCEDURE pola_3 AS
    x NUMBER(5); -- variable untuk nilai x yang berupa baris
    y NUMBER(5); -- variable untuk nilai y yang berupa kolom
BEGIN
    FOR x IN 1..10 LOOP
        FOR y IN 1..10 LOOP
            IF (x>=y)  THEN
                IF (x*y MOD 2 <> 0) THEN
                DBMS_OUTPUT.PUT(' 1');
                ELSE
                DBMS_OUTPUT.PUT(' 0');
                END IF;
            END IF;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('');
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('');
END;

-- EXECUTE pola_3; (untuk men-execute, namun pada device saya dilakukan dengan cara manual