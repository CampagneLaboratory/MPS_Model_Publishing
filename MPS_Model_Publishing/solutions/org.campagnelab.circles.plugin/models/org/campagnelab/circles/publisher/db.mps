<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:839ef8fb-1aee-4153-a27a-e44c8cb9d82a(org.campagnelab.circles.publisher.db)">
  <persistence version="9" />
  <languages>
    <use id="ed6d7656-532c-4bc2-81d1-af945aeb8280" name="jetbrains.mps.baseLanguage.blTypes" version="0" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="4" />
  </languages>
  <imports />
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
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
  <node concept="312cEu" id="5Ci2biiL$yM">
    <property role="TrG5h" value="ModuleSerializer" />
    <node concept="2tJIrI" id="5Ci2biiL$z6" role="jymVt" />
    <node concept="2tJIrI" id="5Ci2biiL$z8" role="jymVt" />
    <node concept="3Tm1VV" id="5Ci2biiL$yN" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3v5cxLOW0Yc">
    <property role="TrG5h" value="MongoDbAccess" />
    <node concept="2tJIrI" id="3v5cxLOW3eQ" role="jymVt" />
    <node concept="2tJIrI" id="3v5cxLOW3eS" role="jymVt" />
    <node concept="2tJIrI" id="3v5cxLOW3eV" role="jymVt" />
    <node concept="2tJIrI" id="3v5cxLOW3eZ" role="jymVt" />
    <node concept="3Tm1VV" id="3v5cxLOW0Yd" role="1B3o_S" />
  </node>
</model>

