<Qucs Schematic 25.2.0>
<Properties>
  <View=294,-65,2883,1444,0.466507,0,42>
  <Grid=10,10,1>
  <DataSet=BJT_AM.dat>
  <DataDisplay=BJT_AM.dpl>
  <OpenDisplay=0>
  <Script=BJT_AM.m>
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
  <SpiceInclude SpiceInclude1 1 710 -60 -31 18 0 0 "C:/Users/aswin/OneDrive/Documents/QuCS/Q2N3904_TASK.txt" 1 "" 0 "" 0 "" 0 "" 0>
  <Vdc V1 1 110 80 18 -26 0 1 "30 V" 1>
  <R R3 1 870 320 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 330 430 0 0 0 0>
  <NPN_SPICE Q1 1 520 300 -26 34 0 0 "Q2N3904_TASK" 1 "" 0 "" 0 "" 0 "" 0>
  <GND * 1 520 480 0 0 0 0>
  <GND * 1 870 380 0 0 0 0>
  <GND * 1 100 420 0 0 0 0>
  <GND * 1 750 490 0 0 0 0>
  <GND * 1 110 110 0 0 0 0>
  <R R4 1 330 230 15 -26 0 1 "560 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R5 1 330 380 15 -26 0 1 "15 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C3 1 220 300 -26 17 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <Vac V2 1 100 340 18 -26 0 1 "30mV" 1 "600 kHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <C C2 1 690 230 -26 17 0 0 "470 pF" 1 "" 0 "neutral" 0>
  <C C1 1 520 420 17 -26 0 1 "100 nF" 1 "" 0 "neutral" 0>
  <.DC DC1 1 -30 -110 0 34 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vac V3 1 750 410 18 -26 0 1 "VMOD_PK" 1 "1 kHz" 1 "0" 0 "0" 0 "0" 0 "0" 0>
  <R R2 1 520 100 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 660 350 -26 15 0 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Ic 1 520 170 -35 -26 0 3>
  <.TR TR1 1 -150 360 0 56 0 0 "lin" 1 "0" 1 "5 ms" 1 "250001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.SW SW1 1 -480 170 0 56 0 0 "TR1" 1 "list" 1 "VMOD_PK" 1 "5 Ohm" 0 "50 Ohm" 0 "[60m,70m,80m,90m,100m]" 0>
  <.CUSTOMSIM CUSTOM1 1 160 1170 0 34 0 0 "foreach vm 60m 70m 80m 90m 100m\n\n    alterparam VMOD_PK = $vm\n    reset\n\n    tran 20n 5m 0 20n\n\n    let Tc = 1/600k\n    let k = 0\n    let peaks = vector(600)\n\n    while k < 600\n\n        let ta = 4m + k*Tc\n        let tb = ta + Tc\n\n        meas tran pk MAX v(am_out) FROM=$&ta TO=$&tb\n\n        let peaks[k] = pk\n\n        let k = k + 1\n    end\n\n    let Emax = maximum(peaks)\n    let Emin = minimum(peaks)\n\n    let m_env = (Emax-Emin)/(Emax+Emin)\n\n    echo =====================================\n    echo VMOD_PK = $vm\n    print Emax\n    print Emin\n    print m_env\n    echo =====================================\n\nend" 1 "" 0 "custom#ac1#.plot;custom#ac1#.print" 0>
  <.FOURIER FOUR1 1 -260 970 0 56 0 0 "TR1" 1 "610" 1 "1kHz" 1 "V(am_out)" 1>
  <VProbe VCE 1 610 270 28 -31 0 0>
  <SpicePar SpicePar1 1 1090 80 -25 18 0 0 "VMOD_PK=60m" 1>
</Components>
<Wires>
  <250 300 330 300 "" 0 0 0 "">
  <330 300 490 300 "" 0 0 0 "">
  <330 260 330 300 "" 0 0 0 "">
  <330 300 330 350 "" 0 0 0 "">
  <330 410 330 430 "" 0 0 0 "">
  <520 330 520 350 "" 0 0 0 "">
  <520 450 520 480 "" 0 0 0 "">
  <520 270 520 230 "" 0 0 0 "">
  <330 40 520 40 "" 0 0 0 "">
  <520 230 520 200 "" 0 0 0 "">
  <660 230 570 230 "" 0 0 0 "">
  <720 230 870 230 "" 0 0 0 "">
  <870 230 870 290 "" 0 0 0 "">
  <870 350 870 380 "" 0 0 0 "">
  <190 300 100 300 "Carrier" 140 270 83 "">
  <100 300 100 310 "" 0 0 0 "">
  <100 370 100 420 "" 0 0 0 "">
  <520 350 520 390 "" 0 0 0 "">
  <630 350 610 350 "" 0 0 0 "">
  <750 440 750 490 "" 0 0 0 "">
  <690 350 750 350 "" 0 0 0 "">
  <750 350 750 380 "" 0 0 0 "">
  <520 10 520 40 "" 0 0 0 "">
  <520 40 520 70 "" 0 0 0 "">
  <330 40 330 200 "" 0 0 0 "">
  <520 140 520 130 "" 0 0 0 "">
  <600 290 570 290 "" 0 0 0 "">
  <570 230 520 230 "" 0 0 0 "">
  <570 290 570 230 "" 0 0 0 "">
  <620 290 610 290 "" 0 0 0 "">
  <610 350 520 350 "" 0 0 0 "">
  <610 290 610 350 "" 0 0 0 "">
  <110 50 110 50 "VCC" 140 20 0 "">
  <330 300 330 300 "Base" 370 260 0 "">
  <520 10 520 10 "VCC" 510 -70 0 "">
  <520 230 520 230 "Collector" 600 190 0 "">
  <870 230 870 230 "AM_Out" 900 200 0 "">
  <520 350 520 350 "Emitter" 550 320 0 "">
  <750 350 750 350 "Mod_In" 780 320 0 "">
</Wires>
<Diagrams>
  <Tab 1020 354 739 184 3 #c0c0c0 1 00 1 0 1 1 1 0 1 1 1 0 1 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/v(am_out)" #0000ff 0 3 1 0 0>
	<"ngspice/v(base)" #0000ff 0 3 1 0 0>
	<"ngspice/v(carrier)" #0000ff 0 3 1 0 0>
	<"ngspice/v(collector)" #0000ff 0 3 1 0 0>
	<"ngspice/v(emitter)" #0000ff 0 3 1 0 0>
	<"ngspice/v(mod_in)" #0000ff 0 3 1 0 0>
	<"ngspice/v(vcc)" #0000ff 0 3 1 0 0>
	<"ngspice/i(vic)" #0000ff 0 3 1 0 0>
	<"ngspice/v(vce)" #0000ff 0 3 1 0 0>
  </Tab>
  <Rect 1163 1248 973 580 3 #c0c0c0 1 00 0 0.004 0.0001 0.005 1 -1 0.2 1 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tr1.tran.v(am_out)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 470 1025 629 465 3 #c0c0c0 1 00 0 0.0004 0.0041 0.0045 1 -1 0.2 1 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tr1.tran.v(carrier)" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect -50 948 433 368 3 #c0c0c0 1 00 1 -1 0.2 1 1 -1 0.2 1 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/tr1.tran.v(mod_in)" #0000ff 0 3 0 0 0>
	  <Mkr 0.00021106/60 -42 -153 3 0 0>
	  <Mkr 0.00023788/60 61 -251 3 0 0>
	  <Mkr 0.00022338/60 -241 -315 3 0 0>
	  <Mkr 0.00024734/60 151 -422 3 0 0>
	  <Mkr 0.00023448/60 -70 -427 3 0 0>
  </Rect>
  <Rect 1930 497 804 467 3 #c0c0c0 1 00 1 590000 50000 610000 1 -0.0105325 0.02 0.12 1 -1 0.2 1 315 0 225 1 0 0 "" "" "">
	<"ngspice/four1.magnitude(v(am_out))" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
