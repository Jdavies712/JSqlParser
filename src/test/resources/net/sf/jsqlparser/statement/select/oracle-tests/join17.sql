---
-- #%L
-- JSQLParser library
-- %%
-- Copyright (C) 2004 - 2019 JSQLParser
-- %%
-- Dual licensed under GNU LGPL 2.1 or Apache License 2.0
-- #L%
---
select *
from hdr a
inner join sh s
inner join ca c
on c.id = s.id
on a.va = s.va

--@SUCCESSFULLY_PARSED_AND_DEPARSED first on Aug 14, 2021 9:00:57 PM
--@FAILURE: select*from hdr ainner join sh sinner join ca c on c.id=s.id on a.va=s.va recorded first on 27-Mar-2024, 11:47:07 pm