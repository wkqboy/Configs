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
mapkey(continued) ~ Activate `mdl_filter` `ok_btn`;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdRibbonOptionsDlg` ;\
mapkey(continued) ~ Select `ribbon_options_dialog` `PageSwitcherPageList` 1 `DisplayLayout`;\
mapkey(continued) ~ Update `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.max_animation_time_inpt.lay_instance` `0.5`;\
mapkey(continued) ~ FocusOut `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.max_animation_time_inpt.lay_instance`;\
mapkey(continued) ~ Update `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.shade_quality_spnBox.lay_instance` 7;\
mapkey(continued) ~ Activate `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.shade_quality_spnBox.lay_instance` 7;\
mapkey(continued) ~ Activate `ribbon_options_dialog` \
mapkey(continued) `DisplayLayout.skip_small_surfaces.lay_instance` 1;\
mapkey(continued) ~ Activate `ribbon_options_dialog` `OkPshBtn`;
mapkey wc @MAPKEY_LABEL窗口关闭;~ Select `main_dlg_cur` `MenuBar1`1  `Windows`;\
mapkey(continued) ~ Close `main_dlg_cur` `MenuBar1`;\
mapkey(continued) ~ Activate `main_dlg_cur` `Windows.psh_win_close`;
mapkey fe @MAPKEY_LABEL偏距;~ Command `ProCmdFtOffset`;
mapkey ee @MAPKEY_LABEL拉伸;~ Command `ProCmdFtExtrude`;
mapkey ed @MAPKEY_LABEL编辑定义;~ Command `ProCmdRedefine`;
mapkey 8 @MAPKEY_LABEL视图-top;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `TOP`;
mapkey $F12 @MAPKEY_LABEL失败-冻结;#QUICK FIX;#FREEZE;
mapkey 5 @MAPKEY_LABEL视图-front;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `FRONT`;
mapkey 2 @MAPKEY_LABEL视图-bottom;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BOTTOM`;
mapkey 4 @MAPKEY_LABEL视图-left;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `LEFT`;
mapkey 6 @MAPKEY_LABEL视图-right;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `RIGHT`;
mapkey 0 @MAPKEY_LABEL视图-back;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BACK`;
mapkey 9 @MAPKEY_LABEL视图-带边着色;~ Command `ProCmdEnvShadedEdges`  1;
mapkey fv @MAPKEY_LABEL选择性粘贴;~ Command `ProCmdEditCopy` ;\
mapkey(continued) ~ Command `ProCmdEditPasteSpecial` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.move_geom_trans.0` 1;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.TrfList` `Move 1`;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.TrfList` ``;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.TrfList` ``;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.Dir_prim_list` `0`;\
mapkey(continued) ~ Trigger `move_geom_trans.2.0` `PH.Dir_prim_list` ``;
mapkey vv @MAPKEY_LABEL取消隐藏;~ Command `ProCmdViewShow`;
mapkey df @MAPKEY_LABEL从文件导入;~ Command `ProCmdModelImpAppendNew` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey $F1 @MAPKEY_LABEL显隐-基准点;~ Command `ProCmdEnvPntsDisp`  1;
mapkey $F2 @MAPKEY_LABEL显隐-基准轴;~ Command `ProCmdEnvAxisDisp`  0;
mapkey $F9 @MAPKEY_LABEL待定...;;
mapkey $F10 @MAPKEY_LABEL制图-与视图相关;~ Command `ProCmdDwgRelToView`;
mapkey $F11 @MAPKEY_LABEL制图-与对象相关;~ Command `ProCmdDwgRelToObj`;
mapkey sd @MAPKEY_LABEL实体化;~ Command `ProCmdFtPatch`;
mapkey ww @MAPKEY_LABEL镜像;~ Command `ProCmdFtMirror` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.mirror_option.0` 1;
mapkey aa @MAPKEY_LABEL装配-激活元件;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;~ Command `ProCmdMakeActive`;
mapkey fa @MAPKEY_LABEL草绘-尺寸约束;~ Command `ProCmdSketDimension`  1;
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
mapkey fd @MAPKEY_LABEL面合并;~ Command `ProCmdFtMerge`;
mapkey za @MAPKEY_LABEL装配-加入元件;~ Command `ProCmdCompAssem` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;
mapkey tr @MAPKEY_LABEL草绘-替换;~ Command `ProCmdEditReplace`;
mapkey fs @MAPKEY_LABEL草绘-几何约束;\
mapkey(continued) ~ Activate `main_dlg_cur` `ProCmdSketConstrain.sket_r`1;
mapkey $F3 @MAPKEY_LABEL显隐-基准面;~ Command `ProCmdEnvDtmDisp`  0;
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
mapkey rs @MAPKEY_LABEL装配-重新构建;~ Command `ProCmdMmRestructure`;
mapkey es @MAPKEY_LABEL移除;~ Command `ProCmdFtRemoveSrf`;
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
mapkey -2 @MAPKEY_LABEL制图-导出dwg;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_560`;
mapkey fr @MAPKEY_LABEL偏移实体;~ Command `ProCmdFtOffset` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.offtype_flyout_tb` `3 \
mapkey(continued) offtype_flyout`;~ Activate `main_dlg_cur` `3 offtype_flyout` 1;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.option.0` 1;
mapkey fw @MAPKEY_LABEL独立线;~ Command `ProCmdAdvstyle` ;\
mapkey(continued) ~ Command `ProCmdASFCrvCrv` ;#WITHIN TOL;;
mapkey zz @MAPKEY_LABEL装配-打开元件;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_PHTLeft.AssyTree` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_PHTLeft.AssyTree`;\
mapkey(continued) ~ Command `ProCmdOpenModel@PopupMenuTree`;
mapkey ag @MAPKEY_LABEL分析-角度;~ Command `ProCmdNaMeasureAngle`;
mapkey sw @MAPKEY_LABEL设置工作目录;~ Command `ProCmdSessionChangeDir` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey af @MAPKEY_LABEL分析-距离;~ Command `ProCmdNaMeasureDistance`;
mapkey cc @MAPKEY_LABEL隐藏;~ Command `ProCmdViewHide`;
mapkey xx @MAPKEY_LABEL修剪面;~ Command `ProCmdFtTrim`;
mapkey 1 @MAPKEY_LABEL视图-适合窗口;~ Command `ProCmdViewRefit`;
mapkey ar @MAPKEY_LABEL分析-面积;~ Command `ProCmdNaMeasureArea`;
mapkey ds @MAPKEY_LABEL插入缺省坐标;~ Command `ProCmdDefDatumCsys`;
mapkey sc @MAPKEY_LABEL缩放-按比
mapkey zf @MAPKEY_LABEL展平面组;~ Command `ProCmdFlattenQuilt`;
mapkey sa @MAPKEY_LABEL默认样式;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `display style`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `master style` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
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
mapkey $F4 @MAPKEY_LABEL显隐-基准坐标;~ Command `ProCmdEnvCsysDisp`  0;
mapkey 3 @MAPKEY_LABEL视图-着色;~ Command `ProCmdEnvShaded`  1;
mapkey 7 @MAPKEY_LABEL视图-线框;~ Command `ProCmdEnvWireframe`  1;
mapkey s1 @MAPKEY_LABEL草绘-线;~ Command `ProCmdSketLine`  1;
mapkey s2 @MAPKEY_LABEL草绘-圆;~ Command `ProCmdSketCenterPoint`  1;
mapkey s3 @MAPKEY_LABEL草绘-样条;~ Command `ProCmdSketSpline`  1;
mapkey x2 @MAPKEY_LABEL制图-(2X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(2X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(2X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x3 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(3X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(3X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey x4 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(4X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(4X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey x5 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(5X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(5X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey x6 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(6X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(6X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey x7 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(7X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(7X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey x8 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 \
mapkey(continued) -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(8X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(8X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey y @MAPKEY_LABELyes;#YES;
mapkey ad @MAPKEY_LABEL分析-直径;~ Command `ProCmdNaMeasureDiameter`;
mapkey ac @MAPKEY_LABEL分析-长度;~ Command `ProCmdNaMeasureLength`;
mapkey at @MAPKEY_LABEL分析-拔模;~ Command `ProCmdNaGeometryDraftCheck`;
mapkey gf @MAPKEY_LABEL外部复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ExternalRadioGroup` 1 `ExternalOpt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.0.0` `PH.Ref_Model` `0`;\
mapkey(continued) ~ Trigger `References.0.0` `PH.Ref_Model` ``;\
mapkey(continued) ~ Trigger `References.0.0` `PH.Ref_Model` ``;
mapkey gv @MAPKEY_LABEL复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` `0`;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` ``;
mapkey sv @MAPKEY_LABEL保存层状;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` \
mapkey(continued) `node0:06___PRT_ALL_SURFS`;~ Command `ProCmdViewSaveLayStat` ;\
mapkey(continued) ~ Command `ProCmdLayer_ShowMdlTree`;
mapkey $F5 @MAPKEY_LABEL失败-重定
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
mapkey ` @MAPKEY_LABEL模型树收展;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;~ Command `ProCmdNavigatorBtn`  0;
mapkey e2 @MAPKEY_LABEL制图-剖面线间距X2;#SPACING;#DOUBLE;
mapkey e1 @MAPKEY_LABEL制图-剖面线间距1mm;#SPACING;#VALUE;1;
mapkey a1 @MAPKEY_LABEL制图-截面角度45;#ANGLE;#45;
mapkey a2 @MAPKEY_LABEL制图-截面角度135;#ANGLE;#135;
mapkey c1 @MAPKEY_LABEL制图-截面线红;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf20` 1;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c2 @MAPKEY_LABEL制图-截面线绿;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf19` 1;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c3 @MAPKEY_LABEL制图-截面线蓝;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf26` 1;~ Activate `coldial` `Ok`;\
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
mapkey tx @MAPKEY_LABEL制图-注释;~ Command `ProCmdDtlInsFreeNote` ;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Command `ProCmdDtlTextFromFile` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;\
mapkey(continued) ~ Activate `file_open` `Note Text Directory_shortcut`;
mapkey ef @MAPKEY_LABEL拉伸封闭面;~ Command `ProCmdFtExtrude` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.solid_surf_rg` 1 `Surface`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.extrev_2_options.0` 1;\
mapkey(continued) ~ Activate `extrev_2_options.2.0` `PH.cap_cb` 1;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.extrev_2_options.0` 0;
mapkey rd @MAPKEY_LABEL只读;~ Command `ProCmdReadOnlyAll`;
mapkey ex @MAPKEY_LABEL制图-表格导出csv;~ Command `ProCmdDwgTblSaveasCSV` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;
mapkey e5 @MAPKEY_LABEL制图-剖面线间距X0.5;#SPACING;#HALF;
mapkey vt @MAPKEY_LABEL制图-投影视图;~ Command `ProCmdDwgViewProj`;
mapkey va @MAPKEY_LABEL制图-一般视;~ Command `ProCmdDwgViewGen` ;\
mapkey(continued) ~ Activate `sel_presentation` `ok_psh`;
mapkey vd @MAPKEY_LABEL视图定向;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;~ Command `ProCmdViewOrient`;
mapkey de @MAPKEY_LABEL制图-标尺寸;~ Command `ProCmdDwgCrStdNewRefDim` ;\
mapkey(continued) ~ Activate `dtl_attref_ui` `psh_ent_att`;
mapkey ~ @MAPKEY_LABEL工具栏收展;~ Command `AdbCmdMinimizeRibbon`  1;
mapkey ce @MAPKEY_LABEL关闭边界;
mapkey n @MAPKEY_LABEL退出模具工作台;
mapkey s4 @MAPKEY_LABEL草绘-矩形;~ Command `ProCmdSketRectangle`  1;
mapkey s5 @MAPKEY_LABEL草绘-使用;~ Command `ProCmdSketProject`  1;
mapkey s6 @MAPKEY_LABEL草绘-偏移;~ Command `ProCmdSketOffset`  1;
mapkey sz @MAPKEY_LABEL草绘设置;~ Command `ProCmdSketSetup`;
mapkey sb @MAPKEY_LABEL草绘-镜像;~ Command `ProCmdEditMirror`  1;
mapkey sq @MAPKEY_LABEL草绘-完成;~ Command `ProCmdSketDone`;
mapkey rb @MAPKEY_LABEL轨迹筋;
mapkey dg @MAPKEY_LABEL按尺寸移动;
mapkey d1 @MAPKEY_LABEL基准点;~ Command `ProCmdDatumPointGeneral`;
mapkey d2 @MAPKEY_LABEL基准轴;~ Command `ProCmdDatumAxis`;
mapkey d3 @MAPKEY_LABEL基准面;~ Command `ProCmdDatumPlane`;
mapkey d4 @MAPKEY_LABEL基准坐标;~ Command `ProCmdDatumCsys`;
mapkey ! @MAPKEY_LABEL草绘-中心线;~ Command `ProCmdSketGeomCenterline`  1;
mapkey . @MAPKEY_LABEL信息栏最小化;~ Move `main_dlg_cur` `sash_swap` 100;
mapkey as @MAPKEY_LABEL分析-曲率;~ Command `ProCmdNaGeometryCurvature`;
mapkey ae @MAPKEY_LABEL分析-删除所有;~ Command `ProCmdNaDeleteAll`;
mapkey vb @MAPKEY_LABEL制图-边显示;~ Command `ProCmdDwgEdgeDisplay` ;#ERASE LINE;
mapkey vg @MAPKEY_LABEL视图管理;~ Command `ProCmdViewVisTool`;
mapkey wa @MAPKEY_LABEL造型-活动平面;~ Command `ProCmdFreeformDatumSet`  1;
mapkey ws @MAPKEY_LABEL造型-曲线;~ Command `ProCmdFreeformCurve`  1;
mapkey wd @MAPKEY_LABEL造型-编辑;~ Command `ProCmdFreeformCurveEdit`  1;
mapkey wq @MAPKEY_LABEL造型-完成;~ Command `ProCmdFreeformDone`;
mapkey / @MAPKEY_LABEL制图-删除尺寸修饰;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ Move `mod_dim_new_asynch` `mod_dim_new_asynch` 2 15.167964 3.830923;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_prefix` ``;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` ``;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` ``;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` ``;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey * @MAPKEY_LABEL制图-重要尺寸;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_prefix` `*`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` `*`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
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
mapkey +-.1 @MAPKEY_LABEL制图-公差±0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.1`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.2 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.2`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +-.3 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.3`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +-.4 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.4`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +-.5 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.5`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +-0 @MAPKEY_LABEL制图-不显示公差;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Nominal`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.1 @MAPKEY_LABEL制图-公差+0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 2 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0.1`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.2 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 2 -1 \
mapkey(continued) -1`;~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0.2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +.3 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 2 -1 \
mapkey(continued) -1`;~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0.3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +.4 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 2 -1 \
mapkey(continued) -1`;~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0.4`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey +.5 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 2 -1 \
mapkey(continued) -1`;~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0.5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey -.1 @MAPKEY_LABEL制图-公差-0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0.1`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.2 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0.2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey -.3 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0.3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey -.4 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0.4`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey -.5 ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 \
mapkey(continued) -1 -1`;~ Command `ProCmdEditProperties@PopupMenuTree` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-0.5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;ew_asynch` `psh_ok`;
mapkey dx @MAPKEY_LABEL定义截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Select `visual_dlg0` `ZoneCreateCasc`;\
mapkey(continued) ~ Close `visual_dlg0` `ZoneCreateCasc`;\
mapkey(continued) ~ Activate `visual_dlg0` `xsec_crt_planar`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `w`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wk`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wkq`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wkq_`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wkq_s`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wkq_se`;\
mapkey(continued) ~ Input `visual_dlg0` `Table_INPUT` `wkq_sec`;\
mapkey(continued) ~ Update `visual_dlg0` `Table_INPUT` `wkq_sec`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table_INPUT`;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.AssyTree` 1 `node58`;\
mapkey(continued) ~ Activate `main_dlg_cur` `dashInst0.Done`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey xz @MAPKEY_LABEL隐藏截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey xv @MAPKEY_LABEL显示截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey xd @MAPKEY_LABEL正;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `FRONT`;
mapkey xs @MAPKEY_LABEL左;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `LEFT`;
mapkey xf @MAPKEY_LABEL右;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `RIGHT`;
mapkey xe @MAPKEY_LABEL顶;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `TOP`;
mapkey xc @MAPKEY_LABEL底;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BOTTOM`;
mapkey xg @MAPKEY_LABEL背;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BACK`;
mapkey vf @MAPKEY_LABEL线框显示;~ Command `ProCmdEnvWireframe`  1;
mapkey vr @MAPKEY_LABEL着色显示;~ Command `ProCmdEnvShaded`  1;
mapkey et @MAPKEY_LABEL制图-编辑属性;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_4 92 0 99 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties@PopupMenuTree`;
mapkey vw @MAPKEY_LABEL光源;;
