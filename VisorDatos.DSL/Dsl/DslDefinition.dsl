<?xml version="1.0" encoding="utf-8"?>
<Dsl xmlns:dm0="http://schemas.microsoft.com/VisualStudio/2008/DslTools/Core" dslVersion="1.0.0.0" Id="cfecef4d-5a72-4b3e-8b4c-8e93d4176ef1" Description="Description for VisorDatosDSL.VisorDatosDSL" Name="VisorDatosDSL" DisplayName="VisorDatosDSL" Namespace="VisorDatosDSL" ProductName="VisorDatosDSL" PackageGuid="eac8a017-502c-4d77-a475-4c575dac18a5" PackageNamespace="VisorDatosDSL" xmlns="http://schemas.microsoft.com/VisualStudio/2005/DslTools/DslDefinitionModel">
  <Classes>
    <DomainClass Id="4132a5b7-61bb-44af-ad84-23c8d95f3de9" Description="La raíz en la cual los otros elementos son embebidos. Aparece como un diagrama." Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" Namespace="VisorDatosDSL">
      <ElementMergeDirectives>
        <ElementMergeDirective>
          <Notes>Creates an embedding link when an element is dropped onto a model. </Notes>
          <Index>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FuentesDeDatosModelHasFuentesDeDatos.FuentesDeDatos</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FuentesDeDatosModelHasFormatosDeSalida.FormatosDeSalida</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="TipoDeChart" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FuentesDeDatosModelHasTiposDeChart.TiposDeChart</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="WebService" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FuentesDeDatosModelHasWebService.WebService</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
        <ElementMergeDirective>
          <Index>
            <DomainClassMoniker Name="BaseDatos" />
          </Index>
          <LinkCreationPaths>
            <DomainPath>FuentesDeDatosModelHasBaseDatos.BaseDatos</DomainPath>
          </LinkCreationPaths>
        </ElementMergeDirective>
      </ElementMergeDirectives>
    </DomainClass>
    <DomainClass Id="7dc1c132-bab8-4288-ad7a-9ee3b421acc2" Description="Elements embedded in the model. Appear as boxes on the diagram." Name="FuenteDeDatosPrimaria" DisplayName="Fuente De Datos Primaria" Namespace="VisorDatosDSL">
      <Properties>
        <DomainProperty Id="cbe3c2ca-5557-4eb2-bf14-cb3bc357e96d" Description="Nombre de la Fuente de Datos" Name="Nombre" DisplayName="Nombre" DefaultValue="Nombre Fuente de Datos" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="4fae52e3-ec6d-4cac-b860-9846758c375c" Description="Description for VisorDatosDSL.FuenteDeDatosPrimaria.Ruta" Name="Ruta" DisplayName="Ruta">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="79f55435-e7c3-4d52-a961-94819ad64ab0" Description="Description for VisorDatosDSL.FuenteDeDatosPrimaria.Metodo" Name="Metodo" DisplayName="Metodo">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="0f8ebb92-8a70-4ad0-9c35-34d004682f1e" Description="Description for VisorDatosDSL.FuenteDeDatosPrimaria.Descripcion" Name="Descripcion" DisplayName="Descripcion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="093fe7b6-e2e5-4dce-8f2b-242263383de3" Description="Description for VisorDatosDSL.TipoFormatoSalidaWeb" Name="TipoFormatoSalidaWeb" DisplayName="Tipo Formato Salida Web" Namespace="VisorDatosDSL">
      <Properties>
        <DomainProperty Id="596fef7f-3bc6-47c3-8838-27573f7328db" Description="Nombre del Formato de Salida" Name="Nombre" DisplayName="Nombre" DefaultValue="Nombre Formato de Salida" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="29f36f49-c908-4af9-9ec9-f7685334d3da" Description="Description for VisorDatosDSL.TipoFormatoSalidaWeb.Descripcion" Name="Descripcion" DisplayName="Descripcion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="6c78137a-66e1-4baa-9b71-b91814f5526e" Description="Description for VisorDatosDSL.TipoDeChart" Name="TipoDeChart" DisplayName="Tipo De Chart" Namespace="VisorDatosDSL">
      <Properties>
        <DomainProperty Id="2157f1b2-3ffc-475e-b5d8-edeff67881d4" Description="Nombre del Tipo de Chart" Name="Nombre" DisplayName="Nombre" DefaultValue="Nombre Tipo de Chart" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="21c9395d-1d7d-4395-a131-cd5906be9306" Description="Description for VisorDatosDSL.TipoDeChart.Descripcion" Name="Descripcion" DisplayName="Descripcion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="6991977d-8349-461a-a6a2-0a2b7ee94baf" Description="Description for VisorDatosDSL.WebService" Name="WebService" DisplayName="Web Service" Namespace="VisorDatosDSL">
      <Properties>
        <DomainProperty Id="fce901b2-67a3-4598-a110-8ce5ab7671c5" Description="Description for VisorDatosDSL.WebService.Nombre" Name="Nombre" DisplayName="Nombre" DefaultValue="Web Service" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="2c80a27a-0eb6-4a83-b520-23c34a1cb121" Description="Description for VisorDatosDSL.WebService.Descripcion" Name="Descripcion" DisplayName="Descripcion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="7229c1b9-c5e9-437a-b213-715bafd8366e" Description="Description for VisorDatosDSL.WebService.Ruta" Name="Ruta" DisplayName="Ruta">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
    <DomainClass Id="2e5a4d5e-b640-4a1b-8ce4-ec18a7008ceb" Description="Description for VisorDatosDSL.BaseDatos" Name="BaseDatos" DisplayName="Base de Datos" Namespace="VisorDatosDSL">
      <Properties>
        <DomainProperty Id="08bc773e-4abc-4272-a493-c8a5015b173e" Description="Description for VisorDatosDSL.BaseDatos.Nombre" Name="Nombre" DisplayName="Nombre" DefaultValue="Base de Datos" IsElementName="true">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="1d4c9496-5075-46aa-8a96-4c3e444d7624" Description="Description for VisorDatosDSL.BaseDatos.Descripcion" Name="Descripcion" DisplayName="Descripcion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
        <DomainProperty Id="8cdeb6c4-9204-43e2-9884-09b6cfafad3c" Description="Description for VisorDatosDSL.BaseDatos.Cadena Conexion" Name="CadenaConexion" DisplayName="Cadena Conexion">
          <Type>
            <ExternalTypeMoniker Name="/System/String" />
          </Type>
        </DomainProperty>
      </Properties>
    </DomainClass>
  </Classes>
  <Relationships>
    <DomainRelationship Id="df2c1420-487c-429c-89d6-a901d4b740dd" Description="Embedding relationship between the Model and Elements" Name="FuentesDeDatosModelHasFuentesDeDatos" DisplayName="Fuentes De Datos Model Has Fuentes De Datos" Namespace="VisorDatosDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="4cefc6d6-bc41-45b1-8abe-c912cf4ce7af" Description="" Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" PropertyName="FuentesDeDatos" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Fuentes De Datos">
          <RolePlayer>
            <DomainClassMoniker Name="FuentesDeDatosModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="99f80a66-5443-483b-adee-1253760db2c8" Description="" Name="Element" DisplayName="Element" PropertyName="FuentesDeDatosModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Fuentes De Datos Model">
          <RolePlayer>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="20881b0c-c540-4219-b217-0a8c39de5eca" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasFormatosDeSalida" Name="FuentesDeDatosModelHasFormatosDeSalida" DisplayName="Fuentes De Datos Model Has Formatos De Salida" Namespace="VisorDatosDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="33e6d389-a4e5-4704-a6d3-1575225938ac" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasFormatosDeSalida.FuentesDeDatosModel" Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" PropertyName="FormatosDeSalida" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Formatos De Salida">
          <RolePlayer>
            <DomainClassMoniker Name="FuentesDeDatosModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="ecb77701-23db-4aa7-8a46-f0c903a6b67c" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasFormatosDeSalida.TipoFormatoSalidaWeb" Name="TipoFormatoSalidaWeb" DisplayName="Tipo Formato Salida Web" PropertyName="FuentesDeDatosModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Fuentes De Datos Model">
          <RolePlayer>
            <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="fd7193b1-ed95-4c8b-b7d5-6257e7ce9b95" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasTiposDeChart" Name="FuentesDeDatosModelHasTiposDeChart" DisplayName="Fuentes De Datos Model Has Tipos De Chart" Namespace="VisorDatosDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="83eacfd9-7f5b-40c8-900b-d03084397e9a" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasTiposDeChart.FuentesDeDatosModel" Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" PropertyName="TiposDeChart" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Tipos De Chart">
          <RolePlayer>
            <DomainClassMoniker Name="FuentesDeDatosModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="1fe71777-4168-44c5-accf-4bb8bd1d7daf" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasTiposDeChart.TipoDeChart" Name="TipoDeChart" DisplayName="Tipo De Chart" PropertyName="FuentesDeDatosModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Fuentes De Datos Model">
          <RolePlayer>
            <DomainClassMoniker Name="TipoDeChart" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="a4b7f13c-ddb3-4f17-9dfe-d802fca9c8c6" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesFormatosDeSalida" Name="FuenteDeDatosPrimariaReferencesFormatosDeSalida" DisplayName="Fuente De Datos Primaria References Formatos De Salida" Namespace="VisorDatosDSL">
      <Source>
        <DomainRole Id="86b416e0-e675-4b56-8158-61e72b8ed656" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesFormatosDeSalida.FuenteDeDatosPrimaria" Name="FuenteDeDatosPrimaria" DisplayName="Fuente De Datos Primaria" PropertyName="FormatosDeSalida" PropertyDisplayName="Formatos De Salida">
          <RolePlayer>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="8ea635ab-f180-4062-8c51-db9998e606cb" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesFormatosDeSalida.TipoFormatoSalidaWeb" Name="TipoFormatoSalidaWeb" DisplayName="Tipo Formato Salida Web" PropertyName="FuenteDeDatosPrimaria" PropertyDisplayName="Fuente De Datos Primaria">
          <RolePlayer>
            <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="0a792d4d-0d85-42bf-afa8-a9fc39f18156" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesTiposDeChart" Name="FuenteDeDatosPrimariaReferencesTiposDeChart" DisplayName="Fuente De Datos Primaria References Tipos De Chart" Namespace="VisorDatosDSL">
      <Source>
        <DomainRole Id="9df9561e-0361-4502-8663-54c37fed17ea" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesTiposDeChart.FuenteDeDatosPrimaria" Name="FuenteDeDatosPrimaria" DisplayName="Fuente De Datos Primaria" PropertyName="TiposDeChart" PropertyDisplayName="Tipos De Chart">
          <RolePlayer>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="930b2c69-978f-4166-a009-88e8fd987707" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesTiposDeChart.TipoDeChart" Name="TipoDeChart" DisplayName="Tipo De Chart" PropertyName="FuenteDeDatosPrimaria" PropertyDisplayName="Fuente De Datos Primaria">
          <RolePlayer>
            <DomainClassMoniker Name="TipoDeChart" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="11b750f3-60de-46ef-9e51-076e41416ecd" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesWebService" Name="FuenteDeDatosPrimariaReferencesWebService" DisplayName="Fuente De Datos Primaria References Web Service" Namespace="VisorDatosDSL">
      <Source>
        <DomainRole Id="8688e9c2-d7d5-4f48-a972-7c32cb8f89ac" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesWebService.FuenteDeDatosPrimaria" Name="FuenteDeDatosPrimaria" DisplayName="Fuente De Datos Primaria" PropertyName="WebService" PropertyDisplayName="Web Service">
          <RolePlayer>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="d737582a-6c5d-49a0-bb69-ad3e6f6cb7f9" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesWebService.WebService" Name="WebService" DisplayName="Web Service" PropertyName="FuenteDeDatosPrimaria" PropertyDisplayName="Fuente De Datos Primaria">
          <RolePlayer>
            <DomainClassMoniker Name="WebService" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="d6568a7d-1758-4b83-be7d-6e7b17ee0c2f" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasWebService" Name="FuentesDeDatosModelHasWebService" DisplayName="Fuentes De Datos Model Has Web Service" Namespace="VisorDatosDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="6fc07f42-3327-4e52-9138-6c7abfb230e7" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasWebService.FuentesDeDatosModel" Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" PropertyName="WebService" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Web Service">
          <RolePlayer>
            <DomainClassMoniker Name="FuentesDeDatosModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="f0599db1-62ca-4e6c-882d-34db61049f2a" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasWebService.WebService" Name="WebService" DisplayName="Web Service" PropertyName="FuentesDeDatosModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Fuentes De Datos Model">
          <RolePlayer>
            <DomainClassMoniker Name="WebService" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="c8e1cfa2-e4bf-44c9-8c21-feb12c3e6657" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasBaseDatos" Name="FuentesDeDatosModelHasBaseDatos" DisplayName="Fuentes De Datos Model Has Base Datos" Namespace="VisorDatosDSL" IsEmbedding="true">
      <Source>
        <DomainRole Id="dccdfd77-1e75-4f5a-9612-0b3163d173a0" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasBaseDatos.FuentesDeDatosModel" Name="FuentesDeDatosModel" DisplayName="Fuentes De Datos Model" PropertyName="BaseDatos" PropagatesCopy="PropagatesCopyToLinkAndOppositeRolePlayer" PropertyDisplayName="Base Datos">
          <RolePlayer>
            <DomainClassMoniker Name="FuentesDeDatosModel" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="3715b779-e0bf-4b5a-905b-69f82cfab46a" Description="Description for VisorDatosDSL.FuentesDeDatosModelHasBaseDatos.BaseDatos" Name="BaseDatos" DisplayName="Base Datos" PropertyName="FuentesDeDatosModel" Multiplicity="One" PropagatesDelete="true" PropertyDisplayName="Fuentes De Datos Model">
          <RolePlayer>
            <DomainClassMoniker Name="BaseDatos" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
    <DomainRelationship Id="069641c0-8642-4164-956d-52e67d9834d0" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesBaseDatos" Name="FuenteDeDatosPrimariaReferencesBaseDatos" DisplayName="Fuente De Datos Primaria References Base Datos" Namespace="VisorDatosDSL">
      <Source>
        <DomainRole Id="10be161e-f44e-4d82-8037-ee2cde64c365" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesBaseDatos.FuenteDeDatosPrimaria" Name="FuenteDeDatosPrimaria" DisplayName="Fuente De Datos Primaria" PropertyName="BaseDatos" PropertyDisplayName="Base Datos">
          <RolePlayer>
            <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
          </RolePlayer>
        </DomainRole>
      </Source>
      <Target>
        <DomainRole Id="7338ac8e-bb1f-4974-881d-ee1920d0d409" Description="Description for VisorDatosDSL.FuenteDeDatosPrimariaReferencesBaseDatos.BaseDatos" Name="BaseDatos" DisplayName="Base Datos" PropertyName="FuenteDeDatosPrimaria" PropertyDisplayName="Fuente De Datos Primaria">
          <RolePlayer>
            <DomainClassMoniker Name="BaseDatos" />
          </RolePlayer>
        </DomainRole>
      </Target>
    </DomainRelationship>
  </Relationships>
  <Types>
    <ExternalType Name="DateTime" Namespace="System" />
    <ExternalType Name="String" Namespace="System" />
    <ExternalType Name="Int16" Namespace="System" />
    <ExternalType Name="Int32" Namespace="System" />
    <ExternalType Name="Int64" Namespace="System" />
    <ExternalType Name="UInt16" Namespace="System" />
    <ExternalType Name="UInt32" Namespace="System" />
    <ExternalType Name="UInt64" Namespace="System" />
    <ExternalType Name="SByte" Namespace="System" />
    <ExternalType Name="Byte" Namespace="System" />
    <ExternalType Name="Double" Namespace="System" />
    <ExternalType Name="Single" Namespace="System" />
    <ExternalType Name="Guid" Namespace="System" />
    <ExternalType Name="Boolean" Namespace="System" />
    <ExternalType Name="Char" Namespace="System" />
  </Types>
  <Shapes>
    <GeometryShape Id="af77dc38-33b8-40d6-b489-d4cfb7a0f7e5" Description="Representa una Fuente de Datos en el Diagrama" Name="FuenteDeDatosShape" DisplayName="Fuente De Datos" Namespace="VisorDatosDSL" FixedTooltipText="Fuente De Datos" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialWidth="2" InitialHeight="0.75" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="19145ef9-0a40-492d-b681-32b68eeb107c" Description="Representa un Formato de Salida en el Diagrama" Name="FormatoDeSalidaShape" DisplayName="Formato De Salida" Namespace="VisorDatosDSL" FixedTooltipText="Formato De Salida" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="8674edae-3383-4cd1-a6ad-f10934f87c94" Description="Description for VisorDatosDSL.TipoDeChartShape" Name="TipoDeChartShape" DisplayName="Tipo De Chart Shape" Namespace="VisorDatosDSL" FixedTooltipText="Tipo De Chart Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="24ddf045-6af2-42ec-9617-43778ef5f78b" Description="Description for VisorDatosDSL.WebServiceShape" Name="WebServiceShape" DisplayName="Web Service Shape" Namespace="VisorDatosDSL" FixedTooltipText="Web Service Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
    <GeometryShape Id="d96ef0c4-f3dd-4263-8695-79ba0afda342" Description="Description for VisorDatosDSL.BaseDatosShape" Name="BaseDatosShape" DisplayName="Base Datos Shape" Namespace="VisorDatosDSL" FixedTooltipText="Base Datos Shape" FillColor="242, 239, 229" OutlineColor="113, 111, 110" InitialHeight="1" OutlineThickness="0.01" Geometry="Rectangle">
      <ShapeHasDecorators Position="Center" HorizontalOffset="0" VerticalOffset="0">
        <TextDecorator Name="NombreDecorator" DisplayName="Nombre Decorator" DefaultText="NombreDecorator" />
      </ShapeHasDecorators>
    </GeometryShape>
  </Shapes>
  <Connectors>
    <Connector Id="ebb776ee-da94-4652-b1ee-5ddfe612aee7" Description="Description for VisorDatosDSL.ConectorFuente_FormatoSalida" Name="ConectorFuente_FormatoSalida" DisplayName="Conector Fuente_ Formato Salida" Namespace="VisorDatosDSL" FixedTooltipText="Conector Fuente_ Formato Salida" />
    <Connector Id="593bf031-727f-4336-bed4-f6fd22027b38" Description="Description for VisorDatosDSL.ConectorFuente_TipoChart" Name="ConectorFuente_TipoChart" DisplayName="Conector Fuente_ Tipo Chart" Namespace="VisorDatosDSL" FixedTooltipText="Conector Fuente_ Tipo Chart" />
    <Connector Id="42ce7aea-b6c9-4b0c-86ef-8db9d9d32395" Description="Description for VisorDatosDSL.ConectorFuente_WebService" Name="ConectorFuente_WebService" DisplayName="Conector Fuente_ Web Service" Namespace="VisorDatosDSL" FixedTooltipText="Conector Fuente_ Web Service" />
    <Connector Id="8a611d8a-68e5-4fb0-9e4c-aad852811b6c" Description="Description for VisorDatosDSL.ConectorFuente_BaseDatos" Name="ConectorFuente_BaseDatos" DisplayName="Conector Fuente_ Base Datos" Namespace="VisorDatosDSL" FixedTooltipText="Conector Fuente_ Base Datos" />
  </Connectors>
  <XmlSerializationBehavior Name="VisorDatosDSLSerializationBehavior" Namespace="VisorDatosDSL">
    <ClassData>
      <XmlClassData TypeName="FuentesDeDatosModel" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelMoniker" ElementName="fuentesDeDatosModel" MonikerTypeName="FuentesDeDatosModelMoniker">
        <DomainClassMoniker Name="FuentesDeDatosModel" />
        <ElementData>
          <XmlRelationshipData RoleElementName="fuentesDeDatos">
            <DomainRelationshipMoniker Name="FuentesDeDatosModelHasFuentesDeDatos" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="formatosDeSalida">
            <DomainRelationshipMoniker Name="FuentesDeDatosModelHasFormatosDeSalida" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="tiposDeChart">
            <DomainRelationshipMoniker Name="FuentesDeDatosModelHasTiposDeChart" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="webService">
            <DomainRelationshipMoniker Name="FuentesDeDatosModelHasWebService" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="baseDatos">
            <DomainRelationshipMoniker Name="FuentesDeDatosModelHasBaseDatos" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosPrimaria" MonikerAttributeName="nombre" SerializeId="true" MonikerElementName="fuenteDeDatosPrimariaMoniker" ElementName="fuenteDeDatosPrimaria" MonikerTypeName="FuenteDeDatosPrimariaMoniker">
        <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
        <ElementData>
          <XmlPropertyData XmlName="nombre" IsMonikerKey="true">
            <DomainPropertyMoniker Name="FuenteDeDatosPrimaria/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="ruta">
            <DomainPropertyMoniker Name="FuenteDeDatosPrimaria/Ruta" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="metodo">
            <DomainPropertyMoniker Name="FuenteDeDatosPrimaria/Metodo" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripcion">
            <DomainPropertyMoniker Name="FuenteDeDatosPrimaria/Descripcion" />
          </XmlPropertyData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="formatosDeSalida">
            <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesFormatosDeSalida" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="tiposDeChart">
            <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesTiposDeChart" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="webService">
            <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesWebService" />
          </XmlRelationshipData>
          <XmlRelationshipData UseFullForm="true" RoleElementName="baseDatos">
            <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesBaseDatos" />
          </XmlRelationshipData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FuentesDeDatosModelHasFuentesDeDatos" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelHasFuentesDeDatosMoniker" ElementName="fuentesDeDatosModelHasFuentesDeDatos" MonikerTypeName="FuentesDeDatosModelHasFuentesDeDatosMoniker">
        <DomainRelationshipMoniker Name="FuentesDeDatosModelHasFuentesDeDatos" />
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuenteDeDatosShapeMoniker" ElementName="fuenteDeDatosShape" MonikerTypeName="FuenteDeDatosShapeMoniker">
        <GeometryShapeMoniker Name="FuenteDeDatosShape" />
      </XmlClassData>
      <XmlClassData TypeName="VisorDatosDSLDiagram" MonikerAttributeName="" SerializeId="true" MonikerElementName="visorDatosDSLDiagramMoniker" ElementName="visorDatosDSLDiagram" MonikerTypeName="VisorDatosDSLDiagramMoniker">
        <DiagramMoniker Name="VisorDatosDSLDiagram" />
      </XmlClassData>
      <XmlClassData TypeName="TipoFormatoSalidaWeb" MonikerAttributeName="" SerializeId="true" MonikerElementName="tipoFormatoSalidaWebMoniker" ElementName="tipoFormatoSalidaWeb" MonikerTypeName="TipoFormatoSalidaWebMoniker">
        <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="TipoFormatoSalidaWeb/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripcion">
            <DomainPropertyMoniker Name="TipoFormatoSalidaWeb/Descripcion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FormatoDeSalidaShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="formatoDeSalidaShapeMoniker" ElementName="formatoDeSalidaShape" MonikerTypeName="FormatoDeSalidaShapeMoniker">
        <GeometryShapeMoniker Name="FormatoDeSalidaShape" />
      </XmlClassData>
      <XmlClassData TypeName="FuentesDeDatosModelHasFormatosDeSalida" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelHasFormatosDeSalidaMoniker" ElementName="fuentesDeDatosModelHasFormatosDeSalida" MonikerTypeName="FuentesDeDatosModelHasFormatosDeSalidaMoniker">
        <DomainRelationshipMoniker Name="FuentesDeDatosModelHasFormatosDeSalida" />
      </XmlClassData>
      <XmlClassData TypeName="TipoDeChart" MonikerAttributeName="" SerializeId="true" MonikerElementName="tipoDeChartMoniker" ElementName="tipoDeChart" MonikerTypeName="TipoDeChartMoniker">
        <DomainClassMoniker Name="TipoDeChart" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="TipoDeChart/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripcion">
            <DomainPropertyMoniker Name="TipoDeChart/Descripcion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="TipoDeChartShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="tipoDeChartShapeMoniker" ElementName="tipoDeChartShape" MonikerTypeName="TipoDeChartShapeMoniker">
        <GeometryShapeMoniker Name="TipoDeChartShape" />
      </XmlClassData>
      <XmlClassData TypeName="FuentesDeDatosModelHasTiposDeChart" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelHasTiposDeChartMoniker" ElementName="fuentesDeDatosModelHasTiposDeChart" MonikerTypeName="FuentesDeDatosModelHasTiposDeChartMoniker">
        <DomainRelationshipMoniker Name="FuentesDeDatosModelHasTiposDeChart" />
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosPrimariaReferencesFormatosDeSalida" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuenteDeDatosPrimariaReferencesFormatosDeSalidaMoniker" ElementName="fuenteDeDatosPrimariaReferencesFormatosDeSalida" MonikerTypeName="FuenteDeDatosPrimariaReferencesFormatosDeSalidaMoniker">
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesFormatosDeSalida" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorFuente_FormatoSalida" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorFuente_FormatoSalidaMoniker" ElementName="conectorFuente_FormatoSalida" MonikerTypeName="ConectorFuente_FormatoSalidaMoniker">
        <ConnectorMoniker Name="ConectorFuente_FormatoSalida" />
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosPrimariaReferencesTiposDeChart" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuenteDeDatosPrimariaReferencesTiposDeChartMoniker" ElementName="fuenteDeDatosPrimariaReferencesTiposDeChart" MonikerTypeName="FuenteDeDatosPrimariaReferencesTiposDeChartMoniker">
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesTiposDeChart" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorFuente_TipoChart" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorFuente_TipoChartMoniker" ElementName="conectorFuente_TipoChart" MonikerTypeName="ConectorFuente_TipoChartMoniker">
        <ConnectorMoniker Name="ConectorFuente_TipoChart" />
      </XmlClassData>
      <XmlClassData TypeName="WebService" MonikerAttributeName="" SerializeId="true" MonikerElementName="webServiceMoniker" ElementName="webService" MonikerTypeName="WebServiceMoniker">
        <DomainClassMoniker Name="WebService" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="WebService/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripcion">
            <DomainPropertyMoniker Name="WebService/Descripcion" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="ruta">
            <DomainPropertyMoniker Name="WebService/Ruta" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosPrimariaReferencesWebService" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuenteDeDatosPrimariaReferencesWebServiceMoniker" ElementName="fuenteDeDatosPrimariaReferencesWebService" MonikerTypeName="FuenteDeDatosPrimariaReferencesWebServiceMoniker">
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesWebService" />
      </XmlClassData>
      <XmlClassData TypeName="FuentesDeDatosModelHasWebService" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelHasWebServiceMoniker" ElementName="fuentesDeDatosModelHasWebService" MonikerTypeName="FuentesDeDatosModelHasWebServiceMoniker">
        <DomainRelationshipMoniker Name="FuentesDeDatosModelHasWebService" />
      </XmlClassData>
      <XmlClassData TypeName="WebServiceShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="webServiceShapeMoniker" ElementName="webServiceShape" MonikerTypeName="WebServiceShapeMoniker">
        <GeometryShapeMoniker Name="WebServiceShape" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorFuente_WebService" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorFuente_WebServiceMoniker" ElementName="conectorFuente_WebService" MonikerTypeName="ConectorFuente_WebServiceMoniker">
        <ConnectorMoniker Name="ConectorFuente_WebService" />
      </XmlClassData>
      <XmlClassData TypeName="BaseDatos" MonikerAttributeName="" SerializeId="true" MonikerElementName="baseDatosMoniker" ElementName="baseDatos" MonikerTypeName="BaseDatosMoniker">
        <DomainClassMoniker Name="BaseDatos" />
        <ElementData>
          <XmlPropertyData XmlName="nombre">
            <DomainPropertyMoniker Name="BaseDatos/Nombre" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="descripcion">
            <DomainPropertyMoniker Name="BaseDatos/Descripcion" />
          </XmlPropertyData>
          <XmlPropertyData XmlName="cadenaConexion">
            <DomainPropertyMoniker Name="BaseDatos/CadenaConexion" />
          </XmlPropertyData>
        </ElementData>
      </XmlClassData>
      <XmlClassData TypeName="FuentesDeDatosModelHasBaseDatos" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuentesDeDatosModelHasBaseDatosMoniker" ElementName="fuentesDeDatosModelHasBaseDatos" MonikerTypeName="FuentesDeDatosModelHasBaseDatosMoniker">
        <DomainRelationshipMoniker Name="FuentesDeDatosModelHasBaseDatos" />
      </XmlClassData>
      <XmlClassData TypeName="FuenteDeDatosPrimariaReferencesBaseDatos" MonikerAttributeName="" SerializeId="true" MonikerElementName="fuenteDeDatosPrimariaReferencesBaseDatosMoniker" ElementName="fuenteDeDatosPrimariaReferencesBaseDatos" MonikerTypeName="FuenteDeDatosPrimariaReferencesBaseDatosMoniker">
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesBaseDatos" />
      </XmlClassData>
      <XmlClassData TypeName="BaseDatosShape" MonikerAttributeName="" SerializeId="true" MonikerElementName="baseDatosShapeMoniker" ElementName="baseDatosShape" MonikerTypeName="BaseDatosShapeMoniker">
        <GeometryShapeMoniker Name="BaseDatosShape" />
      </XmlClassData>
      <XmlClassData TypeName="ConectorFuente_BaseDatos" MonikerAttributeName="" SerializeId="true" MonikerElementName="conectorFuente_BaseDatosMoniker" ElementName="conectorFuente_BaseDatos" MonikerTypeName="ConectorFuente_BaseDatosMoniker">
        <ConnectorMoniker Name="ConectorFuente_BaseDatos" />
      </XmlClassData>
    </ClassData>
  </XmlSerializationBehavior>
  <ExplorerBehavior Name="VisorDatosDSLExplorer" />
  <ConnectionBuilders>
    <ConnectionBuilder Name="FuenteDeDatosPrimariaReferencesFormatosDeSalidaBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesFormatosDeSalida" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FuenteDeDatosPrimariaReferencesTiposDeChartBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesTiposDeChart" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="TipoDeChart" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FuenteDeDatosPrimariaReferencesWebServiceBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesWebService" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="WebService" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
    <ConnectionBuilder Name="FuenteDeDatosPrimariaReferencesBaseDatosBuilder">
      <LinkConnectDirective>
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesBaseDatos" />
        <SourceDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </SourceDirectives>
        <TargetDirectives>
          <RolePlayerConnectDirective>
            <AcceptingClass>
              <DomainClassMoniker Name="BaseDatos" />
            </AcceptingClass>
          </RolePlayerConnectDirective>
        </TargetDirectives>
      </LinkConnectDirective>
    </ConnectionBuilder>
  </ConnectionBuilders>
  <Diagram Id="a17461e7-715e-42c4-a1cb-0dce2cb7ffcc" Description="Description for VisorDatosDSL.VisorDatosDSLDiagram" Name="VisorDatosDSLDiagram" DisplayName="Minimal Language Diagram" Namespace="VisorDatosDSL">
    <Class>
      <DomainClassMoniker Name="FuentesDeDatosModel" />
    </Class>
    <ShapeMaps>
      <ShapeMap HasCustomParentElement="true" HasCustomParentShape="true">
        <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
        <ParentElementPath>
          <DomainPath>FuentesDeDatosModelHasFuentesDeDatos.FuentesDeDatosModel/!FuentesDeDatosModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FuenteDeDatosShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="FuenteDeDatosPrimaria/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="FuenteDeDatosShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true" HasCustomParentShape="true">
        <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
        <ParentElementPath>
          <DomainPath>FuentesDeDatosModelHasFormatosDeSalida.FuentesDeDatosModel/!FuentesDeDatosModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FormatoDeSalidaShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="TipoFormatoSalidaWeb/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="FormatoDeSalidaShape" />
      </ShapeMap>
      <ShapeMap>
        <DomainClassMoniker Name="TipoDeChart" />
        <ParentElementPath>
          <DomainPath>FuentesDeDatosModelHasTiposDeChart.FuentesDeDatosModel/!FuentesDeDatosModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="FormatoDeSalidaShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="TipoDeChart/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="TipoDeChartShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="TipoDeChart/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="TipoDeChartShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true" HasCustomParentShape="true">
        <DomainClassMoniker Name="WebService" />
        <ParentElementPath>
          <DomainPath>FuentesDeDatosModelHasWebService.FuentesDeDatosModel/!FuentesDeDatosModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="WebServiceShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="WebService/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <DecoratorMap>
          <TextDecoratorMoniker Name="BaseDatosShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="WebService/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="WebServiceShape" />
      </ShapeMap>
      <ShapeMap HasCustomParentElement="true" HasCustomParentShape="true">
        <DomainClassMoniker Name="BaseDatos" />
        <ParentElementPath>
          <DomainPath>FuentesDeDatosModelHasBaseDatos.FuentesDeDatosModel/!FuentesDeDatosModel</DomainPath>
        </ParentElementPath>
        <DecoratorMap>
          <TextDecoratorMoniker Name="BaseDatosShape/NombreDecorator" />
          <PropertyDisplayed>
            <PropertyPath>
              <DomainPropertyMoniker Name="BaseDatos/Nombre" />
            </PropertyPath>
          </PropertyDisplayed>
        </DecoratorMap>
        <GeometryShapeMoniker Name="BaseDatosShape" />
      </ShapeMap>
    </ShapeMaps>
    <ConnectorMaps>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorFuente_FormatoSalida" />
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesFormatosDeSalida" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorFuente_TipoChart" />
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesTiposDeChart" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorFuente_WebService" />
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesWebService" />
      </ConnectorMap>
      <ConnectorMap>
        <ConnectorMoniker Name="ConectorFuente_BaseDatos" />
        <DomainRelationshipMoniker Name="FuenteDeDatosPrimariaReferencesBaseDatos" />
      </ConnectorMap>
    </ConnectorMaps>
  </Diagram>
  <Designer CopyPasteGeneration="CopyPasteOnly" FileExtension="vdat" EditorGuid="ce997ae5-75a3-4f95-a1b5-012baa76bf66">
    <RootClass>
      <DomainClassMoniker Name="FuentesDeDatosModel" />
    </RootClass>
    <XmlSerializationDefinition CustomPostLoad="false">
      <XmlSerializationBehaviorMoniker Name="VisorDatosDSLSerializationBehavior" />
    </XmlSerializationDefinition>
    <ToolboxTab TabText="VisorDatosDSL">
      <ElementTool Name="FuenteDeDatos" ToolboxIcon="resources\exampleshapetoolbitmap.bmp" Caption="Fuente De Datos" Tooltip="Crea una Fuente de Datos" HelpKeyword="FuenteDeDatos">
        <DomainClassMoniker Name="FuenteDeDatosPrimaria" />
      </ElementTool>
      <ElementTool Name="FormatoDeSalida" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="FormatoDeSalida" Tooltip="Formato De Salida" HelpKeyword="FormatoDeSalida">
        <DomainClassMoniker Name="TipoFormatoSalidaWeb" />
      </ElementTool>
      <ElementTool Name="TipoDeChart" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="TipoDeChart" Tooltip="Tipo De Chart" HelpKeyword="TipoDeChart">
        <DomainClassMoniker Name="TipoDeChart" />
      </ElementTool>
      <ElementTool Name="WebService" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Web Service" Tooltip="Web Service" HelpKeyword="WebService">
        <DomainClassMoniker Name="WebService" />
      </ElementTool>
      <ElementTool Name="BaseDatos" ToolboxIcon="Resources\ExampleShapeToolBitmap.bmp" Caption="Base de Datos" Tooltip="Base de Datos" HelpKeyword="BaseDatos">
        <DomainClassMoniker Name="BaseDatos" />
      </ElementTool>
      <ConnectionTool Name="ConectorFuente_FormatoSalida" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Conectar Fuente - Formato de Salida" Tooltip="Conectar una Fuente de Datos con un Formato de Salida de Datos" HelpKeyword="ConectorFuente_FormatoSalida">
        <ConnectionBuilderMoniker Name="VisorDatosDSL/FuenteDeDatosPrimariaReferencesFormatosDeSalidaBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Conector_Fuente_TipoChart" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Conectar Fuente - Tipo de Chart" Tooltip="Conectar una Fuente de Datos con un Tipo de Chart" HelpKeyword="Conector_Fuente_TipoChart">
        <ConnectionBuilderMoniker Name="VisorDatosDSL/FuenteDeDatosPrimariaReferencesTiposDeChartBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="Conector_Fuente_WebService" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Conector Fuente - Web Service" Tooltip="Conecta una Fuente de Datos a un web Service" HelpKeyword="Conector_Fuente_WebService">
        <ConnectionBuilderMoniker Name="VisorDatosDSL/FuenteDeDatosPrimariaReferencesWebServiceBuilder" />
      </ConnectionTool>
      <ConnectionTool Name="ConectorFuente_BaseDatos" ToolboxIcon="Resources\ExampleConnectorToolBitmap.bmp" Caption="Conector Fuente - BaseDatos" Tooltip="Conecta una Funte de Datos con una Base de Datos" HelpKeyword="ConectorFuente_BaseDatos">
        <ConnectionBuilderMoniker Name="VisorDatosDSL/FuenteDeDatosPrimariaReferencesBaseDatosBuilder" />
      </ConnectionTool>
    </ToolboxTab>
    <Validation UsesMenu="false" UsesOpen="false" UsesSave="false" UsesLoad="false" />
    <DiagramMoniker Name="VisorDatosDSLDiagram" />
  </Designer>
  <Explorer ExplorerGuid="bc58c5dc-e214-4505-9636-2b8ed16d30a2" Title="VisorDatosDSL Explorer">
    <ExplorerBehaviorMoniker Name="VisorDatosDSL/VisorDatosDSLExplorer" />
  </Explorer>
</Dsl>