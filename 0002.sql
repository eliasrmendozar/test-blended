use codigoBlended;
# insert into nom_tabla (campo1, campo2, campo3...) value (val1, val2, val3,...)
# El numero de campos tiene que ser igual al numero de valores
insert into t_persona (per_nom, per_ape_pa, per_ape_ma, per_sexo) values ("Juan", "Ortiz", "Sihuinta", "Masculino"),  ("Rosa", "Sánchez", "Paredes", "Femenino");
select * from t_persona;
insert into t_categoria (cat_nom) values ("Verdura"), ("Fruta");
insert into t_product (prod_nom, cat_id) values ("Cebolla", 1), ("Manzana", 2), ("Tomate", 1), ("Plátano", 2), ("Pera", 2);
select * from t_product;
insert into t_categoria (cat_nom) values ("Carnes");
select * from t_product;
select * from t_categoria;
insert into t_per_pro (perpro_cant, per_id, prod_id) values (10, 1, 1), (2, 1, 2), (4, 2, 3); 
# Usar clausulas de condicion poara filtar datos
select* from t_per_pro where prod_id=1;
#decorar los campos
select perpro_cant as Cantidad, per_id as "Id de la Persona", prod_id as "Id del producto" from t_per_pro;
select * from t_product inner join t_categoria on t_product.cat_id=t_categoria.cat_id;
select * from t_product right join t_categoria on t_product.cat_id=t_categoria.cat_id;
insert into t_product (prod_nom) values ("Arverja");
insert into t_product (prod_nom) values ("Arverja");
insert into t_categoria (cat_nom) values ("Menestra");
#Desahabilitar el modo seguro para el servidos
set sql_safe_updates=0;
update t_product set cat_id=4 where prod_nom="Arverja";
select * from t_product left join t_categoria on t_product.cat_id=t_categoria.cat_id;
