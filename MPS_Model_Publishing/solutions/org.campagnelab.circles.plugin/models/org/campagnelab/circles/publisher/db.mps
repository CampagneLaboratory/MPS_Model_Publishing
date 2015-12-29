<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports>
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7fgt" ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
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
        <node concept="3clFbF" id="7MNizV3nXiE" role="3cqZAp">
          <node concept="1rXfSq" id="7MNizV3nXiD" role="3clFbG">
            <ref role="37wK5l" node="7MNizV3nXfs" resolve="createDb" />
            <node concept="37vLTw" id="7MNizV3nXpm" role="37wK5m">
              <ref role="3cqZAo" node="7MNizV3nHgo" resolve="project" />
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
    <node concept="3Tm1VV" id="5Ci2biiL$yN" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk12T">
    <property role="TrG5h" value="Collection" />
    <property role="1sVAO0" value="true" />
    <node concept="312cEg" id="43Z2Okkk13Y" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="43Z2Okkk13F" role="1B3o_S" />
      <node concept="17QB3L" id="43Z2Okkk13U" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkkf4g" role="jymVt" />
    <node concept="3clFbW" id="43Z2Okkkf9g" role="jymVt">
      <node concept="3cqZAl" id="43Z2Okkkf9h" role="3clF45" />
      <node concept="3clFbS" id="43Z2Okkkf9j" role="3clF47" />
      <node concept="3Tm1VV" id="43Z2Okkkf7z" role="1B3o_S" />
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
    <node concept="3clFb_" id="43Z2Okkkff5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="setName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkkff8" role="3clF47">
        <node concept="3clFbF" id="43Z2OkkkfiI" role="3cqZAp">
          <node concept="37vLTI" id="43Z2Okkkfmf" role="3clFbG">
            <node concept="37vLTw" id="43Z2Okkkfn_" role="37vLTx">
              <ref role="3cqZAo" node="43Z2Okkkfh8" resolve="name" />
            </node>
            <node concept="2OqwBi" id="43Z2Okkkfjd" role="37vLTJ">
              <node concept="Xjq3P" id="43Z2OkkkfiH" role="2Oq$k0" />
              <node concept="2OwXpG" id="43Z2Okkkfkm" role="2OqNvi">
                <ref role="2Oxat5" node="43Z2Okkk13Y" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="43Z2Okkkfdg" role="1B3o_S" />
      <node concept="3cqZAl" id="43Z2Okkkff1" role="3clF45" />
      <node concept="37vLTG" id="43Z2Okkkfh8" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="43Z2Okkkfh7" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="43Z2Okkk1bL" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="exists" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkk1bO" role="3clF47" />
      <node concept="3Tm1VV" id="43Z2OkkkeRn" role="1B3o_S" />
      <node concept="10P_77" id="43Z2Okkk1bH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="43Z2Okkk1nq" role="jymVt" />
    <node concept="3clFb_" id="43Z2Okkk1eO" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkk1eR" role="3clF47" />
      <node concept="3Tm1VV" id="43Z2OkkkePg" role="1B3o_S" />
      <node concept="3cqZAl" id="43Z2Okkk1eK" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="43Z2OkkkfB5" role="jymVt" />
    <node concept="3clFb_" id="43Z2Okkkf$p" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="newDocument" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="43Z2Okkkf$q" role="3clF47" />
      <node concept="3Tm1VV" id="43Z2Okkkf$r" role="1B3o_S" />
      <node concept="3uibUv" id="43Z2OkkkfGm" role="3clF45">
        <ref role="3uigEE" node="43Z2Okkk1oX" resolve="Document" />
      </node>
    </node>
    <node concept="2tJIrI" id="43Z2OkkkcmD" role="jymVt" />
    <node concept="3clFb_" id="43Z2OkkkcrG" role="jymVt">
      <property role="1EzhhJ" value="true" />
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
    <property role="1sVAO0" value="true" />
    <node concept="3Tm1VV" id="43Z2Okkk1oY" role="1B3o_S" />
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

