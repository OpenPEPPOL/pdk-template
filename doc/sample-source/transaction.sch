<?xml version="1.0" encoding="iso-8859-1"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding='xslt2' schemaVersion="ISO19757-3">
  <title>OpenPeppol End User Report</title>

  <p id="about">
    <!--  ... -->
  </p>

  <ns prefix="eur" uri="urn:fdc:peppol:end-user-reporting:1.0"/>

  <pattern id="default">
    <let name="cl_spidtype" value="' CertSubjectCN '"/>
    <rule context="/eur:EndUserReport">
      <assert id="EUR-01" flag="fatal" test="normalize-space(eur:CustomizationID) = 'urn:fdc:peppol.eu:oo:trns:end-user-report:1'"
        >[EUR-01] The customization ID MUST use the value 'urn:fdc:peppol.eu:oo:trns:end-user-report:1'</assert>
      <assert id="EUR-02" flag="fatal" test="normalize-space(eur:ProfileID) = 'urn:fdc:peppol.eu:oo:bis:reporting:1'"
        >[EUR-02] The profile ID MUST use the value 'urn:fdc:peppol.eu:oo:bis:reporting:1'</assert>
      <assert id="EUR-03" flag="fatal" test="sum(eur:Subtotal/eur:SendingEndUsers) = eur:Total/eur:SendingEndUsers"
        >[EUR-03] The sum of all subtotals of SendingEndUsers should be equal to Totals/SendingEndUsers</assert>
      <assert id="EUR-04" flag="fatal" test="sum(eur:Subtotal/eur:ReceivingEndUsers) = eur:Total/eur:ReceivingEndUsers"
        >[EUR-04] The sum of all subtotals of ReceivingEndUsers should be equal to Totals/ReceivingEndUsers</assert>
    </rule>

    <rule context="...">
      <!--  ... -->
    </rule>

    <rule context="...">
      <!--  ... -->
    </rule>
  </pattern>
</schema>
