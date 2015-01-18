mapkey re @MAPKEY_LABEL草绘-参照;~ Command `ProCmdSketReferences`;
mapkey ff @MAPKEY_LABEL填充;~ Command `ProCmdFtFill`;
mapkey dr @MAPKEY_LABEL倒圆;~ Command `ProCmdRound` ;\
mapkey(continued) ~ Enter `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Exit `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.round_setspg.0` 1;\
mapkey(continued) ~ Trigger `round_setspg.2.0` `PH.rndchSets` `Set 1`;\
mapkey(continued) ~ Trigger `round_setspg.2.0` `PH.rndchSets` `Set 2`;\
mapkey(continued) ~ Trigger `round_setspg.2.0` `PH.rndchSets` ``;
mapkey dc @MAPKEY_LABEL倒角;~ Command `ProCmdChamferEdge` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.chamfer_setspg.0` 1;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.rndchSets` `Set 1`;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.rndchSets` `Set 2`;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.rndchSets` ``;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.rndchSets` ``;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.References` `0`;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.References` ``;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.References` ``;\
mapkey(continued) ~ Trigger `chamfer_setspg.1.0` `PH.DimTable` 2 `` ``;
mapkey ss @MAPKEY_LABEL草绘;~ Command `ProCmdDatumSketCurve`;
mapkey cv @MAPKEY_LABEL复制;~ Command `ProCmdEditCopy` ;\
mapkey(continued) ~ Command `ProCmdEditPaste` ;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.SrfsColInfo` `0`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.SrfsColInfo` ``;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.srfcopy_opt.0` 1;
mapkey vs @MAPKEY_LABEL变截面扫;~ Command `ProCmdFtLoft` ;\
mapkey(continued) ~ Enter `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Exit `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.SldSrf` 1 `srf`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.sweep_ref.0` 1;\
mapkey(continued) ~ Trigger `sweep_ref.2.0` `PH.TrjTable` 2 `DuMmY` `Trajectories`;\
mapkey(continued) ~ Trigger `sweep_ref.2.0` `PH.TrjTable` 2 `` ``;\
mapkey(continued) ~ Trigger `sweep_ref.2.0` `PH.TrjTable` 2 `` ``;
mapkey er @MAPKEY_LABEL拭除;\
mapkey(continued) ~ Activate `main_dlg_cur` `home_File_control_btn` 1;\
mapkey(continued) ~ Command `ProCmdModelEraseNotDisp` ;~ Activate `file_erase_nd` `ok_pb`;
mapkey tt @MAPKEY_LABEL加厚;~ Command `ProCmdFtThicken`;
mapkey se @MAPKEY_LABEL抽壳;~ Command `ProCmdShell`;
mapkey gg @MAPKEY_LABEL初始化;~ Command `ProCmdMdlTreeFilter` ;\
mapkey(continued) ~ Activate `mdl_filter` `feat_btn` 1;~ Activate `mdl_filter` `supres_btn` 1;\
mapkey(continued) ~ Activate `mdl_filter` `ok_btn`;~ Command `ProCmdRibbonOptionsDlg` ;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `env_layouts`;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `colors_layouts`;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `DisplayLayout`;\
mapkey(continued) ~ Update `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.max_animation_time_inpt.lay_instance` `.3`;\
mapkey(continued) ~ FocusOut `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.max_animation_time_inpt.lay_instance`;\
mapkey(continued) ~ Update `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.min_animation_steps_spnBox.lay_instance` 3;\
mapkey(continued) ~ Update `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.shade_quality_spnBox.lay_instance` 6;\
mapkey(continued) ~ Activate `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.skip_small_surfaces.lay_instance` 1;\
mapkey(continued) ~ Activate `ribbon_options_dialog` `OkPshBtn`;\
mapkey(continued) ~ Activate `UITools Msg Dialog Future` `futureCB` 1;\
mapkey(continued) ~ FocusIn `UITools Msg Dialog Future` `no`;\
mapkey(continued) ~ Activate `UITools Msg Dialog Future` `no`;
mapkey wc @MAPKEY_LABEL窗口关闭;~ Select `main_dlg_cur` `MenuBar1`1  `Windows`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `Windows.psh_win_close`;
mapkey fe @MAPKEY_LABEL偏距;~ Command `ProCmdFtOffset`;
mapkey ee @MAPKEY_LABEL拉伸;~ Command `ProCmdFtExtrude`;
mapkey ed @MAPKEY_LABEL编辑定义;~ Command `ProCmdRedefine`;
mapkey 8 @MAPKEY_LABELtop;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `TOP`;
mapkey $F12 @MAPKEY_LABEL冻结;#QUICK FIX;#FREEZE;
mapkey 5 @MAPKEY_LABELfront;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `FRONT`;
mapkey 2 @MAPKEY_LABELbottom;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BOTTOM`;
mapkey 4 @MAPKEY_LABELleft;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `LEFT`;
mapkey 6 @MAPKEY_LABELright;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `RIGHT`;
mapkey 0 @MAPKEY_LABELback;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BACK`;
mapkey 9 @MAPKEY_LABEL带边着色;~ Command `ProCmdEnvShadedEdges`  1;
mapkey fv @MAPKEY_LABEL选择性粘贴;~ Command `ProCmdEditCopy` ;\
mapkey(continued) ~ Command `ProCmdEditPasteSpecial` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.move_geom_trans.0` 1;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.TrfList` `Move 1`;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.TrfList` ``;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.Dir_prim_list` `0`;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.Dir_prim_list` ``;
mapkey vv @MAPKEY_LABEL取消隐藏;~ Command `ProCmdViewShow`;
mapkey df @MAPKEY_LABEL从文件导入;~ Command `ProCmdModelImpAppendNew` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey $F1 @MAPKEY_LABEL基准点显隐;~ Command `ProCmdEnvPntsDisp`  0;
mapkey $F2 @MAPKEY_LABEL基准轴显隐;~ Command `ProCmdEnvAxisDisp`  0;
mapkey $F9 @MAPKEY_LABEL待定...;;
mapkey $F10 @MAPKEY_LABEL制图-与视图相关;~ Command `ProCmdDwgRelToView`;
mapkey $F11 @MAPKEY_LABEL制图-与对象相关;~ Command `ProCmdDwgRelToObj`;
mapkey sd @MAPKEY_LABEL实体化;~ Command `ProCmdFtPatch`;
mapkey ww @MAPKEY_LABEL镜像;~ Command `ProCmdFtMirror` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.mirror_option.0` 1;
mapkey aa @MAPKEY_LABEL组件中激活元件;~ Command `ProCmdMakeActive`;
mapkey fa @MAPKEY_LABEL草绘-尺寸;~ Command `ProCmdSketDimension`  1;
mapkey rr @MAPKEY_LABEL旋转;~ Command `ProCmdFtRevolve` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.revolve_1_placement.0` 1;\
mapkey(continued) ~ Trigger `revolve_1_placement.1.0` `PH.section_select_list` `0`;\
mapkey(continued) ~ Trigger `revolve_1_placement.1.0` `PH.section_select_list` ``;
mapkey fg @MAPKEY_LABEL延伸;~ Command `ProCmdFtExtendGr`;
mapkey ec @MAPKEY_LABEL编辑;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node6`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_PHTLeft.AssyTree` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Command `ProCmdL05Edit@PopupMenuTree`;
mapkey rf @MAPKEY_LABEL重命名文件;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelRename`;
mapkey fd @MAPKEY_LABEL面合并;~ Command `ProCmdFtMerge` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.srfmrg_options.0` 1;
mapkey za @MAPKEY_LABEL装配中加入元件;~ Command `ProCmdCompAssem` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey tr @MAPKEY_LABEL草绘-替换;~ Command `ProCmdEditReplace`;
mapkey fs @MAPKEY_LABEL草绘-约束;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdSketConstrain.sket_r`1;
mapkey $F3 @MAPKEY_LABEL基准面显隐;~ Command `ProCmdEnvDtmDisp`  0;
mapkey +7 @MAPKEY_LABEL导入stp;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `filter_.stp,.step,`;
mapkey +8 @MAPKEY_LABEL导入igs;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `filter_.igs,.iges,`;
mapkey +9 @MAPKEY_LABEL导入x_t;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 \
mapkey(continued) `filter_.x_t,.xmt_txt,.x_b,.xmt_bin,.x_n,.xmt_neu,.xmt`;
mapkey -7 @MAPKEY_LABEL导出stp;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_539`;
mapkey -8 @MAPKEY_LABEL导出igs;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_134`;
mapkey -9 @MAPKEY_LABEL导出x_t;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_837`;
mapkey rs @MAPKEY_LABEL重新构建;~ Command `ProCmdMmRestructure`;
mapkey es @MAPKEY_LABEL移除面;~ Command `ProCmdFtRemoveSrf`;
mapkey -3 @MAPKEY_LABEL300dpi的jpg;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Open `shd_img_param` `o_size`;\
mapkey(continued) ~ Close `shd_img_param` `o_size`;~ Select `shd_img_param` `o_size` 1 `A4`;\
mapkey(continued) ~ Open `shd_img_param` `o_dpi`;~ Close `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Select `shd_img_param` `o_dpi` 1 `dpi300`;~ Activate `shd_img_param` `OK`;
mapkey -4 @MAPKEY_LABEL400dpi的jpg;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Activate `UI Message Dialog` `ok`;\
mapkey(continued) ~ Open `shd_img_param` `o_size`;~ Close `shd_img_param` `o_size`;\
mapkey(continued) ~ Select `shd_img_param` `o_size` 1 `A4`;~ Open `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Close `shd_img_param` `o_dpi`;~ Select `shd_img_param` `o_dpi` 1 `dpi400`;\
mapkey(continued) ~ Activate `shd_img_param` `OK`;
mapkey -5 @MAPKEY_LABEL500dpi的jpg;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Activate `UI Message Dialog` `ok`;\
mapkey(continued) ~ Open `shd_img_param` `o_size`;~ Close `shd_img_param` `o_size`;\
mapkey(continued) ~ Select `shd_img_param` `o_size` 1 `A4`;~ Open `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Close `shd_img_param` `o_dpi`;~ Select `shd_img_param` `o_dpi` 1 `dpi500`;\
mapkey(continued) ~ Activate `shd_img_param` `OK`;
mapkey sg @MAPKEY_LABEL草绘-延伸;~ Command `ProCmdEditCorner`  1;
mapkey -2 @MAPKEY_LABEL导出2D dwg;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_560`;
mapkey fr @MAPKEY_LABEL偏移实体面;~ Command `ProCmdFtOffset` ;\
mapkey(continued) ~ Enter `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Exit `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.offtype_flyout_tb` `3 \
mapkey(continued) offtype_flyout`;~ Activate `main_dlg_cur` `3 offtype_flyout` 1;
mapkey fw @MAPKEY_LABEL独立线;~ Select `main_dlg_cur` `MenuBar1`1  `Insert`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `Insert.psh_Advstyle`;\
mapkey(continued) ~ Select `main_dlg_cur` `MenuBar1`1  `ASFeature`;\
mapkey(continued) ~ Select `main_dlg_cur` `ASFeature.cb_asf_curve`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Close `main_dlg_cur` `ASFeature.cb_asf_curve`;\
mapkey(continued) ~ Activate `main_dlg_cur` `psh_asf_curve_crv`;#WITHIN TOL;;
mapkey zz @MAPKEY_LABEL组件中打开元件;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_PHTLeft.AssyTree` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Command `ProCmdOpenModel@PopupMenuTree`;
mapkey ag @MAPKEY_LABEL测量角度;~ Command `ProCmdNaMeasureAngle`;
mapkey sw @MAPKEY_LABEL设置工作目录;~ Command `ProCmdSessionChangeDir` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey af @MAPKEY_LABEL测量距离;~ Command `ProCmdNaMeasureDistance`;
mapkey cc @MAPKEY_LABEL隐藏;~ Command `ProCmdViewHide`;
mapkey xx @MAPKEY_LABEL修剪面;~ Command `ProCmdFtTrim`;
mapkey 1 @MAPKEY_LABEL适合窗口;~ Command `ProCmdViewRefit`;
mapkey ar @MAPKEY_LABEL测量面积;~ Command `ProCmdNaMeasureArea`;
mapkey ds @MAPKEY_LABEL插入缺省坐标系;~ Command `ProCmdDefDatumCsys`;
mapkey sc @MAPKEY_LABEL缩放-按比例;~ Select `main_dlg_cur` `MenuBar1`1  `Edit`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;~ Activate `main_dlg_cur` `Edit.pshSetup`;\
mapkey(continued) #SHRINKAGE;#BY SCALING;
mapkey zf @MAPKEY_LABEL展平面组;~ Command `ProCmdFlattenQuilt`;
mapkey sa @MAPKEY_LABEL默认样式;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `display style`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;Btn`;
mapkey rt @MAPKEY_LABEL投影;~ Command `ProCmdFtProject` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.projcrv_refs.0` 1;\
mapkey(continued) ~ Trigger `projcrv_refs.0.0` `PH.ChainTable` 2 `0` `chains`;\
mapkey(continued) ~ Trigger `projcrv_refs.0.0` `PH.ChainTable` 2 `` ``;
mapkey bb @MAPKEY_LABEL边界混合;~ Command `ProCmdFtBndBlend`;
mapkey st @MAPKEY_LABEL样式工作台;~ Command `ProCmdFreestyle`;
mapkey sr @MAPKEY_LABEL螺旋扫描;~ Command `ProCmdFtHelicalSweep` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.SldSrf` 1 `srf`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.hlswp_refs.0` 1;\
mapkey(continued) ~ Trigger `hlswp_refs.1.0` `PH.profile_repr_list` `0`;\
mapkey(continued) ~ Trigger `hlswp_refs.1.0` `PH.profile_repr_list` ``;
mapkey sf @MAPKEY_LABEL线框显示;~ Command `ProCmdViewWireframe`;
mapkey $F4 @MAPKEY_LABEL基准坐标显隐;~ Command `ProCmdEnvCsysDisp`  0;
mapkey 3 @MAPKEY_LABEL着色显示;~ Command `ProCmdEnvShaded`  1;
mapkey 7 @MAPKEY_LABEL线框显示;~ Command `ProCmdEnvWireframe`  1;
mapkey s1 @MAPKEY_LABEL草绘-线;~ Command `ProCmdSketLine`  1;
mapkey s2 @MAPKEY_LABEL草绘-圆;~ Command `ProCmdSketCenterPoint`  1;
mapkey s3 @MAPKEY_LABEL草绘-样条;~ Command `ProCmdSketSpline`  1;
mapkey x1 @MAPKEY_LABEL截面1;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey x2 @MAPKEY_LABEL截面2;~ Select `main_dlg_cur` `MenuBar1`1  `View`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `View.push_view_vistool`;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr`1  `xsec`;\
mapkey(continued) ~ Select `visual_dlg0` `Table`2  `xsec0002` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table`2  `xsec0002` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey x3 @MAPKEY_LABEL截面3;~ Select `main_dlg_cur` `MenuBar1`1  `View`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `View.push_view_vistool`;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr`1  `xsec`;\
mapkey(continued) ~ Select `visual_dlg0` `Table`2  `xsec0003` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table`2  `xsec0003` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey x0 @MAPKEY_LABEL不剖切;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey y @MAPKEY_LABELyes;#YES;
mapkey ad @MAPKEY_LABEL测量直径;~ Command `ProCmdNaMeasureDiameter`;
mapkey ac @MAPKEY_LABEL测量长度;~ Command `ProCmdNaMeasureLength`;
mapkey at @MAPKEY_LABEL拔模分析;~ Command `ProCmdNaGeometryDraftCheck`;
mapkey gf @MAPKEY_LABEL外部复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.2.0` `PH.Ref_Model` `0`;\
mapkey(continued) ~ Trigger `References.2.0` `PH.Ref_Model` ``;\
mapkey(continued) ~ Activate `References.2.0` `PH.Open_ref_model_btn_fr_ref`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;
mapkey gv @MAPKEY_LABEL复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` `0`;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` ``;
mapkey sv @MAPKEY_LABEL保存层状态;~ Select `main_dlg_cur` `PHTLeft.ShowCB`;\
mapkey(continued) ~ Close `main_dlg_cur` `PHTLeft.ShowCB`;\
mapkey(continued) ~ Activate `main_dlg_cur` `LayerTreePB`1 ;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `LayerActionMenu`1  `PHTLeft.PHLayerUI.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `LayerActionMenu`;\
mapkey(continued) ~ Close `main_dlg_cur` `LayerActionMenu`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ActionMenuSaveStatus`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.LayerShowBtn`;\
mapkey(continued) ~ Close `main_dlg_cur` `PHTLeft.PHLayerUI.LayerShowBtn`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ModelTreeBtn`;
mapkey $F5 @MAPKEY_LABEL失败-重定义;#QUICK FIX;#REDEFINE;#CONFIRM;
mapkey $F6 @MAPKEY_LABEL失败-零件隐含;#QUICK FIX;#SUPPRESS;#CONFIRM;#SUSPEND ALL;\
mapkey(continued) #YES;
mapkey $F7 @MAPKEY_LABEL失败-修改前项;#FIX MODEL;#FEATURE;#CONFIRM;#REDEFINE;
mapkey $F8 @MAPKEY_LABEL造型-活动平面方向;~ Command `ProCmdViewAlign`;
mapkey ga @MAPKEY_LABEL阵列;~ Command `ProCmdPattern` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.ui_pat_dim_panel.0` 1;\
mapkey(continued) ~ Trigger `ui_pat_dim_panel.2.0` `PH.ui_pat_dim_1_array` 2 `DuMmY` \
mapkey(continued) `dimension`;~ Trigger `ui_pat_dim_panel.2.0` `PH.ui_pat_dim_1_array` 2 `` ``;\
mapkey(continued) ~ Trigger `ui_pat_dim_panel.2.0` `PH.ui_pat_dim_1_array` 2 `` ``;\
mapkey(continued) ~ Trigger `ui_pat_dim_panel.2.0` `PH.ui_pat_dim_2_array` 2 `` ``;
mapkey da @MAPKEY_LABEL拔模;~ Command `ProCmdDraft` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.draft_ref_page_2.0` 1;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `0` `content`;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `` ``;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `` ``;
mapkey fx @MAPKEY_LABEL相交;~ Command `ProCmdFtIntersect`;
mapkey ft @MAPKEY_LABEL替换面;~ Command `ProCmdFtOffset` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.offtype_flyout_tb` `4 \
mapkey(continued) offtype_flyout`;~ Activate `main_dlg_cur` `4 offtype_flyout` 1;
mapkey dd @MAPKEY_LABEL清理旧版;@SYSTEMpurge;
mapkey mm @MAPKEY_LABEL转换单位mmKGs;~ Select `main_dlg_cur` `MenuBar1`1  `Edit`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;~ Activate `main_dlg_cur` `Edit.pshSetup`;\
mapkey(continued) #UNITS;~ Select `um_finder` `SystemsFinderList`1  `sysunits7`;\
mapkey(continued) ~ Activate `um_finder` `PrincipalPush`;~ Activate `um_sys_conv_new` `OKStd`;\
mapkey(continued) ~ Activate `um_finder` `ClosePush`;#DONE;
mapkey wt @MAPKEY_LABEL取消只读;~ Command `ProCmdReadOnlyClean`;
mapkey sx @MAPKEY_LABEL草绘-删除段;~ Command `ProCmdEditDelSeg`  1;
mapkey ` @MAPKEY_LABEL模型树收展;~ Command `ProCmdNavigatorBtn`  0;
mapkey e2 @MAPKEY_LABEL制图-剖面线间距X2;#SPACING;#DOUBLE;
mapkey e1 @MAPKEY_LABEL制图-截面间距1mm;#SPACING;#VALUE;1;
mapkey a1 @MAPKEY_LABEL制图-截面角度45;#ANGLE;#45;
mapkey a2 @MAPKEY_LABEL制图-截面角度135;#ANGLE;#135;
mapkey c1 @MAPKEY_LABEL制图-截面线红色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf20`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c2 @MAPKEY_LABEL制图-截面线绿色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf19`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c3 @MAPKEY_LABEL制图-截面线蓝色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf26`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c4 #LINE STYLE;~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf28`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;synch` `std_close`;
mapkey c5 #LINE STYLE;~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf30`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c6 #LINE STYLE;~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf33`1 ;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey vc @MAPKEY_LABEL制图-元件显示;~ Command `ProCmdDwgComponentDisplay` ;#BLANK;
mapkey ve @MAPKEY_LABEL制图-详细视图;~ Command `ProCmdDwgViewDet`;
mapkey tx @MAPKEY_LABEL制图-注释;~ Command `ProCmdDtlInsFreeNote`;
mapkey ef @MAPKEY_LABEL拉伸封闭面;~ Command `ProCmdFtExtrude` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.solid_surf_rg` 1 `Surface`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.extrev_2_options.0` 1;\
mapkey(continued) ~ Activate `extrev_2_options.2.0` `PH.cap_cb` 1;
mapkey rd @MAPKEY_LABEL只读;~ Command `ProCmdReadOnlyAll`;
mapkey ex @MAPKEY_LABEL制图-导出表格csv;~ Command `ProCmdDwgTblSaveasCSV` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;
mapkey e5 @MAPKEY_LABEL制图-剖面线间距X0.5;#SPACING;#HALF;
mapkey vt @MAPKEY_LABEL制图-投影视图;~ Command `ProCmdDwgViewProj`;
mapkey va @MAPKEY_LABEL制图-一般视图;~ Command `ProCmdDwgViewGen` ;\
mapkey(continued) ~ Activate `sel_presentation` `ok_psh`;
mapkey vd @MAPKEY_LABEL视图定向;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;~ Command `ProCmdViewOrient`;
mapkey de @MAPKEY_LABEL制图-标尺寸;~ Command `ProCmdDwgCrStdNewRefDim` ;\
mapkey(continued) ~ Activate `dtl_attref_ui` `psh_ent_att`;
mapkey ~ @MAPKEY_LABEL工具栏收展;~ Command `AdbCmdMinimizeRibbon`  1;
mapkey ce @MAPKEY_LABEL关闭面;\
mapkey(continued) ~ Activate `main_dlg_cur` `page_Applications_control_btn` 1;\
mapkey(continued) ~ Command `ProCmdUtilAppMoldCast`  1;~ Command `ProCmdMoldInsShutSrf` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.shut_srf_refs.0` 1;\
mapkey(continued) ~ Trigger `shut_srf_refs.0.0` `PH.srfrefspagerep_list` `0`;\
mapkey(continued) ~ Trigger `shut_srf_refs.0.0` `PH.srfrefspagerep_list` ``;\
mapkey(continued) ~ Trigger `shut_srf_refs.0.0` `PH.srfrefspagerep_list` ``;
mapkey n @MAPKEY_LABEL退出模具模块;~ Command `ProCmdUtilAppPrtExit` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `page_Model_control_btn` 1;
mapkey s4 @MAPKEY_LABEL草绘-矩形;~ Command `ProCmdSketRectangle`  1;
mapkey s5 @MAPKEY_LABEL草绘-使用边;~ Command `ProCmdSketProject`  1;
mapkey s6 @MAPKEY_LABEL草绘-偏移;~ Command `ProCmdSketOffset`  1;
mapkey sz @MAPKEY_LABEL草绘设置;~ Command `ProCmdSketSetup`;
mapkey sb @MAPKEY_LABEL草绘-镜像;~ Command `ProCmdEditMirror`  1;
mapkey sq @MAPKEY_LABEL草绘-完成;~ Command `ProCmdSketDone`;
mapkey rb @MAPKEY_LABEL轨迹筋;~ Command `ProCmdPlrib` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.plrib_settings.0` 1;\
mapkey(continued) ~ Trigger `plrib_settings.1.0` `PH.sketchrepresentator_list` `0`;\
mapkey(continued) ~ Trigger `plrib_settings.1.0` `PH.sketchrepresentator_list` ``;
mapkey dg @MAPKEY_LABEL按尺寸移动;~ Command `ProCmdFlexMoveDim` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.flexmove_refpage.0` 1;\
mapkey(continued) ~ Trigger `flexmove_refpage.1.0` `PH.geomrep_list` `0`;\
mapkey(continued) ~ Trigger `flexmove_refpage.1.0` `PH.geomrep_list` ``;
mapkey d1 @MAPKEY_LABEL基准点;~ Command `ProCmdDatumPointGeneral`;
mapkey d2 @MAPKEY_LABEL基准轴;~ Command `ProCmdDatumAxis`;
mapkey d3 @MAPKEY_LABEL基准面;~ Command `ProCmdDatumPlane`;
mapkey d4 @MAPKEY_LABEL基准坐标;~ Command `ProCmdDatumCsys`;
mapkey ! @MAPKEY_LABEL草绘-中心线;~ Command `ProCmdSketGeomCenterline`  1;
mapkey . @MAPKEY_LABEL信息栏最小化;~ Move `main_dlg_cur` `sash_swap` 100;
mapkey as @MAPKEY_LABEL分析曲率;~ Command `ProCmdNaGeometryCurvature`;
mapkey ae @MAPKEY_LABEL删除所有分析;~ Command `ProCmdNaDeleteAll`;
mapkey vb @MAPKEY_LABEL制图-边显示;~ Command `ProCmdDwgEdgeDisplay` ;#ERASE LINE;
mapkey vg @MAPKEY_LABEL视图管理器;~ Command `ProCmdViewVisTool`;
mapkey wa @MAPKEY_LABEL造型-活动平面;~ Command `ProCmdFreeformDatumSet`  1;
mapkey ws @MAPKEY_LABEL造型-线;~ Command `ProCmdFreeformCurve`  1;
mapkey wd @MAPKEY_LABEL造型-编辑线;~ Command `ProCmdFreeformCurveEdit`  1;
mapkey wq @MAPKEY_LABEL造型-退出;~ Command `ProCmdFreeformDone`;
mapkey / @MAPKEY_LABEL显示截面1;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `xsec0001` `name_column`;\
mapkey(continued) ~ Close `visual_dlg0` `visual_dlg0`;
mapkey * @MAPKEY_LABEL截面隐藏;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Close `visual_dlg0` `visual_dlg0`;
mapkey t1 @MAPKEY_LABEL草绘-约束竖直;~ Command `ProCmdSketVerticalConstr`;
mapkey t2 @MAPKEY_LABEL草绘-约束重合;~ Command `ProCmdSketAlignConstr`;
mapkey t3 @MAPKEY_LABEL草绘-约束对称;~ Command `ProCmdSketSymmetryConstr`;
mapkey t4 @MAPKEY_LABEL草绘-约束垂直;~ Command `ProCmdSketOrthogConstr`;
mapkey t5 @MAPKEY_LABEL草绘-约束中点;~ Command `ProCmdSketMidPointConstr`;
mapkey t6 @MAPKEY_LABEL草绘-约束平行;~ Command `ProCmdSketParallelConstr`;
mapkey t7 @MAPKEY_LABEL草绘-约束水平;~ Command `ProCmdSketHorizConstr`;
mapkey t8 @MAPKEY_LABEL草绘-约束相切;~ Command `ProCmdSketTangentConstr`;
mapkey t9 @MAPKEY_LABEL草绘-约束相等;~ Command `ProCmdSketEqualConstr`;
mapkey +6 @MAPKEY_LABEL打开asm;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_1`;
