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
    <import index="ha1n" ref="r:117db92d-261b-4ba2-97fe-04df0369434b(org.campagnelab.mps.editor2pdf.behavior)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="3t4d" ref="r:7a57a805-2fc1-49f5-991a-6bd531b99008(org.campagnelab.mps.editor2pdf.structure)" implicit="true" />
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
        <node concept="3cpWs8" id="3jMt7I9fa_C" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fa_D" role="3cpWs9">
            <property role="TrG5h" value="projectsCol" />
            <node concept="3uibUv" id="3jMt7I9fa_E" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2YIFZM" id="3bxG5bqwB8b" role="33vP2m">
              <ref role="37wK5l" to="7fgt:3bxG5bqwAFA" resolve="getProjectsCollection" />
              <ref role="1Pybhc" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcdL" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcdM" role="3cpWs9">
            <property role="TrG5h" value="modulesCol" />
            <node concept="3uibUv" id="3jMt7I9fcdN" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2YIFZM" id="3bxG5bqwBbX" role="33vP2m">
              <ref role="37wK5l" to="7fgt:3bxG5bqwAIr" resolve="getModulesCollection" />
              <ref role="1Pybhc" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcqM" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcqN" role="3cpWs9">
            <property role="TrG5h" value="modelsCol" />
            <node concept="3uibUv" id="3jMt7I9fcqO" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2YIFZM" id="6U_J9TPRzH3" role="33vP2m">
              <ref role="37wK5l" to="7fgt:3bxG5bqwALg" resolve="getModelsCollection" />
              <ref role="1Pybhc" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3jMt7I9fcBT" role="3cqZAp">
          <node concept="3cpWsn" id="3jMt7I9fcBU" role="3cpWs9">
            <property role="TrG5h" value="nodesCol" />
            <node concept="3uibUv" id="3jMt7I9fcBV" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
            </node>
            <node concept="2YIFZM" id="3bxG5bqwBlL" role="33vP2m">
              <ref role="37wK5l" to="7fgt:3bxG5bqwAO5" resolve="getNodesCollection" />
              <ref role="1Pybhc" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
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
            <node concept="3clFbF" id="6RW8DBDaYxI" role="3cqZAp">
              <node concept="2OqwBi" id="6RW8DBDaYMJ" role="3clFbG">
                <node concept="37vLTw" id="6RW8DBDaYxG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3jMt7I9f73M" resolve="moduleDoc" />
                </node>
                <node concept="liA8E" id="6RW8DBDaZlh" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                  <node concept="2OqwBi" id="6RW8DBDaZrh" role="37wK5m">
                    <node concept="2OqwBi" id="6RW8DBDaZnx" role="2Oq$k0">
                      <node concept="37vLTw" id="6RW8DBDaZmp" role="2Oq$k0">
                        <ref role="3cqZAo" node="5Ci2biiMret" resolve="module" />
                      </node>
                      <node concept="liA8E" id="6RW8DBDaZqf" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6RW8DBDaZu9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
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
                <node concept="3clFbF" id="6RW8DBDaXCY" role="3cqZAp">
                  <node concept="2OqwBi" id="6RW8DBDaXO4" role="3clFbG">
                    <node concept="37vLTw" id="6RW8DBDaXCW" role="2Oq$k0">
                      <ref role="3cqZAo" node="3jMt7I9f7Iq" resolve="modelDoc" />
                    </node>
                    <node concept="liA8E" id="6RW8DBDaXST" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                      <node concept="2OqwBi" id="6RW8DBDaY2c" role="37wK5m">
                        <node concept="2OqwBi" id="6RW8DBDaXUI" role="2Oq$k0">
                          <node concept="37vLTw" id="6RW8DBDaXTE" role="2Oq$k0">
                            <ref role="3cqZAo" node="5Ci2biiMrTB" resolve="model" />
                          </node>
                          <node concept="liA8E" id="6RW8DBDaY1b" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6RW8DBDaYfS" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
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
                    <node concept="3clFbF" id="6RW8DBDaWRk" role="3cqZAp">
                      <node concept="2OqwBi" id="6RW8DBDaWZf" role="3clFbG">
                        <node concept="37vLTw" id="6RW8DBDaWRi" role="2Oq$k0">
                          <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                        </node>
                        <node concept="liA8E" id="6RW8DBDaX7I" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                          <node concept="2OqwBi" id="6RW8DBDaXdl" role="37wK5m">
                            <node concept="2OqwBi" id="6RW8DBDaX9V" role="2Oq$k0">
                              <node concept="37vLTw" id="6RW8DBDaX8z" role="2Oq$k0">
                                <ref role="3cqZAo" node="5Ci2biiMtvm" resolve="snode" />
                              </node>
                              <node concept="liA8E" id="6RW8DBDaXcc" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6RW8DBDaXrC" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
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
                    <node concept="3cpWs8" id="6RW8DBDcdDj" role="3cqZAp">
                      <node concept="3cpWsn" id="6RW8DBDcdDk" role="3cpWs9">
                        <property role="TrG5h" value="writer" />
                        <node concept="3uibUv" id="6RW8DBDcdDl" role="1tU5fm">
                          <ref role="3uigEE" node="6RW8DBDcbcU" resolve="NodeWriter" />
                        </node>
                        <node concept="2ShNRf" id="6RW8DBDcdLF" role="33vP2m">
                          <node concept="1pGfFk" id="6RW8DBDcdVz" role="2ShVmc">
                            <ref role="37wK5l" node="6RW8DBDcbuG" resolve="NodeWriter" />
                            <node concept="37vLTw" id="6RW8DBDce8B" role="37wK5m">
                              <ref role="3cqZAo" node="5Ci2biiPQ3R" resolve="nodeDoc" />
                            </node>
                            <node concept="37vLTw" id="6RW8DBDcecQ" role="37wK5m">
                              <ref role="3cqZAo" node="3jMt7I9fcBU" resolve="nodesCol" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6RW8DBD9aVa" role="3cqZAp">
                      <node concept="3cpWsn" id="6RW8DBD9aVg" role="3cpWs9">
                        <property role="TrG5h" value="annotation" />
                        <node concept="3Tqbb2" id="6RW8DBD9b1m" role="1tU5fm">
                          <ref role="ehGHo" to="3t4d:7_Pg6u6xjfG" resolve="EditorAnnotation" />
                        </node>
                        <node concept="2ShNRf" id="6RW8DBD9b3i" role="33vP2m">
                          <node concept="3zrR0B" id="6RW8DBD9cb8" role="2ShVmc">
                            <node concept="3Tqbb2" id="6RW8DBD9cba" role="3zrR0E">
                              <ref role="ehGHo" to="3t4d:7_Pg6u6xjfG" resolve="EditorAnnotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6RW8DBD9civ" role="3cqZAp">
                      <node concept="2OqwBi" id="6RW8DBD9cpw" role="3clFbG">
                        <node concept="37vLTw" id="6RW8DBD9cit" role="2Oq$k0">
                          <ref role="3cqZAo" node="6RW8DBD9aVg" resolve="annotation" />
                        </node>
                        <node concept="2qgKlT" id="6RW8DBD9c$Y" role="2OqNvi">
                          <ref role="37wK5l" to="ha1n:TE4nIlnV$W" resolve="renderSvg" />
                          <node concept="37vLTw" id="6RW8DBD9cAA" role="37wK5m">
                            <ref role="3cqZAo" node="5Ci2biiMtvm" resolve="snode" />
                          </node>
                          <node concept="37vLTw" id="6RW8DBD9cEo" role="37wK5m">
                            <ref role="3cqZAo" node="6RW8DBDcdDk" resolve="writer" />
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
      <property role="TrG5h" value="dropProject" />
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
              <ref role="37wK5l" node="3bxG5bqw$1Z" resolve="dropProject" />
              <node concept="37vLTw" id="3bxG5bqw$9f" role="37wK5m">
                <ref role="3cqZAo" node="7MNizV3nXm$" resolve="project" />
              </node>
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
    <node concept="2tJIrI" id="3bxG5bqw$1w" role="jymVt" />
    <node concept="3clFb_" id="3bxG5bqw$1Z" role="jymVt">
      <property role="TrG5h" value="dropProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="3bxG5bqw$56" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3bxG5bqw$57" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="3bxG5bqw$20" role="3clF47" />
      <node concept="3cqZAl" id="3bxG5bqw$21" role="3clF45" />
      <node concept="3Tm1VV" id="3bxG5bqw$22" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3bxG5bqw$1M" role="jymVt" />
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
  <node concept="312cEu" id="6RW8DBDcbcU">
    <property role="TrG5h" value="NodeWriter" />
    <node concept="3Tm1VV" id="6RW8DBDcbcV" role="1B3o_S" />
    <node concept="3uibUv" id="6RW8DBDcbdV" role="EKbjA">
      <ref role="3uigEE" to="ha1n:6RW8DBDbXG8" resolve="SVGWriter" />
    </node>
    <node concept="312cEg" id="6RW8DBDcbFa" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="node" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6RW8DBDcbBr" role="1B3o_S" />
      <node concept="3uibUv" id="6RW8DBDcbDR" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:5Ci2biiM7U$" resolve="RootNodeDocument" />
      </node>
    </node>
    <node concept="312cEg" id="6RW8DBDcbYL" role="jymVt">
      <property role="TrG5h" value="parentCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6RW8DBDcbYM" role="1B3o_S" />
      <node concept="3uibUv" id="6RW8DBDcbYO" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
      </node>
    </node>
    <node concept="2tJIrI" id="6RW8DBDcc87" role="jymVt" />
    <node concept="3clFbW" id="6RW8DBDcbuG" role="jymVt">
      <node concept="3cqZAl" id="6RW8DBDcbuI" role="3clF45" />
      <node concept="3Tm1VV" id="6RW8DBDcbuJ" role="1B3o_S" />
      <node concept="3clFbS" id="6RW8DBDcbuK" role="3clF47">
        <node concept="3clFbF" id="6RW8DBDcbIb" role="3cqZAp">
          <node concept="37vLTI" id="6RW8DBDcbNm" role="3clFbG">
            <node concept="37vLTw" id="6RW8DBDcbQm" role="37vLTx">
              <ref role="3cqZAo" node="6RW8DBDcb_s" resolve="node" />
            </node>
            <node concept="2OqwBi" id="6RW8DBDcbID" role="37vLTJ">
              <node concept="Xjq3P" id="6RW8DBDcbIa" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RW8DBDcbKN" role="2OqNvi">
                <ref role="2Oxat5" node="6RW8DBDcbFa" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6RW8DBDcccr" role="3cqZAp">
          <node concept="37vLTI" id="6RW8DBDcchB" role="3clFbG">
            <node concept="37vLTw" id="6RW8DBDcclf" role="37vLTx">
              <ref role="3cqZAo" node="6RW8DBDcbQY" resolve="parentCollection" />
            </node>
            <node concept="2OqwBi" id="6RW8DBDccdh" role="37vLTJ">
              <node concept="Xjq3P" id="6RW8DBDcccp" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RW8DBDccfB" role="2OqNvi">
                <ref role="2Oxat5" node="6RW8DBDcbYL" resolve="parentCollection" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6RW8DBDcb_s" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="6RW8DBDcb_r" role="1tU5fm">
          <ref role="3uigEE" to="7fgt:5Ci2biiM7U$" resolve="RootNodeDocument" />
        </node>
      </node>
      <node concept="37vLTG" id="6RW8DBDcbQY" role="3clF46">
        <property role="TrG5h" value="parentCollection" />
        <node concept="3uibUv" id="6RW8DBDcbTo" role="1tU5fm">
          <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6RW8DBDcbsq" role="jymVt" />
    <node concept="3clFb_" id="6RW8DBDcbeq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="write" />
      <node concept="3Tm1VV" id="6RW8DBDcbes" role="1B3o_S" />
      <node concept="3cqZAl" id="6RW8DBDcbet" role="3clF45" />
      <node concept="37vLTG" id="6RW8DBDcbeu" role="3clF46">
        <property role="TrG5h" value="svgFragment" />
        <node concept="17QB3L" id="6RW8DBDcbev" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6RW8DBDcbew" role="3clF47">
        <node concept="3clFbF" id="6RW8DBDccmq" role="3cqZAp">
          <node concept="2OqwBi" id="6RW8DBDccuR" role="3clFbG">
            <node concept="2OqwBi" id="6RW8DBDccnu" role="2Oq$k0">
              <node concept="Xjq3P" id="6RW8DBDccmp" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RW8DBDccra" role="2OqNvi">
                <ref role="2Oxat5" node="6RW8DBDcbFa" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="6RW8DBDccMI" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiMage" resolve="setSvgFragment" />
              <node concept="37vLTw" id="6RW8DBDccOk" role="37wK5m">
                <ref role="3cqZAo" node="6RW8DBDcbeu" resolve="svgFragment" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6RW8DBDcbfS" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="append" />
      <node concept="3Tm1VV" id="6RW8DBDcbfU" role="1B3o_S" />
      <node concept="3cqZAl" id="6RW8DBDcbfV" role="3clF45" />
      <node concept="37vLTG" id="6RW8DBDcbfW" role="3clF46">
        <property role="TrG5h" value="svgFragment" />
        <node concept="17QB3L" id="6RW8DBDcbfX" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6RW8DBDcbfY" role="3clF47">
        <node concept="3clFbF" id="6RW8DBDccQy" role="3cqZAp">
          <node concept="2OqwBi" id="6RW8DBDccQz" role="3clFbG">
            <node concept="2OqwBi" id="6RW8DBDccQ$" role="2Oq$k0">
              <node concept="Xjq3P" id="6RW8DBDccQ_" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RW8DBDccQA" role="2OqNvi">
                <ref role="2Oxat5" node="6RW8DBDcbFa" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="6RW8DBDccQB" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiMage" resolve="setSvgFragment" />
              <node concept="37vLTw" id="6RW8DBDccQC" role="37wK5m">
                <ref role="3cqZAo" node="6RW8DBDcbfW" resolve="svgFragment" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6RW8DBDcbfZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="close" />
      <node concept="3Tm1VV" id="6RW8DBDcbg1" role="1B3o_S" />
      <node concept="3cqZAl" id="6RW8DBDcbg2" role="3clF45" />
      <node concept="3clFbS" id="6RW8DBDcbg3" role="3clF47">
        <node concept="3clFbF" id="6RW8DBDccUg" role="3cqZAp">
          <node concept="2OqwBi" id="6RW8DBDccWx" role="3clFbG">
            <node concept="37vLTw" id="6RW8DBDccUf" role="2Oq$k0">
              <ref role="3cqZAo" node="6RW8DBDcbYL" resolve="parentCollection" />
            </node>
            <node concept="liA8E" id="6RW8DBDccZh" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
              <node concept="2OqwBi" id="6RW8DBDcded" role="37wK5m">
                <node concept="2OqwBi" id="6RW8DBDcd5P" role="2Oq$k0">
                  <node concept="Xjq3P" id="6RW8DBDcd39" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6RW8DBDcda0" role="2OqNvi">
                    <ref role="2Oxat5" node="6RW8DBDcbFa" resolve="node" />
                  </node>
                </node>
                <node concept="liA8E" id="6RW8DBDcdiB" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6RW8DBDcfL2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toString" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="6RW8DBDcfL3" role="1B3o_S" />
      <node concept="17QB3L" id="6RW8DBDcgc4" role="3clF45" />
      <node concept="3clFbS" id="6RW8DBDcfL6" role="3clF47">
        <node concept="3clFbF" id="6RW8DBDcfXu" role="3cqZAp">
          <node concept="2OqwBi" id="6RW8DBDcg4E" role="3clFbG">
            <node concept="2OqwBi" id="6RW8DBDcfYu" role="2Oq$k0">
              <node concept="Xjq3P" id="6RW8DBDcfXr" role="2Oq$k0" />
              <node concept="2OwXpG" id="6RW8DBDcg2a" role="2OqNvi">
                <ref role="2Oxat5" node="6RW8DBDcbFa" resolve="node" />
              </node>
            </node>
            <node concept="liA8E" id="6RW8DBDcgbh" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiMag8" resolve="getSvgFragment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6RW8DBDcfL7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="43Z2Okkk0Wq">
    <property role="TrG5h" value="Configuration" />
    <node concept="2tJIrI" id="43Z2Okkk0WC" role="jymVt" />
    <node concept="Wx3nA" id="7MNizV3oaoI" role="jymVt">
      <property role="TrG5h" value="hostname" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oaoK" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oaoL" role="33vP2m" />
      <node concept="3Tm1VV" id="6R$jUV_7k3I" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7MNizV3oapu" role="jymVt">
      <property role="TrG5h" value="port" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="2dld4O" value="false" />
      <node concept="10Oyi0" id="7MNizV3oapw" role="1tU5fm" />
      <node concept="3cmrfG" id="7MNizV3oapx" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
      <node concept="3Tm1VV" id="6R$jUV_7k3T" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7MNizV3oaqe" role="jymVt">
      <property role="TrG5h" value="username" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oaqg" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oaqh" role="33vP2m" />
      <node concept="3Tm1VV" id="6R$jUV_7k44" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7MNizV3oaqY" role="jymVt">
      <property role="TrG5h" value="pwd" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="false" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oar0" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oar1" role="33vP2m" />
      <node concept="3Tm1VV" id="6R$jUV_7k4f" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkk10b" role="jymVt" />
    <node concept="2tJIrI" id="43Z2Okkk0ZH" role="jymVt" />
    <node concept="3Tm1VV" id="43Z2Okkk0Wr" role="1B3o_S" />
  </node>
</model>

