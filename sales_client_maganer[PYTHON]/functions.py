
# Menu Function --------------------------------------------------------------------------------------------------------
def menu():
    print("MENÚ PRINCIPAL")
    print("1- Opciones de Venta")
    print("2- Opciones de Cliente")
    print("3- Opciones de Producto")
    print("4- Opciones de Admin")  # Admin
    print("5- Salir del Programa")


def menu_sale():
    print("MENÚ VENTA")
    print("1- Nueva Venta")
    print("2- Buscar Venta")
    print("3- Modificar Venta")  # Admin
    print("4- Eliminar Venta")  # Admin
    print("5- Salir")


def menu_client():
    print("MENÚ CLIENTE")
    print("1- Buscar Cliente")
    print("2- Agregar Cliente")
    print("3- Modificar Cliente")
    print("4- Eliminar Cliente")
    print("5- Salir")


def menu_product():
    print("MENÚ PRODUCTO")
    print("1- Buscar Producto")
    print("2- Agregar Producto")
    print("3- Modificar Producto")
    print("4- Eliminar Producto")
    print("5- Salir")


def menu_admin():
    print(" MENÚ ADMINISTRADOR")
    print("1- Nuevo Usuario")
    print("2- Buscar Usuario")
    print("3- Modificar Usuario")
    print("4- Eliminar Usuario")
    print("5- Salir")


def menu_modify_client():
    print("MODIFICAR")
    print("1- Modificar ID")
    print("2- Modificar Nombre")
    print("3- Modificar CUIT/DNI")
    print("4- Modificar Teléfono")
    print("5- Modificar email")
    print("6- Salir")


# Tools functions ------------------------------------------------------------------------------------------------------
def search_data(target_list, data):
    found = False
    for i in range(len(target_list)):
        if target_list[i] == data:
            found = True
            break
    return found


def search_index(target_list, data):
    for i in range(len(target_list)):
        if target_list[i] == data:
            return i
    return None


def validate_answer_yes_or_no(user_aswer):
    while not (user_aswer == "si" or user_aswer == "no"):
        print(f"¡{user_aswer} no es una respuesta válida!")
        print()
        user_aswer = input("¿Desea continuar en el Menú Cliente? (si/no): ").lower()
        print()
# Corroborar esta el uso de esta función para todas las preguntas si y no


def validate_str_to_int(user_aswer):
    while True:
        try:
            user_aswer_int = int(user_aswer)
            break
        except: #acá hay una shit para resolver (entre otras)
            print(f"¡El valor ingresado ({user_aswer}) no es valido!")
            print()
            user_aswer = input("Ingrese el cuit/dni del cliente: ")
    return user_aswer_int


def clean_str_list(string):
    new_str = ""
    for i in range(len(string)):
        if string[i] not in ['{', '}', "'"]:
            new_str += string[i]
    return new_str

# def usar serach_data para buscar si existe o no un dato repetido.
# def para tomar cuitdni y quitarle espacios, comas, puntos, etc, y dejar el dato limpio.

# Body Functions -------------------------------------------------------------------------------------------------------


# Search for a client by CUIT/DNI
def search_client_option(id_client_list, name_client_list, cuitdni_client_list, tel_client_list, email_client_list):
    continue_search_client = "si"
    while continue_search_client == "si":
        cuit_dni_client = input("Ingrese el cuit/dni del cliente: ")
        client_index = search_index(cuitdni_client_list, cuit_dni_client)
        if search_data(cuitdni_client_list, cuit_dni_client) is True:
            print()
            print(f"NOMBRE: {name_client_list[client_index]}")
            print(f"ID: {id_client_list[client_index]}")
            print(f"CUIT/DNI: {cuitdni_client_list[client_index]}")
            print(f"Tel: {tel_client_list[client_index]}")
            print(f"Email: {email_client_list[client_index]}")
            print()
            continue_search_client = input("¿Desea buscar otro cliente? (SI/NO): ").lower()
            validate_answer_yes_or_no(continue_search_client)
        else:
            print()
            print("¡Cliente Incorrecto o Inexistente!")
            continue_search_client = "no"
            print()


# Add a new client
def add_client_option(id_client_list, name_client_list, cuitdni_client_list, tel_client_list, email_client_list):
    add_customer = "si"
    while add_customer == "si":
        cuit_dni_client = input("Ingrese el cuit/dni del cliente: ")
        client_index = search_index(cuitdni_client_list, cuit_dni_client)
        if search_data(cuitdni_client_list, cuit_dni_client) is True:
            print()
            print("¡El cliente ya se encuentra registrado en la base de datos!")
            print()
            print(f"ID: {id_client_list[client_index]}")
            print(f"Nombre: {name_client_list[client_index]}")
            print(f"CUIT/DNI: {cuitdni_client_list[client_index]}")
            print(f"Tel: {tel_client_list[client_index]}")
            print(f"Email: {email_client_list[client_index]}")
            print()
            add_customer = "no"
        else:
            id_client = int(input("Ingrese el ID del Cliente: "))
            name_client = input("Ingrese el nombre del Cliente: ")
            tel_client = input("Ingrese el teléfono del Cliente: ")
            email_client = input("Ingrese el email del cliente: ")

            id_client_list.append(id_client)
            name_client_list.append(name_client)
            cuitdni_client_list.append(cuit_dni_client)
            tel_client_list.append(tel_client)
            email_client_list.append(email_client)
            print()
            print("¡Carga Exitosa!")
            print()
            add_customer = input("¿Desea agregar a otro cliente? (SI/NO): ")
            validate_answer_yes_or_no(add_customer)


def modify_client_option(id_client_list, name_client_list, cuitdni_client_list, tel_client_list, email_client_list):
    cuit_dni_client = input("Ingrese el cuit/dni del cliente que desea modificar: ")
    client_index = search_index(cuitdni_client_list, cuit_dni_client)
    if search_data(cuitdni_client_list, cuit_dni_client) is True:
        stay_modify_client = "si"
        while stay_modify_client == "si":
            print()
            print("CLIENTE:")
            print(clean_str_list(name_client_list[client_index]))
            print()
            menu_modify_client()
            print()
            selected_modify_option = input("Ingrese la opción: ")
            if selected_modify_option == "1":
                print()
                print("ID Actual:")
                print(id_client_list[client_index])
                print()
                enter_new_id = "no"
                new_id = None
                while not enter_new_id == "si":
                    new_id = int(input("Ingrese Nuevo ID: "))
                    enter_new_id = input(
                        f"¿Desea reemplazar (ID:{id_client_list[client_index]}) por (ID:{new_id})? "
                        f"(SI/NO): ").lower()
                if enter_new_id == "si":
                    id_client_list[client_index] = new_id
                    print()
                    print("¡Modificación realizada con éxito!")
                    print()
                    stay_modify_client = input(
                        f"¿Desea continuar modificando datos del cliente: {name_client_list[client_index]}? "
                        f"(SI/NO): ").lower()
                    print()
            elif selected_modify_option == "2":
                print()
                print("Nombre Actual:")
                print(name_client_list[client_index])
                print()
                enter_new_name = "no"
                new_name = None
                while not enter_new_name == "si":
                    new_name = input("Ingrese Nuevo Nombre: ")
                    enter_new_name = input(
                        f"¿Desea reemplazar (Nombre:{name_client_list[client_index]}) por (Nombre:{new_name})? "
                        f"(SI/NO): ").lower()
                if enter_new_name == "si":
                    name_client_list[client_index] = new_name
                    print()
                    print("¡Modificación realizada con éxito!")
                    print()
                    stay_modify_client = input(
                        f"¿Desea continuar modificando datos del cliente: {name_client_list[client_index]}? "
                        f"(SI/NO): ").lower()
                    print()
            elif selected_modify_option == "3":
                print()
                print("CUIT/DNI ACTUAL:")
                print(cuitdni_client_list[client_index])
                print()
                enter_new_cuit_dni = "no"
                new_cuit_dni = None
                while not enter_new_cuit_dni == "si":
                    new_cuit_dni = input("Ingrese Nuevo CUIT/DNI: ")
                    enter_new_cuit_dni = input(
                        f"¿Desea reemplazar (CUIT/DNI:{cuitdni_client_list[client_index]}) "
                        f"por (CUIT/DNI:{new_cuit_dni})? (SI/NO): ").lower()
                if enter_new_cuit_dni == "si":
                    cuitdni_client_list[client_index] = new_cuit_dni
                    print()
                    print("¡Modificación realizada con éxito!")
                    print()
                    stay_modify_client = input(
                        f"¿Desea continuar modificando datos del cliente: {name_client_list[client_index]}? "
                        f"(SI/NO): ").lower()
                    print()
            elif selected_modify_option == "4":
                print()
                print("Teléfono Actual:")
                print(tel_client_list[client_index])
                print()
                enter_new_tel = "no"
                new_tel = None
                while not enter_new_tel == "si":
                    new_tel = input("Ingrese nuevo número de teléfono: ")
                    enter_new_tel = input(
                        f"¿Desea reemplazar (Tel:{tel_client_list[client_index]}) por (Tel:{new_tel})? "
                        f"(SI/NO): ").lower()
                if enter_new_tel == "si":
                    tel_client_list[client_index] = new_tel
                    print()
                    print("¡Modificación realizada con éxito!")
                    print()
                    stay_modify_client = input(
                        f"¿Desea continuar modificando datos del cliente: {name_client_list[client_index]}? "
                        f"(SI/NO): ").lower()
                    print()
            elif selected_modify_option == "5":
                print()
                print("Email Actual:")
                print(email_client_list[client_index])
                print()
                enter_new_email = "no"
                new_email = None
                while not enter_new_email == "si":
                    new_email = input("Ingrese el nuevo Email: ")
                    enter_new_email = input(
                        f"¿Desea reemplazar [Email:{email_client_list[client_index]}] por [Email:{new_email}]? "
                        f"(SI/NO): ").lower()
                if enter_new_email == "si":
                    email_client_list[client_index] = new_email
                    print()
                    print("¡Modificación realizada con éxito!")
                    print()
                    stay_modify_client = input(
                        f"¿Desea continuar modificando datos del cliente: {name_client_list[client_index]}? "
                        f"(SI/NO): ").lower()
                    print()
            elif selected_modify_option == "6":
                stay_modify_client = "no"
                print()
    else:
        print()
        print("¡El cliente ingresado es incorrecto o inexistente!")
        print()


def delete_client_option(id_client_list, name_client_list, cuitdni_client_list, tel_client_list, email_client_list):
    delete_loop = "si"
    while not delete_loop == "no":
        cuit_dni_client = input("Ingrese el cuit/dni del cliente que desea Eliminar: ")
        client_index = search_index(cuitdni_client_list, cuit_dni_client)
        print()
        print("DATOS ALMACENADOS")
        print(f"NOMBRE: {name_client_list[client_index]}")
        print(f"ID: {id_client_list[client_index]}")
        print(f"CUIT/DNI: {cuitdni_client_list[client_index]}")
        print(f"TEL: {tel_client_list[client_index]}")
        print(f"EMAIL: {email_client_list[client_index]}")
        print()
        delete_client_safe = input(
            f"¿Está seguro que desea eliminar los datos de [{name_client_list[client_index]}]?: ")
        validate_answer_yes_or_no(delete_client_safe)
        if delete_client_safe == "si":
            print("CONFIRMACIÓN DE SEGURIDAD - LA SIGUIENTE ACCIÓN NO TIENE RETORNO")
            print()
            delete_client_true = input(f"¿ELIMINAR DATOS DE {name_client_list[client_index]}? (SI/NO): ")
            validate_answer_yes_or_no(delete_client_true)
            if delete_client_true == "si":
                id_client_list.pop(client_index)
                name_client_list.pop(client_index)
                cuitdni_client_list.pop(client_index)
                tel_client_list.pop(client_index)
                email_client_list.pop(client_index)
                print("¡Datos Eliminados con Éxito!")
                print()
                delete_loop = "no"
            else:
                delete_loop = "no"
        else:
            delete_loop = "no"


def client_options(id_client_list, name_client_list, cuitdni_client_list, tel_client_list, email_client_list):
    stay_in_menu = "si"
    while stay_in_menu == "si":
        menu_client()
        print(" ")
        selection_c = input("Ingrese la opción: ")
        print(" ")
        if selection_c == "1":
            search_client_option(id_client_list, name_client_list, cuitdni_client_list,
                                 tel_client_list, email_client_list)
        elif selection_c == "2":
            add_client_option(id_client_list, name_client_list, cuitdni_client_list,
                              tel_client_list, email_client_list)
        elif selection_c == "3":
            modify_client_option(id_client_list, name_client_list, cuitdni_client_list,
                                 tel_client_list, email_client_list)
        elif selection_c == "4":
            delete_client_option(id_client_list, name_client_list, cuitdni_client_list,
                                 tel_client_list, email_client_list)
        elif selection_c == "5":
            stay_in_menu = "no"
        else:
            print(f"¡La opción ingresada [{selection_c}] es incorrecta!")
            print(f"Por Favor ingrese una opción válida")
            print()


"""
CONTINUAR POR: Modularizar la opción CLientes - Menú Clientes   

PENDIENTES
- Validación para CUIT/DNI. STR solo numéricos. 
- Add and Modify cliente. Asegurarnos de no repetir ID y CUIT. 
- Considera pedir contraseña de administrador para eliminar registros. 
"""
