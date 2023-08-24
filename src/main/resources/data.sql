-- INSERT
--     IGNORE INTO shop (
--         id,
--         name,
--         phone,
--         address,
--         description,
--         account,
--         password,
--         img,
--         is_delete,
--         is_disable,
--         create_time,
--         change_time
--     )
-- VALUES
--     (
--         1,
--         'valueA',
--         '123456789',
--         "address",
--         "description",
--         "account",
--         "password",
--         "img",
--         false,
--         false,
--         CURRENT_TIMESTAMP,
--         CURRENT_TIMESTAMP
--     ),
--     (
--         2,
--         'valueB',
--         '123456789',
--         "address",
--         "description",
--         "account",
--         "password",
--         "img",
--         false,
--         1,
--         CURRENT_TIMESTAMP,
--         CURRENT_TIMESTAMP
--     );
INSERT
    IGNORE INTO address (
        id,
        city,
        area,
        detail,
        create_time,
        update_time
    )
VALUES
    (
        1,
        '台南市',
        '東區',
        "detail",
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        '台北市',
        '信義區',
        "detail",
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        3,
        '台南市',
        '永康區',
        "中華路一段36巷5號",
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        4,
        '台南市',
        '永康區',
        "中山南路123巷9號",
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        5,
        '台南市',
        '永康區',
        "中山南路123巷111號",
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

INSERT
    IGNORE INTO file_data (
        id,
        content_type,
        file_name,
        original_file_name,
        suffix
    )
VALUES
    (
        1,
        "image/jpeg",
        "1691994708919221.jpg",
        "images.jpeg",
        ".jpg"
    ),
    (
        2,
        "image/png",
        "1691994708919221.jpg",
        "pngtree-halloween-ghost-jack-olantern-png-image_6127297.png",
        ".jpg"
    ),
    (
        3,
        "image/png",
        "1691922420438552.jpg",
        "pngtree-halloween-ghost-jack-olantern-png-image_6127298.png",
        ".jpg"
    );

INSERT
    IGNORE INTO user (
        id,
        name,
        phone,
        account,
        password,
        role,
        create_time,
        update_time
    )
VALUES
    (
        1,
        'valueA',
        '123456789',
        'admin',
        'password',
        'admin',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    ),
    (
        2,
        'valueB',
        '123456789',
        'user',
        'password',
        'user',
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP
    );

INSERT
    IGNORE INTO shop (
        id,
        user_id,
        name,
        phone,
        description,
        is_delete,
        is_disable,
        is_orderable,
        create_time,
        update_time,
        address_id,
        file_data
    )
VALUES
    (
        1,
        1,
        'valueA',
        '123456789',
        "description",
        false,
        false,
        false,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        1,
        1
    ),
    (
        2,
        1,
        'valueB',
        '123456789',
        "description",
        false,
        false,
        0,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        2,
        2
    ),
    (
        3,
        2,
        'valueC',
        '123456789',
        "description",
        false,
        false,
        0,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        3,
        null
    ),
    (
        4,
        2,
        'valueD',
        '123456789',
        "description",
        false,
        false,
        1,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        5,
        3
    ),
    (
        5,
        2,
        'valueD',
        '123456789',
        "description",
        false,
        false,
        0,
        CURRENT_TIMESTAMP,
        CURRENT_TIMESTAMP,
        4,
        3
    );

-- INSERT
--     IGNORE INTO shop (
--         id,
--         name,
--         phone,
--         description,
--         is_delete,
--         disable,
--         create_time,
--         update_time,
--         address,
--         file_data
--     )
-- VALUES
--     (
--         3,
--         'valueC',
--         '123456789',
--         "description",
--         false,
--         1,
--         CURRENT_TIMESTAMP,
--         CURRENT_TIMESTAMP,
--         2,
--         null
--     );
INSERT
    IGNORE INTO tab (id, name, shop_id)
VALUES
    (1, 'value1A', 1),
    (2, 'value1B', 1),
    (3, 'value1C', 1),
    (4, 'value1D', 1),
    (5, 'value1A', 2),
    (6, 'value1B', 2),
    (7, '3333333', 3),
    (8, 'value1C', 3),
    (9, 'value1D', 4),
    (10, '555555', 5);

INSERT
    IGNORE INTO product (id, name, prise, tab_id, is_delete, is_orderable)
VALUES
    (1, 'value1A', 10, 1, false, false),
    (2, 'value1B', 20, 1, false, false),
    (3, 'value1C', 30, 1, false, false),
    (4, 'value1D', 40, 1, false, false),
    (5, 'value1A', 10, 2, false, false),
    (6, 'value1B', 20, 2, false, false),
    (7, 'value1C', 30, 3, false, false),
    (8, 'value1C', 30, 3, false, false),
    (9, 'value1D', 40, 4, false, false),
    (10, 'value1D', 40, 5, false, false);

INSERT
    IGNORE INTO category (id, name)
VALUES
    (1, '便當'),
    (2, '火鍋'),
    (3, '炸雞'),
    (4, '手搖飲');

INSERT
    IGNORE INTO shop_category (shop_id, category_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (3, 2),
    (3, 3),
    (4, 2) ON DUPLICATE KEY
UPDATE
    shop_id =
VALUES
    (shop_id);

INSERT INTO
    love (user_id, shop_id)
VALUES
    (1, 1),
    (2, 1),
    (1, 4),
    (1, 2),
    (1, 3),
    (2, 2) ON DUPLICATE KEY
UPDATE
    user_id =
VALUES
    (user_id);

INSERT INTO
    cart (
        user_id,
        id,
        product_id,
        shop_id,
        department,
        order_username,
        qty,
        note
    )
VALUES
    (1, 1, 1, 1, '部門', 'userName', 1, 'AAAA'),
    (2, 2, 2, 1, '部門', 'userName', 5, 'AAAA'),
    (1, 3, 3, 1, '部門', 'userName', 5, 'AAAA'),
    (1, 4, 3, 1, '部門', 'userName', 2, 'AAAA'),
    (1, 5, 2, 1, '部門', 'userName', 1, 'AAAA'),
    (2, 6, 4, 1, '部門', 'userName', 3, 'AAAA') ON DUPLICATE KEY
UPDATE
    user_id =
VALUES
    (user_id);

-- INSERT INTO
--     category_product (category_id, product_id)
-- select
--     1,
--     1
-- where
--     not exists (
--         select
--             1
--         from
--             category_product
--         where
--             category_id = 1
--             and product_id = 1
--     );
-- INSERT INTO
--     category_product (category_id, product_id)
-- select
--     2,
--     2
-- where
--     not exists (
--         select
--             1
--         from
--             category_product
--         where
--             category_id = 2
--             and product_id = 2
--     );
-- INSERT INTO
--     category_product (category_id, product_id)
-- select
--     3,
--     1
-- where
--     not exists (
--         select
--             1
--         from
--             category_product
--         where
--             category_id = 3
--             and product_id = 1
--     );
-- INSERT INTO
--     category_product (category_id, product_id)
-- select
--     3,
--     2
-- where
--     not exists (
--         select
--             1
--         from
--             category_product
--         where
--             category_id = 3
--             and product_id = 2
--     );