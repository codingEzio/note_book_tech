| 作者 | 頁數 | 出版時間 | 
| --- | --- | --- | 
| Elmasri Navathe | 1080 | *2011* | 

---------

- This book stresses the fundamentals of
    - *databas modeling and design*
    - *the langs and models provided by the DBMS*
    - *database system implementation techniques*

----------     

### Guidelines for using this book
    
- It can be divided into two-semester course sequence
    
    |  |  |
    | --- | --- | 
    | Chapter 01 \~ 15 | Dtabase Design and Database Systems |
    | Chapter 16 \~ 29 | Database Models and Implementation Techniques |

### Contents of the Sixth Edition 

- Part 01 --- cp 01, 02 
    - basic concepts for a good understanding of db modules, systems, and languages. 
    - introduce databases, typical users, DBMS concepts, terms, architecture.

- Part 02 --- cp 03, 04, 05
    - describes the relational data model, SQL standard, the formal relational languages.
    - data definition, data modification, and simple SQL queries.
    - more complex SQL concepts of *triggers*, *assertions*, *views*, and schema modification.
    - the operations of the relational algebra and the relational calculus.
- Part 03 --- cp 07, 08, 09, 10
    - the concepts of Entity-Relationship (ER) model and ER diagrams
        - and used to illustrate conceptual database design
    - data abstraction and semantic data modeling concepts 
        - and shows how the ER model can be extended to incorporate these ideas 
        - leading to the enhanced-ER (EER) data model and EER diagrams
    - concepts like: subclasses, specialization, generalization, and union types(categories).
    - the class diagrams of UML
    - relational db design using ER- and EER-to-relational mapping 
    - an overview of the different phases of db design process in enterprises

- Part 04 --- cp 11, 12 
    - the object-oriented, object-relational, and XML data models and their langs and standards
    - the concepts for object databases, 
        - shows how they’ve been incorporated into the SQL standard<br>in order to add object capabilities to relational db systems
    - and then covers the ODMG object model standard, and its object definition and query langs
    - XML model and langs. 
        - Discussing how XML is related to db systems
        - and compares the XML model to traditional db models 
    - also show how data can be converted between the XML and relational representations

- Part 05 --- cp 13, 14 
    - covers SQL programming topics 
        - e.g. mbedded SQL, dynamic SQL, ODBC, SQLJ, JDBC, and SQL/CLI.
    - then introduces Web database programming (example by PHP lang)

- Part 06 --- cp 15, 16
    - the formalisms, theories, algorithms developed for relational db design by normalization
    - functional and other types of dependencies and normal forms of relations 
    - and there’s step-by-step normalization also defines multivalued and join dependencies 
    - relational design algorithms based on normalization,
        - along with the theoretical materials that the algorithms are based on 

- Part 07 --- cp 17, 18
    - the physical file structures and access methods used in db systems 
        - describes primary methods of organizing files of records on disk 
        - including static/dynamic hashing 
    - indexing techniques for files, including B-tree and B<sup>+</sup>-tree data structures and grid files 

- Part 08 --- cp 19, 20
    - the basics of query processing and optimization 
    - physical database design and tuning 

- Part 09 --- cp 21, 22, 23
    - the techniques needed for transaction processing systems 
        - and defines the concepts of recoverability and serializability of schedules 
        - an overview of the various types of concurrency control protocols, with a focus on-phase locking
    - also discusses timestamp ordering and optimistic concurrency control techniques 
        - as well as the multiple-granularity locking
    - database recovery protocols, 
        - and gives an overview of the concepts and techniques that are used in recovery 

- Part 10 --- cp 24, 25, 26, 27, 28, 29
    - database security
        - including the access control with SQL commands to GRANT and REVOKE privileges
        - the mandatory access control model with user categories and polyinstantiation
        - a discussion of data privacy and its relationship to security 
        - and an overview of SQL injection attacks 
    - introduction to distributed databases and discuss the three-tier client/server architecture
    - several enhanced database models for advanced applications 
        - include active databases and triggers, 
        - as well as temporal, spatial, multimedia, and deductive databases 
    - information retrieval techniques, 
        - and how they’re related to db systems and to Web search methods 
    - overview of the process of data mining and knowledge discovery 
        - discusses algorithms for association rule mining, classification, and clustering
        - and briefly covers other approaches and commercial tools 
    - data warehousing and OLAP concepts 


- Appendix A
    - a number of alternative diagrammatic notations for displaying a conceptual ER or ERR schema 

- Appendix B
    - some important physical parameters of disks

- Appendix C 
    - an overview of the QBE graphical query language 

- Appendix D, E 
    - cover legacy database systems, based on the hierarchical and network database models 
    > They’ve been used for more than thirty years as a basis <br>for many commercial db applications and transaction processing systems<br><br>
    We consider it important to 
    >> expose db management students to these legacy approaches,<br>
    >> so they can gain a better insight of how db tech has progressed.


    
