<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="htiy" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson(com.mongodb.driver/)" />
    <import index="wvt1" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb(com.mongodb.driver/)" />
    <import index="skwk" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client(com.mongodb.driver/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <node concept="2tJIrI" id="5Ci2biiL$z8" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiL$yN" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3v5cxLOW0Yc">
    <property role="TrG5h" value="MongoDbAccess" />
    <node concept="312cEg" id="43Z2Okkke9e" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="client" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="43Z2Okkke7o" role="1B3o_S" />
      <node concept="3uibUv" id="43Z2Okkke97" role="1tU5fm">
        <ref role="3uigEE" to="wvt1:~MongoClient" resolve="MongoClient" />
      </node>
      <node concept="2ShNRf" id="43Z2Okkkecf" role="33vP2m">
        <node concept="1pGfFk" id="43Z2Okkkeo4" role="2ShVmc">
          <ref role="37wK5l" to="wvt1:~MongoClient.&lt;init&gt;()" resolve="MongoClient" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="43Z2Okkkevn" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="db" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="43Z2Okkketv" role="1B3o_S" />
      <node concept="3uibUv" id="43Z2Okkkevf" role="1tU5fm">
        <ref role="3uigEE" to="skwk:~MongoDatabase" resolve="MongoDatabase" />
      </node>
    </node>
    <node concept="3clFbW" id="43Z2OkkkdGq" role="jymVt">
      <node concept="3cqZAl" id="43Z2OkkkdGs" role="3clF45" />
      <node concept="3Tm1VV" id="43Z2OkkkdGt" role="1B3o_S" />
      <node concept="3clFbS" id="43Z2OkkkdGu" role="3clF47">
        <node concept="3clFbF" id="43Z2Okkke_m" role="3cqZAp">
          <node concept="37vLTI" id="43Z2OkkkeCT" role="3clFbG">
            <node concept="2OqwBi" id="43Z2OkkkeFe" role="37vLTx">
              <node concept="37vLTw" id="43Z2OkkkeDV" role="2Oq$k0">
                <ref role="3cqZAo" node="43Z2Okkke9e" resolve="client" />
              </node>
              <node concept="liA8E" id="43Z2OkkkeGX" role="2OqNvi">
                <ref role="37wK5l" to="wvt1:~MongoClient.getDatabase(java.lang.String):com.mongodb.client.MongoDatabase" resolve="getDatabase" />
                <node concept="37vLTw" id="43Z2OkkkeIH" role="37wK5m">
                  <ref role="3cqZAo" node="43Z2OkkkdGS" resolve="databaseName" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="43Z2OkkkeA$" role="37vLTJ">
              <node concept="Xjq3P" id="43Z2Okkke_k" role="2Oq$k0" />
              <node concept="2OwXpG" id="43Z2OkkkeCf" role="2OqNvi">
                <ref role="2Oxat5" node="43Z2Okkkevn" resolve="db" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="43Z2OkkkdGS" role="3clF46">
        <property role="TrG5h" value="databaseName" />
        <node concept="17QB3L" id="43Z2OkkkdGR" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="43Z2Okkkey6" role="jymVt" />
    <node concept="3Tm1VV" id="3v5cxLOW0Yd" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk0Wq">
    <property role="TrG5h" value="Configuration" />
    <node concept="2tJIrI" id="43Z2Okkk0WC" role="jymVt" />
    <node concept="312cEg" id="43Z2Okkk0WM" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="url" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="43Z2Okkk0WK" role="1tU5fm" />
      <node concept="Xl_RD" id="43Z2Okkk0Xo" role="33vP2m">
        <property role="Xl_RC" value="http://localhost:27017/Circles" />
      </node>
    </node>
    <node concept="312cEg" id="43Z2Okkk0ZN" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="username" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="43Z2Okkk0ZO" role="1tU5fm" />
      <node concept="Xl_RD" id="43Z2Okkk0ZP" role="33vP2m">
        <property role="Xl_RC" value="admin" />
      </node>
    </node>
    <node concept="312cEg" id="43Z2Okkk10r" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="pwd" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="43Z2Okkk10s" role="1tU5fm" />
      <node concept="Xl_RD" id="43Z2Okkk10t" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkk10b" role="jymVt" />
    <node concept="2tJIrI" id="43Z2Okkk0ZH" role="jymVt" />
    <node concept="3Tm1VV" id="43Z2Okkk0Wr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk12T">
    <property role="TrG5h" value="Collection" />
    <node concept="312cEg" id="43Z2Okkk13Y" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="43Z2Okkk13F" role="1B3o_S" />
      <node concept="17QB3L" id="43Z2Okkk13U" role="1tU5fm" />
    </node>
    <node concept="3clFbW" id="43Z2Okkk13o" role="jymVt">
      <node concept="3cqZAl" id="43Z2Okkk13q" role="3clF45" />
      <node concept="3Tm1VV" id="43Z2Okkk13r" role="1B3o_S" />
      <node concept="3clFbS" id="43Z2Okkk13s" role="3clF47">
        <node concept="3clFbF" id="43Z2Okkk14$" role="3cqZAp">
          <node concept="37vLTI" id="43Z2Okkk17p" role="3clFbG">
            <node concept="37vLTw" id="43Z2Okkk18G" role="37vLTx">
              <ref role="3cqZAo" node="43Z2Okkk14e" resolve="name" />
            </node>
            <node concept="2OqwBi" id="43Z2Okkk14O" role="37vLTJ">
              <node concept="Xjq3P" id="43Z2Okkk14z" role="2Oq$k0" />
              <node concept="2OwXpG" id="43Z2Okkk15z" role="2OqNvi">
                <ref role="2Oxat5" node="43Z2Okkk13Y" resolve="name" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43Z2Okkk1gz" role="3cqZAp">
          <node concept="3clFbS" id="43Z2Okkk1g_" role="3clFbx">
            <node concept="3clFbF" id="43Z2Okkk1lu" role="3cqZAp">
              <node concept="1rXfSq" id="43Z2Okkk1ls" role="3clFbG">
                <ref role="37wK5l" node="43Z2Okkk1eO" resolve="create" />
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="43Z2Okkk1hv" role="3clFbw">
            <node concept="2OqwBi" id="43Z2Okkk1il" role="3fr31v">
              <node concept="Xjq3P" id="43Z2Okkk1hH" role="2Oq$k0" />
              <node concept="liA8E" id="43Z2Okkk1kB" role="2OqNvi">
                <ref role="37wK5l" node="43Z2Okkk1bL" resolve="exists" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="43Z2Okkk14e" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="43Z2Okkk14d" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="43Z2Okkk1lS" role="jymVt" />
    <node concept="3clFb_" id="43Z2Okkk1bL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="exists" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkk1bO" role="3clF47">
        <node concept="3clFbF" id="43Z2Okkk1cO" role="3cqZAp">
          <node concept="3clFbT" id="43Z2Okkk1cN" role="3clFbG">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="43Z2Okkk1aS" role="1B3o_S" />
      <node concept="10P_77" id="43Z2Okkk1bH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkk1nq" role="jymVt" />
    <node concept="3clFb_" id="43Z2Okkk1eO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkk1eR" role="3clF47" />
      <node concept="3Tm6S6" id="43Z2Okkk1dP" role="1B3o_S" />
      <node concept="3cqZAl" id="43Z2Okkk1eK" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="43Z2OkkkcmD" role="jymVt" />
    <node concept="3clFb_" id="43Z2OkkkcrG" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="addDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2OkkkcrJ" role="3clF47" />
      <node concept="3Tm1VV" id="43Z2OkkkcpR" role="1B3o_S" />
      <node concept="3cqZAl" id="43Z2OkkkcrC" role="3clF45" />
      <node concept="37vLTG" id="43Z2OkkkctE" role="3clF46">
        <property role="TrG5h" value="document" />
        <node concept="3uibUv" id="43Z2OkkkctD" role="1tU5fm">
          <ref role="3uigEE" node="43Z2Okkk1oX" resolve="Document" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="43Z2Okkk12U" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk1oX">
    <property role="TrG5h" value="Document" />
    <node concept="312cEg" id="43Z2Okkkcmj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="dbDoc" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="43Z2OkkkciQ" role="1B3o_S" />
      <node concept="3uibUv" id="43Z2Okkkcmc" role="1tU5fm">
        <ref role="3uigEE" to="htiy:~BsonDocument" resolve="BsonDocument" />
      </node>
    </node>
    <node concept="3Tm1VV" id="43Z2Okkk1oY" role="1B3o_S" />
  </node>
</model>

