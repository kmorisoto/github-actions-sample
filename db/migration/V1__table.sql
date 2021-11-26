CREATE TABLE companies
(
    id SERIAL
        CONSTRAINT companies_pk
            PRIMARY KEY
);

CREATE TABLE company_details
(
    id         SERIAL
        CONSTRAINT company_details_pk
            PRIMARY KEY,
    company_id INTEGER      NOT NULL
        CONSTRAINT company_details_companies_id_fk
            REFERENCES companies
            ON DELETE CASCADE,
    name       VARCHAR(100) NOT NULL
);
