prompt PL/SQL Developer import file
prompt Created on 2017年6月9日 by tuzkimo
set feedback off
set define off
prompt Dropping WORKORDER...
drop table WORKORDER cascade constraints;
prompt Creating WORKORDER...
create table WORKORDER
(
  id          NUMBER(18) not null,
  projectid   NUMBER(18) not null,
  ordername   VARCHAR2(60) not null,
  executor    VARCHAR2(60) not null,
  description VARCHAR2(420) not null,
  orderlevel  NUMBER(18) not null,
  orderdate   DATE default sysdate not null
)
tablespace SYSTEM
  pctfree 10
  pctused 40
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on column WORKORDER.id
  is '工单编号';
comment on column WORKORDER.projectid
  is '项目编号';
comment on column WORKORDER.ordername
  is '工单名称';
comment on column WORKORDER.executor
  is '执行人';
comment on column WORKORDER.description
  is '描述';
comment on column WORKORDER.orderlevel
  is '任务等级';
comment on column WORKORDER.orderdate
  is '时间';
alter table WORKORDER
  add constraint PK_WORKORDER primary key (ID)
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
alter table WORKORDER
  add constraint FK_WORKORDER_PROJECT_ID foreign key (PROJECTID)
  references PROJECT (ID);
alter table WORKORDER
  add constraint CK_WORKORDER_ORDERLEVEL
  check (orderLevel in (1,2,3));

prompt Disabling foreign key constraints for WORKORDER...
alter table WORKORDER disable constraint FK_WORKORDER_PROJECT_ID;
prompt Loading WORKORDER...
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (1, 1, 'order1', 'executor1', 'order description 1', 1, to_date('26-05-2017', 'dd-mm-yyyy'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (2, 2, 'order2', 'executor2', 'order description 2', 2, to_date('26-05-2017', 'dd-mm-yyyy'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (3, 1, 'test', 'testtest', 'testtesttest', 1, to_date('31-05-2017 14:12:10', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (4, 1, 'test', 'test', 'test', 1, to_date('31-05-2017 14:16:22', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (5, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:36:00', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (6, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:37:53', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (7, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:40:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (9, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:45:41', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (10, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:50:29', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (11, 1, 'test', 'test', 'test', 1, to_date('01-06-2017 12:59:14', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (12, 1, 'test', 'test', 'test', 1, to_date('02-06-2017 13:02:12', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (13, 1, 'test', 'test', 'test', 1, to_date('04-06-2017 22:29:38', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (14, 1, 'test', 'test', 'test', 1, to_date('09-06-2017 16:16:23', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (15, 1, 'test', 'test', 'test', 1, to_date('09-06-2017 16:21:27', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (16, 1, 'test', 'test', 'test', 1, to_date('09-06-2017 16:28:33', 'dd-mm-yyyy hh24:mi:ss'));
insert into WORKORDER (id, projectid, ordername, executor, description, orderlevel, orderdate)
values (17, 1, 'test', 'test', 'test', 1, to_date('09-06-2017 16:30:18', 'dd-mm-yyyy hh24:mi:ss'));
commit;
prompt 16 records loaded
prompt Enabling foreign key constraints for WORKORDER...
alter table WORKORDER enable constraint FK_WORKORDER_PROJECT_ID;
set feedback on
set define on
prompt Done.
