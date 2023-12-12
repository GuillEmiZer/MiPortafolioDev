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

user_list_ids = ["1", "2", "3"]
user_list_names = ["Guillermo E. Zerda", "Ricardo J. Ledezma", "Germán R. Zito"]
user_list_passwords = ["1234", "2345", "2356"]
user_list_tels = ["1123546787", "1123435678", "1133445566"]
user_list_emails = ["guillermozerda@hotmail.com.ar", "ricardo645@hotmail.com", "zitore@hotmail.com"]
user_list_roles = ["Administrador", "vendedor", "vendedor"]

product_list_skus = ["BARCO1001", "CHAZI1200", "LINBI5000"]
product_list_names = ["Barra de Cobre 12,7mm x 50cm", "Chapa de zinc 20x10cm 1mm", "Lingote de Bismuto 250grs"]
product_list_categories = ["Barras de Cobre", "Chapas de Zinc", "Lingote de bisutmo"]
product_list_prices = [25600.45, 10790.99, 15000]
product_list_stocks = [25, 12, 13]

sale_list_ids = []
sale_list_user_sellers = []
sale_list_clients = []
sale_list_products = []
sale_list_prices = []
sale_list_quantities = []
sale_list_totals = []
sale_list_states = []

startProgram = 1
while startProgram == 1:
    email_user = input("Por favor ingrese email: ")
    password = input("Por favor ingrese su contraseña: ")
    if fx.validation_user(user_list_emails, user_list_passwords, email_user, password) is True:
        option = " "
        while option != "5":
            print()
            user_index = fx.search_index(user_list_emails, email_user)
            print(f"{user_list_names[user_index]} [{user_list_roles[user_index]}]")
            fx.menu()
            print(" ")
            selection = input("Ingrese la opción deseada: ")
            print(" ")
            if selection == "1":
                print(f"{user_list_names[user_index]} [{user_list_roles[user_index]}]")
                fx.menu_sale()
                print(" ")
                selection_s = input("Ingrese la opción: ")
                print(" ")
            elif selection == "2":
                print(f"{user_list_names[user_index]} [{user_list_roles[user_index]}]")
                fx.clients_options(client_list_ids, client_list_names, client_list_dni_cuit,
                                   client_list_tels, client_list_emails)
            elif selection == "3":
                print(f"{user_list_names[user_index]} [{user_list_roles[user_index]}]")
                fx.products_options(product_list_skus, product_list_names, product_list_categories,
                                    product_list_prices, product_list_stocks)
            elif selection == "5":
                option = selection
    else:
        print()
        print(" -Email o Contraseña Incorrectos- ")
        print("¡Por Favor Ingrese nuevamente sus Datos!")
        print()
