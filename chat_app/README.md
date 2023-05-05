# Aplicación de Chat básica
Aplicación que simula el funcionamiento de un chat. Cuando se envía un mensaje terminado en "?" se responde con 
un gif y si o no.

Permite entender los conceptos básicos de flutter entre los que se destaca: 
* Uso de providers
* Uso de ListView.builder

## Estructura del Proyecto
<br/>

```
lib 
 └ config 
    └ helpers                              
        └ request.dart                     → Clase que se encarga de consumir la respuesta http de un recurso externo
    └ theme
        └ app_theme.dart                   → Clase que define el tema (colores, estilos, etc) de la aplicación  
 └ domain
    └ infrastructure                                                 
        └ models                            → Modelos del sistema 
            └ response_http.dart            → Clase que define los elementos de la respuesta http que se envía para los mensajes
 └ presentation 
    └ providers
        └ chat_provider.dart                → Clase que contiene los proveedores relacionados a la vista del chat
    └ screens
        └ chat
            └ chat_screen.dart              → Vista principal del proyecto
    └ widgets
        └ chat                              → Componentes específicos usados en la vista de chat     
            └ message_bubble.dart               → Componente del mensaje de chat (emisor)
            └ receiver_message_bubble.dart      → Componente del mensaje de chat (receptor)
        └ shared                            → Componentes que pueden ser usados en diferentes módulos de la aplicación 
            └ message_field_box.dart            → Componente del campo de texto para enviar mensajes
 └ main.dart                                → Clase principal de la aplicación
```

## Resultado final de la aplicación
<img src="https://user-images.githubusercontent.com/22090119/236520398-e598e806-3e74-4e81-b718-d3e799186e40.png" alt="image" width="200" height="400">