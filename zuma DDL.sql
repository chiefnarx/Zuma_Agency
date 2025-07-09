CREATE TABLE zuma.location_dim (
    location_id SERIAL PRIMARY KEY,
    formattedAddress TEXT,
    addressLine1 TEXT NOT NULL,
    addressLine2 TEXT,
    county TEXT,
    zipCode TEXT,
    city TEXT,
    state TEXT,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6)
);


CREATE TABLE zuma.features_dim (
    features_id SERIAL PRIMARY KEY,
    propertyType TEXT,
    bedrooms INT,
    bathrooms DECIMAL,
    squareFootage INT,
    features JSONB,
    lotSize DECIMAL,
    hoa TEXT
);


CREATE TABLE zuma.owner_dim (
    owner_id SERIAL PRIMARY KEY,
    owner TEXT
);


CREATE TABLE zuma.property_fact (
    id TEXT PRIMARY KEY,
    location_id INT,
    features_id INT,
    owner_id INT,
    yearBuilt INT,
    assessorID TEXT,
    taxAssessments TEXT,
    propertyTaxes TEXT,
    legalDescription TEXT,
    subdivision TEXT,
    ownerOccupied BOOLEAN,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(location_id) REFERENCES zuma.location_dim(location_id),
    FOREIGN KEY(features_id) REFERENCES zuma.features_dim(features_id),
    FOREIGN KEY(owner_id) REFERENCES zuma.owner_dim(owner_id)
);
