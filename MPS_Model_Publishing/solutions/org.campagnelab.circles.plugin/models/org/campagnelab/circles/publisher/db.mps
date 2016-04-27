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
    <import index="7fgt" ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb.model)" />
    <import index="skwk" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client(com.mongodb.driver/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rkxj" ref="r:b1598fca-3527-4718-b3ee-193781dbf052(jetbrains.mps.ide.java.newparser)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util()" />
    <import index="ha1n" ref="r:117db92d-261b-4ba2-97fe-04df0369434b(org.campagnelab.mps.editor2pdf.behavior)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="htiy" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson(com.mongodb.driver/)" />
    <import index="n0jz" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:com.mongodb.client.model(com.mongodb.driver/)" />
    <import index="ncvd" ref="8a9532d6-8a70-4740-b535-cf759be9dbd2/java:org.bson.conversions(com.mongodb.driver/)" />
    <import index="vdtg" ref="r:deb87fab-190d-40b1-8364-c6d9ac5e7577(org.campagnelab.circles.publisher.mongodb.shell)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="43Z2OkkkeXA">
    <property role="TrG5h" value="DbFactory" />
    <node concept="2tJIrI" id="43Z2OkkkeXU" role="jymVt" />
    <node concept="2YIFZL" id="7MNizV3nJfH" role="jymVt">
      <property role="TrG5h" value="getSchemaManager" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="7MNizV3nHLp" role="3clF47">
        <node concept="3clFbF" id="7MNizV3nHLS" role="3cqZAp">
          <node concept="2ShNRf" id="7MNizV3nHLQ" role="3clFbG">
            <node concept="HV5vD" id="7MNizV3nJd$" role="2ShVmc">
              <ref role="HV5vE" to="vdtg:7MNizV3nHNm" resolve="MongoDbSchemaManager" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6U_J9TPSjiZ" role="3clF45">
        <ref role="3uigEE" node="6U_J9TPS5dg" resolve="SchemaManager" />
      </node>
      <node concept="3Tm1VV" id="6U_J9TPSe5F" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="6U_J9TPS5aK" role="jymVt">
      <property role="TrG5h" value="getSerializer" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="6U_J9TPS5aL" role="3clF47">
        <node concept="3clFbF" id="6U_J9TPS5aM" role="3cqZAp">
          <node concept="2ShNRf" id="6U_J9TPS5aN" role="3clFbG">
            <node concept="HV5vD" id="6U_J9TPSdLy" role="2ShVmc">
              <ref role="HV5vE" to="vdtg:5Ci2biiL$yM" resolve="ModuleSerializer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6U_J9TPS5aP" role="3clF45">
        <ref role="3uigEE" node="7TSDInKxqHQ" resolve="Serializer" />
      </node>
      <node concept="3Tm1VV" id="6U_J9TPSe5W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6U_J9TPS5at" role="jymVt" />
    <node concept="3Tm1VV" id="43Z2OkkkeXB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7TSDInKxqHQ">
    <property role="TrG5h" value="Serializer" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7MNizV3nJov" role="jymVt" />
    <node concept="3clFb_" id="7MNizV3nJnZ" role="jymVt">
      <property role="TrG5h" value="serializeProjectWithModules" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="6U_J9TPS6nZ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6U_J9TPS6o0" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="37vLTG" id="6U_J9TPS7P8" role="3clF46">
        <property role="TrG5h" value="modules" />
        <node concept="3uibUv" id="6U_J9TPS7P9" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="6U_J9TPS7Pa" role="11_B2D">
            <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7MNizV3nJo0" role="3clF47" />
      <node concept="3cqZAl" id="7MNizV3nJo1" role="3clF45" />
      <node concept="3Tm1VV" id="7MNizV3nJo2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3bxG5bqw$1M" role="jymVt" />
    <node concept="3clFb_" id="7MNizV3nHMn" role="jymVt">
      <property role="TrG5h" value="dropProject" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="37vLTG" id="6U_J9TPS8P2" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6U_J9TPS8P3" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="7TSDInKxrHp" role="3clF47" />
      <node concept="3cqZAl" id="7TSDInKxrHf" role="3clF45" />
      <node concept="3Tm1VV" id="7TSDInKxrH0" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7TSDInKxqHR" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="43Z2Okkk0Wq">
    <property role="TrG5h" value="Connection" />
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
  <node concept="312cEu" id="6U_J9TPS5dg">
    <property role="TrG5h" value="SchemaManager" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="6U_J9TPS5dh" role="jymVt" />
    <node concept="3clFb_" id="6U_J9TPS5di" role="jymVt">
      <property role="TrG5h" value="dropSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="6U_J9TPS5dj" role="3clF47" />
      <node concept="3cqZAl" id="6U_J9TPS5dk" role="3clF45" />
      <node concept="3Tm1VV" id="6U_J9TPS5dl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6U_J9TPS5dm" role="jymVt" />
    <node concept="3clFb_" id="6U_J9TPS5dn" role="jymVt">
      <property role="TrG5h" value="createSchema" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="1EzhhJ" value="true" />
      <node concept="3clFbS" id="6U_J9TPS5do" role="3clF47" />
      <node concept="3cqZAl" id="6U_J9TPS5dp" role="3clF45" />
      <node concept="3Tm1VV" id="6U_J9TPS5dq" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="6U_J9TPS5dr" role="1B3o_S" />
  </node>
</model>

