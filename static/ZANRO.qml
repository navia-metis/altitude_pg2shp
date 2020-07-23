<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" simplifyDrawingHints="1" maxScale="0" styleCategories="AllStyleCategories" simplifyLocal="1" minScale="1e+08" labelsEnabled="0" simplifyDrawingTol="1" simplifyMaxScale="1" version="3.4.12-Madeira" readOnly="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" enableorderby="0" type="singleSymbol" symbollevels="0">
    <symbols>
      <symbol clip_to_extent="1" name="0" type="fill" force_rhr="0" alpha="1">
        <layer pass="0" enabled="1" locked="0" class="SimpleFill">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,1,47,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,1,47,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.8"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" backgroundAlpha="255" penColor="#000000" minimumSize="0" scaleBasedVisibility="0" sizeType="MM" width="15" enabled="0" barWidth="5" penAlpha="255" scaleDependency="Area" lineSizeType="MM" height="15" opacity="1" rotationOffset="270" maxScaleDenominator="1e+08" labelPlacementMethod="XHeight" penWidth="0" diagramOrientation="Up" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" minScaleDenominator="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings showAll="1" linePlacementFlags="18" priority="0" placement="1" obstacle="0" dist="0" zIndex="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="REF_NRO">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="NB_PRISE">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PLANNING">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SST">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" index="0" field="REF_NRO"/>
    <alias name="" index="1" field="NB_PRISE"/>
    <alias name="" index="2" field="PLANNING"/>
    <alias name="" index="3" field="SST"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" applyOnUpdate="0" field="REF_NRO"/>
    <default expression="" applyOnUpdate="0" field="NB_PRISE"/>
    <default expression="" applyOnUpdate="0" field="PLANNING"/>
    <default expression="" applyOnUpdate="0" field="SST"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" field="REF_NRO" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" field="NB_PRISE" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" field="PLANNING" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint unique_strength="0" field="SST" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="REF_NRO" exp=""/>
    <constraint desc="" field="NB_PRISE" exp=""/>
    <constraint desc="" field="PLANNING" exp=""/>
    <constraint desc="" field="SST" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;CODE_NRO&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column hidden="1" type="actions" width="-1"/>
      <column name="REF_NRO" hidden="0" type="field" width="-1"/>
      <column name="NB_PRISE" hidden="0" type="field" width="-1"/>
      <column name="PLANNING" hidden="0" type="field" width="-1"/>
      <column name="SST" hidden="0" type="field" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>../../../../../PROGRA~1/QGIS2~1.18/bin</editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ
"Fonction d'initialisation Python"
Voici un exemple à suivre:
"""
from PyQt4.QtGui import QWidget

def my_form_open(dialog, layer, feature):
⇥geom = feature.geometry()
⇥control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="NB_PRISE" editable="1"/>
    <field name="PLANNING" editable="1"/>
    <field name="REF_NRO" editable="1"/>
    <field name="SST" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="NB_PRISE" labelOnTop="0"/>
    <field name="PLANNING" labelOnTop="0"/>
    <field name="REF_NRO" labelOnTop="0"/>
    <field name="SST" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>COALESCE( "CODE_NRO", '&lt;NULL>' )</previewExpression>
  <mapTip>CODE_NRO</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
