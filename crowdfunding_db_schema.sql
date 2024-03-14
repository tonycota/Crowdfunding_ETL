-- drop any existing tables
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;


create table category (
	category_id varchar(4) not null,
	category varchar(12) not null,
	constraint "primary_category" primary key ("category_id"));
	
create table subcategory(
	subcategory_id varchar(8) not null,
	subcategory varchar(17) not null,
	constraint "primary_subcategory" primary key ("subcategory_id"));

create table contacts(
	contact_id int not null,
	first_name varchar(15) not null,
	last_name varchar(15) not null,
	email varchar(50) not null,
	constraint "primary_contacts" primary key ("contact_id"));
	
create table campaign(
	cf_id int not null,
	contact_id int not null,
	company varchar(50) not null,
	description text not null,
	goal float not null,
	pledged float not null,
	outcome varchar(10) not null,
	backers_count int not null,
	country varchar(2) not null,
	currency varchar(3) not null,
	launched_date date not null,
	end_date date not null,
	category_id varchar(4) not null,
	subcategory_id varchar(8) not null,
	constraint "primary_campaign" primary key ("cf_id"));
	
	
alter table "campaign" add constraint "foreigncamp_con_id" 
	foreign key("contact_id") references "contacts" ("contact_id");
	
alter table "campaign" add constraint "foreigncamp_cat_id" 
	foreign key("category_id") references "category" ("category_id");
	
alter table "campaign" add constraint "foreigncamp_subcat_id" 
	foreign key("subcategory_id") references "subcategory" ("subcategory_id");
	

select * from category;
select * from subcategory;
select * from contacts;
select * from campaign;
	