CREATE TABLE players (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,

    name VARCHAR(50) NOT NULL
        CHECK (TRIM(name) <> ''),

    level INTEGER NOT NULL DEFAULT 1
        CHECK (level >= 1),

    experience INTEGER NOT NULL DEFAULT 0
        CHECK (experience >= 0),

    status VARCHAR(20) NOT NULL DEFAULT 'NOT_STARTED'
        CHECK (status IN (
            'NOT_STARTED',
            'IN_PROGRESS',
            'COMPLETED'
            )),

    current_mission_id BIGINT,

    current_step_index INTEGER NOT NULL DEFAULT 1
        CHECK (current_step_index >= 1),

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);