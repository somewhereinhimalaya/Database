--THINGS THAT YOU CAN DO WHEN YOU JUST GET STARTED WITH ORACLE DATABASE
--FIRST STEP

  connect system

--SECOND STEP

        --CREATE A NEW USER
    --here anishbro is username and 8080 is a password
create user anishbro identified by 8080;
grant connect,resource to anishbro
--THIRD STEP(OPTIONAL)

      --LIST ALL THE TABLE USING THIS QUERY
 select table-user from user_tables;
