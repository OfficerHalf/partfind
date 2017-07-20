CREATE TABLE Part (
    ID INTEGER PRIMARY KEY,
    name TEXT UNIQUE NOT NULL,
    parent INTEGER,
    FOREIGN KEY (parent) REFERENCES Part(ID)
);

CREATE TABLE File (
    ID INTEGER PRIMARY KEY,
    fpath TEXT NOT NULL,
    fname TEXT NOT NULL,
    partID INTEGER NOT NULL,
    FOREIGN KEY (partID) REFERENCES Part(ID)
);