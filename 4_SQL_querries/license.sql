SET search_path TO "df_project_group_110";

CREATE TABLE License (
    License_ID SERIAL PRIMARY KEY,
    CATEGORY VARCHAR(50)
) ;

INSERT INTO License (CATEGORY)
VALUES
    ('Category A'),
    ('Category B'),
    ('Category C') 