CREATE TABLE cds_product (
        product_id                     INT(11),
		name							VARCHAR(255),
        Manufacturer                 VARCHAR(100),
        Short description            VARCHAR (255),
		Long description          	VARCHAR(255),
        image                   	VARCHAR(255),
        Price						VARCHAR(255),
        Review						VARCHAR(255),
		category_id					INT(11),
		quantity					VARCHAR(255),
        primary key(product_id)
        );
		
		
		CREATE TABLE cds_users (
        user_id                 VARCHAR(255) ,
        firstname 				VARCHAR(255),
        middlename				VARCHAR(255),
		lastname				VARCHAR(255),
		email        			VARCHAR(255),	
		password				VARCHAR(255),
		address					VARCHAR(255),	
		phone					VARCHAR(255),
		type					VARCHAR(255),
		primary key(user_id)
		);
		
		CREATE TABLE cds_category (
		id 						INT(11)
		name 					VARCHAR(255),
		details					TEXT,
		primary key(id)
		);
		
		CREATE TABLE cds_orders (
		order_id				INT(11),
		user_id					INT(11),
		shipping_address		VARCHAR(255),
		shipping_date			INT(11),
		shipping_status			VARCHAR(255),
		created_at 				INT(11),
		primary key(order_id)
		);
		
		CREATE TABLE cds_order_details (
		order_details_id 		INT(11),
		order_id				INT(11),
		product_id				INT(11),
		quantity				INT(11),
		primary key(order_details_id)
		);
		
		
		CREATE TABLE cds_sales (
		sales_id				INT(11),
		order_id				INT(11),
		sales_amount			INT(11),
		primary key(sales_id)
		);
