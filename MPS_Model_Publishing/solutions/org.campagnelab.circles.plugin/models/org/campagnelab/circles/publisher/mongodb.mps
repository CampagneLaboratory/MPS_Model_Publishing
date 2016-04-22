<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="tt5a" ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)" />
    <import index="htiy" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson(com.mongodb.driver/)" />
    <import index="wvt1" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb(com.mongodb.driver/)" />
    <import index="skwk" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client(com.mongodb.driver/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ha1n" ref="r:117db92d-261b-4ba2-97fe-04df0369434b(org.campagnelab.mps.editor2pdf.behavior)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3v5cxLOW0Yc">
    <property role="TrG5h" value="MongoDbAccess" />
    <node concept="2tJIrI" id="5Ci2biiLVUr" role="jymVt" />
    <node concept="2YIFZL" id="5Ci2biiLVLQ" role="jymVt">
      <property role="TrG5h" value="open" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiLVLR" role="3clF47">
        <node concept="3cpWs8" id="5QK6GxzAI_V" role="3cqZAp">
          <node concept="3cpWsn" id="5QK6GxzAIA1" role="3cpWs9">
            <property role="TrG5h" value="address" />
            <node concept="3uibUv" id="5QK6GxzAIA3" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5QK6GxzAIBq" role="11_B2D">
                <ref role="3uigEE" to="wvt1:~ServerAddress" resolve="ServerAddress" />
              </node>
            </node>
            <node concept="2ShNRf" id="5QK6GxzAID7" role="33vP2m">
              <node concept="1pGfFk" id="5QK6GxzAJWA" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5QK6GxzAK13" role="1pMfVU">
                  <ref role="3uigEE" to="wvt1:~ServerAddress" resolve="ServerAddress" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5QK6GxzAK5q" role="3cqZAp">
          <node concept="2OqwBi" id="5QK6GxzAK8Q" role="3clFbG">
            <node concept="37vLTw" id="5QK6GxzAK5o" role="2Oq$k0">
              <ref role="3cqZAo" node="5QK6GxzAIA1" resolve="address" />
            </node>
            <node concept="liA8E" id="5QK6GxzAKdR" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="2ShNRf" id="5QK6GxzAKgQ" role="37wK5m">
                <node concept="1pGfFk" id="5QK6GxzAKAA" role="2ShVmc">
                  <ref role="37wK5l" to="wvt1:~ServerAddress.&lt;init&gt;(java.lang.String,int)" resolve="ServerAddress" />
                  <node concept="10M0yZ" id="5QK6GxzAKDe" role="37wK5m">
                    <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                    <ref role="3cqZAo" node="7MNizV3oaoI" resolve="hostname" />
                  </node>
                  <node concept="10M0yZ" id="5QK6GxzALJD" role="37wK5m">
                    <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                    <ref role="3cqZAo" node="7MNizV3oapu" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5QK6GxzAOlb" role="3cqZAp">
          <node concept="3cpWsn" id="5QK6GxzAOlc" role="3cpWs9">
            <property role="TrG5h" value="credentials" />
            <node concept="3uibUv" id="5QK6GxzAOld" role="1tU5fm">
              <ref role="3uigEE" to="wvt1:~MongoCredential" resolve="MongoCredential" />
            </node>
            <node concept="2YIFZM" id="5QK6GxzAP_S" role="33vP2m">
              <ref role="37wK5l" to="wvt1:~MongoCredential.createCredential(java.lang.String,java.lang.String,char[]):com.mongodb.MongoCredential" resolve="createCredential" />
              <ref role="1Pybhc" to="wvt1:~MongoCredential" resolve="MongoCredential" />
              <node concept="10M0yZ" id="5QK6GxzAPDa" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="7MNizV3oaqe" resolve="username" />
              </node>
              <node concept="10M0yZ" id="5QK6GxzAPKs" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="5Ci2biiLWbv" resolve="database" />
              </node>
              <node concept="2OqwBi" id="5QK6GxzAPYz" role="37wK5m">
                <node concept="10M0yZ" id="5QK6GxzAPSb" role="2Oq$k0">
                  <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                  <ref role="3cqZAo" node="7MNizV3oaqY" resolve="pwd" />
                </node>
                <node concept="liA8E" id="5QK6GxzAQ2M" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toCharArray():char[]" resolve="toCharArray" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5Ci2biiLVLT" role="3cqZAp">
          <node concept="3cpWsn" id="5Ci2biiLVLS" role="3cpWs9">
            <property role="3TUv4t" value="false" />
            <property role="TrG5h" value="mongoClient" />
            <node concept="3uibUv" id="5Ci2biiLVLU" role="1tU5fm">
              <ref role="3uigEE" to="wvt1:~MongoClient" resolve="MongoClient" />
            </node>
            <node concept="2ShNRf" id="5Ci2biiLVMb" role="33vP2m">
              <node concept="1pGfFk" id="5QK6GxzAN2B" role="2ShVmc">
                <ref role="37wK5l" to="wvt1:~MongoClient.&lt;init&gt;(java.util.List,java.util.List)" resolve="MongoClient" />
                <node concept="37vLTw" id="5QK6GxzAN9z" role="37wK5m">
                  <ref role="3cqZAo" node="5QK6GxzAIA1" resolve="address" />
                </node>
                <node concept="2YIFZM" id="5QK6GxzAQDb" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...):java.util.List" resolve="asList" />
                  <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
                  <node concept="37vLTw" id="5QK6GxzAQKv" role="37wK5m">
                    <ref role="3cqZAo" node="5QK6GxzAOlc" resolve="credentials" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Ci2biiLVLY" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLVNh" role="3cqZAk">
            <node concept="37vLTw" id="5Ci2biiLVNg" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiLVLS" resolve="mongoClient" />
            </node>
            <node concept="liA8E" id="5Ci2biiLVNi" role="2OqNvi">
              <ref role="37wK5l" to="wvt1:~MongoClient.getDatabase(java.lang.String):com.mongodb.client.MongoDatabase" resolve="getDatabase" />
              <node concept="10M0yZ" id="5Ci2biiLWfU" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="5Ci2biiLWbv" resolve="database" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLVM1" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiLVM2" role="3clF45">
        <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
      </node>
    </node>
    <node concept="2YIFZL" id="5Ci2biiLVM3" role="jymVt">
      <property role="TrG5h" value="drop" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiLVM4" role="3clF46">
        <property role="TrG5h" value="db" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ci2biiLVM5" role="1tU5fm">
          <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
        </node>
      </node>
      <node concept="3clFbS" id="5Ci2biiLVM6" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiLVM7" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLVNn" role="3clFbG">
            <node concept="37vLTw" id="5Ci2biiLVNm" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiLVM4" resolve="db" />
            </node>
            <node concept="liA8E" id="5Ci2biiLVNo" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoDatabase.drop():void" resolve="drop" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLVM9" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiLVMa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiLVJe" role="jymVt" />
    <node concept="3Tm1VV" id="3v5cxLOW0Yd" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk0Wq">
    <property role="TrG5h" value="Configuration" />
    <node concept="2tJIrI" id="43Z2Okkk0WC" role="jymVt" />
    <node concept="Wx3nA" id="7MNizV3oaoI" role="jymVt">
      <property role="TrG5h" value="hostname" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oaoK" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oaoL" role="33vP2m">
        <property role="Xl_RC" value="localhost" />
      </node>
    </node>
    <node concept="Wx3nA" id="7MNizV3oapu" role="jymVt">
      <property role="TrG5h" value="port" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="10Oyi0" id="7MNizV3oapw" role="1tU5fm" />
      <node concept="3cmrfG" id="7MNizV3oapx" role="33vP2m">
        <property role="3cmrfH" value="27017" />
      </node>
    </node>
    <node concept="Wx3nA" id="7MNizV3oaqe" role="jymVt">
      <property role="TrG5h" value="username" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oaqg" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oaqh" role="33vP2m">
        <property role="Xl_RC" value="MPS" />
      </node>
    </node>
    <node concept="Wx3nA" id="7MNizV3oaqY" role="jymVt">
      <property role="TrG5h" value="pwd" />
      <property role="2dlcS1" value="false" />
      <property role="3TUv4t" value="true" />
      <property role="2dld4O" value="false" />
      <node concept="17QB3L" id="7MNizV3oar0" role="1tU5fm" />
      <node concept="Xl_RD" id="7MNizV3oar1" role="33vP2m">
        <property role="Xl_RC" value="MPS" />
      </node>
    </node>
    <node concept="Wx3nA" id="5Ci2biiLWbv" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="database" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5Ci2biiLWbt" role="1tU5fm" />
      <node concept="Xl_RD" id="5Ci2biiLWc0" role="33vP2m">
        <property role="Xl_RC" value="circles" />
      </node>
    </node>
    <node concept="Wx3nA" id="5Ci2biiMbe1" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="projectsCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5Ci2biiMbe2" role="1tU5fm" />
      <node concept="Xl_RD" id="5Ci2biiMbe3" role="33vP2m">
        <property role="Xl_RC" value="projects" />
      </node>
      <node concept="3Tm1VV" id="3jMt7I9fb5y" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5Ci2biiMbeA" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="modulesCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5Ci2biiMbeB" role="1tU5fm" />
      <node concept="Xl_RD" id="5Ci2biiMbeC" role="33vP2m">
        <property role="Xl_RC" value="modules" />
      </node>
      <node concept="3Tm1VV" id="3jMt7I9fb5H" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5Ci2biiMbf8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="modelsCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5Ci2biiMbf9" role="1tU5fm" />
      <node concept="Xl_RD" id="5Ci2biiMbfa" role="33vP2m">
        <property role="Xl_RC" value="models" />
      </node>
      <node concept="3Tm1VV" id="3jMt7I9fb5S" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5Ci2biiMbfH" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="nodesCollection" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="5Ci2biiMbfI" role="1tU5fm" />
      <node concept="Xl_RD" id="5Ci2biiMbfJ" role="33vP2m">
        <property role="Xl_RC" value="root_nodes" />
      </node>
      <node concept="3Tm1VV" id="3jMt7I9fb63" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkk10b" role="jymVt" />
    <node concept="2tJIrI" id="43Z2Okkk0ZH" role="jymVt" />
    <node concept="3Tm1VV" id="43Z2Okkk0Wr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2OkkkeYv">
    <property role="TrG5h" value="MongoDbCollection" />
    <node concept="2tJIrI" id="5Ci2biiM0L3" role="jymVt" />
    <node concept="312cEg" id="5Ci2biiLWkC" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="db" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5Ci2biiLWkE" role="1tU5fm">
        <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
      </node>
      <node concept="3Tm6S6" id="5Ci2biiLWkF" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5Ci2biiLWkG" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5Ci2biiLXOH" role="1tU5fm" />
      <node concept="3Tm6S6" id="5Ci2biiLWkJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiLYPv" role="jymVt" />
    <node concept="3clFbW" id="5Ci2biiLWkK" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiLWkL" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiLWkM" role="3clF46">
        <property role="TrG5h" value="db" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ci2biiLWkN" role="1tU5fm">
          <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
        </node>
      </node>
      <node concept="37vLTG" id="5Ci2biiLWkO" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiLYdX" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiLWkQ" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiLWkR" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiLWkS" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiLWkT" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiLWkU" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiLWkV" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiLWkC" resolve="db" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiLWkW" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiLWkM" resolve="db" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiLWkX" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiLWkY" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiLWkZ" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiLWl0" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiLWl1" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiLWkG" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiLWl2" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiLWkO" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5Ci2biiLWl3" role="3cqZAp">
          <node concept="3fqX7Q" id="5Ci2biiLWl4" role="3clFbw">
            <node concept="1rXfSq" id="5Ci2biiLWl5" role="3fr31v">
              <ref role="37wK5l" node="5Ci2biiLWlK" resolve="exists" />
            </node>
          </node>
          <node concept="3clFbS" id="5Ci2biiLWl7" role="3clFbx">
            <node concept="3clFbF" id="5Ci2biiLWl8" role="3cqZAp">
              <node concept="2OqwBi" id="5Ci2biiLWmx" role="3clFbG">
                <node concept="37vLTw" id="5Ci2biiLWmw" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Ci2biiLWkM" resolve="db" />
                </node>
                <node concept="liA8E" id="5Ci2biiLWmy" role="2OqNvi">
                  <ref role="37wK5l" to="skwk:~MongoDatabase.createCollection(java.lang.String):void" resolve="createCollection" />
                  <node concept="37vLTw" id="5Ci2biiLWla" role="37wK5m">
                    <ref role="3cqZAo" node="5Ci2biiLWkO" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLWlj" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkkf1X" role="jymVt" />
    <node concept="3Tm1VV" id="43Z2OkkkeYw" role="1B3o_S" />
    <node concept="3clFb_" id="43Z2OkkkeZD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="43Z2OkkkeZF" role="1B3o_S" />
      <node concept="3cqZAl" id="43Z2OkkkeZG" role="3clF45" />
      <node concept="3clFbS" id="43Z2OkkkeZH" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiLYid" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLYie" role="3clFbG">
            <node concept="37vLTw" id="5Ci2biiLYif" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiLWkC" resolve="db" />
            </node>
            <node concept="liA8E" id="5Ci2biiLYig" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoDatabase.createCollection(java.lang.String):void" resolve="createCollection" />
              <node concept="37vLTw" id="5Ci2biiLYih" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiLWkG" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiLXZl" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiLWlk" role="jymVt">
      <property role="TrG5h" value="getCollection" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="16euLQ" id="5Ci2biiLWll" role="16eVyc">
        <property role="TrG5h" value="D" />
        <node concept="3uibUv" id="5Ci2biiLX2Y" role="3ztrMU">
          <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="5Ci2biiLWln" role="3clF46">
        <property role="TrG5h" value="documentClass" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ci2biiLWlo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="5Ci2biiLWlp" role="11_B2D">
            <ref role="16sUi3" node="5Ci2biiLWll" resolve="D" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="5Ci2biiLWlq" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiLWlr" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLWmH" role="3cqZAk">
            <node concept="37vLTw" id="5Ci2biiLWmG" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiLWkC" resolve="db" />
            </node>
            <node concept="liA8E" id="5Ci2biiLWmI" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoDatabase.getCollection(java.lang.String,java.lang.Class):com.mongodb.client.MongoCollection" resolve="getCollection" />
              <node concept="2OqwBi" id="5Ci2biiLWlt" role="37wK5m">
                <node concept="Xjq3P" id="5Ci2biiLWlu" role="2Oq$k0" />
                <node concept="2OwXpG" id="5Ci2biiLWlv" role="2OqNvi">
                  <ref role="2Oxat5" node="5Ci2biiLWkG" resolve="name" />
                </node>
              </node>
              <node concept="37vLTw" id="5Ci2biiLWlw" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiLWln" resolve="documentClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLWlx" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiLWly" role="3clF45">
        <ref role="3uigEE" to="skwk:~MongoCollection" resolve="MongoCollection" />
        <node concept="16syzq" id="5Ci2biiLWlz" role="11_B2D">
          <ref role="16sUi3" node="5Ci2biiLWll" resolve="D" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiM1sb" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiLWl$" role="jymVt">
      <property role="TrG5h" value="getCollection" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiLWl_" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiLWlA" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLWmN" role="3cqZAk">
            <node concept="37vLTw" id="5Ci2biiLWmM" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiLWkC" resolve="db" />
            </node>
            <node concept="liA8E" id="5Ci2biiLWmO" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoDatabase.getCollection(java.lang.String,java.lang.Class):com.mongodb.client.MongoCollection" resolve="getCollection" />
              <node concept="2OqwBi" id="5Ci2biiLWlC" role="37wK5m">
                <node concept="Xjq3P" id="5Ci2biiLWlD" role="2Oq$k0" />
                <node concept="2OwXpG" id="5Ci2biiLWlE" role="2OqNvi">
                  <ref role="2Oxat5" node="5Ci2biiLWkG" resolve="name" />
                </node>
              </node>
              <node concept="3VsKOn" id="5Ci2biiLWlG" role="37wK5m">
                <ref role="3VsUkX" to="htiy:~Document" resolve="Document" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLWlH" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiLWlI" role="3clF45">
        <ref role="3uigEE" to="skwk:~MongoCollection" resolve="MongoCollection" />
        <node concept="3uibUv" id="5Ci2biiLXdF" role="11_B2D">
          <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiM1C$" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiLWlK" role="jymVt">
      <property role="TrG5h" value="exists" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiLWlL" role="3clF47">
        <node concept="1DcWWT" id="5Ci2biiLWlM" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLWm1" role="1DdaDG">
            <node concept="2OqwBi" id="5Ci2biiLWm2" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiLWm3" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiLWm4" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiLWkC" resolve="db" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiLWm5" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoDatabase.listCollectionNames():com.mongodb.client.MongoIterable" resolve="listCollectionNames" />
            </node>
          </node>
          <node concept="3cpWsn" id="5Ci2biiLWlY" role="1Duv9x">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="name" />
            <node concept="17QB3L" id="5Ci2biiLYfw" role="1tU5fm" />
          </node>
          <node concept="3clFbS" id="5Ci2biiLWlO" role="2LFqv$">
            <node concept="3clFbJ" id="5Ci2biiLWlP" role="3cqZAp">
              <node concept="2OqwBi" id="5Ci2biiLWmT" role="3clFbw">
                <node concept="37vLTw" id="5Ci2biiLWmS" role="2Oq$k0">
                  <ref role="3cqZAo" node="5Ci2biiLWlY" resolve="name" />
                </node>
                <node concept="liA8E" id="5Ci2biiLWmU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                  <node concept="2OqwBi" id="5Ci2biiLWlR" role="37wK5m">
                    <node concept="Xjq3P" id="5Ci2biiLWlS" role="2Oq$k0" />
                    <node concept="2OwXpG" id="5Ci2biiLWlT" role="2OqNvi">
                      <ref role="2Oxat5" node="5Ci2biiLWkG" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="5Ci2biiLWlV" role="3clFbx">
                <node concept="3cpWs6" id="5Ci2biiLWlW" role="3cqZAp">
                  <node concept="3clFbT" id="5Ci2biiLWlX" role="3cqZAk">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5Ci2biiLWm6" role="3cqZAp">
          <node concept="3clFbT" id="5Ci2biiLWm7" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLWm8" role="1B3o_S" />
      <node concept="10P_77" id="5Ci2biiLWm9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM1OY" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiLWma" role="jymVt">
      <property role="TrG5h" value="addDocument" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiLWmb" role="3clF46">
        <property role="TrG5h" value="document" />
        <property role="3TUv4t" value="false" />
        <node concept="3uibUv" id="5Ci2biiLX$S" role="1tU5fm">
          <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="3clFbS" id="5Ci2biiLWmd" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiLWme" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiLWmf" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiLWmg" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiLWmh" role="2Oq$k0" />
              <node concept="liA8E" id="5Ci2biiLWmi" role="2OqNvi">
                <ref role="37wK5l" node="5Ci2biiLWl$" resolve="getCollection" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiLWmj" role="2OqNvi">
              <ref role="37wK5l" to="skwk:~MongoCollection.insertOne(java.lang.Object):void" resolve="insertOne" />
              <node concept="37vLTw" id="5Ci2biiLWmk" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiLWmb" resolve="document" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiLWml" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiLWmm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiLWin" role="jymVt" />
  </node>
  <node concept="312cEu" id="7MNizV3nHNm">
    <property role="TrG5h" value="MongoDbSchemaManager" />
    <node concept="2tJIrI" id="7MNizV3nHPb" role="jymVt" />
    <node concept="2tJIrI" id="7MNizV3nXSb" role="jymVt" />
    <node concept="3Tm1VV" id="7MNizV3nHNn" role="1B3o_S" />
    <node concept="3uibUv" id="7MNizV3nHOd" role="1zkMxy">
      <ref role="3uigEE" to="tt5a:7TSDInKxqHQ" resolve="SchemaManager" />
    </node>
    <node concept="3clFb_" id="7MNizV3nHOt" role="jymVt">
      <property role="TrG5h" value="createSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="false" />
      <node concept="3cqZAl" id="7MNizV3nHOv" role="3clF45" />
      <node concept="3Tm1VV" id="7MNizV3nHOw" role="1B3o_S" />
      <node concept="3clFbS" id="7MNizV3nHOx" role="3clF47">
        <node concept="3cpWs8" id="5Ci2biiMbCx" role="3cqZAp">
          <node concept="3cpWsn" id="5Ci2biiMbCy" role="3cpWs9">
            <property role="TrG5h" value="database" />
            <node concept="3uibUv" id="5Ci2biiMbCz" role="1tU5fm">
              <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
            </node>
            <node concept="2YIFZM" id="5Ci2biiMbE6" role="33vP2m">
              <ref role="37wK5l" node="5Ci2biiLVLQ" resolve="open" />
              <ref role="1Pybhc" node="3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMds0" role="3cqZAp">
          <node concept="2ShNRf" id="5Ci2biiMds2" role="3clFbG">
            <node concept="1pGfFk" id="5Ci2biiMds3" role="2ShVmc">
              <ref role="37wK5l" node="5Ci2biiLWkK" resolve="MongoDbCollection" />
              <node concept="37vLTw" id="5Ci2biiMds4" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMbCy" resolve="database" />
              </node>
              <node concept="10M0yZ" id="5Ci2biiMds5" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMbe1" resolve="projectsCollection" />
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMduo" role="3cqZAp">
          <node concept="2ShNRf" id="5Ci2biiMbJh" role="3clFbG">
            <node concept="1pGfFk" id="5Ci2biiMdo4" role="2ShVmc">
              <ref role="37wK5l" node="5Ci2biiLWkK" resolve="MongoDbCollection" />
              <node concept="37vLTw" id="5Ci2biiMdoU" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMbCy" resolve="database" />
              </node>
              <node concept="10M0yZ" id="5Ci2biiMdqe" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="5Ci2biiMbeA" resolve="modulesCollection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMdwa" role="3cqZAp">
          <node concept="2ShNRf" id="5Ci2biiMdwc" role="3clFbG">
            <node concept="1pGfFk" id="5Ci2biiMdwd" role="2ShVmc">
              <ref role="37wK5l" node="5Ci2biiLWkK" resolve="MongoDbCollection" />
              <node concept="37vLTw" id="5Ci2biiMdwe" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMbCy" resolve="database" />
              </node>
              <node concept="10M0yZ" id="5Ci2biiMdwf" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="5Ci2biiMbf8" resolve="modelsCollection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMdyA" role="3cqZAp">
          <node concept="2ShNRf" id="5Ci2biiMdyC" role="3clFbG">
            <node concept="1pGfFk" id="5Ci2biiMdyD" role="2ShVmc">
              <ref role="37wK5l" node="5Ci2biiLWkK" resolve="MongoDbCollection" />
              <node concept="37vLTw" id="5Ci2biiMdyE" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMbCy" resolve="database" />
              </node>
              <node concept="10M0yZ" id="5Ci2biiMdyF" role="37wK5m">
                <ref role="1PxDUh" node="43Z2Okkk0Wq" resolve="Configuration" />
                <ref role="3cqZAo" node="5Ci2biiMbfH" resolve="nodesCollection" />
              </node>
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
        <node concept="3clFbF" id="5Ci2biiMbpZ" role="3cqZAp">
          <node concept="2YIFZM" id="5Ci2biiMbqJ" role="3clFbG">
            <ref role="37wK5l" node="5Ci2biiLVM3" resolve="drop" />
            <ref role="1Pybhc" node="3v5cxLOW0Yc" resolve="MongoDbAccess" />
            <node concept="2YIFZM" id="5Ci2biiMblJ" role="37wK5m">
              <ref role="37wK5l" node="5Ci2biiLVLQ" resolve="open" />
              <ref role="1Pybhc" node="3v5cxLOW0Yc" resolve="MongoDbAccess" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5Ci2biiM21v">
    <property role="TrG5h" value="BaseCirclesDocument" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="5Ci2biiM21H" role="jymVt" />
    <node concept="312cEg" id="5Ci2biiM21S" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="document" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5Ci2biiM21U" role="1tU5fm">
        <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
      </node>
      <node concept="3Tmbuc" id="5Ci2biiM21V" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5Ci2biiM21W" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5Ci2biiM3eS" role="1tU5fm" />
      <node concept="3Tmbuc" id="5Ci2biiM21Z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5Ci2biiM220" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5Ci2biiM3ke" role="1tU5fm" />
      <node concept="3Tmbuc" id="5Ci2biiM223" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5Ci2biiM224" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="format" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5Ci2biiM2WS" role="1tU5fm">
        <ref role="3uigEE" to="25x5:~DateFormat" resolve="DateFormat" />
      </node>
      <node concept="2ShNRf" id="5Ci2biiM310" role="33vP2m">
        <node concept="1pGfFk" id="5Ci2biiM31q" role="2ShVmc">
          <ref role="37wK5l" to="25x5:~SimpleDateFormat.&lt;init&gt;(java.lang.String,java.util.Locale)" resolve="SimpleDateFormat" />
          <node concept="Xl_RD" id="5Ci2biiM228" role="37wK5m">
            <property role="Xl_RC" value="yyyy-MM-dd'T'HH:mm:ss'Z'" />
          </node>
          <node concept="10M0yZ" id="5Ci2biiM35y" role="37wK5m">
            <ref role="1PxDUh" to="33ny:~Locale" resolve="Locale" />
            <ref role="3cqZAo" to="33ny:~Locale.ENGLISH" resolve="ENGLISH" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5Ci2biiM22a" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM3AG" role="jymVt" />
    <node concept="3clFbW" id="5Ci2biiM22b" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiM22c" role="3clF45" />
      <node concept="3clFbS" id="5Ci2biiM22d" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiM22e" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiM22f" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM22g" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiM22h" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM22i" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="2ShNRf" id="5Ci2biiM23A" role="37vLTx">
              <node concept="1pGfFk" id="5Ci2biiM23B" role="2ShVmc">
                <ref role="37wK5l" to="htiy:~Document.&lt;init&gt;()" resolve="Document" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="6RW8DBDaWGd" role="3cqZAp">
          <node concept="3SKdUq" id="6RW8DBDaWGf" role="3SKWNk">
            <property role="3SKdUp" value="default id" />
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM22k" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM22l" role="3clFbG">
            <node concept="Xjq3P" id="5Ci2biiM22m" role="2Oq$k0" />
            <node concept="liA8E" id="5Ci2biiM22n" role="2OqNvi">
              <ref role="37wK5l" node="5Ci2biiM238" resolve="setId" />
              <node concept="2OqwBi" id="5Ci2biiM22o" role="37wK5m">
                <node concept="2YIFZM" id="5Ci2biiM34p" role="2Oq$k0">
                  <ref role="1Pybhc" to="33ny:~UUID" resolve="UUID" />
                  <ref role="37wK5l" to="33ny:~UUID.randomUUID():java.util.UUID" resolve="randomUUID" />
                </node>
                <node concept="liA8E" id="5Ci2biiM22q" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~UUID.toString():java.lang.String" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM22r" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5Ci2biiM22s" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiM22t" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiM22u" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiM3cd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM22w" role="3clF47">
        <node concept="1VxSAg" id="5Ci2biiM23E" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22b" resolve="BaseCirclesDocument" />
        </node>
        <node concept="3clFbF" id="5Ci2biiM22x" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM22y" role="3clFbG">
            <node concept="Xjq3P" id="5Ci2biiM22z" role="2Oq$k0" />
            <node concept="liA8E" id="5Ci2biiM22$" role="2OqNvi">
              <ref role="37wK5l" node="5Ci2biiM22I" resolve="setName" />
              <node concept="37vLTw" id="5Ci2biiM22_" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiM22u" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM22B" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5Ci2biiM22C" role="jymVt">
      <property role="TrG5h" value="getName" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiM22D" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiM22E" role="3cqZAp">
          <node concept="37vLTw" id="5Ci2biiM22F" role="3cqZAk">
            <ref role="3cqZAo" node="5Ci2biiM220" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM22G" role="1B3o_S" />
      <node concept="17QB3L" id="5Ci2biiM3pE" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiM22I" role="jymVt">
      <property role="TrG5h" value="setName" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiM22J" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiM3cX" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM22L" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiM22M" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiM22N" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM22O" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiM22P" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM22Q" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM220" resolve="name" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiM22R" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiM22J" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM22S" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM22T" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM22U" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiM22V" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM22W" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiM22X" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiM22Y" role="37wK5m">
                <property role="Xl_RC" value="name" />
              </node>
              <node concept="37vLTw" id="5Ci2biiM22Z" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiM22J" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5Ci2biiM3Iz" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiM231" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiM232" role="jymVt">
      <property role="TrG5h" value="getId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiM233" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiM234" role="3cqZAp">
          <node concept="37vLTw" id="5Ci2biiM235" role="3cqZAk">
            <ref role="3cqZAo" node="5Ci2biiM21W" resolve="id" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM236" role="1B3o_S" />
      <node concept="17QB3L" id="5Ci2biiM3uZ" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiM238" role="jymVt">
      <property role="TrG5h" value="setId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiM239" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiM3$j" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM23b" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiM23c" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiM23d" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM23e" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiM23f" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM23g" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21W" resolve="id" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiM23h" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiM239" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM23i" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM23j" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM23k" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiM23l" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM23m" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiM23n" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiM23o" role="37wK5m">
                <property role="Xl_RC" value="_id" />
              </node>
              <node concept="37vLTw" id="5Ci2biiM23p" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiM239" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM23q" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiM23r" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiM23s" role="jymVt">
      <property role="TrG5h" value="toDoc" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiM23t" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiM23u" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM23v" role="3cqZAk">
            <node concept="Xjq3P" id="5Ci2biiM23w" role="2Oq$k0" />
            <node concept="2OwXpG" id="5Ci2biiM23x" role="2OqNvi">
              <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM23y" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiM23z" role="3clF45">
        <ref role="3uigEE" to="htiy:~Document" resolve="Document" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiM21J" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiM21w" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5Ci2biiM3RC">
    <property role="TrG5h" value="ProjectDocument" />
    <node concept="2tJIrI" id="5Ci2biiM42P" role="jymVt" />
    <node concept="312cEg" id="5Ci2biiM42Y" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="modules" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5Ci2biiM430" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="5Ci2biiM4xr" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="5Ci2biiM432" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM8$L" role="jymVt" />
    <node concept="3clFbW" id="5Ci2biiM433" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiM434" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiM435" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiM4Ij" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM437" role="3clF47">
        <node concept="XkiVB" id="5Ci2biiM441" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22s" resolve="BaseCirclesDocument" />
          <node concept="37vLTw" id="5Ci2biiM43e" role="37wK5m">
            <ref role="3cqZAo" node="5Ci2biiM435" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM438" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiM439" role="3clFbG">
            <node concept="37vLTw" id="5Ci2biiM43a" role="37vLTJ">
              <ref role="3cqZAo" node="5Ci2biiM42Y" resolve="modules" />
            </node>
            <node concept="2ShNRf" id="5Ci2biiM442" role="37vLTx">
              <node concept="1pGfFk" id="5Ci2biiM443" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="17QB3L" id="5Ci2biiM4IQ" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM43f" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM8nw" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiM43g" role="jymVt">
      <property role="TrG5h" value="getModules" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiM43h" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiM43i" role="3cqZAp">
          <node concept="2YIFZM" id="5Ci2biiM447" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="37vLTw" id="5Ci2biiM43k" role="37wK5m">
              <ref role="3cqZAo" node="5Ci2biiM42Y" resolve="modules" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM43l" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiM43m" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="5Ci2biiM4MW" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiM8ag" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiM43o" role="jymVt">
      <property role="TrG5h" value="addModule" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiM43p" role="3clF46">
        <property role="TrG5h" value="moduleId" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiM7I_" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM43r" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiM43s" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM43t" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM43u" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiM43v" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM43w" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM42Y" resolve="modules" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiM43x" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="5Ci2biiM43y" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiM43p" resolve="moduleId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM43N" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM43O" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM43P" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiM43Q" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM43R" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiM43S" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiM43T" role="37wK5m">
                <property role="Xl_RC" value="moduleId" />
              </node>
              <node concept="2YIFZM" id="5Ci2biiM6$n" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable):java.lang.String" resolve="join" />
                <node concept="Xl_RD" id="5Ci2biiM6B7" role="37wK5m">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="2OqwBi" id="5Ci2biiM6Tj" role="37wK5m">
                  <node concept="Xjq3P" id="5Ci2biiM6Ot" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Ci2biiM6Y9" role="2OqNvi">
                    <ref role="2Oxat5" node="5Ci2biiM42Y" resolve="modules" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM43Z" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiM440" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM42R" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiM3RD" role="1B3o_S" />
    <node concept="3uibUv" id="5Ci2biiM42H" role="1zkMxy">
      <ref role="3uigEE" node="5Ci2biiM21v" resolve="BaseCirclesDocument" />
    </node>
  </node>
  <node concept="312cEu" id="5Ci2biiM7L2">
    <property role="TrG5h" value="ModuleDocument" />
    <node concept="2tJIrI" id="5Ci2biiM8M9" role="jymVt" />
    <node concept="312cEg" id="5Ci2biiM8Mi" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="models" />
      <property role="3TUv4t" value="false" />
      <node concept="3uibUv" id="5Ci2biiM8Mk" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="5Ci2biiM9hJ" role="11_B2D" />
      </node>
      <node concept="3Tm6S6" id="5Ci2biiM8Mm" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM9sL" role="jymVt" />
    <node concept="3clFbW" id="5Ci2biiM8Mn" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiM8Mo" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiM8Mp" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMa9m" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM8Mr" role="3clF47">
        <node concept="XkiVB" id="5Ci2biiM8N1" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22s" resolve="BaseCirclesDocument" />
          <node concept="37vLTw" id="5Ci2biiM8My" role="37wK5m">
            <ref role="3cqZAo" node="5Ci2biiM8Mp" resolve="name" />
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM8Ms" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiM8Mt" role="3clFbG">
            <node concept="37vLTw" id="5Ci2biiM8Mu" role="37vLTJ">
              <ref role="3cqZAo" node="5Ci2biiM8Mi" resolve="models" />
            </node>
            <node concept="2ShNRf" id="5Ci2biiM8N2" role="37vLTx">
              <node concept="1pGfFk" id="5Ci2biiM8N3" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="17QB3L" id="5Ci2biiMa9P" role="1pMfVU" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM8Mz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM9Ev" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiM8M$" role="jymVt">
      <property role="TrG5h" value="getModels" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiM8M_" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiM8MA" role="3cqZAp">
          <node concept="2YIFZM" id="5Ci2biiM8N7" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List):java.util.List" resolve="unmodifiableList" />
            <node concept="37vLTw" id="5Ci2biiM8MC" role="37wK5m">
              <ref role="3cqZAo" node="5Ci2biiM8Mi" resolve="models" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM8MD" role="1B3o_S" />
      <node concept="3uibUv" id="5Ci2biiM8ME" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="17QB3L" id="5Ci2biiMa8E" role="11_B2D" />
      </node>
    </node>
    <node concept="2tJIrI" id="5Ci2biiM9Se" role="jymVt" />
    <node concept="3clFb_" id="5Ci2biiM8MG" role="jymVt">
      <property role="TrG5h" value="addModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiM8MH" role="3clF46">
        <property role="TrG5h" value="modelId" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMa67" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiM8MJ" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiM8MK" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM8Nc" role="3clFbG">
            <node concept="37vLTw" id="5Ci2biiM8Nb" role="2Oq$k0">
              <ref role="3cqZAo" node="5Ci2biiM8Mi" resolve="models" />
            </node>
            <node concept="liA8E" id="5Ci2biiM8Nd" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="5Ci2biiM8MM" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiM8MH" resolve="modelId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiM8MN" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiM8MO" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiM8MP" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiM8MQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiM8MR" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiM8MS" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiM8MT" role="37wK5m">
                <property role="Xl_RC" value="modelId" />
              </node>
              <node concept="2YIFZM" id="5Ci2biiM8Nh" role="37wK5m">
                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable):java.lang.String" resolve="join" />
                <node concept="Xl_RD" id="5Ci2biiM8MV" role="37wK5m">
                  <property role="Xl_RC" value="," />
                </node>
                <node concept="2OqwBi" id="5Ci2biiM8MW" role="37wK5m">
                  <node concept="Xjq3P" id="5Ci2biiM8MX" role="2Oq$k0" />
                  <node concept="2OwXpG" id="5Ci2biiM8MY" role="2OqNvi">
                    <ref role="2Oxat5" node="5Ci2biiM8Mi" resolve="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiM8MZ" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiM8N0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiM8Mb" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiM7L3" role="1B3o_S" />
    <node concept="3uibUv" id="5Ci2biiM7L_" role="1zkMxy">
      <ref role="3uigEE" node="5Ci2biiM21v" resolve="BaseCirclesDocument" />
    </node>
  </node>
  <node concept="312cEu" id="5Ci2biiM7TL">
    <property role="TrG5h" value="ModelDocument" />
    <node concept="2tJIrI" id="5Ci2biiMadO" role="jymVt" />
    <node concept="3clFbW" id="5Ci2biiMadX" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiMadY" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiMadZ" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMafj" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiMae1" role="3clF47">
        <node concept="XkiVB" id="5Ci2biiMae5" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22s" resolve="BaseCirclesDocument" />
          <node concept="37vLTw" id="5Ci2biiMae3" role="37wK5m">
            <ref role="3cqZAo" node="5Ci2biiMadZ" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMae4" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiMadQ" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiM7TM" role="1B3o_S" />
    <node concept="3uibUv" id="5Ci2biiM7Us" role="1zkMxy">
      <ref role="3uigEE" node="5Ci2biiM21v" resolve="BaseCirclesDocument" />
    </node>
  </node>
  <node concept="312cEu" id="5Ci2biiM7U$">
    <property role="TrG5h" value="RootNodeDocument" />
    <node concept="2tJIrI" id="5Ci2biiMafE" role="jymVt" />
    <node concept="312cEg" id="5Ci2biiMafN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="svgFragment" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5Ci2biiMas9" role="1tU5fm" />
      <node concept="3Tm6S6" id="5Ci2biiMafQ" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="5Ci2biiMafR" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="modelId" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="5Ci2biiMavR" role="1tU5fm" />
      <node concept="3Tm6S6" id="5Ci2biiMafU" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5Ci2biiMafV" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiMafW" role="3clF45" />
      <node concept="3clFbS" id="5Ci2biiMafX" role="3clF47">
        <node concept="XkiVB" id="5Ci2biiMagW" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22b" resolve="BaseCirclesDocument" />
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMafZ" role="1B3o_S" />
    </node>
    <node concept="3clFbW" id="5Ci2biiMag0" role="jymVt">
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3cqZAl" id="5Ci2biiMag1" role="3clF45" />
      <node concept="37vLTG" id="5Ci2biiMag2" role="3clF46">
        <property role="TrG5h" value="name" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMazy" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiMag4" role="3clF47">
        <node concept="XkiVB" id="5Ci2biiMagX" role="3cqZAp">
          <ref role="37wK5l" node="5Ci2biiM22s" resolve="BaseCirclesDocument" />
          <node concept="37vLTw" id="5Ci2biiMag6" role="37wK5m">
            <ref role="3cqZAo" node="5Ci2biiMag2" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMag7" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="5Ci2biiMag8" role="jymVt">
      <property role="TrG5h" value="getSvgFragment" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiMag9" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiMaga" role="3cqZAp">
          <node concept="37vLTw" id="5Ci2biiMagb" role="3cqZAk">
            <ref role="3cqZAo" node="5Ci2biiMafN" resolve="svgFragment" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMagc" role="1B3o_S" />
      <node concept="17QB3L" id="5Ci2biiMa$2" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiMage" role="jymVt">
      <property role="TrG5h" value="setSvgFragment" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiMagf" role="3clF46">
        <property role="TrG5h" value="svgFragment" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMaB_" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiMagh" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiMagi" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiMagj" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiMagk" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiMagl" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiMagm" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiMafN" resolve="svgFragment" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiMagn" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiMagf" resolve="svgFragment" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMago" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiMagp" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiMagq" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiMagr" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiMags" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiMagt" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiMagu" role="37wK5m">
                <property role="Xl_RC" value="SVG" />
              </node>
              <node concept="37vLTw" id="5Ci2biiMagv" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMagf" resolve="svgFragment" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMagw" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiMagx" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiMagy" role="jymVt">
      <property role="TrG5h" value="getModelId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="5Ci2biiMagz" role="3clF47">
        <node concept="3cpWs6" id="5Ci2biiMag$" role="3cqZAp">
          <node concept="37vLTw" id="5Ci2biiMag_" role="3cqZAk">
            <ref role="3cqZAo" node="5Ci2biiMafR" resolve="modelId" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMagA" role="1B3o_S" />
      <node concept="17QB3L" id="5Ci2biiMaD4" role="3clF45" />
    </node>
    <node concept="3clFb_" id="5Ci2biiMagC" role="jymVt">
      <property role="TrG5h" value="setModelId" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="37vLTG" id="5Ci2biiMagD" role="3clF46">
        <property role="TrG5h" value="modelId" />
        <property role="3TUv4t" value="false" />
        <node concept="17QB3L" id="5Ci2biiMaGA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5Ci2biiMagF" role="3clF47">
        <node concept="3clFbF" id="5Ci2biiMagG" role="3cqZAp">
          <node concept="37vLTI" id="5Ci2biiMagH" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiMagI" role="37vLTJ">
              <node concept="Xjq3P" id="5Ci2biiMagJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiMagK" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiMafR" resolve="modelId" />
              </node>
            </node>
            <node concept="37vLTw" id="5Ci2biiMagL" role="37vLTx">
              <ref role="3cqZAo" node="5Ci2biiMagD" resolve="modelId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5Ci2biiMagM" role="3cqZAp">
          <node concept="2OqwBi" id="5Ci2biiMagN" role="3clFbG">
            <node concept="2OqwBi" id="5Ci2biiMagO" role="2Oq$k0">
              <node concept="Xjq3P" id="5Ci2biiMagP" role="2Oq$k0" />
              <node concept="2OwXpG" id="5Ci2biiMagQ" role="2OqNvi">
                <ref role="2Oxat5" node="5Ci2biiM21S" resolve="document" />
              </node>
            </node>
            <node concept="liA8E" id="5Ci2biiMagR" role="2OqNvi">
              <ref role="37wK5l" to="htiy:~Document.append(java.lang.String,java.lang.Object):org.bson.Document" resolve="append" />
              <node concept="Xl_RD" id="5Ci2biiMagS" role="37wK5m">
                <property role="Xl_RC" value="modelId" />
              </node>
              <node concept="37vLTw" id="5Ci2biiMagT" role="37wK5m">
                <ref role="3cqZAo" node="5Ci2biiMagD" resolve="modelId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5Ci2biiMagU" role="1B3o_S" />
      <node concept="3cqZAl" id="5Ci2biiMagV" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5Ci2biiMafG" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiM7U_" role="1B3o_S" />
    <node concept="3uibUv" id="5Ci2biiM7V9" role="1zkMxy">
      <ref role="3uigEE" node="5Ci2biiM21v" resolve="BaseCirclesDocument" />
    </node>
  </node>
</model>

