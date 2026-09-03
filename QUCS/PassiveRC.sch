<Qucs Schematic 25.2.0>
<Properties>
  <View=-154,-354,1588,773,0.839055,0,68>
  <Grid=10,10,1>
  <DataSet=PassiveRC.dat>
  <DataDisplay=PassiveRC.dpl>
  <OpenDisplay=0>
  <Script=PassiveRC.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R2 1 460 120 -26 15 0 0 "20 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R1 1 340 170 15 -26 0 1 "20 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 260 120 -26 17 0 0 "1 .6 uF" 1 "" 0 "neutral" 0>
  <C C2 1 540 170 17 -26 0 1 "0.4 uF" 1 "" 0 "neutral" 0>
  <Vac V1 1 100 190 18 -26 0 1 "1 V" 1 "1 kHz" 0 "0" 0 "0" 0 "0" 0 "0" 0>
  <GND * 1 340 240 0 0 0 0>
  <NutmegEq NutmegEq1 1 540 400 -26 18 0 0 "ALL" 1 "Gaindb=db(Vout2/Vin)" 1>
  <.AC AC1 1 140 300 0 34 0 0 "log" 1 "1 Hz" 1 "100 MHz" 1 "300" 1 "no" 0>
</Components>
<Wires>
  <100 160 100 120 "" 0 0 0 "">
  <100 120 230 120 "" 0 0 0 "">
  <290 120 340 120 "" 0 0 0 "">
  <340 120 340 140 "" 0 0 0 "">
  <340 200 340 240 "" 0 0 0 "">
  <340 240 100 240 "" 0 0 0 "">
  <100 240 100 220 "" 0 0 0 "">
  <340 120 430 120 "Vout1" 370 90 2 "">
  <490 120 540 120 "" 0 0 0 "">
  <540 120 540 140 "" 0 0 0 "">
  <540 200 540 240 "" 0 0 0 "">
  <540 240 340 240 "" 0 0 0 "">
  <100 120 100 120 "Vin" 130 90 0 "">
  <540 120 540 120 "Vout2" 570 90 0 "">
</Wires>
<Diagrams>
  <Rect 670 420 439 335 3 #c0c0c0 1 10 1 0 10000 100000 1 -28.241 5 0 1 -1 0.5 1 315 0 225 1 0 0 "Frequency (Hz)" "Gain (dB)" "">
	<"ngspice/ac.gaindb" #ff00ff 0 3 0 0 0>
	  <Mkr 10000 183 -423 3 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
