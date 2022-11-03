-- SOAL NO 2
SET SERVEROUTPUT ON;
-- Procedure ini mengkonversi nilai/suhu celcius ke fahrenheit, reamur, dan kelvin
CREATE OR REPLACE PROCEDURE konverter_celcius(celcius NUMBER) AS
    fahrenheit NUMBER(32); --variable penampung nilai fahrenheit
    reamur NUMBER(32); --variable penampung nilai reamur
    kelvin NUMBER(32); --variable penampung nilai kelvin
BEGIN
    fahrenheit := ((9/5)* celcius) + 32; -- proses kalkulasi celcius => fahrenheit
    reamur := (4/5) * celcius; -- proses kalkulasi celcius => reamur
    kelvin := celcius + 273; -- proses kalkulasi celcius => kelvin
    DBMS_OUTPUT.PUT_LINE('celcius = ' || celcius);
    DBMS_OUTPUT.PUT_LINE('fahrenheit = ' || fahrenheit);
    DBMS_OUTPUT.PUT_LINE('reamur= ' || reamur);
    DBMS_OUTPUT.PUT_LINE('kelvin = ' || kelvin);
END;


--  EXECUTE konverter_celcius(32); (untuk men-execute, namun pada device saya dilakukan dengan cara manual