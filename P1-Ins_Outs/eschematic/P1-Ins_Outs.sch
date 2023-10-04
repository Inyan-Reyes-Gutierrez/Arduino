<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="no" active="no"/>
<layer number="201" name="201bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="arduino">
<description>&lt;b&gt;Arduino Boards&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;MegaArduino
&lt;li&gt;Arduino Duemilanove (2009)
&lt;/ul&gt;
Based on the following sources:
&lt;br&gt;&lt;br&gt;
Schematic &amp; Reference Design from:
&lt;ul&gt;
&lt;li&gt; http://arduino.cc/en/Main/ArduinoBoardMega
&lt;li&gt;http://arduino.cc/en/Main/ArduinoBoardDuemilanove
&lt;/ul&gt;
Version: 1.0 / 30.08.2009&lt;br&gt;
&lt;author&gt;Created by atami@gmx.net&lt;/author&gt;</description>
<packages>
<package name="ARDUINO2009">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="64.516" y2="53.34" width="0.127" layer="51"/>
<wire x1="64.516" y1="53.34" x2="66.04" y2="51.816" width="0.127" layer="51"/>
<wire x1="66.04" y1="51.816" x2="66.04" y2="40.386" width="0.127" layer="51"/>
<wire x1="66.04" y1="40.386" x2="68.58" y2="37.846" width="0.127" layer="51"/>
<wire x1="68.58" y1="37.846" x2="68.58" y2="5.08" width="0.127" layer="51"/>
<wire x1="68.58" y1="5.08" x2="66.04" y2="2.54" width="0.127" layer="51"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="0" width="0.127" layer="51"/>
<wire x1="66.04" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="38.481" y1="52.07" x2="39.751" y2="52.07" width="0.1524" layer="21"/>
<wire x1="39.751" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="51.435" x2="40.386" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="39.751" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.941" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.941" y1="52.07" x2="37.211" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.211" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="51.435" x2="37.846" y2="50.165" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="37.211" y2="49.53" width="0.1524" layer="21"/>
<wire x1="37.211" y1="49.53" x2="35.941" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.941" y1="49.53" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.481" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="39.751" y1="49.53" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="32.131" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.131" y1="52.07" x2="32.766" y2="51.435" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="32.766" y1="50.165" x2="32.131" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="33.401" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.401" y1="52.07" x2="34.671" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.671" y1="52.07" x2="35.306" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.306" y1="50.165" x2="34.671" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.671" y1="49.53" x2="33.401" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.401" y1="49.53" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="28.321" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.321" y1="52.07" x2="29.591" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="51.435" x2="30.226" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="29.591" y2="49.53" width="0.1524" layer="21"/>
<wire x1="29.591" y1="49.53" x2="28.321" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.131" y1="49.53" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="24.511" y2="52.07" width="0.1524" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.146" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.146" y1="50.165" x2="24.511" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.781" y2="52.07" width="0.1524" layer="21"/>
<wire x1="25.781" y1="52.07" x2="27.051" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.051" y1="52.07" x2="27.686" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="50.165" x2="27.051" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.051" y1="49.53" x2="25.781" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.781" y1="49.53" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.606" y1="51.435" x2="22.606" y2="50.165" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="22.606" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.606" y1="50.165" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="42.291" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.291" y1="52.07" x2="42.926" y2="51.435" width="0.1524" layer="21"/>
<wire x1="42.926" y1="51.435" x2="42.926" y2="50.165" width="0.1524" layer="21"/>
<wire x1="42.926" y1="50.165" x2="42.291" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.291" y1="49.53" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.055" y2="49.53" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="51.435" y2="49.53" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="46.355" y1="52.07" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.355" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="51.435" x2="64.77" y2="50.165" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<pad name="28" x="23.876" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="27" x="26.416" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="26" x="28.956" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="25" x="31.496" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="24" x="34.036" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="36.576" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="39.116" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="41.656" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="45.72" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="48.26" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="50.8" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="53.34" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="55.88" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="58.42" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="60.96" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="63.5" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<text x="23.1184" y="48.7812" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="25.654" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="28.194" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">13</text>
<text x="30.734" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">12</text>
<text x="33.274" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">11</text>
<text x="35.814" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">10</text>
<text x="38.354" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">9</text>
<text x="40.894" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">8</text>
<text x="44.958" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">7</text>
<text x="47.498" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">6</text>
<text x="50.038" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">5</text>
<text x="52.578" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">4</text>
<text x="55.118" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">3</text>
<text x="57.658" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">2</text>
<text x="60.198" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">RxD 1</text>
<text x="62.738" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">TxD 0</text>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">A5</text>
<rectangle x1="38.862" y1="50.546" x2="39.37" y2="51.054" layer="51"/>
<rectangle x1="36.322" y1="50.546" x2="36.83" y2="51.054" layer="51"/>
<rectangle x1="33.782" y1="50.546" x2="34.29" y2="51.054" layer="51"/>
<rectangle x1="31.242" y1="50.546" x2="31.75" y2="51.054" layer="51"/>
<rectangle x1="28.702" y1="50.546" x2="29.21" y2="51.054" layer="51"/>
<rectangle x1="26.162" y1="50.546" x2="26.67" y2="51.054" layer="51"/>
<rectangle x1="23.622" y1="50.546" x2="24.13" y2="51.054" layer="51"/>
<rectangle x1="41.402" y1="50.546" x2="41.91" y2="51.054" layer="51"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="66.04" y="35.56" drill="3.2"/>
<hole x="66.04" y="7.62" drill="3.2"/>
<hole x="55.1696" y="27.1138" drill="2"/>
</package>
<package name="ARDUINO2009_1">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="64.516" y2="53.34" width="0.127" layer="51"/>
<wire x1="64.516" y1="53.34" x2="66.04" y2="51.816" width="0.127" layer="51"/>
<wire x1="66.04" y1="51.816" x2="66.04" y2="40.386" width="0.127" layer="51"/>
<wire x1="66.04" y1="40.386" x2="68.58" y2="37.846" width="0.127" layer="51"/>
<wire x1="68.58" y1="37.846" x2="68.58" y2="5.08" width="0.127" layer="51"/>
<wire x1="68.58" y1="5.08" x2="66.04" y2="2.54" width="0.127" layer="51"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="0" width="0.127" layer="51"/>
<wire x1="66.04" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="38.481" y1="52.07" x2="39.751" y2="52.07" width="0.1524" layer="21"/>
<wire x1="39.751" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="51.435" x2="40.386" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="39.751" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.941" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.941" y1="52.07" x2="37.211" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.211" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="51.435" x2="37.846" y2="50.165" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="37.211" y2="49.53" width="0.1524" layer="21"/>
<wire x1="37.211" y1="49.53" x2="35.941" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.941" y1="49.53" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.481" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="39.751" y1="49.53" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="32.131" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.131" y1="52.07" x2="32.766" y2="51.435" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="32.766" y1="50.165" x2="32.131" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="33.401" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.401" y1="52.07" x2="34.671" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.671" y1="52.07" x2="35.306" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.306" y1="50.165" x2="34.671" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.671" y1="49.53" x2="33.401" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.401" y1="49.53" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="28.321" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.321" y1="52.07" x2="29.591" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="51.435" x2="30.226" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="29.591" y2="49.53" width="0.1524" layer="21"/>
<wire x1="29.591" y1="49.53" x2="28.321" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.131" y1="49.53" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="24.511" y2="52.07" width="0.1524" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.146" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.146" y1="50.165" x2="24.511" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.781" y2="52.07" width="0.1524" layer="21"/>
<wire x1="25.781" y1="52.07" x2="27.051" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.051" y1="52.07" x2="27.686" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="50.165" x2="27.051" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.051" y1="49.53" x2="25.781" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.781" y1="49.53" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.606" y1="51.435" x2="22.606" y2="50.165" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="22.606" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.606" y1="50.165" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="42.291" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.291" y1="52.07" x2="42.926" y2="51.435" width="0.1524" layer="21"/>
<wire x1="42.926" y1="51.435" x2="42.926" y2="50.165" width="0.1524" layer="21"/>
<wire x1="42.926" y1="50.165" x2="42.291" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.291" y1="49.53" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.055" y2="49.53" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="51.435" y2="49.53" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="46.355" y1="52.07" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.355" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="51.435" x2="64.77" y2="50.165" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<pad name="28" x="23.876" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="27" x="26.416" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="26" x="28.956" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="25" x="31.496" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="24" x="34.036" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="36.576" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="39.116" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="41.656" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="45.72" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="48.26" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="50.8" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="53.34" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="55.88" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="58.42" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="60.96" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="63.5" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<text x="23.1184" y="48.7812" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="25.654" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="28.194" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB5</text>
<text x="30.734" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB4</text>
<text x="33.274" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB3</text>
<text x="35.814" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB2</text>
<text x="38.354" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB1</text>
<text x="40.894" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB0</text>
<text x="44.958" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD7</text>
<text x="47.498" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD6</text>
<text x="50.038" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD5</text>
<text x="52.578" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD4</text>
<text x="55.118" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD3</text>
<text x="57.658" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD2</text>
<text x="60.198" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD1</text>
<text x="62.738" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD0</text>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC5</text>
<rectangle x1="38.862" y1="50.546" x2="39.37" y2="51.054" layer="51"/>
<rectangle x1="36.322" y1="50.546" x2="36.83" y2="51.054" layer="51"/>
<rectangle x1="33.782" y1="50.546" x2="34.29" y2="51.054" layer="51"/>
<rectangle x1="31.242" y1="50.546" x2="31.75" y2="51.054" layer="51"/>
<rectangle x1="28.702" y1="50.546" x2="29.21" y2="51.054" layer="51"/>
<rectangle x1="26.162" y1="50.546" x2="26.67" y2="51.054" layer="51"/>
<rectangle x1="23.622" y1="50.546" x2="24.13" y2="51.054" layer="51"/>
<rectangle x1="41.402" y1="50.546" x2="41.91" y2="51.054" layer="51"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="66.04" y="35.56" drill="3.2"/>
<hole x="66.04" y="7.62" drill="3.2"/>
<hole x="55.1696" y="27.1138" drill="2"/>
</package>
<package name="ARDUINO2009_2">
<wire x1="0" y1="0" x2="0" y2="53.34" width="0.127" layer="51"/>
<wire x1="0" y1="53.34" x2="64.516" y2="53.34" width="0.127" layer="51"/>
<wire x1="64.516" y1="53.34" x2="66.04" y2="51.816" width="0.127" layer="51"/>
<wire x1="66.04" y1="51.816" x2="66.04" y2="40.386" width="0.127" layer="51"/>
<wire x1="66.04" y1="40.386" x2="68.58" y2="37.846" width="0.127" layer="51"/>
<wire x1="68.58" y1="37.846" x2="68.58" y2="5.08" width="0.127" layer="51"/>
<wire x1="68.58" y1="5.08" x2="66.04" y2="2.54" width="0.127" layer="51"/>
<wire x1="66.04" y1="2.54" x2="66.04" y2="0" width="0.127" layer="51"/>
<wire x1="66.04" y1="0" x2="0" y2="0" width="0.127" layer="51"/>
<wire x1="38.481" y1="52.07" x2="39.751" y2="52.07" width="0.1524" layer="21"/>
<wire x1="39.751" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="51.435" x2="40.386" y2="50.165" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="39.751" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.941" y2="52.07" width="0.1524" layer="21"/>
<wire x1="35.941" y1="52.07" x2="37.211" y2="52.07" width="0.1524" layer="21"/>
<wire x1="37.211" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="51.435" x2="37.846" y2="50.165" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="37.211" y2="49.53" width="0.1524" layer="21"/>
<wire x1="37.211" y1="49.53" x2="35.941" y2="49.53" width="0.1524" layer="21"/>
<wire x1="35.941" y1="49.53" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="38.481" y1="52.07" x2="37.846" y2="51.435" width="0.1524" layer="21"/>
<wire x1="37.846" y1="50.165" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="39.751" y1="49.53" x2="38.481" y2="49.53" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="32.131" y2="52.07" width="0.1524" layer="21"/>
<wire x1="32.131" y1="52.07" x2="32.766" y2="51.435" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="32.766" y1="50.165" x2="32.131" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.766" y1="51.435" x2="33.401" y2="52.07" width="0.1524" layer="21"/>
<wire x1="33.401" y1="52.07" x2="34.671" y2="52.07" width="0.1524" layer="21"/>
<wire x1="34.671" y1="52.07" x2="35.306" y2="51.435" width="0.1524" layer="21"/>
<wire x1="35.306" y1="51.435" x2="35.306" y2="50.165" width="0.1524" layer="21"/>
<wire x1="35.306" y1="50.165" x2="34.671" y2="49.53" width="0.1524" layer="21"/>
<wire x1="34.671" y1="49.53" x2="33.401" y2="49.53" width="0.1524" layer="21"/>
<wire x1="33.401" y1="49.53" x2="32.766" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="28.321" y2="52.07" width="0.1524" layer="21"/>
<wire x1="28.321" y1="52.07" x2="29.591" y2="52.07" width="0.1524" layer="21"/>
<wire x1="29.591" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="51.435" x2="30.226" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="29.591" y2="49.53" width="0.1524" layer="21"/>
<wire x1="29.591" y1="49.53" x2="28.321" y2="49.53" width="0.1524" layer="21"/>
<wire x1="28.321" y1="49.53" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="30.861" y1="52.07" x2="30.226" y2="51.435" width="0.1524" layer="21"/>
<wire x1="30.226" y1="50.165" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="32.131" y1="49.53" x2="30.861" y2="49.53" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="24.511" y2="52.07" width="0.1524" layer="21"/>
<wire x1="24.511" y1="52.07" x2="25.146" y2="51.435" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="25.146" y1="50.165" x2="24.511" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.146" y1="51.435" x2="25.781" y2="52.07" width="0.1524" layer="21"/>
<wire x1="25.781" y1="52.07" x2="27.051" y2="52.07" width="0.1524" layer="21"/>
<wire x1="27.051" y1="52.07" x2="27.686" y2="51.435" width="0.1524" layer="21"/>
<wire x1="27.686" y1="51.435" x2="27.686" y2="50.165" width="0.1524" layer="21"/>
<wire x1="27.686" y1="50.165" x2="27.051" y2="49.53" width="0.1524" layer="21"/>
<wire x1="27.051" y1="49.53" x2="25.781" y2="49.53" width="0.1524" layer="21"/>
<wire x1="25.781" y1="49.53" x2="25.146" y2="50.165" width="0.1524" layer="21"/>
<wire x1="22.606" y1="51.435" x2="22.606" y2="50.165" width="0.1524" layer="21"/>
<wire x1="23.241" y1="52.07" x2="22.606" y2="51.435" width="0.1524" layer="21"/>
<wire x1="22.606" y1="50.165" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="24.511" y1="49.53" x2="23.241" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="42.291" y2="52.07" width="0.1524" layer="21"/>
<wire x1="42.291" y1="52.07" x2="42.926" y2="51.435" width="0.1524" layer="21"/>
<wire x1="42.926" y1="51.435" x2="42.926" y2="50.165" width="0.1524" layer="21"/>
<wire x1="42.926" y1="50.165" x2="42.291" y2="49.53" width="0.1524" layer="21"/>
<wire x1="41.021" y1="52.07" x2="40.386" y2="51.435" width="0.1524" layer="21"/>
<wire x1="40.386" y1="50.165" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="42.291" y1="49.53" x2="41.021" y2="49.53" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="61.595" y2="52.07" width="0.1524" layer="21"/>
<wire x1="61.595" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="51.435" x2="62.23" y2="50.165" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="61.595" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.785" y2="52.07" width="0.1524" layer="21"/>
<wire x1="57.785" y1="52.07" x2="59.055" y2="52.07" width="0.1524" layer="21"/>
<wire x1="59.055" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="51.435" x2="59.69" y2="50.165" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="59.055" y2="49.53" width="0.1524" layer="21"/>
<wire x1="59.055" y1="49.53" x2="57.785" y2="49.53" width="0.1524" layer="21"/>
<wire x1="57.785" y1="49.53" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="60.325" y1="52.07" x2="59.69" y2="51.435" width="0.1524" layer="21"/>
<wire x1="59.69" y1="50.165" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="61.595" y1="49.53" x2="60.325" y2="49.53" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="53.975" y2="52.07" width="0.1524" layer="21"/>
<wire x1="53.975" y1="52.07" x2="54.61" y2="51.435" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="54.61" y1="50.165" x2="53.975" y2="49.53" width="0.1524" layer="21"/>
<wire x1="54.61" y1="51.435" x2="55.245" y2="52.07" width="0.1524" layer="21"/>
<wire x1="55.245" y1="52.07" x2="56.515" y2="52.07" width="0.1524" layer="21"/>
<wire x1="56.515" y1="52.07" x2="57.15" y2="51.435" width="0.1524" layer="21"/>
<wire x1="57.15" y1="51.435" x2="57.15" y2="50.165" width="0.1524" layer="21"/>
<wire x1="57.15" y1="50.165" x2="56.515" y2="49.53" width="0.1524" layer="21"/>
<wire x1="56.515" y1="49.53" x2="55.245" y2="49.53" width="0.1524" layer="21"/>
<wire x1="55.245" y1="49.53" x2="54.61" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="50.165" y2="52.07" width="0.1524" layer="21"/>
<wire x1="50.165" y1="52.07" x2="51.435" y2="52.07" width="0.1524" layer="21"/>
<wire x1="51.435" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="51.435" x2="52.07" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="51.435" y2="49.53" width="0.1524" layer="21"/>
<wire x1="51.435" y1="49.53" x2="50.165" y2="49.53" width="0.1524" layer="21"/>
<wire x1="50.165" y1="49.53" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="52.705" y1="52.07" x2="52.07" y2="51.435" width="0.1524" layer="21"/>
<wire x1="52.07" y1="50.165" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="53.975" y1="49.53" x2="52.705" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="46.355" y2="52.07" width="0.1524" layer="21"/>
<wire x1="46.355" y1="52.07" x2="46.99" y2="51.435" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="46.99" y1="50.165" x2="46.355" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.99" y1="51.435" x2="47.625" y2="52.07" width="0.1524" layer="21"/>
<wire x1="47.625" y1="52.07" x2="48.895" y2="52.07" width="0.1524" layer="21"/>
<wire x1="48.895" y1="52.07" x2="49.53" y2="51.435" width="0.1524" layer="21"/>
<wire x1="49.53" y1="51.435" x2="49.53" y2="50.165" width="0.1524" layer="21"/>
<wire x1="49.53" y1="50.165" x2="48.895" y2="49.53" width="0.1524" layer="21"/>
<wire x1="48.895" y1="49.53" x2="47.625" y2="49.53" width="0.1524" layer="21"/>
<wire x1="47.625" y1="49.53" x2="46.99" y2="50.165" width="0.1524" layer="21"/>
<wire x1="44.45" y1="51.435" x2="44.45" y2="50.165" width="0.1524" layer="21"/>
<wire x1="45.085" y1="52.07" x2="44.45" y2="51.435" width="0.1524" layer="21"/>
<wire x1="44.45" y1="50.165" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="46.355" y1="49.53" x2="45.085" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="64.135" y2="52.07" width="0.1524" layer="21"/>
<wire x1="64.135" y1="52.07" x2="64.77" y2="51.435" width="0.1524" layer="21"/>
<wire x1="64.77" y1="51.435" x2="64.77" y2="50.165" width="0.1524" layer="21"/>
<wire x1="64.77" y1="50.165" x2="64.135" y2="49.53" width="0.1524" layer="21"/>
<wire x1="62.865" y1="52.07" x2="62.23" y2="51.435" width="0.1524" layer="21"/>
<wire x1="62.23" y1="50.165" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="64.135" y1="49.53" x2="62.865" y2="49.53" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="46.355" y2="3.81" width="0.1524" layer="21"/>
<wire x1="46.355" y1="3.81" x2="46.99" y2="3.175" width="0.1524" layer="21"/>
<wire x1="46.99" y1="1.905" x2="46.355" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="42.545" y2="3.81" width="0.1524" layer="21"/>
<wire x1="42.545" y1="3.81" x2="43.815" y2="3.81" width="0.1524" layer="21"/>
<wire x1="43.815" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="3.175" x2="44.45" y2="1.905" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="43.815" y2="1.27" width="0.1524" layer="21"/>
<wire x1="43.815" y1="1.27" x2="42.545" y2="1.27" width="0.1524" layer="21"/>
<wire x1="42.545" y1="1.27" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="45.085" y1="3.81" x2="44.45" y2="3.175" width="0.1524" layer="21"/>
<wire x1="44.45" y1="1.905" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="46.355" y1="1.27" x2="45.085" y2="1.27" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="38.735" y2="3.81" width="0.1524" layer="21"/>
<wire x1="38.735" y1="3.81" x2="39.37" y2="3.175" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="39.37" y1="1.905" x2="38.735" y2="1.27" width="0.1524" layer="21"/>
<wire x1="39.37" y1="3.175" x2="40.005" y2="3.81" width="0.1524" layer="21"/>
<wire x1="40.005" y1="3.81" x2="41.275" y2="3.81" width="0.1524" layer="21"/>
<wire x1="41.275" y1="3.81" x2="41.91" y2="3.175" width="0.1524" layer="21"/>
<wire x1="41.91" y1="3.175" x2="41.91" y2="1.905" width="0.1524" layer="21"/>
<wire x1="41.91" y1="1.905" x2="41.275" y2="1.27" width="0.1524" layer="21"/>
<wire x1="41.275" y1="1.27" x2="40.005" y2="1.27" width="0.1524" layer="21"/>
<wire x1="40.005" y1="1.27" x2="39.37" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.925" y2="3.81" width="0.1524" layer="21"/>
<wire x1="34.925" y1="3.81" x2="36.195" y2="3.81" width="0.1524" layer="21"/>
<wire x1="36.195" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="3.175" x2="36.83" y2="1.905" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="36.195" y2="1.27" width="0.1524" layer="21"/>
<wire x1="36.195" y1="1.27" x2="34.925" y2="1.27" width="0.1524" layer="21"/>
<wire x1="34.925" y1="1.27" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="37.465" y1="3.81" x2="36.83" y2="3.175" width="0.1524" layer="21"/>
<wire x1="36.83" y1="1.905" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="38.735" y1="1.27" x2="37.465" y2="1.27" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="31.75" y1="3.175" x2="32.385" y2="3.81" width="0.1524" layer="21"/>
<wire x1="32.385" y1="3.81" x2="33.655" y2="3.81" width="0.1524" layer="21"/>
<wire x1="33.655" y1="3.81" x2="34.29" y2="3.175" width="0.1524" layer="21"/>
<wire x1="34.29" y1="3.175" x2="34.29" y2="1.905" width="0.1524" layer="21"/>
<wire x1="34.29" y1="1.905" x2="33.655" y2="1.27" width="0.1524" layer="21"/>
<wire x1="33.655" y1="1.27" x2="32.385" y2="1.27" width="0.1524" layer="21"/>
<wire x1="32.385" y1="1.27" x2="31.75" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="64.135" y2="3.81" width="0.1524" layer="21"/>
<wire x1="64.135" y1="3.81" x2="64.77" y2="3.175" width="0.1524" layer="21"/>
<wire x1="64.77" y1="3.175" x2="64.77" y2="1.905" width="0.1524" layer="21"/>
<wire x1="64.77" y1="1.905" x2="64.135" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="60.325" y2="3.81" width="0.1524" layer="21"/>
<wire x1="60.325" y1="3.81" x2="61.595" y2="3.81" width="0.1524" layer="21"/>
<wire x1="61.595" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="3.175" x2="62.23" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="61.595" y2="1.27" width="0.1524" layer="21"/>
<wire x1="61.595" y1="1.27" x2="60.325" y2="1.27" width="0.1524" layer="21"/>
<wire x1="60.325" y1="1.27" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="62.865" y1="3.81" x2="62.23" y2="3.175" width="0.1524" layer="21"/>
<wire x1="62.23" y1="1.905" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="64.135" y1="1.27" x2="62.865" y2="1.27" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="56.515" y2="3.81" width="0.1524" layer="21"/>
<wire x1="56.515" y1="3.81" x2="57.15" y2="3.175" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="57.15" y1="1.905" x2="56.515" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.15" y1="3.175" x2="57.785" y2="3.81" width="0.1524" layer="21"/>
<wire x1="57.785" y1="3.81" x2="59.055" y2="3.81" width="0.1524" layer="21"/>
<wire x1="59.055" y1="3.81" x2="59.69" y2="3.175" width="0.1524" layer="21"/>
<wire x1="59.69" y1="3.175" x2="59.69" y2="1.905" width="0.1524" layer="21"/>
<wire x1="59.69" y1="1.905" x2="59.055" y2="1.27" width="0.1524" layer="21"/>
<wire x1="59.055" y1="1.27" x2="57.785" y2="1.27" width="0.1524" layer="21"/>
<wire x1="57.785" y1="1.27" x2="57.15" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.705" y2="3.81" width="0.1524" layer="21"/>
<wire x1="52.705" y1="3.81" x2="53.975" y2="3.81" width="0.1524" layer="21"/>
<wire x1="53.975" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="3.175" x2="54.61" y2="1.905" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="53.975" y2="1.27" width="0.1524" layer="21"/>
<wire x1="53.975" y1="1.27" x2="52.705" y2="1.27" width="0.1524" layer="21"/>
<wire x1="52.705" y1="1.27" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="55.245" y1="3.81" x2="54.61" y2="3.175" width="0.1524" layer="21"/>
<wire x1="54.61" y1="1.905" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="56.515" y1="1.27" x2="55.245" y2="1.27" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="49.53" y1="3.175" x2="50.165" y2="3.81" width="0.1524" layer="21"/>
<wire x1="50.165" y1="3.81" x2="51.435" y2="3.81" width="0.1524" layer="21"/>
<wire x1="51.435" y1="3.81" x2="52.07" y2="3.175" width="0.1524" layer="21"/>
<wire x1="52.07" y1="3.175" x2="52.07" y2="1.905" width="0.1524" layer="21"/>
<wire x1="52.07" y1="1.905" x2="51.435" y2="1.27" width="0.1524" layer="21"/>
<wire x1="51.435" y1="1.27" x2="50.165" y2="1.27" width="0.1524" layer="21"/>
<wire x1="50.165" y1="1.27" x2="49.53" y2="1.905" width="0.1524" layer="21"/>
<wire x1="46.99" y1="3.175" x2="46.99" y2="1.905" width="0.1524" layer="21"/>
<pad name="28" x="23.876" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="27" x="26.416" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="26" x="28.956" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="25" x="31.496" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="24" x="34.036" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="23" x="36.576" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="22" x="39.116" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="21" x="41.656" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="20" x="45.72" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="19" x="48.26" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="50.8" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="53.34" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="55.88" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="58.42" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="60.96" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="63.5" y="50.8" drill="1.016" shape="long" rot="R90"/>
<pad name="1" x="33.02" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="35.56" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="38.1" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="40.64" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="43.18" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="45.72" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="50.8" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="53.34" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="55.88" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="58.42" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="60.96" y="2.54" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="63.5" y="2.54" drill="1.016" shape="long" rot="R90"/>
<text x="23.1184" y="48.7812" size="1.016" layer="48" font="vector" ratio="10" rot="R270">AREF</text>
<text x="25.654" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">GND</text>
<text x="28.194" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB5</text>
<text x="30.734" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB4</text>
<text x="33.274" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB3</text>
<text x="35.814" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB2</text>
<text x="38.354" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB1</text>
<text x="40.894" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PB0</text>
<text x="44.958" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD7</text>
<text x="47.498" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD6</text>
<text x="50.038" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD5</text>
<text x="52.578" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD4</text>
<text x="55.118" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD3</text>
<text x="57.658" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD2</text>
<text x="60.198" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD1</text>
<text x="62.738" y="48.768" size="1.016" layer="48" font="vector" ratio="10" rot="R270">PD0</text>
<text x="33.7776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">!Reset</text>
<text x="36.3176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+3V3</text>
<text x="38.8576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+5V</text>
<text x="41.3976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="43.9376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">GND</text>
<text x="46.4776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">+Vin</text>
<text x="51.5576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC0</text>
<text x="54.0976" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC1</text>
<text x="56.6376" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC2</text>
<text x="59.1776" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC3</text>
<text x="61.7176" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC4</text>
<text x="64.2576" y="4.8128" size="1.016" layer="48" font="vector" ratio="10" rot="R90">PC5</text>
<rectangle x1="38.862" y1="50.546" x2="39.37" y2="51.054" layer="51"/>
<rectangle x1="36.322" y1="50.546" x2="36.83" y2="51.054" layer="51"/>
<rectangle x1="33.782" y1="50.546" x2="34.29" y2="51.054" layer="51"/>
<rectangle x1="31.242" y1="50.546" x2="31.75" y2="51.054" layer="51"/>
<rectangle x1="28.702" y1="50.546" x2="29.21" y2="51.054" layer="51"/>
<rectangle x1="26.162" y1="50.546" x2="26.67" y2="51.054" layer="51"/>
<rectangle x1="23.622" y1="50.546" x2="24.13" y2="51.054" layer="51"/>
<rectangle x1="41.402" y1="50.546" x2="41.91" y2="51.054" layer="51"/>
<rectangle x1="60.706" y1="50.546" x2="61.214" y2="51.054" layer="51"/>
<rectangle x1="58.166" y1="50.546" x2="58.674" y2="51.054" layer="51"/>
<rectangle x1="55.626" y1="50.546" x2="56.134" y2="51.054" layer="51"/>
<rectangle x1="53.086" y1="50.546" x2="53.594" y2="51.054" layer="51"/>
<rectangle x1="50.546" y1="50.546" x2="51.054" y2="51.054" layer="51"/>
<rectangle x1="48.006" y1="50.546" x2="48.514" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="50.546" x2="45.974" y2="51.054" layer="51"/>
<rectangle x1="63.246" y1="50.546" x2="63.754" y2="51.054" layer="51"/>
<rectangle x1="45.466" y1="2.286" x2="45.974" y2="2.794" layer="51"/>
<rectangle x1="42.926" y1="2.286" x2="43.434" y2="2.794" layer="51"/>
<rectangle x1="40.386" y1="2.286" x2="40.894" y2="2.794" layer="51"/>
<rectangle x1="37.846" y1="2.286" x2="38.354" y2="2.794" layer="51"/>
<rectangle x1="35.306" y1="2.286" x2="35.814" y2="2.794" layer="51"/>
<rectangle x1="32.766" y1="2.286" x2="33.274" y2="2.794" layer="51"/>
<rectangle x1="63.246" y1="2.286" x2="63.754" y2="2.794" layer="51"/>
<rectangle x1="60.706" y1="2.286" x2="61.214" y2="2.794" layer="51"/>
<rectangle x1="58.166" y1="2.286" x2="58.674" y2="2.794" layer="51"/>
<rectangle x1="55.626" y1="2.286" x2="56.134" y2="2.794" layer="51"/>
<rectangle x1="53.086" y1="2.286" x2="53.594" y2="2.794" layer="51"/>
<rectangle x1="50.546" y1="2.286" x2="51.054" y2="2.794" layer="51"/>
<hole x="15.24" y="50.8" drill="3.2"/>
<hole x="66.04" y="35.56" drill="3.2"/>
<hole x="66.04" y="7.62" drill="3.2"/>
</package>
</packages>
<symbols>
<symbol name="ARDUINO2009">
<wire x1="-12.7" y1="25.4" x2="12.7" y2="25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="25.4" x2="12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="12.7" y1="-25.4" x2="-12.7" y2="-25.4" width="0.254" layer="94"/>
<wire x1="-12.7" y1="-25.4" x2="-12.7" y2="25.4" width="0.254" layer="94"/>
<text x="-12.7" y="26.67" size="1.6764" layer="95">&gt;Name</text>
<text x="-4.572" y="0.508" size="1.778" layer="94">Arduino</text>
<text x="-2.794" y="-2.794" size="1.778" layer="94">2009</text>
<pin name="13" x="17.78" y="-17.78" length="middle" rot="R180"/>
<pin name="12" x="17.78" y="-15.24" length="middle" rot="R180"/>
<pin name="11" x="17.78" y="-12.7" length="middle" rot="R180"/>
<pin name="10" x="17.78" y="-10.16" length="middle" rot="R180"/>
<pin name="9" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="8" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="7" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="6" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="5" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="4" x="17.78" y="7.62" length="middle" rot="R180"/>
<pin name="3" x="17.78" y="10.16" length="middle" rot="R180"/>
<pin name="2" x="17.78" y="12.7" length="middle" rot="R180"/>
<pin name="1" x="17.78" y="15.24" length="middle" rot="R180"/>
<pin name="0" x="17.78" y="17.78" length="middle" rot="R180"/>
<pin name="GND@1" x="-5.08" y="-30.48" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@2" x="0" y="-30.48" length="middle" direction="pwr" rot="R90"/>
<pin name="GND@3" x="5.08" y="-30.48" length="middle" direction="pwr" rot="R90"/>
<pin name="AREF" x="-17.78" y="10.16" length="middle"/>
<pin name="+5V" x="-5.08" y="30.48" length="middle" direction="pwr" rot="R270"/>
<pin name="+3V3" x="0" y="30.48" length="middle" direction="pwr" rot="R270"/>
<pin name="+VIN" x="5.08" y="30.48" length="middle" rot="R270"/>
<pin name="A0" x="-17.78" y="5.08" length="middle"/>
<pin name="A4" x="-17.78" y="-5.08" length="middle"/>
<pin name="A3" x="-17.78" y="-2.54" length="middle"/>
<pin name="A2" x="-17.78" y="0" length="middle"/>
<pin name="A1" x="-17.78" y="2.54" length="middle"/>
<pin name="A5" x="-17.78" y="-7.62" length="middle"/>
<pin name="!RESET" x="-17.78" y="17.78" length="middle" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ARDUINO2009_1" prefix="IC" uservalue="yes">
<description>The Arduino Duemilanove ("2009") is a microcontroller board based on the ATmega168  or ATmega328.&lt;br&gt;
- 14 digital input/output pins (of which 6 can be used as PWM outputs) &lt;br&gt;
- 6 analog inputs, a 16 MHz crystal oscillator&lt;br&gt;
- USB connection&lt;br&gt;
- power jack&lt;br&gt;
- ISP header&lt;br&gt;
- reset button &lt;br&gt;
&lt;br&gt;
It contains everything needed to support the microcontroller; simply connect it to a computer with a USB cable or power it with a AC-to-DC adapter or battery to get started
&lt;br&gt;&lt;br&gt;
http://arduino.cc/en/Main/ArduinoBoardDuemilanove</description>
<gates>
<gate name="G$1" symbol="ARDUINO2009" x="0" y="0" addlevel="must"/>
</gates>
<devices>
<device name="0" package="ARDUINO2009">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V" pad="3"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="0" pad="13"/>
<connect gate="G$1" pin="1" pad="14"/>
<connect gate="G$1" pin="10" pad="23"/>
<connect gate="G$1" pin="11" pad="24"/>
<connect gate="G$1" pin="12" pad="25"/>
<connect gate="G$1" pin="13" pad="26"/>
<connect gate="G$1" pin="2" pad="15"/>
<connect gate="G$1" pin="3" pad="16"/>
<connect gate="G$1" pin="4" pad="17"/>
<connect gate="G$1" pin="5" pad="18"/>
<connect gate="G$1" pin="6" pad="19"/>
<connect gate="G$1" pin="7" pad="20"/>
<connect gate="G$1" pin="8" pad="21"/>
<connect gate="G$1" pin="9" pad="22"/>
<connect gate="G$1" pin="A0" pad="7"/>
<connect gate="G$1" pin="A1" pad="8"/>
<connect gate="G$1" pin="A2" pad="9"/>
<connect gate="G$1" pin="A3" pad="10"/>
<connect gate="G$1" pin="A4" pad="11"/>
<connect gate="G$1" pin="A5" pad="12"/>
<connect gate="G$1" pin="AREF" pad="28"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="27"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="1" package="ARDUINO2009_1">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V" pad="3"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="0" pad="13"/>
<connect gate="G$1" pin="1" pad="14"/>
<connect gate="G$1" pin="10" pad="23"/>
<connect gate="G$1" pin="11" pad="24"/>
<connect gate="G$1" pin="12" pad="25"/>
<connect gate="G$1" pin="13" pad="26"/>
<connect gate="G$1" pin="2" pad="15"/>
<connect gate="G$1" pin="3" pad="16"/>
<connect gate="G$1" pin="4" pad="17"/>
<connect gate="G$1" pin="5" pad="18"/>
<connect gate="G$1" pin="6" pad="19"/>
<connect gate="G$1" pin="7" pad="20"/>
<connect gate="G$1" pin="8" pad="21"/>
<connect gate="G$1" pin="9" pad="22"/>
<connect gate="G$1" pin="A0" pad="7"/>
<connect gate="G$1" pin="A1" pad="8"/>
<connect gate="G$1" pin="A2" pad="9"/>
<connect gate="G$1" pin="A3" pad="10"/>
<connect gate="G$1" pin="A4" pad="11"/>
<connect gate="G$1" pin="A5" pad="12"/>
<connect gate="G$1" pin="AREF" pad="28"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="27"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="2" package="ARDUINO2009_2">
<connects>
<connect gate="G$1" pin="!RESET" pad="1"/>
<connect gate="G$1" pin="+3V3" pad="2"/>
<connect gate="G$1" pin="+5V" pad="3"/>
<connect gate="G$1" pin="+VIN" pad="6"/>
<connect gate="G$1" pin="0" pad="13"/>
<connect gate="G$1" pin="1" pad="14"/>
<connect gate="G$1" pin="10" pad="23"/>
<connect gate="G$1" pin="11" pad="24"/>
<connect gate="G$1" pin="12" pad="25"/>
<connect gate="G$1" pin="13" pad="26"/>
<connect gate="G$1" pin="2" pad="15"/>
<connect gate="G$1" pin="3" pad="16"/>
<connect gate="G$1" pin="4" pad="17"/>
<connect gate="G$1" pin="5" pad="18"/>
<connect gate="G$1" pin="6" pad="19"/>
<connect gate="G$1" pin="7" pad="20"/>
<connect gate="G$1" pin="8" pad="21"/>
<connect gate="G$1" pin="9" pad="22"/>
<connect gate="G$1" pin="A0" pad="7"/>
<connect gate="G$1" pin="A1" pad="8"/>
<connect gate="G$1" pin="A2" pad="9"/>
<connect gate="G$1" pin="A3" pad="10"/>
<connect gate="G$1" pin="A4" pad="11"/>
<connect gate="G$1" pin="A5" pad="12"/>
<connect gate="G$1" pin="AREF" pad="28"/>
<connect gate="G$1" pin="GND@1" pad="4"/>
<connect gate="G$1" pin="GND@2" pad="5"/>
<connect gate="G$1" pin="GND@3" pad="27"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy" urn="urn:adsk.eagle:library:215">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR" urn="urn:adsk.eagle:symbol:13162/1" library_version="3">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:13171/1" prefix="R" library_version="3">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="led" urn="urn:adsk.eagle:library:259">
<description>&lt;b&gt;LEDs&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;&lt;br&gt;
Extended by Federico Battaglin &lt;author&gt;&amp;lt;federico.rd@fdpinternational.com&amp;gt;&lt;/author&gt; with DUOLED</description>
<packages>
<package name="SFH482" urn="urn:adsk.eagle:footprint:15650/1" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking&lt;p&gt;
Inifineon</description>
<wire x1="-2.159" y1="1.524" x2="-2.794" y2="2.159" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="2.159" x2="-2.159" y2="2.794" width="0.1524" layer="21"/>
<wire x1="0" y1="1.778" x2="1.5358" y2="0.8959" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="0.8959" x2="0" y2="1.778" width="0.1524" layer="21" curve="-59.743278"/>
<wire x1="-1.5358" y1="-0.8959" x2="0" y2="-1.778" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="0" y1="-1.778" x2="1.5358" y2="-0.8959" width="0.1524" layer="21" curve="59.743278"/>
<wire x1="1.5142" y1="0.9318" x2="1.778" y2="0" width="0.1524" layer="51" curve="-31.606487"/>
<wire x1="1.5" y1="-0.9546" x2="1.778" y2="0" width="0.1524" layer="51" curve="32.472615"/>
<wire x1="-1.778" y1="0" x2="-1.5142" y2="-0.9318" width="0.1524" layer="51" curve="31.606487"/>
<wire x1="-1.778" y1="0" x2="-1.5" y2="0.9546" width="0.1524" layer="51" curve="-32.472615"/>
<wire x1="-0.635" y1="0" x2="0" y2="0.635" width="0.1524" layer="51" curve="-90"/>
<wire x1="-1.016" y1="0" x2="0" y2="1.016" width="0.1524" layer="51" curve="-90"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="0" width="0.1524" layer="51" curve="90"/>
<wire x1="0.0539" y1="-1.0699" x2="1.0699" y2="-0.0539" width="0.1524" layer="51" curve="90"/>
<circle x="0" y="0" radius="2.667" width="0.1524" layer="21"/>
<circle x="0" y="0" radius="2.413" width="0.254" layer="21"/>
<pad name="K" x="1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<pad name="A" x="-1.27" y="0" drill="0.8128" shape="long" rot="R90"/>
<text x="-1.27" y="3.048" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-1.27" y="-4.318" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="SFH482" urn="urn:adsk.eagle:package:15795/1" type="box" library_version="5">
<description>IR LED
infrared emitting diode, Infineon
TO-18, lead spacing 2.54 mm, cathode marking
Inifineon</description>
<packageinstances>
<packageinstance name="SFH482"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="LED" urn="urn:adsk.eagle:symbol:15639/2" library_version="5">
<wire x1="1.27" y1="0" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="0" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="-1.27" y2="-2.54" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="0" width="0.254" layer="94"/>
<wire x1="-2.032" y1="-0.762" x2="-3.429" y2="-2.159" width="0.1524" layer="94"/>
<wire x1="-1.905" y1="-1.905" x2="-3.302" y2="-3.302" width="0.1524" layer="94"/>
<text x="3.556" y="-4.572" size="1.778" layer="95" rot="R90">&gt;NAME</text>
<text x="5.715" y="-4.572" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="C" x="0" y="-5.08" visible="off" length="short" direction="pas" rot="R90"/>
<pin name="A" x="0" y="2.54" visible="off" length="short" direction="pas" rot="R270"/>
<polygon width="0.1524" layer="94">
<vertex x="-3.429" y="-2.159"/>
<vertex x="-3.048" y="-1.27"/>
<vertex x="-2.54" y="-1.778"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="-3.302" y="-3.302"/>
<vertex x="-2.921" y="-2.413"/>
<vertex x="-2.413" y="-2.921"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="SFH482" urn="urn:adsk.eagle:component:15902/3" prefix="D" library_version="5">
<description>&lt;B&gt;IR LED&lt;/B&gt;&lt;p&gt;
infrared emitting diode, Infineon</description>
<gates>
<gate name="1" symbol="LED" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SFH482">
<connects>
<connect gate="1" pin="A" pad="A"/>
<connect gate="1" pin="C" pad="K"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:15795/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="switch" urn="urn:adsk.eagle:library:380">
<description>&lt;b&gt;Switches&lt;/b&gt;&lt;p&gt;
Marquardt, Siemens, C&amp;K, ITT, and others&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="5501" urn="urn:adsk.eagle:footprint:27648/1" library_version="3">
<description>&lt;b&gt;PUSHBUTTON SERIES 5500 SWITCHES&lt;/b&gt;&lt;p&gt;
Source: www.e-switch.com .. 5500.pdf</description>
<wire x1="-8.6549" y1="-6.1001" x2="-2.9649" y2="-6.1001" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-6.1001" x2="8.6549" y2="-6.1001" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="-6.1001" x2="8.6549" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="6.1001" x2="-2.9649" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="6.1001" x2="-8.6549" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="-8.6549" y1="6.1001" x2="-8.6549" y2="-6.1001" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-6.1001" x2="-2.9649" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-6.1001" x2="-1.27" y2="-4.699" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-4.699" x2="-1.27" y2="4.699" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="4.699" x2="-2.9649" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="-6.1001" x2="7.239" y2="-4.699" width="0.2032" layer="21"/>
<wire x1="7.239" y1="-4.699" x2="7.239" y2="4.699" width="0.2032" layer="21"/>
<wire x1="7.239" y1="4.699" x2="8.6549" y2="6.1001" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="4.699" x2="7.239" y2="4.699" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-4.699" x2="7.239" y2="-4.699" width="0.2032" layer="21"/>
<pad name="NO" x="5.08" y="3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="1A" x="0" y="3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="1B" x="0" y="-3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="NC" x="5.08" y="-3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<text x="-8.89" y="-5.08" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<hole x="-7.62" y="3.81" drill="1.1"/>
<hole x="7.62" y="-3.81" drill="1.1"/>
</package>
<package name="5511" urn="urn:adsk.eagle:footprint:27647/1" library_version="3">
<description>&lt;b&gt;PUSHBUTTON SERIES 5511 SWITCHES&lt;/b&gt;&lt;p&gt;
Source: www.e-switch.com .. 5500.pdf</description>
<wire x1="-8.6549" y1="-8.5501" x2="-2.9649" y2="-8.5501" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-8.5501" x2="8.6549" y2="-8.5501" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="-8.5501" x2="8.6549" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="8.5501" x2="-2.9649" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="8.5501" x2="-8.6549" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="-8.6549" y1="8.5501" x2="-8.6549" y2="-8.5501" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-8.5501" x2="-2.9649" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="-2.9649" y1="-8.5501" x2="-1.27" y2="-7.149" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-7.149" x2="-1.27" y2="7.149" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="7.149" x2="-2.9649" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="8.6549" y1="-8.5501" x2="7.239" y2="-7.149" width="0.2032" layer="21"/>
<wire x1="7.239" y1="-7.149" x2="7.239" y2="7.149" width="0.2032" layer="21"/>
<wire x1="7.239" y1="7.149" x2="8.6549" y2="8.5501" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="7.149" x2="7.239" y2="7.149" width="0.2032" layer="21"/>
<wire x1="-1.27" y1="-7.149" x2="7.239" y2="-7.149" width="0.2032" layer="21"/>
<pad name="NO" x="5.08" y="3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="1A" x="0" y="3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="1B" x="0" y="-3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<pad name="NC" x="5.08" y="-3.81" drill="0.9" diameter="1.5" shape="square" rot="R90"/>
<text x="-8.89" y="-5.08" size="1.27" layer="25" rot="R90">&gt;NAME</text>
<text x="3.81" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<hole x="-7.62" y="3.81" drill="1.1"/>
<hole x="7.62" y="-3.81" drill="1.1"/>
</package>
</packages>
<packages3d>
<package3d name="5501" urn="urn:adsk.eagle:package:27750/1" type="box" library_version="3">
<description>PUSHBUTTON SERIES 5500 SWITCHES
Source: www.e-switch.com .. 5500.pdf</description>
<packageinstances>
<packageinstance name="5501"/>
</packageinstances>
</package3d>
<package3d name="5511" urn="urn:adsk.eagle:package:27758/1" type="box" library_version="3">
<description>PUSHBUTTON SERIES 5511 SWITCHES
Source: www.e-switch.com .. 5500.pdf</description>
<packageinstances>
<packageinstance name="5511"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="NO-NC-2" urn="urn:adsk.eagle:symbol:27646/1" library_version="3">
<wire x1="-2.54" y1="0" x2="-2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="0" x2="3.048" y2="1.778" width="0.2032" layer="94"/>
<wire x1="0.762" y1="1.016" x2="0.762" y2="1.524" width="0.2032" layer="94"/>
<wire x1="0.762" y1="2.032" x2="0.762" y2="2.794" width="0.2032" layer="94"/>
<wire x1="0.762" y1="2.794" x2="0.762" y2="3.048" width="0.2032" layer="94"/>
<wire x1="0.762" y1="3.556" x2="0.762" y2="4.064" width="0.2032" layer="94"/>
<wire x1="1.27" y1="4.064" x2="0.762" y2="4.064" width="0.2032" layer="94"/>
<wire x1="0.762" y1="4.064" x2="0.254" y2="4.064" width="0.2032" layer="94"/>
<wire x1="0.254" y1="2.286" x2="0.762" y2="2.794" width="0.1524" layer="94"/>
<wire x1="0.762" y1="2.794" x2="1.27" y2="2.286" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0" x2="-1.27" y2="0" width="0.2032" layer="94"/>
<wire x1="2.54" y1="-1.778" x2="2.54" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="2.54" y1="2.54" x2="2.54" y2="1.778" width="0.1524" layer="94"/>
<circle x="-2.54" y="0" radius="0.508" width="0" layer="94"/>
<text x="-3.048" y="4.826" size="1.778" layer="95">&gt;NAME</text>
<text x="-3.81" y="-5.588" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1A" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="1B" x="-5.08" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1"/>
<pin name="NO" x="5.08" y="-2.54" visible="off" length="short" direction="pas" swaplevel="2" rot="R180"/>
<pin name="NC" x="5.08" y="2.54" visible="off" length="short" direction="pas" swaplevel="2" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="55?" urn="urn:adsk.eagle:component:27846/2" prefix="S" library_version="3">
<description>&lt;b&gt;PUSHBUTTON SERIES 5500 SWITCHES&lt;/b&gt;&lt;p&gt;
Source: www.e-switch.com .. 5500.pdf</description>
<gates>
<gate name="G$1" symbol="NO-NC-2" x="0" y="0"/>
</gates>
<devices>
<device name="01" package="5501">
<connects>
<connect gate="G$1" pin="1A" pad="1A"/>
<connect gate="G$1" pin="1B" pad="1B"/>
<connect gate="G$1" pin="NC" pad="NC"/>
<connect gate="G$1" pin="NO" pad="NO"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27750/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
<device name="11" package="5511">
<connects>
<connect gate="G$1" pin="1A" pad="1A"/>
<connect gate="G$1" pin="1B" pad="1B"/>
<connect gate="G$1" pin="NC" pad="NC"/>
<connect gate="G$1" pin="NO" pad="NO"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:27758/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="IC1" library="arduino" deviceset="ARDUINO2009_1" device="0"/>
<part name="R1" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R2" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="D1" library="led" library_urn="urn:adsk.eagle:library:259" deviceset="SFH482" device="" package3d_urn="urn:adsk.eagle:package:15795/1"/>
<part name="S1" library="switch" library_urn="urn:adsk.eagle:library:380" deviceset="55?" device="01" package3d_urn="urn:adsk.eagle:package:27750/1"/>
</parts>
<sheets>
<sheet>
<plain>
<wire x1="25.4" y1="104.14" x2="116.84" y2="104.14" width="0.4064" layer="95"/>
<wire x1="116.84" y1="104.14" x2="116.84" y2="10.16" width="0.4064" layer="95"/>
<wire x1="116.84" y1="10.16" x2="25.4" y2="10.16" width="0.4064" layer="95"/>
<wire x1="25.4" y1="10.16" x2="25.4" y2="104.14" width="0.4064" layer="95"/>
</plain>
<instances>
<instance part="IC1" gate="G$1" x="48.26" y="63.5" smashed="yes" rot="MR180">
<attribute name="NAME" x="35.56" y="36.83" size="1.6764" layer="95" rot="MR180"/>
</instance>
<instance part="R1" gate="G$1" x="81.28" y="60.96" smashed="yes" rot="MR0"/>
<instance part="R2" gate="G$1" x="76.2" y="30.48" smashed="yes" rot="MR270"/>
<instance part="D1" gate="1" x="93.98" y="60.96" smashed="yes" rot="MR270">
<attribute name="NAME" x="98.552" y="57.404" size="1.778" layer="95" rot="MR0"/>
<attribute name="VALUE" x="98.552" y="55.245" size="1.778" layer="96" rot="MR0"/>
</instance>
<instance part="S1" gate="G$1" x="91.44" y="40.64" smashed="yes">
<attribute name="NAME" x="88.392" y="45.466" size="1.778" layer="95"/>
<attribute name="VALUE" x="87.63" y="35.052" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<wire x1="83.82" y1="40.64" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="2"/>
<wire x1="76.2" y1="40.64" x2="76.2" y2="50.8" width="0.1524" layer="91"/>
<wire x1="76.2" y1="50.8" x2="66.04" y2="50.8" width="0.1524" layer="91"/>
<wire x1="76.2" y1="35.56" x2="76.2" y2="40.64" width="0.1524" layer="91"/>
<junction x="76.2" y="40.64"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<wire x1="76.2" y1="60.96" x2="76.2" y2="53.34" width="0.1524" layer="91"/>
<pinref part="IC1" gate="G$1" pin="3"/>
<wire x1="76.2" y1="53.34" x2="66.04" y2="53.34" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="D1" gate="1" pin="A"/>
<wire x1="86.36" y1="60.96" x2="91.44" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="+5V"/>
<wire x1="43.18" y1="33.02" x2="43.18" y2="20.32" width="0.1524" layer="91"/>
<wire x1="43.18" y1="20.32" x2="106.68" y2="20.32" width="0.1524" layer="91"/>
<wire x1="106.68" y1="20.32" x2="106.68" y2="38.1" width="0.1524" layer="91"/>
<pinref part="S1" gate="G$1" pin="NO"/>
<wire x1="106.68" y1="38.1" x2="96.52" y2="38.1" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="IC1" gate="G$1" pin="GND@1"/>
<wire x1="43.18" y1="93.98" x2="43.18" y2="99.06" width="0.1524" layer="91"/>
<wire x1="43.18" y1="99.06" x2="111.76" y2="99.06" width="0.1524" layer="91"/>
<wire x1="111.76" y1="99.06" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<wire x1="111.76" y1="60.96" x2="111.76" y2="15.24" width="0.1524" layer="91"/>
<wire x1="111.76" y1="15.24" x2="76.2" y2="15.24" width="0.1524" layer="91"/>
<wire x1="76.2" y1="15.24" x2="76.2" y2="25.4" width="0.1524" layer="91"/>
<pinref part="D1" gate="1" pin="C"/>
<wire x1="99.06" y1="60.96" x2="111.76" y2="60.96" width="0.1524" layer="91"/>
<junction x="111.76" y="60.96"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
