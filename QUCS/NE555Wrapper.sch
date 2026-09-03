<Qucs Schematic 25.2.0>
<Properties>
  <View=40,92,1018,631,1.62958,0,0>
  <Grid=10,10,1>
  <DataSet=NE555Wrapper.dat>
  <DataDisplay=NE555Wrapper.dpl>
  <OpenDisplay=0>
  <Script=NE555Wrapper.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -30 114 SUB>
  <Line 70 -30 10 0 #000080 2 1>
  <Line -70 20 10 0 #000080 2 1>
  <Line 70 -100 0 200 #000080 2 1>
  <Line -60 -100 0 200 #000080 2 1>
  <Line -60 -100 130 0 #000000 1 1>
  <Line -60 100 130 0 #000000 1 1>
  <Line -70 -30 10 0 #000080 2 1>
  <Line -70 -70 10 0 #000080 2 1>
  <Line -70 60 10 0 #000080 2 1>
  <Line 70 -70 10 0 #000080 2 1>
  <Line 70 20 10 0 #000080 2 1>
  <Line 70 60 10 0 #000080 2 1>
  <Text -30 -20 10 #000000 0 "555 Timer \n Custom">
  <Text -50 -80 12 #000000 0 "DIS">
  <Text -50 -40 12 #000000 0 "TRES">
  <Text -50 20 12 #000000 0 "TRIG">
  <Text -50 50 12 #000000 0 "GND">
  <Text 30 -80 12 #000000 0 "RST">
  <Text 30 -40 12 #000000 0 "VCC">
  <Text 30 10 12 #000000 0 "OUT">
  <Text 30 50 12 #000000 0 "CTL">
  <.PortSym 80 -30 5 180 VCC>
  <.PortSym -70 60 1 0 GND>
  <.PortSym 80 -70 6 180 RST>
  <.PortSym -70 -30 7 0 TRES>
  <.PortSym -70 -70 8 0 DIS>
  <.PortSym 80 20 2 180 Out>
  <.PortSym 80 60 3 180 CTL>
  <.PortSym -70 20 4 0 TRIG>
</Symbol>
<Components>
  <SpLib X1 1 410 320 -26 111 0 0 "C:/Users/aswin/Downloads/NE555.lib" 0 "NE555" 0 "auto" 0 "" 0 "" 0>
  <Port VCC 1 380 230 -23 12 0 0 "5" 1 "in" 0>
  <Port GND 1 440 230 4 -54 0 2 "1" 1 "in" 0>
  <Port RST 1 440 290 4 -54 0 2 "6" 1 "in" 0>
  <Port TRES 1 440 350 4 -54 0 2 "7" 1 "in" 0>
  <Port DIS 1 440 410 4 -54 0 2 "8" 1 "out" 0>
  <Port Out 1 380 290 -23 12 0 0 "2" 1 "out" 0>
  <Port CTL 1 380 350 -23 12 0 0 "3" 1 "in" 0>
  <Port TRIG 1 380 410 -23 12 0 0 "4" 1 "in" 0>
</Components>
<Wires>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
