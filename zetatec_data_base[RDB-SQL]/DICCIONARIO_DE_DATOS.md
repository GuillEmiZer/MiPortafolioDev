# DICCIONARIO DE DATOS - ESPECIFICACIONES DE CAMPO

Nota 1: Los campos se han agrupado en función de las tablas a las cuales pertenecen. 

Nota 2: Las Tablas que agrupan los campos fueron ordenadas alfabéticamente. 

Nota 3: Al final del documento se encuentra el metadiccionario. 

## C - CLIENTES

### **[ ID_CLI ]**

**General elements**
- **Field Name:** id_cli
- **Parent Table:** CLIENTES
- **Specification Type:** Unique
- **Source Specification:** -
- **Label:** ID Cliente
- **Shared By:** DIR_CLI, USUARIOS_CLI, PEDIDOS, DATOS_FAC_CLI
- **Alias(es):** -
- **Description:** -

**Phisical Elements**
- **Data Type:** int
- **Length:** -
- **Decimal Places:** -
- **Input Mask:** -
- **Display Format:** -
- **Character Support:** Numbers

**Logical Elements**
- **Key Type:** Primary
- **Key Structure:** Simple
- **Uniqueness:** Unique
- **Null Support:** No Nulls
- **Values Entered By:** System
- **Required Value:** -
- **Default Value:** - 
- **Range of Values:** -
- **Edit Rule:** Enter Now, Edits Not Allowed
- **Comparisons allowed on the same field:** -
- **Comparisons allowed on other fields:** -
- **Comparisons allowed on value expressions:** -
- **Operations allowed on the same field:** -
- **Operations allowed on other fields:** -
- **Operations allowed on value expressions:** -

### **[ NOMBRE_CLI ]**

**General elements**
- **Field Name:** nombre_cli
- **Parent Table:** CLIENTES
- **Specification Type:** Unique
- **Source Specification:** -
- **Label:** Nombre Cliente
- **Shared By:** -
- **Alias(es):** -
- **Description:** -

**Phisical Elements**
- **Data Type:** str
- **Length:** 50
- **Decimal Places:** -
- **Input Mask:** -
- **Display Format:** -
- **Character Support:** Letters

**Logical Elements**
- **Key Type:** No
- **Key Structure:** -
- **Uniqueness:** Non-unique
- **Null Support:** No Nulls
- **Values Entered By:** User
- **Required Value:** -
- **Default Value:** - 
- **Range of Values:** -
- **Edit Rule:** Enter Now, Edits Allowed
- **Comparisons allowed on the same field:** -
- **Comparisons allowed on other fields:** -
- **Comparisons allowed on value expressions:** -
- **Operations allowed on the same field:** -
- **Operations allowed on other fields:** -
- **Operations allowed on value expressions:** -

---------------------------------------------------

## METADICTIONARY

### A
- **Alias(es):** Nombre o conjunto de nombres alternativos que utilizamos para el campo en circunstancias muy puntuales.

### C
- **Character Support:** Tipo de caracteres que el usuario puede ingresar en el campo (Letters, Numbers, Keyboard, Especials).
- **Comparisons Allowed:** Indica los tipos de comparaciones que un usuario puede aplicar a los registros del campo al momento de recuperar información del mismo (All, =, >, >=, !=, <, <=).

### D
- **Data Type:** Tipo de Dato que se almacena en el campo.
- **Decimal Places:** Indica la cantidad de dígitos a la derecha del punto decimal que debe soportar el campo según requerimiento de la organización.
- **Default Value:** Valor por defecto que el usuario puede ingresar cuando no se permiten los valores nulos y todavía no se tiene un valor adecuado para el campo.
- **Description:** Interpretación completa de la naturaleza y el propósito de campo.
- **Display Format:** Apariencia que el valor del campo debe tener cuando se muestra a los usuarios finales.

### E
- **Edit Rule:** Este elemento designa en qué momento el usuario puede ingresar un valor en el campo y si puede modificarlo.
  - **Enter Now, Edits Allowed:** El usuario debe ingresar un valor para este campo cuando se crea un nuevo registro. Luego, puede editar dicho valor en cualquier momento.
  - **Enter Now, Edits Not Allowed:** El usuario debe ingresar un valor para este campo cuando se crea un nuevo registro. Luego, NO puede editar dicho valor.
  - **Enter Later, Edits Allowed:** El usuario tiene la opción de ingresar o no un valor para este campo cuando se crea un nuevo registro. Esto no necesariamente significa que el campo deba quedar nulo por tiempo indefinido; el usuario debe ingresar un valor para este campo en algún momento en el futuro cercano. Después de ingresarlo, puede modificarlo en cualquier momento.
  - **Enter Later, Edits Not Allowed:** El usuario tiene la opción de ingresar o no un valor para este campo cuando se crea un nuevo registro. Después de ingresarlo, no puede editarlo en absoluto.

### F
- **Field Name:** Conjunto mínimo de palabras que identifica al campo de manera única en toda la base de datos.

### G
- **General elements:** Conjunto de elementos que representan los atributos más fundamentales del campo.

### I
- **Input Mask:** Elemento que especifica la manera en que el usuario debe ingresar datos en el campo. Ejemplo “fecha” → dd/mm/aaaa.

### K
- **Key Structure:** Elemento que indica si el campo utilizado como clave es simple o si forma parte de una estructura de claves compuesta de más de un campo (Simple, Composite).
- **Key Type:** Este elemento determina si el campo es una clave o no, y en caso de serlo, qué tipo de clave es (No, Primary, Foreign, Alternat).

### L
- **Label:** Nombre alternativo y amigable para los usuarios finales de la base de datos que describe un campo de una manera más comprensible o contextual. Ejemplo: id_cli = "ID Cliente".
- **Length:** Este elemento especifica el número total de caracteres que un usuario puede ingresar para cualquier valor del campo.
- **Logical Elements:** Categoría que detalla las características de los valores dentro de un campo.

### N
- **Null Support:** Este elemento especifica si un campo acepta o no valores nulos (Nulls Allowed, No Nulls).

### O
- **Operations Allowed:** Este elemento especifica los tipos de operaciones que un usuario puede realizar con los valores del campo (All, +, -, x, ÷, concatenation).
  - **Same Field:** Operaciones que pueden realizarse con el valor del presente campo en relación a otros valores del mismo campo.
  - **Other Fields:** Operaciones que pueden realizarse con el valor del presente campo en relación a valores de otros campos de la tabla padre o de la base de datos en general.
  - **Value Expression:** Operaciones que pueden realizarse con el valor del presente campo en relación a una expresión de valor obtenida como resultado de algún cálculo (valor que no necesariamente se encuentra almacenado y que solo está disponible cuando se realiza algún cálculo de interés).

### P
- **Parent Table:** Tabla que incorpora en su estructura al presente campo.
- **Physical Elements:** Características generales de la estructura física del campo.

### R
- **Range of Values:** Este elemento especifica y delimita un rango o conjunto de valores válidos para el campo.
- **Required Value:** Este elemento indica si el usuario debe o no ingresar un valor específico al campo al momento de crear un nuevo registro.

### S
- **Shared By:** Este elemento indica los nombres de otras tablas que comparten este campo a través de relaciones. En este elemento solo se especifican las tablas que comparten el campo en formato de clave foránea.
- **Source Specification:** Elemento asignado a campos réplica, el cual indica el nombre del elemento original (plantilla/campo) de cual adquiere la mayoría de sus propiedades.
- **Specification Type:** Tipo de especificación asignada al campo, lo cual define su nivel de unicidad dentro de la base de datos.
  - **Unique:** Especificación que se asigna a todos los campos (puesto que son únicos en toda la estructura de la base de datos) excepto a aquellos campos que sirven de plantilla para otros campos o aquellos que participan como claves foráneas.
  - **Generic:** Especificación que se utiliza como plantilla para otras especificaciones de campos. Contiene los elementos generales de una característica que se utilizará en diferentes tablas. Ejemplo “nombre”, “teléfono”, “numero_documento”, otros. Al ser una plantilla genérica, no debería contener en su especificación información de: tabla principal, etiqueta, compartido por, Alias(es) y especificación de origen.
  - **Replica:** Especificación que se asigna a todos aquellos campos basados en campos genéricos (plantillas) o que sean campos que funcionen como claves foráneas.

### U
- **Uniqueness:** Este elemento indica si los valores del campo son únicos. Generalmente asignado a claves primarias salvo excepción fundamentada (Non-unique, Unique).

### V
- **Values Entered By:** Este elemento determina quien debe ingresar los valores en el presente campo, si el usuario o el sistema (User, System).