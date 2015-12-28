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
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="y8z9" ref="r:2c4c7e9e-399c-490f-b18e-ff7f5ebd651b(org.campagnelab.circles.aspect.runtime)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="zdfu" ref="cac2fef0-41a6-4fcd-923f-f893d536b2ab/java:jetbrains.mps.ide.devkit.actions(jetbrains.mps.ide.mpsdevkit/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" implicit="true" />
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
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="1167227138527" name="jetbrains.mps.baseLanguage.logging.structure.LogStatement" flags="nn" index="34ab3g">
        <property id="1167245565795" name="severity" index="35gtTG" />
        <child id="1167227463056" name="logExpression" index="34bqiv" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="RKPJ9dqIFX">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="sE7Ow" id="RKPJ9dqOB2">
    <property role="TrG5h" value="DefineDbSchema" />
    <property role="2uzpH1" value="Define DB Schema" />
    <node concept="tnohg" id="RKPJ9dqOB3" role="tncku">
      <node concept="3clFbS" id="RKPJ9dqOB4" role="2VODD2">
        <node concept="3cpWs8" id="RKPJ9dqOB5" role="3cqZAp">
          <node concept="3cpWsn" id="RKPJ9dqOB6" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="RKPJ9dqOB7" role="1tU5fm" />
            <node concept="2OqwBi" id="RKPJ9dqOB8" role="33vP2m">
              <node concept="2OqwBi" id="RKPJ9dqOB9" role="2Oq$k0">
                <node concept="2WthIp" id="RKPJ9dqOBa" role="2Oq$k0" />
                <node concept="1DTwFV" id="RKPJ9dqOBb" role="2OqNvi">
                  <ref role="2WH_rO" node="RKPJ9dqOBK" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="RKPJ9dqOBc" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="RKPJ9dqUWa" role="3cqZAp">
          <node concept="3cpWsn" id="RKPJ9dqUWb" role="3cpWs9">
            <property role="TrG5h" value="languageRuntime" />
            <node concept="3uibUv" id="RKPJ9dqUWc" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="RKPJ9dqUWd" role="33vP2m">
              <node concept="2YIFZM" id="RKPJ9dqUWe" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="2OqwBi" id="4sIn2o4mGrL" role="37wK5m">
                  <node concept="2OqwBi" id="4sIn2o4mGrM" role="2Oq$k0">
                    <node concept="2WthIp" id="4sIn2o4mGrN" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4sIn2o4mGrO" role="2OqNvi">
                      <ref role="2WH_rO" node="RKPJ9dqOBM" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sIn2o4mGrP" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="RKPJ9dqUWi" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="2OqwBi" id="RKPJ9dqUWj" role="37wK5m">
                  <node concept="37vLTw" id="RKPJ9dqUWk" role="2Oq$k0">
                    <ref role="3cqZAo" node="RKPJ9dqOB6" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="RKPJ9dqUWl" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="RKPJ9dqUWm" role="3cqZAp">
          <node concept="3cpWsn" id="RKPJ9dqUWn" role="3cpWs9">
            <property role="TrG5h" value="webDescriptor" />
            <node concept="3uibUv" id="RKPJ9dqUWo" role="1tU5fm">
              <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="RKPJ9dqUWp" role="33vP2m">
              <node concept="37vLTw" id="RKPJ9dqUWq" role="2Oq$k0">
                <ref role="3cqZAo" node="RKPJ9dqUWb" resolve="languageRuntime" />
              </node>
              <node concept="liA8E" id="RKPJ9dqUWr" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                <node concept="3VsKOn" id="RKPJ9dqUWs" role="37wK5m">
                  <ref role="3VsUkX" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="RKPJ9dqVV7" role="3cqZAp">
          <node concept="2OqwBi" id="RKPJ9dqOBz" role="3clFbG">
            <node concept="37vLTw" id="RKPJ9dqVLh" role="2Oq$k0">
              <ref role="3cqZAo" node="RKPJ9dqUWn" resolve="webDescriptor" />
            </node>
            <node concept="liA8E" id="RKPJ9dqOB_" role="2OqNvi">
              <ref role="37wK5l" to="y8z9:4bOz9Wk5for" resolve="defineSchemaForConcepts" />
              <node concept="Xl_RD" id="6MwrlOu9bIw" role="37wK5m">
                <property role="Xl_RC" value="root" />
              </node>
              <node concept="Xl_RD" id="6MwrlOu9bKd" role="37wK5m">
                <property role="Xl_RC" value="admin" />
              </node>
            </node>
          </node>
        </node>
        <node concept="34ab3g" id="4UvP5h6M9hc" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="Xl_RD" id="4UvP5h6M9he" role="34bqiv">
            <property role="Xl_RC" value="Done with define schema" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="RKPJ9dqOBK" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="RKPJ9dqOBL" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="RKPJ9dqOBM" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="RKPJ9dqOBN" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="RKPJ9dqOBO" role="tmbBb">
      <node concept="3clFbS" id="RKPJ9dqOBP" role="2VODD2">
        <node concept="3cpWs8" id="RKPJ9dqOBQ" role="3cqZAp">
          <node concept="3cpWsn" id="RKPJ9dqOBR" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="RKPJ9dqOBS" role="1tU5fm" />
            <node concept="2OqwBi" id="RKPJ9dqOBT" role="33vP2m">
              <node concept="2OqwBi" id="RKPJ9dqOBU" role="2Oq$k0">
                <node concept="2WthIp" id="RKPJ9dqOBV" role="2Oq$k0" />
                <node concept="1DTwFV" id="RKPJ9dqOBW" role="2OqNvi">
                  <ref role="2WH_rO" node="RKPJ9dqOBK" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="RKPJ9dqOBX" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="RKPJ9dqOBY" role="3cqZAp">
          <node concept="3cpWsn" id="RKPJ9dqOBZ" role="3cpWs9">
            <property role="TrG5h" value="languageRuntime" />
            <node concept="3uibUv" id="RKPJ9dqOC0" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="RKPJ9dqOC1" role="33vP2m">
              <node concept="2YIFZM" id="RKPJ9dqOC2" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="2OqwBi" id="4sIn2o4mFMd" role="37wK5m">
                  <node concept="2OqwBi" id="RKPJ9dqOC3" role="2Oq$k0">
                    <node concept="2WthIp" id="RKPJ9dqOC4" role="2Oq$k0" />
                    <node concept="1DTwFV" id="RKPJ9dqOC5" role="2OqNvi">
                      <ref role="2WH_rO" node="RKPJ9dqOBM" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sIn2o4mGmi" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="RKPJ9dqOC6" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="2OqwBi" id="RKPJ9dqOC7" role="37wK5m">
                  <node concept="37vLTw" id="RKPJ9dqOC8" role="2Oq$k0">
                    <ref role="3cqZAo" node="RKPJ9dqOBR" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="RKPJ9dqOC9" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="RKPJ9dqYuV" role="3cqZAp">
          <node concept="3clFbS" id="RKPJ9dqYuX" role="3clFbx">
            <node concept="3cpWs8" id="RKPJ9dqOCa" role="3cqZAp">
              <node concept="3cpWsn" id="RKPJ9dqOCb" role="3cpWs9">
                <property role="TrG5h" value="webDescriptor" />
                <node concept="3uibUv" id="RKPJ9dqUOC" role="1tU5fm">
                  <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                </node>
                <node concept="2OqwBi" id="RKPJ9dqOCd" role="33vP2m">
                  <node concept="37vLTw" id="RKPJ9dqOCe" role="2Oq$k0">
                    <ref role="3cqZAo" node="RKPJ9dqOBZ" resolve="languageRuntime" />
                  </node>
                  <node concept="liA8E" id="RKPJ9dqOCf" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                    <node concept="3VsKOn" id="RKPJ9dqOCg" role="37wK5m">
                      <ref role="3VsUkX" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="RKPJ9dr9Tk" role="3cqZAp">
              <node concept="3y3z36" id="RKPJ9dra9r" role="3cqZAk">
                <node concept="10Nm6u" id="RKPJ9drafa" role="3uHU7w" />
                <node concept="37vLTw" id="RKPJ9dra0o" role="3uHU7B">
                  <ref role="3cqZAo" node="RKPJ9dqOCb" resolve="webDescriptor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="RKPJ9dqYHf" role="3clFbw">
            <node concept="10Nm6u" id="RKPJ9dqYMM" role="3uHU7w" />
            <node concept="37vLTw" id="RKPJ9dqYAf" role="3uHU7B">
              <ref role="3cqZAo" node="RKPJ9dqOBZ" resolve="languageRuntime" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="RKPJ9dr00C" role="3cqZAp">
          <node concept="3clFbT" id="RKPJ9dr073" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="RKPJ9dqXlt">
    <property role="TrG5h" value="AddCirclesActions" />
    <node concept="ftmFs" id="RKPJ9dqXoJ" role="ftER_">
      <node concept="2a7GMi" id="RKPJ9dr0sf" role="ftvYc" />
      <node concept="tCFHf" id="RKPJ9dr0s9" role="ftvYc">
        <ref role="tCJdB" node="RKPJ9dqOB2" resolve="DefineDbSchema" />
      </node>
      <node concept="tCFHf" id="3Uieg3MsTbM" role="ftvYc">
        <ref role="tCJdB" node="3Uieg3Mrup8" resolve="DropDbSchema" />
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
    <property role="TrG5h" value="DropDbSchema" />
    <property role="2uzpH1" value="Drop DB Schema" />
    <node concept="tnohg" id="3Uieg3Mrup9" role="tncku">
      <node concept="3clFbS" id="3Uieg3Mrupa" role="2VODD2">
        <node concept="3cpWs8" id="3Uieg3Mrupb" role="3cqZAp">
          <node concept="3cpWsn" id="3Uieg3Mrupc" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="3Uieg3Mrupd" role="1tU5fm" />
            <node concept="2OqwBi" id="3Uieg3Mrupe" role="33vP2m">
              <node concept="2OqwBi" id="3Uieg3Mrupf" role="2Oq$k0">
                <node concept="2WthIp" id="3Uieg3Mrupg" role="2Oq$k0" />
                <node concept="1DTwFV" id="3Uieg3Mruph" role="2OqNvi">
                  <ref role="2WH_rO" node="3Uieg3MrupI" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="3Uieg3Mrupi" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Uieg3Mrupj" role="3cqZAp">
          <node concept="3cpWsn" id="3Uieg3Mrupk" role="3cpWs9">
            <property role="TrG5h" value="languageRuntime" />
            <node concept="3uibUv" id="3Uieg3Mrupl" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="3Uieg3Mrupm" role="33vP2m">
              <node concept="2YIFZM" id="3Uieg3Mrupn" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="2OqwBi" id="4sIn2o4mGSu" role="37wK5m">
                  <node concept="2OqwBi" id="4sIn2o4mGSv" role="2Oq$k0">
                    <node concept="2WthIp" id="4sIn2o4mGSw" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4sIn2o4mGSx" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sIn2o4mGSy" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3Uieg3Mrupr" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="2OqwBi" id="3Uieg3Mrups" role="37wK5m">
                  <node concept="37vLTw" id="3Uieg3Mrupt" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Uieg3Mrupc" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="3Uieg3Mrupu" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Uieg3Mrupv" role="3cqZAp">
          <node concept="3cpWsn" id="3Uieg3Mrupw" role="3cpWs9">
            <property role="TrG5h" value="webDescriptor" />
            <node concept="3uibUv" id="3Uieg3Mrupx" role="1tU5fm">
              <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="3Uieg3Mrupy" role="33vP2m">
              <node concept="37vLTw" id="3Uieg3Mrupz" role="2Oq$k0">
                <ref role="3cqZAo" node="3Uieg3Mrupk" resolve="languageRuntime" />
              </node>
              <node concept="liA8E" id="3Uieg3Mrup$" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                <node concept="3VsKOn" id="3Uieg3Mrup_" role="37wK5m">
                  <ref role="3VsUkX" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3Uieg3MrupA" role="3cqZAp">
          <node concept="2OqwBi" id="3Uieg3MrupB" role="3clFbG">
            <node concept="37vLTw" id="3Uieg3MrupC" role="2Oq$k0">
              <ref role="3cqZAo" node="3Uieg3Mrupw" resolve="webDescriptor" />
            </node>
            <node concept="liA8E" id="3Uieg3MrupD" role="2OqNvi">
              <ref role="37wK5l" to="y8z9:3Uieg3MruQq" resolve="dropSchemaForConcepts" />
              <node concept="Xl_RD" id="3Uieg3MrupE" role="37wK5m">
                <property role="Xl_RC" value="root" />
              </node>
              <node concept="Xl_RD" id="3Uieg3MrupF" role="37wK5m">
                <property role="Xl_RC" value="admin" />
              </node>
            </node>
          </node>
        </node>
        <node concept="34ab3g" id="3Uieg3MrupG" role="3cqZAp">
          <property role="35gtTG" value="info" />
          <node concept="Xl_RD" id="3Uieg3MrupH" role="34bqiv">
            <property role="Xl_RC" value="Done with drop schema" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1DS2jV" id="3Uieg3MrupI" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="3Uieg3MrupJ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="3Uieg3MrupK" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="3Uieg3MrupL" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="3Uieg3MrupM" role="tmbBb">
      <node concept="3clFbS" id="3Uieg3MrupN" role="2VODD2">
        <node concept="3cpWs8" id="3Uieg3MrupO" role="3cqZAp">
          <node concept="3cpWsn" id="3Uieg3MrupP" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="3Uieg3MrupQ" role="1tU5fm" />
            <node concept="2OqwBi" id="3Uieg3MrupR" role="33vP2m">
              <node concept="2OqwBi" id="3Uieg3MrupS" role="2Oq$k0">
                <node concept="2WthIp" id="3Uieg3MrupT" role="2Oq$k0" />
                <node concept="1DTwFV" id="3Uieg3MrupU" role="2OqNvi">
                  <ref role="2WH_rO" node="3Uieg3MrupI" resolve="node" />
                </node>
              </node>
              <node concept="liA8E" id="3Uieg3MrupV" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getConcept():org.jetbrains.mps.openapi.language.SConcept" resolve="getConcept" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3Uieg3MrupW" role="3cqZAp">
          <node concept="3cpWsn" id="3Uieg3MrupX" role="3cpWs9">
            <property role="TrG5h" value="languageRuntime" />
            <node concept="3uibUv" id="3Uieg3MrupY" role="1tU5fm">
              <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
            </node>
            <node concept="2OqwBi" id="3Uieg3MrupZ" role="33vP2m">
              <node concept="2YIFZM" id="3Uieg3Mruq0" role="2Oq$k0">
                <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                <node concept="2OqwBi" id="4sIn2o4mGL1" role="37wK5m">
                  <node concept="2OqwBi" id="4sIn2o4mGL2" role="2Oq$k0">
                    <node concept="2WthIp" id="4sIn2o4mGL3" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4sIn2o4mGL4" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4sIn2o4mGL5" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3Uieg3Mruq4" role="2OqNvi">
                <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                <node concept="2OqwBi" id="3Uieg3Mruq5" role="37wK5m">
                  <node concept="37vLTw" id="3Uieg3Mruq6" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Uieg3MrupP" resolve="concept" />
                  </node>
                  <node concept="liA8E" id="3Uieg3Mruq7" role="2OqNvi">
                    <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage():org.jetbrains.mps.openapi.language.SLanguage" resolve="getLanguage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3Uieg3Mruq8" role="3cqZAp">
          <node concept="3clFbS" id="3Uieg3Mruq9" role="3clFbx">
            <node concept="3cpWs8" id="3Uieg3Mruqa" role="3cqZAp">
              <node concept="3cpWsn" id="3Uieg3Mruqb" role="3cpWs9">
                <property role="TrG5h" value="webDescriptor" />
                <node concept="3uibUv" id="3Uieg3Mruqc" role="1tU5fm">
                  <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                </node>
                <node concept="2OqwBi" id="3Uieg3Mruqd" role="33vP2m">
                  <node concept="37vLTw" id="3Uieg3Mruqe" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Uieg3MrupX" resolve="languageRuntime" />
                  </node>
                  <node concept="liA8E" id="3Uieg3Mruqf" role="2OqNvi">
                    <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                    <node concept="3VsKOn" id="3Uieg3Mruqg" role="37wK5m">
                      <ref role="3VsUkX" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="3Uieg3Mruqh" role="3cqZAp">
              <node concept="3y3z36" id="3Uieg3Mruqi" role="3cqZAk">
                <node concept="10Nm6u" id="3Uieg3Mruqj" role="3uHU7w" />
                <node concept="37vLTw" id="3Uieg3Mruqk" role="3uHU7B">
                  <ref role="3cqZAo" node="3Uieg3Mruqb" resolve="webDescriptor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3Uieg3Mruql" role="3clFbw">
            <node concept="10Nm6u" id="3Uieg3Mruqm" role="3uHU7w" />
            <node concept="37vLTw" id="3Uieg3Mruqn" role="3uHU7B">
              <ref role="3cqZAo" node="3Uieg3MrupX" resolve="languageRuntime" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3Uieg3Mruqo" role="3cqZAp">
          <node concept="3clFbT" id="3Uieg3Mruqp" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5eOdMaeZc8r">
    <property role="TrG5h" value="SerializeModulesToDB" />
    <property role="2uzpH1" value="Serialize Modules to DB" />
    <node concept="2XrIbr" id="5eOdMaeZcBC" role="32lrUH">
      <property role="TrG5h" value="findWebAspect" />
      <node concept="3clFbS" id="5eOdMaeZcBD" role="3clF47">
        <node concept="2Gpval" id="5eOdMaeZdXF" role="3cqZAp">
          <node concept="2GrKxI" id="5eOdMaeZdXG" role="2Gsz3X">
            <property role="TrG5h" value="module" />
          </node>
          <node concept="3clFbS" id="5eOdMaeZdXH" role="2LFqv$">
            <node concept="2Gpval" id="5eOdMaeZeb7" role="3cqZAp">
              <node concept="2GrKxI" id="5eOdMaeZeb8" role="2Gsz3X">
                <property role="TrG5h" value="language" />
              </node>
              <node concept="3clFbS" id="5eOdMaeZeb9" role="2LFqv$">
                <node concept="3cpWs8" id="5eOdMaeZelq" role="3cqZAp">
                  <node concept="3cpWsn" id="5eOdMaeZelr" role="3cpWs9">
                    <property role="TrG5h" value="languageRuntime" />
                    <node concept="3uibUv" id="5eOdMaeZels" role="1tU5fm">
                      <ref role="3uigEE" to="vndm:~LanguageRuntime" resolve="LanguageRuntime" />
                    </node>
                    <node concept="2OqwBi" id="5eOdMaeZelt" role="33vP2m">
                      <node concept="2YIFZM" id="5eOdMaeZelu" role="2Oq$k0">
                        <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                        <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository):jetbrains.mps.smodel.language.LanguageRegistry" resolve="getInstance" />
                        <node concept="2OqwBi" id="4sIn2o4mHhh" role="37wK5m">
                          <node concept="2OqwBi" id="4sIn2o4mHhi" role="2Oq$k0">
                            <node concept="2WthIp" id="4sIn2o4mHhj" role="2Oq$k0" />
                            <node concept="1DTwFV" id="4sIn2o4mHhk" role="2OqNvi">
                              <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4sIn2o4mHhl" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~Project.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5eOdMaeZely" role="2OqNvi">
                        <ref role="37wK5l" to="vndm:~LanguageRegistry.getLanguage(org.jetbrains.mps.openapi.language.SLanguage):jetbrains.mps.smodel.language.LanguageRuntime" resolve="getLanguage" />
                        <node concept="2GrUjf" id="5eOdMaeZesr" role="37wK5m">
                          <ref role="2Gs0qQ" node="5eOdMaeZeb8" resolve="language" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="5eOdMaeZeH1" role="3cqZAp">
                  <node concept="3clFbS" id="5eOdMaeZeH3" role="3clFbx">
                    <node concept="3cpWs8" id="5eOdMaeZelA" role="3cqZAp">
                      <node concept="3cpWsn" id="5eOdMaeZelB" role="3cpWs9">
                        <property role="TrG5h" value="webDescriptor" />
                        <node concept="3uibUv" id="5eOdMaeZelC" role="1tU5fm">
                          <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                        </node>
                        <node concept="2OqwBi" id="5eOdMaeZelD" role="33vP2m">
                          <node concept="37vLTw" id="5eOdMaeZelE" role="2Oq$k0">
                            <ref role="3cqZAo" node="5eOdMaeZelr" resolve="languageRuntime" />
                          </node>
                          <node concept="liA8E" id="5eOdMaeZelF" role="2OqNvi">
                            <ref role="37wK5l" to="vndm:~LanguageRuntime.getAspect(java.lang.Class):jetbrains.mps.smodel.runtime.ILanguageAspect" resolve="getAspect" />
                            <node concept="3VsKOn" id="5eOdMaeZelG" role="37wK5m">
                              <ref role="3VsUkX" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="5eOdMaeZfhh" role="3cqZAp">
                      <node concept="3clFbS" id="5eOdMaeZfhj" role="3clFbx">
                        <node concept="3cpWs6" id="5eOdMaeZfLb" role="3cqZAp">
                          <node concept="37vLTw" id="5eOdMaeZfRa" role="3cqZAk">
                            <ref role="3cqZAo" node="5eOdMaeZelB" resolve="webDescriptor" />
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="5eOdMaeZfDQ" role="3clFbw">
                        <node concept="10Nm6u" id="5eOdMaeZfEj" role="3uHU7w" />
                        <node concept="37vLTw" id="5eOdMaeZfiG" role="3uHU7B">
                          <ref role="3cqZAo" node="5eOdMaeZelB" resolve="webDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="5eOdMaeZf7A" role="3clFbw">
                    <node concept="10Nm6u" id="5eOdMaeZf83" role="3uHU7w" />
                    <node concept="37vLTw" id="5eOdMaeZeMN" role="3uHU7B">
                      <ref role="3cqZAo" node="5eOdMaeZelr" resolve="languageRuntime" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5eOdMaeZecI" role="2GsD0m">
                <node concept="2GrUjf" id="5eOdMaeZebN" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="5eOdMaeZdXG" resolve="module" />
                </node>
                <node concept="liA8E" id="5eOdMaeZeg$" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getUsedLanguages():java.util.Set" resolve="getUsedLanguages" />
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5eOdMaeZdZ1" role="2GsD0m">
            <ref role="3cqZAo" node="5eOdMaeZdAj" resolve="modules" />
          </node>
        </node>
        <node concept="3cpWs6" id="5eOdMaeZe3T" role="3cqZAp">
          <node concept="10Nm6u" id="5eOdMaeZe4l" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="5eOdMaeZcI2" role="3clF45">
        <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
      </node>
      <node concept="37vLTG" id="5eOdMaeZdAj" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="5eOdMaeZdAi" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5eOdMaeZdQz" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="tnohg" id="5eOdMaeZc8s" role="tncku">
      <node concept="3clFbS" id="5eOdMaeZc8t" role="2VODD2">
        <node concept="3cpWs8" id="5eOdMaeZg3t" role="3cqZAp">
          <node concept="3cpWsn" id="5eOdMaeZg3u" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <node concept="3uibUv" id="5eOdMaeZg3v" role="1tU5fm">
              <ref role="3uigEE" to="y8z9:4bOz9Wk5fjq" resolve="WebLanguageAspectDescriptor" />
            </node>
            <node concept="2OqwBi" id="5eOdMaeZg6t" role="33vP2m">
              <node concept="2WthIp" id="5eOdMaeZg4R" role="2Oq$k0" />
              <node concept="2XshWL" id="5eOdMaeZgeU" role="2OqNvi">
                <ref role="2WH_rO" node="5eOdMaeZcBC" resolve="findWebAspect" />
                <node concept="2OqwBi" id="5eOdMaeZgfV" role="2XxRq1">
                  <node concept="2WthIp" id="5eOdMaeZgfY" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5eOdMaeZgg0" role="2OqNvi">
                    <ref role="2WH_rO" node="5eOdMaeZcow" resolve="modules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Uz6rqjNCKl" role="3cqZAp">
          <node concept="2OqwBi" id="4Uz6rqjQrTz" role="3clFbG">
            <node concept="37vLTw" id="4Uz6rqjNCKj" role="2Oq$k0">
              <ref role="3cqZAo" node="5eOdMaeZg3u" resolve="descriptor" />
            </node>
            <node concept="liA8E" id="4Uz6rqjQrZG" role="2OqNvi">
              <ref role="37wK5l" to="y8z9:4Uz6rqjNC3b" resolve="serializeProjectWithModules" />
              <node concept="Xl_RD" id="4Uz6rqjQs0m" role="37wK5m">
                <property role="Xl_RC" value="root" />
              </node>
              <node concept="Xl_RD" id="4Uz6rqjQs2G" role="37wK5m">
                <property role="Xl_RC" value="admin" />
              </node>
              <node concept="2OqwBi" id="4Uz6rqjQs7T" role="37wK5m">
                <node concept="2WthIp" id="4Uz6rqjQs5L" role="2Oq$k0" />
                <node concept="1DTwFV" id="4Uz6rqjQscU" role="2OqNvi">
                  <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="2CxJDc6Lrr" role="37wK5m">
                <node concept="2WthIp" id="2CxJDc6Lru" role="2Oq$k0" />
                <node concept="1DTwFV" id="2CxJDc6Lrw" role="2OqNvi">
                  <ref role="2WH_rO" node="5eOdMaeZcow" resolve="modules" />
                </node>
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
        <node concept="3clFbF" id="5eOdMaeZgwC" role="3cqZAp">
          <node concept="3y3z36" id="5eOdMaeZgZa" role="3clFbG">
            <node concept="10Nm6u" id="5eOdMaeZh3d" role="3uHU7w" />
            <node concept="2OqwBi" id="5eOdMaeZgyL" role="3uHU7B">
              <node concept="2WthIp" id="5eOdMaeZgwB" role="2Oq$k0" />
              <node concept="2XshWL" id="5eOdMaeZgGu" role="2OqNvi">
                <ref role="2WH_rO" node="5eOdMaeZcBC" resolve="findWebAspect" />
                <node concept="2OqwBi" id="5eOdMaeZgLk" role="2XxRq1">
                  <node concept="2WthIp" id="5eOdMaeZgIL" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5eOdMaeZgVQ" role="2OqNvi">
                    <ref role="2WH_rO" node="5eOdMaeZcow" resolve="modules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

