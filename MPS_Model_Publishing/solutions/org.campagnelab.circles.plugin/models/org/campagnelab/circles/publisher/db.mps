<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
  </languages>
  <imports>
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7fgt" ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb)" />
    <import index="skwk" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client(com.mongodb.driver/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rkxj" ref="r:b1598fca-3527-4718-b3ee-193781dbf052(jetbrains.mps.ide.java.newparser)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util()" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5Ci2biiL$yM">
    <property role="TrG5h" value="ModuleSerializer" />
    <node concept="2tJIrI" id="5Ci2biiL$z6" role="jymVt" />
    <node concept="2YIFZL" id="7MNizV3nHfc" role="jymVt">
      <property role="TrG5h" value="serializeProjectWithModules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7MNizV3nHff" role="3clF47">
        <node concept="3cpWs8" id="5Ci2biiMrQU" role="3cqZAp">
          <node concept="3cpWsn" id="5Ci2biiMrQV" role="3cpWs9">
            <property role="TrG5h" value="database" />
            <node concept="3uibUv" id="5Ci2biiMrQW" role="1tU5fm">
              <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
            </node>
            <node concept="2YIFZM" id="5Ci2biiMrSX" role="33vP2m">
              <ref role="37wK5l" to="7fgt:5Ci2biiLVLQ" resolve="open" />
              <ref role="1Pybhc" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fa_C" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fa_D" role="3cpWs9">
            <property role="TrG5h" value="projectsCol" />
            <node concept="3uibUv" id="3jMt7I9fa_E" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2ShNRf" id="5Ci2biiMds2" role="33vP2m">
              <node concept="1pGfFk" id="5Ci2biiMds3" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWkK" resolve="MongoDbCollection" />
                <node concept="37vLTw" id="5Ci2biiMds4" role="37wK5m">
                  <ref role="3cqZAo" node="5Ci2biiMrQV" resolve="database" />
                </node>
                <node concept="10M0yZ" id="5Ci2biiMds5" role="37wK5m">
                  <ref role="3cqZAo" to="7fgt:5Ci2biiMbe1" resolve="projectsCollection" />
                  <ref role="1PxDUh" to="7fgt:43Z2Okkk0Wq" resolve="Configuration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcdL" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcdM" role="3cpWs9">
            <property role="TrG5h" value="modulesCol" />
            <node concept="3uibUv" id="3jMt7I9fcdN" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2ShNRf" id="3jMt7I9fcdO" role="33vP2m">
              <node concept="1pGfFk" id="3jMt7I9fcdP" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWkK" resolve="MongoDbCollection" />
                <node concept="37vLTw" id="3jMt7I9fcdQ" role="37wK5m">
                  <ref role="3cqZAo" node="5Ci2biiMrQV" resolve="database" />
                </node>
                <node concept="10M0yZ" id="3jMt7I9fcdR" role="37wK5m">
                  <ref role="1PxDUh" to="7fgt:43Z2Okkk0Wq" resolve="Configuration" />
                  <ref role="3cqZAo" to="7fgt:5Ci2biiMbeA" resolve="modulesCollection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcqM" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcqN" role="3cpWs9">
            <property role="TrG5h" value="modelsCol" />
            <node concept="3uibUv" id="3jMt7I9fcqO" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2ShNRf" id="3jMt7I9fcqP" role="33vP2m">
              <node concept="1pGfFk" id="3jMt7I9fcqQ" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWkK" resolve="MongoDbCollection" />
                <node concept="37vLTw" id="3jMt7I9fcqR" role="37wK5m">
                  <ref role="3cqZAo" node="5Ci2biiMrQV" resolve="database" />
                </node>
                <node concept="10M0yZ" id="3jMt7I9fcqS" role="37wK5m">
                  <ref role="1PxDUh" to="7fgt:43Z2Okkk0Wq" resolve="Configuration" />
                  <ref role="3cqZAo" to="7fgt:5Ci2biiMbf8" resolve="modelsCollection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcBT" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcBU" role="3cpWs9">
            <property role="TrG5h" value="nodesCol" />
            <node concept="3uibUv" id="3jMt7I9fcBV" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2ShNRf" id="3jMt7I9fcBW" role="33vP2m">
              <node concept="1pGfFk" id="3jMt7I9fcBX" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWkK" resolve="MongoDbCollection" />
                <node concept="37vLTw" id="3jMt7I9fcBY" role="37wK5m">
                  <ref role="3cqZAo" node="5Ci2biiMrQV" resolve="database" />
                </node>
                <node concept="10M0yZ" id="3jMt7I9fcBZ" role="37wK5m">
                  <ref role="1PxDUh" to="7fgt:43Z2Okkk0Wq" resolve="Configuration" />
                  <ref role="3cqZAo" to="7fgt:5Ci2biiMbfH" resolve="nodesCollection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3jMt7I9f9OZ" role="3cqZAp" />
        <node concept="3cpWs8" id="3jMt7I9f61M" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9f61N" role="3cpWs9">
            <property role="TrG5h" value="projectDoc" />
            <node concept="3uibUv" id="3jMt7I9f61O" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:5Ci2biiM3RC" resolve="ProjectDocument" />
            </node>
            <node concept="2ShNRf" id="3jMt7I9f67Q" role="33vP2m">
              <node concept="1pGfFk" id="3jMt7I9f6eU" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiM433" resolve="ProjectDocument" />
                <node concept="2OqwBi" id="3jMt7I9f6jZ" role="37wK5m">
                  <node concept="37vLTw" id="3jMt7I9f6fw" role="2Oq$k0">
                    <ref role="3cqZAo" node="7MNizV3nHgo" resolve="project" />
                  </node>
                  <node concept="liA8E" id="3jMt7I9f6Ep" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="5Ci2biiMreq" role="3cqZAp">
          <node concept="3clFbS" id="5Ci2biiMres" role="2LFqv$">
            <node concept="3cpWs8" id="3jMt7I9f73L" role="3cqZAp">
              <node concept="3cpWsn" id="3jMt7I9f73M" role="3cpWs9">
                <property role="TrG5h" value="moduleDoc" />
                <node concept="3uibUv" id="3jMt7I9f73N" role="1tU5fm">
                  <ref role="3uigEE" to="7fgt:5Ci2biiM7L2" resolve="ModuleDocument" />
                </node>
                <node concept="2ShNRf" id="3jMt7I9f79N" role="33vP2m">
                  <node concept="1pGfFk" id="3jMt7I9f7nJ" role="2ShVmc">
                    <ref role="37wK5l" to="7fgt:5Ci2biiM8Mn" resolve="ModuleDocument" />
                    <node concept="2OqwBi" id="3jMt7I9f7ph" role="37wK5m">
                      <node concept="37vLTw" id="3jMt7I9f7or" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Ci2biiMret" resolve="module" />
                      </node>
                      <node concept="liA8E" id="3jMt7I9f7vg" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleName():java.lang.String" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1DcWWT" id="5Ci2biiMrT$" role="3cqZAp">
              <node concept="3clFbS" id="5Ci2biiMrTA" role="2LFqv$">
                <node concept="3cpWs8" id="3jMt7I9f7Ip" role="3cqZAp">
                  <node concept="3cpWsn" id="3jMt7I9f7Iq" role="3cpWs9">
                    <property role="TrG5h" value="modelDoc" />
                    <node concept="3uibUv" id="3jMt7I9f7Ir" role="1tU5fm">
                      <ref role="3uigEE" to="7fgt:5Ci2biiM7TL" resolve="ModelDocument" />
                    </node>
                    <node concept="2ShNRf" id="3jMt7I9f7Mx" role="33vP2m">
                      <node concept="1pGfFk" id="3jMt7I9f80o" role="2ShVmc">
                        <ref role="37wK5l" to="7fgt:5Ci2biiMadX" resolve="ModelDocument" />
                        <node concept="2OqwBi" id="3jMt7I9f823" role="37wK5m">
                          <node concept="37vLTw" id="3jMt7I9f817" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Ci2biiMrTB" resolve="model" />
                          </node>
                          <node concept="liA8E" id="3jMt7I9f88p" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelName():java.lang.String" resolve="getModelName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="5Ci2biiMtvj" role="3cqZAp">
                  <node concept="3clFbS" id="5Ci2biiMtvl" role="2LFqv$">
                    <node concept="3cpWs8" id="5Ci2biiPQ3Q" role="3cqZAp">
                      <node concept="3cpWsn" id="5Ci2biiPQ3R" role="3cpWs9">
                        <property role="TrG5h" value="nodeDoc" />
                        <node concept="3uibUv" id="5Ci2biiPQ3S" role="1tU5fm">
                          <ref role="3uigEE" to="7fgt:5Ci2biiM7U$" resolve="RootNodeDocument" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="3jMt7I9ewiw" role="3cqZAp">
                      <node concept="3clFbS" id="3jMt7I9ewiy" role="3clFbx">
                        <node concept="3clFbF" id="3jMt7I9eQL$" role="3cqZAp">
                          <node concept="37vLTI" id="3jMt7I9eQO5" role="3clFbG">
                            <node concept="2ShNRf" id="3jMt7I9eQPI" role="37vLTx">
                              <node concept="1pGfFk" id="3jMt7I9eQPG" role="2ShVmc">
                                <ref role="37wK5l" to="7fgt:5Ci2biiMag0" resolve="RootNodeDocument" />
                                <node concept="2YIFZM" id="6GMbeB5EohJ" role="37wK5m">
                                  <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.getProperty(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="getProperty" />
                                  <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                                  <node concept="37vLTw" id="3jMt7I9f4CY" role="37wK5m">
                                    <ref role="3cqZAo" node="5Ci2biiMtvm" resolve="snode" />
                                  </node>
                                  <node concept="Xl_RD" id="3jMt7I9f55Y" role="37wK5m">
                                    <property role="Xl_RC" value="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="3jMt7I9eQLy" role="37vLTJ">
                              <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3jMt7I9ewp_" role="3clFbw">
                        <node concept="37vLTw" id="3jMt7I9ewjL" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Ci2biiMtvm" resolve="snode" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9ews9" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isInstanceOfConcept" />
                          <node concept="35c_gC" id="3jMt7I9eQIJ" role="37wK5m">
                            <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="3jMt7I9eR54" role="9aQIa">
                        <node concept="3clFbS" id="3jMt7I9eR55" role="9aQI4">
                          <node concept="3clFbF" id="3jMt7I9eR5L" role="3cqZAp">
                            <node concept="37vLTI" id="3jMt7I9eR5M" role="3clFbG">
                              <node concept="2ShNRf" id="3jMt7I9eR5N" role="37vLTx">
                                <node concept="1pGfFk" id="3jMt7I9eR5O" role="2ShVmc">
                                  <ref role="37wK5l" to="7fgt:5Ci2biiMafV" resolve="RootNodeDocument" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="3jMt7I9eR5T" role="37vLTJ">
                                <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3jMt7I9f8SA" role="3cqZAp">
                      <node concept="2OqwBi" id="3jMt7I9f8Vu" role="3clFbG">
                        <node concept="37vLTw" id="3jMt7I9f8S$" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9f8Xz" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiMagC" resolve="setModelId" />
                          <node concept="2OqwBi" id="3jMt7I9f8Zs" role="37wK5m">
                            <node concept="37vLTw" id="3jMt7I9f8Yn" role="2Oq$k0">
                              <ref role="3cqZAo" node="3jMt7I9f7Iq" resolve="modelDoc" />
                            </node>
                            <node concept="liA8E" id="3jMt7I9f9JG" role="2OqNvi">
                              <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3jMt7I9ff1E" role="3cqZAp">
                      <node concept="2OqwBi" id="3jMt7I9ff62" role="3clFbG">
                        <node concept="37vLTw" id="3jMt7I9ff1C" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9ffex" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiMage" resolve="setSvgFragment" />
                          <node concept="Xl_RD" id="4QJEJ14Qm5u" role="37wK5m">
                            <property role="Xl_RC" value="&lt;svg xmlns=\&quot;http://www.w3.org/2000/svg\&quot; xmlns:xlink=\&quot;http://www.w3.org/1999/xlink\&quot; xmlns:jfreesvg=\&quot;http://www.jfree.org/jfreesvg/svg\&quot; width=\&quot;656\&quot; height=\&quot;376\&quot; text-rendering=\&quot;auto\&quot; shape-rendering=\&quot;auto\&quot;&gt;\n&lt;defs&gt;&lt;clipPath id=\&quot;705421913357262clip-0\&quot;&gt;&lt;path d=\&quot;M 0.0 0.0 L 20.0 0.0 L 20.0 20.0 L 0.0 20.0 L 0.0 0.0 Z \&quot;/&gt;&lt;/clipPath&gt;\n&lt;clipPath id=\&quot;705421913357262clip-1\&quot;&gt;&lt;path d=\&quot;M 0.0 0.0 L 0.0 36.0 L 10.0 36.0 L 10.0 0.0 Z \&quot;/&gt;&lt;/clipPath&gt;\n&lt;clipPath id=\&quot;705421913357262clip-2\&quot;&gt;&lt;path d=\&quot;M 0.0 0.0 L 0.0 40.0 L 12.0 40.0 L 12.0 0.0 Z \&quot;/&gt;&lt;/clipPath&gt;\n&lt;/defs&gt;\n&lt;g id=\&quot;{&amp;quot;moduleId&amp;quot;=&amp;quot;766a7fab-c925-4c96-b3e5-1f6a8e96f6d5&amp;quot;, &amp;quot;modelId&amp;quot;=&amp;quot;r:6a66b146-ac09-46e7-a5cf-62b1c04652a3&amp;quot;, &amp;quot;nodeId&amp;quot;=&amp;quot;4545757943691427566&amp;quot;\&quot;&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;40\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;build&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;73\&quot; y=\&quot;40\&quot; style=\&quot;fill: rgb(0,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;Testing&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;137\&quot; y=\&quot;40\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;generates&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;217\&quot; y=\&quot;40\&quot; style=\&quot;fill: rgb(0,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;build2.xml&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;57\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;76\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;base directory:&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;153\&quot; y=\&quot;76\&quot; style=\&quot;fill: rgb(0,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;.&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;153\&quot; y=\&quot;93\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;/Users/fac2003/MPSProjects/git/Editor2PDF/solutions/Playground&lt;/text&gt;&lt;/g&gt;&lt;rect x=\&quot;0.0\&quot; y=\&quot;0.0\&quot; width=\&quot;20.0\&quot; height=\&quot;20.0\&quot; style=\&quot;fill: rgb(236,236,236); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1.0,0.0,0.0,1.0,628.0,34.0)\&quot; clip-path=\&quot;url(#705421913357262clip-0)\&quot;/&gt;&lt;image preserveAspectRatio=\&quot;none\&quot; xlink:href=\&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAsCAYAAABcxymWAAABBUlEQVR42u2VPYqEUBCE5xZ7iznG3mJusSeaAyiYGRiICoriv6IGKuLvARSNau2BebC4arDhWtDZ97qrX1B9u/1VwzB8NE3z+a4N0LbtI8syz/d9WJYFwzCg6zp+dMjz/Om6LpIkQd/3WJYFbzGQIOrSdR1+ExtHnfYgBpKnOI5xpJe3o5EMpNVps3mez0FVVXGmFyjL8gVe4AX+V5CSYpqm85AyTRN1XR+DpDAM4TjOOViW5VPTNBRFcQyu4++UkYqi7MIsw1ePD9u2IUkSyPM6BeM4bkFaqqqqryiKQDZEUYQgCOB5HhzHYXOEKPjJc5qmCIIAnueBDsHe1brT/9IjskT1DRg613lOrzuwAAAAAElFTkSuQmCC\&quot; clip-path=\&quot;url(#705421913357262clip-1)\&quot; transform=\&quot;matrix(0.5,0.0,0.0,0.5,630.0,36.0)\&quot; x=\&quot;0.0\&quot; y=\&quot;0.0\&quot; width=\&quot;10.0\&quot; height=\&quot;44.0\&quot;/&gt;\n&lt;image preserveAspectRatio=\&quot;none\&quot; xlink:href=\&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAsCAYAAAB/nHhDAAAARklEQVR42u3NMREAMAgEwTcaF7GFDlo0UGCDqPgqdzNXr+RuZo5zZeY615oDAAAAAAAAAAAAAAAA+AmIiHWuqlrn6u7r/AEccrFSW+vEagAAAABJRU5ErkJggg==\&quot; clip-path=\&quot;url(#705421913357262clip-2)\&quot; transform=\&quot;matrix(0.5,0.0,0.0,0.5,635.0,36.0)\&quot; x=\&quot;0.0\&quot; y=\&quot;0.0\&quot; width=\&quot;24.0\&quot; height=\&quot;44.0\&quot;/&gt;\n&lt;image preserveAspectRatio=\&quot;none\&quot; xlink:href=\&quot;data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAsCAYAAABcxymWAAABBElEQVR42u2VzYmEQBSEJ4vNYsLYLDaLjWgCUPDmwYOooCj+K+pBRfwNQNFTLa8Zd5GZcbyvBX3qr18X71B1uRxV0zSf6xmG4eMlqOs6DMOAZVnwfR9Zlnlt2349gLhrWRb0fY8kSeC6LvI8v21+wBN1XcemE7wLrjBN/rWBHcVxzDy/BVcLzOseOM8z2witbhckqap6DJRl+QRP8AT/IzhN07GkqOsapmm+DynHcRCGIXZjrygKaJqGsixvL0GCFEVZs/G6AcdxpNfMkyRJsG2bPP61A8dx4HkegiBAFEX2XRRFqKrqe9MKFOie5yEIAqRpyjxRwD+UE42nQ5f39ro+K64fIzvXeZLbzGIAAAAASUVORK5CYII=\&quot; clip-path=\&quot;url(#705421913357262clip-1)\&quot; transform=\&quot;matrix(0.5,0.0,0.0,0.5,641.0,36.0)\&quot; x=\&quot;0.0\&quot; y=\&quot;0.0\&quot; width=\&quot;10.0\&quot; height=\&quot;44.0\&quot;/&gt;\n&lt;g transform=\&quot;matrix(1.0,0.0,0.0,1.0,628.0,34.0)\&quot;&gt;&lt;text x=\&quot;4.0\&quot; y=\&quot;15.0\&quot; style=\&quot;fill: rgb(29,29,29); fill-opacity: 1.0; font-family: Helvetica Neue; font-size: 13px; \&quot; clip-path=\&quot;url(#705421913357262clip-0)\&quot;&gt;...&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;110\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;127\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;use plugins:&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;144\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&amp;lt;&amp;lt; ... &amp;gt;&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;161\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;178\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;macros:&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;195\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&amp;lt;&amp;lt; ... &amp;gt;&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;212\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;229\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;dependencies:&lt;/text&gt;&lt;/g&gt;&lt;g id=\&quot;{&amp;quot;moduleId&amp;quot;=&amp;quot;766a7fab-c925-4c96-b3e5-1f6a8e96f6d5&amp;quot;, &amp;quot;modelId&amp;quot;=&amp;quot;r:6a66b146-ac09-46e7-a5cf-62b1c04652a3&amp;quot;, &amp;quot;nodeId&amp;quot;=&amp;quot;4545757943691427598&amp;quot;\&quot;&gt;&lt;rect x=\&quot;41\&quot; y=\&quot;233\&quot; width=\&quot;120\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;rect x=\&quot;41\&quot; y=\&quot;233\&quot; width=\&quot;120\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;246\&quot; style=\&quot;fill: rgb(255,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;&amp;lt;no dependency&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;rect x=\&quot;0.0\&quot; y=\&quot;0.0\&quot; width=\&quot;121.0\&quot; height=\&quot;3.0\&quot; style=\&quot;fill: black;; fill-opacity: 1.0\&quot; transform=\&quot;matrix(1.0,0.0,0.0,1.0,15.0,221.0)\&quot; /&gt;&lt;/g&gt;\n&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;263\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;280\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;project structure:&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;297\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&amp;lt;&amp;lt; ... &amp;gt;&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;314\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;331\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;default layout:&lt;/text&gt;&lt;/g&gt;&lt;g id=\&quot;{&amp;quot;moduleId&amp;quot;=&amp;quot;766a7fab-c925-4c96-b3e5-1f6a8e96f6d5&amp;quot;, &amp;quot;modelId&amp;quot;=&amp;quot;r:6a66b146-ac09-46e7-a5cf-62b1c04652a3&amp;quot;, &amp;quot;nodeId&amp;quot;=&amp;quot;4545757943691427568&amp;quot;\&quot;&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;348\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&amp;lt;empty&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;365\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&lt;/text&gt;&lt;/g&gt;&lt;/g&gt;\n&lt;g id=\&quot;{&amp;quot;moduleId&amp;quot;=&amp;quot;766a7fab-c925-4c96-b3e5-1f6a8e96f6d5&amp;quot;, &amp;quot;modelId&amp;quot;=&amp;quot;r:6a66b146-ac09-46e7-a5cf-62b1c04652a3&amp;quot;, &amp;quot;nodeId&amp;quot;=&amp;quot;4545757943691427602&amp;quot;\&quot;&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;25\&quot; y=\&quot;382\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;workflow&lt;/text&gt;&lt;/g&gt;&lt;g id=\&quot;{&amp;quot;moduleId&amp;quot;=&amp;quot;766a7fab-c925-4c96-b3e5-1f6a8e96f6d5&amp;quot;, &amp;quot;modelId&amp;quot;=&amp;quot;r:6a66b146-ac09-46e7-a5cf-62b1c04652a3&amp;quot;, &amp;quot;nodeId&amp;quot;=&amp;quot;4545757943691427605&amp;quot;\&quot;&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;41\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;ant taskdef&lt;/text&gt;&lt;/g&gt;&lt;rect x=\&quot;137\&quot; y=\&quot;386\&quot; width=\&quot;72\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;rect x=\&quot;137\&quot; y=\&quot;386\&quot; width=\&quot;72\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;137\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(255,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;&amp;lt;no name&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;217\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;class&lt;/text&gt;&lt;/g&gt;&lt;rect x=\&quot;265\&quot; y=\&quot;386\&quot; width=\&quot;136\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;rect x=\&quot;265\&quot; y=\&quot;386\&quot; width=\&quot;136\&quot; height=\&quot;17\&quot; style=\&quot;fill: rgb(255,220,220); fill-opacity: 1.0\&quot; transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot; /&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;265\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(255,0,0); fill-opacity: 1.0; font-family: monospace; font-size: 13px; \&quot; &gt;&amp;lt;full class name&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;409\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(48,48,48); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;from&lt;/text&gt;&lt;/g&gt;&lt;g transform=\&quot;matrix(1,0,0,1,-25,-27)\&quot;&gt;&lt;text x=\&quot;449\&quot; y=\&quot;399\&quot; style=\&quot;fill: rgb(128,128,128); fill-opacity: 1.0; font-family: monospace; font-size: 13px; font-weight: bold; \&quot; &gt;&amp;lt;default classpath&amp;gt;&lt;/text&gt;&lt;/g&gt;&lt;/g&gt;\n&lt;/g&gt;\n&lt;/g&gt;\n&lt;/svg&gt;" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="3jMt7I9feGY" role="3cqZAp">
                      <node concept="2OqwBi" id="3jMt7I9feKs" role="3clFbG">
                        <node concept="37vLTw" id="3jMt7I9feGW" role="2Oq$k0">
                          <ref role="3cqZAo" node="3jMt7I9fcBU" resolve="nodesCol" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9feLX" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
                          <node concept="2OqwBi" id="3jMt7I9feNJ" role="37wK5m">
                            <node concept="37vLTw" id="3jMt7I9feMI" role="2Oq$k0">
                              <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                            </node>
                            <node concept="liA8E" id="3jMt7I9feWu" role="2OqNvi">
                              <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="5Ci2biiMtvm" role="1Duv9x">
                    <property role="TrG5h" value="snode" />
                    <node concept="3uibUv" id="5Ci2biiMtya" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="5Ci2biiMtDc" role="1DdaDG">
                    <node concept="37vLTw" id="5Ci2biiMtBE" role="2Oq$k0">
                      <ref role="3cqZAo" node="5Ci2biiMrTB" resolve="model" />
                    </node>
                    <node concept="liA8E" id="5Ci2biiMtIy" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3jMt7I9fenM" role="3cqZAp">
                  <node concept="2OqwBi" id="3jMt7I9fenN" role="3clFbG">
                    <node concept="37vLTw" id="3jMt7I9fevb" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jMt7I9fcqN" resolve="modelsCol" />
                    </node>
                    <node concept="liA8E" id="3jMt7I9fenP" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
                      <node concept="2OqwBi" id="3jMt7I9fenQ" role="37wK5m">
                        <node concept="37vLTw" id="3jMt7I9fewD" role="2Oq$k0">
                          <ref role="3cqZAo" node="3jMt7I9f7Iq" resolve="modelDoc" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9fenS" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3jMt7I9f89V" role="3cqZAp">
                  <node concept="2OqwBi" id="3jMt7I9f8eI" role="3clFbG">
                    <node concept="37vLTw" id="3jMt7I9f89T" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jMt7I9f73M" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="3jMt7I9f8gS" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM8MG" resolve="addModel" />
                      <node concept="2OqwBi" id="3jMt7I9f8jh" role="37wK5m">
                        <node concept="37vLTw" id="3jMt7I9f8hQ" role="2Oq$k0">
                          <ref role="3cqZAo" node="3jMt7I9f7Iq" resolve="modelDoc" />
                        </node>
                        <node concept="liA8E" id="3jMt7I9f8lD" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="5Ci2biiMrTB" role="1Duv9x">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="5Ci2biiMsiQ" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="5Ci2biiMsTw" role="1DdaDG">
                <node concept="37vLTw" id="5Ci2biiMsSn" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Ci2biiMret" resolve="module" />
                </node>
                <node concept="liA8E" id="5Ci2biiMsX4" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3jMt7I9fdx2" role="3cqZAp">
              <node concept="2OqwBi" id="3jMt7I9fdBd" role="3clFbG">
                <node concept="37vLTw" id="3jMt7I9fdx0" role="2Oq$k0">
                  <ref role="3cqZAo" node="3jMt7I9fcdM" resolve="modulesCol" />
                </node>
                <node concept="liA8E" id="3jMt7I9fdCL" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
                  <node concept="2OqwBi" id="3jMt7I9fdEz" role="37wK5m">
                    <node concept="37vLTw" id="3jMt7I9fdDy" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jMt7I9f73M" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="3jMt7I9fdI_" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3jMt7I9f6KS" role="3cqZAp">
              <node concept="2OqwBi" id="3jMt7I9f6Qo" role="3clFbG">
                <node concept="37vLTw" id="3jMt7I9f6KQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3jMt7I9f61N" resolve="projectDoc" />
                </node>
                <node concept="liA8E" id="3jMt7I9f6Sx" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM43o" resolve="addModule" />
                  <node concept="2OqwBi" id="3jMt7I9f7zA" role="37wK5m">
                    <node concept="37vLTw" id="3jMt7I9f7yy" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jMt7I9f73M" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="3jMt7I9f7A2" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="5Ci2biiMret" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5Ci2biiMrhf" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="37vLTw" id="5Ci2biiMrop" role="1DdaDG">
            <ref role="3cqZAo" node="7MNizV3nHgX" resolve="modules" />
          </node>
        </node>
        <node concept="3clFbF" id="3jMt7I9fbhW" role="3cqZAp">
          <node concept="2OqwBi" id="3jMt7I9fbqR" role="3clFbG">
            <node concept="37vLTw" id="3jMt7I9fbhU" role="2Oq$k0">
              <ref role="3cqZAo" node="3jMt7I9fa_D" resolve="projectsCol" />
            </node>
            <node concept="liA8E" id="3jMt7I9fbsc" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
              <node concept="2OqwBi" id="3jMt7I9fbtY" role="37wK5m">
                <node concept="37vLTw" id="3jMt7I9fbsX" role="2Oq$k0">
                  <ref role="3cqZAo" node="3jMt7I9f61N" resolve="projectDoc" />
                </node>
                <node concept="liA8E" id="3jMt7I9fbw$" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7MNizV3nHeJ" role="1B3o_S" />
      <node concept="3cqZAl" id="7MNizV3nHf5" role="3clF45" />
      <node concept="37vLTG" id="7MNizV3nHgo" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7MNizV3nHgn" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="7MNizV3nHgX" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="7MNizV3nHj7" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7MNizV3nHjI" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiMrc5" role="jymVt" />
    <node concept="2YIFZL" id="7MNizV3nRoh" role="jymVt">
      <property role="TrG5h" value="dropDb" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7MNizV3nXm$" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7MNizV3nXm_" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="7MNizV3nRok" role="3clF47">
        <node concept="3clFbF" id="7MNizV3nRpq" role="3cqZAp">
          <node concept="2OqwBi" id="7MNizV3nRqd" role="3clFbG">
            <node concept="2YIFZM" id="7MNizV3nRpN" role="2Oq$k0">
              <ref role="37wK5l" node="7MNizV3nJfH" resolve="getGenerator" />
              <ref role="1Pybhc" node="43Z2OkkkeXA" resolve="DbFactory" />
            </node>
            <node concept="liA8E" id="7MNizV3nRr6" role="2OqNvi">
              <ref role="37wK5l" node="7MNizV3nJnZ" resolve="dropSchema" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7MNizV3nRnn" role="1B3o_S" />
      <node concept="3cqZAl" id="7MNizV3nRoa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiMraI" role="jymVt" />
    <node concept="2YIFZL" id="7MNizV3nXfs" role="jymVt">
      <property role="TrG5h" value="createDb" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="37vLTG" id="7MNizV3nXog" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7MNizV3nXoh" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="7MNizV3nXft" role="3clF47">
        <node concept="3clFbF" id="7MNizV3nXfu" role="3cqZAp">
          <node concept="2OqwBi" id="7MNizV3nXfv" role="3clFbG">
            <node concept="2YIFZM" id="7MNizV3nXfw" role="2Oq$k0">
              <ref role="37wK5l" node="7MNizV3nJfH" resolve="getGenerator" />
              <ref role="1Pybhc" node="43Z2OkkkeXA" resolve="DbFactory" />
            </node>
            <node concept="liA8E" id="7MNizV3nXfx" role="2OqNvi">
              <ref role="37wK5l" node="7MNizV3nHMn" resolve="createSchema" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7MNizV3nXfy" role="1B3o_S" />
      <node concept="3cqZAl" id="7MNizV3nXfz" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiMqYM" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiL$yN" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2OkkkeXA">
    <property role="TrG5h" value="DbFactory" />
    <node concept="2tJIrI" id="43Z2OkkkeXU" role="jymVt" />
    <node concept="2YIFZL" id="7MNizV3nJfH" role="jymVt">
      <property role="TrG5h" value="getGenerator" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7MNizV3nHLp" role="3clF47">
        <node concept="3clFbF" id="7MNizV3nHLS" role="3cqZAp">
          <node concept="2ShNRf" id="7MNizV3nHLQ" role="3clFbG">
            <node concept="HV5vD" id="7MNizV3nJd$" role="2ShVmc">
              <ref role="HV5vE" to="7fgt:7MNizV3nHNm" resolve="MongoDbSchemaManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7MNizV3nHLd" role="3clF45">
        <ref role="3uigEE" node="7TSDInKxqHQ" resolve="SchemaManager" />
      </node>
      <node concept="3Tmbuc" id="7MNizV3nHKY" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="43Z2OkkkeXB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7TSDInKxqHQ">
    <property role="TrG5h" value="SchemaManager" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7MNizV3nJov" role="jymVt" />
    <node concept="3clFb_" id="7MNizV3nJnZ" role="jymVt">
      <property role="TrG5h" value="dropSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="7MNizV3nJo0" role="3clF47" />
      <node concept="3cqZAl" id="7MNizV3nJo1" role="3clF45" />
      <node concept="3Tm1VV" id="7MNizV3nJo2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7TSDInKxrGS" role="jymVt" />
    <node concept="3clFb_" id="7MNizV3nHMn" role="jymVt">
      <property role="TrG5h" value="createSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="7TSDInKxrHp" role="3clF47" />
      <node concept="3cqZAl" id="7TSDInKxrHf" role="3clF45" />
      <node concept="3Tm1VV" id="7TSDInKxrH0" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7TSDInKxqHR" role="1B3o_S" />
  </node>
</model>

