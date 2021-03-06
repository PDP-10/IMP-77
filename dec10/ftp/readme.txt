This save set contains:

FTP.EXE       - queueing utility
FTXSPL.EXE    - spooling utility
NETWRK.ADD    - a sample network configuration file
FTP.MEM       - definition of what is implemented
FTP.HLP       - help file
3A55B.MEM     - user manual
FTPOPR.MEM    - operator manual
FTP.COM       - source files in compressed form
CMPRES.EXE    - file compressor program

FTP comprises a queueing program called FTP and a spooler called FTXSPL
both are independent of GALAXY except where line-printer spooling is queued.


Both FTP and FTXSPL should be mounted on the system area and be given
as JACCT privileges. FTP should be implemented as a command in the Monitor,
so that FTP is run at it's CCL entry point and can be run without being logged 
in, in order to examine the queues.

NETWRK.ADD should also be mounted on SYS:.

The area used for queueing requests is STD:[3,3].

It will be necessary to build a local version of SYS:NETWRK.ADD before running
the system but the example file given should be a guide. The form of
the file is sets of three lines as follows:

M/C TITLE
TRANSPORT SERVICE ADDRESS
M/C TYPE

The m/c types determine what the FTP program prompts the user for and what
mode of transfer is used. The currently supported m/c types are:-
DEC10       ;a DEC10 running either an FTP77 or FTP80 implementation
GEC         ;an ICF GEC MUM
PRIME       ;an ICF PRIME MUM
IBM         ;the Rutherford IBMs
DLGP        ;the Daresbury Laboratory protocol converter
ARPA        ;the UCL ARPA gateway
EMAS        ;the Edinburgh Multi-Access System

The .EXE files should run as they are but to get the sources from their
compressed form do:
RU CMPRES
*FTP.COM

They are built by:

.LOAD @FTP
.SSAVE
.LOAD @FTXSPL
.SSAVE

If you have any problems please phone me on 031-667-1081 ext 2661.

Keith Farvis.
