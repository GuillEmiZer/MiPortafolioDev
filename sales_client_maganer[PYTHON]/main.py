# HEAD -----------------------------------------------------------------------------------------------------------------
"""
[Sales Client Manager Program - Programa de Gestión de Ventas a Clientes]

Programa ejercitación para llevar registro de los productos vendidos a clientes - negocio.

Se requieren los siguientes datos
- Clientes: id, Nombre/Razón Social, CUIT/DNI, tel, email.
- Usuarios: id, nombre, contraseña, tel, email, rol.
- Productos: SKU, Nombre, Categoria, Precio, Stock.
- Ventas: id, vendedor, cliente, Producto, precio, Cantidad, total.
"""
import functions as fx

# BODY -----------------------------------------------------------------------------------------------------------------

client_list_ids = [230, 345]
client_list_names = ["Guillermo E. Zerda", "Natali E. Rivarola"]
client_list_dni_cuit = ["20362609705", "20372735446"]
client_list_tels = ["1122334466", "1122334455"]
client_list_emails = ["guillermozerda@hotmail.com.ar", "natali@hotmail.com"]

user_list_ids = []
user_list_names = []
user_list_passwords = []
user_list_tels = []
user_list_emails = []
user_list_roles = []

product_list_skus = []
product_list_names = []
product_list_categories = []
product_list_prices = []
product_list_stocks = []

sale_list_ids = []
sale_list_user_sellers = []
sale_list_clients = []
sale_list_products = []
sale_list_prices = []
sale_list_quantities = []
sale_list_totals = []
sale_list_states = []


option = " "
while option != "5":
    fx.menu()
    print(" ")
    selection = input("Ingrese la opción deseada: ")
    print(" ")
    if selection == "1":
        fx.menu_sale()
        print(" ")
        selection_s = input("Ingrese la opción: ")
        print(" ")
    elif selection == "2":
        fx.client_options(client_list_ids, client_list_names, client_list_dni_cuit,
                          client_list_tels, client_list_emails)
