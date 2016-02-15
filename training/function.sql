declare
a varchar2(30);
b varchar2(30);
d varchar2(30);
temp varchar2(30);
  Function getname(id in number)
  return varchar2
  is
  add varchar2(30);
  c varchar2(30);
  Begin
  select authorname into c 
  from auth
  where authoraddress=&add;
  return c;
  exception
  when no_data_found then
  return 'NDF';
  when too_many_rows then
  return 'TMR';
  when others then
  return 'other exception';
  end;

begin
--temp:=&b;
d:=getname(1);
dbms_output.put_line(d);
end;
/