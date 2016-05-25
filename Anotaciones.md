Recursos para la demo de SOA.
---

####Credenciales del gestor de Base datos Oracle####

    user                                             : system
    password                                         : Pa55word
    Oracle Database Listener                         : 1521
    Oracle Services for Microsoft Transaction Server : 2030
    Oracle HTTP Listener                             : 8080

####Datos del dominio default.####
    Administrador ID : weblogic
    Password         : Pa55word
    Puerto           : 7101
    Puerto SSL       : 7102

####Crear esquema de Base datos.####
~~~shell
SQL> create user soademo identified by Pa55word;

User created.

SQL> grant CONNECT, RESOURCE, CREATE SESSION, ALTER SESSION, CREATE DATABASE LINK, CREATE MATERIALIZED VIEW, CREATE PROCEDURE, CREATE PUBLIC SYNONYM, CREATE ROLE, CREATE SEQUENCE, CREATE SYNONYM, CREATE TABLE, CREATE TRIGGER, CREATE TYPE, CREATE VIEW, UNLIMITED TABLESPACE to soademo;

Grant succeded.

SQL> disconnect
Disconnected from Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> quit
~~~

>Borrar usuario de base datos (incluyendo esquemas y demas en cascada)  

~~~shell
DROP USER soademo CASCADE;
~~~

####Credenciales del esquema _soademo_####

~~~sql
usuario (esquema) : soademo
password          : Pa55word
~~~

Creacion de recursos en weblogic.
---

JMS **Queue source**.  

    Name      : demoOrdenesQueue
    JNDI Name : jms/demoOrdenesQueue

JMS **Queue Factory**.  

    Name      : demoOrdenesCF
    JNDI Name : jms/demoOrdenesCF

JMS **Queue Connection Pool**.  

    JNDI Name : eis/Queue/demoOrdenes

DATA **jdbc source**.   

    Name      : soademoDatabase
    JNDI Name : jdbc/soademoDatabase

DATA **jdbc Connection Pool**.   

    JNDI Name : eis/DB/soademoDatabase
