CREATE TABLE missions (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    order_number INTEGER NOT NULL UNIQUE
        CHECK (order_number >= 1),

    area_name VARCHAR(100) NOT NULL,
    title VARCHAR(150) NOT NULL,
    icon VARCHAR(100) NOT NULL,

    description VARCHAR(255) NOT NULL,
    objective TEXT NOT NULL,

    status VARCHAR(20) NOT NULL DEFAULT 'DRAFT'
        CHECK ( status IN (
            'DRAFT',
            'PUBLISHED',
            'ARCHIVED'
            ) ),

    xp_reward INTEGER NOT NULL DEFAULT 0
        CHECK(xp_reward >= 0),
);