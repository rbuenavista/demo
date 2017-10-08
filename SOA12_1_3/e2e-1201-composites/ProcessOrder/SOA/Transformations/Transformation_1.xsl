<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:ns0="http://www.oracle.com/soasample" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/db/top/writeOrderToDatabase"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns xp20 oraxsl mhdr oraext dvm xref socket"
                xmlns:client="http://xmlns.oracle.com/e2e_1201_composites/ProcessOrderTemplate/validateAndProcessOrder"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/file/e2e-1201-composites/ProcessOrder/writeToFile"
                xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/validateAndProcessOrder.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Order" namespace="http://www.oracle.com/soasample"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/writeToFile.wsdl"/>
        <oracle-xsl-mapper:rootElement name="E2E1201_OrdersCollection"
                                       namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/writeOrderToDatabase"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [TUE SEP 15 20:23:00 IST 2015].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:E2E1201_OrdersCollection>
      <tns:E2E1201_Orders>
        <tns:orderDate>
          <xsl:value-of select="/ns0:Order/ns0:OrderDate"/>
        </tns:orderDate>
        <tns:email>
          <xsl:value-of select="/ns0:Order/ns0:Email"/>
        </tns:email>
        <tns:e2E1201_OrderItemsCollection>
          <xsl:for-each select="/ns0:Order/ns0:Items/ns0:Item">
            <tns:E2E1201_OrderItems>
              <tns:quantity>
                <xsl:value-of select="ns0:Quantity"/>
              </tns:quantity>
              <tns:unitprice>
                <xsl:value-of select="ns0:UnitPrice"/>
              </tns:unitprice>
              <tns:description>
                <xsl:value-of select="ns0:Description"/>
              </tns:description>
            </tns:E2E1201_OrderItems>
          </xsl:for-each>
        </tns:e2E1201_OrderItemsCollection>
      </tns:E2E1201_Orders>
    </tns:E2E1201_OrdersCollection>
  </xsl:template>
</xsl:stylesheet>
