-- crie um codigo stored  procedure onde limpa os dados da 
-- tabela pedidos onde o valor pago = não

-- chamando a stored procedure
call limpa_pedidos();

 --  criando a stored  procedure
create procedure limpa_pedidos()
begin
  set sql_safe_updates = 0;
  delete from pedidos where pago = 'nao'
end


-- criando um trigger (gatilhos);

create trigger gatilho_limpa_pedido
before start on estoque
for each row
  call limpa_pedidos();
--


