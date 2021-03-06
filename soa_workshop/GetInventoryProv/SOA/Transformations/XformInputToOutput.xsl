<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:ns0="http://www.flexagon.com/ns/inventory" exclude-result-prefixes=" oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:tns="http://oracle.com/sca/soapservice/soa_workshop/GetInventoryProv/Intentroy"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/FLEX/WSDL/Intentory.wsdl"/>
            <oracle-xsl-mapper:rootElement name="ItemNumber" namespace="http://www.flexagon.com/ns/inventory"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="oramds:/apps/FLEX/WSDL/Intentory.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Inventory" namespace="http://www.flexagon.com/ns/inventory"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.4.0(XSLT Build 190828.0353.3300) AT [TUE AUG 18 11:52:45 CDT 2020].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <xsl:choose>
         <xsl:when test="/ns0:ItemNumber = ''">
            <ns0:Inventory>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>100</ns0:ItemNumber>
                  <ns0:ItemDescription>Chair</ns0:ItemDescription>
                  <ns0:COGS>50</ns0:COGS>
                  <ns0:Price>100</ns0:Price>
                  <ns0:Quantity>20</ns0:Quantity>
               </ns0:InventoryItems>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>101</ns0:ItemNumber>
                  <ns0:ItemDescription>Table</ns0:ItemDescription>
                  <ns0:COGS>75</ns0:COGS>
                  <ns0:Price>125</ns0:Price>
                  <ns0:Quantity>10</ns0:Quantity>
               </ns0:InventoryItems>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>102</ns0:ItemNumber>
                  <ns0:ItemDescription>Pad of Paper</ns0:ItemDescription>
                  <ns0:COGS>.5</ns0:COGS>
                  <ns0:Price>1.99</ns0:Price>
                  <ns0:Quantity>2500</ns0:Quantity>
               </ns0:InventoryItems>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>103</ns0:ItemNumber>
                  <ns0:ItemDescription>Laptop</ns0:ItemDescription>
                  <ns0:COGS>799</ns0:COGS>
                  <ns0:Price>1099</ns0:Price>
                  <ns0:Quantity>7</ns0:Quantity>
               </ns0:InventoryItems>
            </ns0:Inventory>
         </xsl:when>
         <xsl:when test='/ns0:ItemNumber = "100"'>
            <ns0:Inventory>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>100</ns0:ItemNumber>
                  <ns0:ItemDescription>Chair</ns0:ItemDescription>
                  <ns0:COGS>50</ns0:COGS>
                  <ns0:Price>100</ns0:Price>
                  <ns0:Quantity>20</ns0:Quantity>
               </ns0:InventoryItems>
              
            </ns0:Inventory>
         </xsl:when>
         <xsl:when test='/ns0:ItemNumber = "101"'>
            <ns0:Inventory>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>101</ns0:ItemNumber>
                  <ns0:ItemDescription>Table</ns0:ItemDescription>
                  <ns0:COGS>75</ns0:COGS>
                  <ns0:Price>125</ns0:Price>
                  <ns0:Quantity>10</ns0:Quantity>
               </ns0:InventoryItems>
    
            </ns0:Inventory>
         </xsl:when>
         <xsl:when test='/ns0:ItemNumber = "102"'>
            <ns0:Inventory>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>102</ns0:ItemNumber>
                  <ns0:ItemDescription>Pad of Paper</ns0:ItemDescription>
                  <ns0:COGS>.5</ns0:COGS>
                  <ns0:Price>1.99</ns0:Price>
                  <ns0:Quantity>2500</ns0:Quantity>
               </ns0:InventoryItems>
               
            </ns0:Inventory>
         </xsl:when>
         <xsl:when test='/ns0:ItemNumber = "103"'>
            <ns0:Inventory>
               <ns0:InventoryItems>
                  <ns0:ItemNumber>103</ns0:ItemNumber>
                  <ns0:ItemDescription>Laptop</ns0:ItemDescription>
                  <ns0:COGS>799</ns0:COGS>
                  <ns0:Price>1099</ns0:Price>
                  <ns0:Quantity>7</ns0:Quantity>
               </ns0:InventoryItems>
            </ns0:Inventory>
         </xsl:when>
         <xsl:otherwise>
            <ns0:Inventory>
            </ns0:Inventory>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>
