verdiSetActWin -dock widgetDock_<Decl._Tree>
simSetSimulator "-vcssv" -exec "/home1/BPRN08/VegiJ/coding/sim/simv" -args \
           "-a vcs.log -cm_dir ./mem_cov1 +ntb_random_seed_automatic +UVM_TESTNAME=test"
debImport "-dbdir" "/home1/BPRN08/VegiJ/coding/sim/simv.daidir"
debLoadSimResult /home1/BPRN08/VegiJ/coding/sim/wave1.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "top.if0.dest_mon_mp" -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcHBSelect "top.if0.src_mon_cb" -win $_nTrace1 -add
srcHBAddObjectToWave -clipboard
wvDrop -win $_nWave2
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcSetScope "top.if0.dest_mon_cb" -delim "." -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcSetScope "top.if0.dest_mon_cb" -delim "." -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcSetScope "top.if0.dest_mon_cb" -delim "." -win $_nTrace1
srcHBSelect "top.if0.dest_mon_cb" -win $_nTrace1
srcSignalView -on
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.if0.dest_mon_cb.vld"
srcSignalViewSelectAll -curPage
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "top.if0.src_mon_cb" -win $_nTrace1
srcSetScope "top.if0.src_mon_cb" -delim "." -win $_nTrace1
srcHBSelect "top.if0.src_mon_cb" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalViewExpand "top.if0.src_mon_cb.addr\[7:0\]"
verdiSetActWin -dock widgetDock_<Signal_List>
srcSignalViewSelect "top.if0.src_mon_cb.addr\[7:0\]"
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcSignalViewSelect "top.if0.src_mon_cb.addr\[5\]"
srcSignalViewSelectAll -curPage
srcSignalViewAddSelectedToWave -win $_nTrace1 -clipboard
wvDrop -win $_nWave2
srcHBSelect "top.DUV" -win $_nTrace1
srcSetScope "top.DUV" -delim "." -win $_nTrace1
srcHBSelect "top.DUV" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcSignalView -off
verdiDockWidgetMaximize -dock windowDock_nWave_2
verdiSetActWin -win $_nWave2
wvZoomAll -win $_nWave2
wvSetCursor -win $_nWave2 60156.043956 -snap {("src_mon_cb" 18)}
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 20 )} 
wvSetCursor -win $_nWave2 21864.835165 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 9 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 9 )} 
wvSetPosition -win $_nWave2 {("src_mon_cb" 9)}
wvExpandBus -win $_nWave2
wvSetPosition -win $_nWave2 {("src_mon_cb" 29)}
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 9 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 10 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 10 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 10 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 10 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 9 )} 
wvSetPosition -win $_nWave2 {("src_mon_cb" 9)}
wvCollapseBus -win $_nWave2
wvSetPosition -win $_nWave2 {("src_mon_cb" 9)}
wvSetPosition -win $_nWave2 {("src_mon_cb" 13)}
wvSelectAll -win $_nWave2
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 11 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 2 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 3 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 4 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 5 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 6 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 5 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 6 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 61959.778563 -snap {("src_mon_cb" 3)}
wvSetCursor -win $_nWave2 63403.285949 -snap {("src_mon_cb" 4)}
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 6 )} 
wvSelectSignal -win $_nWave2 {( "src_mon_cb" 6 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 6551.302751 -snap {("src_mon_cb" 13)}
wvSetCursor -win $_nWave2 53076.656188 -snap {("src_mon_cb" 4)}
wvSetCursor -win $_nWave2 51966.265891 -snap {("G2" 0)}
debExit
