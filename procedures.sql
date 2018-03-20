old:declare
a varchar2(30);
b number(3);
--d varchar2(30);
k number(2);
h varchar2(30);
i varchar2(30);
procedure getname(b in number,
e out number,
c out varchar2,
f out varchar2)
is
--c varchar2(30);
begin
select authorid, authorname,authoraddress into e,c,f from auth where authorid=b;
exception
when no_data_found then
dbms_output.put_line('NDF');
end;
begin
b:=&j;
getname(b,k,h,i);
dbms_output.put_line(k||' '||h||' '||i);
end;
new:declare
a varchar2(30);
b number(3);
--d varchar2(30);
k number(2);
h varchar2(30);
i varchar2(30);
procedure getname(b in number,
e out number,
c out varchar2,
f out varchar2)
is
--c varchar2(30);
begin
select authorid, authorname,authoraddress into e,c,f from auth where authorid=b;
exception
when no_data_found then
dbms_output.put_line('NDF');
end;
begin
b:=2;
getname(b,k,h,i);
dbms_output.put_line(k||' '||h||' '||i);
end;
anonymous block completed
2 Ram LA

