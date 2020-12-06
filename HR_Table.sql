create table REGIONS (    
  region_id         number not null,    
  region_name       varchar2(25),   
  
  constraint pk_regions primary key (region_id)  
);


create table COUNTRIES (    
  country_id        char(2) not null,    
  country_name      varchar2(40),  
  region_id         number,  
  
  constraint pk_countries primary key (country_id),  
  
  constraint fk_countries_regionid foreign key (region_id)   
      references REGIONS (region_id)  
);


create table LOCATIONS (    
  location_id         number not null,    
  street_address      varchar2(40),  
  postal_code         varchar2(12),  
  city                varchar2(30) not null,  
  state_province      varchar2(25),  
  country_id          char(2),  
  
  constraint pk_locations primary key (location_id),  
  
  constraint fk_locations_countryid foreign key (country_id)   
      references COUNTRIES (country_id)  
);


create table DEPARTMENTS (    
  department_id        number not null,    
  department_name      varchar2(30) not null,  
  manager_id           number,  
  location_id          number,  
  
  constraint pk_departments primary key (department_id),  
  
  constraint fk_departments_locationid foreign key (location_id)   
      references LOCATIONS (location_id)   
);


create table JOBS (    
  job_id              varchar2(10) not null,    
  job_title           varchar2(35) not null,  
  min_salary          number(6),  
  max_salary          number(6),  
  constraint pk_jobs primary key (job_id)  
);


create table EMPLOYEES (    
  employee_id      number not null,    
  first_name       varchar2(20),  
  last_name        varchar2(25) not null,  
  email            varchar2(25) not null,  
  phone_number     varchar2(20),  
  hire_date        date not null,  
  job_id           varchar2(10) not null, 
  salary           number(8,2),  
  commission_pct   number(2,2),  
  manager_id       number,  
  department_id    number,  
  
  constraint pk_employees primary key (employee_id), 
   
  constraint fk_employees_jobid foreign key (job_id)   
      references JOBS (job_id),       
  constraint fk_employees_departmentid foreign key (department_id)   
      references DEPARTMENTS (department_id)       
);



create table JOB_HISTORY (   
  employee_id       number not null,   
  start_date        date not null,    
  end_date          date not null,   
  job_id            varchar2(10) not null, 
  department_id     number,   
     
  constraint pk_job_history primary key (employee_id,start_date),   
   
  constraint fk_department_departmentid foreign key (department_id)  
      references DEPARTMENTS (department_id), 
  constraint fk_employees_employeeid foreign key (employee_id)  
      references EMPLOYEES (employee_id), 
  constraint fk_jobs_jobsid foreign key (job_id)  
      references JOBS (job_id)  
);




insert into REGIONS (region_id , region_name ) values (1,'Europe');
insert into REGIONS (region_id , region_name ) values (2,'Americas');
select * from REGIONS;



insert into COUNTRIES (country_id, country_name, region_id ) values ('CA','Canada',2);
insert into COUNTRIES (country_id, country_name, region_id ) values ('DE','Germany',1);
select * from COUNTRIES;



insert into LOCATIONS (location_id,street_address,postal_code,city,state_province,country_id) values (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
insert into LOCATIONS (location_id,street_address,postal_code,city,state_province,country_id) values (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
select * from LOCATIONS;



insert into JOBS (job_id,job_title,min_salary,max_salary) values('AD_PRES','President',20080,40000);
insert into JOBS (job_id,job_title,min_salary,max_salary) values('AD_VP','Administration Vice President',15000,30000);
select * from JOBS;


insert into DEPARTMENTS (department_id,department_name,manager_id,location_id) values(10,'Administration',200,1700);
insert into DEPARTMENTS (department_id,department_name,manager_id,location_id) values(20,'Marketing',201,1800);
select * from DEPARTMENTS;


insert into EMPLOYEES(employee_id,first_name,last_name,email,phone_number,hire_date, job_id ,salary,commission_pct,manager_id,department_id)values(100,'Steven','King','SKING','515.123.4567','17-JUN-03','AD_PRES',24000,0.2,null,90); 
insert into EMPLOYEES(employee_id,first_name,last_name,email,phone_number,hire_date, job_id ,salary,commission_pct,manager_id,department_id)values(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','21-SEP-05','AD_VP',17000,0.2,100,90); 
select * from EMPLOYEES;



insert into JOB_HISTORY (employee_id,start_date,end_date,job_id,department_id) values(102,'13-JAN-01', '24-JUL-06','IT_PROG',60);
insert into JOB_HISTORY (employee_id,start_date,end_date,job_id,department_id) values(101,'21-SEP-97', '27-OCT-01','AC_ACCOUNT',110);
select * from JOB_HISTORY;







