<div align="center">

# 🍴 Gestión de Restaurante

### Trabajo Práctico Integrador - Introducción a las Bases de Datos

</div>

---

## Integrantes - Grupo 3

<ul>
  <li>Mateo Sarubi</li>
  <li>Lucio Ramos</li>
  <li>Natasha Pérez</li>
</ul>

### Docentes

<ul>
  <li>Javier Vescio</li>
  <li>Marcelo Wolf</li>
</ul>

---

## Objetivo del Proyecto

El proyecto tiene como finalidad desarrollar una base de datos que permita reemplazar el manejo manual de la información por un sistema organizado y eficiente.

El sistema centraliza pedidos, mesas, mozos y productos para facilitar la operación diaria del restaurante, reducir errores y generar información útil para la toma de decisiones.

### Características principales

* Permite asociar un pedido a varias mesas para grupos grandes o eventos.
* Genera reportes de facturación, productos más vendidos y control de stock.
* Utiliza un modelo normalizado para evitar redundancia de datos.
* Garantiza la integridad de la información mediante claves y restricciones.

---

## Diseño del Modelo

### 1️⃣ Modelo Conceptual

Se identificaron las entidades principales del negocio y las relaciones necesarias para representar la operación de un restaurante.

### 2️⃣ Diagrama Entidad-Relación (DER)

El modelo final incorpora entidades asociativas para resolver relaciones de muchos a muchos y brindar mayor flexibilidad al sistema.

---

##  Documentación Técnica

###  Entidades Destacadas

#### pedido_mesa

Tabla asociativa que vincula mesas y pedidos.

* Clave primaria compuesta: `(id_mesa, id_pedido)`
* Permite asociar un pedido a varias mesas.
* Implementa la funcionalidad de unión de mesas.

####  detalle_pedido

Tabla encargada de relacionar pedidos y productos.

* Registra la cantidad solicitada.
* Almacena el precio_unitario histórico.
* Base para consultas de ventas y estadísticas.

#### categoria

Entidad independiente utilizada para organizar los productos.

* Evita redundancia de datos.
* Facilita consultas agrupadas por categoría.
* Mejora la escalabilidad del sistema.

#### mozo

Almacena la información del personal de atención.

* Incluye un campo de estado.
* Permite desactivar registros sin perder historial de ventas.

---

## Implementación SQL

### Script DDL

Incluye la creación de la base de datos y todas las tablas necesarias:

* Claves primarias.
* Claves foráneas.
* Restricciones de integridad.
* Tipos de datos adecuados para cada entidad.

### Script DML

Se cargaron datos de prueba para validar el funcionamiento del sistema:

* 5 categorías.
* 16 productos.
* 4 mozos.
* 10 mesas con distintas capacidades.

También se incluyen ejemplos de:

* INSERT
* UPDATE
* DELETE

---

## Consultas de Valor

El proyecto incorpora consultas orientadas a resolver necesidades reales del restaurante.

### Facturación por mozo

Obtiene la facturación total generada por cada mozo para facilitar el cálculo de comisiones.

### Control de stock y ventas

Permite identificar los productos más vendidos por categoría para planificar reposiciones.

### Pedidos grupales

Analiza pedidos asociados a múltiples mesas y muestra los casos de mayor facturación.

---

## Documentación

- 📄 [Documentación Técnica](docs/DocumentacionTecnica.pdf)
- 📊 [Modelo Conceptual](img/DC.png)
- 📈 [Diagrama Entidad-Relación](img/DER.png)
- 🗂️ [Archivo del Modelo Relacional (.mwb)](modeloRelacionalTPI.mwb)
- 💻 [Script DDL](Script%201%20-%20DDL.sql)
- 📥 [Script DML](Script%202%20-%20DML.sql)
- 🔎 [Consultas SQL](4%20-%20Consultas%20validación%20de%20datos.sql)

---

<div align="center">

 README elaborado en HTML con apoyo de herramientas de Inteligencia Artificial.

</div>
