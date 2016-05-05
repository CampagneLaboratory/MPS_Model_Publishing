<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a05c171a-64b8-4f92-8b7d-86153c73d038(MPS_Model_Publishing.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="1" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="mixo" ref="r:13380e80-c91d-4de0-973f-8cab3a823c97(Editor2PDF.build-plugin)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="5L4pdtyHuIW">
    <property role="TrG5h" value="MPS_Model_Publishing" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="5L4pdtyHuIX" role="10PD9s" />
    <node concept="3b7kt6" id="5L4pdtyHuIY" role="10PD9s" />
    <node concept="398rNT" id="5L4pdtyHuIZ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="398rNT" id="5L4pdtyHuJ2" role="1l3spd">
      <property role="TrG5h" value="org.campagnelab.goby.workbench.home" />
    </node>
    <node concept="398rNT" id="5L4pdtyHuJ3" role="1l3spd">
      <property role="TrG5h" value="org.campagnelab.workflow.work_dir" />
    </node>
    <node concept="398rNT" id="5L4pdtyHuJ4" role="1l3spd">
      <property role="TrG5h" value="NEXTFLOW_PATH" />
    </node>
    <node concept="398rNT" id="5L4pdtyHuJ5" role="1l3spd">
      <property role="TrG5h" value="org.campagnelab.bdval.home" />
    </node>
    <node concept="398rNT" id="5L4pdtyHuJ6" role="1l3spd">
      <property role="TrG5h" value="JAVA_HOME" />
    </node>
    <node concept="2sgV4H" id="5L4pdtyHuJ0" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5L4pdtyHuJ1" role="2JcizS">
        <ref role="398BVh" node="5L4pdtyHuIZ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5L4pdtyHwk1" role="1l3spa">
      <ref role="1l3spb" to="ffeo:6qT2v0qOlpw" resolve="mpsJava" />
      <node concept="398BVA" id="5L4pdtyHwlE" role="2JcizS">
        <ref role="398BVh" node="5L4pdtyHuIZ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3gMg70bWO7m" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5xa9wY2vh7j" resolve="mpsExecutionPlugin" />
      <node concept="398BVA" id="3gMg70bWO9I" role="2JcizS">
        <ref role="398BVh" node="5L4pdtyHuIZ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5L4pdtyHwfj" role="1l3spa">
      <ref role="1l3spb" to="mixo:2B3cBtBfXtk" resolve="org.campagnelab.Editor2PDF" />
    </node>
    <node concept="1l3spV" id="5L4pdtyHuJt" role="1l3spN">
      <node concept="3981dG" id="5L4pdtyHuJu" role="39821P">
        <node concept="3_J27D" id="5L4pdtyHuJv" role="Nbhlr">
          <node concept="3Mxwew" id="5L4pdtyHuJw" role="3MwsjC">
            <property role="3MwjfP" value="MPS_Model_Publishing.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="5L4pdtyHuJx" role="39821P">
          <ref role="m_rDy" node="5L4pdtyHuJk" resolve="MPS_Model_Publishing" />
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="5L4pdtyHuJk" role="3989C9">
      <property role="m$_wk" value="MPS_Model_Publishing" />
      <node concept="3_J27D" id="5L4pdtyHuJl" role="m$_yQ">
        <node concept="3Mxwew" id="5L4pdtyHuJm" role="3MwsjC">
          <property role="3MwjfP" value="MPS_Model_Publishing" />
        </node>
      </node>
      <node concept="3_J27D" id="5L4pdtyHuJn" role="m$_w8">
        <node concept="3Mxwew" id="5L4pdtyHuJo" role="3MwsjC">
          <property role="3MwjfP" value="1.0" />
        </node>
      </node>
      <node concept="m$f5U" id="5L4pdtyHuJp" role="m$_yh">
        <ref role="m$f5T" node="5L4pdtyHuJj" resolve="MPS_Model_Publishing" />
      </node>
      <node concept="m$_yC" id="5L4pdtyHuJq" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="5L4pdtyHwfE" role="m$_yJ">
        <ref role="m$_y1" to="mixo:2B3cBtBfXtH" resolve="org.campagnelab.Editor2PDF" />
      </node>
      <node concept="m$_yC" id="5L4pdtyHwhK" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4O0hKJpjIV3" resolve="jetbrains.mps.ide.devkit" />
      </node>
      <node concept="3_J27D" id="5L4pdtyHuJr" role="m_cZH">
        <node concept="3Mxwew" id="5L4pdtyHuJs" role="3MwsjC">
          <property role="3MwjfP" value="MPS_Model_Publishing" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="5L4pdtyHuJj" role="3989C9">
      <property role="TrG5h" value="MPS_Model_Publishing" />
      <node concept="1E1JtA" id="5L4pdtyHuJc" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.mongodb.driver" />
        <property role="3LESm3" value="8a9532d6-8a70-4740-b535-cf759be9dbd2" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5L4pdtyHuJ7" role="3LF7KH">
          <node concept="2Ry0Ak" id="5L4pdtyHuJ8" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5L4pdtyHuJ9" role="2Ry0An">
              <property role="2Ry0Am" value="com.mongodb.driver" />
              <node concept="2Ry0Ak" id="5L4pdtyHuJa" role="2Ry0An">
                <property role="2Ry0Am" value="com.mongodb.driver.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuJy" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuJz" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuJC" role="3bR37C">
          <node concept="1BurEX" id="5L4pdtyHuJD" role="1SiIV1">
            <node concept="55IIr" id="5L4pdtyHuJ$" role="1BurEY">
              <node concept="2Ry0Ak" id="5L4pdtyHuJ_" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5L4pdtyHuJA" role="2Ry0An">
                  <property role="2Ry0Am" value="com.mongodb.driver" />
                  <node concept="2Ry0Ak" id="5L4pdtyHuJB" role="2Ry0An">
                    <property role="2Ry0Am" value="mongo-java-driver-3.2.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="5L4pdtyHuJi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.campagnelab.circles.plugin" />
        <property role="3LESm3" value="029b58a0-078e-421d-8fcf-cfa0bf9e220b" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="5L4pdtyHuJd" role="3LF7KH">
          <node concept="2Ry0Ak" id="5L4pdtyHuJe" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="5L4pdtyHuJf" role="2Ry0An">
              <property role="2Ry0Am" value="org.campagnelab.circles.plugin" />
              <node concept="2Ry0Ak" id="5L4pdtyHuJg" role="2Ry0An">
                <property role="2Ry0Am" value="org.campagnelab.circles.plugin.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuJI" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuJJ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:5sovPIfS$nd" resolve="jetbrains.mps.ide.mpsdevkit" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuJW" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuJX" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="5L4pdtyHuJc" resolve="com.mongodb.driver" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuJY" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuJZ" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuK0" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuK1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuK2" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuK3" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHuK4" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHuK5" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHwg6" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHwg7" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="mixo:2B3cBtBfXt_" resolve="org.campagnelab.mps.editor2pdf" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHwg8" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHwg9" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:5xwbQ0eEV3B" resolve="jetbrains.mps.ide.java.basePlatform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHwga" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHwgb" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5L4pdtyHwgc" role="3bR37C">
          <node concept="3bR9La" id="5L4pdtyHwgd" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7KapL9OABnm" resolve="jetbrains.mps.ide.ui" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

