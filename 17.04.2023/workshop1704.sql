SELECT current_date
--sorgulandığı anda ki tarihi getirir

SELECT current_time
--geçerli zamanı getirir

SELECT now()
--sorgulandığı anda ki tarih ve zamanı getirir(saat dilim ile birlikte)

SELECT localtimestamp
--sorgulandığı anda ki tarih ve zamanı getirir(saat dilimi olmadan)

SELECT localtime
--sorgunun yapıldığı saati getirir

SELECT current_date, AGE(timestamp '1998-01-01');
--sorgunun yapıldığı saat ve girilen tarihin arasındaki zamanı verir.

SELECT current_timestamp
--sorgulandığı anda ki tarih ve zamanı getirir(saat dilim ile birlikte)


SELECT extract(year from birth_date) from employees
--tablodan yıl bilgisini getirir

SELECT extract(month from birth_date) from employees
--tablodan ay bilgisini getirir

SELECT extract(day from birth_date) from employees
--tablodan gün bilgisini getirir

SELECT * from orders where order_date between '1996-01-01' and '1998-01-31'

SELECT * from orders where shipped_date < current_date

SELECT * from employees where birth_date >= localtimestamp

SELECT * from employees where hire_date < now()











