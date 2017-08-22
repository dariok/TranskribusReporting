update transkribusimport.documents
set createdfromtimestamp =
  to_timestamp(substring(title from 3), 'YYYYMMDD')
where docid > 19200;
\q
