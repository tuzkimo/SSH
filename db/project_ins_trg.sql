create or replace trigger project_ins_trg
  before insert on project
  for each row when (new.id is null)
begin
  select seq_project_id.nextval into :new.id from dual;
end project_ins_trg;