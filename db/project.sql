prompt PL/SQL Developer import file
prompt Created on 2017年6月9日 by tuzkimo
set feedback off
set define off
prompt Dropping PROJECT...
drop table PROJECT cascade constraints;
prompt Creating PROJECT...
create table PROJECT
(
  id          NUMBER(18) not null,
  projectname VARCHAR2(60) not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on column PROJECT.id
  is '项目编号';
comment on column PROJECT.projectname
  is '项目名称';
alter table PROJECT
  add constraint PK_PROJECT primary key (ID)
  using index 
  tablespace SYSTEM
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Loading PROJECT...
insert into PROJECT (id, projectname)
values (1, 'project1');
insert into PROJECT (id, projectname)
values (2, 'project2');
commit;
prompt 2 records loaded
set feedback on
set define on
prompt Done.
