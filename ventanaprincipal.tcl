#############################################################################
# Generated by PAGE version 7.6
#  in conjunction with Tcl version 8.6
#  Nov 04, 2023 03:28:14 PM -0300  platform: Windows NT
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
set vTcl(actual_gui_analog) #ececec
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
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
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
        -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1205x677+79+6
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 2736 804
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    set toptitle "Toplevel 0"
    wm title $top $toptitle
    namespace eval ::widgets::${top}::ClassOption {}
    set ::widgets::${top}::ClassOption(-toptitle) $toptitle
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab47" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Inicio" 
    vTcl:DefineAlias "$top.lab47" "Label1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab48" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Cajas" 
    vTcl:DefineAlias "$top.lab48" "Label2" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab49" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Creditos" 
    vTcl:DefineAlias "$top.lab49" "Label3" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab50" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Pendientes" 
    vTcl:DefineAlias "$top.lab50" "Label4" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Labelframe -background $vTcl(actual_gui_bg)
    ttk::style configure Labelframe -foreground $vTcl(actual_gui_fg)
    ttk::style configure Labelframe -font "$vTcl(actual_gui_font_dft_desc)"
    labelframe "$top.lab52" \
        -font "TkDefaultFont" -foreground $vTcl(actual_gui_fg) -text "Ventas" \
        -background $vTcl(actual_gui_bg) -height 616 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 1080 
    vTcl:DefineAlias "$top.lab52" "Labelframe1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    set site_3_0 $top.lab52
    ttk::style configure Entry -background $vTcl(actual_gui_bg)
    ttk::style configure Entry -foreground $vTcl(actual_gui_fg)
    ttk::style configure Entry -font "$vTcl(actual_gui_font_dft_desc)"
    entry "$site_3_0.ent57" \
        -background white -disabledforeground #a3a3a3 -font "TkFixedFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -insertbackground black -selectbackground #c4c4c4 \
        -selectforeground black -width 454 
    vTcl:DefineAlias "$site_3_0.ent57" "Entry4" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab58" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Buscar" 
    vTcl:DefineAlias "$site_3_0.lab58" "Label8" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab59" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Serie" 
    vTcl:DefineAlias "$site_3_0.lab59" "Label9" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab60" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "00000000" 
    vTcl:DefineAlias "$site_3_0.lab60" "Label10" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Scrolledtreeview -background $vTcl(actual_gui_bg)
    ttk::style configure Scrolledtreeview -foreground $vTcl(actual_gui_fg)
    ttk::style configure Scrolledtreeview -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::style configure Treeview \
         -font  "$vTcl(actual_gui_font_treeview_desc)"
    vTcl::widgets::ttk::scrolledtreeview::CreateCmd "$site_3_0.scr62" \
        -background $vTcl(actual_gui_bg) -height 286 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 1025 
    vTcl:DefineAlias "$site_3_0.scr62" "Scrolledtreeview1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A

        $base.lab52.scr62.01 configure -columns "Col1 Col2 Col3 Col4 Col5" -height 4
        $base.lab52.scr62.01 configure -columns {Col1 Col2 Col3 Col4 Col5}
        $base.lab52.scr62.01 heading #0 -text {Producto}
        $base.lab52.scr62.01 heading #0 -anchor center
        $base.lab52.scr62.01 column #0 -width 247
        $base.lab52.scr62.01 column #0 -minwidth 20
        $base.lab52.scr62.01 column #0 -stretch 1
        $base.lab52.scr62.01 column #0 -anchor w
        $base.lab52.scr62.01 heading Col1 -text {Cantidad}
        $base.lab52.scr62.01 heading Col1 -anchor center
        $base.lab52.scr62.01 column Col1 -width 212
        $base.lab52.scr62.01 column Col1 -minwidth 20
        $base.lab52.scr62.01 column Col1 -stretch 1
        $base.lab52.scr62.01 column Col1 -anchor w
        $base.lab52.scr62.01 heading Col2 -text {Precio}
        $base.lab52.scr62.01 heading Col2 -anchor center
        $base.lab52.scr62.01 column Col2 -width 114
        $base.lab52.scr62.01 column Col2 -minwidth 20
        $base.lab52.scr62.01 column Col2 -stretch 1
        $base.lab52.scr62.01 column Col2 -anchor w
        $base.lab52.scr62.01 heading Col3 -text {SubTotal}
        $base.lab52.scr62.01 heading Col3 -anchor center
        $base.lab52.scr62.01 column Col3 -width 122
        $base.lab52.scr62.01 column Col3 -minwidth 20
        $base.lab52.scr62.01 column Col3 -stretch 1
        $base.lab52.scr62.01 column Col3 -anchor w
        $base.lab52.scr62.01 heading Col4 -text {Stock}
        $base.lab52.scr62.01 heading Col4 -anchor center
        $base.lab52.scr62.01 column Col4 -width 139
        $base.lab52.scr62.01 column Col4 -minwidth 20
        $base.lab52.scr62.01 column Col4 -stretch 1
        $base.lab52.scr62.01 column Col4 -anchor w
        $base.lab52.scr62.01 heading Col5 -text {Eliminar}
        $base.lab52.scr62.01 heading Col5 -anchor center
        $base.lab52.scr62.01 column Col5 -width 172
        $base.lab52.scr62.01 column Col5 -minwidth 20
        $base.lab52.scr62.01 column Col5 -stretch 1
        $base.lab52.scr62.01 column Col5 -anchor w
    ttk::style configure TSeparator -background $vTcl(actual_gui_bg)
    ttk::style configure TSeparator -foreground $vTcl(actual_gui_fg)
    ttk::style configure TSeparator -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::separator "$site_3_0.tSe47"
    vTcl:DefineAlias "$site_3_0.tSe47" "TSeparator1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab49" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Buscar Cliente" 
    vTcl:DefineAlias "$site_3_0.lab49" "Label11" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure TCombobox -background $vTcl(actual_gui_bg)
    ttk::style configure TCombobox -foreground $vTcl(actual_gui_fg)
    ttk::style configure TCombobox -font "$vTcl(actual_gui_font_dft_desc)"
    ttk::combobox "$site_3_0.tCo50" \
        -font "TkTextFont" -textvariable "combobox" -foreground {} \
        -background {} -takefocus {} 
    vTcl:DefineAlias "$site_3_0.tCo50" "TCombobox1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab51" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Forma de pago" 
    vTcl:DefineAlias "$site_3_0.lab51" "Label12" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Entry -background $vTcl(actual_gui_bg)
    ttk::style configure Entry -foreground $vTcl(actual_gui_fg)
    ttk::style configure Entry -font "$vTcl(actual_gui_font_dft_desc)"
    entry "$site_3_0.ent52" \
        -background white -disabledforeground #a3a3a3 -font "TkFixedFont" \
        -foreground $vTcl(actual_gui_fg) -insertbackground black -width 154 
    vTcl:DefineAlias "$site_3_0.ent52" "Entry1" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab53" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Descuento" 
    vTcl:DefineAlias "$site_3_0.lab53" "Label13" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Entry -background $vTcl(actual_gui_bg)
    ttk::style configure Entry -foreground $vTcl(actual_gui_fg)
    ttk::style configure Entry -font "$vTcl(actual_gui_font_dft_desc)"
    entry "$site_3_0.ent54" \
        -background white -disabledforeground #a3a3a3 -font "TkFixedFont" \
        -foreground $vTcl(actual_gui_fg) -insertbackground black -width 164 
    vTcl:DefineAlias "$site_3_0.ent54" "Entry2" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab55" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Telefono" 
    vTcl:DefineAlias "$site_3_0.lab55" "Label14" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab56" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Nro telefono" 
    vTcl:DefineAlias "$site_3_0.lab56" "Label15" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab57" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Direccion" 
    vTcl:DefineAlias "$site_3_0.lab57" "Label16" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab61" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -text "Mostrar la direccion del cliente" 
    vTcl:DefineAlias "$site_3_0.lab61" "Label17" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab62" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Cambio" 
    vTcl:DefineAlias "$site_3_0.lab62" "Label18" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab63" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Mostrar cambio" 
    vTcl:DefineAlias "$site_3_0.lab63" "Label19" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab64" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Vendedor" 
    vTcl:DefineAlias "$site_3_0.lab64" "Label20" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab65" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Administrador" 
    vTcl:DefineAlias "$site_3_0.lab65" "Label21" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab66" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Total a Pagar" 
    vTcl:DefineAlias "$site_3_0.lab66" "Label22" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$site_3_0.lab67" \
        -activeforeground SystemButtonText -anchor w \
        -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) -text "Mostrar total a pagar" 
    vTcl:DefineAlias "$site_3_0.lab67" "Label23" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    place $site_3_0.ent57 \
        -in $site_3_0 -x 0 -relx 0.065 -y 0 -rely 0.032 -width 454 \
        -relwidth 0 -height 30 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab58 \
        -in $site_3_0 -x 0 -relx 0.019 -y 0 -rely 0.032 -width 0 \
        -relwidth 0.04 -height 0 -relheight 0.044 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab59 \
        -in $site_3_0 -x 0 -relx 0.519 -y 0 -rely 0.032 -width 0 \
        -relwidth 0.031 -height 0 -relheight 0.041 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab60 \
        -in $site_3_0 -x 0 -relx 0.556 -y 0 -rely 0.032 -width 0 \
        -relwidth 0.059 -height 0 -relheight 0.041 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr62 \
        -in $site_3_0 -x 0 -relx 0.028 -y 0 -rely 0.114 -width 0 \
        -relwidth 0.949 -height 0 -relheight 0.464 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tSe47 \
        -in $site_3_0 -x 0 -relx 0.037 -y 0 -rely 0.617 -width 0 \
        -relwidth 0.933 -height 0 -relheight 0.003 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.028 -y 0 -rely 0.626 -width 0 \
        -relwidth 0.086 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tCo50 \
        -in $site_3_0 -x 0 -relx 0.028 -y 0 -rely 0.658 -width 0 \
        -relwidth 0.142 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab51 \
        -in $site_3_0 -x 0 -relx 0.269 -y 0 -rely 0.626 -width 0 \
        -relwidth 0.058 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent52 \
        -in $site_3_0 -x 0 -relx 0.269 -y 0 -rely 0.658 -width 154 \
        -relwidth 0 -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab53 \
        -in $site_3_0 -x 0 -relx 0.528 -y 0 -rely 0.626 -width 0 \
        -relwidth 0.077 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent54 \
        -in $site_3_0 -x 0 -relx 0.528 -y 0 -rely 0.658 -width 164 \
        -relwidth 0 -height 20 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab55 \
        -in $site_3_0 -x 0 -relx 0.028 -y 0 -rely 0.706 -width 0 \
        -relwidth 0.077 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab56 \
        -in $site_3_0 -x 0 -relx 0.028 -y 0 -rely 0.754 -width 0 \
        -relwidth 0.132 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab57 \
        -in $site_3_0 -x 0 -relx 0.037 -y 0 -rely 0.803 -width 0 \
        -relwidth 0.068 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab61 \
        -in $site_3_0 -x 0 -relx 0.037 -y 0 -rely 0.851 -width 0 \
        -relwidth 0.16 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab62 \
        -in $site_3_0 -x 0 -relx 0.269 -y 0 -rely 0.706 -width 0 \
        -relwidth 0.058 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab63 \
        -in $site_3_0 -x 0 -relx 0.269 -y 0 -rely 0.738 -width 0 \
        -relwidth 0.151 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab64 \
        -in $site_3_0 -x 0 -relx 0.278 -y 0 -rely 0.803 -width 0 \
        -relwidth 0.078 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab65 \
        -in $site_3_0 -x 0 -relx 0.278 -y 0 -rely 0.835 -width 0 \
        -relwidth 0.078 -height 0 -relheight 0.05 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab66 \
        -in $site_3_0 -x 0 -relx 0.528 -y 0 -rely 0.706 -width 0 \
        -relwidth 0.077 -height 0 -relheight 0.034 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab67 \
        -in $site_3_0 -x 0 -relx 0.528 -y 0 -rely 0.753 -width 0 \
        -relwidth 0.15 -height 0 -relheight 0.035 -anchor nw \
        -bordermode ignore 
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab53" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Clientes" 
    vTcl:DefineAlias "$top.lab53" "Label5" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab51" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Productos" 
    vTcl:DefineAlias "$top.lab51" "Label6" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ttk::style configure Label -background $vTcl(actual_gui_bg)
    ttk::style configure Label -foreground $vTcl(actual_gui_fg)
    ttk::style configure Label -font "$vTcl(actual_gui_font_dft_desc)"
    label "$top.lab54" \
        -activebackground #f9f9f9 -activeforeground SystemButtonText \
        -anchor w -background $vTcl(actual_gui_bg) -compound left \
        -disabledforeground #a3a3a3 -font "TkDefaultFont" \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text "Taller" 
    vTcl:DefineAlias "$top.lab54" "Label7" vTcl:WidgetProc "Toplevel1" 1
### SPOT dump_widget_opt A
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.lab47 \
        -in $top -x 0 -relx 0.017 -y 0 -rely 0.016 -width 0 -relwidth 0.044 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab48 \
        -in $top -x 0 -relx 0.1 -y 0 -rely 0.016 -width 0 -relwidth 0.044 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab49 \
        -in $top -x 0 -relx 0.183 -y 0 -rely 0.016 -width 0 -relwidth 0.051 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab50 \
        -in $top -x 0 -relx 0.266 -y 0 -rely 0.016 -width 0 -relwidth 0.056 \
        -height 0 -relheight 0.046 -anchor nw -bordermode ignore 
    place $top.lab52 \
        -in $top -x 0 -relx 0.058 -y 0 -rely 0.066 -width 0 -relwidth 0.896 \
        -height 0 -relheight 0.922 -anchor nw -bordermode ignore 
    place $top.lab53 \
        -in $top -x 0 -relx 0.349 -y 0 -rely 0.016 -width 0 -relwidth 0.061 \
        -height 0 -relheight 0.048 -anchor nw -bordermode ignore 
    place $top.lab51 \
        -in $top -x 0 -relx 0.432 -y 0 -rely 0.016 -width 0 -relwidth 0.051 \
        -height 0 -relheight 0.049 -anchor nw -bordermode ignore 
    place $top.lab54 \
        -in $top -x 0 -relx 0.515 -y 0 -rely 0.016 -width 0 -relwidth 0.027 \
        -height 0 -relheight 0.049 -anchor nw -bordermode ignore 

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
