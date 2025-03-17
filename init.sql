CREATE TABLE note(
    id SERIAL PRIMARY KEY,
    title VARCHAR NOT NULL,
    content VARCHAR
);

INSERT INTO note VALUES (1, 'Первая заметка', 'Эта ваша первая заметка, вы можете её редактировать или удалить в главном меню.');