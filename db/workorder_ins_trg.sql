create or replace trigger workorder_ins_trg
  before insert on workorder
  for each row when (new.id is null)
begin
  select seq_workorder_id.nextval into :new.id from dual;
end workorder_ins_trg;
