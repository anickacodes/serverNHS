\c clnstylez;
insert into
    category (service, description)
values
    ('kids', 'Ages 4 - 14'),
    (
        'Natural',
        'No extensions added. You can find loc services here'
    ),
    (
        'Extensions',
        'Braid extensions added to natural hair'
    ),
    ('Color', 'Lightener & deposit colors'),
    ('Products', 'Add-ons not found elsewhere');

-- kids services
insert into
    styles (
        category_id,
        name,
        price,
        description,
        image_url,
        duration
    )
values
    (
        1,
        'Natural Braided Updo',
        45,
        'Natural hair is braided into center with desired style. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        1,
        'Extensions Added Braided Updo',
        65,
        'Extensions are added onto natural hair and then braided into center with desired style. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '150 minutes'
    ),
    (
        1,
        'Loc Retwist',
        50,
        'After locs are washed, hair is moisturized with leave-in conditioner and/or selected oil based product. Then, row by row, hair is sectioned into pre-existing parts and retwisted in the existing direction.',
        'https://www.ADDURL.com',
        '80 minutes'
    ),
    (
        1,
        'Loc Retie',
        60,
        'After locs are washed, hair is moisturized with leave-in conditioner and/or selected oil based product. Then, row by row, hair is sectioned into pre-existing parts and interlocked in new cycle following previous direction.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        1,
        'Natural Cornrows 2-6',
        40,
        'Natural hair is braided into cornrows based on braid number selection and desired direction. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '40 minutes'
    ),
    (
        1,
        'Extensions Added Cornrows 2-6',
        60,
        'Extensions are braided into natural hair, which is then braided into cornrows based on braid number selection and desired direction. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '70 minutes'
    ),
    (
        1,
        'Shampoo Service',
        10,
        'Hair is shampooed at least twice. Then using conditioner, hair is detangled. Conditoner is then rinsed out and leave in conditioner is applied.',
        'https://www.ADDURL.com',
        '25 minutes'
    );

-- natural services
insert into
    styles (
        category_id,
        name,
        price,
        description,
        image_url,
        duration
    )
values
    (
        2,
        'Bantu Knots Squares - Small',
        65,
        'Hair is sectioned into small squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        2,
        'Bantu Knots Squares - Medium',
        60,
        'Hair is sectioned into medium squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '75 minutes'
    ),
    (
        2,
        'Bantu Knots Squares - Large',
        60,
        'Hair is sectioned into large squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '60 minutes'
    ),
    (
        2,
        'Individual Box Braids - Medium',
        75,
        'Hair is sectioned into medium squares. Each section is then braided from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        2,
        'Individual Box Braids - Large',
        60,
        'Hair is sectioned into large squares. Each section is then braided from root to tip.',
        'https://www.ADDURL.com',
        '80 minutes'
    ),
    (
        2,
        'Individual Box Twists - Small',
        75,
        'Hair is sectioned into medium squares or shape of choice. Each section is then 2-strand twisted from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        2,
        'Individual Box Twists - Medium',
        60,
        'Hair is sectioned into small squares or shape of choice. Each section is then 2-strand twisted from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        2,
        'Wig Foundation',
        35,
        'Hair is cornrowed into foundation of choice for a laid wig',
        'https://www.ADDURL.com',
        '45 minutes'
    );

 -- extension services

insert into
    styles (
        category_id,
        name,
        price,
        description,
        image_url,
        duration
    )
values
    (
        3,
        'Box Braids Regular Lowerback - Medium',
        170,
        'Natural hair is parted into desired grid shape. Extensions are then braided into hair up to elbow length.',
        'https://www.ADDURL.com',
        '320 minutes'
    ),
    (
        3,
        'Box Braids Regular Lowerback - Large',
        160,
        'Natural hair is parted into desired grid shape. Extensions are then braided into hair up to elbow length.',
        'https://www.ADDURL.com',
        '305 minutes'
    ),
    (
        3,
        'Box Braids Knotless Lowerback - Medium',
        185,
        'Natural hair is parted into desired grid shape. Natural hair starts the braid and then extensions are integrated to finish off braid down to elbow length.',
        'https://www.instagram.com/clnstylez_/p/CU5fyhmrKf0',
        '330 minutes'
    ),
    (
        3,
        'Box Braids Knotless Lowerback - Large',
        175,
        'Natural hair is parted into desired grid shape. Natural hair starts the braid and then extensions are integrated to finish off braid down to elbow length.',
        'https://www.ADDURL.com',
        '315 minutes'
    ),
    (
        3,
        'Box Twists Lowerback - Medium',
        165,
        'Natural hair is parted into desired grid shape. Extensions are first braided into hair 1 inch down and then the remainder is twisted down to elbow length.',
        'https://www.ADDURL.com',
        '260 minutes'
    ),
    (
        3,
        'Invisible Twists Lowerback - Medium',
        165,
        'Natural hair is parted into desired grid shape. Extensions are twisted into hair from root down to elbow length.',
        'https://www.ADDURL.com',
        '260 minutes'
    );

-- Color services
INSERT INTO
    styles (
        name,
        price,
        description,
        image_url,
        duration,
        category_id
    )
VALUES
    (
        'Single Process Lightener',
        50.00,
        'Lightens hair in a single process',
        'https://example.com/single_process_lightener.jpg',
        60,
        4
    ),
    (
        'Double Process Lightener',
        90.00,
        'Lightens hair in two processes for a more dramatic effect',
        'https://example.com/double_process_lightener.jpg',
        180,
        4
    ),
    (
        'Single Process Toner',
        45.00,
        'Tones hair in a single process',
        'https://example.com/single_process_toner.jpg',
        90,
        4
    ),
    (
        'Highlights Half Head',
        45.00,
        'Adds highlights to half of the head',
        'https://example.com/highlights_half_head.jpg',
        150,
        4
    ),
    (
        'Highlights Full Head',
        90.00,
        'Adds highlights to the full head',
        'https://example.com/highlights_full_head.jpg',
        180,
        4
    ),
    (
        'Full Head Single Color Deposit',
        55.00,
        'Deposits a single color to the full head',
        'https://example.com/full_head_single_color_deposit.jpg',
        70,
        4
    ),
    (
        'Half Head Single Color Deposit',
        35.00,
        'Deposits a single color to half of the head',
        'https://example.com/half_head_single_color_deposit.jpg',
        45,
        4
    ),
    (
        'Full Head Multi-Color Deposit',
        80.00,
        'Deposits multiple colors to the full head',
        'https://example.com/full_head_multi_color_deposit.jpg',
        90,
        4
    ),
    (
        'Half Head Multi-Color Deposit',
        30.00,
        'Deposits multiple colors to half of the head',
        'https://example.com/half_head_multi_color_deposit.jpg',
        50,
        4
    );

-- Products
INSERT INTO
    styles (
        name,
        price,
        description,
        image_url,
        duration,
        category_id
    )
VALUES
    (
        'Deep Conditioning Service',
        25.00,
        'Intensive deep conditioning treatment to repair and nourish hair',
        'https://example.com/deep_conditioning.jpg',
        25,
        5
    ),
    (
        'ACV Rinse',
        10.00,
        'Apple Cider Vinegar rinse for a healthy scalp and hair',
        'https://example.com/acv_rinse.jpg',
        5,
        5
    ),
    (
        'CLN Stylez Love Oil',
        10.00,
        'Nourishing oil for hair, 1oz bottle',
        'https://example.com/cln_love_oil.jpg',
        0,
        5
    );

INSERT INTO
    clients (
        name,
        address,
        contact_number,
        email,
        date_of_birth,
        preferred_contact_method,
        notes,
        style_id
    )
VALUES
    (
        'Alice Johnson',
        '123 Maple Street, Anytown, NY',
        '555-1234',
        'alice.johnson@example.com',
        '1985-06-15',
        'Email',
        'Prefers morning appointments',
        1
    ),
    (
        'Carol Davis',
        '789 Pine Road, Anytown, NY',
        '555-8765',
        'carol.davis@example.com',
        '1978-04-02',
        'Email',
        'Likes to schedule a month in advance',
        3
    );

-- INSERT INTO
--     bookings (
--         client_id,
--         style_id,
--         booking_date,
--         appointment_time,
--         status,
--         notes
--     )
-- VALUES
    -- (
    --     2,
    --     2,
    --     '2024-08-16',
    --     '14:30:00',
    --     'pending',
    --     'Regular client, prefers afternoon appointments'
    -- ),
    -- (
    --     3,
    --     3,
    --     '2024-08-17',
    --     '11:00:00',
    --     'confirmed',
    --     'Request for special treatment due to sensitive skin'
    -- );