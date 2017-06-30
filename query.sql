select '{ "data": ' || array_to_json(array_agg(row_to_json(t))) || '}'
    from (
      select d.docid as id
        , d.title as Titel
        , d.createdfromtimestamp::date as Datum
        , p.pagenr as Seite        
        , p.transcribedstatus as status
        , p.nroftranscribedregions as regions
        , p.nroftranscribedlines as lines
        , p.nroftranscribedwords as words 
        from transkribusimport.documents d JOIN transkribusimport.pages p using (docid)
    ) t;
