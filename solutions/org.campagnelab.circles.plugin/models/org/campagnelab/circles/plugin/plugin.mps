<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d3b37b30-cdff-43c0-8fa0-a9526797ea6b(org.campagnelab.circles.plugin.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="2" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="9oh" ref="r:de82dfab-9448-49ba-813e-2b0579f7fb15(jetbrains.mps.ide.platform.actions)" />
    <import index="tt5a" ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="7fgt" ref="r:39038425-9225-43fd-83ff-4f4e9f7a1f9b(org.campagnelab.circles.publisher.mongodb.model)" />
    <import index="vdtg" ref="r:deb87fab-190d-40b1-8364-c6d9ac5e7577(org.campagnelab.circles.publisher.mongodb.shell)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
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
      <concept id="1210179134063" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentDeclaration" flags="ng" index="34j2dQ">
        <child id="1210179829398" name="persistenPropertyDeclaration" index="34lFYf" />
        <child id="1210684426855" name="preferencePage" index="3yq$HY" />
      </concept>
      <concept id="1210179190070" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyDeclaration" flags="ng" index="34jfKJ" />
      <concept id="1210180874794" name="jetbrains.mps.lang.plugin.structure.PersistentPropertyReference" flags="nn" index="34pFcN" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1210684385183" name="jetbrains.mps.lang.plugin.structure.PreferencePage" flags="ng" index="3yqqq6">
        <property id="1557260317236259345" name="helpTopic" index="3EcmCg" />
        <child id="1210686845551" name="component" index="3yzNdQ" />
        <child id="1210686936988" name="resetBlock" index="3y$9q5" />
        <child id="1210686956582" name="commitBlock" index="3y$ekZ" />
        <child id="1210763647050" name="isModifiedBlock" index="3B8L_j" />
      </concept>
      <concept id="1210686882550" name="jetbrains.mps.lang.plugin.structure.PreferencePageResetBlock" flags="in" index="3yzWfJ" />
      <concept id="1210686969356" name="jetbrains.mps.lang.plugin.structure.PreferencePageCommitBlock" flags="in" index="3y$hsl" />
      <concept id="1210690798207" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_PreferencePage_component" flags="nn" index="3yMSdA" />
      <concept id="1210763550007" name="jetbrains.mps.lang.plugin.structure.PreferencePageIsModifiedBlock" flags="in" index="3B8pKI" />
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
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239709250944" name="jetbrains.mps.baseLanguage.structure.PrefixIncrementExpression" flags="nn" index="2$rviw" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL" />
    </language>
    <language id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings">
      <concept id="2722628536111969416" name="jetbrains.mps.execution.settings.structure.GridBagConstraints" flags="nn" index="1rwKMM">
        <property id="2722628536111969418" name="constraintsKind" index="1rwKMK" />
        <child id="2722628536112144966" name="order" index="1rxHDW" />
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
        <ref role="tCJdB" node="3Uieg3Mrup8" resolve="DropProject" />
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
    <property role="TrG5h" value="DropProject" />
    <property role="2uzpH1" value="Drop Project" />
    <node concept="2XrIbr" id="1jNpE3AdD9h" role="32lrUH">
      <property role="TrG5h" value="refresh" />
      <node concept="3clFbS" id="1jNpE3AdD9i" role="3clF47">
        <node concept="3clFbF" id="1jNpE3AdDdC" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdDdD" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdDdE" role="37vLTJ">
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
              <ref role="3cqZAo" to="tt5a:7MNizV3oaoI" resolve="hostname" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdDdF" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdDdG" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdDdH" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="1jNpE3AdDdI" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdDdJ" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdDdK" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdDdL" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdDdM" role="2OqNvi">
                <ref role="2WH_rO" node="2uFXGB4HUkr" resolve="hostname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdDdN" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdDdO" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdDdP" role="37vLTJ">
              <ref role="3cqZAo" to="tt5a:7MNizV3oapu" resolve="port" />
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdDdQ" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdDdR" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdDdS" role="2Oq$k0">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <node concept="2OqwBi" id="1jNpE3AdDdT" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdDdU" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdDdV" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdDdW" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdDdX" role="2OqNvi">
                <ref role="2WH_rO" node="6R$jUV_5XlE" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdDdY" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdDdZ" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdDe0" role="37vLTJ">
              <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdDe1" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdDe2" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdDe3" role="2Oq$k0">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <node concept="2OqwBi" id="1jNpE3AdDe4" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdDe5" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdDe6" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdDe7" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdDe8" role="2OqNvi">
                <ref role="2WH_rO" node="7jqSt7$RDmk" resolve="username" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdDe9" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdDea" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdDeb" role="37vLTJ">
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
              <ref role="3cqZAo" to="tt5a:7MNizV3oaqY" resolve="pwd" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdDec" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdDed" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdDee" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="1jNpE3AdDef" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdDeg" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdDeh" role="2OqNvi">
                      <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdDei" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdDej" role="2OqNvi">
                <ref role="2WH_rO" node="7jqSt7ya6yC" resolve="password" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1jNpE3AdDds" role="3clF45" />
    </node>
    <node concept="tnohg" id="3Uieg3Mrup9" role="tncku">
      <node concept="3clFbS" id="3Uieg3Mrupa" role="2VODD2">
        <node concept="3clFbF" id="1jNpE3AdDIv" role="3cqZAp">
          <node concept="2OqwBi" id="1jNpE3AdDIp" role="3clFbG">
            <node concept="2WthIp" id="1jNpE3AdDIs" role="2Oq$k0" />
            <node concept="2XshWL" id="1jNpE3AdDIu" role="2OqNvi">
              <ref role="2WH_rO" node="1jNpE3AdD9h" resolve="refresh" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPSfiz" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPSfl5" role="3clFbG">
            <node concept="2YIFZM" id="6U_J9TPSfk0" role="2Oq$k0">
              <ref role="37wK5l" to="tt5a:6U_J9TPS5aK" resolve="getSerializer" />
              <ref role="1Pybhc" to="tt5a:43Z2OkkkeXA" resolve="DbFactory" />
            </node>
            <node concept="liA8E" id="6U_J9TPSfot" role="2OqNvi">
              <ref role="37wK5l" to="tt5a:7MNizV3nHMn" resolve="dropProject" />
              <node concept="2OqwBi" id="6U_J9TPSfrC" role="37wK5m">
                <node concept="2WthIp" id="6U_J9TPSfpw" role="2Oq$k0" />
                <node concept="1DTwFV" id="6U_J9TPSf$Z" role="2OqNvi">
                  <ref role="2WH_rO" node="3Uieg3MrupK" resolve="project" />
                </node>
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
    <node concept="2XrIbr" id="1jNpE3AdGxm" role="32lrUH">
      <property role="TrG5h" value="refresh" />
      <node concept="3clFbS" id="1jNpE3AdGxn" role="3clF47">
        <node concept="3clFbF" id="1jNpE3AdGxo" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdGxp" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdGxq" role="37vLTJ">
              <ref role="3cqZAo" to="tt5a:7MNizV3oaoI" resolve="hostname" />
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdGxr" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdGxs" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdGxt" role="2Oq$k0">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <node concept="2OqwBi" id="1jNpE3AdGxu" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdGxv" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdGxw" role="2OqNvi">
                      <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdGxx" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdGxy" role="2OqNvi">
                <ref role="2WH_rO" node="2uFXGB4HUkr" resolve="hostname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdGxz" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdGx$" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdGx_" role="37vLTJ">
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
              <ref role="3cqZAo" to="tt5a:7MNizV3oapu" resolve="port" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdGxA" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdGxB" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdGxC" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="1jNpE3AdGxD" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdGxE" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdGxF" role="2OqNvi">
                      <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdGxG" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdGxH" role="2OqNvi">
                <ref role="2WH_rO" node="6R$jUV_5XlE" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdGxI" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdGxJ" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdGxK" role="37vLTJ">
              <ref role="3cqZAo" to="tt5a:7MNizV3oaqe" resolve="username" />
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdGxL" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdGxM" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdGxN" role="2Oq$k0">
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <node concept="2OqwBi" id="1jNpE3AdGxO" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdGxP" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdGxQ" role="2OqNvi">
                      <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdGxR" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdGxS" role="2OqNvi">
                <ref role="2WH_rO" node="7jqSt7$RDmk" resolve="username" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1jNpE3AdGxT" role="3cqZAp">
          <node concept="37vLTI" id="1jNpE3AdGxU" role="3clFbG">
            <node concept="10M0yZ" id="1jNpE3AdGxV" role="37vLTJ">
              <ref role="3cqZAo" to="tt5a:7MNizV3oaqY" resolve="pwd" />
              <ref role="1PxDUh" to="tt5a:43Z2Okkk0Wq" resolve="Connection" />
            </node>
            <node concept="2OqwBi" id="1jNpE3AdGxW" role="37vLTx">
              <node concept="2EnYce" id="1jNpE3AdGxX" role="2Oq$k0">
                <node concept="2YIFZM" id="1jNpE3AdGxY" role="2Oq$k0">
                  <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project):com.intellij.openapi.project.Project" resolve="toIdeaProject" />
                  <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                  <node concept="2OqwBi" id="1jNpE3AdGxZ" role="37wK5m">
                    <node concept="2WthIp" id="1jNpE3AdGy0" role="2Oq$k0" />
                    <node concept="1DTwFV" id="1jNpE3AdGy1" role="2OqNvi">
                      <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                    </node>
                  </node>
                </node>
                <node concept="LR4Ub" id="1jNpE3AdGy2" role="2OqNvi">
                  <ref role="LR4Ua" node="2rIRh_WVGqi" resolve="PublisherConnection" />
                </node>
              </node>
              <node concept="34pFcN" id="1jNpE3AdGy3" role="2OqNvi">
                <ref role="2WH_rO" node="7jqSt7ya6yC" resolve="password" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1jNpE3AdGy4" role="3clF45" />
    </node>
    <node concept="tnohg" id="5eOdMaeZc8s" role="tncku">
      <node concept="3clFbS" id="5eOdMaeZc8t" role="2VODD2">
        <node concept="3clFbF" id="1jNpE3AdH8L" role="3cqZAp">
          <node concept="2OqwBi" id="1jNpE3AdH8F" role="3clFbG">
            <node concept="2WthIp" id="1jNpE3AdH8I" role="2Oq$k0" />
            <node concept="2XshWL" id="1jNpE3AdH8K" role="2OqNvi">
              <ref role="2WH_rO" node="1jNpE3AdGxm" resolve="refresh" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6U_J9TPSe3w" role="3cqZAp">
          <node concept="2OqwBi" id="6U_J9TPSea3" role="3clFbG">
            <node concept="2YIFZM" id="6U_J9TPSe8Q" role="2Oq$k0">
              <ref role="37wK5l" to="tt5a:6U_J9TPS5aK" resolve="getSerializer" />
              <ref role="1Pybhc" to="tt5a:43Z2OkkkeXA" resolve="DbFactory" />
            </node>
            <node concept="liA8E" id="6U_J9TPSedr" role="2OqNvi">
              <ref role="37wK5l" to="tt5a:7MNizV3nJnZ" resolve="serializeProjectWithModules" />
              <node concept="2OqwBi" id="6U_J9TPSegZ" role="37wK5m">
                <node concept="2WthIp" id="6U_J9TPSeeK" role="2Oq$k0" />
                <node concept="1DTwFV" id="6U_J9TPSezA" role="2OqNvi">
                  <ref role="2WH_rO" node="5eOdMaeZcyv" resolve="project" />
                </node>
              </node>
              <node concept="2OqwBi" id="6U_J9TPSeCD" role="37wK5m">
                <node concept="2WthIp" id="6U_J9TPSeA6" role="2Oq$k0" />
                <node concept="1DTwFV" id="6U_J9TPSeWu" role="2OqNvi">
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
        <node concept="3clFbF" id="7MNizV3nFet" role="3cqZAp">
          <node concept="3clFbT" id="7MNizV3nFes" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="34j2dQ" id="2rIRh_WVGqi">
    <property role="TrG5h" value="PublisherConnection" />
    <node concept="34jfKJ" id="3bxG5bqy9OH" role="34lFYf">
      <property role="TrG5h" value="url" />
      <node concept="17QB3L" id="3bxG5bqyafC" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="7jqSt7$RDmk" role="34lFYf">
      <property role="TrG5h" value="username" />
      <node concept="17QB3L" id="7jqSt7$RDCS" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="7jqSt7ya6yC" role="34lFYf">
      <property role="TrG5h" value="password" />
      <node concept="17QB3L" id="7jqSt7yafIW" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="2uFXGB4HUkr" role="34lFYf">
      <property role="TrG5h" value="hostname" />
      <node concept="17QB3L" id="2uFXGB4HUUQ" role="1tU5fm" />
    </node>
    <node concept="34jfKJ" id="6R$jUV_5XlE" role="34lFYf">
      <property role="TrG5h" value="port" />
      <node concept="10Oyi0" id="6R$jUV_5Xzx" role="1tU5fm" />
    </node>
    <node concept="3yqqq6" id="2rIRh_WVGqj" role="3yq$HY">
      <property role="TrG5h" value="Publisher" />
      <property role="3EcmCg" value="Connection information" />
      <node concept="3y$hsl" id="2rIRh_WVGqk" role="3y$ekZ">
        <node concept="3clFbS" id="2rIRh_WVGql" role="2VODD2">
          <node concept="3cpWs8" id="7jqSt7ydwKc" role="3cqZAp">
            <node concept="3cpWsn" id="7jqSt7ydwKd" role="3cpWs9">
              <property role="TrG5h" value="url" />
              <node concept="17QB3L" id="7jqSt7ydwKe" role="1tU5fm" />
              <node concept="2OqwBi" id="7jqSt7ydwKf" role="33vP2m">
                <node concept="0kSF2" id="7jqSt7ydwKg" role="2Oq$k0">
                  <node concept="3uibUv" id="2rIRh_WWhoR" role="0kSFW">
                    <ref role="3uigEE" node="7jqSt7yalTx" resolve="PublisherPageComponent" />
                  </node>
                  <node concept="3yMSdA" id="7jqSt7ydwKi" role="0kSFX" />
                </node>
                <node concept="liA8E" id="7jqSt7ydwKj" role="2OqNvi">
                  <ref role="37wK5l" node="7jqSt7ycW4g" resolve="getURL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3bxG5bqx1HQ" role="3cqZAp">
            <node concept="3SKdUq" id="3bxG5bqx1HS" role="3SKWNk">
              <property role="3SKdUp" value="publisher://username:pwd@hostname:port" />
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqx304" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqx303" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="pattern" />
              <node concept="3uibUv" id="3bxG5bqx4eL" role="1tU5fm">
                <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
              </node>
              <node concept="2YIFZM" id="3bxG5bqx4NW" role="33vP2m">
                <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String):java.util.regex.Pattern" resolve="compile" />
                <node concept="Xl_RD" id="3bxG5bqx6uM" role="37wK5m">
                  <property role="Xl_RC" value="^publish://(.+?):(.+?)@(.+?):(\\d+)$" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqx309" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqx308" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="matcher" />
              <node concept="3uibUv" id="3bxG5bqx30a" role="1tU5fm">
                <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
              </node>
              <node concept="2OqwBi" id="3bxG5bqx30$" role="33vP2m">
                <node concept="37vLTw" id="3bxG5bqx30z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqx303" resolve="pattern" />
                </node>
                <node concept="liA8E" id="3bxG5bqx30_" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence):java.util.regex.Matcher" resolve="matcher" />
                  <node concept="37vLTw" id="3bxG5bqx30c" role="37wK5m">
                    <ref role="3cqZAo" node="7jqSt7ydwKd" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3bxG5bqydiQ" role="3cqZAp">
            <node concept="3clFbS" id="3bxG5bqydiS" role="3clFbx">
              <node concept="3clFbF" id="3bxG5bqx7ct" role="3cqZAp">
                <node concept="37vLTI" id="3bxG5bqx8gE" role="3clFbG">
                  <node concept="2OqwBi" id="3bxG5bqx7LO" role="37vLTJ">
                    <node concept="2WthIp" id="3bxG5bqx7cr" role="2Oq$k0" />
                    <node concept="34pFcN" id="3bxG5bqx7WY" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7$RDmk" resolve="username" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3bxG5bqx8FU" role="37vLTx">
                    <node concept="37vLTw" id="3bxG5bqx8FV" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqx308" resolve="matcher" />
                    </node>
                    <node concept="liA8E" id="3bxG5bqx8FW" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                      <node concept="3cmrfG" id="3bxG5bqx8FX" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3bxG5bqx9$C" role="3cqZAp">
                <node concept="37vLTI" id="3bxG5bqxaRl" role="3clFbG">
                  <node concept="2OqwBi" id="3bxG5bqxbEd" role="37vLTx">
                    <node concept="37vLTw" id="3bxG5bqxbjI" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqx308" resolve="matcher" />
                    </node>
                    <node concept="liA8E" id="3bxG5bqxdtT" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                      <node concept="3cmrfG" id="3bxG5bqxeeV" role="37wK5m">
                        <property role="3cmrfH" value="2" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3bxG5bqx9ZA" role="37vLTJ">
                    <node concept="2WthIp" id="3bxG5bqx9$A" role="2Oq$k0" />
                    <node concept="34pFcN" id="3bxG5bqxafT" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7ya6yC" resolve="password" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3bxG5bqxfuE" role="3cqZAp">
                <node concept="37vLTI" id="3bxG5bqxgv1" role="3clFbG">
                  <node concept="2OqwBi" id="3bxG5bqxhfa" role="37vLTx">
                    <node concept="37vLTw" id="3bxG5bqxgSa" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqx308" resolve="matcher" />
                    </node>
                    <node concept="liA8E" id="3bxG5bqxli0" role="2OqNvi">
                      <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                      <node concept="3cmrfG" id="3bxG5bqxlTl" role="37wK5m">
                        <property role="3cmrfH" value="3" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3bxG5bqxfUi" role="37vLTJ">
                    <node concept="2WthIp" id="3bxG5bqxfuC" role="2Oq$k0" />
                    <node concept="34pFcN" id="3bxG5bqxgaP" role="2OqNvi">
                      <ref role="2WH_rO" node="2uFXGB4HUkr" resolve="hostname" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3bxG5bqxnaZ" role="3cqZAp">
                <node concept="37vLTI" id="3bxG5bqxokN" role="3clFbG">
                  <node concept="2OqwBi" id="3bxG5bqxnxV" role="37vLTJ">
                    <node concept="2WthIp" id="3bxG5bqxnaX" role="2Oq$k0" />
                    <node concept="34pFcN" id="3bxG5bqxnWl" role="2OqNvi">
                      <ref role="2WH_rO" node="6R$jUV_5XlE" resolve="port" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="3bxG5bqxzyD" role="37vLTx">
                    <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                    <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String):java.lang.Integer" resolve="valueOf" />
                    <node concept="2OqwBi" id="3bxG5bqx$nT" role="37wK5m">
                      <node concept="37vLTw" id="3bxG5bqxzZP" role="2Oq$k0">
                        <ref role="3cqZAo" node="3bxG5bqx308" resolve="matcher" />
                      </node>
                      <node concept="liA8E" id="3bxG5bqxAeg" role="2OqNvi">
                        <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                        <node concept="3cmrfG" id="3bxG5bqxAWu" role="37wK5m">
                          <property role="3cmrfH" value="4" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3bxG5bqyaX8" role="3cqZAp">
                <node concept="37vLTI" id="3bxG5bqybQV" role="3clFbG">
                  <node concept="37vLTw" id="3bxG5bqycg0" role="37vLTx">
                    <ref role="3cqZAo" node="7jqSt7ydwKd" resolve="url" />
                  </node>
                  <node concept="2OqwBi" id="3bxG5bqybmd" role="37vLTJ">
                    <node concept="2WthIp" id="3bxG5bqyaX6" role="2Oq$k0" />
                    <node concept="34pFcN" id="3bxG5bqybLA" role="2OqNvi">
                      <ref role="2WH_rO" node="3bxG5bqy9OH" resolve="url" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3bxG5bqye0b" role="3clFbw">
              <node concept="37vLTw" id="3bxG5bqydHh" role="2Oq$k0">
                <ref role="3cqZAo" node="3bxG5bqx308" resolve="matcher" />
              </node>
              <node concept="liA8E" id="3bxG5bqyeqT" role="2OqNvi">
                <ref role="37wK5l" to="ni5j:~Matcher.find():boolean" resolve="find" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3yzWfJ" id="2rIRh_WVGqm" role="3y$9q5">
        <node concept="3clFbS" id="2rIRh_WVGqn" role="2VODD2">
          <node concept="3clFbF" id="7jqSt7ydx4q" role="3cqZAp">
            <node concept="2OqwBi" id="7jqSt7ydx4s" role="3clFbG">
              <node concept="0kSF2" id="7jqSt7ydx4t" role="2Oq$k0">
                <node concept="3uibUv" id="2rIRh_WWoU$" role="0kSFW">
                  <ref role="3uigEE" node="7jqSt7yalTx" resolve="PublisherPageComponent" />
                </node>
                <node concept="3yMSdA" id="7jqSt7ydx4v" role="0kSFX" />
              </node>
              <node concept="liA8E" id="7jqSt7ydx4w" role="2OqNvi">
                <ref role="37wK5l" node="7jqSt7ydxfR" resolve="setURL" />
                <node concept="2OqwBi" id="7jqSt7$X9tt" role="37wK5m">
                  <node concept="2WthIp" id="7jqSt7$X9gb" role="2Oq$k0" />
                  <node concept="34pFcN" id="3bxG5bqyayl" role="2OqNvi">
                    <ref role="2WH_rO" node="3bxG5bqy9OH" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2YIFZM" id="2rIRh_WVYVg" role="3yzNdQ">
        <ref role="37wK5l" node="7jqSt7yc4En" resolve="create" />
        <ref role="1Pybhc" node="7jqSt7yalTx" resolve="PublisherPageComponent" />
      </node>
      <node concept="3B8pKI" id="2rIRh_WVGqp" role="3B8L_j">
        <node concept="3clFbS" id="2rIRh_WVGqq" role="2VODD2">
          <node concept="3cpWs8" id="7jqSt7ydkM_" role="3cqZAp">
            <node concept="3cpWsn" id="7jqSt7ydkMC" role="3cpWs9">
              <property role="TrG5h" value="url" />
              <node concept="17QB3L" id="7jqSt7ydkMz" role="1tU5fm" />
              <node concept="2OqwBi" id="7jqSt7ydmDj" role="33vP2m">
                <node concept="0kSF2" id="7jqSt7ydlEC" role="2Oq$k0">
                  <node concept="3uibUv" id="2rIRh_WW0l8" role="0kSFW">
                    <ref role="3uigEE" node="7jqSt7yalTx" resolve="PublisherPageComponent" />
                  </node>
                  <node concept="3yMSdA" id="7jqSt7ydldP" role="0kSFX" />
                </node>
                <node concept="liA8E" id="7jqSt7ydoEq" role="2OqNvi">
                  <ref role="37wK5l" node="7jqSt7ycW4g" resolve="getURL" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="3bxG5bqxFUI" role="3cqZAp">
            <node concept="3SKdUq" id="3bxG5bqxFUJ" role="3SKWNk">
              <property role="3SKdUp" value="publisher://username:pwd@hostname:port" />
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqy7SJ" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqy7SK" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="pattern" />
              <node concept="3uibUv" id="3bxG5bqy7SL" role="1tU5fm">
                <ref role="3uigEE" to="ni5j:~Pattern" resolve="Pattern" />
              </node>
              <node concept="2YIFZM" id="3bxG5bqy7SM" role="33vP2m">
                <ref role="1Pybhc" to="ni5j:~Pattern" resolve="Pattern" />
                <ref role="37wK5l" to="ni5j:~Pattern.compile(java.lang.String):java.util.regex.Pattern" resolve="compile" />
                <node concept="Xl_RD" id="3bxG5bqy7SN" role="37wK5m">
                  <property role="Xl_RC" value="^publish://(.+?):(.+?)@(.+?):(\\d+)$" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqxFUP" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqxFUQ" role="3cpWs9">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="matcher" />
              <node concept="3uibUv" id="3bxG5bqxFUR" role="1tU5fm">
                <ref role="3uigEE" to="ni5j:~Matcher" resolve="Matcher" />
              </node>
              <node concept="2OqwBi" id="3bxG5bqxFUS" role="33vP2m">
                <node concept="37vLTw" id="3bxG5bqxFUT" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqy7SK" resolve="pattern" />
                </node>
                <node concept="liA8E" id="3bxG5bqxFUU" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Pattern.matcher(java.lang.CharSequence):java.util.regex.Matcher" resolve="matcher" />
                  <node concept="37vLTw" id="3bxG5bqxFUV" role="37wK5m">
                    <ref role="3cqZAo" node="7jqSt7ydkMC" resolve="url" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="3bxG5bqygc_" role="3cqZAp">
            <node concept="3clFbS" id="3bxG5bqygcB" role="3clFbx">
              <node concept="3cpWs6" id="3bxG5bqyjjd" role="3cqZAp">
                <node concept="3clFbT" id="3bxG5bqyk1X" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="3bxG5bqyg_X" role="3clFbw">
              <node concept="2OqwBi" id="3bxG5bqyhaH" role="3fr31v">
                <node concept="37vLTw" id="3bxG5bqygRZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxFUQ" resolve="matcher" />
                </node>
                <node concept="liA8E" id="3bxG5bqyiPj" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.find():boolean" resolve="find" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqxCTb" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqxCTe" role="3cpWs9">
              <property role="TrG5h" value="lusername" />
              <node concept="17QB3L" id="3bxG5bqxCT9" role="1tU5fm" />
              <node concept="2OqwBi" id="3bxG5bqxGGp" role="33vP2m">
                <node concept="37vLTw" id="3bxG5bqxGkC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxFUQ" resolve="matcher" />
                </node>
                <node concept="liA8E" id="3bxG5bqxH6T" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                  <node concept="3cmrfG" id="3bxG5bqxH7f" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqxHRE" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqxHRF" role="3cpWs9">
              <property role="TrG5h" value="lpassword" />
              <node concept="17QB3L" id="3bxG5bqxHRG" role="1tU5fm" />
              <node concept="2OqwBi" id="3bxG5bqxHRH" role="33vP2m">
                <node concept="37vLTw" id="3bxG5bqxHRI" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxFUQ" resolve="matcher" />
                </node>
                <node concept="liA8E" id="3bxG5bqxHRJ" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                  <node concept="3cmrfG" id="3bxG5bqxHRK" role="37wK5m">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqxIAZ" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqxIB0" role="3cpWs9">
              <property role="TrG5h" value="lhostname" />
              <node concept="17QB3L" id="3bxG5bqxIB1" role="1tU5fm" />
              <node concept="2OqwBi" id="3bxG5bqxIB2" role="33vP2m">
                <node concept="37vLTw" id="3bxG5bqxIB3" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxFUQ" resolve="matcher" />
                </node>
                <node concept="liA8E" id="3bxG5bqxIB4" role="2OqNvi">
                  <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                  <node concept="3cmrfG" id="3bxG5bqxIB5" role="37wK5m">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="3bxG5bqxIXk" role="3cqZAp">
            <node concept="3cpWsn" id="3bxG5bqxIXl" role="3cpWs9">
              <property role="TrG5h" value="lport" />
              <node concept="10Oyi0" id="3bxG5bqxOXq" role="1tU5fm" />
              <node concept="2YIFZM" id="3bxG5bqxQOi" role="33vP2m">
                <ref role="37wK5l" to="wyt6:~Integer.valueOf(java.lang.String):java.lang.Integer" resolve="valueOf" />
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <node concept="2OqwBi" id="3bxG5bqxIXn" role="37wK5m">
                  <node concept="37vLTw" id="3bxG5bqxIXo" role="2Oq$k0">
                    <ref role="3cqZAo" node="3bxG5bqxFUQ" resolve="matcher" />
                  </node>
                  <node concept="liA8E" id="3bxG5bqxIXp" role="2OqNvi">
                    <ref role="37wK5l" to="ni5j:~Matcher.group(int):java.lang.String" resolve="group" />
                    <node concept="3cmrfG" id="3bxG5bqxIXq" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3bxG5bqxIhu" role="3cqZAp" />
          <node concept="3clFbH" id="3bxG5bqxHuE" role="3cqZAp" />
          <node concept="3clFbJ" id="7jqSt7ydr59" role="3cqZAp">
            <node concept="3clFbS" id="7jqSt7ydr5b" role="3clFbx">
              <node concept="3clFbF" id="7jqSt7ydjBq" role="3cqZAp">
                <node concept="37vLTI" id="7jqSt7ydpLH" role="3clFbG">
                  <node concept="37vLTw" id="3bxG5bqy1hA" role="37vLTx">
                    <ref role="3cqZAo" node="3bxG5bqxIB0" resolve="lhostname" />
                  </node>
                  <node concept="2OqwBi" id="7jqSt7ydjMu" role="37vLTJ">
                    <node concept="2WthIp" id="7jqSt7ydjBo" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6oyk" role="2OqNvi">
                      <ref role="2WH_rO" node="2uFXGB4HUkr" resolve="hostname" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7jqSt7ydww4" role="3cqZAp">
                <node concept="3clFbT" id="7jqSt7ydvpq" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7jqSt7yduIt" role="3clFbw">
              <node concept="2OqwBi" id="7jqSt7yduIv" role="3fr31v">
                <node concept="37vLTw" id="3bxG5bqy0Q8" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxIB0" resolve="lhostname" />
                </node>
                <node concept="liA8E" id="7jqSt7yduIx" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="7jqSt7yduIy" role="37wK5m">
                    <node concept="2WthIp" id="7jqSt7yduIz" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6o9k" role="2OqNvi">
                      <ref role="2WH_rO" node="2uFXGB4HUkr" resolve="hostname" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7jqSt7$RDWj" role="3cqZAp">
            <node concept="3clFbS" id="7jqSt7$RDWk" role="3clFbx">
              <node concept="3clFbF" id="7jqSt7$RDWl" role="3cqZAp">
                <node concept="37vLTI" id="7jqSt7$RDWm" role="3clFbG">
                  <node concept="37vLTw" id="3bxG5bqy25f" role="37vLTx">
                    <ref role="3cqZAo" node="3bxG5bqxCTe" resolve="lusername" />
                  </node>
                  <node concept="2OqwBi" id="7jqSt7$RDWo" role="37vLTJ">
                    <node concept="2WthIp" id="7jqSt7$RDWp" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6pkX" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7$RDmk" resolve="username" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="7jqSt7$RDWr" role="3cqZAp">
                <node concept="3clFbT" id="7jqSt7$RDWs" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7jqSt7$RDWt" role="3clFbw">
              <node concept="2OqwBi" id="7jqSt7$RDWu" role="3fr31v">
                <node concept="37vLTw" id="3bxG5bqy1FO" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxCTe" resolve="lusername" />
                </node>
                <node concept="liA8E" id="7jqSt7$RDWw" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="7jqSt7$RDWx" role="37wK5m">
                    <node concept="2WthIp" id="7jqSt7$RDWy" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6oVX" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7$RDmk" resolve="username" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="2uFXGB4HZWl" role="3cqZAp">
            <node concept="3clFbS" id="2uFXGB4HZWm" role="3clFbx">
              <node concept="3clFbF" id="2uFXGB4HZWn" role="3cqZAp">
                <node concept="37vLTI" id="2uFXGB4HZWo" role="3clFbG">
                  <node concept="37vLTw" id="3bxG5bqy3K0" role="37vLTx">
                    <ref role="3cqZAo" node="3bxG5bqxIXl" resolve="lport" />
                  </node>
                  <node concept="2OqwBi" id="2uFXGB4HZWq" role="37vLTJ">
                    <node concept="2WthIp" id="2uFXGB4HZWr" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6qbP" role="2OqNvi">
                      <ref role="2WH_rO" node="6R$jUV_5XlE" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="2uFXGB4HZWt" role="3cqZAp">
                <node concept="3clFbT" id="2uFXGB4HZWu" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="6R$jUV_6qVk" role="3clFbw">
              <node concept="2OqwBi" id="6R$jUV_6rxV" role="3uHU7w">
                <node concept="2WthIp" id="6R$jUV_6rgs" role="2Oq$k0" />
                <node concept="34pFcN" id="6R$jUV_6rSN" role="2OqNvi">
                  <ref role="2WH_rO" node="6R$jUV_5XlE" resolve="port" />
                </node>
              </node>
              <node concept="37vLTw" id="3bxG5bqy2Vh" role="3uHU7B">
                <ref role="3cqZAo" node="3bxG5bqxIXl" resolve="lport" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6R$jUV_6sez" role="3cqZAp">
            <node concept="3clFbS" id="6R$jUV_6se$" role="3clFbx">
              <node concept="3clFbF" id="6R$jUV_6se_" role="3cqZAp">
                <node concept="37vLTI" id="6R$jUV_6seA" role="3clFbG">
                  <node concept="37vLTw" id="3bxG5bqy4RL" role="37vLTx">
                    <ref role="3cqZAo" node="3bxG5bqxHRF" resolve="lpassword" />
                  </node>
                  <node concept="2OqwBi" id="6R$jUV_6seC" role="37vLTJ">
                    <node concept="2WthIp" id="6R$jUV_6seD" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6uys" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7ya6yC" resolve="password" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6R$jUV_6seF" role="3cqZAp">
                <node concept="3clFbT" id="6R$jUV_6seG" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="6R$jUV_6seH" role="3clFbw">
              <node concept="2OqwBi" id="6R$jUV_6seI" role="3fr31v">
                <node concept="37vLTw" id="3bxG5bqy4wc" role="2Oq$k0">
                  <ref role="3cqZAo" node="3bxG5bqxHRF" resolve="lpassword" />
                </node>
                <node concept="liA8E" id="6R$jUV_6seK" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                  <node concept="2OqwBi" id="6R$jUV_6seL" role="37wK5m">
                    <node concept="2WthIp" id="6R$jUV_6seM" role="2Oq$k0" />
                    <node concept="34pFcN" id="6R$jUV_6u8t" role="2OqNvi">
                      <ref role="2WH_rO" node="7jqSt7ya6yC" resolve="password" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7jqSt7ydw75" role="3cqZAp">
            <node concept="3clFbT" id="7jqSt7ydvDe" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7jqSt7yalTx">
    <property role="TrG5h" value="PublisherPageComponent" />
    <node concept="2YIFZL" id="7jqSt7yc4En" role="jymVt">
      <property role="TrG5h" value="create" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7jqSt7yc4Eq" role="3clF47">
        <node concept="3cpWs6" id="7jqSt7ycFOE" role="3cqZAp">
          <node concept="2ShNRf" id="7jqSt7yc53c" role="3cqZAk">
            <node concept="1pGfFk" id="7jqSt7yc$C7" role="2ShVmc">
              <ref role="37wK5l" node="7jqSt7yc$aK" resolve="PublisherPageComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7jqSt7yc4Lb" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm1VV" id="7jqSt7yc$Cu" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7jqSt7yc$GJ" role="jymVt">
      <property role="TrG5h" value="url" />
      <node concept="3Tm6S6" id="7jqSt7yc$GK" role="1B3o_S" />
      <node concept="3uibUv" id="7jqSt7yc$LC" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="2tJIrI" id="2rIRh_WW5PX" role="jymVt" />
    <node concept="3clFbW" id="7jqSt7yc$aK" role="jymVt">
      <node concept="3cqZAl" id="7jqSt7yc$aL" role="3clF45" />
      <node concept="3clFbS" id="7jqSt7yc$aN" role="3clF47">
        <node concept="XkiVB" id="7jqSt7$Nj6E" role="3cqZAp">
          <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
          <node concept="2ShNRf" id="7jqSt7$Nj6F" role="37wK5m">
            <node concept="1pGfFk" id="7jqSt7$Nj6G" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7jqSt7$Nj0v" role="3cqZAp" />
        <node concept="3cpWs8" id="7jqSt7yusPP" role="3cqZAp">
          <node concept="3cpWsn" id="7jqSt7yusPQ" role="3cpWs9">
            <property role="TrG5h" value="dest" />
            <node concept="3uibUv" id="7jqSt7yusPR" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="7jqSt7yusYO" role="33vP2m">
              <node concept="1pGfFk" id="7jqSt7yusYN" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="Xl_RD" id="7jqSt7yut2g" role="37wK5m">
                  <property role="Xl_RC" value="Publishing URL:" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2uFXGB4GldO" role="3cqZAp">
          <node concept="3cpWsn" id="2uFXGB4GldR" role="3cpWs9">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="2uFXGB4GldM" role="1tU5fm" />
            <node concept="3cmrfG" id="2uFXGB4GluC" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jqSt7yuteV" role="3cqZAp">
          <node concept="2OqwBi" id="7jqSt7yutwn" role="3clFbG">
            <node concept="Xjq3P" id="7jqSt7yuteT" role="2Oq$k0" />
            <node concept="liA8E" id="7jqSt7yuvvs" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="7jqSt7yuvzf" role="37wK5m">
                <ref role="3cqZAo" node="7jqSt7yusPQ" resolve="dest" />
              </node>
              <node concept="1rwKMM" id="7jqSt7$NjqD" role="37wK5m">
                <property role="1rwKMK" value="label" />
                <node concept="2$rviw" id="2uFXGB4GlLN" role="1rxHDW">
                  <node concept="37vLTw" id="2uFXGB4GlEl" role="2$L3a6">
                    <ref role="3cqZAo" node="2uFXGB4GldR" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jqSt7yc$SO" role="3cqZAp">
          <node concept="37vLTI" id="7jqSt7ycFoa" role="3clFbG">
            <node concept="2ShNRf" id="7jqSt7ycFBJ" role="37vLTx">
              <node concept="1pGfFk" id="7jqSt7ycFyG" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
            <node concept="2OqwBi" id="7jqSt7yc_dl" role="37vLTJ">
              <node concept="Xjq3P" id="7jqSt7yc$SN" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jqSt7ycD6h" role="2OqNvi">
                <ref role="2Oxat5" node="7jqSt7yc$GJ" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7jqSt7ycFXj" role="3cqZAp">
          <node concept="2OqwBi" id="7jqSt7ycGd$" role="3clFbG">
            <node concept="Xjq3P" id="7jqSt7ycFXh" role="2Oq$k0" />
            <node concept="liA8E" id="7jqSt7ycK8c" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="7jqSt7ycKvv" role="37wK5m">
                <node concept="Xjq3P" id="7jqSt7ycKbQ" role="2Oq$k0" />
                <node concept="2OwXpG" id="7jqSt7ycQy$" role="2OqNvi">
                  <ref role="2Oxat5" node="7jqSt7yc$GJ" resolve="url" />
                </node>
              </node>
              <node concept="1rwKMM" id="7jqSt7$NjS6" role="37wK5m">
                <property role="1rwKMK" value="field" />
                <node concept="2$rviw" id="2uFXGB4GlR3" role="1rxHDW">
                  <node concept="37vLTw" id="2uFXGB4GlR4" role="2$L3a6">
                    <ref role="3cqZAo" node="2uFXGB4GldR" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3bxG5bqyAC_" role="3cqZAp">
          <node concept="3cpWsn" id="3bxG5bqyACA" role="3cpWs9">
            <property role="TrG5h" value="help" />
            <node concept="3uibUv" id="3bxG5bqyACB" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="3bxG5bqyACC" role="33vP2m">
              <node concept="1pGfFk" id="3bxG5bqyACD" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="Xl_RD" id="3bxG5bqyACE" role="37wK5m">
                  <property role="Xl_RC" value="URL syntax: 'publish://&lt;user&gt;:&lt;password&gt;@&lt;hostname&gt;:&lt;port&gt;'" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3bxG5bqyKCi" role="3cqZAp">
          <node concept="3cpWsn" id="3bxG5bqyKCj" role="3cpWs9">
            <property role="TrG5h" value="labelFont" />
            <node concept="3uibUv" id="3bxG5bqyKCk" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
            </node>
            <node concept="2ShNRf" id="3bxG5bqyNgd" role="33vP2m">
              <node concept="1pGfFk" id="3bxG5bqyUuf" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Font.&lt;init&gt;(java.lang.String,int,int)" resolve="Font" />
                <node concept="2OqwBi" id="3bxG5bqyXTH" role="37wK5m">
                  <node concept="2OqwBi" id="3bxG5bqyVDe" role="2Oq$k0">
                    <node concept="37vLTw" id="3bxG5bqyVe5" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqyACA" resolve="help" />
                    </node>
                    <node concept="liA8E" id="3bxG5bqyXRO" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getFont():java.awt.Font" resolve="getFont" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3bxG5bqyYTZ" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Font.getFontName():java.lang.String" resolve="getFontName" />
                  </node>
                </node>
                <node concept="10M0yZ" id="3bxG5bqyZG4" role="37wK5m">
                  <ref role="1PxDUh" to="z60i:~Font" resolve="Font" />
                  <ref role="3cqZAo" to="z60i:~Font.ITALIC" resolve="ITALIC" />
                </node>
                <node concept="2OqwBi" id="3bxG5bqz4ms" role="37wK5m">
                  <node concept="2OqwBi" id="3bxG5bqz26F" role="2Oq$k0">
                    <node concept="37vLTw" id="3bxG5bqz1Ei" role="2Oq$k0">
                      <ref role="3cqZAo" node="3bxG5bqyACA" resolve="help" />
                    </node>
                    <node concept="liA8E" id="3bxG5bqz4kp" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Component.getFont():java.awt.Font" resolve="getFont" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3bxG5bqz5mA" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Font.getSize():int" resolve="getSize" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqyFY1" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqyGv8" role="3clFbG">
            <node concept="37vLTw" id="3bxG5bqyFXZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3bxG5bqyACA" resolve="help" />
            </node>
            <node concept="liA8E" id="3bxG5bqyH2n" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font):void" resolve="setFont" />
              <node concept="37vLTw" id="3bxG5bqz68T" role="37wK5m">
                <ref role="3cqZAo" node="3bxG5bqyKCj" resolve="labelFont" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3bxG5bqyAW1" role="3cqZAp">
          <node concept="2OqwBi" id="3bxG5bqyAW2" role="3clFbG">
            <node concept="Xjq3P" id="3bxG5bqyAW3" role="2Oq$k0" />
            <node concept="liA8E" id="3bxG5bqyAW4" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="37vLTw" id="3bxG5bqyBs5" role="37wK5m">
                <ref role="3cqZAo" node="3bxG5bqyACA" resolve="help" />
              </node>
              <node concept="1rwKMM" id="3bxG5bqyAW6" role="37wK5m">
                <property role="1rwKMK" value="label" />
                <node concept="2$rviw" id="3bxG5bqyAW7" role="1rxHDW">
                  <node concept="37vLTw" id="3bxG5bqyAW8" role="2$L3a6">
                    <ref role="3cqZAo" node="2uFXGB4GldR" resolve="i" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3bxG5bqyAyY" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="7jqSt7yc$aO" role="1B3o_S" />
    </node>
    <node concept="3clFb_" id="7jqSt7ycW4g" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getURL" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="7jqSt7ycW4j" role="3clF47">
        <node concept="3clFbF" id="7jqSt7ycWZC" role="3cqZAp">
          <node concept="2OqwBi" id="7jqSt7ycXo8" role="3clFbG">
            <node concept="37vLTw" id="7jqSt7ycWZB" role="2Oq$k0">
              <ref role="3cqZAo" node="7jqSt7yc$GJ" resolve="url" />
            </node>
            <node concept="liA8E" id="7jqSt7yd46w" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7jqSt7ycVQd" role="1B3o_S" />
      <node concept="17QB3L" id="7jqSt7ycWfm" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7jqSt7ydxfR" role="jymVt">
      <property role="TrG5h" value="setURL" />
      <node concept="3cqZAl" id="7jqSt7ydxfT" role="3clF45" />
      <node concept="3Tm1VV" id="7jqSt7ydxfU" role="1B3o_S" />
      <node concept="3clFbS" id="7jqSt7ydxfV" role="3clF47">
        <node concept="3clFbF" id="7jqSt7ydxHj" role="3cqZAp">
          <node concept="2OqwBi" id="7jqSt7ydGPy" role="3clFbG">
            <node concept="2OqwBi" id="7jqSt7ydxZT" role="2Oq$k0">
              <node concept="Xjq3P" id="7jqSt7ydxHi" role="2Oq$k0" />
              <node concept="2OwXpG" id="7jqSt7ydBUV" role="2OqNvi">
                <ref role="2Oxat5" node="7jqSt7yc$GJ" resolve="url" />
              </node>
            </node>
            <node concept="liA8E" id="7jqSt7ydP7V" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="37vLTw" id="7jqSt7ydPfe" role="37wK5m">
                <ref role="3cqZAo" node="7jqSt7ydEel" resolve="url" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7jqSt7ydEel" role="3clF46">
        <property role="TrG5h" value="url" />
        <node concept="17QB3L" id="7jqSt7ydEek" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2uFXGB4rICh" role="jymVt" />
    <node concept="3Tm1VV" id="7jqSt7yalTy" role="1B3o_S" />
    <node concept="3uibUv" id="7jqSt7$Ni5b" role="1zkMxy">
      <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
    </node>
  </node>
</model>

