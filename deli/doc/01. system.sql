--system에서 진행

drop user delivery cascade;

-- 삭제 안될때
select sid,serial#,username,status from v$session where schemaname='DELIVERY';
alter system kill session 'sid, serial#';

-- 계정생성
CREATE USER delivery IDENTIFIED BY 12345 ACCOUNT UNLOCK;
GRANT resource, connect To delivery;
GRANT UNLIMITED TABLESPACE, CREATE SESSION, connect, resource TO delivery;
ALTER USER delivery DEFAULT TABLESPACE USERs;