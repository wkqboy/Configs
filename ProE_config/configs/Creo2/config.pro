mapkey ss @MAPKEY_LABEL草绘;~ Command `ProCmdDatumSketCurve` ;\
mapkey(continued) ~ Command `ProCmdViewSketchView`;
mapkey ! @MAPKEY_LABEL草绘-中心线;~ Command `ProCmdSketGeomCenterline`  1;
mapkey 1 @MAPKEY_LABEL模型树;~ Command `ProCmdNavigatorBtn`  0;
mapkey $F8 @MAPKEY_LABEL造型-活动平面方向;~ Command `ProCmdViewAlign`;\
mapkey(continued) ~ Command `ProCmdViewSketchView`;
mapkey xd @MAPKEY_LABELfront;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `FRONT`;
mapkey xs @MAPKEY_LABELleft;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `LEFT`;
mapkey xf @MAPKEY_LABELright;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `RIGHT`;
mapkey xe @MAPKEY_LABELtop;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `TOP`;
mapkey xc @MAPKEY_LABELbottom;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BOTTOM`;
mapkey xz @MAPKEY_LABEL隐藏截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `no cross section` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey sw @MAPKEY_LABEL设置工作目录;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdSessionChangeDir` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey wc @MAPKEY_LABEL关闭窗口;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdWinCloseGroup` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;
mapkey er @MAPKEY_LABEL拭除不显示;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelEraseNotDisp` ;~ Activate `file_erase_nd` `ok_pb`;
mapkey za @MAPKEY_LABEL装配-装入元件;~ Command `ProCmdCompAssem` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey aa @MAPKEY_LABEL装配-激活元件;~ Command `ProCmdMakeActive`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node5`;\
mapkey(continued) ~ Command `ProCmdXsecSetActive`;
mapkey zz @MAPKEY_LABEL装配-打开元件;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `ActionMenu` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `ActionMenu`;~ Close `main_dlg_cur` `ActionMenu`;\
mapkey(continued) ~ Activate `main_dlg_cur` `OpenModel`;
mapkey ee @MAPKEY_LABEL拉伸;~ Command `ProCmdFtExtrude` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.extrev_1_placement.0` 1;\
mapkey(continued) ~ Trigger `extrev_1_placement.0.0` `PH.section_select_list` `0`;\
mapkey(continued) ~ Trigger `extrev_1_placement.0.0` `PH.section_select_list` ``;
mapkey rr @MAPKEY_LABEL旋转;~ Command `ProCmdFtRevolve` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.revolve_1_placement.0` 1;\
mapkey(continued) ~ Trigger `revolve_1_placement.0.0` `PH.section_select_list` `0`;\
mapkey(continued) ~ Trigger `revolve_1_placement.0.0` `PH.section_select_list` ``;
mapkey dr @MAPKEY_LABEL倒R角;~ Command `ProCmdRound`;\
mapkey(continued) ~ Command `ProCmdSketCirFilletWConstr`  1;
mapkey dc @MAPKEY_LABEL倒C角;~ Command `ProCmdChamferEdge`;\
mapkey(continued) ~ Command `ProCmdSketEqualChamfer`  1;
mapkey se @MAPKEY_LABEL抽壳_装配-着色显示;~ Command `ProCmdViewShaded`;\
mapkey(continued) ~ Command `ProCmdShell`;
mapkey da @MAPKEY_LABEL拔模;~ Command `ProCmdDraft` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.draft_ref_page_2.0` 1;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `0` `content`;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `` ``;\
mapkey(continued) ~ Trigger `draft_ref_page_2.1.0` `PH.DraftTable` 2 `` ``;
mapkey ed @MAPKEY_LABEL编辑定义_草绘-编辑尺寸;~ Command `ProCmdRedefine`;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdDwgPopEditAtt`;
mapkey cc @MAPKEY_LABEL隐藏;~ Command `ProCmdViewHide`;
mapkey vv @MAPKEY_LABEL取消隐藏;~ Command `ProCmdViewShow`;
mapkey sv @MAPKEY_LABEL保存层状态;~ Command `ProCmdMdlTreeShowLyrs` ;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0`;\
mapkey(continued) ~ Command `ProCmdViewSaveLayStat` ;~ Command `ProCmdLayer_ShowMdlTree`;
mapkey vf @MAPKEY_LABEL线框视图;~ Command `ProCmdEnvWireframe`  1;
mapkey vx @MAPKEY_LABEL着色视图;~ Command `ProCmdEnvShaded`  1;
mapkey mm @MAPKEY_LABEL以mm为单位;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdMmModelProperties` ;\
mapkey(continued) ~ Activate `mdlprops_dlg` `UNITS_lay_Controls.push_Change.lay_instance`;\
mapkey(continued) ~ Select `um_finder` `SystemsFinderList` 1 `sysunits7`;\
mapkey(continued) ~ Activate `um_finder` `PrincipalPush`;~ Activate `um_sys_conv_new` `OKStd`;\
mapkey(continued) ~ Activate `um_finder` `ClosePush`;~ Activate `mdlprops_dlg` `DlgClose_push`;
mapkey ec @MAPKEY_LABEL编辑;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `node2`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `ActionMenu` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `ActionMenu`;~ Close `main_dlg_cur` `ActionMenu`;\
mapkey(continued) ~ Activate `main_dlg_cur` `L05Edit`;
mapkey bb @MAPKEY_LABEL边界混合;~ Command `ProCmdFtBndBlend` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.bbl_12curves.0` 1;\
mapkey(continued) ~ Trigger `bbl_12curves.1.0` `PH.Curves1DirTbl` 2 `` ``;\
mapkey(continued) ~ Trigger `bbl_12curves.1.0` `PH.Curves2DirTbl` 2 `` ``;\
mapkey(continued) ~ Command `ProCmdFreeformSurface`  1;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.internal_lst` `0`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.internal_lst` ``;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.ff_surface_refs.0` 1;\
mapkey(continued) ~ Trigger `ff_surface_refs.1.0` `PH.primary_table` 2 `DuMmY` `Chains`;\
mapkey(continued) ~ Trigger `ff_surface_refs.1.0` `PH.primary_table` 2 `` ``;\
mapkey(continued) ~ Trigger `ff_surface_refs.1.0` `PH.primary_table` 2 `` ``;
mapkey vz @MAPKEY_LABEL带边着色;~ Command `ProCmdEnvShadedEdges`  1;
mapkey vg @MAPKEY_LABEL视图管理器;~ Command `ProCmdViewVisTool`;
mapkey sf @MAPKEY_LABEL装配-线框显示;~ Command `ProCmdViewWireframe`;
mapkey sa @MAPKEY_LABEL装配-恢复样式;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `display style`;\
mapkey(continued) ~ RButtonArm `visual_dlg0` `Table` 2 `` ``;\
mapkey(continued) ~ PopupOver `visual_dlg0` `EditPanel` 1 `Table`;\
mapkey(continued) ~ Open `visual_dlg0` `EditPanel`;~ Close `visual_dlg0` `EditPanel`;\
mapkey(continued) ~ Activate `visual_dlg0` `Activate`;~ Activate `visual_dlg0` `CloseBtn`;
mapkey af @MAPKEY_LABEL测量-距离;~ Command `ProCmdNaMeasureDistance` ;\
mapkey(continued) ~ Activate `nmd_1` `nmd_analysis_cb` 1;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `DuMmY` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_prj_lst` `0`;~ Trigger `nmd_1` `nmd_prj_lst` ``;
mapkey ac @MAPKEY_LABEL测量-长度;~ Command `ProCmdNaMeasureLength` ;\
mapkey(continued) ~ Activate `nmd_1` `nmd_analysis_cb` 1;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `DuMmY` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;
mapkey ag @MAPKEY_LABEL测量-角度;~ Command `ProCmdNaMeasureAngle` ;\
mapkey(continued) ~ Activate `nmd_1` `nmd_analysis_cb` 1;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `DuMmY` `References`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;
mapkey ad @MAPKEY_LABEL测量;~ Command `ProCmdNmdTool`  1;\
mapkey(continued) ~ Activate `nmd_1` `nmd_analysis_cb` 1;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `DuMmY` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;
mapkey at @MAPKEY_LABEL分析-拔模;~ Command `ProCmdNaGeometryDraftCheck`;
mapkey ae @MAPKEY_LABEL分析-删除所有;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;~ Command `ProCmdNaDeleteAll`;
mapkey as @MAPKEY_LABEL分析-曲率;~ Command `ProCmdNaGeometryCurvature` ;\
mapkey(continued) ~ Open `na_curvature` `save_state_rg`;~ Close `na_curvature` `save_state_rg`;\
mapkey(continued) ~ Select `na_curvature` `save_state_rg` 1 `save`;
mapkey gf @MAPKEY_LABEL外部复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ExternalRadioGroup` 1 `ExternalOpt`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.1.0` `PH.Ref_Model` `0`;\
mapkey(continued) ~ Trigger `References.1.0` `PH.Ref_Model` ``;\
mapkey(continued) ~ Trigger `References.1.0` `PH.Ref_Model` ``;
mapkey gv @MAPKEY_LABEL复制几何;~ Command `ProCmdOduiDsfCopyGeom` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.PGCheckButton` 0;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.References.0` 1;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` `0`;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` ``;\
mapkey(continued) ~ Trigger `References.1.0` `PH.SurfaceSetsList` ``;\
mapkey(continued) ~ Trigger `References.1.0` `PH.ChainList` `0`;\
mapkey(continued) ~ Trigger `References.1.0` `PH.ChainList` ``;\
mapkey(continued) ~ Trigger `References.1.0` `PH.ChainList` ``;
mapkey df @MAPKEY_LABEL从文件导入;~ Command `ProCmdModelImpAppendNew` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_-1`;
mapkey ds @MAPKEY_LABEL默认坐标系;~ Command `ProCmdDefDatumCsys`;
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
mapkey(continued) ~ Activate `visual_dlg0` `Table_INPUT`;@MANUAL_PAUSE请选择剖切平面;\
mapkey(continued) ~ Activate `main_dlg_cur` `dashInst0.Done`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey xg @MAPKEY_LABELback;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Command `ProCmdNamedViewsGalSelect`  `BACK`;
mapkey xv @MAPKEY_LABEL显示截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `wkq_sec` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey cv @MAPKEY_LABEL复制粘贴;~ Command `ProCmdEditCopy` ;\
mapkey(continued) ~ Command `ProCmdEditPaste` ;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.SrfsColInfo` `0`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.SrfsColInfo` ``;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.srfcopy_opt.0` 1;
mapkey fv @MAPKEY_LABEL选择性粘贴_草绘-使用边;~ Command `ProCmdEditCopy` ;\
mapkey(continued) ~ Command `ProCmdEditPasteSpecial` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.move_options.0` 1;\
mapkey(continued) ~ Activate `move_options.0.0` `PH.MoveWithCopy_k01` 0;\
mapkey(continued) ~ Command `ProCmdSketProject`  1;
mapkey ga @MAPKEY_LABEL阵列;~ Command `ProCmdPattern`;
mapkey fx @MAPKEY_LABEL相交_草绘-线;~ Command `ProCmdFtIntersect`;\
mapkey(continued) ~ Command `ProCmdSketLine`  1;
mapkey fe @MAPKEY_LABEL偏距_草绘-偏距;~ Command `ProCmdFtOffset`;\
mapkey(continued) ~ Command `ProCmdSketOffset`  1;~ Select `useedge` `EdgeType` 1 `chain`;
mapkey fr @MAPKEY_LABEL偏实体_草绘-矩形;~ Command `ProCmdFtOffset` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.offtype_flyout_tb` `3 \
mapkey(continued) offtype_flyout`;~ Activate `main_dlg_cur` `3 offtype_flyout` 1;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.option.0` 1;\
mapkey(continued) ~ Command `ProCmdSketRectangle`  1;
mapkey ft @MAPKEY_LABEL替换面_草绘-替换;~ Command `ProCmdFtOffset` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.offtype_flyout_tb` `4 \
mapkey(continued) offtype_flyout`;~ Activate `main_dlg_cur` `4 offtype_flyout` 1;\
mapkey(continued) @PAUSE_FOR_SCREEN_PICK;~ Activate `main_dlg_cur` `chkbn.option.0` 1;\
mapkey(continued) ~ Command `ProCmdEditReplace`;
mapkey fd @MAPKEY_LABEL合并面_草绘-弧;~ Command `ProCmdFtMerge`;\
mapkey(continued) ~ Command `ProCmdSket3Point`  1;
mapkey rf @MAPKEY_LABEL文件重命名;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelRename` ;~ Select `rename` `ph_model.cb`;\
mapkey(continued) ~ Close `rename` `ph_model.cb`;~ Activate `rename` `Select`;
mapkey re @MAPKEY_LABEL草绘-参考;~ Command `ProCmdSketReferences`;
mapkey rs @MAPKEY_LABEL装配-重新构建;~ Command `ProCmdMmRestructure`;
mapkey rt @MAPKEY_LABEL投影;~ Command `ProCmdFtProject` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.projcrv_refs.0` 1;\
mapkey(continued) ~ Trigger `projcrv_refs.0.0` `PH.ChainTable` 2 `0` `chains`;\
mapkey(continued) ~ Trigger `projcrv_refs.0.0` `PH.ChainTable` 2 `` ``;
mapkey ex @MAPKEY_LABEL制图-导出表;~ Command `ProCmdDwgTblSaveasCSV` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;
mapkey et @MAPKEY_LABEL属性;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties`;
mapkey es @MAPKEY_LABEL移除面;~ Command `ProCmdFtRemoveSrf`;
mapkey ef @MAPKEY_LABEL拉伸封闭面;~ Command `ProCmdFtExtrude` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.solid_surf_rg` 1 `Surface`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.extrev_2_options.0` 1;\
mapkey(continued) ~ Activate `extrev_2_options.0.0` `PH.cap_cb` 1;
mapkey ff @MAPKEY_LABEL填充面_草绘-完成;~ Command `ProCmdFtFill`;\
mapkey(continued) ~ Command `ProCmdSketDone`;~ Command `ProCmdFreeformSurface`  1;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.internal_lst` `0`;\
mapkey(continued) ~ Trigger `main_dlg_cur` `maindashInst0.internal_lst` ``;
mapkey st @MAPKEY_LABEL造型-制图_线型qq;~ Command `ProCmdFreestyle`;\
mapkey(continued) ~ Command `ProCmdDwgModLineStyle`;
mapkey fg @MAPKEY_LABEL延伸_草绘-延伸;~ Command `ProCmdFtExtendGr`;\
mapkey(continued) ~ Command `ProCmdEditCorner`  1;
mapkey fw @MAPKEY_LABEL独立线;~ Command `ProCmdAdvstyle` ;\
mapkey(continued) ~ Command `ProCmdASFCrvCrv` ;#WITHIN TOL;.1;
mapkey rd @MAPKEY_LABEL只读;~ Command `ProCmdMmReadOnly` ;#ALL FEAT;
mapkey wt @MAPKEY_LABEL取消只读;~ Command `ProCmdMmReadOnly` ;#CLEAN;\
mapkey(continued) #DONE/RETURN;
mapkey ww @MAPKEY_LABEL镜像_草绘-镜像;~ Command `ProCmdFtMirror` ;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.AssyTree` 1 `node4`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.group_copy_options.0` 1;\
mapkey(continued) ~ Select `group_copy_options.2.0` `PH.CopyFullDepBtn` 1 `FullDependent`;\
mapkey(continued) ~ Command `ProCmdEditMirror`  1;
mapkey sd @MAPKEY_LABEL实体化;~ Command `ProCmdFtPatch`;
mapkey xx @MAPKEY_LABEL修剪_草绘-修剪;~ Command `ProCmdFtTrim`;\
mapkey(continued) ~ Command `ProCmdEditDelSeg`  1;
mapkey zf @MAPKEY_LABEL展平面组;~ Command `ProCmdFlattenQuilt` ;\
mapkey(continued) ~ FocusOut `Odui_Dlg_00` `sel.selbut.source_quilt#0`;
mapkey d1 @MAPKEY_LABEL新建基准点;~ Command `ProCmdDatumPointGeneral`;
mapkey d2 @MAPKEY_LABEL新建基准轴;~ Command `ProCmdDatumAxis`;
mapkey d3 @MAPKEY_LABEL新建基准面;~ Command `ProCmdDatumPlane`;
mapkey d4 @MAPKEY_LABEL新建基准坐标;~ Command `ProCmdDatumCsys`;
mapkey sb @MAPKEY_LABEL制图-符号;~ Command `ProCmdDwgSymInstFromPal`;
mapkey sr @MAPKEY_LABEL螺旋扫描;~ Command `ProCmdFtHelicalSweep` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.SldSrf` 1 `srf`;\
mapkey(continued) ~ Activate `main_dlg_cur` `chkbn.hlswp_refs.0` 1;\
mapkey(continued) ~ Trigger `hlswp_refs.0.0` `PH.profile_repr_list` `0`;\
mapkey(continued) ~ Trigger `hlswp_refs.0.0` `PH.profile_repr_list` ``;
mapkey sz @MAPKEY_LABEL分割面_草绘-设置;~ Command `ProCmdSplitSurface` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.refselrg` 1 `selall`;\
mapkey(continued) ~ Command `ProCmdSketSetup`;
mapkey tt @MAPKEY_LABEL加厚;~ Command `ProCmdFtThicken`;
mapkey dv @MAPKEY_LABEL重定向视图;~ Select `main_dlg_cur` `View:casc340798662`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:casc340798662`;~ Command `ProCmdViewOrient`;
mapkey vs @MAPKEY_LABEL变截面扫描;~ Command `ProCmdFtLoft` ;\
mapkey(continued) ~ Enter `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Exit `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.SldSrf` 1 `srf`;
mapkey va @MAPKEY_LABEL适合窗口;~ Command `ProCmdViewRefit` ;\
mapkey(continued) ~ Command `ProCmdViewRepaint`;
mapkey vt @MAPKEY_LABEL制图-投影视图;~ Command `ProCmdDwgViewProj`;
mapkey ve @MAPKEY_LABEL制图-详细视图;~ Command `ProCmdDwgViewDet`;
mapkey vb @MAPKEY_LABEL制图-边显示;~ Command `ProCmdDwgEdgeDisplay` ;#ERASE LINE;
mapkey vc @MAPKEY_LABEL制图-元件显示;~ Command `ProCmdDwgComponentDisplay` ;#BLANK;
mapkey tx @MAPKEY_LABEL零件_草绘_制图-文字WWC;~ Command `ProCmdDwgCreateNote` ;\
mapkey(continued) #MAKE NOTE;@PAUSE_FOR_SCREEN_PICK;T;;#DONE/RETURN;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ FocusOut `note_text_asynch` `txt_note_text`;\
mapkey(continued) ~ FocusIn `note_text_asynch` `txt_note_text`;\
mapkey(continued) ~ FocusOut `note_text_asynch` `txt_note_text`;\
mapkey(continued) ~ Activate `note_text_asynch` `psh_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Activate `file_open` `Note Text Directory_shortcut`;\
mapkey(continued) ~ Command `ProCmdSketText`  1;\
mapkey(continued) ~ Command `ProCmdAOGalleryList`  1 `FLAT TO SCREEN`;\
mapkey(continued) ~ Command `ProCmdInsMenuMgr3dNote` ;#NEW;\
mapkey(continued) ~ Move `note_3d` `note_3d` 2 38.639481 4.048193;\
mapkey(continued) ~ FocusOut `note_3d` `inp_name`;~ FocusIn `note_3d` `sym_area_note_text`;\
mapkey(continued) ~ FocusOut `note_3d` `sym_area_note_text`;
mapkey e1 @MAPKEY_LABEL制图-截面间距1mm;#SPACING;#VALUE;1;
mapkey e5 @MAPKEY_LABEL制图-截面间距x0.5;#SPACING;#HALF;
mapkey e2 @MAPKEY_LABEL制图-截面间距x2;#SPACING;#DOUBLE;
mapkey c1 @MAPKEY_LABEL制图-截面线红色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf20` 1;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c2 @MAPKEY_LABEL制图-截面线绿色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf19` 1;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey c3 @MAPKEY_LABEL制图-截面线蓝色;#LINE STYLE;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `psh_set_color`;\
mapkey(continued) ~ Activate `coldial` `udf_color_CB.udf26` 1;~ Activate `coldial` `Ok`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_apply`;\
mapkey(continued) ~ Activate `ls_mod_dial_asynch` `std_close`;
mapkey de @MAPKEY_LABEL草绘-制图_标尺寸;~ Command `ProCmdSketDimension`  1;\
mapkey(continued) ~ Command `ProCmdDwgCrStdNewRefDim` ;#ON ENTITY;
mapkey a1 @MAPKEY_LABEL制图-截面线45度;#ANGLE;#45;#X-COMPONENT;
mapkey a2 @MAPKEY_LABEL制图-截面线135度;#ANGLE;#135;#X-COMPONENT;
mapkey rv @MAPKEY_LABEL制图-与视图相关;~ Command `ProCmdDwgRelToView`;
mapkey rc @MAPKEY_LABEL制图-与对象相关;~ Command `ProCmdDwgRelToObj`;
mapkey * @MAPKEY_LABEL制图-重要尺寸;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_prefix` `*`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` `*`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey / @MAPKEY_LABEL制图-取消尺寸修饰;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_prefix` ``;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` ``;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` ``;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` ``;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x2 @MAPKEY_LABEL制图-(2X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(2X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(2X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x3 @MAPKEY_LABEL制图-(3X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(3X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(3X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x4 @MAPKEY_LABEL制图-(4X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(4X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(4X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x5 @MAPKEY_LABEL制图-(5X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(5X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(5X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x6 @MAPKEY_LABEL制图-(6X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(6X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(6X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x7 @MAPKEY_LABEL制图-(7X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(7X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(7X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey x8 @MAPKEY_LABEL制图-(8X)标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(8X)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(8X)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +7 @MAPKEY_LABEL打开stp;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `filter_.stp,.step,`;
mapkey +8 @MAPKEY_LABEL打开igs;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `filter_.igs,.iges,`;
mapkey +9 @MAPKEY_LABEL打开x_t;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 \
mapkey(continued) `filter_.x_t,.xmt_txt,.x_b,.xmt_bin,.x_n,.xmt_neu,.xmt`;
mapkey -7 @MAPKEY_LABEL导出stp;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_539`;
mapkey -8 @MAPKEY_LABEL导出igs;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `main_dlg_w1:PHTLeft.AssyTree:<NULL>`;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelSaveAs` ;\
mapkey(continued) ~ Open `file_saveas` `type_option`;~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_134`;
mapkey -9 @MAPKEY_LABEL导出x_t;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_837`;
mapkey +6 @MAPKEY_LABEL打开asm;~ Select `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Close `main_dlg_cur` `appl_casc`;~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_1`;
mapkey -2 @MAPKEY_LABEL导出dwg;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_560`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;\
mapkey(continued) ~ Select `export_2d_dlg` `ExportOptions_Tab` 1 `Properties_Layout`;\
mapkey(continued) ~ Arm `export_2d_dlg` `Colors_Table` 2 `8` `dxf`;\
mapkey(continued) ~ Select `export_2d_dlg` `Colors_Table` 2 `8` `dxf`;\
mapkey(continued) ~ Open `export_2d_dlg` `Colors_Table_INPUT`;\
mapkey(continued) ~ Close `export_2d_dlg` `Colors_Table_INPUT`;\
mapkey(continued) ~ Select `export_2d_dlg` `Colors_Table_INPUT` 1 `  4`;
mapkey -3 @MAPKEY_LABEL导出JPG300dpi;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Open `shd_img_param` `o_size`;\
mapkey(continued) ~ Close `shd_img_param` `o_size`;~ Select `shd_img_param` `o_size` 1 `A4`;\
mapkey(continued) ~ Open `shd_img_param` `o_dpi`;~ Close `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Select `shd_img_param` `o_dpi` 1 `dpi300`;~ Activate `shd_img_param` `OK`;
mapkey -4 @MAPKEY_LABEL导出JPG400dpi;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Activate `UI Message Dialog` `ok`;\
mapkey(continued) ~ Open `shd_img_param` `o_size`;~ Close `shd_img_param` `o_size`;\
mapkey(continued) ~ Select `shd_img_param` `o_size` 1 `A4`;~ Open `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Close `shd_img_param` `o_dpi`;~ Select `shd_img_param` `o_dpi` 1 `dpi400`;\
mapkey(continued) ~ Activate `shd_img_param` `OK`;
mapkey -5 @MAPKEY_LABEL导出JPG500dpi;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelSaveAs` ;~ Open `file_saveas` `type_option`;\
mapkey(continued) ~ Close `file_saveas` `type_option`;\
mapkey(continued) ~ Select `file_saveas` `type_option` 1 `db_566`;\
mapkey(continued) ~ Activate `file_saveas` `OK`;~ Activate `UI Message Dialog` `ok`;\
mapkey(continued) ~ Open `shd_img_param` `o_size`;~ Close `shd_img_param` `o_size`;\
mapkey(continued) ~ Select `shd_img_param` `o_size` 1 `A4`;~ Open `shd_img_param` `o_dpi`;\
mapkey(continued) ~ Close `shd_img_param` `o_dpi`;~ Select `shd_img_param` `o_dpi` 1 `dpi500`;\
mapkey(continued) ~ Activate `shd_img_param` `OK`;
mapkey +-.05 @MAPKEY_LABEL制图-公差+-0.05;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.05`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.1 @MAPKEY_LABEL制图-公差+-0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.1`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.2 @MAPKEY_LABEL制图-公差+-0.2;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.3 @MAPKEY_LABEL制图-公差+-0.3;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.4 @MAPKEY_LABEL制图-公差+-0.4;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.4`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.5 @MAPKEY_LABEL制图-公差+-0.5;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-.8 @MAPKEY_LABEL制图-公差+-0.8;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `0.8`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-1 @MAPKEY_LABEL制图-公差+-1.0;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Symmetric`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_pm_tol_value` `1.0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_pm_tol_value`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +-0 @MAPKEY_LABEL制图-不标注公差;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_1 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Nominal`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.05 @MAPKEY_LABEL制图-公差+0.05;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.05`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.1 @MAPKEY_LABEL制图-公差+0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.1`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.2 @MAPKEY_LABEL制图-公差+0.2;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.3 @MAPKEY_LABEL制图-公差+0.3;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.4 @MAPKEY_LABEL制图-公差+0.4;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.4`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.5 @MAPKEY_LABEL制图-公差+0.5;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +.8 @MAPKEY_LABEL制图-公差+0.8;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+.8`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +1 @MAPKEY_LABEL制图-公差+1.0;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `+1.0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.05 @MAPKEY_LABEL制图-公差-0.05;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.05`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.1 @MAPKEY_LABEL制图-公差-0.1;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.1`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.2 @MAPKEY_LABEL制图-公差-0.2;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.3 @MAPKEY_LABEL制图-公差-0.3;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.4 @MAPKEY_LABEL制图-公差-0.4;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.4`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.5 @MAPKEY_LABEL制图-公差-0.5;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -.8 @MAPKEY_LABEL制图-公差-0.8;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-.8`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey -1 @MAPKEY_LABEL制图-公差-1.0;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;~ Open `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_mode`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_mode` 1 `Plus Minus`;\
mapkey(continued) ~ Open `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Close `mod_dim_new_asynch` `opt_tol_table`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `opt_tol_table` 1 `None`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_upper_tol` `0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_upper_tol`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_iso_lower_tol` `-1.0`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_iso_lower_tol`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey dd @MAPKEY_LABEL清除旧版本;@SYSTEMpurge;
mapkey sx @MAPKEY_LABEL装配-着色显示;~ Command `ProCmdViewShaded`;
mapkey fs @MAPKEY_LABEL造型_草绘-样条线;~ Command `ProCmdFreeformCurve`  1;\
mapkey(continued) ~ Command `ProCmdSketSpline`  1;
mapkey n @MAPKEY_LABEL下一个;#NEXT;
mapkey fc @MAPKEY_LABEL方程线_草绘-圆;~ Command `ProCmdFtCrvEqn`;\
mapkey(continued) ~ Command `ProCmdSketCenterPoint`  1;
mapkey ts @MAPKEY_LABEL转换为钣金;~ Command `ProCmdConvertSolidToSmt`;
mapkey bd @MAPKEY_LABEL钣金-平整壁;~ Command `ProCmdSmtWallFlat`;
mapkey fa @MAPKEY_LABEL父项_草绘-构造;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditGeomConstr`;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Activate `rmb_popup` `Selobj_parent`;
mapkey $F2 @MAPKEY_LABEL基准轴显隐;~ Command `ProCmdEnvAxisDisp`  1;
mapkey $F3 @MAPKEY_LABEL基准面显隐;~ Command `ProCmdEnvDtmDisp`  1;
mapkey $F4 @MAPKEY_LABEL基准坐标显隐;~ Command `ProCmdEnvCsysDisp`  1;
mapkey $F5 @MAPKEY_LABEL基准点显隐;~ Command `ProCmdEnvPntsDisp`  1;
mapkey $F6 @MAPKEY_LABEL新建颜色;\
mapkey(continued) ~ Select `main_dlg_cur` `View:ProCmdViewGallery`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:ProCmdViewGallery`;\
mapkey(continued) ~ Command `ProCmdViewAppearanceEditor` ;\
mapkey(continued) ~ Activate `pgl_appearance_manager` `ColorButton` 1;\
mapkey(continued) ~ Activate `pgl_color_editor` `ColorWheelCheckBtn` 1;
mapkey $F7 @MAPKEY_LABEL编辑颜色;\
mapkey(continued) ~ Select `main_dlg_cur` `View:ProCmdViewGallery`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:ProCmdViewGallery`;\
mapkey(continued) ~ Command `ProCmdViewModelAppEditor` ;\
mapkey(continued) ~ Activate `pgl_appearance_manager` `ColorButton` 1;
mapkey 7 @MAPKEY_LABEL制图-符号左旋90度;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:Drawing_Annotations -1 -1 0 \
mapkey(continued) -1 -1 -1:symbol 6 76 0 -1 -1 -1`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Activate `drawing_sym_asynch` `plus_ninety_pushb`;\
mapkey(continued) ~ Activate `drawing_sym_asynch` `OK_modif_push`;
mapkey $F11 @MAPKEY_LABEL制图_与对象相关;~ Command `ProCmdDwgRelToObj`;
mapkey f1 @MAPKEY_LABEL草绘-约束竖直;~ Command `ProCmdSketVerticalConstr`;
mapkey f4 @MAPKEY_LABEL草绘-约束垂直;~ Command `ProCmdSketOrthogConstr`;
mapkey f7 @MAPKEY_LABEL草绘-约束水平;~ Command `ProCmdSketHorizConstr`;
mapkey f5 @MAPKEY_LABEL草绘-约束中点;~ Command `ProCmdSketMidPointConstr`;
mapkey f2 @MAPKEY_LABEL草绘-约束重合;~ Command `ProCmdSketAlignConstr`;
mapkey f8 @MAPKEY_LABEL草绘-约束相切;~ Command `ProCmdSketTangentConstr`;
mapkey f3 @MAPKEY_LABEL草绘-约束对称;~ Command `ProCmdSketSymmetryConstr`;
mapkey f6 @MAPKEY_LABEL草绘-约束平行;~ Command `ProCmdSketParallelConstr`;
mapkey f9 @MAPKEY_LABEL草绘-约束相等;~ Command `ProCmdSketEqualConstr`;
mapkey fz @MAPKEY_LABEL草绘-锁定尺寸;~ Command `ProCmdEditUnlockLock`;
mapkey $F9 @MAPKEY_LABEL清除颜色;\
mapkey(continued) ~ Activate `main_dlg_cur` `page_View_control_btn` 1;\
mapkey(continued) ~ Select `main_dlg_cur` `View:ProCmdViewGallery`;\
mapkey(continued) ~ Activate `main_dlg_cur` \
mapkey(continued) `ProCmdViewGallery_layoutph.palette_holder.clearAppearance`;\
mapkey(continued) ~ Close `main_dlg_cur` `View:ProCmdViewGallery`;
mapkey h @MAPKEY_LABEL上一个;#PREVIOUS;
mapkey gg @MAPKEY_LABEL载入颜色;\
mapkey(continued) ~ Select `main_dlg_cur` `Model:ProCmdViewGallery`;\
mapkey(continued) ~ Close `main_dlg_cur` `Model:ProCmdViewGallery`;\
mapkey(continued) ~ Command `ProCmdViewAppManager` ;\
mapkey(continued) ~ Select `pgl_appearance_manager` `palette_holder.fileMyAppMgr`;\
mapkey(continued) ~ Close `pgl_appearance_manager` `palette_holder.fileMyAppMgr`;\
mapkey(continued) ~ Activate `pgl_appearance_manager` `btnFileOpen`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Activate `file_open` `Pro|Library_shortcut`;\
mapkey(continued) ~ Select `file_open` `Ph_list.Filelist` 1 `appearance.dmt`;\
mapkey(continued) ~ Activate `file_open` `Ph_list.Filelist` 1 `appearance.dmt`;\
mapkey(continued) ~ Activate `pgl_warning_message` `PBOverrideNone`;\
mapkey(continued) ~ Activate `pgl_appearance_manager` `StdClose`;
mapkey ce @MAPKEY_LABEL关闭面;\
mapkey(continued) ~ Activate `main_dlg_cur` `page_Applications_control_btn` 1;\
mapkey(continued) ~ Command `ProCmdUtilAppMoldCast`  1;~ Command `ProCmdMoldInsShutSrf` ;\
mapkey(continued) ~ Activate `main_dlg_cur` `maindashInst0.clsloopchkbtn` 1;
mapkey $F12 @MAPKEY_LABEL全局干涉;~ Command `ProCmdNaModelGlobalInterfe`;
mapkey sg @MAPKEY_LABEL装配-半透显示;~ Command `ProCmdViewTranspShaded`;
mapkey gc @MAPKEY_LABEL合并继承;~ Command `ProCmdOduiDsfGenMerge` ;\
mapkey(continued) ~ Select `main_dlg_cur` `maindashInst0.ExternalRadioGroup` 1 `ExternalOpt`;
mapkey .3 @MAPKEY_LABEL制图-3位小数;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_num_dig` `3`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey .2 @MAPKEY_LABEL制图-2位小数;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_num_dig` `2`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey .1 @MAPKEY_LABEL制图-1位小数;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_num_dig` `1`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey .0 @MAPKEY_LABEL制图-0位小数;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_num_dig` `0`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey +2 @MAPKEY_LABEL打开drw;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdModelOpen` ;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `DLG_PREVIEW_POST` `file_open`;\
mapkey(continued) ~ Trail `UI Desktop` `UI Desktop` `PREVIEW_POPUP_TIMER` \
mapkey(continued) `file_open:Ph_list.Filelist:<NULL>`;~ Activate `file_open` `Current Dir`;\
mapkey(continued) ~ Open `file_open` `Type`;~ Close `file_open` `Type`;\
mapkey(continued) ~ Select `file_open` `Type` 1 `db_4`;
mapkey -* @MAPKEY_LABEL检入;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdMdlTreeWfChkInExp` ;~ Activate `file_saveas` `OK`;\
mapkey(continued) ~ Activate `storage_conflicts` `OK_PushButton`;
mapkey -+ @MAPKEY_LABEL检出;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdMdlTreeWfEdit` ;;
mapkey -- @MAPKEY_LABEL撤销检出;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdMdlTreeWfEditCancel` ;;
mapkey xb @MAPKEY_LABEL反向截面;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `xsec`;\
mapkey(continued) ~ Select `visual_dlg0` `DisplayCascadeBtn`;\
mapkey(continued) ~ Close `visual_dlg0` `DisplayCascadeBtn`;\
mapkey(continued) ~ Activate `visual_dlg0` `FlipClipBtn`;~ Activate `visual_dlg0` `CloseBtn`;
mapkey vn @MAPKEY_LABEL临时着色;~ Command `ProCmdViewShade`;
mapkey ea @MAPKEY_LABEL关闭测量;~ Close `nmd_1` `nmd_1`;
mapkey av @MAPKEY_LABEL分析-体积;~ Command `ProCmdNaMeasureVolume` ;\
mapkey(continued) ~ Activate `nmd_1` `nmd_analysis_cb` 1;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `DuMmY` `References`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;
mapkey bc @MAPKEY_LABEL隐藏实体;~ Command `ProCmdMdlTreeShowLyrs` ;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:SOLID`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:SOLID`;\
mapkey(continued) ~ Command `ProCmdViewHide` ;~ Command `ProCmdLayer_ShowMdlTree`;
mapkey bv @MAPKEY_LABEL显示实体;~ Command `ProCmdMdlTreeShowLyrs` ;\
mapkey(continued) ~ Select `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` 1 `node0:SOLID`;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.PHLayerUI.AssyTree` `node0:SOLID`;\
mapkey(continued) ~ Command `ProCmdViewShow` ;~ Command `ProCmdLayer_ShowMdlTree`;
mapkey max @MAPKEY_LABEL制图-max标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_style`;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `m`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `ma`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `max`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `max`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey cf @MAPKEY_LABEL隐含;~ Command `ProCmdSuppress` ;\
mapkey(continued) ~ Activate `del_sup_msg` `ok`;
mapkey t2 @MAPKEY_LABEL制图-文字高度2mm;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_style`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_usedefheight` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_height` `2`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_height`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey t3 @MAPKEY_LABEL制图-文字高度3mm;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_style`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_usedefheight` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_height` `3`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_height`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey t5 @MAPKEY_LABEL制图-文字高度5mm;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_style`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_usedefheight` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_height` `5`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `inp_height`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey dz @MAPKEY_LABEL制图-坐标尺寸;~ Command `ProCmdDwgCrOrdDim`;
mapkey typ @MAPKEY_LABEL制图-typ标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(T`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(TY`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(TYP`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_postfix` `(TYP)`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_postfix` `(TYP)`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_postfix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey o @MAPKEY_LABEL制图-直径标记;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `DrwAssyTree` `node0:view_2 92 0 -1 -1 -1`;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `PM_DrwAssyTree` 1 `DrwAssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `PM_DrwAssyTree`;\
mapkey(continued) ~ Close `main_dlg_cur` `PM_DrwAssyTree`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_sym_palette`;\
mapkey(continued) ~ Activate `sympalette` `sp_110`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` `n`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `sympalette` `close`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey gx @MAPKEY_LABEL关系编辑器;~ Command `ProCmdMmRels`;
mapkey cs @MAPKEY_LABEL参数;~ Command `ProCmdMmParams`;
mapkey p @MAPKEY_LABEL新建字符串参数;~ FocusIn `main_dlg_cur` `PHTLeft.EditPanel`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `PHTLeft.EditPanel`;\
mapkey(continued) ~ CellSelect `main_dlg_cur` `PHTLeft.AssyTree` `node23` `ac1`;\
mapkey(continued) ~ Open `parameter_properties` `Type_OptionMenu`;\
mapkey(continued) ~ Close `parameter_properties` `Type_OptionMenu`;\
mapkey(continued) ~ Select `parameter_properties` `Type_OptionMenu` 1 `string`;\
mapkey(continued) ~ Activate `parameter_properties` `Ok_StdButton`;\
mapkey(continued) ~ FocusOut `main_dlg_cur` `PHTLeft.EditPanel`;
mapkey zb @MAPKEY_LABEL模型属性;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdMmModelProperties`;~ Close `main_dlg_cur` `appl_casc`;\
mapkey(continued) ~ Command `ProCmdDwgProperties` ;\
mapkey(continued) ~ Activate `mdlprops_dlg` `OPTIONS_lay_Controls.push_Change.lay_instance`;\
mapkey(continued) ~ FocusOut `preferences` `InputOpt`;
mapkey dt @MAPKEY_LABEL在树中定位;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdLocateInMdlTree`;
mapkey cr @MAPKEY_LABEL在此插入;\
mapkey(continued) ~ RButtonArm `main_dlg_cur` `PHTLeft.AssyTree` `` 1 ``;\
mapkey(continued) ~ PopupOver `main_dlg_cur` `ActionMenu` 1 `PHTLeft.AssyTree`;\
mapkey(continued) ~ Open `main_dlg_cur` `ActionMenu`;~ Close `main_dlg_cur` `ActionMenu`;\
mapkey(continued) ~ Activate `main_dlg_cur` `ActivateInsert`;
mapkey $F10 @MAPKEY_LABEL制图_与视图相关;~ Command `ProCmdDwgRelToView`;
mapkey zt @MAPKEY_LABEL未修剪面;~ Command `ProCmdAdvstyle` ;\
mapkey(continued) ~ Command `ProCmdASFSrfSrf` ;@PAUSE_FOR_SCREEN_PICK;\
mapkey(continued) ~ Command `ProCmdASFDone` ;~ Activate `main_dlg_cur` `dashInst0.Done`;
mapkey zv @MAPKEY_LABEL重置显隐状态;~ Command `ProCmdViewRestLayStat`;
mapkey qq @MAPKEY_LABEL关闭_退出;~ Enter `main_dlg_cur` `dashInst0.Quit`;\
mapkey(continued) ~ Activate `main_dlg_cur` `dashInst0.Quit`;~ Command `ProCmdSketQuit` ;\
mapkey(continued) ~ FocusIn `UI Message Dialog` `yes`;~ Activate `UI Message Dialog` `yes`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `1` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `0` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `1` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `1` `ChkBtn`;\
mapkey(continued) ~ Trigger `nmd_1` `nmd_setup_tbl` 2 `` ``;~ Close `nmd_1` `nmd_1`;\
mapkey(continued) ~ Command `ProCmdFreeformQuit`;
mapkey qa @MAPKEY_LABEL取消插入;~ Command `ProCmdResumeLast`;
mapkey sc @MAPKEY_LABEL过滤为注释;~ Open `main_dlg_cur` `Sst_bar.filter_list`;\
mapkey(continued) ~ Close `main_dlg_cur` `Sst_bar.filter_list`;\
mapkey(continued) ~ Select `main_dlg_cur` `Sst_bar.filter_list` 1 `5`;\
mapkey(continued) ~ Command `ProCmdSelFilterSet` 283;
mapkey 2 @MAPKEY_LABEL去一列模型参数;~ Command `ProCmdMdlTreeColumns` ;\
mapkey(continued) ~ Activate `column` `RmvBtn`;~ Activate `column` `OKBtn`;
mapkey 3 @MAPKEY_LABEL显示通用名称;~ Command `ProCmdMdlTreeColumns` ;\
mapkey(continued) ~ Open `column` `TypMenu`;~ Close `column` `TypMenu`;\
mapkey(continued) ~ Select `column` `TypMenu` 1 `Model Params`;~ Input `column` `InpName` `p`;\
mapkey(continued) ~ Input `column` `InpName` `pt`;~ Input `column` `InpName` `ptc`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_`;~ Input `column` `InpName` `ptc_c`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_co`;~ Input `column` `InpName` `ptc_com`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_comm`;~ Input `column` `InpName` `ptc_commo`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common_`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common_n`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common_na`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common_nam`;\
mapkey(continued) ~ Input `column` `InpName` `ptc_common_name`;\
mapkey(continued) ~ Update `column` `InpName` `ptc_common_name`;~ Activate `column` `AddBtn`;\
mapkey(continued) ~ Activate `column` `OKBtn`;
mapkey vd @MAPKEY_LABEL制图-一般视图;~ Command `ProCmdDwgViewGen` ;\
mapkey(continued) ~ Activate `sel_presentation` `ok_psh`;@PAUSE_FOR_SCREEN_PICK;\
mapkey(continued) ~ Select `drawing_view` `view_names_list` 1 `FRONT`;\
mapkey(continued) ~ Activate `drawing_view` `view_names_list` 1 `FRONT`;
mapkey bz @MAPKEY_LABEL表示-展开;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `simplified rep`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `展开` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `展开` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `展开` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `展开` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey bx @MAPKEY_LABEL主表示;~ Command `ProCmdViewVisTool` ;\
mapkey(continued) ~ Select `visual_dlg0` `RadioSelApplMgr` 1 `simplified rep`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master rep` `name_column`;\
mapkey(continued) ~ Select `visual_dlg0` `Table` 2 `master rep` `name_column`;\
mapkey(continued) ~ Arm `visual_dlg0` `Table` 2 `master rep` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `Table` 2 `master rep` `name_column`;\
mapkey(continued) ~ Activate `visual_dlg0` `CloseBtn`;
mapkey 0 @MAPKEY_LABEL制图-半径标记;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Select `mod_dim_new_asynch` `tab_main` 1 `lay_display`;\
mapkey(continued) ~ FocusIn `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Input `mod_dim_new_asynch` `inp_dim_prefix` `R`;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_dim_prefix` `R`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_dim_prefix`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey ..1 @MAPKEY_LABEL制图-公差位数;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_tol_default_dec_places` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_tol_num_dig` `1`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_tol_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey ..2 @MAPKEY_LABEL制图-公差位数;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_tol_default_dec_places` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_tol_num_dig` `2`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_tol_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
mapkey ..3 @MAPKEY_LABEL制图-公差位数;\
mapkey(continued) ~ Timer `UI Desktop` `UI Desktop` `popupMenuRMBTimerCB`;\
mapkey(continued) ~ Close `rmb_popup` `PopupMenu`;~ Command `ProCmdEditProperties` ;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `chk_tol_default_dec_places` 0;\
mapkey(continued) ~ Update `mod_dim_new_asynch` `inp_tol_num_dig` `3`;\
mapkey(continued) ~ FocusOut `mod_dim_new_asynch` `inp_tol_num_dig`;\
mapkey(continued) ~ Activate `mod_dim_new_asynch` `psh_ok`;
