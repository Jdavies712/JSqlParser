---
-- #%L
-- JSQLParser library
-- %%
-- Copyright (C) 2004 - 2019 JSQLParser
-- %%
-- Dual licensed under GNU LGPL 2.1 or Apache License 2.0
-- #L%
---
select d1.*, d2.* from dual d1 cross join dual d2

--@SUCCESSFULLY_PARSED_AND_DEPARSED first on Aug 3, 2021, 7:20:08 AM
--@FAILURE: select d1.*,d2.*from dual d1cross join dual d2 recorded first on 27-Mar-2024, 11:47:07 pm