<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:deb87fab-190d-40b1-8364-c6d9ac5e7577(org.campagnelab.circles.publisher.mongodb.shell)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
  </languages>
  <imports>
    <import index="7fgt" ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb.model)" />
    <import index="skwk" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client(com.mongodb.driver/)" />
    <import index="ncvd" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson.conversions(com.mongodb.driver/)" />
    <import index="n0jz" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client.model(com.mongodb.driver/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="htiy" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson(com.mongodb.driver/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tt5a" ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3t4d" ref="r:7a57a805-2fc1-49f5-991a-6bd531b99008(org.campagnelab.mps.editor2pdf.structure)" />
    <import index="ha1n" ref="r:117db92d-261b-4ba2-97fe-04df0369434b(org.campagnelab.mps.editor2pdf.behavior)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5Ci2biiL$yM">
    <property role="TrG5h" value="ModuleSerializer" />
    <node concept="312cEg" id="3bxG5bqzIrc" role="jymVt">
      <property role="TrG5h" value="db" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzIrd" role="1B3o_S" />
      <node concept="3uibUv" id="3bxG5bqzIrf" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
      </node>
    </node>
    <node concept="312cEg" id="3bxG5bqzIrg" role="jymVt">
      <property role="TrG5h" value="projectsCol" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzIrh" role="1B3o_S" />
      <node concept="3uibUv" id="3bxG5bqzIrj" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
      </node>
    </node>
    <node concept="312cEg" id="3bxG5bqzIrk" role="jymVt">
      <property role="TrG5h" value="modulesCol" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzIrl" role="1B3o_S" />
      <node concept="3uibUv" id="3bxG5bqzIrn" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
      </node>
    </node>
    <node concept="312cEg" id="3bxG5bqzIro" role="jymVt">
      <property role="TrG5h" value="modelsCol" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzIrp" role="1B3o_S" />
      <node concept="3uibUv" id="3bxG5bqzIrr" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
      </node>
    </node>
    <node concept="312cEg" id="3bxG5bqzIrs" role="jymVt">
      <property role="TrG5h" value="nodesCol" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzIrt" role="1B3o_S" />
      <node concept="3uibUv" id="3bxG5bqzIrv" role="1tU5fm">
        <ref role="3uigEE" to="7fgt:43Z2OkkkeYv" resolve="MongoDbCollection" />
      </node>
    </node>
    <node concept="312cEg" id="3bxG5bqzUZh" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="keepAlive" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="3bxG5bqzUv3" role="1B3o_S" />
      <node concept="10P_77" id="3bxG5bqzUYn" role="1tU5fm" />
      <node concept="3clFbT" id="3bxG5bqzWF7" role="33vP2m">
        <property role="3clFbU" value="false" />
      </node>
    </node>
    <node concept="2tJIrI" id="3bxG5bqzGQK" role="jymVt" />
    <node concept="3clFbW" id="3bxG5bqzHqN" role="jymVt">
      <node concept="3cqZAl" id="3bxG5bqzHqP" role="3clF45" />
      <node concept="3Tm1VV" id="3bxG5bqzHqQ" role="1B3o_S" />
      <node concept="3clFbS" id="3bxG5bqzHqR" role="3clF47">
        <node concept="3clFbF" id="3bxG5bqzJ9x" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzJbD" role="3clFbG">
            <node concept="2ShNRf" id="3bxG5bqzJe_" role="37vLTx">
              <node concept="1pGfFk" id="3bxG5bqzJvQ" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:3bxG5bqzytZ" resolve="MongoDbAccess" />
              </node>
            </node>
            <node concept="37vLTw" id="3bxG5bqzJ9w" role="37vLTJ">
              <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzJxV" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzJ_I" role="3clFbG">
            <node concept="2OqwBi" id="3bxG5bqzJDu" role="37vLTx">
              <node concept="37vLTw" id="3bxG5bqzJBq" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
              </node>
              <node concept="liA8E" id="3bxG5bqzJGU" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:3bxG5bqzmBm" resolve="getProjectsCollection" />
              </node>
            </node>
            <node concept="37vLTw" id="3bxG5bqzJxT" role="37vLTJ">
              <ref role="3cqZAo" node="3bxG5bqzIrg" resolve="projectsCol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzJJS" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzJOf" role="3clFbG">
            <node concept="2OqwBi" id="3bxG5bqzJR3" role="37vLTx">
              <node concept="37vLTw" id="3bxG5bqzJPV" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
              </node>
              <node concept="liA8E" id="3bxG5bqzJT_" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:3bxG5bqzmX2" resolve="getModulesCollection" />
              </node>
            </node>
            <node concept="37vLTw" id="3bxG5bqzJJQ" role="37vLTJ">
              <ref role="3cqZAo" node="3bxG5bqzIrk" resolve="modulesCol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzJX7" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzK27" role="3clFbG">
            <node concept="2OqwBi" id="3bxG5bqzK4V" role="37vLTx">
              <node concept="37vLTw" id="3bxG5bqzK3N" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
              </node>
              <node concept="liA8E" id="3bxG5bqzK8r" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:3bxG5bqznhn" resolve="getModelsCollection" />
              </node>
            </node>
            <node concept="37vLTw" id="3bxG5bqzJX5" role="37vLTJ">
              <ref role="3cqZAo" node="3bxG5bqzIro" resolve="modelsCol" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzKcx" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzKgA" role="3clFbG">
            <node concept="2OqwBi" id="3bxG5bqzKjq" role="37vLTx">
              <node concept="37vLTw" id="3bxG5bqzKii" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
              </node>
              <node concept="liA8E" id="3bxG5bqzKlW" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:3bxG5bqzn$h" resolve="getNodesCollection" />
              </node>
            </node>
            <node concept="37vLTw" id="3bxG5bqzKcv" role="37vLTJ">
              <ref role="3cqZAo" node="3bxG5bqzIrs" resolve="nodesCol" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiL$z6" role="jymVt" />
    <node concept="3clFb_" id="6U_J9TPS9Vx" role="jymVt">
      <property role="TrG5h" value="serializeProjectWithModules" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6U_J9TPS9Vz" role="3clF47">
        <node concept="3clFbF" id="3bxG5bqzVP8" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzWs8" role="3clFbG">
            <node concept="3clFbT" id="3bxG5bqzWBG" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="2OqwBi" id="3bxG5bqzW3r" role="37vLTJ">
              <node concept="Xjq3P" id="3bxG5bqzVP6" role="2Oq$k0" />
              <node concept="2OwXpG" id="3bxG5bqzWgU" role="2OqNvi">
                <ref role="2Oxat5" node="3bxG5bqzUZh" resolve="keepAlive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPSv0T" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPSvfT" role="3clFbG">
            <node concept="Xjq3P" id="6U_J9TPSv0R" role="2Oq$k0" />
            <node concept="liA8E" id="6U_J9TPSvys" role="2OqNvi">
              <ref role="37wK5l" node="6U_J9TPSatA" resolve="dropProject" />
              <node concept="37vLTw" id="6U_J9TPSv$A" role="37wK5m">
                <ref role="3cqZAo" node="6U_J9TPS9Yi" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzYqa" role="3cqZAp">
          <node concept="37vLTI" id="3bxG5bqzYqb" role="3clFbG">
            <node concept="3clFbT" id="3bxG5bqzYG2" role="37vLTx">
              <property role="3clFbU" value="false" />
            </node>
            <node concept="2OqwBi" id="3bxG5bqzYqd" role="37vLTJ">
              <node concept="Xjq3P" id="3bxG5bqzYqe" role="2Oq$k0" />
              <node concept="2OwXpG" id="3bxG5bqzYqf" role="2OqNvi">
                <ref role="2Oxat5" node="3bxG5bqzUZh" resolve="keepAlive" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6U_J9TPS9VP" role="3cqZAp">
          <node concept="3cpWsn" id="6U_J9TPS9VQ" role="3cpWs9">
            <property role="TrG5h" value="projectDoc" />
            <node concept="3uibUv" id="6U_J9TPS9VR" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:5Ci2biiM3RC" resolve="ProjectDocument" />
            </node>
            <node concept="2ShNRf" id="6U_J9TPS9VS" role="33vP2m">
              <node concept="1pGfFk" id="6U_J9TPS9VT" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:5Ci2biiM433" resolve="ProjectDocument" />
                <node concept="2OqwBi" id="6U_J9TPS9VU" role="37wK5m">
                  <node concept="37vLTw" id="6U_J9TPS9VV" role="2Oq$k0">
                    <ref role="3cqZAo" node="6U_J9TPS9Yi" resolve="project" />
                  </node>
                  <node concept="liA8E" id="6U_J9TPS9VW" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6U_J9TPS9VX" role="3cqZAp">
          <node concept="3clFbS" id="6U_J9TPS9VY" role="2LFqv$">
            <node concept="3cpWs8" id="6U_J9TPS9VZ" role="3cqZAp">
              <node concept="3cpWsn" id="6U_J9TPS9W0" role="3cpWs9">
                <property role="TrG5h" value="moduleDoc" />
                <node concept="3uibUv" id="6U_J9TPS9W1" role="1tU5fm">
                  <ref role="3uigEE" to="7fgt:5Ci2biiM7L2" resolve="ModuleDocument" />
                </node>
                <node concept="2ShNRf" id="6U_J9TPS9W2" role="33vP2m">
                  <node concept="1pGfFk" id="6U_J9TPS9W3" role="2ShVmc">
                    <ref role="37wK5l" to="7fgt:5Ci2biiM8Mn" resolve="ModuleDocument" />
                    <node concept="2OqwBi" id="6U_J9TPS9W4" role="37wK5m">
                      <node concept="37vLTw" id="6U_J9TPS9W5" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPS9Y6" resolve="module" />
                      </node>
                      <node concept="liA8E" id="6U_J9TPS9W6" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleName():java.lang.String" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6U_J9TPS9W7" role="3cqZAp">
              <node concept="2OqwBi" id="6U_J9TPS9W8" role="3clFbG">
                <node concept="37vLTw" id="6U_J9TPS9W9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                </node>
                <node concept="liA8E" id="6U_J9TPS9Wa" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                  <node concept="2OqwBi" id="6U_J9TPS9Wb" role="37wK5m">
                    <node concept="2OqwBi" id="6U_J9TPS9Wc" role="2Oq$k0">
                      <node concept="37vLTw" id="6U_J9TPS9Wd" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPS9Y6" resolve="module" />
                      </node>
                      <node concept="liA8E" id="6U_J9TPS9We" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModuleId():org.jetbrains.mps.openapi.module.SModuleId" resolve="getModuleId" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9Wf" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3bxG5bq$g32" role="3cqZAp">
              <node concept="2OqwBi" id="3bxG5bq$ghb" role="3clFbG">
                <node concept="37vLTw" id="3bxG5bq$g30" role="2Oq$k0">
                  <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                </node>
                <node concept="liA8E" id="3bxG5bq$gNV" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:3bxG5bq$bAN" resolve="setParentProject" />
                  <node concept="2OqwBi" id="3bxG5bq$gVO" role="37wK5m">
                    <node concept="37vLTw" id="3bxG5bq$gUp" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9VQ" resolve="projectDoc" />
                    </node>
                    <node concept="liA8E" id="3bxG5bq$gZQ" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2IzChywKyaN" role="3cqZAp">
              <node concept="3clFbS" id="2IzChywKyaP" role="3clFbx">
                <node concept="3clFbF" id="2IzChywKR9U" role="3cqZAp">
                  <node concept="2OqwBi" id="2IzChywKRbT" role="3clFbG">
                    <node concept="37vLTw" id="2IzChywKR9S" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="2IzChywKRfW" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:2IzChywKt0h" resolve="setModuleType" />
                      <node concept="Rm8GO" id="2IzChywKRjK" role="37wK5m">
                        <ref role="Rm8GQ" to="7fgt:2IzChywKuFO" resolve="LANGUAGE" />
                        <ref role="1Px2BO" to="7fgt:2IzChywKura" resolve="ModuleDocument.TYPE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="2IzChywKEst" role="3clFbw">
                <node concept="3uibUv" id="2IzChywKKYL" role="2ZW6by">
                  <ref role="3uigEE" to="w1kc:~Language" resolve="Language" />
                </node>
                <node concept="37vLTw" id="2IzChywKyuI" role="2ZW6bz">
                  <ref role="3cqZAo" node="6U_J9TPS9Y6" resolve="module" />
                </node>
              </node>
              <node concept="3eNFk2" id="2IzChywKOKs" role="3eNLev">
                <node concept="2ZW3vV" id="2IzChywKOPf" role="3eO9$A">
                  <node concept="3uibUv" id="2IzChywKOQv" role="2ZW6by">
                    <ref role="3uigEE" to="z1c4:~Solution" resolve="Solution" />
                  </node>
                  <node concept="37vLTw" id="2IzChywKOLO" role="2ZW6bz">
                    <ref role="3cqZAo" node="6U_J9TPS9Y6" resolve="module" />
                  </node>
                </node>
                <node concept="3clFbS" id="2IzChywKOKu" role="3eOfB_">
                  <node concept="3clFbF" id="2IzChywKRkx" role="3cqZAp">
                    <node concept="2OqwBi" id="2IzChywKRky" role="3clFbG">
                      <node concept="37vLTw" id="2IzChywKRkz" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                      </node>
                      <node concept="liA8E" id="2IzChywKRk$" role="2OqNvi">
                        <ref role="37wK5l" to="7fgt:2IzChywKt0h" resolve="setModuleType" />
                        <node concept="Rm8GO" id="2IzChywKRme" role="37wK5m">
                          <ref role="Rm8GQ" to="7fgt:2IzChywKuHy" resolve="SOLUTION" />
                          <ref role="1Px2BO" to="7fgt:2IzChywKura" resolve="ModuleDocument.TYPE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2IzChywKRnj" role="9aQIa">
                <node concept="3clFbS" id="2IzChywKRnk" role="9aQI4">
                  <node concept="3clFbF" id="2IzChywKSk6" role="3cqZAp">
                    <node concept="2OqwBi" id="2IzChywKSk7" role="3clFbG">
                      <node concept="37vLTw" id="2IzChywKSk8" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                      </node>
                      <node concept="liA8E" id="2IzChywKSk9" role="2OqNvi">
                        <ref role="37wK5l" to="7fgt:2IzChywKt0h" resolve="setModuleType" />
                        <node concept="Rm8GO" id="2IzChywKXfd" role="37wK5m">
                          <ref role="Rm8GQ" to="7fgt:2IzChywKUAb" resolve="UNKNONWN" />
                          <ref role="1Px2BO" to="7fgt:2IzChywKura" resolve="ModuleDocument.TYPE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2IzChywKKYR" role="3cqZAp" />
            <node concept="1DcWWT" id="6U_J9TPS9Wg" role="3cqZAp">
              <node concept="3clFbS" id="6U_J9TPS9Wh" role="2LFqv$">
                <node concept="3cpWs8" id="6U_J9TPS9Wi" role="3cqZAp">
                  <node concept="3cpWsn" id="6U_J9TPS9Wj" role="3cpWs9">
                    <property role="TrG5h" value="modelDoc" />
                    <node concept="3uibUv" id="6U_J9TPS9Wk" role="1tU5fm">
                      <ref role="3uigEE" to="7fgt:5Ci2biiM7TL" resolve="ModelDocument" />
                    </node>
                    <node concept="2ShNRf" id="6U_J9TPS9Wl" role="33vP2m">
                      <node concept="1pGfFk" id="6U_J9TPS9Wm" role="2ShVmc">
                        <ref role="37wK5l" to="7fgt:5Ci2biiMadX" resolve="ModelDocument" />
                        <node concept="2OqwBi" id="6U_J9TPS9Wn" role="37wK5m">
                          <node concept="37vLTw" id="6U_J9TPS9Wo" role="2Oq$k0">
                            <ref role="3cqZAo" node="6U_J9TPS9XN" resolve="model" />
                          </node>
                          <node concept="liA8E" id="6U_J9TPS9Wp" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelName():java.lang.String" resolve="getModelName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6U_J9TPS9Wq" role="3cqZAp">
                  <node concept="2OqwBi" id="6U_J9TPS9Wr" role="3clFbG">
                    <node concept="37vLTw" id="6U_J9TPS9Ws" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9Wj" resolve="modelDoc" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9Wt" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                      <node concept="2OqwBi" id="6U_J9TPS9Wu" role="37wK5m">
                        <node concept="2OqwBi" id="6U_J9TPS9Wv" role="2Oq$k0">
                          <node concept="37vLTw" id="6U_J9TPS9Ww" role="2Oq$k0">
                            <ref role="3cqZAo" node="6U_J9TPS9XN" resolve="model" />
                          </node>
                          <node concept="liA8E" id="6U_J9TPS9Wx" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getModelId():org.jetbrains.mps.openapi.model.SModelId" resolve="getModelId" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9Wy" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3bxG5bq$72H" role="3cqZAp">
                  <node concept="2OqwBi" id="3bxG5bq$7b4" role="3clFbG">
                    <node concept="37vLTw" id="3bxG5bq$72F" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9Wj" resolve="modelDoc" />
                    </node>
                    <node concept="liA8E" id="3bxG5bq$7IO" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:3bxG5bq$5tF" resolve="setParentModule" />
                      <node concept="2OqwBi" id="3bxG5bq$7Lg" role="37wK5m">
                        <node concept="37vLTw" id="3bxG5bq$7JT" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                        </node>
                        <node concept="liA8E" id="3bxG5bq$7Pf" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="6U_J9TPS9Wz" role="3cqZAp">
                  <node concept="3clFbS" id="6U_J9TPS9W$" role="2LFqv$">
                    <node concept="3cpWs8" id="6U_J9TPS9W_" role="3cqZAp">
                      <node concept="3cpWsn" id="6U_J9TPS9WA" role="3cpWs9">
                        <property role="TrG5h" value="nodeDoc" />
                        <node concept="3uibUv" id="6U_J9TPS9WB" role="1tU5fm">
                          <ref role="3uigEE" to="7fgt:5Ci2biiM7U$" resolve="RootNodeDocument" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6U_J9TPS9WC" role="3cqZAp">
                      <node concept="3clFbS" id="6U_J9TPS9WD" role="3clFbx">
                        <node concept="3clFbF" id="6U_J9TPS9WE" role="3cqZAp">
                          <node concept="37vLTI" id="6U_J9TPS9WF" role="3clFbG">
                            <node concept="2ShNRf" id="6U_J9TPS9WG" role="37vLTx">
                              <node concept="1pGfFk" id="6U_J9TPS9WH" role="2ShVmc">
                                <ref role="37wK5l" to="7fgt:5Ci2biiMag0" resolve="RootNodeDocument" />
                                <node concept="2YIFZM" id="6U_J9TPS9WI" role="37wK5m">
                                  <ref role="37wK5l" to="mhbf:~SNodeAccessUtil.getProperty(org.jetbrains.mps.openapi.model.SNode,java.lang.String):java.lang.String" resolve="getProperty" />
                                  <ref role="1Pybhc" to="mhbf:~SNodeAccessUtil" resolve="SNodeAccessUtil" />
                                  <node concept="37vLTw" id="6U_J9TPS9WJ" role="37wK5m">
                                    <ref role="3cqZAo" node="6U_J9TPS9Xw" resolve="snode" />
                                  </node>
                                  <node concept="Xl_RD" id="6U_J9TPS9WK" role="37wK5m">
                                    <property role="Xl_RC" value="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="6U_J9TPS9WL" role="37vLTJ">
                              <ref role="3cqZAo" node="6U_J9TPS9WA" resolve="nodeDoc" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6U_J9TPS9WM" role="3clFbw">
                        <node concept="37vLTw" id="6U_J9TPS9WN" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9Xw" resolve="snode" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9WO" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.isInstanceOfConcept(org.jetbrains.mps.openapi.language.SAbstractConcept):boolean" resolve="isInstanceOfConcept" />
                          <node concept="35c_gC" id="6U_J9TPS9WP" role="37wK5m">
                            <ref role="35c_gD" to="tpck:h0TrEE$" resolve="INamedConcept" />
                          </node>
                        </node>
                      </node>
                      <node concept="9aQIb" id="6U_J9TPS9WQ" role="9aQIa">
                        <node concept="3clFbS" id="6U_J9TPS9WR" role="9aQI4">
                          <node concept="3clFbF" id="6U_J9TPS9WS" role="3cqZAp">
                            <node concept="37vLTI" id="6U_J9TPS9WT" role="3clFbG">
                              <node concept="2ShNRf" id="6U_J9TPS9WU" role="37vLTx">
                                <node concept="1pGfFk" id="6U_J9TPS9WV" role="2ShVmc">
                                  <ref role="37wK5l" to="7fgt:5Ci2biiMafV" resolve="RootNodeDocument" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="6U_J9TPS9WW" role="37vLTJ">
                                <ref role="3cqZAo" node="6U_J9TPS9WA" resolve="nodeDoc" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6U_J9TPS9WX" role="3cqZAp">
                      <node concept="2OqwBi" id="6U_J9TPS9WY" role="3clFbG">
                        <node concept="37vLTw" id="6U_J9TPS9WZ" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9WA" resolve="nodeDoc" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9X0" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM238" resolve="setId" />
                          <node concept="2OqwBi" id="6U_J9TPS9X1" role="37wK5m">
                            <node concept="2OqwBi" id="6U_J9TPS9X2" role="2Oq$k0">
                              <node concept="37vLTw" id="6U_J9TPS9X3" role="2Oq$k0">
                                <ref role="3cqZAo" node="6U_J9TPS9Xw" resolve="snode" />
                              </node>
                              <node concept="liA8E" id="6U_J9TPS9X4" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getNodeId():org.jetbrains.mps.openapi.model.SNodeId" resolve="getNodeId" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6U_J9TPS9X5" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6U_J9TPS9X6" role="3cqZAp">
                      <node concept="2OqwBi" id="6U_J9TPS9X7" role="3clFbG">
                        <node concept="37vLTw" id="6U_J9TPS9X8" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9WA" resolve="nodeDoc" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9X9" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiMagC" resolve="setModelId" />
                          <node concept="2OqwBi" id="6U_J9TPS9Xa" role="37wK5m">
                            <node concept="37vLTw" id="6U_J9TPS9Xb" role="2Oq$k0">
                              <ref role="3cqZAo" node="6U_J9TPS9Wj" resolve="modelDoc" />
                            </node>
                            <node concept="liA8E" id="6U_J9TPS9Xc" role="2OqNvi">
                              <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6U_J9TPS9Xd" role="3cqZAp">
                      <node concept="3cpWsn" id="6U_J9TPS9Xe" role="3cpWs9">
                        <property role="TrG5h" value="writer" />
                        <node concept="3uibUv" id="6U_J9TPS9Xf" role="1tU5fm">
                          <ref role="3uigEE" to="7fgt:6RW8DBDcbcU" resolve="NodeWriter" />
                        </node>
                        <node concept="2ShNRf" id="6U_J9TPS9Xg" role="33vP2m">
                          <node concept="1pGfFk" id="6U_J9TPS9Xh" role="2ShVmc">
                            <ref role="37wK5l" to="7fgt:6RW8DBDcbuG" resolve="NodeWriter" />
                            <node concept="37vLTw" id="6U_J9TPS9Xi" role="37wK5m">
                              <ref role="3cqZAo" node="6U_J9TPS9WA" resolve="nodeDoc" />
                            </node>
                            <node concept="37vLTw" id="6U_J9TPS9Xj" role="37wK5m">
                              <ref role="3cqZAo" node="3bxG5bqzIrs" resolve="nodesCol" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6U_J9TPS9Xk" role="3cqZAp">
                      <node concept="3cpWsn" id="6U_J9TPS9Xl" role="3cpWs9">
                        <property role="TrG5h" value="annotation" />
                        <node concept="3Tqbb2" id="6U_J9TPS9Xm" role="1tU5fm">
                          <ref role="ehGHo" to="3t4d:7_Pg6u6xjfG" resolve="EditorAnnotation" />
                        </node>
                        <node concept="2ShNRf" id="6U_J9TPS9Xn" role="33vP2m">
                          <node concept="3zrR0B" id="6U_J9TPS9Xo" role="2ShVmc">
                            <node concept="3Tqbb2" id="6U_J9TPS9Xp" role="3zrR0E">
                              <ref role="ehGHo" to="3t4d:7_Pg6u6xjfG" resolve="EditorAnnotation" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6U_J9TPS9Xq" role="3cqZAp">
                      <node concept="2OqwBi" id="6U_J9TPS9Xr" role="3clFbG">
                        <node concept="37vLTw" id="6U_J9TPS9Xs" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9Xl" resolve="annotation" />
                        </node>
                        <node concept="2qgKlT" id="6U_J9TPS9Xt" role="2OqNvi">
                          <ref role="37wK5l" to="ha1n:TE4nIlnV$W" resolve="renderSvg" />
                          <node concept="37vLTw" id="6U_J9TPS9Xu" role="37wK5m">
                            <ref role="3cqZAo" node="6U_J9TPS9Xw" resolve="snode" />
                          </node>
                          <node concept="37vLTw" id="6U_J9TPS9Xv" role="37wK5m">
                            <ref role="3cqZAo" node="6U_J9TPS9Xe" resolve="writer" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6U_J9TPS9Xw" role="1Duv9x">
                    <property role="TrG5h" value="snode" />
                    <node concept="3uibUv" id="6U_J9TPS9Xx" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6U_J9TPS9Xy" role="1DdaDG">
                    <node concept="37vLTw" id="6U_J9TPS9Xz" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9XN" resolve="model" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9X$" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes():java.lang.Iterable" resolve="getRootNodes" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6U_J9TPS9X_" role="3cqZAp">
                  <node concept="2OqwBi" id="6U_J9TPS9XA" role="3clFbG">
                    <node concept="37vLTw" id="6U_J9TPS9XB" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqzIro" resolve="modelsCol" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9XC" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
                      <node concept="2OqwBi" id="6U_J9TPS9XD" role="37wK5m">
                        <node concept="37vLTw" id="6U_J9TPS9XE" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9Wj" resolve="modelDoc" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9XF" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6U_J9TPS9XG" role="3cqZAp">
                  <node concept="2OqwBi" id="6U_J9TPS9XH" role="3clFbG">
                    <node concept="37vLTw" id="6U_J9TPS9XI" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9XJ" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM8MG" resolve="addModel" />
                      <node concept="2OqwBi" id="6U_J9TPS9XK" role="37wK5m">
                        <node concept="37vLTw" id="6U_J9TPS9XL" role="2Oq$k0">
                          <ref role="3cqZAo" node="6U_J9TPS9Wj" resolve="modelDoc" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPS9XM" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWsn" id="6U_J9TPS9XN" role="1Duv9x">
                <property role="TrG5h" value="model" />
                <node concept="3uibUv" id="6U_J9TPS9XO" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
              </node>
              <node concept="2OqwBi" id="6U_J9TPS9XP" role="1DdaDG">
                <node concept="37vLTw" id="6U_J9TPS9XQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="6U_J9TPS9Y6" resolve="module" />
                </node>
                <node concept="liA8E" id="6U_J9TPS9XR" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SModule.getModels():java.lang.Iterable" resolve="getModels" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6U_J9TPS9XS" role="3cqZAp">
              <node concept="2OqwBi" id="6U_J9TPS9XT" role="3clFbG">
                <node concept="37vLTw" id="6U_J9TPS9XU" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqzIrk" resolve="modulesCol" />
                </node>
                <node concept="liA8E" id="6U_J9TPS9XV" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
                  <node concept="2OqwBi" id="6U_J9TPS9XW" role="37wK5m">
                    <node concept="37vLTw" id="6U_J9TPS9XX" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9XY" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6U_J9TPS9XZ" role="3cqZAp">
              <node concept="2OqwBi" id="6U_J9TPS9Y0" role="3clFbG">
                <node concept="37vLTw" id="6U_J9TPS9Y1" role="2Oq$k0">
                  <ref role="3cqZAo" node="6U_J9TPS9VQ" resolve="projectDoc" />
                </node>
                <node concept="liA8E" id="6U_J9TPS9Y2" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM43o" resolve="addModule" />
                  <node concept="2OqwBi" id="6U_J9TPS9Y3" role="37wK5m">
                    <node concept="37vLTw" id="6U_J9TPS9Y4" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPS9W0" resolve="moduleDoc" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPS9Y5" role="2OqNvi">
                      <ref role="37wK5l" to="7fgt:5Ci2biiM232" resolve="getId" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6U_J9TPS9Y6" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="6U_J9TPS9Y7" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
            </node>
          </node>
          <node concept="37vLTw" id="6U_J9TPS9Y8" role="1DdaDG">
            <ref role="3cqZAo" node="6U_J9TPS9Yk" resolve="modules" />
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPS9Y9" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPS9Ya" role="3clFbG">
            <node concept="37vLTw" id="6U_J9TPS9Yb" role="2Oq$k0">
              <ref role="3cqZAo" node="3bxG5bqzIrg" resolve="projectsCol" />
            </node>
            <node concept="liA8E" id="6U_J9TPS9Yc" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:5Ci2biiLWma" resolve="addDocument" />
              <node concept="2OqwBi" id="6U_J9TPS9Yd" role="37wK5m">
                <node concept="37vLTw" id="6U_J9TPS9Ye" role="2Oq$k0">
                  <ref role="3cqZAo" node="6U_J9TPS9VQ" resolve="projectDoc" />
                </node>
                <node concept="liA8E" id="6U_J9TPS9Yf" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiM23s" resolve="toDoc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="3bxG5bq$3Mr" role="3cqZAp">
          <node concept="3SKdUq" id="3bxG5bq$3Mt" role="3SKWNk">
            <property role="3SKdUp" value="TODO: if we close the connection here, the db does not flush properly the new data" />
          </node>
        </node>
        <node concept="1X3_iC" id="3bxG5bq$0x8" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="3bxG5bqzTyY" role="8Wnug">
            <node concept="2OqwBi" id="3bxG5bqzTKY" role="3clFbG">
              <node concept="Xjq3P" id="3bxG5bqzTyW" role="2Oq$k0" />
              <node concept="liA8E" id="3bxG5bqzU2K" role="2OqNvi">
                <ref role="37wK5l" node="3bxG5bqzOvB" resolve="close" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6U_J9TPS9Yh" role="3clF45" />
      <node concept="37vLTG" id="6U_J9TPS9Yi" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6U_J9TPS9Yj" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="6U_J9TPS9Yk" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="6U_J9TPS9Yl" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6U_J9TPS9Ym" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6U_J9TPS9Yg" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3bxG5bqzQvt" role="jymVt" />
    <node concept="3clFb_" id="3bxG5bqzOvB" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="close" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3bxG5bqzOvE" role="3clF47">
        <node concept="3clFbJ" id="3bxG5bqzY4j" role="3cqZAp">
          <node concept="3clFbS" id="3bxG5bqzY4l" role="3clFbx">
            <node concept="3clFbF" id="3bxG5bqzPG9" role="3cqZAp">
              <node concept="2OqwBi" id="3bxG5bqzPH1" role="3clFbG">
                <node concept="37vLTw" id="3bxG5bqzPG8" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqzIrc" resolve="db" />
                </node>
                <node concept="liA8E" id="3bxG5bqzPQ6" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:3bxG5bqzo65" resolve="close" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3bxG5bqzY5A" role="3clFbw">
            <node concept="37vLTw" id="3bxG5bqzY6Q" role="3fr31v">
              <ref role="3cqZAo" node="3bxG5bqzUZh" resolve="keepAlive" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3bxG5bqzSV4" role="1B3o_S" />
      <node concept="3cqZAl" id="3bxG5bqzOuH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3bxG5bqzNxr" role="jymVt" />
    <node concept="3clFb_" id="6U_J9TPSatA" role="jymVt">
      <property role="TrG5h" value="dropProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6U_J9TPSatE" role="3clF47">
        <node concept="3cpWs8" id="6U_J9TPSatV" role="3cqZAp">
          <node concept="3cpWsn" id="6U_J9TPSatW" role="3cpWs9">
            <property role="TrG5h" value="projectFilter" />
            <node concept="3uibUv" id="6U_J9TPSatX" role="1tU5fm">
              <ref role="3uigEE" to="ncvd:~Bson" resolve="Bson" />
            </node>
            <node concept="2YIFZM" id="6U_J9TPSatY" role="33vP2m">
              <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
              <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
              <node concept="2YIFZM" id="6U_J9TPSatZ" role="37wK5m">
                <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                <node concept="2YIFZM" id="6U_J9TPSau0" role="37wK5m">
                  <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                  <ref role="37wK5l" to="n0jz:~Filters.eq(java.lang.String,java.lang.Object):org.bson.conversions.Bson" resolve="eq" />
                  <node concept="Xl_RD" id="6U_J9TPSau1" role="37wK5m">
                    <property role="Xl_RC" value="name" />
                  </node>
                  <node concept="2OqwBi" id="6U_J9TPSau2" role="37wK5m">
                    <node concept="37vLTw" id="6U_J9TPSau3" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPSatC" resolve="project" />
                    </node>
                    <node concept="liA8E" id="6U_J9TPSau4" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~MPSProject.getName():java.lang.String" resolve="getName" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="6U_J9TPSau5" role="37wK5m">
                  <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                  <ref role="37wK5l" to="n0jz:~Filters.eq(java.lang.String,java.lang.Object):org.bson.conversions.Bson" resolve="eq" />
                  <node concept="Xl_RD" id="6U_J9TPSau6" role="37wK5m">
                    <property role="Xl_RC" value="createdBy" />
                  </node>
                  <node concept="10M0yZ" id="6U_J9TPSau7" role="37wK5m">
                    <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
                    <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6U_J9TPSau8" role="3cqZAp">
          <node concept="3cpWsn" id="6U_J9TPSau9" role="3cpWs9">
            <property role="TrG5h" value="projects" />
            <node concept="3uibUv" id="6U_J9TPSaua" role="1tU5fm">
              <ref role="3uigEE" to="skwk:~FindIterable" resolve="FindIterable" />
              <node concept="3uibUv" id="6U_J9TPSaub" role="11_B2D">
                <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
              </node>
            </node>
            <node concept="2OqwBi" id="6U_J9TPSauc" role="33vP2m">
              <node concept="2OqwBi" id="6U_J9TPSaud" role="2Oq$k0">
                <node concept="37vLTw" id="6U_J9TPSoLL" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqzIrg" resolve="projectsCol" />
                </node>
                <node concept="liA8E" id="6U_J9TPSauf" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
                </node>
              </node>
              <node concept="liA8E" id="6U_J9TPSaug" role="2OqNvi">
                <ref role="37wK5l" to="skwk:~MongoCollection.find(org.bson.conversions.Bson):com.mongodb.client.FindIterable" resolve="find" />
                <node concept="37vLTw" id="6U_J9TPSauh" role="37wK5m">
                  <ref role="3cqZAo" node="6U_J9TPSatW" resolve="projectFilter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6U_J9TPSaui" role="3cqZAp">
          <node concept="3clFbS" id="6U_J9TPSauj" role="2LFqv$">
            <node concept="3clFbJ" id="7eDbMXGJZiR" role="3cqZAp">
              <node concept="3clFbS" id="7eDbMXGJZiT" role="3clFbx">
                <node concept="3clFbF" id="6U_J9TPSqei" role="3cqZAp">
                  <node concept="1rXfSq" id="6U_J9TPSqeh" role="3clFbG">
                    <ref role="37wK5l" node="6U_J9TPSlk5" resolve="dropModules" />
                    <node concept="2OqwBi" id="6U_J9TPSqio" role="37wK5m">
                      <node concept="2OqwBi" id="6U_J9TPSqip" role="2Oq$k0">
                        <node concept="2OqwBi" id="6U_J9TPSqiq" role="2Oq$k0">
                          <node concept="37vLTw" id="6U_J9TPSqir" role="2Oq$k0">
                            <ref role="3cqZAo" node="6U_J9TPSavX" resolve="p" />
                          </node>
                          <node concept="liA8E" id="6U_J9TPSqis" role="2OqNvi">
                            <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                            <node concept="Xl_RD" id="6U_J9TPSqit" role="37wK5m">
                              <property role="Xl_RC" value="moduleId" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6U_J9TPSqiu" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6U_J9TPSqiv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                        <node concept="Xl_RD" id="6U_J9TPSqiw" role="37wK5m">
                          <property role="Xl_RC" value="," />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7eDbMXGK5Ao" role="3clFbw">
                <node concept="2OqwBi" id="7eDbMXGK1Bo" role="3uHU7w">
                  <node concept="2OqwBi" id="7eDbMXGJZlQ" role="2Oq$k0">
                    <node concept="2OqwBi" id="7eDbMXGJZlR" role="2Oq$k0">
                      <node concept="37vLTw" id="7eDbMXGJZlS" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPSavX" resolve="p" />
                      </node>
                      <node concept="liA8E" id="7eDbMXGJZlT" role="2OqNvi">
                        <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                        <node concept="Xl_RD" id="7eDbMXGJZlU" role="37wK5m">
                          <property role="Xl_RC" value="moduleId" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7eDbMXGJZlV" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="7eDbMXGK1RQ" role="2OqNvi" />
                </node>
                <node concept="3y3z36" id="7eDbMXGK5M3" role="3uHU7B">
                  <node concept="10Nm6u" id="7eDbMXGK5Q1" role="3uHU7w" />
                  <node concept="2OqwBi" id="7eDbMXGK5Hl" role="3uHU7B">
                    <node concept="37vLTw" id="7eDbMXGK5Hm" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPSavX" resolve="p" />
                    </node>
                    <node concept="liA8E" id="7eDbMXGK5Hn" role="2OqNvi">
                      <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="Xl_RD" id="7eDbMXGK5Ho" role="37wK5m">
                        <property role="Xl_RC" value="moduleId" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6U_J9TPSavX" role="1Duv9x">
            <property role="TrG5h" value="p" />
            <node concept="3uibUv" id="6U_J9TPSavY" role="1tU5fm">
              <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
            </node>
          </node>
          <node concept="37vLTw" id="6U_J9TPSavZ" role="1DdaDG">
            <ref role="3cqZAo" node="6U_J9TPSau9" resolve="projects" />
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPSaw0" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPSaw1" role="3clFbG">
            <node concept="2OqwBi" id="6U_J9TPSaw2" role="2Oq$k0">
              <node concept="37vLTw" id="6U_J9TPSaw3" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrg" resolve="projectsCol" />
              </node>
              <node concept="liA8E" id="6U_J9TPSaw4" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
              </node>
            </node>
            <node concept="liA8E" id="6U_J9TPSaw5" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoCollection.deleteMany(org.bson.conversions.Bson):com.mongodb.client.result.DeleteResult" resolve="deleteMany" />
              <node concept="37vLTw" id="6U_J9TPSaw6" role="37wK5m">
                <ref role="3cqZAo" node="6U_J9TPSatW" resolve="projectFilter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzXEy" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqzXNN" role="3clFbG">
            <node concept="Xjq3P" id="3bxG5bqzXEw" role="2Oq$k0" />
            <node concept="liA8E" id="3bxG5bqzY23" role="2OqNvi">
              <ref role="37wK5l" node="3bxG5bqzOvB" resolve="close" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6U_J9TPSaw9" role="3clF45" />
      <node concept="37vLTG" id="6U_J9TPSatC" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6U_J9TPSatD" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3Tm1VV" id="6U_J9TPSaw8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiMqYM" role="jymVt" />
    <node concept="3clFb_" id="6U_J9TPSlk5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="dropModules" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6U_J9TPSlk8" role="3clF47">
        <node concept="3cpWs8" id="6U_J9TPSauk" role="3cqZAp">
          <node concept="3cpWsn" id="6U_J9TPSaul" role="3cpWs9">
            <property role="TrG5h" value="moduleFilter" />
            <node concept="3uibUv" id="6U_J9TPSaum" role="1tU5fm">
              <ref role="3uigEE" to="ncvd:~Bson" resolve="Bson" />
            </node>
            <node concept="2YIFZM" id="6U_J9TPSaun" role="33vP2m">
              <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
              <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
              <node concept="2YIFZM" id="6U_J9TPSauo" role="37wK5m">
                <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                <node concept="2YIFZM" id="6U_J9TPSaup" role="37wK5m">
                  <ref role="37wK5l" to="n0jz:~Filters.in(java.lang.String,java.lang.Object...):org.bson.conversions.Bson" resolve="in" />
                  <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                  <node concept="Xl_RD" id="6U_J9TPSauq" role="37wK5m">
                    <property role="Xl_RC" value="_id" />
                  </node>
                  <node concept="37vLTw" id="6U_J9TPSqud" role="37wK5m">
                    <ref role="3cqZAo" node="6U_J9TPSls2" resolve="modulesIds" />
                  </node>
                </node>
                <node concept="2YIFZM" id="6U_J9TPSau$" role="37wK5m">
                  <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                  <ref role="37wK5l" to="n0jz:~Filters.eq(java.lang.String,java.lang.Object):org.bson.conversions.Bson" resolve="eq" />
                  <node concept="Xl_RD" id="6U_J9TPSau_" role="37wK5m">
                    <property role="Xl_RC" value="createdBy" />
                  </node>
                  <node concept="10M0yZ" id="6U_J9TPSauA" role="37wK5m">
                    <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
                    <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6U_J9TPSauB" role="3cqZAp">
          <node concept="3cpWsn" id="6U_J9TPSauC" role="3cpWs9">
            <property role="TrG5h" value="modules" />
            <node concept="3uibUv" id="6U_J9TPSauD" role="1tU5fm">
              <ref role="3uigEE" to="skwk:~FindIterable" resolve="FindIterable" />
              <node concept="3uibUv" id="6U_J9TPSauE" role="11_B2D">
                <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
              </node>
            </node>
            <node concept="2OqwBi" id="6U_J9TPSauF" role="33vP2m">
              <node concept="2OqwBi" id="6U_J9TPSauG" role="2Oq$k0">
                <node concept="37vLTw" id="6U_J9TPSoQE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqzIrk" resolve="modulesCol" />
                </node>
                <node concept="liA8E" id="6U_J9TPSauI" role="2OqNvi">
                  <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
                </node>
              </node>
              <node concept="liA8E" id="6U_J9TPSauJ" role="2OqNvi">
                <ref role="37wK5l" to="skwk:~MongoCollection.find(org.bson.conversions.Bson):com.mongodb.client.FindIterable" resolve="find" />
                <node concept="37vLTw" id="6U_J9TPSauK" role="37wK5m">
                  <ref role="3cqZAo" node="6U_J9TPSaul" resolve="moduleFilter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1DcWWT" id="6U_J9TPSauL" role="3cqZAp">
          <node concept="3clFbS" id="6U_J9TPSauM" role="2LFqv$">
            <node concept="3clFbJ" id="7eDbMXGK2AW" role="3cqZAp">
              <node concept="3clFbS" id="7eDbMXGK2AY" role="3clFbx">
                <node concept="3cpWs8" id="6U_J9TPSauN" role="3cqZAp">
                  <node concept="3cpWsn" id="6U_J9TPSauO" role="3cpWs9">
                    <property role="TrG5h" value="modelFilter" />
                    <node concept="3uibUv" id="6U_J9TPSauP" role="1tU5fm">
                      <ref role="3uigEE" to="ncvd:~Bson" resolve="Bson" />
                    </node>
                    <node concept="2YIFZM" id="6U_J9TPSauQ" role="33vP2m">
                      <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                      <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                      <node concept="2YIFZM" id="6U_J9TPSauR" role="37wK5m">
                        <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                        <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                        <node concept="2YIFZM" id="6U_J9TPSauS" role="37wK5m">
                          <ref role="37wK5l" to="n0jz:~Filters.in(java.lang.String,java.lang.Object...):org.bson.conversions.Bson" resolve="in" />
                          <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                          <node concept="Xl_RD" id="6U_J9TPSauT" role="37wK5m">
                            <property role="Xl_RC" value="_id" />
                          </node>
                          <node concept="2OqwBi" id="6U_J9TPSauU" role="37wK5m">
                            <node concept="2OqwBi" id="6U_J9TPSauV" role="2Oq$k0">
                              <node concept="2OqwBi" id="6U_J9TPSauW" role="2Oq$k0">
                                <node concept="liA8E" id="6U_J9TPSauX" role="2OqNvi">
                                  <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                                  <node concept="Xl_RD" id="6U_J9TPSauY" role="37wK5m">
                                    <property role="Xl_RC" value="modelId" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="6U_J9TPSauZ" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6U_J9TPSavN" resolve="module" />
                                </node>
                              </node>
                              <node concept="liA8E" id="6U_J9TPSav0" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6U_J9TPSav1" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.split(java.lang.String):java.lang.String[]" resolve="split" />
                              <node concept="Xl_RD" id="6U_J9TPSav2" role="37wK5m">
                                <property role="Xl_RC" value="," />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2YIFZM" id="6U_J9TPSav3" role="37wK5m">
                          <ref role="37wK5l" to="n0jz:~Filters.eq(java.lang.String,java.lang.Object):org.bson.conversions.Bson" resolve="eq" />
                          <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                          <node concept="Xl_RD" id="6U_J9TPSav4" role="37wK5m">
                            <property role="Xl_RC" value="createdBy" />
                          </node>
                          <node concept="10M0yZ" id="6U_J9TPSav5" role="37wK5m">
                            <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
                            <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6U_J9TPSav6" role="3cqZAp">
                  <node concept="3cpWsn" id="6U_J9TPSav7" role="3cpWs9">
                    <property role="TrG5h" value="models" />
                    <node concept="3uibUv" id="6U_J9TPSav8" role="1tU5fm">
                      <ref role="3uigEE" to="skwk:~FindIterable" resolve="FindIterable" />
                      <node concept="3uibUv" id="6U_J9TPSav9" role="11_B2D">
                        <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6U_J9TPSava" role="33vP2m">
                      <node concept="2OqwBi" id="6U_J9TPSavb" role="2Oq$k0">
                        <node concept="37vLTw" id="6U_J9TPSavc" role="2Oq$k0">
                          <ref role="3cqZAo" node="3bxG5bqzIro" resolve="modelsCol" />
                        </node>
                        <node concept="liA8E" id="6U_J9TPSavd" role="2OqNvi">
                          <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6U_J9TPSave" role="2OqNvi">
                        <ref role="37wK5l" to="skwk:~MongoCollection.find(org.bson.conversions.Bson):com.mongodb.client.FindIterable" resolve="find" />
                        <node concept="37vLTw" id="6U_J9TPSavf" role="37wK5m">
                          <ref role="3cqZAo" node="6U_J9TPSauO" resolve="modelFilter" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1DcWWT" id="6U_J9TPSavg" role="3cqZAp">
                  <node concept="3clFbS" id="6U_J9TPSavh" role="2LFqv$">
                    <node concept="3cpWs8" id="6U_J9TPSavi" role="3cqZAp">
                      <node concept="3cpWsn" id="6U_J9TPSavj" role="3cpWs9">
                        <property role="TrG5h" value="nodeFilter" />
                        <node concept="3uibUv" id="6U_J9TPSavk" role="1tU5fm">
                          <ref role="3uigEE" to="ncvd:~Bson" resolve="Bson" />
                        </node>
                        <node concept="2YIFZM" id="6U_J9TPSavl" role="33vP2m">
                          <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                          <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                          <node concept="2YIFZM" id="6U_J9TPSavm" role="37wK5m">
                            <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                            <ref role="37wK5l" to="n0jz:~Filters.and(org.bson.conversions.Bson...):org.bson.conversions.Bson" resolve="and" />
                            <node concept="2YIFZM" id="6U_J9TPSavn" role="37wK5m">
                              <ref role="37wK5l" to="n0jz:~Filters.in(java.lang.String,java.lang.Object...):org.bson.conversions.Bson" resolve="in" />
                              <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                              <node concept="Xl_RD" id="6U_J9TPSavo" role="37wK5m">
                                <property role="Xl_RC" value="modelId" />
                              </node>
                              <node concept="2OqwBi" id="6U_J9TPSavp" role="37wK5m">
                                <node concept="2OqwBi" id="6U_J9TPSavq" role="2Oq$k0">
                                  <node concept="liA8E" id="6U_J9TPSavr" role="2OqNvi">
                                    <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                                    <node concept="Xl_RD" id="6U_J9TPSavs" role="37wK5m">
                                      <property role="Xl_RC" value="_id" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6U_J9TPSavt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6U_J9TPSavD" resolve="model" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="6U_J9TPSavu" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                                </node>
                              </node>
                            </node>
                            <node concept="2YIFZM" id="6U_J9TPSavv" role="37wK5m">
                              <ref role="1Pybhc" to="n0jz:~Filters" resolve="Filters" />
                              <ref role="37wK5l" to="n0jz:~Filters.eq(java.lang.String,java.lang.Object):org.bson.conversions.Bson" resolve="eq" />
                              <node concept="Xl_RD" id="6U_J9TPSavw" role="37wK5m">
                                <property role="Xl_RC" value="createdBy" />
                              </node>
                              <node concept="10M0yZ" id="6U_J9TPSavx" role="37wK5m">
                                <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
                                <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="6U_J9TPSavy" role="3cqZAp">
                      <node concept="2OqwBi" id="6U_J9TPSavz" role="3clFbG">
                        <node concept="2OqwBi" id="6U_J9TPSav$" role="2Oq$k0">
                          <node concept="37vLTw" id="6U_J9TPSav_" role="2Oq$k0">
                            <ref role="3cqZAo" node="3bxG5bqzIrs" resolve="nodesCol" />
                          </node>
                          <node concept="liA8E" id="6U_J9TPSavA" role="2OqNvi">
                            <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6U_J9TPSavB" role="2OqNvi">
                          <ref role="37wK5l" to="skwk:~MongoCollection.deleteMany(org.bson.conversions.Bson):com.mongodb.client.result.DeleteResult" resolve="deleteMany" />
                          <node concept="37vLTw" id="6U_J9TPSavC" role="37wK5m">
                            <ref role="3cqZAo" node="6U_J9TPSavj" resolve="nodeFilter" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="6U_J9TPSavD" role="1Duv9x">
                    <property role="TrG5h" value="model" />
                    <node concept="3uibUv" id="6U_J9TPSavE" role="1tU5fm">
                      <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="6U_J9TPSavF" role="1DdaDG">
                    <ref role="3cqZAo" node="6U_J9TPSav7" resolve="models" />
                  </node>
                </node>
                <node concept="3clFbF" id="6U_J9TPSavG" role="3cqZAp">
                  <node concept="2OqwBi" id="6U_J9TPSavH" role="3clFbG">
                    <node concept="2OqwBi" id="6U_J9TPSavI" role="2Oq$k0">
                      <node concept="37vLTw" id="6U_J9TPSavJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="3bxG5bqzIro" resolve="modelsCol" />
                      </node>
                      <node concept="liA8E" id="6U_J9TPSavK" role="2OqNvi">
                        <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6U_J9TPSavL" role="2OqNvi">
                      <ref role="37wK5l" to="skwk:~MongoCollection.deleteMany(org.bson.conversions.Bson):com.mongodb.client.result.DeleteResult" resolve="deleteMany" />
                      <node concept="37vLTw" id="6U_J9TPSavM" role="37wK5m">
                        <ref role="3cqZAo" node="6U_J9TPSauO" resolve="modelFilter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="7eDbMXGK4XU" role="3clFbw">
                <node concept="2OqwBi" id="7eDbMXGK3zg" role="3uHU7w">
                  <node concept="2OqwBi" id="7eDbMXGK3iG" role="2Oq$k0">
                    <node concept="2OqwBi" id="7eDbMXGK3iH" role="2Oq$k0">
                      <node concept="liA8E" id="7eDbMXGK3iI" role="2OqNvi">
                        <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                        <node concept="Xl_RD" id="7eDbMXGK3iJ" role="37wK5m">
                          <property role="Xl_RC" value="modelId" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7eDbMXGK3iK" role="2Oq$k0">
                        <ref role="3cqZAo" node="6U_J9TPSavN" resolve="module" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eDbMXGK3iL" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString():java.lang.String" resolve="toString" />
                    </node>
                  </node>
                  <node concept="17RvpY" id="7eDbMXGK3YE" role="2OqNvi" />
                </node>
                <node concept="3y3z36" id="7eDbMXGK5un" role="3uHU7B">
                  <node concept="10Nm6u" id="7eDbMXGK5yn" role="3uHU7w" />
                  <node concept="2OqwBi" id="7eDbMXGK5eG" role="3uHU7B">
                    <node concept="liA8E" id="7eDbMXGK5eH" role="2OqNvi">
                      <ref role="37wK5l" to="htiy:~Document.get(java.lang.Object):java.lang.Object" resolve="get" />
                      <node concept="Xl_RD" id="7eDbMXGK5eI" role="37wK5m">
                        <property role="Xl_RC" value="modelId" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7eDbMXGK5eJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="6U_J9TPSavN" resolve="module" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="6U_J9TPSavN" role="1Duv9x">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="6U_J9TPSavO" role="1tU5fm">
              <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
            </node>
          </node>
          <node concept="37vLTw" id="6U_J9TPSavP" role="1DdaDG">
            <ref role="3cqZAo" node="6U_J9TPSauC" resolve="modules" />
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPSavQ" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPSavR" role="3clFbG">
            <node concept="2OqwBi" id="6U_J9TPSavS" role="2Oq$k0">
              <node concept="37vLTw" id="6U_J9TPSavT" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqzIrk" resolve="modulesCol" />
              </node>
              <node concept="liA8E" id="6U_J9TPSavU" role="2OqNvi">
                <ref role="37wK5l" to="7fgt:5Ci2biiLWl$" resolve="getCollection" />
              </node>
            </node>
            <node concept="liA8E" id="6U_J9TPSavV" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoCollection.deleteMany(org.bson.conversions.Bson):com.mongodb.client.result.DeleteResult" resolve="deleteMany" />
              <node concept="37vLTw" id="6U_J9TPSavW" role="37wK5m">
                <ref role="3cqZAo" node="6U_J9TPSaul" resolve="moduleFilter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6U_J9TPSlcx" role="1B3o_S" />
      <node concept="3cqZAl" id="6U_J9TPSlk3" role="3clF45" />
      <node concept="37vLTG" id="6U_J9TPSls2" role="3clF46">
        <property role="TrG5h" value="modulesIds" />
        <node concept="10Q1$e" id="6U_J9TPSq0l" role="1tU5fm">
          <node concept="17QB3L" id="6U_J9TPSpAR" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5Ci2biiL$yN" role="1B3o_S" />
    <node concept="3uibUv" id="6U_J9TPS9TY" role="1zkMxy">
      <ref role="3uigEE" to="tt5a:7TSDInKxqHQ" resolve="Serializer" />
    </node>
  </node>
  <node concept="312cEu" id="7MNizV3nHNm">
    <property role="TrG5h" value="MongoDbSchemaManager" />
    <node concept="2tJIrI" id="7MNizV3nHPb" role="jymVt" />
    <node concept="3Tm1VV" id="7MNizV3nHNn" role="1B3o_S" />
    <node concept="3uibUv" id="6U_J9TPShV0" role="1zkMxy">
      <ref role="3uigEE" to="tt5a:6U_J9TPS5dg" resolve="SchemaManager" />
    </node>
    <node concept="3clFb_" id="7MNizV3nHOt" role="jymVt">
      <property role="TrG5h" value="createSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="7MNizV3nHOv" role="3clF45" />
      <node concept="3Tm1VV" id="7MNizV3nHOw" role="1B3o_S" />
      <node concept="3clFbS" id="7MNizV3nHOx" role="3clF47">
        <node concept="3clFbF" id="3bxG5bqzzey" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqzze$" role="3clFbG">
            <node concept="2ShNRf" id="3bxG5bqzze_" role="2Oq$k0">
              <node concept="1pGfFk" id="3bxG5bqzzeA" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:3bxG5bqzytZ" resolve="MongoDbAccess" />
              </node>
            </node>
            <node concept="liA8E" id="3bxG5bqzzeB" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:3bxG5bqzo65" resolve="close" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7MNizV3nJpR" role="jymVt">
      <property role="TrG5h" value="dropSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="7MNizV3nJpT" role="3clF45" />
      <node concept="3Tm1VV" id="7MNizV3nJpU" role="1B3o_S" />
      <node concept="3clFbS" id="7MNizV3nJpV" role="3clF47">
        <node concept="3cpWs8" id="3bxG5bqzvU2" role="3cqZAp">
          <node concept="3cpWsn" id="3bxG5bqzvU3" role="3cpWs9">
            <property role="TrG5h" value="db" />
            <node concept="3uibUv" id="3bxG5bqzvU4" role="1tU5fm">
              <ref role="3uigEE" to="7fgt:3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
            <node concept="2ShNRf" id="3bxG5bqzvU5" role="33vP2m">
              <node concept="1pGfFk" id="3bxG5bqzyYg" role="2ShVmc">
                <ref role="37wK5l" to="7fgt:3bxG5bqzytZ" resolve="MongoDbAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzw20" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqzw3h" role="3clFbG">
            <node concept="37vLTw" id="3bxG5bqzw1Y" role="2Oq$k0">
              <ref role="3cqZAo" node="3bxG5bqzvU3" resolve="db" />
            </node>
            <node concept="liA8E" id="3bxG5bqzw4V" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:3bxG5bqznPK" resolve="drop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqzvUb" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqzvUc" role="3clFbG">
            <node concept="37vLTw" id="3bxG5bqzvUd" role="2Oq$k0">
              <ref role="3cqZAo" node="3bxG5bqzvU3" resolve="db" />
            </node>
            <node concept="liA8E" id="3bxG5bqzvUe" role="2OqNvi">
              <ref role="37wK5l" to="7fgt:3bxG5bqzo65" resolve="close" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6U_J9TPRTpM" role="jymVt" />
  </node>
</model>

