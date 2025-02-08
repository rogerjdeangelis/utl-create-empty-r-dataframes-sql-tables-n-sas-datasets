%let pgm=utl-create-empty-r-dataframes-sql-tables-n-sas-datasets;

Create empty r dataframes sql tables n sas datasets

  SOLUTIONS

     1 r sqldf empty table
     2 r empty defined dataframe
     3 r empty undefined dataframe
     4 sas empty datasets (see)
       https://tinyurl.com/46za5288
       https://github.com/rogerjdeangelis/utl-the-four-types-of-empty-sas-tables

github
https://tinyurl.com/33y7rczz
https://github.com/rogerjdeangelis/utl-create-empty-r-dataframes-sql-tables-n-sas-datasets

stackoverflow
https://tinyurl.com/5e9etxv4
https://stackoverflow.com/questions/10689055/create-an-empty-data-frame


/**************************************************************************************************************************/
/*                    |                                                |                                                  */
/*  INPUT             |            PROCESS                             |            OUTPUT                                */
/*  =====             |            ========                            |           ======                                 */
/*                    |                                                |                                                  */
/*  INTERNAL          |        1  R SQLDF EMPTY TABLE                  |    > want                                        */
/*                    |        ======================                  |    [1] id   name                                 */
/*                    |                                                |    <0 rows> (or 0-length row.names)              */
/*                    |        %utlfkil(d:/sql/havsql)                 |                                                  */
/*                    |                                                |                                                  */
/*                    |        %utl_rbeginx;                           |                                                  */
/*                    |        parmcards4;                             |                                                  */
/*                    |        library(sqldf)                          |                                                  */
/*                    |                                                |                                                  */
/*                    |        sqldf("attach 'd:/sql/havsql' as new")  |                                                  */
/*                    |                                                |                                                  */
/*                    |        sqldf("                                 |                                                  */
/*                    |              CREATE                            |                                                  */
/*                    |               TABLE empty_table                |                                                  */
/*                    |              (id INTEGER, name TEXT)"          |                                                  */
/*                    |             ,dbname='d:/sql/havsql')           |                                                  */
/*                    |                                                |                                                  */
/*                    |        want<-sqldf("                           |                                                  */
/*                    |             select                             |                                                  */
/*                    |               *                                |                                                  */
/*                    |             from                               |                                                  */
/*                    |               empty_table"                     |                                                  */
/*                    |            ,dbname='d:/sql/havsql')            |                                                  */
/*                    |        want                                    |                                                  */
/*                    |        ;;;;                                    |                                                  */
/*                    |        %utl_rendx;                             |                                                  */
/*                    |                                                |                                                  */
/*                    |---------------------------------------------------------------------------------------------------*/
/*                    |                                                |                                                  */
/*                    |        2 R EMPTY DEFINED DATAFRAME             |    > str(empty_defined)                          */
/*                    |        ===========================             |                                                  */
/*                    |                                                |     dataframe: 0 obs 5 variables                 */
/*                    |        %utl_rbeginx;                           |     $ Doubles   : num                            */
/*                    |        parmcards4;                             |     $ Ints      : int                            */
/*                    |                                                |     $ Factors   : Factor w/ 0 levels:            */
/*                    |        empty_defined <- data.frame(            |     $ Logicals  : logi                           */
/*                    |         Doubles=double(),                      |     $ Characters: chr                            */
/*                    |         Ints=integer(),                        |                                                  */
/*                    |         Factors=factor(),                      |                                                  */
/*                    |         Logicals=logical(),                    |                                                  */
/*                    |         Characters=character(),                |                                                  */
/*                    |         stringsAsFactors=FALSE                 |                                                  */
/*                    |         )                                      |                                                  */
/*                    |                                                |                                                  */
/*                    |        str(empty_defined)                      |                                                  */
/*                    |                                                |                                                  */
/*                    |        ;;;;                                    |                                                  */
/*                    |        %utl_rendx;                             |                                                  */
/*                    |                                                |                                                  */
/*                    |---------------------------------------------------------------------------------------------------*/
/*                    |                                                |                                                  */
/*                    |        3  R EMPTY UNDEFINED DATAFRAME          |    > str(empty_undefined)                        */
/*                    |        usefull conditional defining later      |                                                  */
/*                    |        ==================================      |      data.frame: 0 obs 0 variables               */
/*                    |                                                |                                                  */
/*                    |        %utl_rbeginx;                           |                                                  */
/*                    |        parmcards4;                             |                                                  */
/*                    |                                                |                                                  */
/*                    |        empty_undefined<-data.frame();          |                                                  */
/*                    |        str(empty_undefined)                    |                                                  */
/*                    |                                                |                                                  */
/*                    |        ;;;;                                    |                                                  */
/*                    |        %utl_rendx;                             |                                                  */
/*                    |                                                |                                                  */
/*                    |---------------------------------------------------------------------------------------------------*/
/*                    |                                                |                                                  */
/*                    |        4  SAS EMPTY DATASETS (SEE)             |    https://tinyurl.com/46za5288                  */
/*                    |        ===========================             |                                                  */
/*                    |                                                |                                                  */
/**************************************************************************************************************************/

/*                   _     _       _                        _
(_)_ __  _ __  _   _| |_  (_)_ __ | |_ ___ _ __ _ __   __ _| |
| | `_ \| `_ \| | | | __| | | `_ \| __/ _ \ `__| `_ \ / _` | |
| | | | | |_) | |_| | |_  | | | | | ||  __/ |  | | | | (_| | |
|_|_| |_| .__/ \__,_|\__| |_|_| |_|\__\___|_|  |_| |_|\__,_|_|
        |_|
*/

/*                    _     _  __                        _          _        _     _
/ |  _ __   ___  __ _| | __| |/ _|   ___ _ __ ___  _ __ | |_ _   _ | |_ __ _| |__ | | ___
| | | `__| / __|/ _` | |/ _` | |_   / _ \ `_ ` _ \| `_ \| __| | | || __/ _` | `_ \| |/ _ \
| | | |    \__ \ (_| | | (_| |  _| |  __/ | | | | | |_) | |_| |_| || || (_| | |_) | |  __/
|_| |_|    |___/\__, |_|\__,_|_|    \___|_| |_| |_| .__/ \__|\__, | \__\__,_|_.__/|_|\___|
                   |_|                            |_|        |___/
*/

%utlfkil(d:/sql/havsql)

%utl_rbeginx;
parmcards4;
library(sqldf)

sqldf("attach 'd:/sql/havsql' as new")

sqldf("
      CREATE
       TABLE empty_table
      (id INTEGER, name TEXT)"
     ,dbname='d:/sql/havsql')

want<-sqldf("
     select
       *
     from
       empty_table"
    ,dbname='d:/sql/havsql')
want
;;;;
%utl_rendx;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* > want                                                                                                                 */
/* [1] id   name                                                                                                          */
/* <0 rows> (or 0-length row.names)                                                                                       */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___                                 _              _       __ _                _
|___ \    _ __    ___ _ __ ___  _ __ | |_ _   _   __| | ___ / _(_)_ __   ___  __| |
  __) |  | `__|  / _ \ `_ ` _ \| `_ \| __| | | | / _` |/ _ \ |_| | `_ \ / _ \/ _` |
 / __/   | |    |  __/ | | | | | |_) | |_| |_| || (_| |  __/  _| | | | |  __/ (_| |
|_____|  |_|     \___|_| |_| |_| .__/ \__|\__, | \__,_|\___|_| |_|_| |_|\___|\__,_|
                               |_|        |___/
*/

%utl_rbeginx;
parmcards4;

empty_defined <- data.frame(
 Doubles=double(),
 Ints=integer(),
 Factors=factor(),
 Logicals=logical(),
 Characters=character(),
 stringsAsFactors=FALSE
 )

str(empty_defined)

;;;;
%utl_rendx;

/**************************************************************************************************************************/
/*                                                                                                                        */
/* > str(empty_defined)                                                                                                   */
/*                                                                                                                        */
/*  dataframe: 0 obs 5 variables                                                                                          */
/*  $ Doubles   : num                                                                                                     */
/*  $ Ints      : int                                                                                                     */
/*  $ Factors   : Factor w/ 0 levels:                                                                                     */
/*  $ Logicals  : logi                                                                                                    */
/*  $ Characters: chr                                                                                                     */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*____                                _                          _       __ _                _
|___ /    _ __    ___ _ __ ___  _ __ | |_ _   _  _   _ _ __   __| | ___ / _(_)_ __   ___  __| |
  |_ \   | `__|  / _ \ `_ ` _ \| `_ \| __| | | || | | | `_ \ / _` |/ _ \ |_| | `_ \ / _ \/ _` |
 ___) |  | |    |  __/ | | | | | |_) | |_| |_| || |_| | | | | (_| |  __/  _| | | | |  __/ (_| |
|____/   |_|     \___|_| |_| |_| .__/ \__|\__, | \__,_|_| |_|\__,_|\___|_| |_|_| |_|\___|\__,_|
                               |_|        |___/
*/

3  R EMPTY UNDEFINED DATAFRAME
usefull conditional defining later
==================================

%utl_rbeginx;
parmcards4;

empty_undefined<-data.frame();
str(empty_undefined)

;;;;
%utl_rendx;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  > str(empty_undefined)                                                                                                */
/*                                                                                                                        */
/*    data.frame: 0 obs 0 variables                                                                                       */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*  _                                          _              _       _                 _
| || |    ___  __ _ ___    ___ _ __ ___  _ __ | |_ _   _   __| | __ _| |_ __ _ ___  ___| |_ ___
| || |_  / __|/ _` / __|  / _ \ `_ ` _ \| `_ \| __| | | | / _` |/ _` | __/ _` / __|/ _ \ __/ __|
|__   _| \__ \ (_| \__ \ |  __/ | | | | | |_) | |_| |_| || (_| | (_| | || (_| \__ \  __/ |_\__ \
   |_|   |___/\__,_|___/  \___|_| |_| |_| .__/ \__|\__, | \__,_|\__,_|\__\__,_|___/\___|\__|___/
                                        |_|        |___/
*/

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  https://tinyurl.com/46za5288                                                                                          */
/*  https://github.com/rogerjdeangelis/utl-the-four-types-of-empty-sas-tables                                             */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
