<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d3b37b30-cdff-43c0-8fa0-a9526797ea6b(org.campagnelab.circles.plugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="tt5a" ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204908117386" name="jetbrains.mps.lang.plugin.structure.Separator" flags="ng" index="2a7GMi" />
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="RKPJ9dqIFX">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="tC5Ba" id="RKPJ9dqXlt">
    <property role="TrG5h" value="AddCirclesActions" />
    <node concept="ftmFs" id="RKPJ9dqXoJ" role="ftER_">
      <node concept="2a7GMi" id="RKPJ9dr0sf" role="ftvYc" />
      <node concept="tCFHf" id="3Uieg3MsTbM" role="ftvYc">
        <ref role="tCJdB" node="3Uieg3Mrup8" resolve="DropDatabase" />
      </node>
      <node concept="tCFHf" id="5eOdMaeZokq" role="ftvYc">
        <ref role="tCJdB" node="5eOdMaeZc8r" resolve="SerializeModulesToDB" />
      </node>
    </node>
    <node concept="tT9cl" id="RKPJ9dqXoO" role="2f5YQi">
      <ref role="tU$_T" to="9oh:4vodOtydcQR" resolve="Code" />
    </node>
  </node>
  <node concept="sE7Ow" id="3Uieg3Mrup8">
    <property role="TrG5h" value="DropDatabase" />
    <property role="2uzpH1" value="Drop Database" />
    <node concept="tnohg" id="3Uieg3Mrup9" role="tncku">
      <node concept="3clFbS" id="3Uieg3Mrupa" role="2VODD2">
        <node concept="3clFbF" id="7MNizV3nRiZ" role="3cqZAp">
          <node concept="2YIFZM" id="7MNizV3nXBl" role="3clFbG">
            <ref role="37wK5l" to="tt5a:7MNizV3nRoh" resolve="dropDb" />
            <ref role="1Pybhc" to="tt5a:5Ci2biiL$yM" resolve="ModuleSerializer" />
            <node concept="2OqwBi" id="7MNizV3nXBQ" role="37wK5m">
              <node concept="2WthIp" id="7MNizV3nXBT" role="2Oq$k0" />
              <node concept="1DTwFV" id="7MNizV3nXBV" role="2OqNvi">
                <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3Uieg3MrupK" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3Uieg3MrupL" role="1oa70y" />
    </node>
  </node>
  <node concept="sE7Ow" id="5eOdMaeZc8r">
    <property role="TrG5h" value="SerializeModulesToDB" />
    <property role="2uzpH1" value="Publish Module(s)" />
    <node concept="tnohg" id="5eOdMaeZc8s" role="tncku">
      <node concept="3clFbS" id="5eOdMaeZc8t" role="2VODD2">
        <node concept="3clFbF" id="7MNizV3nHco" role="3cqZAp">
          <node concept="2YIFZM" id="7MNizV3nHlR" role="3clFbG">
            <ref role="37wK5l" to="tt5a:7MNizV3nHfc" resolve="serializeProjectWithModules" />
            <ref role="1Pybhc" to="tt5a:5Ci2biiL$yM" resolve="ModuleSerializer" />
            <node concept="2OqwBi" id="7MNizV3nHp2" role="37wK5m">
              <node concept="2WthIp" id="7MNizV3nHnk" role="2Oq$k0" />
              <node concept="1DTwFV" id="7MNizV3nHu3" role="2OqNvi">
                <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
              </node>
            </node>
            <node concept="2OqwBi" id="7MNizV3nHxO" role="37wK5m">
              <node concept="2WthIp" id="7MNizV3nHvM" role="2Oq$k0" />
              <node concept="1DTwFV" id="7MNizV3nHFl" role="2OqNvi">
                <ref role="2WH_rO" node="5eOdMaeZcow" resolve="modules" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="5eOdMaeZcow" role="1NuT2Z">
      <property role="TrG5h" value="modules" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MODULES" resolve="MODULES" />
      <node concept="1oajcY" id="5eOdMaeZcox" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="5eOdMaeZcyv" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5eOdMaeZcyw" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="5eOdMaeZglL" role="tmbBb">
      <node concept="3clFbS" id="5eOdMaeZglM" role="2VODD2">
        <node concept="3clFbF" id="7MNizV3nFet" role="3cqZAp">
          <node concept="3clFbT" id="7MNizV3nFes" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

