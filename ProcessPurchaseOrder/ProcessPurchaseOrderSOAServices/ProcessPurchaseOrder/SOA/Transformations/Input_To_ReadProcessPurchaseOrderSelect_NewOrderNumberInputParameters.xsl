<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.flexagon.com/samples/ProcessPurchaseOrder" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadProcessPurchaseOrder"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:xssi="http://www.oracle.com/XSL/Transform/java/com.schoolspecialty.soaclasspathproperties"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket xssi"
                xmlns:ns1="http://xmlns.oracle.com/ProcessPurchaseOrder/ProcessPurchaseOrder/ProcessPurchaseOrder" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/db/ProcessPurchaseOrder/ProcessPurchaseOrder/ReadProcessPurchaseOrder">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ProcessPurchaseOrder.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Input" namespace="http://www.flexagon.com/samples/ProcessPurchaseOrder"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/ReadProcessPurchaseOrder.wsdl"/>
        <oracle-xsl-mapper:rootElement name="ReadProcessPurchaseOrderSelect_NewOrderNumberInputParameters" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/ReadProcessPurchaseOrder"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE NOV 03 11:38:26 CST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:ReadProcessPurchaseOrderSelect_NewOrderNumberInputParameters>
      <tns:NewOrderNumber>
        <xsl:value-of select="/ns0:Input/ns0:inputPart"/>
      </tns:NewOrderNumber>
    </tns:ReadProcessPurchaseOrderSelect_NewOrderNumberInputParameters>
  </xsl:template>
</xsl:stylesheet>
