-- category data

insert into cds_category values(101,"Arthritis","A form of joint disorder that involves inflammation of one or more joints");

insert into cds_category values(102,"Blood Pressure","Pressure exerted by circulating blood upon the walls of blood vessels");

insert into cds_category values(103,"Digestion","Problems related to digestion");

insert into cds_category values(104,"For Kids","Kids diseases");

insert into cds_category values(105,"Hair Loss","Medicines for treating hair loss");

insert into cds_category values(106,"Heart Disease","Medicines for heart diseases");

insert into cds_category values(107,"Pain Relief","Medicines to cure pain");

insert into cds_category values(108,"Weight Loss","Medicines to lose weight");

-- product data
--category 101
insert into cds_product values(1001,"Matrix Remicade", "Good Sense","Risk of radiographic progression Matrix","An anti-TNF compound (trade name Remicade) consisting of an antibody directed against TNF.It is given intravenously at one-month to three-month intervals","images/matrix_remicade.jpg","$25.90","There are yet no reviews for this product",null);

insert into cds_product values(1002,"RoActemra", "Good Sense","20mg/ml sterile concentrate","RoActemra treats rheumatoid arthritis and certain types of arthritis in children","images/RoActemra.jpg","$25.90","There are yet no reviews for this product",null);

insert into cds_product values(2001,"Bendroflumethiazide", "Good Sense","28 tablets","Bendroflumethiazide (trade name Aprinox) is a thiazide diuretic used to treat hypertension","images/Bendroflumethiazide.jpg","$9.90","There are yet no reviews for this product",null);
--category 102
insert into cds_product values(2002,"Life Source Monitor", "Good Sense","Digital blood pressure monitor","A device used to measure blood pressure, composed of an inflatable cuff to restrict blood flow, and a mercury or mechanical manometer to measure the pressure","images/Life_Source_Monitor.jpg","$56.90","There are yet no reviews for this product",null);

insert into cds_product values(3001,"Liver Cleanse", "Good Sense","Total body cleansing system","It helps in cleansing the liver and provides relief from digestion problems","images/Liver_Cleanse.jpg","$17.90","There are yet no reviews for this product",null);

insert into cds_product values(3002,"Prilosec OTC Acid Reducer", "Vicks","42 tablets of 26.2 mg","It helps in reducing acidity and provides relief from digestion problems","images/Prilosec_OTC_Acid_Reducer.jpg","$24.90","There are yet no reviews for this product",null);

insert into cds_product values(4001,"Fever Be Koool", "Disney","Soft Gel Sheets for Kids. Buy 4 Be Kool items and save $2.","Medicine for children to cure fever","images/Fever_Be_Koool.jpg","$29.90","There are yet no reviews for this product",null);
--category 103
insert into cds_product values(4002,"Little Noses", "GNC","Saline/Spray drops, 6 ct","Little Noses saline spray/Drops provides soothing relief to dry, stuffy and allergies","images/Little_Noses.jpg","$20.90","There are yet no reviews for this product",null);

insert into cds_product values(5001,"Provillus for Men", "Good Sense","Men's formula capsules","Provillus is a 100% natural hair growth supplement created for both men and women by Ultra Herbal.","images/Provillus.jpg","$34.90","There are yet no reviews for this product",null);
--category 104
insert into cds_product values(5002,"Foliactive Spray and Tablets", "Good Sense","Anti-hair loss spray for men and women","Foliactive Pill is natural supplement with amino acids and vitamins that help strengthen the structure of the hair follicle ,stimulating hair growth","images/Foliactive_Spray_and_Tablets.jpg","$29.90","There are yet no reviews for this product",null);
--category 105
insert into cds_product values(6001,"Propranolol Tablets", "Good Sense","BP 40 mg, MA holder TEVA UK Ltd.","It is used to treat high blood pressure,pain in the chest caused by blockages in the arteries leading to the heart or high blood pressure caused by a tumour near a kidney","images/Propranolol_Tablets.jpg","$6.90","There are yet no reviews for this product",null);

insert into cds_product values(6002,"Lipitor 20 mg", "Good Sense","Atorvastatin Calcium 30 tabletes","LIPITOR is a synthetic lipid-lowering agent","images/lipitor.jpg","$6.90","There are yet no reviews for this product",null);

insert into cds_product values(7001,"Provailen", "Good Sense","For life without pain. Inflammation capsules, 60 in pack"," This medical product is an oral supplement that was critically formulated to relieve inflammation, pain or aching, and stiffness on joints associated with arthritis.","images/Provailen.jpg","$6.90","There are yet no reviews for this product",null);

insert into cds_product values(7002,"Panadol Extra", "Good Sense","32 tablets, Paracetamol plus Coffeine","Panadol Extra provides pain relief that is stronger than ordinary paracetamol","images/Panadol_Extra.jpg","$7.90","There are yet no reviews for this product",null);
--category 106
insert into cds_product values(8001,"Estrin D For Women", "Good Sense","The first diet pill specifically formulated to help women lose weight","With the Estrin-D Diet Pill, dietary supplementation for weight loss is as simple as possible.","images/EstrinD.jpg","$39.90","There are yet no reviews for this product",null);

insert into cds_product values(8002,"Slim Way", "Good Sense","Natural way to get slim. Dietary supplement 30 capsules","SlimWay is one of the most advanced weight loss systems on the market","images/Slim_way.jpg","$29.90","There are yet no reviews for this product",null);

--category 108

insert into cds_category_products values(101,1001);
insert into cds_category_products values(101,1002);
insert into cds_category_products values(101,2001);

insert into cds_category_products values(102,2002);
insert into cds_category_products values(102,3001);
insert into cds_category_products values(102,3002);
insert into cds_category_products values(102,4001);

insert into cds_category_products values(104,5002);

insert into cds_category_products values(105,6001);
insert into cds_category_products values(105,6002);
insert into cds_category_products values(105,7001);
insert into cds_category_products values(105,7002);

insert into cds_category_products values(106,8001);
insert into cds_category_products values(106,8002);

