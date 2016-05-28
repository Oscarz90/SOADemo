<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:ns0="http://www.example.org" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:tns="http://oracle.com/sca/soapservice/ProcesamientoOrdenesCompra/ProcesamientoOrdenesCompra/OrdenCompraService"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:client="http://xmlns.oracle.com/ProcesamientoOrdenesCompra/ProcesamientoOrdenesCompra/validaOrdenesCompraBPEL">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/OrdenCompraService.wsdl"/>
            <oracle-xsl-mapper:rootElement name="OrdenCompra" namespace="http://www.example.org"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/validaOrdenesCompraBPEL.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Orden" namespace="http://www.example.org"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [THU MAY 26 17:32:35 CDT 2016].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <ns0:Orden>
         <ns0:IdCliente>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:ClienteID"/>
         </ns0:IdCliente>
         <ns0:IdOrden>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:ID"/>
         </ns0:IdOrden>
         <ns0:NombProd>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:NombreProducto"/>
         </ns0:NombProd>
         <ns0:ItemTipo>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:TipoItem"/>
         </ns0:ItemTipo>
         <ns0:Precio>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:Precio"/>
         </ns0:Precio>
         <ns0:NumeroPiezas>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:Cantidad"/>
         </ns0:NumeroPiezas>
         <ns0:EstatusOrden>
            <xsl:value-of select="/ns0:OrdenCompra/ns0:Estatus"/>
         </ns0:EstatusOrden>
         <ns0:TCInformacion>
            <ns0:numeroTarjeta>
               <xsl:value-of select="/ns0:OrdenCompra/ns0:TCNumero"/>
            </ns0:numeroTarjeta>
            <ns0:tipoTarjeta>
               <xsl:value-of select="/ns0:OrdenCompra/ns0:TCTipo"/>
            </ns0:tipoTarjeta>
         </ns0:TCInformacion>
      </ns0:Orden>
   </xsl:template>
</xsl:stylesheet>
