Caso de estudio
---

La aplicación implementa el backend de una aplicacion de _**Procesamiento de ordenes de compra**_. Los requerimientos para la aplicacion son los siguientes.

1.Todas las ordenes necesitan ser **guardadas en el disco** con fines de auditoría.  
2.Las **ordenes menores** (definidas como aquellas menores a $1000) son **aprovadas automáticamente**.  
3.Las **ordenes grandes** (definidas como aquelas que son igual o mayor a $1000) deberan pasar por un **proceso de validación y aprobación**.  
+ La **tarjeta de crédito** del cliente debe ser **validada**.
+ Si la orden es **mayor o igual a $5000.00** un representante de servicio al cliente debe **manualmente aprovar la orden**.  

4.El estado de los pedidos aprobados se establecerá como _"**aprobado**"_.  
5.El estado de ordenes grandes con una tarjeta de crédito invalida se establecerá como _"**tarjetaCreditoInvalida**"_.  
6.El estatus de las ordenes grandes rechazadas por el representante del servicio al cliente se establecerá como _"**rechazada**"_.  
7.Todas las ordénes aprovadas son enviadas al servicio de "**Seguimiento de pedidos**" el cual usa el monto de la orden para determinar la compañia de envío para la orden.  
+ Ordenes **debajo** de **$1,000.00** se envia a través de **_USPS_**.  
+ Ordenes **mayores o igual** a **$1,000.00** y **menores** a **$5,000.00** se envían a través de **_UPS_**.  
+ Ordenes mayores a **$5,000.00** se envían a través de **_FedEx_**.  


1. Validación de tarjeta de crédito
---

Componentes SOA requeridos:
+ Oracle JCA Adapters : SOAP Adapter, DB Adapter.
+ Oracle Mediator.
