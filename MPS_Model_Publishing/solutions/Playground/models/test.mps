<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:3fdb4b4a-fef4-4077-b3e7-a0d8b047388d(test)">
  <persistence version="9" />
  <languages>
    <use id="aa5fe41a-45eb-4e2a-a3a4-80a1e980cdac" name="TestLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="aa5fe41a-45eb-4e2a-a3a4-80a1e980cdac" name="TestLanguage">
      <concept id="6490259584643920594" name="TestLanguage.structure.RootNode" flags="ng" index="38P7DA">
        <child id="6490259584643920597" name="child1" index="38P7Dx" />
      </concept>
      <concept id="6490259584643920595" name="TestLanguage.structure.Child1" flags="ng" index="38P7DB" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="38P7DA" id="5Ci2biiLEgE">
    <property role="TrG5h" value="First root node" />
    <node concept="38P7DB" id="5Ci2biiLEgF" role="38P7Dx" />
  </node>
</model>

