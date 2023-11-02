#############################################################################
# Generated by PAGE version 7.6f
#  in conjunction with Tcl version 8.6
#  Oct 25, 2022 07:48:49 PM PDT  platform: Linux
set vTcl(timestamp) ""
if {![info exists vTcl(borrow)]} {
    ::vTcl::MessageBox -title Error -message  "You must open project files from within PAGE."
    exit}


set image_list { 
}
vTcl:create_project_images $image_list   ;# In image.tcl

if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_font_dft_desc)  TkDefaultFont
set vTcl(actual_gui_font_dft_name)  TkDefaultFont
set vTcl(actual_gui_font_text_desc)  TkTextFont
set vTcl(actual_gui_font_text_name)  TkTextFont
set vTcl(actual_gui_font_fixed_desc)  TkFixedFont
set vTcl(actual_gui_font_fixed_name)  TkFixedFont
set vTcl(actual_gui_font_menu_desc)  TkMenuFont
set vTcl(actual_gui_font_menu_name)  TkMenuFont
set vTcl(actual_gui_font_tooltip_desc)  TkDefaultFont
set vTcl(actual_gui_font_tooltip_name)  TkDefaultFont
set vTcl(actual_gui_font_treeview_desc)  TkDefaultFont
set vTcl(actual_gui_font_treeview_name)  TkDefaultFont
########################################### 
set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #f4bcb2
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) gray40
set vTcl(analog_color_p) #c3c3c3
set vTcl(analog_color_m) beige
set vTcl(tabfg1) black
set vTcl(tabfg2) black
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(actual_gui_menu_active_fg)  #000000
########################################### 
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 0
set vTcl(mode) Absolute
}




proc vTclWindow.top1 {base} {
    global vTcl
    if {$base == ""} {
        set base .top1
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    set target $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -background $vTcl(actual_gui_bg) -highlightbackground wheat \
        -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 600x598+808+34
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 4225 1410
    wm minsize $top 1 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Tooltip Hack"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    button "$top.but48" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -compound left \
        -disabledforeground #b8a786 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Button 
    vTcl:DefineAlias "$top.but48" "Button1" vTcl:WidgetProc "Toplevel1" 1
    bind $top.but48 <<SetBalloon>> {
        set ::vTcl::balloon::%W {This is the Tooltop!}
    }
    entry "$top.ent49" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black -textvariable bkgnd \
        -width 156 
    vTcl:DefineAlias "$top.ent49" "Entry1" vTcl:WidgetProc "Toplevel1" 1
    entry "$top.ent50" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black -textvariable frgnd \
        -width 156 
    vTcl:DefineAlias "$top.ent50" "Entry2" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab51" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Background Color:} 
    vTcl:DefineAlias "$top.lab51" "Label1" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab52" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Foreground Color:} 
    vTcl:DefineAlias "$top.lab52" "Label2" vTcl:WidgetProc "Toplevel1" 1
    button "$top.but53" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -command on_btnTryIt \
        -compound left -disabledforeground #b8a786 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Try It!} 
    vTcl:DefineAlias "$top.but53" "btnTryIt" vTcl:WidgetProc "Toplevel1" 1
    button "$top.but54" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -command on_btnExit \
        -compound left -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 12 -weight bold -slant italic -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Exit 
    vTcl:DefineAlias "$top.but54" "btnExit" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab48" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Pick a Font:} 
    vTcl:DefineAlias "$top.lab48" "Label3" vTcl:WidgetProc "Toplevel1" 1
    entry "$top.ent51" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black \
        -textvariable FontData -width 156 
    vTcl:DefineAlias "$top.ent51" "Entry3" vTcl:WidgetProc "Toplevel1" 1
    button "$top.but52" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 \
        -command on_btngetfont -compound left -disabledforeground #b8a786 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground wheat -highlightcolor black -text ... 
    vTcl:DefineAlias "$top.but52" "btnGetFont" vTcl:WidgetProc "Toplevel1" 1
    button "$top.but55" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 \
        -command on_Background_Click -compound left \
        -disabledforeground #b8a786 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text ... 
    vTcl:DefineAlias "$top.but55" "Button2" vTcl:WidgetProc "Toplevel1" 1
    button "$top.but56" \
        -activebackground $vTcl(analog_color_m) -activeforeground black \
        -background $vTcl(actual_gui_bg) -borderwidth 2 \
        -command on_Foreground_Click -compound left \
        -disabledforeground #b8a786 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text ... 
    vTcl:DefineAlias "$top.but56" "Button3" vTcl:WidgetProc "Toplevel1" 1
    entry "$top.ent57" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black \
        -textvariable PadxData -width 10 
    vTcl:DefineAlias "$top.ent57" "Entry4" vTcl:WidgetProc "Toplevel1" 1
    entry "$top.ent58" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black \
        -textvariable PadyData -width 10 
    vTcl:DefineAlias "$top.ent58" "Entry5" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab59" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Pad X:} 
    vTcl:DefineAlias "$top.lab59" "Label4" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab60" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text {Pad Y:} 
    vTcl:DefineAlias "$top.lab60" "Label5" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox "$top.tCo61" \
        -exportselection 0 -font TkTextFont -textvariable ReliefData \
        -foreground {} -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo61" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab62" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Relief: 
    vTcl:DefineAlias "$top.lab62" "Label6" vTcl:WidgetProc "Toplevel1" 1
    ttk::combobox "$top.tCo63" \
        -font TkTextFont -textvariable JustifyData -foreground {} \
        -background {} -takefocus {} 
    vTcl:DefineAlias "$top.tCo63" "TCombobox2" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab64" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Justify: 
    vTcl:DefineAlias "$top.lab64" "Label7" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab66" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Text: 
    vTcl:DefineAlias "$top.lab66" "Label8" vTcl:WidgetProc "Toplevel1" 1
    label "$top.lab49" \
        -activebackground #f9f9f9 -activeforeground #000000 -anchor e \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #b8a786 \
        -font {-family {DejaVu Sans} -size 10 -weight bold -slant roman -underline 0 -overstrike 0} \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -text Borderwidth: 
    vTcl:DefineAlias "$top.lab49" "Label9" vTcl:WidgetProc "Toplevel1" 1
    entry "$top.ent52" \
        -background white -disabledforeground #b8a786 -font TkFixedFont \
        -foreground $vTcl(actual_gui_fg) -highlightbackground wheat \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black \
        -textvariable BorderwidthData -width 10 
    vTcl:DefineAlias "$top.ent52" "Entry7" vTcl:WidgetProc "Toplevel1" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd "$top.scr48" \
        -borderwidth 2 -relief groove -background wheat -height 75 \
        -highlightbackground wheat -highlightcolor black -width 125 
    vTcl:DefineAlias "$top.scr48" "Scrolledtext1" vTcl:WidgetProc "Toplevel1" 1

    $top.scr48.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.but48 \
        -in $top -x 190 -y 70 -width 183 -relwidth 0 -height 33 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent49 \
        -in $top -x 175 -y 170 -width 156 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent50 \
        -in $top -x 175 -y 210 -width 156 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab51 \
        -in $top -x 20 -y 170 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 20 -y 210 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but53 \
        -in $top -x 390 -y 190 -width 153 -relwidth 0 -height 33 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but54 \
        -in $top -x 440 -y 20 -width 133 -relwidth 0 -height 33 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 20 -y 250 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent51 \
        -in $top -x 175 -y 250 -width 156 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but52 \
        -in $top -x 330 -y 252 -width 23 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but55 \
        -in $top -x 330 -y 170 -width 23 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.but56 \
        -in $top -x 330 -y 210 -width 23 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent57 \
        -in $top -x 175 -y 290 -anchor nw -bordermode ignore 
    place $top.ent58 \
        -in $top -x 175 -y 320 -anchor nw -bordermode ignore 
    place $top.lab59 \
        -in $top -x 20 -y 290 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab60 \
        -in $top -x 20 -y 320 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tCo61 \
        -in $top -x 175 -y 350 -width 137 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab62 \
        -in $top -x 20 -y 350 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.tCo63 \
        -in $top -x 175 -y 380 -width 137 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab64 \
        -in $top -x 20 -y 380 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab66 \
        -in $top -x 20 -y 461 -width 149 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 30 -y 410 -width 139 -relwidth 0 -height 21 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.ent52 \
        -in $top -x 175 -y 410 -width 86 -relwidth 0 -height 23 -relheight 0 \
        -anchor nw -bordermode ignore 
    place $top.scr48 \
        -in $top -x 175 -y 440 -width 332 -relwidth 0 -height 121 \
        -relheight 0 -anchor nw -bordermode ignore 

    vTcl:FireEvent $base <<Ready>>
}

proc 36 {args} {return 1}


Window show .
set btop1 ""
if {$vTcl(borrow)} {
    set btop1 .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop1 $vTcl(tops)] != -1} {
        set btop1 .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop1
Window show .top1 $btop1
if {$vTcl(borrow)} {
    $btop1 configure -background plum
}
