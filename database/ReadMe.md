# Индексы для PostgreSQL

   tablename   |      indexname       |                                     indexdef
---------------+----------------------+----------------------------------------------------------------------------------
 order_product | idx_order_product_id | CREATE INDEX idx_order_product_id ON public.order_product USING btree (order_id)
 order_product | idx_product_id       | CREATE INDEX idx_product_id ON public.order_product USING btree (product_id)
 orders        | idx_order_id         | CREATE INDEX idx_order_id ON public.orders USING btree (id)
 product       | idx_id               | CREATE INDEX idx_id ON public.product USING btree (id)

