		CREATE TABLE cds_category (
		category_id 			INT(11) not null,
		name 					VARCHAR(255),
		details					TEXT,
		primary key(category_id)
		);

		CREATE TABLE cds_product (
        product_id                  INT(11) not null,
		name						VARCHAR(255),
        Manufacturer                VARCHAR(100),
        Shortdescription            VARCHAR (255),
		Longdescription          	VARCHAR(255),
        image                   	VARCHAR(255),
        Price						VARCHAR(255),
        Review						VARCHAR(255),		
		quantity					VARCHAR(255),
        primary key(product_id)
        );		
		CREATE TABLE cds_category_products (
        category_id                INT(11)     not null references cds_category(category_id),
        product_list               INT(11)     not null references cds_product(product_id),
        primary key(category_id, product_list)
);
		CREATE TABLE cds_user (
			user_id VARCHAR(32) not null references dps_user(id),
			info LONG VARCHAR null,
			share_profile NUMERIC(1) null,
			subscriber NUMERIC(1) null,
			CHECK (share_profile in (0, 1)),
			primary key(user_id)
);
	
-- final tables
		CREATE TABLE cds_category_product(
    	 category_id    VARCHAR(32)  not null references cds_category(category_id),
     	 product_id   VARCHAR(32)  not null,
    	 primary key(category_id, product_id)
           );
		
		CREATE TABLE cds_orders (
		order_id				INT(11) references cds_product(product_id),
		user_id					INT(11) references dps_user(id),
		shipping_address		VARCHAR(255),
		shipping_date			INT(11),
		shipping_status			VARCHAR(255),
		created_at 				INT(11),
		quantity				INT(11),
		primary key(order_id)
		);
		
		CREATE TABLE cds_sales (
		sales_id				INT(11) references cds_orders(order_id),
		order_id				INT(11),
		sales_amount			INT(11),	
		primary key(sales_id)
		);
