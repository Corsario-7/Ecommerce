CREATE TABLE Reseñas (
  id SERIAL PRIMARY KEY,
  Producto_id INT,
  Cliente_id INT,
  Calificacion INT NOT NULL,
  Comentario TEXT,
  Fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (producto_id) REFERENCES productos(id),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE Ofertas (
  id SERIAL PRIMARY KEY,
  Nombre VARCHAR(100) NOT NULL,
  Descripcion TEXT,
  Descuento FLOAT NOT NULL,
  Fecha_de_inicio DATE NOT NULL,
  Fecha_de_fin DATE NOT NULL,
  Activa BOOLEAN DEFAULT TRUE,
  CONSTRAINT check_descuento_rango CHECK (Descuento >= 0 AND Descuento <= 100),
  CONSTRAINT check_fecha_fin_mayor CHECK (Fecha_de_fin > Fecha_de_inicio)
);