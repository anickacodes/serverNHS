\c clnstyles;

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

insert into
    kids_styles ( name, price, description, image_url, duration)
values
    (
        'Natural Braided Updo',
        45,
        'Natural hair is braided into center with desired style. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        'Extensions Added Braided Updo',
        65,
        'Extensions are added onto natural hair and then braided into center with desired style. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '150 minutes'
    ),
    (
        'Loc Retwist',
        50,
        'After locs are washed, hair is moisturized with leave-in conditioner and/or selected oil based product. Then, row by row, hair is sectioned into pre-existing parts and retwisted in the existing direction.',
        'https://www.ADDURL.com',
        '80 minutes'
    ),
    (
        'Loc Retie',
        60,
        'After locs are washed, hair is moisturized with leave-in conditioner and/or selected oil based product. Then, row by row, hair is sectioned into pre-existing parts and interlocked in new cycle following previous direction.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        'Natural Cornrows 2-6',
        40,
        'Natural hair is braided into cornrows based on braid number selection and desired direction. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '40 minutes'
    ),
    (
        'Extensions Added Cornrows 2-6',
        60,
        'Extensions are braided into natural hair, which is then braided into cornrows based on braid number selection and desired direction. Photo references are highly encouraged.',
        'https://www.ADDURL.com',
        '70 minutes'
    ),
    (
        'Shampoo Service',
        10,
        'Hair is shampooed at least twice. Then using conditioner, hair is detangled. Conditoner is then rinsed out and leave in conditioner is applied.',
        'https://www.ADDURL.com',
        '25 minutes'
    );

insert into
    natural_styles ( name, price, description, image_url, duration)
values
    (
        'Bantu Knots Squares - Small',
        65,
        'Hair is sectioned into small squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '90 minutes'
    ),
    (
        'Bantu Knots Squares - Medium',
        60,
        'Hair is sectioned into medium squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '75 minutes'
    ),
    (
        'Bantu Knots Squares - Large',
        60,
        'Hair is sectioned into large squares. Each section is then twisted according to natural hair pattern and around itself to create mini buns.',
        'https://www.ADDURL.com',
        '60 minutes'
    ),
    (
        'Individual Box Braids - Medium',
        75,
        'Hair is sectioned into medium squares. Each section is then braided from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        'Individual Box Braids - Large',
        60,
        'Hair is sectioned into large squares. Each section is then braided from root to tip.',
        'https://www.ADDURL.com',
        '80 minutes'
    ),
    (
        'Individual Box Twists - Small',
        75,
        'Hair is sectioned into medium squares or shape of choice. Each section is then 2-strand twisted from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        'Individual Box Twists - Medium',
        60,
        'Hair is sectioned into small squares or shape of choice. Each section is then 2-strand twisted from root to tip.',
        'https://www.ADDURL.com',
        '105 minutes'
    ),
    (
        'Wig Foundation',
        35,
        'Hair is cornrowed into foundation of choice for a laid wig',
        'https://www.ADDURL.com',
        '45 minutes'
    );

insert into
    extensions_styles (name, price, description, image_url, duration)
values
    (
        'Box Braids Regular Lowerback - Medium',
        170,
        'Natural hair is parted into desired grid shape. Extensions are then braided into hair up to elbow length.',
        'https://www.ADDURL.com',
        '320 minutes'
    ),
    (
        'Box Braids Regular Lowerback - Large',
        160,
        'Natural hair is parted into desired grid shape. Extensions are then braided into hair up to elbow length.',
        'https://www.ADDURL.com',
        '305 minutes'
    ),
    (
        'Box Braids Knotless Lowerback - Medium',
        185,
        'Natural hair is parted into desired grid shape. Natural hair starts the braid and then extensions are integrated to finish off braid down to elbow length.',
        'https://www.ADDURL.com',
        '330 minutes'
    ),
    (
        'Box Braids Knotless Lowerback - Large',
        175,
        'Natural hair is parted into desired grid shape. Natural hair starts the braid and then extensions are integrated to finish off braid down to elbow length.',
        'https://www.ADDURL.com',
        '315 minutes'
    ),
    (
        'Box Twists Lowerback - Medium',
        165,
        'Natural hair is parted into desired grid shape. Extensions are first braided into hair 1 inch down and then the remainder is twisted down to elbow length.',
        'https://www.ADDURL.com',
        '260 minutes'
    ),
    (
        'Invisible Twists Lowerback - Medium',
        165,
        'Natural hair is parted into desired grid shape. Extensions are twisted into hair from root down to elbow length.',
        'https://www.ADDURL.com',
        '260 minutes'
    );

-- https://www.instagram.com/clnstylez_/p/CU5fyhmrKf0/ knotless