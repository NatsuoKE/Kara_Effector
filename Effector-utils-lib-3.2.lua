	-- Effector-utils-lib --------------------------------------------------------------------
	Effector_Lib_authors  = "Itachi Akatsuki & Vict8r"
	Effector_Lib_testers  = "NatsuoKE, Nagato Akatsuki & Vict8r"
	Effector_Lib_version  = "3.2.5"
	Effector_Lib_modified = "03 March 2015"
	-- functions abbreviations ---------------------------------------------------------------
	sin = math.sin		asin = math.asin	  log   = math.log10		pi = math.pi
	cos = math.cos		acos = math.acos	  ceil  = math.ceil			ln = math.log
	tan = math.tan		atan = math.atan	  rand  = math.random		r  = math.random
	abs = math.abs		sinh = math.sinh	  floor = math.floor		F  = string.format
	deg = math.deg		cosh = math.cosh	  atan2 = math.atan2		format = string.format
	rad = math.rad		tanh = math.tanh	  script_version = "3.2"	script_update = ".9.7"
	-- Yutils by Christoph "Youka" Spanknebel ------------------------------------------------
	Yutils = include( "Yutils.lua" ) 					 -- https://github.com/Youka/Yutils --
	-- Effector-utils-lib-3.2 functions ------------------------------------------------------
	--[[
	Effector-utils-lib-3.2
	{
		set_temp & remember
		-	set_temp( ref, val )
		-	remember( ref, val )
		
		librería time
		-	HMS_to_ms( time_HMS )
		-	ms_to_HMS( time_ms )
		-	time_to_frame( Time )
		-	frame_to_ms( frames )
		-	frame_to_HMS( frames )
		-	time_mid1( Delay )
		-	time_mid2( Delay )
		-	time_li( Delay )
		-	time_lo( Delay )
		
		librería random
		-	r( r_i, r_f, r_step )
		-	random.color( H, S, V )
		-	random.colorvc( H, S, V )
		-	random.alpha( alpha_i, alpha_f )
		-	random.alphava( alpha_i, alpha_f )
		-	random.e( ... )
		-	random.unique( table_or_number, index_r )
		
		librería table
			table.view( Table, Table_name, indent )
		-	table.inside( Table, e )
		-	table.index( Table, e )
			table.show( Table )
			table.duplicate( Table )
		-	table.compare( Table1, Table2 )
			table.complete( Table, Start_time, End_time )
		-	table.disorder( table_or_number )
		-	table.make( objet, size, limit_i, limit_f, ... )
		-	table.rmake( objet, size, limit_i, limit_f, ... )
			table.concat1( Table, ... )
			table.concat2( Table, ... )
		-	table.replay( len_table, ... )
		-	table.count( Table, e )
		-	table.pos( Table, e )
			table.string( String, Number_str )
			table.space( String )
			table.word( String )
		-	table.retire( Table, ... )
			table.combine( Table, n_combinations )
		-	table.inserttable( Table1, Table2, index_insert )
		-	table.reverse( Table )
		-	table.cyclic( Table )
			table.set( color_masktable )
		-	table.op( Table, mode, add )
		-	table.gradient( Left, Right, algorithm )
		-	table.gradient2( ... )
		-	table.gradient3( Size, ... )
			table.bigradient( gradient1, gradient2, Size )
			table.mask( Color_or_Alpha, Maskfx, Mode, First )
			table.remember( table_ref, table_val )
		
		librería math
		-	math.R( Rand_i, Rand_f )
		-	R( Rand_i, Rand_f, Step )
		-	math.Rfake( Rand_i, Rand_f, Step, Counter )
			math.Rfake2( Rand_i, Rand_f, Step, Counter, Counter2, Mode )
			math.Rredefine( Rand_i, Rand_f, Step, Counter, Counter2 )
			math.format( String, val )
			math.format2( String, val )
		-	math.round( number_or_table, decimal )
		-	math.distance( px1, py1, px2, py2 )
		-	math.angle( px1, py1, px2, py2 )
		-	math.polar( angle, radius, Return )
			math.intersect( x1, y1, x2, y2, x3, y3, x4, y4 )
		-	math.length_bezier( ... )
			math.angle_bezier( points, t )
		-	math.point( c_num, x_range, y_range, s_point_x, s_point_y, e_point_x, e_point_y )
		-	math.factk( n )
			math.bernstein( i, n, t )
			math.confi_bezier( n, x, y, t, Return )
		-	math.bezier( Return, ... )
			math.bezier2( Shape, mode, Align_Shape )
			math.movebezier( Shapes, t1, t2 )
			math.bezier2move( Shape, Mode, Accel )
			math.circle( Shape )
			math.rotate( p, axis, angle )
		
		librería tag
			tag.redefine( tag_str )
		-	tag.set( times_set, events_set )
		-	tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	tag.movevci( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	tag.only( condition, s_true, s_false )
		-	tag.oscill( dur, delay, ... )
		-	tag.glitter( dur, ExtraTags_i, ExtraTags_f )
		-	tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		-	tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		-	tag.iclip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		-	tag.iclip2( left_cx, top_cy, width_clip, height_clip, clip_move )
			tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.moveiclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.moveclip2( left_cx, top_cy, width_clip, height_clip )
			tag.moveiclip2( left_cx, top_cy, width_clip, height_clip )
			tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.Riclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.moveRiclip( left_cx, top_cy, width_clip, height_clip, Mode )
			tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip )
			tag.Piclip( size_clip, left_cx, top_cy, width_clip, height_clip )
			tag.movePclip( size_clip, left_cx, top_cy, width_clip, height_clip )
			tag.movePiclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		+	tag.HTML_to_ass( HTML_str )
			tag.xipol( vals )
			tag.xipol1( vals )
		+	tag.natsu( string_ipol )
		+	tag.dark( Text )
		+	tag.do_alpha( tag_txt )
		+	tag.do_tag( KE_str )
		+	tag.to_Auto4( str_dollar2 )
		+	tag.to_temp( Temp_Line )
		+	tag.v_dollar( str_dollar )
		+	tag.coupling( str_addtags )
		+	tag.operation( str_structure )
		+	tag.to_err( str_vm )
		+	tag.to_vsf( str_mod )
		+	tag.to_mod( str_vsf )
			tag.colorchange( Color_or_Table, dur )
			tag.colorchange1( Color_or_Table, dur )
			tag.colorchange2( Color_or_Table, dur )
			tag.colorchange3( Color_or_Table, dur )
			tag.colorchange4( Color_or_Table, dur )
		-	tag.ipol( Ipol1, Ipol2, i_ipol )
		+	tag.temp2( my_temp )
		+	tag.inbar( string_tags )
		+	tag.adjust( t_adjust, adj_accel )
			tag.val( val_tags )
			tag.num( string_values, special_tag )
		-	tag.module( ... )
		-	tag.module1( ... )
		-	tag.module2( ... )
		-	tag.moduler( ... )
			tag.delete( String, ... )

			librería color
			color.ass( html_color )
			color.assF( color_or_table )
		-	color.to_RGB( color_or_table )
		-	color.to_HSV( color_or_table )
		-	color.vc( color_or_table )
		-	color.r( )
		-	color.rc( CrC_color, ... )
			color.rvc( CrVC_color, ... )
		-	color.gradientv( ColorTop_or_table, ColorBottom_or_table )
		-	color.gradienth( ColorLeft_or_table, ColorRight_or_table, algorithm )
		-	color.vc_to_c( colorvc_or_table )
		-	color.c_to_vc( colorc_or_table )
		-	color.interpolate( color1_or_table, color2_or_table, Index_Ipol )
			color.vector( color1, color2 )
		-	color.delay( time_i, delay, color_i, color_f, ... )
		-	color.movedelay( dur, delay, mode, ... )
		-	color.set( Cset_times, Cset_colors, ... 
		-	color.mask( Mode, Color, Mask )
		-	color.movemask( Dur, Delay, Mode, Color, Mask )
		-	color.setmovemask( delay, mode, t, colors )
		-	color.movemaskv( Dur, Delay, Mode, Color, Mask )
		-	color.masktable( color_or_table )
		-	color.module( color1_or_table, color2_or_table )
		-	color.module1( color1_or_table, color2_or_table )
		-	color.module2( color1_or_table, color2_or_table )
			color.moduler( color1_or_table, color2_or_table )
		-	color.ipol( ... )
		-	color.loop( ... )
			color.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
			color.distance( CD_center, ... )
			color.angle( CA_origin, ... )
			color.from_error( color_or_table )
		
		librería alpha
			alpha.assF( alpha_or_table )
		-	alpha.va( alpha_or_table )
		-	alpha.r( )
			alpha.ra( ArA_alpha, ... )
			alpha.rva( ArCA_alpha, ... )
		-	alpha.gradientv( AlphaTop_or_table, AlphaBottom_or_table )
		-	alpha.gradienth( AlphaLeft_or_table, AlphaRight_or_table, algorithm )
		-	alpha.va_to_a( alphava_or_table )
		-	alpha.a_to_va( alphaa )
		-	alpha.interpolate( alpha1_or_table, alpha2_or_table, Index_Ipol )
		-	alpha.delay( time_i, delay, alpha_i, alpha_f, ... )
		-	alpha.set( Aset_times, Aset_alphas, ... )
		-	alpha.mask( Mode, Alpha, Mask )
		-	alpha.movemask( Dur, Delay, Mode, Alpha, Mask )
		-	alpha.movemaskv( Dur, Delay, Mode, Alpha, Mask )
		-	alpha.masktable( alpha_or_table )
		-	alpha.module( alpha1_or_table, alpha2_or_table )
		-	alpha.module1( alpha1_or_table, alpha2_or_table )
		-	alpha.module2( alpha1_or_table, alpha2_or_table )
			alpha.moduler( alpha1_or_table, alpha2_or_table )		
			alpha.ipol( ... )
			alpha.loop( ... )
			alpha.bigradient( Alpha_or_Table1, Alpha_or_Table2, Size_Table )
			alpha.distance( AD_center, ... )
			alpha.angle( AA_origin, ... )
			alpha.from_error( alpha_or_table )
		
		librería shape
		+	shape.ASSDraw3( Shape )
			shape.round( Shape )
		-	shape.info( Shape )
		-	shape.redraw( Shape, tract )
		-	shape.modify( Shape, modify )
			shape.filter( Shape, Filter )
		-	shape.filter2( Shape, Filter, Split )
			shape.filter3( Shape, Split, ... )
		-	shape.length( Shape )
		-	shape.width( Shape )
		-	shape.height( Shape )
		-	shape.from_clip( )
		-	shape.rotate( Shape, Angle, org_x, org_y )
		-	shape.reflect( Shape, Axis )
		-	shape.oblique( Shape, Pixel, Axis )
			shape.to_bezier( Shape )
		-	shape.reverse( Shape )
		-	shape.origin( Shape )
		-	shape.displace( Shape, Dx, Dy )
		-	shape.incenter( Shape )
		-	shape.centerpos( Shape, CenterX, CenterY )
		-	shape.firstpos( Shape, pos_x, pos_y )
		-	shape.ratio( Shape, Ratiox, Ratioy )
		-	shape.size( Shape, SizeX, SizeY )
		-	shape.array( Shape, loops, Angle_or_mode, Dxy )
		-	shape.config( Shape, Rtrn, Ratio )
		-	shape.Lmove( x1, y1, x2, y2, t1, t2, Accel )
		-	shape.Lmove2( Coor, Times )
		-	shape.Pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t )
		-	shape.Smove( Shape, t1, t2, offset_t, Relative )
		-	shape.Rmove( Rx, Ry, t1, t2, Accel, offset_t )
			shape.Rmove2( Rx, Ry, t, Accel )
			shape.Rmove3( Rx, Ry, t, Accel, offset_t )
			shape.Rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
			shape.Omove( P, t1, t2, Dur, Accel )
			shape.lineclip( Mode, Dur, Ini )
			shape.setclip( Set_clips, Set_tagfx, Indx_line )
		-	shape.animated( dur, frame_duration, frames, size_x, size_y )
		-	shape.animated2( dur, frame_duration, ... )
		-	shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	shape.movevci( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		-	shape.divide( Shape, Mark )
			shape.to_shape( Table_points )
			shape.retire( Shape, Index_1, Index_2 )
		-	shape.trajectory( Loop_t, distance_nim, distance_max )
		-	shape.Ltrajectory( length_total, length_curve, height_curve )
		-	shape.Ctrajectory( Loop_Ct, radius_min, radius_max )
		-	shape.Rtrajectory( Loop_Rt, radius_min, radius_max )
		-	shape.Strajectory( Loops_St, Radius )
		-	shape.multi1( Size_shape, Px )
		-	shape.multi2( Width, Height, Pixel )
		-	shape.multi3( Size_Shape, width_bord, Shape )
		-	shape.multi4( Size, Loop1, Loop2, n )
		-	shape.multi5( Shapes, Width, Height, Dxy )
			shape.equality( Shape1, Shape2 )
		-	shape.morphism( Size, Shape1, Shape2 )
		-	shape.bord( Shape, Bord, Size )
		-	shape.from_audio( Audio, Width, Height_scale, Thickness, Offset_time )
			shape.to_pixels( Shape, Shape2 )
			shape.fxline( P1, P2, Radius )
			shape.fxcircle( Shape )
			shape.trim( Shape, Lines, Mark, Ratio )
			shape.reduce( Shape )
			shape.rotate2( Shape, Axis, Angle )
			shape.inclip( Tags )
		
		librería text
		-	text.upper( text_up )
		-	text.lower( text_lw )
		-	text.kara( )
		-	text.infx( syl_in_fx, true_false )
		-	text.outfx( syl_out_fx )
		-	text.tag( ... )
		+	text.karaoke_true( Table )
		+	text.remove_tags( text_string )
		+	text.remove_space_in_tags( text_str )
		+	text.remove_extra_space( linetext_str )
		+	text.remove_syls_nil( linetext_str, linetext_dur )	
		+	text.to_word( l_text_str, l_text_dur )
		+	text.text2word( linetext_str, linetext_dur )
		+	text.text2syl( linetext_str, linetext_dur )
		+	text.text2char( linetext_str, linetext_dur )
		+	text.syl2hiragana( Text )
		+	text.syl2katakana( Text )
		+	text.kana2romaji( Text )
		+	text.text2stripped( text_str4 )
		+	text.char_size( )
		+	text.char2byte( string_text )
		+	text.byte2char( table_bytes )
		-	text.inside( inside, Text )
		-	text.bezier( Shape, mode, Accel, Offset_time )
		-	text.to_shape( Text, Scale, Tags )
		-	text.bord_to_shape( Text, Scale, Tags, Bord )
		-	text.do_shape( Text, Shape, Scale, Mode, Tags )
		-	text.deformed( Text, Deformed, Pixel, Axis )
		-	text.deformed2( Text, Mode )
		-	text.to_pixels( Text, Mode, Shape )
		-	text.to_clip( Text, relative_pos, iclip )
			text.bord_to_pixel( Text, Shape )
		-	text.gradienth( ... )
		-	text.gradientv( ... )
		
		librería image
			image.data( bmp_image, Return )
			image.to_pixels( bmp_image, Size )
		
		librería aegisub
		+	aegisub.word( line_text, line_dur, ci_ )
		+	aegisub.word2s( )
		+	aegisub.wordsi( ws_ )
		+	aegisub.syls2c( )
		+	aegisub.line2W( )
		+	aegisub.line2S( )
		+	aegisub.line2C( )
		+	aegisub.word2S( )
		+	aegisub.word2C( )
		+	aegisub.word2c( )
		+	aegisub.wordci( wc_ )
		-	aegisub.width( string_txt )
		-	aegisub.height( string_txt )
		
		librería effector
		+	effector.pos( t_move, t_pos, t_time )
		+	effector.knj( v_knj )
		-	effector.offset_pos( string_inPos, offset_dx, offset_dy )
		-	effector.import( Lua_file )
		-	effector.addfx( Library_fx, Name_fx )
		-	effector.savefx( New_fxname, File_fx )
		+	effector.modify_pos( )
		+	effector.new_pos( posx, posy )
		+	effector.default_val( )
		-	effector.effect_offset( )
		+	effector.decide( )
		+	effector.print_error( argument, type, function, pos )
		+	effector.run_fx( subs, sett, index )
		+	effector.preprosses_styles( styles, subtitles, has_selected_lines )
		+	effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
		+	effector.preprosses_lines( subtitles )
		+	effector.macro_fx( subtitles, selected_lines, active_line )
	}
	--]]
	------------------------------------------------------------------------------------------------------------------------
	alpha = { } color = { } effector = { } image = { } random = { } recall = { } shape = { } tag = { } temp = { } text = { }
	-- Librería de shapes prediceñadas del Kara Effector -------------------------------------------------------------------
	shape.circle	= "m 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 b 78 100 100 78 100 50 b 100 22 78 0 50 0 "
	shape.triangle  = "m 50 0 l 0 86 l 100 86 l 50 0 "
	shape.rectangle = "m 0 0 l 0 100 l 100 100 l 100 0 l 0 0 "
	shape.pixel		= "m 0 0 l 0 1 l 1 1 l 1 0 l 0 0"
	shape.pentagon	= "m 50 0 l 0 36 l 19 95 l 81 95 l 100 36 l 50 0 "
	shape.hexagon	= "m 50 0 l 0 29 l 0 87 l 50 116 l 100 87 l 100 29 l 50 0 "
	shape.octagon	= "m 29 0 l 0 29 l 0 71 l 29 100 l 71 100 l 100 71 l 100 29 l 71 0 l 29 0 "
	shape.heart		= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 106 b 75 71 100 68 100 40 b 100 16 68 0 50 25 "
	shape.heart2t	= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 100 b 75 71 100 68 100 40 b 100 16 68 0 50 25 m 79 27 b 74 25 76 20 81 22 b 90 26 93 36 93 43 b 93 48 87 48 87 43 b 87 39 86 30 79 27 "
	shape.heart_b	= "m 50 25 b 32 0 0 16 0 40 b 0 68 24 71 50 100 b 75 71 100 68 100 40 b 100 16 68 0 50 25 l 50 28 b 69 2 98 18 98 40 b 98 66 74 69 50 97 b 25 69 2 66 2 40 b 2 18 31 2 50 28 "
	shape.shine1t	= "m 0 0 l 47 50 l 0 100 l 50 53 l 100 100 l 53 50 l 100 0 l 50 47 m 42 50 b 42 61 58 61 58 50 b 58 39 42 39 42 50 "
	shape.shine2t	= "m 0 0 l 45 50 l 0 100 l 50 55 l 100 100 l 55 50 l 100 0 l 50 45 m 40 50 b 40 64 60 64 60 50 b 60 36 40 36 40 50 "
	shape.shine3t	= "m 0 0 b 35 39 61 65 100 100 b 65 61 39 35 0 0 m 100 0 b 61 35 35 61 0 100 b 39 65 65 39 100 0 "
	shape.shine4t	= "m 50 100 b 52 69 52 31 50 0 b 48 31 48 69 50 100 m 0 50 b 31 52 69 52 100 50 b 69 48 31 48 0 50 "
	shape.trebol 	= "m 1 99 l 4 106 b 21 99 44 83 53 56 b 51 73 40 88 56 98 b 72 106 80 90 77 82 b 85 86 100 82 100 69 b 100 58 87 52 64 54 b 52 55 51 50 68 48 b 85 46 94 40 95 29 b 96 18 80 10 70 19 b 70 0 40 0 40 21 b 40 33 47 37 50 43 b 54 50 52 54 47 47 b 39 38 31 26 19 27 b 0 29 0 49 13 53 b 0 58 3 80 19 79 b 39 78 40 62 51 55 b 42 79 23 92 1 99 "
	shape.feather	= "m 0 0 b 0 20 10 28 27 34 b 10 33 47 49 54 55 b 62 62 72 77 78 75 l 80 78 l 90 79 b 94 86 96 94 97 100 l 100 100 b 99 93 96 84 93 78 b 100 56 88 41 73 30 l 73 39 l 69 28 b 62 24 55 23 49 19 l 48 24 l 45 19 b 31 10 13 12 0 0 m 91 74 l 88 75 b 79 49 57 40 46 35 b 22 25 8 15 2 5 b 11 17 22 23 48 34 b 64 41 82 51 91 74 "
	shape.diamond	= "m 50 0 l 0 50 l 50 100 l 100 50 l 50 0 "
	shape.gear		= "m 3 70 l 3 70 l 17 69 l 25 78 l 22 92 l 30 97 l 40 86 l 53 86 l 60 99 l 70 96 l 68 82 l 79 73 l 92 78 l 97 69 l 86 60 l 86 46 l 100 38 l 96 29 l 82 31 l 74 21 l 77 7 l 70 3 l 60 14 l 46 13 l 38 0 l 30 2 l 30 18 l 20 26 l 6 23 l 1 31 l 13 41 l 12 53 l 0 61 l 3 70 m 24 49 b 24 15 74 15 74 49 b 74 83 24 83 24 49 "
	shape.bubble	= "m 50 100 b 78 100 100 78 100 50 b 100 22 78 0 50 0 b 22 0 0 22 0 50 b 0 78 22 100 50 100 m 50 1 b 79 1 99 21 99 50 b 99 76 80 93 68 96 b 62 98 66 94 50 94 b 34 94 38 98 32 96 b 20 93 1 78 1 50 b 1 22 22 1 50 1 m 88 22 b 79 11 75 14 85 24 b 92 38 94 33 88 22 m 12 15 b 12 19 18 19 18 15 b 18 11 12 11 12 15 m 14 16 l 15 30 l 16 16 l 30 15 l 16 14 l 15 0 l 14 14 l 0 15 m 50 94 b 63 94 61 100 52 100 b 42 100 38 94 50 94 "
	shape.note1t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 15 b 46 18 53 25 56 36 b 56 18 48 8 33 0 l 33 70 "
	shape.note2t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 27 l 93 18 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 "
	shape.note3t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 36 l 93 27 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 m 40 29 l 40 18 l 93 8 l 93 20 l 40 29 "
	shape.note4t	= "m 33 70 b 16 57 0 67 0 82 b 0 93 9 100 19 100 b 28 100 40 93 40 73 l 40 28 l 93 18 l 93 55 b 76 42 60 52 60 67 b 60 78 69 85 79 85 b 88 85 100 78 100 58 l 100 0 l 33 12 l 33 70 m 35 73 l 35 13 l 98 2 l 98 59 b 98 77 87 83 79 83 b 70 83 62 77 62 67 b 62 53 76 44 95 58 l 95 16 l 38 27 l 38 74 b 38 91 27 98 19 98 b 10 98 2 91 2 82 b 2 68 16 59 35 73 "
	shape.star		= "m 38 36 l 0 36 l 31 59 l 20 95 l 50 72 l 81 94 l 69 59 l 100 36 l 62 36 l 50 0 l 38 36 "
	shape.star1t 	= "m 0 35 l 29 56 l 33 55 b 37 44 42 66 34 58 l 30 60 l 18 95 l 48 73 l 48 69 b 38 63 60 63 51 69 l 51 73 l 81 95 l 70 60 l 65 58 b 57 65 63 44 66 55 l 71 56 l 100 35 l 63 35 l 61 39 b 64 48 47 36 59 36 l 61 33 l 50 0 l 38 33 l 40 36 b 52 36 36 49 38 39 l 36 35 l 0 35 "
	shape.star2t 	= "m 31 26 b 0 29 0 29 14 58 b 0 87 0 87 31 89 b 50 116 50 116 69 89 b 100 87 100 87 86 58 b 100 29 100 29 69 26 b 50 0 50 0 31 26 l 33 29 b 50 16 50 16 67 29 b 86 37 86 37 83 58 b 86 79 86 79 67 87 b 50 100 50 100 33 87 b 14 79 14 79 17 58 b 14 37 14 37 33 29 "
	shape.star3t 	= "m 31 26 b 0 29 0 29 14 58 b 0 87 0 87 31 89 b 50 116 50 116 69 89 b 100 87 100 87 86 58 b 100 29 100 29 69 26 b 50 0 50 0 31 26 "
	shape.star4t 	= "m 25 72 l 18 61 l 0 87 l 33 87 b 42 72 53 53 25 72 m 50 87 l 37 87 l 50 116 l 67 87 b 58 72 47 53 50 87 m 75 72 l 69 83 l 100 87 l 83 58 b 66 58 45 58 75 72 m 75 43 l 82 54 l 100 29 l 67 29 b 58 45 47 63 75 43 m 50 29 l 63 29 l 50 0 l 33 29 b 42 45 53 63 50 29 m 25 43 l 31 32 l 0 29 l 16 58 b 34 58 54 58 25 43 "
	shape.star5t 	= "m 33 29 l 0 29 l 50 116 l 100 29 l 33 29 l 50 0 l 100 87 l 0 87 l 33 29 "
	shape.star6t 	= "m 36 33 b 0 36 0 36 27 60 b 20 95 20 95 50 77 b 81 95 81 95 73 60 b 100 36 100 36 64 33 b 50 0 50 0 36 33 m 61 35 b 95 38 95 38 69 59 b 78 90 78 90 50 73 b 23 90 23 90 31 59 b 6 38 6 38 39 35 b 50 6 50 6 61 35 "
	shape.star7t 	= "m 36 33 b 0 36 0 36 27 60 b 20 95 20 95 50 77 b 81 95 81 95 73 60 b 100 36 100 36 64 33 b 50 0 50 0 36 33 "
	shape.star8t 	= "m 39 36 b 0 36 0 36 31 59 b 20 95 20 95 50 72 b 81 95 81 95 69 59 b 100 36 100 36 62 36 b 50 0 50 0 39 36 "
	shape.star9t 	= "m 0 29 l 16 58 l 0 87 l 33 87 l 50 116 l 67 87 l 100 87 l 84 58 l 100 29 l 67 29 l 50 0 l 33 29 l 0 29 l 10 35 l 37 35 l 50 12 l 63 35 l 90 35 l 77 58 l 90 81 l 63 81 l 50 104 l 37 81 l 10 81 l 23 58 l 10 35 "
	shape.star10t 	= "m 0 29 l 16 58 l 0 87 l 33 87 l 50 116 l 67 87 l 100 87 l 84 58 l 100 29 l 67 29 l 50 0 l 33 29 l 0 29 "
	shape.sakura 	= "m 50 40 l 35 0 b 10 10 0 32 0 61 b 0 88 15 117 50 130 b 85 117 100 88 100 61 b 100 32 90 10 65 0 l 50 40 "
	shape.sakura1t 	= "m 41 57 b 23 57 1 53 0 82 b 26 97 34 76 44 60 l 11 76 l 41 57 m 47 62 b 38 78 23 95 50 110 b 76 95 62 78 52 62 l 50 99 l 47 62 m 56 60 b 66 76 73 97 100 82 b 99 53 77 57 58 57 l 89 76 l 56 60 m 44 50 b 34 33 26 13 0 27 b 1 57 23 53 41 53 l 11 33 l 44 50 m 52 47 b 62 32 76 15 50 0 b 23 15 38 32 47 47 l 50 12 l 52 47 m 58 53 b 77 53 99 57 100 27 b 73 13 66 33 56 50 l 89 33 l 58 53 "
	shape.sakura2t 	= "m 50 52 l 50 40 l 16 20 l 0 28 l 0 46 l 15 55 l 27 46 l 14 36 l 50 52 m 46 54 l 35 48 l 0 67 l 0 86 l 16 94 l 30 86 l 30 72 l 14 79 l 46 54 m 46 59 l 34 67 l 34 104 l 50 114 l 66 104 l 66 88 l 52 81 l 50 100 l 46 59 m 50 62 l 50 75 l 84 94 l 100 86 l 100 67 l 85 60 l 73 67 l 87 79 l 50 62 m 54 60 l 66 65 l 100 46 l 100 28 l 84 20 l 69 28 l 70 44 l 87 36 l 54 60 m 54 55 l 66 47 l 66 10 l 50 0 l 34 10 l 34 26 l 48 34 l 50 14 l 54 55 "
	shape.sakura3t 	= "m 47 49 b 25 49 10 52 0 63 l 0 78 l 12 85 b 21 85 26 80 31 75 b 33 69 36 63 39 58 l 18 67 l 47 49 m 44 55 b 35 70 30 84 32 102 l 47 110 l 60 102 b 61 92 61 85 59 80 b 54 76 50 70 48 65 l 47 89 l 44 55 m 48 58 b 55 73 66 88 82 92 l 95 84 l 95 69 b 90 64 85 62 78 60 b 73 61 66 62 60 61 l 79 75 l 48 58 m 53 57 b 71 60 91 54 100 46 l 100 31 l 86 22 b 79 24 72 28 68 33 b 67 39 65 45 61 50 l 80 40 l 53 57 m 56 53 b 65 39 69 24 68 8 l 53 0 l 39 8 b 38 15 38 21 41 27 b 45 31 49 36 52 41 l 53 20 l 56 53 m 52 49 b 47 34 31 21 18 15 l 4 24 l 4 39 b 9 44 15 47 23 48 b 29 46 35 46 41 46 l 22 33 l 52 49 "
	shape.sakura4t 	= "m 42 59 l 18 59 b 0 59 0 74 0 86 l 25 86 b 36 86 40 70 47 62 l 25 73 l 42 59 m 48 65 l 35 86 b 26 101 38 107 50 114 l 63 93 b 69 85 57 71 53 62 l 51 87 l 48 65 m 57 62 l 69 85 b 77 100 89 92 100 85 l 89 64 b 83 55 67 57 56 57 l 78 71 l 57 62 m 58 55 l 84 55 b 100 55 100 40 100 29 l 76 29 b 65 29 61 43 53 53 l 76 42 l 58 55 m 52 49 l 64 30 b 75 14 62 7 50 0 l 38 18 b 32 29 43 40 47 53 l 50 27 l 52 49 m 44 53 l 33 30 b 24 15 10 23 0 30 l 12 50 b 19 59 35 57 44 57 l 25 43 l 44 53 "
	shape.sakura5t 	= "m 43 55 b 33 49 4 55 4 65 b 4 76 14 90 24 90 b 33 90 27 74 43 61 l 23 68 l 43 55 m 49 61 b 38 65 27 93 35 99 b 44 105 61 104 66 96 b 72 89 55 85 54 64 l 49 85 l 49 61 m 55 59 b 55 70 75 93 85 88 b 93 83 100 66 96 59 b 91 50 80 63 61 56 l 77 69 l 55 59 m 58 52 b 68 58 98 52 98 41 b 98 31 87 18 77 18 b 68 18 74 33 58 46 l 78 39 l 58 52 m 52 46 b 63 41 74 12 66 6 b 57 0 39 2 33 10 b 29 18 45 22 48 43 l 52 21 l 52 46 m 45 46 b 46 36 25 12 15 18 b 6 24 0 41 5 49 b 10 58 20 43 40 50 l 23 38 l 45 46 "
	shape.sakura6t	= "m 46 75 b 29 79 37 99 50 110 b 64 99 72 79 53 75 l 50 90 l 46 75 m 30 61 b 19 48 4 65 0 81 b 15 87 39 85 33 68 l 18 71 l 30 61 m 67 68 b 61 85 85 87 100 81 b 96 65 81 48 70 61 l 82 71 l 67 68 m 53 34 b 72 31 64 10 50 0 b 37 10 29 32 46 34 l 50 21 l 53 34 m 69 48 b 79 60 96 43 100 28 b 85 22 61 25 67 41 l 82 38 l 69 48 m 34 41 b 39 25 15 22 0 28 b 3 43 22 60 31 48 l 18 38 l 34 41 "
	shape.sakura7t 	= "m 46 75 b 28 79 37 99 50 110 b 64 99 72 79 53 75 l 50 90 l 46 75 m 30 61 b 19 48 4 65 0 81 b 15 87 39 85 33 68 l 18 71 l 30 61 m 66 68 b 61 85 85 87 100 81 b 96 65 81 48 69 61 l 82 71 l 66 68 m 53 34 b 72 31 64 10 50 0 b 37 10 28 31 46 34 l 50 21 l 53 34 m 69 48 b 81 60 96 43 100 28 b 85 22 61 25 66 41 l 82 38 l 69 48 m 33 41 b 39 25 15 22 0 28 b 4 43 19 60 30 48 l 18 38 l 33 41 m 55 42 b 55 34 44 34 44 42 b 44 50 55 50 55 42 m 55 67 b 55 59 44 59 44 67 b 44 75 55 75 55 67 m 44 48 b 44 40 33 40 33 48 b 33 56 44 56 44 48 m 44 61 b 44 53 33 53 33 61 b 33 69 44 69 44 61 m 66 48 b 66 40 55 40 55 48 b 55 56 66 56 66 48 m 66 61 b 66 53 55 53 55 61 b 55 69 66 69 66 61 "
	shape.snow1t 	= "m 30 45 l 30 52 l 20 52 l 20 55 l 30 55 l 30 62 l 16 70 l 2 61 l 0 64 l 13 72 l 1 79 l 3 82 l 15 75 l 15 90 l 18 90 l 18 73 l 32 65 l 39 69 l 33 78 l 36 80 l 42 71 l 48 74 l 48 89 l 32 98 l 34 101 l 48 93 l 48 108 l 52 108 l 52 93 l 66 101 l 67 98 l 52 89 l 52 74 l 58 71 l 64 80 l 67 78 l 61 69 l 67 65 l 82 73 l 82 90 l 85 90 l 85 75 l 97 82 l 99 79 l 87 72 l 100 64 l 98 61 l 84 70 l 70 62 l 70 55 l 80 55 l 80 52 l 70 52 l 70 45 l 84 37 l 98 46 l 100 43 l 87 35 l 99 28 l 97 25 l 85 32 l 85 16 l 82 17 l 82 34 l 68 42 l 61 38 l 67 30 l 64 28 l 58 36 l 52 33 l 52 18 l 68 9 l 66 6 l 52 14 l 52 0 l 48 0 l 48 14 l 34 6 l 32 9 l 48 18 l 48 33 l 42 36 l 36 28 l 33 30 l 39 38 l 32 42 l 18 34 l 18 17 l 15 16 l 15 32 l 3 25 l 1 28 l 13 35 l 0 43 l 2 46 l 16 37 l 30 45 l 35 45 l 50 37 l 65 45 l 65 62 l 50 70 l 35 62 l 35 45 "
	shape.snow2t 	= "m 18 45 l 14 29 l 6 31 l 8 39 l 0 41 l 2 49 l 18 45 l 21 44 l 32 42 l 42 47 l 32 53 l 21 51 l 19 59 l 27 60 l 23 62 l 8 59 l 5 66 l 13 68 l 11 76 l 19 77 l 23 62 l 27 60 l 25 68 l 33 70 l 35 60 l 46 54 l 46 65 l 38 72 l 35 75 l 22 87 l 28 93 l 35 87 l 42 93 l 48 87 l 35 75 l 38 72 l 45 78 l 50 73 l 56 78 l 62 72 l 65 75 l 52 87 l 59 93 l 65 87 l 71 93 l 78 86 l 65 75 l 62 72 l 54 65 l 54 54 l 65 60 l 67 70 l 75 68 l 73 60 l 77 62 l 80 77 l 89 76 l 87 68 l 95 67 l 93 59 l 77 62 l 73 60 l 80 59 l 78 51 l 68 53 l 58 47 l 68 42 l 78 44 l 81 45 l 97 49 l 100 41 l 92 39 l 94 31 l 86 29 l 81 45 l 78 44 l 80 37 l 73 35 l 75 26 l 67 24 l 67 21 l 84 26 l 86 18 l 77 15 l 79 7 l 71 5 l 67 21 l 67 24 l 65 35 l 54 40 l 54 29 l 63 22 l 57 16 l 50 22 l 50 17 l 62 6 l 56 0 l 50 6 l 44 0 l 38 6 l 50 17 l 50 22 l 43 16 l 37 22 l 46 29 l 46 40 l 35 35 l 33 24 l 33 21 l 29 5 l 21 7 l 23 15 l 14 18 l 16 26 l 33 21 l 33 24 l 25 26 l 27 35 l 19 37 l 21 44 "
	shape.snow3t 	= "m 25 39 l 11 35 l 0 47 l 11 59 l 25 55 l 19 64 l 17 61 l 6 66 l 14 68 l 11 75 l 22 69 l 20 66 l 32 65 l 22 74 l 24 90 l 39 86 l 44 74 l 49 83 l 44 83 l 44 94 l 50 87 l 56 94 l 56 83 l 51 83 l 56 74 l 61 86 l 76 90 l 78 74 l 68 65 l 80 66 l 78 69 l 88 75 l 86 68 l 94 67 l 83 61 l 81 64 l 75 55 l 88 59 l 100 47 l 88 35 l 75 39 l 81 30 l 83 33 l 94 27 l 86 26 l 88 18 l 78 24 l 80 28 l 68 29 l 78 19 l 76 4 l 61 8 l 56 20 l 51 11 l 56 11 l 56 0 l 50 7 l 44 0 l 44 11 l 49 11 l 43 20 l 39 8 l 24 4 l 22 19 l 32 29 l 20 28 l 22 24 l 11 18 l 14 26 l 6 27 l 17 33 l 19 30 l 25 39 l 46 47 b 38 47 29 57 19 47 l 28 41 l 46 47 l 48 43 b 43 36 29 35 34 19 l 42 24 l 48 43 l 52 43 l 58 24 l 66 19 b 71 35 56 36 52 43 l 54 47 l 72 41 l 81 46 b 71 57 62 47 54 47 l 52 51 b 57 58 71 59 66 75 l 58 70 l 52 51 l 48 51 l 42 70 l 34 75 b 29 59 42 58 48 51 l 46 47 "
	shape.flower1t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 "
	shape.flower2t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 m 43 15 b 43 6 55 6 55 15 b 55 24 43 24 43 15 m 9 42 b 9 33 21 33 21 42 b 21 51 9 51 9 42 m 23 82 b 23 73 35 73 35 82 b 35 91 23 91 23 82 m 66 82 b 66 73 78 73 78 82 b 78 91 66 91 66 82 m 78 40 b 78 31 90 31 90 40 b 90 49 78 49 78 40 "
	shape.flower3t 	= "m 44 44 b 30 41 25 18 0 36 b 10 66 22 68 40 56 b 33 69 10 66 20 95 b 50 95 56 84 50 62 b 61 75 50 95 81 95 b 90 66 81 56 60 56 b 76 50 90 66 100 36 b 75 18 65 22 56 44 b 57 26 75 18 50 0 b 25 18 28 33 44 44 m 19 23 b 19 14 31 14 31 23 b 31 32 19 32 19 23 m 8 69 b 8 60 20 60 20 69 b 20 78 8 78 8 69 m 48 91 b 48 82 60 82 60 91 b 60 100 48 100 48 91 m 83 62 b 83 53 95 53 95 62 b 95 71 83 71 83 62 m 64 17 b 64 8 76 8 76 17 b 76 26 64 26 64 17 m 44 52 b 44 43 56 43 56 52 b 56 61 44 61 44 52 "
	shape.flower4t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 m 5 39 b 5 32 15 32 15 39 b 15 46 5 46 5 39 m 84 39 b 84 32 94 32 94 39 b 94 46 84 46 84 39 m 45 11 b 45 4 55 4 55 11 b 55 18 45 18 45 11 m 21 87 b 21 80 31 80 31 87 b 31 94 21 94 21 87 m 70 87 b 70 80 80 80 80 87 b 80 94 70 94 70 87 "
	shape.flower5t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 "
	shape.flower6t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 m 44 19 b 44 28 56 28 56 19 b 56 10 44 10 44 19 m 24 80 b 24 89 36 89 36 80 b 36 71 24 71 24 80 m 64 80 b 64 89 76 89 76 80 b 76 71 64 71 64 80 m 12 42 b 12 51 24 51 24 42 b 24 33 12 33 12 42 m 76 42 b 76 51 88 51 88 42 b 88 33 76 33 76 42 m 40 53 b 40 67 60 67 60 53 b 60 40 40 40 40 53 "
	shape.flower7t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 m 44 19 b 44 28 56 28 56 19 b 56 10 44 10 44 19 m 24 80 b 24 89 36 89 36 80 b 36 71 24 71 24 80 m 64 80 b 64 89 76 89 76 80 b 76 71 64 71 64 80 m 12 42 b 12 51 24 51 24 42 b 24 33 12 33 12 42 m 76 42 b 76 51 88 51 88 42 b 88 33 76 33 76 42 "
	shape.flower8t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 38 69 46 91 23 91 b 16 69 38 69 50 53 b 31 46 14 61 6 38 b 24 24 31 46 50 53 b 50 33 31 20 50 6 b 69 20 50 33 50 53 b 69 46 75 25 94 38 b 87 61 69 46 50 53 b 62 69 85 68 78 91 b 54 91 62 69 50 53 "
	shape.flower9t 	= "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 "
	shape.flower10t = "m 50 53 b 31 59 10 66 20 95 b 50 95 50 73 50 53 b 50 73 50 95 81 95 b 90 66 69 59 50 53 b 69 59 90 66 100 36 b 75 18 62 36 50 53 b 62 36 75 18 50 0 b 25 18 38 36 50 53 b 38 36 25 18 0 36 b 10 66 31 59 50 53 b 0 55 12 20 50 53 b 31 7 70 7 50 53 b 87 20 100 55 50 53 b 93 79 62 100 50 53 b 38 100 7 79 50 53 m 11 64 b 11 71 21 71 21 64 b 21 57 11 57 11 64 m 80 64 b 80 71 90 71 90 64 b 90 57 80 57 80 64 m 45 89 b 45 96 55 96 55 89 b 55 82 45 82 45 89 m 24 23 b 24 30 34 30 34 23 b 34 16 24 16 24 23 m 66 23 b 66 30 76 30 76 23 b 76 16 66 16 66 23 "
	shape.flower11t = "m 100 88 b 79 99 57 89 57 62 b 80 75 100 37 100 88 m 49 66 b 49 92 92 92 49 116 b 28 104 25 80 49 66 m 41 62 b 19 75 38 110 0 88 b 0 65 18 48 41 62 m 41 54 b 20 40 0 77 0 28 b 19 17 41 26 41 54 m 49 49 b 49 23 8 23 49 0 b 68 11 71 36 49 49 m 57 54 b 80 40 58 5 100 28 b 100 54 81 67 57 54 "
	shape.flower12t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 m 44 58 b 44 66 56 66 56 58 b 56 50 44 50 44 58 m 24 82 b 24 90 12 90 12 82 b 12 74 24 74 24 82 m 60 97 b 60 105 48 105 48 97 b 48 89 60 89 60 97 m 93 76 b 93 84 81 84 81 76 b 81 68 93 68 93 76 m 91 34 b 91 42 79 42 79 34 b 79 26 91 26 91 34 m 54 17 b 54 25 42 25 42 17 b 42 9 54 9 54 17 m 20 39 b 20 47 8 47 8 39 b 8 31 20 31 20 39 "
	shape.flower13t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 m 44 58 b 44 66 56 66 56 58 b 56 50 44 50 44 58 "
	shape.flower14t = "m 0 87 b 21 99 43 89 43 62 b 20 75 0 38 0 87 m 50 66 b 50 92 8 92 50 116 b 71 103 74 80 50 66 m 57 62 b 80 75 61 109 100 87 b 100 65 81 49 57 62 m 57 54 b 79 41 100 77 100 29 b 80 17 57 27 57 54 m 50 50 b 50 24 92 24 50 0 b 30 11 27 37 50 50 m 43 54 b 20 41 42 4 0 29 b 0 54 19 67 43 54 "
	shape.flower15t = "m 30 71 l 33 62 b 16 59 0 59 0 88 b 24 102 33 88 38 74 l 30 71 m 50 84 l 44 77 b 33 88 24 102 50 117 b 76 102 68 88 56 77 l 50 84 m 70 71 l 62 74 b 68 88 76 102 100 88 b 100 59 84 59 67 62 l 70 71 m 70 47 l 67 56 b 84 59 100 59 100 30 b 76 16 67 30 62 45 l 70 47 m 50 35 l 56 42 b 67 30 76 16 50 1 b 24 16 33 30 44 42 l 50 35 m 30 47 l 38 45 b 33 30 24 16 0 30 b 0 59 16 59 33 56 l 30 47 m 0 35 b 0 25 14 25 14 35 b 14 45 0 45 0 35 m 0 83 b 0 73 14 73 14 83 b 14 93 0 93 0 83 m 43 108 b 43 98 57 98 57 108 b 57 118 43 118 43 108 m 43 10 b 43 0 57 0 57 10 b 57 20 43 20 43 10 m 86 83 b 86 73 100 73 100 83 b 100 93 86 93 86 83 m 86 35 b 86 25 100 25 100 35 b 100 45 86 45 86 35 "
	shape.flower16t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 83 l 44 76 b 33 87 24 102 50 116 b 76 102 68 87 56 76 l 50 83 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 56 41 b 67 29 76 14 50 0 b 24 14 33 29 44 41 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 26 29 b 26 19 40 19 40 29 b 40 39 26 39 26 29 m 60 29 b 60 19 74 19 74 29 b 74 39 60 39 60 29 m 9 58 b 9 48 23 48 23 58 b 23 68 9 68 9 58 m 77 58 b 77 48 91 48 91 58 b 91 68 77 68 77 58 m 26 87 b 26 77 40 77 40 87 b 40 97 26 97 26 87 m 60 87 b 60 77 74 77 74 87 b 74 97 60 97 60 87 "
	shape.flower17t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 83 l 44 76 b 33 87 24 102 50 116 b 76 102 68 87 56 76 l 50 83 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 56 41 b 67 29 76 14 50 0 b 24 14 33 29 44 41 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 "
	shape.flower18t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 82 l 43 75 b 33 87 24 102 50 116 b 76 102 68 87 57 75 l 50 82 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 57 42 b 67 29 76 14 50 0 b 24 14 33 29 43 42 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 58 34 l 42 34 l 50 21 l 58 34 m 82 40 l 74 53 l 66 40 l 82 40 m 34 40 l 26 53 l 18 40 l 34 40 m 58 82 l 50 95 l 42 82 l 58 82 m 34 76 l 18 76 l 26 63 l 34 76 m 82 76 l 66 76 l 74 63 l 82 76 m 5 35 b 5 28 15 28 15 35 b 15 42 5 42 5 35 m 5 81 b 5 74 15 74 15 81 b 15 88 5 88 5 81 m 85 81 b 85 74 95 74 95 81 b 95 88 85 88 85 81 m 85 35 b 85 28 95 28 95 35 b 95 42 85 42 85 35 m 45 104 b 45 97 55 97 55 104 b 55 111 45 111 45 104 m 45 12 b 45 5 55 5 55 12 b 55 19 45 19 45 12 "
	shape.flower19t = "m 30 70 l 33 61 b 16 58 0 58 0 87 b 24 102 33 87 38 73 l 30 70 m 50 82 l 43 75 b 33 87 24 102 50 116 b 76 102 68 87 57 75 l 50 82 m 70 70 l 62 73 b 68 87 76 102 100 87 b 100 58 84 58 67 61 l 70 70 m 70 46 l 67 55 b 84 58 100 58 100 29 b 76 14 67 29 62 44 l 70 46 m 50 34 l 57 42 b 67 29 76 14 50 0 b 24 14 33 29 43 42 l 50 34 m 30 46 l 38 44 b 33 29 24 14 0 29 b 0 58 16 58 33 55 l 30 46 m 58 34 l 42 34 l 50 21 l 58 34 m 82 40 l 74 53 l 66 40 l 82 40 m 34 40 l 26 53 l 18 40 l 34 40 m 58 82 l 50 95 l 42 82 l 58 82 m 34 76 l 18 76 l 26 63 l 34 76 m 82 76 l 66 76 l 74 63 l 82 76 "
	shape.flower20t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 19 43 b 19 35 31 35 31 43 b 31 51 19 51 19 43 m 19 73 b 19 65 31 65 31 73 b 31 81 19 81 19 73 m 69 43 b 69 35 81 35 81 43 b 81 51 69 51 69 43 m 69 73 b 69 65 81 65 81 73 b 81 81 69 81 69 73 m 44 87 b 44 79 56 79 56 87 b 56 95 44 95 44 87 m 44 28 b 44 20 56 20 56 28 b 56 36 44 36 44 28 m 44 58 b 44 50 56 50 56 58 b 56 66 44 66 44 58 m 0 58 b 0 50 12 50 12 58 b 12 66 0 66 0 58 m 88 58 b 88 50 100 50 100 58 b 100 66 88 66 88 58 m 22 96 b 22 88 34 88 34 96 b 34 104 22 104 22 96 m 66 20 b 66 12 78 12 78 20 b 78 28 66 28 66 20 m 22 20 b 22 12 34 12 34 20 b 34 28 22 28 22 20 m 67 96 b 67 88 79 88 79 96 b 79 104 67 104 67 96 "
	shape.flower21t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 0 58 b 0 50 12 50 12 58 b 12 66 0 66 0 58 m 88 58 b 88 50 100 50 100 58 b 100 66 88 66 88 58 m 22 96 b 22 88 34 88 34 96 b 34 104 22 104 22 96 m 66 20 b 66 12 78 12 78 20 b 78 28 66 28 66 20 m 22 20 b 22 12 34 12 34 20 b 34 28 22 28 22 20 m 67 96 b 67 88 79 88 79 96 b 79 104 67 104 67 96 "
	shape.flower22t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 19 43 b 19 35 31 35 31 43 b 31 51 19 51 19 43 m 19 73 b 19 65 31 65 31 73 b 31 81 19 81 19 73 m 69 43 b 69 35 81 35 81 43 b 81 51 69 51 69 43 m 69 73 b 69 65 81 65 81 73 b 81 81 69 81 69 73 m 44 87 b 44 79 56 79 56 87 b 56 95 44 95 44 87 m 44 28 b 44 20 56 20 56 28 b 56 36 44 36 44 28 m 44 58 b 44 50 56 50 56 58 b 56 66 44 66 44 58 "
	shape.flower23t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 56 48 l 78 42 l 61 58 l 78 75 l 56 67 l 50 88 l 44 67 l 23 75 l 39 58 l 23 42 l 44 48 l 50 28 l 56 48 "
	shape.flower24t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 m 56 48 l 94 33 l 61 58 l 94 84 l 56 67 l 50 109 l 44 67 l 6 84 l 39 58 l 6 33 l 44 48 l 50 8 l 56 48 "
	shape.flower25t = "m 30 70 l 33 58 b 16 58 0 58 0 87 b 24 102 33 87 41 72 l 30 70 m 50 81 l 41 72 b 33 87 24 102 50 116 b 76 102 68 87 59 72 l 50 81 m 70 70 l 59 72 b 68 87 76 102 100 87 b 100 58 84 58 67 58 l 70 70 m 70 46 l 67 58 b 84 58 100 58 100 29 b 76 14 67 29 59 43 l 70 46 m 50 34 l 59 43 b 67 29 76 14 50 0 b 24 14 33 29 41 43 l 50 34 m 30 46 l 41 43 b 33 29 24 14 0 29 b 0 58 16 58 33 58 l 30 46 "
	shape.flower26t = "m 50 55 b 33 98 44 110 50 110 b 54 110 64 98 50 55 b 78 88 95 86 97 83 b 100 79 94 63 50 55 b 6 63 0 79 2 83 b 4 86 21 88 50 55 b 21 23 4 25 2 28 b 0 31 6 46 50 55 b 94 46 100 31 97 28 b 95 25 78 23 50 55 b 64 14 53 0 50 0 b 45 0 33 14 50 55 m 100 55 b 100 42 83 42 83 55 b 83 68 100 68 100 55 m 17 55 b 17 42 0 42 0 55 b 0 68 17 68 17 55 m 78 91 b 78 78 61 78 61 91 b 61 103 78 103 78 91 m 37 91 b 37 78 20 78 20 91 b 20 103 37 103 37 91 m 78 19 b 78 7 61 7 61 19 b 61 32 78 32 78 19 m 37 19 b 37 7 20 7 20 19 b 20 32 37 32 37 19 m 62 55 b 62 38 38 38 38 55 b 38 72 62 72 62 55 "
	shape.flower27t = "m 50 55 b 35 98 45 110 50 110 b 55 110 65 98 50 55 b 79 88 96 87 98 83 b 100 80 95 63 50 55 b 7 63 0 80 2 83 b 4 87 21 88 50 55 b 21 23 4 25 2 28 b 0 31 7 47 50 55 b 95 47 100 31 98 28 b 96 25 79 23 50 55 b 65 14 55 0 50 0 b 45 0 35 14 50 55 m 62 55 b 62 38 38 38 38 55 b 38 72 62 72 62 55 "
	shape.flower28t = "m 50 55 b 35 98 45 110 50 110 b 55 110 65 98 50 55 b 79 88 96 87 98 83 b 100 80 95 63 50 55 b 7 63 0 80 2 83 b 4 87 21 88 50 55 b 21 23 4 25 2 28 b 0 31 7 47 50 55 b 95 47 100 31 98 28 b 96 25 79 23 50 55 b 65 14 55 0 50 0 b 45 0 35 14 50 55 "
	shape.flower29t = "m 50 55 b 33 98 44 110 50 110 b 54 110 64 98 50 55 b 78 88 95 86 97 83 b 100 79 94 63 50 55 b 6 63 0 79 2 83 b 4 86 21 88 50 55 b 21 23 4 25 2 28 b 0 31 6 46 50 55 b 94 46 100 31 97 28 b 95 25 78 23 50 55 b 64 14 53 0 50 0 b 45 0 33 14 50 55 m 100 55 b 100 42 83 42 83 55 b 83 68 100 68 100 55 m 17 55 b 17 42 0 42 0 55 b 0 68 17 68 17 55 m 78 91 b 78 78 61 78 61 91 b 61 103 78 103 78 91 m 37 91 b 37 78 20 78 20 91 b 20 103 37 103 37 91 m 78 19 b 78 7 61 7 61 19 b 61 32 78 32 78 19 m 37 19 b 37 7 20 7 20 19 b 20 32 37 32 37 19 "
	shape.cristal17 = "m 56 50 l 64 100 l 38 78 l 56 50 m 56 50 l 24 100 l 0 65 l 56 50 m 56 50 l 0 65 l 28 39 l 56 50 m 56 50 l 31 0 l 0 28 l 56 50 m 56 50 l 78 0 l 42 22 l 56 50 m 56 50 l 100 40 l 68 23 l 56 50 m 56 50 l 100 40 l 61 80 l 56 50 m 100 40 l 61 80 l 56 50 m 100 40 l 77 64 l 100 100 l 100 40 m 61 80 l 100 100 l 77 64 l 61 80 m 61 80 l 64 100 l 100 100 l 61 80 m 38 78 l 24 100 l 64 100 l 38 78 m 0 65 l 0 100 l 24 100 l 0 65 m 0 28 l 0 65 l 28 39 l 0 28 m 31 0 l 0 0 l 0 28 l 31 0 m 78 0 l 31 0 l 42 22 l 78 0 m 100 0 l 68 23 l 100 40 l 100 0 m 100 0 l 78 0 l 68 23 l 100 0 "
	shape.geometric10 = "m 0 50 l 0 100 l 100 100 l 100 50 l 90 50 l 90 90 l 10 90 l 10 50 l 0 50 m 0 50 l 10 50 l 10 10 l 90 10 l 90 50 l 100 50 l 100 0 l 0 0 l 0 50 m 50 90 l 50 80 l 20 80 l 20 20 l 50 20 l 50 10 l 10 10 l 10 90 l 50 90 m 50 90 l 90 90 l 90 10 l 50 10 l 50 20 l 80 20 l 80 80 l 50 80 l 50 90 m 20 50 l 20 80 l 80 80 l 80 50 l 70 50 l 70 70 l 30 70 l 30 50 l 20 50 m 20 50 l 30 50 l 30 30 l 70 30 l 70 50 l 80 50 l 80 20 l 20 20 l 20 50 m 50 70 l 50 60 l 40 60 l 40 40 l 50 40 l 50 30 l 30 30 l 30 70 l 50 70 m 50 70 l 70 70 l 70 30 l 50 30 l 50 40 l 60 40 l 60 60 l 50 60 l 50 70 m 40 50 l 40 60 l 60 60 l 60 50 l 40 50 m 40 50 l 60 50 l 60 40 l 40 40 l 40 50 "
	shape.diagonal13r = "m 15 0 l 0 0 l 0 15 l 15 0 m 15 0 l 0 15 l 0 30 l 30 0 l 15 0 m 30 0 l 0 30 l 0 45 l 45 0 l 30 0 m 45 0 l 0 45 l 0 60 l 60 0 l 45 0 m 60 0 l 0 60 l 0 75 l 75 0 l 60 0 m 75 0 l 0 75 l 0 90 l 90 0 l 75 0 m 90 0 l 0 90 l 0 100 l 5 100 l 100 5 l 100 0 l 90 0 m 100 5 l 5 100 l 20 100 l 100 20 l 100 5 m 100 20 l 20 100 l 35 100 l 100 35 l 100 20 m 100 35 l 35 100 l 50 100 l 100 50 l 100 35 m 100 50 l 50 100 l 65 100 l 100 65 l 100 50 m 100 65 l 65 100 l 80 100 l 100 80 l 100 65 m 100 80 l 80 100 l 100 100 l 100 80 "
	shape.diagonal13l = "m 0 85 l 0 100 l 15 100 l 0 85 m 0 85 l 15 100 l 30 100 l 0 70 l 0 85 m 0 70 l 30 100 l 45 100 l 0 55 l 0 70 m 0 55 l 45 100 l 60 100 l 0 40 l 0 55 m 0 40 l 60 100 l 75 100 l 0 25 l 0 40 m 0 25 l 75 100 l 90 100 l 0 10 l 0 25 m 0 10 l 90 100 l 100 100 l 100 95 l 5 0 l 0 0 l 0 10 m 5 0 l 100 95 l 100 80 l 20 0 l 5 0 m 20 0 l 100 80 l 100 65 l 35 0 l 20 0 m 35 0 l 100 65 l 100 50 l 50 0 l 35 0 m 50 0 l 100 50 l 100 35 l 65 0 l 50 0 m 65 0 l 100 35 l 100 20 l 80 0 l 65 0 m 80 0 l 100 20 l 100 0 l 80 0 "
	
	--------------------------------------------------------------------------------------------------
	-- Función set_temp de Pyointa-sensei y Función remember -----------------------------------------
	function set_temp( ref, val )
		effector.print_error( ref, "numberstring", "set_temp", 1 )
		effector.print_error( val, "true", "set_temp", 2 )
		temp[ref] = val
		return val
	end
	
	function remember( ref, val )
		effector.print_error( ref, "numberstring", "remember", 1 )
		effector.print_error( val, "true", "remember", 2 )
		recall[ref] = val
		return val
	end
	
	--------------------------------------------------------------------------------------------------
	-- Librería de Funciones de "tiempo" -------------------------------------------------------------
	function HMS_to_ms( time_HMS )
		--effector.print_error( time_HMS, "stringtable", "HMS_to_ms", 1 )
		if type( time_HMS ) == "string" then
			if time_HMS:match( "%d+%:%d+%:%d+%.%d+" ) then
				local H, M, S, ms = time_HMS:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
				if ms:len( ) == 2 then
					ms = 10*ms
				elseif ms:len( ) == 1 then
					ms = 100*ms
				end
				return H*3600000 + M*60000 + S*1000 + ms
			else
				return tonumber( time_HMS )
			end
		elseif type( time_HMS ) == "table" then
			if type( time_HMS[1] ) == "string" then
				if time_HMS[1]:match( "%d+%:%d+%:%d+%.%d+" ) then
					local H, M, S, ms = time_HMS[1]:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
					if ms:len( ) == 2 then
						ms = 10*ms
					elseif ms:len( ) == 1 then
						ms = 100*ms
					end
					time_HMS[1] = H*3600000 + M*60000 + S*1000 + ms
				else
					time_HMS[1] = tonumber( time_HMS[1] )
				end
			end
			if type( time_HMS[2] ) == "string" then
				if time_HMS[2]:match( "%d+%:%d+%:%d+%.%d+" ) then
					local H, M, S, ms = time_HMS[2]:match( "(%d+)%:(%d+)%:(%d+)%.(%d+)" )
					if ms:len( ) == 2 then
						ms = 10*ms
					elseif ms:len( ) == 1 then
						ms = 100*ms
					end
					time_HMS[2] = H*3600000 + M*60000 + S*1000 + ms - time_HMS[1]
				else
					time_HMS[2] = tonumber( time_HMS[2] )
				end
			end
			return { time_HMS[1], time_HMS[2] }
		end
		return time_HMS
	end
	
	function ms_to_HMS( time_ms )
		effector.print_error( time_ms, "numberstring", "ms_to_HMS", 1 )
		local tms, time_H, time_M, time_S = tonumber( time_ms ), 0, 0, 0
		time_H = floor( tms/3600000 )
		tms = tms - time_H*3600000
		time_M = floor( tms/60000 )
		tms = tms - time_M*60000
		time_S = floor( tms/1000 )
		tms = tms - time_S*1000
		if time_M < 10 then
			time_M = "0" .. time_M
		end
		if time_S < 10 then
			time_S = "0" .. time_S
		end
		if tostring( tms ):len( ) == 1 then
			tms = "00" .. tms
		elseif tostring( tms ):len( ) == 2 then
			tms =  "0" .. tms
		end
		return format( "%s:%s:%s.%s", time_H, time_M, time_S, tms )
	end --ms_to_HMS((j-1)*40)
	
	function time_to_frame( Time )
		effector.print_error( Time, "numberstring", "time_to_frame", 1 )
		local Time = tostring( Time )
		if Time:match( "%d+%:%d+%:%d+%.%d+" ) then
			if type( HMS_to_ms( Time ) ) == "table" then
				Time = HMS_to_ms( Time )[1]
			else
				Time = HMS_to_ms( Time )
			end
		end
		return ceil( Time/frame_dur )
	end
	
	function frame_to_ms( frames )
		effector.print_error( frames, "number", "frame_to_ms", 1 )
		return math.round( frames*frame_dur, 2 )
	end
	
	function frame_to_HMS( frames )
		effector.print_error( frames, "number", "frame_to_HMS", 1 )
		local ms_ = frame_to_ms( frames )
		return ms_to_HMS( ms_ )
	end

	function time_mid1( Delay )
		effector.print_error( Delay, "number", "time_mid1", 1 )
		local Delay = Delay or 60
		if val_i <= (val_n + 1)/2 then
			return Delay*(val_i - 1) - 200
		end
		return Delay*(val_n - val_i + 0.5) - 200
	end

	function time_mid2( Delay )
		effector.print_error( Delay, "number", "time_mid2", 1 )
		local Delay = Delay or 60
		if val_i >= (val_n + 1)/2 then
			return Delay*(val_i - val_n - 1) - 200
		end
		return Delay*(-val_i + 0.5) - 200
	end	
	
	function time_li( Delay )
		effector.print_error( Delay, "number", "time_li", 1 )
		local Delay = Delay or 40
		return Delay*(val_i - 1) - 200
	end
	
	function time_lo( Delay )
		effector.print_error( Delay, "number", "time_lo", 1 )
		local Delay = Delay or 40
		return Delay*(val_i - val_n - 1) + 200
	end
	
	--------------------------------------------------------------------------------------------------
	-- Librería de Funciones "random" ----------------------------------------------------------------
	function r( r_i, r_f, r_step )
		if r_i == nil then
			return math.random( )
		end
		if r_f == nil then
			return math.random( r_i )
		end
		local r_step = r_step or 1
		effector.print_error( r_i, "number", "r", 1 )
		effector.print_error( r_f, "number", "r", 2 )
		effector.print_error( r_step, "number", "r", 3 )
		local r_ii, r_ff = math.min( r_i, r_f ), math.max( r_i, r_f )
		if r_step == 0 then
			r_step = 1
		else
			r_step = abs( r_step )
		end
		return math.random( math.round( r_ii/r_step ), math.round( r_ff/r_step ) )*r_step
	end
	rand = r	
	
	function random.color( H, S, V )
		local Hrc, Src, Vrc = R( 360 ), 1, 1
		if type( H ) == "table" then
			Hrc = R( H[2]%361, H[1]%361 )
		elseif type( H ) == "number" then
			Hrc = H%361
		end
		if type( S ) == "table" then
			Src = R( S[2]%101, S[1]%101 )/100
		elseif type( S ) == "number" then
			Src = (S%101)/100
		end
		if type( V ) == "table" then
			Vrc = R( V[2]%101, V[1]%101 )/100
		elseif type( V ) == "number" then
			Vrc = (V%101)/100
		end
		return ass_color( HSV_to_RGB( Hrc, Src, Vrc ) )
	end
	
	function random.colorvc( H, S, V )
		return format( "(%s,%s,%s,%s)", random.color( H, S, V ), random.color( H, S, V ), random.color( H, S, V ), random.color( H, S, V ) )
	end
	
	function random.alpha( alpha_i, alpha_f )
		local ra_i, ra_f = 0, 255
		if type( alpha_i ) == "string" then
			ra_i = tonumber( alpha_i:match( "(%x%x)" ), 16 )
		elseif type( alpha_i ) == "number" then
			ra_i = alpha_i%256
		end
		if type( alpha_f ) == "string" then
			ra_f = tonumber( alpha_f:match( "(%x%x)" ), 16 )
		elseif type( alpha_i ) == "number" then
			ra_f = alpha_f%256
		end
		return ass_alpha( R( ra_f, ra_i ) )
	end
	
	function random.alphava( Ai, Af )
		return format( "(%s,%s,%s,%s)", random.alpha( Ai, Af ), random.alpha( Ai, Af ), random.alpha( Ai, Af ), random.alpha( Ai, Af ) )
	end

	function random.e( ... )
		local Table_e = { }
		if type( ... ) == "table" then
			Table_e = ...
		else
			Table_e = { ... }
		end
		return Table_e[ R( #Table_e ) ]
	end
	
	function random.unique( table_or_number, index_r ) --(table_or_number[, index_r])
		effector.print_error( table_or_number, "numbertable", "random.unique", 1 )
		local Table_u, Ind = { }, 0
		if index_r == nil then
			return table.disorder( table_or_number )
		end
		if index_r == 1 then
			Table_u = table.disorder( table_or_number )
		end
		effector.print_error( index_r, "number", "random.unique", 2 )
		Ind = #Table_u - #Table_u*ceil( index_r/#Table_u ) + index_r
		return Table_u[Ind]
	end
	
	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "table" -------------------------------------------------------------
	function table.view( Table, Table_name, indent )
		local cart
		local autoref
		local function isemptytable( Table )
			return next( Table ) == nil
		end
		local function basicSerialize( o )
			local so = tostring( o )
			if type( o ) == "function" then
				local info = debug.getinfo( o, "S" )
				if info.what == "C" then
					return format( "%q", so .. ", C function" )
				else 
					return format( "%q", so .. ", defined in (" .. info.linedefined .. "-" .. info.lastlinedefined .. ") " .. info.source )
				end
			elseif type( o ) == "number"
				or type( o ) == "boolean" then
				return so
			else
				return format( "%q", so )
			end
		end
		local function addtocart( value, Table_name, indent, saved, field )
			indent = indent or ""
			saved  = saved or { }
			field  = field or Table_name
			cart   = cart .. indent .. field
			if type( value ) ~= "table" then
				cart = cart .. " = " .. basicSerialize( value ) .. ";\n"
			else
				if saved[value] then
					cart = cart .. " = {}; -- " .. saved[value] .. " (self reference)\n"
					autoref = autoref ..  Table_name .. " = " .. saved[value] .. ";\n"
				else
					saved[value] = Table_name
					if isemptytable( value ) then
						cart = cart .. " = {};\n"
					else
						cart = cart .. " = {\n"
						for k, v in pairs( value ) do
							k = basicSerialize( k )
							local fname = format( "%s[%s]", Table_name, k )
							field = format( "[%s]", k )
							addtocart( v, fname, indent .. "	", saved, field )
						end
						cart = format( "%s%s};\n", cart, indent )
					end
				end
			end
		end
		Table_name = Table_name or "table_unnamed"
		if type( Table ) ~= "table" then
			return format( "%s = %s", Table_name, basicSerialize( Table ) )
		end
		cart, autoref = "", ""
		addtocart( Table, Table_name, indent )
		return cart .. autoref
	end
	
	function table.inside( Table, e, str1, str2 )	-- only for indexed table
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table", "table.inside", 1 )
		--effector.print_error( e, "true", "table.inside", 2 )
		effector.print_error( repl1, "string", "table.inside", 3 )
		effector.print_error( repl2, "string", "table.inside", 4 )
		for _, v in ipairs( Table ) do
			if type( e ) ~= "table" then
				if type( v ) == "string" then
					if e == v:gsub( repl1, repl2 ) then
						return true
					end
				else
					if e == v then
						return true
					end
				end
			else
				if table.compare( v, e ) then
					return true
				end
			end
		end
		return false
	end
	
	function table.index( Table, e, str1, str2 )	-- only for indexed table
		local repl1 = str1 or ""
		local repl2 = str2 or ""
		effector.print_error( Table, "table", "table.index", 1 )
		effector.print_error( repl1, "string", "table.index", 3 )
		effector.print_error( repl2, "string", "table.index", 4 )
		if table.inside( Table, e, repl1, repl2 ) == true then
			for k, v in ipairs( Table ) do
				if type( e ) ~= "table" then
					if type( v ) == "string" then
						if e == v:gsub( repl1, repl2 ) then
							return k
						end
					else
						if e == v then
							return k
						end
					end
				else
					if table.compare( v, e ) then
						return k
					end
				end
			end
		end
		return e
	end
	
	function table.show( Table )		-- only for indexed table
		effector.print_error( Table, "table", "table.show", 1 )
		local t_show, t_show2 = "", ""
		for i = 1, #Table do
			if type( Table[i] ) == "table" then
				t_show2 = ""
				for k = 1, #Table[i] do
					t_show2 = format( "%s%s,", t_show2, Table[i][k] )
				end
				Table[i] = format( "(%s)", t_show2:sub( 1, -2 ) )
			end
			t_show = format( "%s%s,", t_show, Table[i] )
		end
		return t_show:sub( 1, -2 )
	end

	function table.duplicate( Table )
		local lookup_table = { }
		local function _copy( Table )
			if type( Table ) ~= "table" then
				return Table
			elseif lookup_table[Table] then
				return lookup_table[Table]
			end
			local new_table = { }
			lookup_table[Table] = new_table
			for k, v in pairs( Table ) do
				new_table[_copy( k )] = _copy( v )
			end
			return setmetatable( new_table, getmetatable( Table ) )
		end
		return _copy( Table )
	end
	
	function table.compare( Table1, Table2 )
		if type( Table1 ) ~= type( Table2 ) then
			return false
		end
		if type( Table1 ) ~= "table"
			and type( Table2 ) ~= "table" then
			return Table1 == Table2
		end
		mt = getmetatable( Table1 )
		if mt
			and mt.__eq then
			return Table1 == Table2
		end
		for k1, val1 in pairs( Table1 ) do
			val2 = Table2[k1]
			if val2 == nil
				or not table.compare( val1, val2 ) then
				return false
			end
		end
		for k2, val2 in pairs( Table2 ) do
			val1 = Table1[k2]
			if val1 == nil
				or not table.compare( val1, val2 ) then
				return false
			end
		end
		return true
	end

	function table.complete( Table, Start_time, End_time )
		local End_time = End_time or fx.end_time
		local Start_time = Start_time or fx.start_time
		effector.print_error( Table, "table", "table.complete", 1 )
		effector.print_error( Start_time, "number", "table.complete", 2 )
		effector.print_error( End_time, "number", "table.complete", 3 )
		local Table_com = table.duplicate( Table )
		for i = 1, #Table_com do
			Table_com[i] = HMS_to_ms( Table_com[i] )
		end
		table.insert( Table_com, Start_time )
		table.insert( Table_com, End_time )
		local B_com, nB, vB = table.duplicate( Table_com ), { }, { }
		for i = 1, #B_com do
			if type( B_com[i] ) == "table" then
				B_com[i] = B_com[i][1]
				table.insert( nB, i )
				table.insert( vB, B_com[i] )
			end
		end
		local C_com = table.duplicate( B_com )
		table.sort( C_com, function( a, b ) return a < b end )
		local D_com = table.duplicate( C_com )
		for i = 1, #D_com do
			if table.inside( vB, D_com[i] ) == true then
				D_com[i] = Table_com[nB[table.index( vB, D_com[i] )]]
			end
		end
		return D_com
	end
	
	function table.disorder( table_or_number )
		effector.print_error( table_or_number, "numbertable", "table.disorder", 1 )
		local Table_dis = table_or_number
		local newt, newtable, newt1, newtable1, table_n = { }, { }, { }, { }, { }
		if type( Table_dis ) == "table" then
			newt = table.duplicate( Table_dis )
			while #newt > 0 do
				idx = R( 1, #newt )
				newtable[#newtable + 1] = newt[idx]
				table.remove( newt, idx )
			end
			return newtable
		elseif type( Table_dis ) == "number" then
			for i = 1, Table_dis do
				table_n[i] = i
			end
			newt1 = table.duplicate( table_n )
			while #newt1 > 0 do
				idx = R( 1, #newt1 )
				newtable1[#newtable1 + 1] = newt1[idx]
				table.remove( newt1, idx )
			end
			return newtable1
		end
		return Table_dis
	end
	
	function table.make( objet, size, limit_i, limit_f, ... )
		local t_make, Tme_concat, Tm_n = { }, { }, 0.5
		local i_c, i_a, _c, _a = interpolate_color, interpolate_alpha, color.vc_to_c, alpha.va_to_a
		if ... then
			if type( ... ) == "table" then
				Tme_concat = ...
			else
				Tme_concat = { ... }
			end
		else
			Tme_concat = { [1] = "" }
		end
		if type( limit_i ) ~= "table" then 
			for i = 1, size do
				if size == 1 then
					Tm_n = 0.5
				else
					Tm_n = (i - 1)/(size - 1)
				end
				if objet == "number" then
					if limit_i == nil then
						t_make[i] = math.round( size*Tm_n, 2 )
					else
						t_make[i] = math.round( limit_i + Tm_n*(limit_f - limit_i), 2 )
					end
				elseif objet == "color"
					or objet == "colorc"
					or objet == "colorvc" then
					if type( limit_i ) == "string" then
						t_make[i] = i_c( Tm_n, _c( limit_i ), _c( limit_f ) )
					elseif type( limit_i ) == "number" then
						t_make[i] = random.color( limit_i + Tm_n*(limit_f - limit_i) )
					else
						t_make[i] = random.color( 360*Tm_n )
					end
				elseif objet == "alpha"
					or objet == "alphaa"
					or objet == "alphava" then
					if type( limit_i ) == "string" then
						t_make[i] = i_a( Tm_n, _a( limit_i ), _a( limit_f ))
					elseif type( limit_i ) == "number" then
						t_make[i] = ass_alpha( limit_i + Tm_n*(limit_f - limit_i) )
					else
						t_make[i] = ass_alpha( 255*Tm_n )
					end
				else
					if limit_i == nil then
						t_make[i] = objet .. size
					else
						t_make[i] = objet .. math.round( limit_i + Tm_n*(limit_f - limit_i), 2 )
					end
				end
			end
		else
			Tme_concat = limit_f
			t_make = table.gradient3( size, limit_i )
		end
		t_make = table.concat2( t_make, Tme_concat or "" )
		return t_make
	end
	
	function table.rmake( objet, size, limit_i, limit_f, ... )
		local t_rmake, Trme_concat = { }, { }
		local i_c, i_a, _c, _a = interpolate_color, interpolate_alpha, color.vc_to_c, alpha.va_to_a
		if ... then
			if type( ... ) == "table" then
				Trme_concat = ...
			else
				Trme_concat = { ... }
			end
		else
			Trme_concat = { [1] = "" }
		end
		if type( limit_i ) ~= "table" then 
			for i = 1, size do
				t_rmake[i] = ""
				for k = 1, #Trme_concat do
					if objet == "number" then
						if limit_i == nil then
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. R( size )
						else
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. R( 100*limit_i, 100*limit_f )/100
						end
					elseif objet == "color"
						or objet == "colorc"
						or objet == "colorvc" then
						if type( limit_i ) == "string" then
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. i_c( R( ), _c( limit_i ), _c( limit_f ) )
						elseif type( limit_i ) == "number" then
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. random.color( { limit_i, limit_f } )
						else
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. random.color( )
						end
					elseif objet == "alpha"
						or objet == "alphaa"
						or objet == "alphava" then
						if type( limit_i ) == "string" then
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. i_a( R( ), _a( limit_i ), _a( limit_f ) )
						elseif type( limit_i ) == "number" then
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. random.alpha( limit_i, limit_f )
						else
							t_rmake[i] = t_rmake[i] .. Trme_concat[k] .. random.alpha( )
						end
					else
						if limit_i == nil then
							t_rmake[i] = objet .. R( 100*size )/100
						else
							t_rmake[i] = objet .. math.round( R( limit_i, limit_f ), 2 )
						end
					end
				end
			end
		else
			Trme_concat = limit_f
			t_rmake = table.concat2( table.disorder( table.gradient3( size, limit_i ) ), Trme_concat or "" )
		end
		return t_rmake
	end
	
	function table.concat1( Table, ... )-->Table = {a, b, c}; t2 = {1, 2, 3} -->return {1a,2a,3a, 1b,2b,3b, 1c,2c,3c}
		local Concat, Table_Concat = { [1] = "" }, { }
		if type( ... ) == "table" then
			Concat = ...
		else
			Concat = { ... }
		end
		for i = 1, #Table*#Concat do
			Table_Concat[i] = Concat[#Concat - #Concat*ceil( i/#Concat ) + i] .. Table[ceil( i/#Concat )]
		end
		return Table_Concat
	end
	
	function table.concat2( Table, ... )-->Table = {a, b, c}; t2 = {1, 2, 3} -->return {1a2a3a, 1b2b3b, 1c2c3c}
		local Concat, Table_Concat, Table_Concat2 = { [1] = "" }, { }, { }
		if type( ... ) == "table" then
			Concat = ...
		else
			Concat = { ... }
		end
		for i = 1, #Table*#Concat do
			Table_Concat[i] = Concat[#Concat - #Concat*ceil( i/#Concat ) + i] .. Table[ceil( i/#Concat )]
		end
		for i = 1, #Table do
			Table_Concat2[i] = ""
			for k = 1, #Concat do
				Table_Concat2[i] = Table_Concat2[i] .. Table_Concat[k + #Concat*(i - 1)]
			end
		end
		return Table_Concat2
	end
	
	function table.replay( Len, ... )	-->Len = 3; t = {a, b, c} -->return {a,b,c, a,b,c, a,b,c}
		local Table = { }
		local e_val
		if type( ... ) == "table" then
			e_val = ...
		else
			e_val = { ... }
		end
		for i = 1, math.round( Len ) do
			for k = 1, #e_val do
				Table[#Table + 1] = e_val[k]
			end
		end
		return Table
	end
	
	function table.count( Table, e )
		local Count = 0
		for k, v in pairs( Table ) do
			if e == v then
				Count = Count + 1
			end
		end
		return Count
	end
	
	function table.pos( Table, e )
		local Table_pos = { }
		for k, v in pairs( Table ) do
			if e == v then
				table.insert( Table_pos, k )
			end
		end
		return Table_pos
	end
	
	function table.string( String, Number_str )-- ("String", 2) -> {St,tr,ri,in,ng}
		local String = String or ""
		local nN_str = Number_str or 1
		local Table_str, chars_, Len_str = { }, { }, unicode.len( String )
		for c in unicode.chars( String ) do
			table.insert( chars_, c )
		end
		if nN_str > Len_str then
			return { String }
		end
		for i = 1, Len_str - nN_str + 1 do
			Table_str[i] = ""
			for k = 1, nN_str do
				Table_str[i] = Table_str[i] .. chars_[i + k - 1]
			end
		end
		return Table_str
	end
	
	function table.space( String )
		local Table_s, Table_spc = table.string( String ), { }
		for i = 1, #Table_s do
			if Table_s[i] == " " then
				table.insert( Table_spc, i )
			end
		end
		return Table_spc
	end
	
	function table.word( String )
		local Table_word = { }
		for word_s in String:gmatch( "%S+" ) do
			table.insert( Table_word, word_s )
		end
		return Table_word
	end
	
	function table.retire( Table, ... )
		local Table_ret, retire_e, retire2 = Table, "", ""
		if type( ... ) == "table" then
			retire_e = ...
		else
			retire_e = { ... }
		end
		if type( retire_e[1] ) == "number" then
			retire2 = retire_e[2] or ""
			if type( retire2 ) == "number" then
				for i = retire_e[1], retire2 do
					table.remove( Table_ret, table.index( Table_ret, retire_e[1] ) )
				end
			else
				table.remove( Table_ret, table.index( Table_ret, retire_e[1] ) )
			end
		else
			for i = 1, #retire_e do
				while table.inside( Table_ret, retire_e[i] ) == true do
					table.remove( Table_ret, table.index( Table_ret, retire_e[i] ) )
				end
			end
		end
		return Table_ret
	end
	
	function table.combine( Table, n_combinations )
		local Table_com, a, nN = { }, { }, math.round( abs( n_combinations ) )
		for i = 1, nN do
			a[#a + 1] = i
		end
		while ( 1 ) do
			newrow = { }
			for i = 1, nN do
				newrow[#newrow + 1] = Table[a[i]]
			end
			Table_com[#Table_com + 1] = newrow
			i = nN
			while a[i] == #Table - nN + i do
				i = i - 1
			end
			if i < 1 then
				break
			end
			a[i] = a[i] + 1
			for k = i, nN do
				a[k] = a[i] + k - i
			end
		end
		return Table_com --( {a,b,c,d}, 2 ) -> {{a,b}, {a,c}, {a,d}, {b,c}, {b,d}, {c,d}}
	end
	
	function table.inserttable( Table1, Table2, index_insert ) --(Table1, Table2[, index_insert])
		local Table_ins = Table1
		if index_insert == nil then
			for i = 1, #Table2 do
				Table_ins[#Table_ins + 1] = Table2[i]
			end
		else
			for i = 1, #Table2 do
				table.insert( Table_ins, index_insert, Table2[#Table2 - i + 1] )
			end
		end
		return Table_ins
	end

	function table.reverse( Table )
		local Table_rev = { }
		for i = 1, #Table do
			Table_rev[i] = Table[#Table - i + 1]
		end
		return Table_rev
	end
	
	function table.cyclic( Table ) --{a,b,c,d,e} --> {a,b,c,d,e,d,c,b}
		if #Table <= 2 then
			return Table
		end
		local Table_cyc = table.duplicate( Table )
		for i = 1, #Table - 2 do
			Table_cyc[#Table_cyc + 1] = Table[#Table - i]
		end
		return Table_cyc
	end
	
	function table.set( color_masktable )
		local table_mask_val_i = { }
		for i = 1, #color_masktable do
			table_mask_val_i[i] = color_masktable[i][val_i]
		end
		return table_mask_val_i
	end
	
	function table.op( Table, mode, add )
		local TO_sum, TO_con, TO_ave, T_op2, TO_inv = 0, "", 0, { }, { }
		if mode == "sum"
			or mode == nil then
			for i = 1, #Table do
				TO_sum = TO_sum + Table[i]
			end
			return TO_sum
		elseif mode == "pro" then
			for i = 1, #Table do
				Table[i] = Table[i] * add
			end
			return Table
		elseif mode == "concat" then
			for i = 1, #Table do
				TO_con = TO_con.. Table[i]
			end
			return TO_con
		elseif mode == "average" then
			for i = 1, #Table do
				TO_ave = TO_ave + Table[i]
			end
			return TO_ave/#Table
		elseif mode == "min" then
			return math.min( unpack( Table ) )
		elseif mode == "max" then
			return math.max( unpack( Table ) )
		elseif mode == "org" then
			table.sort( Table, function( a, b ) return a < b end )
			return Table
		elseif mode == "round" then
			return math.round( Table, add )
		elseif mode == "add" then
			if type( add ) == "number" then
				for i = 1, #Table do
					T_op2[i] = Table[i] + add
				end
			elseif type( add ) == "table" then
				for i = 1, #Table do 
					if type( Table[i] ) == "table" then
						T_op2[i] = { }
						for k = 1, #Table[i] do
							if k%2 == 1 then
								T_op2[i][k] = Table[i][k] + add[1 + (k - 1)%2]
							else
								T_op2[i][k] = Table[i][k] + add[1 + (k + 1)%2]
							end
						end
					elseif i%2 == 1 then
						T_op2[i] = Table[i] + add[1+(i - 1)%2]
					else
						T_op2[i] = Table[i] + add[1+(i + 1)%2]
					end
				end
			end
			return T_op2
		elseif mode == "inverse" then
			for i = 1, #Table do
				TO_inv[i] = Table[#Table - i + 1]
			end
			return TO_inv
		end
	end

	function table.gradient( Left, Right, algorithm, Size )
		--[[ example algorithm: "sin(pi*%s)" ]]
		local Size = math.round( Size or val_n )
		local algorithm = algorithm or "%s"
		local Right = color.from_error( Right or text.color2 )
		local Left = color.from_error( Left or text.color1 )
		local table_gradientH, table_gradientV, vectors = { }, { }, { }
		if Size == 1 then
			table_gradientH[1] = format( "(%s,%s,%s,%s)", Left, Right, Left, Right )
			table_gradientV[1] = format( "(%s,%s,%s,%s)", Left, Left, Right, Right )
		else
			for i = 1, 2*Size do
				vectors[i] = tag.ipol( Left, Right, math.format( algorithm, (i - 1)/(2*Size - 1) ) )
			end
			for i = 1, Size do
				table_gradientH[i] = format( "(%s,%s,%s,%s)", vectors[2*i - 1], vectors[2*i], vectors[2*i - 1], vectors[2*i] )
				table_gradientV[i] = format( "(%s,%s,%s,%s)", vectors[2*i - 1], vectors[2*i - 1], vectors[2*i], vectors[2*i] )
			end
		end
		if fx__.v_kanji == false then
			return table_gradientH
		end
		return table_gradientV
	end --"\\1vc" .. table.gradient( "&H0000FF&", "&H00FFFF&" )[val_i]
	
	function table.gradient2( ... )
		local toGradient = { [1] = text.color2 }
		if type( ... ) == "table" then
			toGradient = ...
		else
			toGradient = { ... }
		end
		if #toGradient == 1 then
			table.insert( toGradient, 1, text.color1 )
		end
		toGradient = color.from_error( toGradient )
		local n, vectors, table_gradient2H, table_gradient2V = #toGradient - 1, { }, { }, { }
		local N
		for i = 1, val_n + 1 do
			N = ceil( i/((val_n + 1)/n) )
			vectors[i] = tag.ipol( toGradient[N], toGradient[N + 1], (i - (N - 1)*(val_n + 1)/n - 1)/((val_n + 1)/n) )
		end
		for i = 1, val_n do
			table_gradient2H[i] = format( "(%s,%s,%s,%s)", vectors[i], vectors[i + 1], vectors[i], vectors[i + 1] )
			table_gradient2V[i] = format( "(%s,%s,%s,%s)", vectors[i], vectors[i], vectors[i + 1], vectors[i + 1] )
		end
		if fx__.v_kanji == false then
			return table_gradient2H
		end
		return table_gradient2V
	end --"\\1vc" .. table.gradient2( text.color1, "&H0000FF&", "&H00FFFF&" )[val_i]
	
	function table.gradient3( Size, ... )
		local toGradient = { [1] = text.color2 }
		if type( ... ) == "table" then
			toGradient = ...
		else
			toGradient = { ... }
		end
		if #toGradient == 1 then
			table.insert( toGradient, 1, text.color1 )
		end
		toGradient = color.from_error( toGradient )
		local n, vectors, table_gradient3H, table_gradient3V = #toGradient - 1, { }, { }, { }
		local Siz, N
		if type( Size ) == "table" then
			Siz = math.round( Size[1] )
			for i = 1, Siz do
				N = ceil( i/((Siz + 1)/n) )
				vectors[i] = tag.ipol( toGradient[N], toGradient[N + 1], (i - (N - 1)*(Siz + 1)/n - 1)/((Siz + 1)/n) )
			end
			return vectors
		else
			Siz = math.round( Size )
		end
		for i = 1, Siz + 1 do
			N = ceil( i/((Siz + 1)/n) )
			vectors[i] = tag.ipol( toGradient[N], toGradient[N + 1], (i - (N - 1)*(Siz + 1)/n - 1)/((Siz + 1)/n) )
		end
		for i = 1, Siz do
			table_gradient3H[i] = format( "(%s,%s,%s,%s)", vectors[i], vectors[i + 1], vectors[i], vectors[i + 1] )
			table_gradient3V[i] = format( "(%s,%s,%s,%s)", vectors[i], vectors[i], vectors[i + 1], vectors[i + 1] )
		end
		if fx__.v_kanji == false then
			return table_gradient3H
		end
		return table_gradient3V
	end --"\\1vc" .. table.gradient3( val_n, "&H0000FF&", text.color1, "&H00FFFF&" )[val_i]
	
	function table.bigradient( gradient1, gradient2, Size )
		local gradient1 = color.from_error( gradient1 or text.color1 )
		local gradient2 = color.from_error( gradient2 or text.color2 )
		local Size = math.round( Size or val_n )
		local bigradient1, bigradient2, N1, N2
		if type( gradient1 ) == "string" then
			bigradient1 = { gradient1, gradient1 }
		else
			bigradient1 = gradient1
		end
		if type( gradient2 ) == "string" then
			bigradient2 = { gradient2, gradient2 }
		else
			bigradient2 = gradient2
		end
		if #bigradient1 == 1 then
			bigradient1 = { bigradient1[1], bigradient1[1] }
		end
		if #bigradient2 == 1 then
			bigradient2 = { bigradient2[1], bigradient2[1] }
		end
		local n1, n2, vector1, vector2 = #bigradient1 - 1, #bigradient2 - 1, { }, { }
		local table_bigradientH, table_bigradientV = { }, { }
		for k = 1, Size + 1 do
			N1 = ceil( k/((Size + 1)/n1) )
			N2 = ceil( k/((Size + 1)/n2) )
			vector1[k] = tag.ipol( bigradient1[N1], bigradient1[N1 + 1], (k - (N1 - 1)*(Size + 1)/n1 - 1)/((Size + 1)/n1) )
			vector2[k] = tag.ipol( bigradient2[N2], bigradient2[N2 + 1], (k - (N2 - 1)*(Size + 1)/n2 - 1)/((Size + 1)/n2) )
		end
		for i = 1, Size do
			table_bigradientH[i] = format( "(%s,%s,%s,%s)", vector1[i], vector1[i + 1], vector2[i], vector2[i + 1] )
			table_bigradientV[i] = format( "(%s,%s,%s,%s)", vector1[i], vector2[i], vector1[i + 1], vector2[i + 1] )
		end
		if fx__.v_kanji == false then
			return table_bigradientH
		end
		return table_bigradientV
	end --"\\1vc" .. table.bigradient( {"&H0000FF&", text.color1}, "&H00FFFF&", val_n )[val_i]
	
	function table.mask( Color_or_Alpha, Maskfx, Mode, First )
		local vectorMask = color.from_error( Color_or_Alpha or text.color1 )
		local Mask, func_ipol, func_conv
		if type( vectorMask ) ~= "table" then
			vectorMask = { vectorMask }
		end
		if vectorMask[1]:match( "&H(%x+)&" ):len( ) == 6 then
			Mask = color.from_error( Maskfx or { "&H5A5A5A&", "&H000000&" } )
			func_ipol, func_conv = interpolate_color, color.vc_to_c
		else
			Mask = Maskfx or { "&HFF&", "&H00&" }
			func_ipol, func_conv = interpolate_alpha, alpha.va_to_a
		end
		if type( Mask ) ~= "table" then
			Mask = { Mask }
		end
		if #Mask == 1 then
			Mask[2] = Mask[1]
		end
		local Mode = Mode or ""
		local ind, msk
		local Mask1, Mask2, MaskT, Hue = { }, { }, { }, { }
		if val_i == 1
			and j == 1 then
			ind = remember( "Ind", { } )
			msk = remember( "Msk", { } )
			for i = 1, 12*(2*(val_n + 1)) do
				Mask = table.disorder( Mask )
				ind[i] = R( 12, 50 )/50
				msk[i] = func_ipol( R( 2 ) - 1, Mask[1], Mask[2] )
			end
		else
			ind = recall.Ind
			msk = recall.Msk
		end
		for k = 1, #vectorMask do
			Hue[k], Mask2[k] = { }, { }
			for i = 1, 12*(2*(val_n + 1)) do
				Hue[k][i] = func_ipol( ind[i], msk[i], func_conv( vectorMask[k] ) )
			end
			for i = 1, 2 do
				table.insert( Hue[k], Hue[k][i] )
			end
			for i = 1, 12*val_n + 1 do
				if fx__.v_kanji == false then
					Mask1[i]	= format( "%s(%s,%s,%s,%s)", Mode, Hue[k][2*i - 1], Hue[k][2*i + 1], Hue[k][2*i], Hue[k][2*i + 2] )
					Mask2[k][i] = format( "%s(%s,%s,%s,%s)", Mode, Hue[k][2*i - 1], Hue[k][2*i + 1], Hue[k][2*i], Hue[k][2*i + 2] )
				else
					Mask1[i]	= format( "%s(%s,%s,%s,%s)", Mode, Hue[k][2*i - 1], Hue[k][2*i], Hue[k][2*i + 1], Hue[k][2*i + 2] )
					Mask2[k][i] = format( "%s(%s,%s,%s,%s)", Mode, Hue[k][2*i - 1], Hue[k][2*i], Hue[k][2*i + 1], Hue[k][2*i + 2] )
				end
			end
			for i = 1, 12*val_n + 1 do
				Hue[k][i] = Mask1[i]
			end
		end
		if First == 1 then
			return Mask2
		end
		if First then
			return Mask1
		end
		if #vectorMask == 1 then
			return Hue[1][val_i]
		end
		for i = 1, #vectorMask do
			MaskT[i] = Hue[i][val_i]
		end
		return MaskT
	end --table.mask( "&H00FFFF&", "&H000000&", "\\1vc" )
	
	table.recall = { }
	function table.remember( table_ref, table_val )
		for i = 1, #table_ref do
			ref_i = table_ref[i]
			table.recall[ref_i] = table_val[i]
		end
		return unpack( table_val )
	end
	
	--------------------------------------------------------------------------------------------------
	-- Ampliación de la Librería "math" --------------------------------------------------------------
	function math.R( Rand_i, Rand_f )
		local Offset_r = tonumber( tostring( os.time( ) ):sub( -3, -1 ) )
		if Rand_f == nil
			and Rand_i == nil then
			return math.round( r( ), 4 )
		end
		if Rand_f == nil
			and Rand_i then
			Rand_f = Rand_i
			Rand_i = 1
		end
		local Rand_i = math.round( Rand_i )
		local Rand_f = math.round( Rand_f )
		local R_i = math.min( Rand_i, Rand_f )
		local R_f = math.max( Rand_i, Rand_f )
		return R_i + (r( R_i, R_f ) + Offset_r - 1)%(R_f - R_i + 1)
	end
	
	function R( Rand_i, Rand_f, Step )
		if Rand_i == nil then
			return math.R( )
		end
		if Rand_f == nil then
			return math.R( Rand_i )
		end
		local Step = Step or 1
		local Rand_ii, Rand_ff = math.min( Rand_i, Rand_f ), math.max( Rand_i, Rand_f )
		if Step == 0 then
			Step = 1
		else
			Step = abs( Step )
		end
		local Rand_v = Rand_ii + math.R( 0, (Rand_ff - Rand_ii)/Step )*Step
		if Rand_v > Rand_ff then
			return Rand_ff
		end
		return Rand_v
	end
	
	function math.Rd( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if Rnd_i then
			Rnd_i = Rnd_i*10
		end
		if Rnd_f then
			Rnd_f = Rnd_f*10
		end
		if Rnd_s then
			Rnd_s = Rnd_s*10
		end
		return R( Rnd_i, Rnd_f, Rnd_s )/10
	end
	Rd = math.Rd
	
	function math.Rc( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if Rnd_i then
			Rnd_i = Rnd_i*100
		end
		if Rnd_f then
			Rnd_f = Rnd_f*100
		end
		if Rnd_s then
			Rnd_s = Rnd_s*100
		end
		return R( Rnd_i, Rnd_f, Rnd_s )/100
	end
	Rc = math.Rc

	function math.Rm( Rand_i, Rand_f, Step )
		local Rnd_i, Rnd_f, Rnd_s = Rand_i, Rand_f, Step
		if Rnd_i then
			Rnd_i = Rnd_i*1000
		end
		if Rnd_f then
			Rnd_f = Rnd_f*1000
		end
		if Rnd_s then
			Rnd_s = Rnd_s*1000
		end
		return R( Rnd_i, Rnd_f, Rnd_s )/1000
	end
	Rm = math.Rm
	
	function math.Rfake( Rand_i, Rand_f, Step, Counter )
		local Counter = Counter or val_i
		local Rf_fake = val_left - (val_i + 3)^2 + Counter*l_i^2
		if Rand_f == nil
			and Rand_i then
			Rand_f = Rand_i
			Rand_i = 1
		end
		local Rand_i = math.round( Rand_i )
		local Rand_f = math.round( Rand_f )
		local Rf_i = math.min( Rand_i, Rand_f )
		local Rf_f = math.max( Rand_i, Rand_f )
		return Rf_i + math.round( Rf_fake )%(Rf_f - Rf_i + 1)
	end
	Rf = math.Rfake
	
	function math.Rfake2( Rand_i, Rand_f, Step, Counter, Counter2, Mode )
		local Lft, Rht, Vli
		if Mode == "line" then
			Lft = l_left
			Rht = l_right
			Vli = l_i
		elseif Mode == "word" then
			Lft = word_left
			Rht = word_right
			Vli = word_i
		elseif Mode == "syl" then
			Lft = syl_left
			Rht = syl_right
			Vli = syl_i
		elseif Mode == "furi" then
			Lft = furi_left
			Rht = furi_right
			Vli = furi_i
		elseif Mode == "roma" then
			Lft = roma_left
			Rht = roma_right
			Vli = roma_i
		elseif Mode == "hira" then
			Lft = hira_left
			Rht = hira_right
			Vli = hira_i
		elseif Mode == "kata" then
			Lft = kata_left
			Rht = kata_right
			Vli = kata_i
		elseif Mode == "char" then
			Lft = char_left
			Rht = char_right
			Vli = char_i
		else
			Lft = val_left
			Rht = val_right
			Vli = val_i
		end
		local Counter = Counter or Vli
		local Counter2 = Counter2 or 0
		local Rf2_fake = abs( Lft + (Vli + 3*Counter)^2 - Counter*Rht/16 + 7*Counter2 )
		local Dec = 1
		if Rand_i == nil then
			Dec = 1000
			Rand_i = 0
			Rand_f = Rand_f or 1
		end
		if Rand_f == nil
			and Rand_i then
			Rand_f = Rand_i
			Rand_i = 1
		end
		local Rand_i = math.round( Rand_i )*Dec
		local Rand_f = math.round( Rand_f )*Dec
		local Rf2_ii = math.min( Rand_i, Rand_f )
		local Rf2_ff = math.max( Rand_i, Rand_f )
		return (Rf2_ii + math.round( Rf2_fake )%(Rf2_ff - Rf2_ii + 1))/Dec
	end
	Rf2 = math.Rfake2
	
	function math.Rredefine( First, Last, Step, Counter, Counter2 )
		if random_mode then
			return Rf2( First, Last, Step, Counter, Counter2, random_mode )
		end
		return R( First, Last, Step )
	end
	Rrd = math.Rredefine
	
	function math.format( String, val )
		local line = linefx[ii]
		local max_index = table.count( table.string( String ), "%" )
		local str = format( String, unpack( table.replay( max_index, val ) ) )
		str1 = loadstring( format( "return function( meta, line, x, y ) return %s end", str ) )( )
		return str1( meta, line, x, y )
	end
	
	function math.format2( String, val )
		local max_index = table.count( table.string( String ), "%" )
		return format( String, unpack( table.replay( max_index, val ) ) )
	end

	function math.round( number_or_table, decimal )
		local decimal = decimal or 0
		local multiple, Num_round, Table_round = 10^decimal, number_or_table, { }
		if type( Num_round ) == "number" then
			return floor( Num_round*multiple + 0.5 )/multiple
		elseif type( Num_round ) == "table" then
			for i, v in pairs( Num_round ) do
				if type( v ) == "number" then
					Table_round[i] = floor( v*multiple + 0.5 )/multiple
				else
					Table_round[i] = v
				end
			end
			return Table_round
		end
		return Num_round
	end
	
	function math.distance( px1, py1, px2, py2 )
		local x1, x2, y1, y2 = 0, 0, 0, 0
		if type( px1 ) == "string" then
			px1 = tonumber( px1 )
		end
		if type( px2 ) == "string" then
			px2 = tonumber( px2 )
		end
		if type( py1 ) == "string" then
			py1 = tonumber( py1 )
		end
		if type( py2 ) == "string" then
			py2 = tonumber( py2 )
		end
		if type( px1 ) ~= "table"
			and px2 == nil then
			x1 = 0
			y1 = 0
			x2 = px1
			y2 = py1
		elseif type( px1 ) ~= "table"
			and type( px2 ) ~= "table" then
			x1 = px1
			y1 = py1
			x2 = px2
			y2 = py2
		elseif type( px1 ) ~= "table"
			and type( px2 ) == "table" then
			x1 = px1
			y1 = py1
			x2 = px2[1]
			y2 = px2[2]
		elseif type( px1 ) == "table"
			and py1 == nil then
			x1 = 0
			y1 = 0
			x2 = px1[1]
			y2 = px1[2]
		elseif type( px1 ) == "table"
			and type( py1 ) == "table" then
			x1 = px1[1]
			y1 = px1[2]
			x2 = py1[1]
			y2 = py1[2]
		elseif type( px1 ) == "table"
			and type( py1 ) ~= "table" then
			x1 = px1[1]
			y1 = px1[2]
			x2 = py1
			y2 = px2
		end
		return math.round( ((x2 - x1)^2 + (y2 - y1)^2)^0.5, 3 )
	end
	
	function math.angle( px1, py1, px2, py2 )
		local angle, x1, x2, y1, y2 = 0, 0, 0, 0, 0
		if type( px1 ) == "string" then
			px1 = tonumber( px1 )
		end
		if type( px2 ) == "string" then
			px2 = tonumber( px2 )
		end
		if type( py1 ) == "string" then
			py1 = tonumber( py1 )
		end
		if type( py2 ) == "string" then
			py2 = tonumber( py2 )
		end
		if type( px1 ) ~= "table"
			and px2 == nil then
			x1 = 0
			y1 = 0
			x2 = px1
			y2 = py1
		elseif type( px1 ) ~= "table"
			and type( px2 ) ~= "table" then
			x1 = px1
			y1 = py1
			x2 = px2
			y2 = py2
		elseif type( px1 ) ~= "table"
			and type( px2 ) == "table" then
			x1 = px1
			y1 = py1
			x2 = px2[1]
			y2 = px2[2]
		elseif type( px1 ) == "table"
			and py1 == nil then
			x1 = 0
			y1 = 0
			x2 = px1[1]
			y2 = px1[2]
		elseif type( px1 ) == "table"
			and type( py1 ) == "table" then
			x1 = px1[1]
			y1 = px1[2]
			x2 = py1[1]
			y2 = py1[2]
		elseif type( px1 ) == "table"
			and type( py1 ) ~= "table" then
			x1 = px1[1]
			y1 = px1[2]
			x2 = py1
			y2 = px2
		end
		local A = deg( atan( (y2 - y1)/(x2 - x1) ) )
		if x2 > x1
			and y2 > y1 then
			angle = 360 - A
		elseif x2 > x1
			and y2 < y1 then
			angle = -A
		elseif x2 < x1
			and y2 < y1 then
			angle = 180 - A
		elseif x2 < x1
			and y2 > y1 then
			angle = 180 - A
		elseif x2 > x1
			and y2 == y1 then
			angle = 0
		elseif x2 < x1
			and y2 == y1 then
			angle = 180
		elseif x2 == x1
			and y2 < y1 then
			angle = 90
		elseif x2 == x1
			and y2 > y1 then
			angle = 270
		elseif x2 == x1
			and y2 == y1 then
			angle = 0
		end
		return math.round( angle, 3 )
	end
	
	function math.polar( angle, radius, Return )
		local Px, Py = radius*cos( rad( angle ) ), -radius*sin( rad( angle ) )
		if Return == "x" then
			return math.round( Px, 3 )
		end
		if Return == "y" then
			return math.round( Py, 3 )
		end
		return math.round( Px, 3 ), math.round( Py, 3 )
	end
	
	function math.intersect( x1, y1, x2, y2, x3, y3, x4, y4 )
		local Ec1, Ec2 = { }, { }
		local im1, im2
		if x1 == x2 then
			im1 = math.huge
			Ec1[1] = 1
			Ec1[2] = 0
			Ec1[3] = x1
		else
			im1 = (y2 - y1)/(x2 - x1)
			Ec1[1] = -im1
			Ec1[2] = 1
			Ec1[3] = y1 - im1*x1
		end
		if x3 == x4 then
			im2 = math.huge
			Ec2[1] = 1
			Ec2[2] = 0
			Ec2[3] = x3
		else
			im2 = (y4 - y3)/(x4 - x3)
			Ec2[1] = -im2
			Ec2[2] = 1
			Ec2[3] = y3 - im2*x3
		end
		if im1 == im2 then
			return "las rectas son paralelas"
		end
		local DetI = Ec1[1]*Ec2[2] - Ec1[2]*Ec2[1]
		local DetX = Ec1[3]*Ec2[2] - Ec1[2]*Ec2[3]
		local DetY = Ec1[1]*Ec2[3] - Ec1[3]*Ec2[1]
		local ix, iy = math.round( DetX/DetI, 3 ), math.round( DetY/DetI, 3 )
		return ix, iy
	end
	
	function math.length_bezier( ... )
		local coor, Px, Py, Bx, By = { }, { }, { }, { }, { }
		local length_B, nN, shape_bezier = 0, 1024, ""
		if j == 1 then
			if type( ... ) == "table" then
				coor = ...
			elseif type( ... ) == "string" then
				shape_bezier = shape.ASSDraw3( ... )
				for c in shape_bezier:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
			else
				coor = { ... }
			end
			if #coor == 4 then
				length_B = math.distance( coor[1], coor[2], coor[3], coor[4] )
			else
				for i = 1, #coor/2 do
					Px[i] = coor[2*i - 1]
					Py[i] = coor[2*i - 0]
				end
				for i = 1, nN do
					Bx[i], By[i] = math.confi_bezier( #Px, Px, Py, (i - 1)/(nN - 1) )
				end
				for i = 2, nN do
					length_B = remember( "mLength", length_B + math.distance( Bx[i], By[i], Bx[i - 1], By[i - 1] ) )
				end
			end
		else
			length_B = recall.mLength
		end
		return math.round( length_B, 3 )
	end
	
	function math.angle_bezier( points, t )
		local coor, Px, Py, shape_bezier = { }, { }, { }, ""
		local Angle, Pdx, Pdy = 0, 0, 0
		local t = t or 1
		if j == 1 then
			if type( points ) == "table" then
				coor = points
			elseif type( points ) == "string" then
				shape_bezier = shape.ASSDraw3( points )
				for c in shape_bezier:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
			end
			for i = 1, #coor/2 do
				Px[i] = coor[2*i - 1]
				Py[i] = coor[2*i - 0]
			end
			if #Px == 2 then
				Angle = remember( "mA_bezier", deg( atan( -(Py[2] - Py[1])/(Px[2] - Px[1]) ) ) )
			else
				Pdx = -3*(Px[1] - Px[2])*(1 - t)^2 - 6*(Px[2] - Px[3])*t*(1 - t) - 3*(Px[3] - Px[4])*t^2
				Pdy = -3*(Py[1] - Py[2])*(1 - t)^2 - 6*(Py[2] - Py[3])*t*(1 - t) - 3*(Py[3] - Py[4])*t^2
				Angle = remember( "mA_bezier", deg( atan( -Pdy/Pdx ) ) )
			end
		else
			Angle = recall.mA_bezier
		end
		return math.round( Angle, 3 )
	end
	
	function math.point( c_num, x_range, y_range, s_point_x, s_point_y, e_point_x, e_point_y )
		local Points = remember( "mPoint", { } )
		if j == 1 then
			local Rx = x_range or 2.5*l.fontsize
			local Ry = y_range or 2.5*l.fontsize
			local Sx = s_point_x or R( -Rx, Rx )
			local Sy = s_point_y or R( -Ry, Ry )
			local Ex = e_point_x or 0
			local Ey = e_point_y or 0
			for i = 3, 2*c_num - 2, 2 do
				Points[i + 0] = R( -Rx, Rx )
				Points[i + 1] = R( -Ry, Ry )
			end
			Points[1] = Sx
			Points[2] = Sy
			Points[2*c_num - 1] = Ex
			Points[2*c_num - 0] = Ey
		else
			Points = recall.mPoint
		end
		return Points
	end

	function math.factk( n )
		local k_factk = 1
		if ( n > 1 ) then
			for i = 2, n do
				k_factk = k_factk*i
			end
		end
		return k_factk
	end
	
	function math.bernstein( i, n, t )
		return (math.factk( n )/(math.factk( i )*math.factk( n - i )))*(t^i)*((1 - t)^(n - i))
	end
	
	function math.confi_bezier( n, x, y, t, Return )
		local Px, Py = x, y
		local pos_x, pos_y = 0, 0
		if y == nil then
			Px, Py = { }, { }
			if type( x ) == "string" then
				local coor = { }
				for c in x:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( coor, tonumber( c ) )
				end
				for i = 1, #coor/2 do
					Px[i] = coor[2*i - 1]
					Py[i] = coor[2*i - 0]
				end
			elseif type( x ) == "table" then
				for i = 1, #x/2 do
					Px[i] = x[2*i - 1]
					Py[i] = x[2*i - 0]
				end
			end
		end
		local n = n or #Px
		for i = 1, n do
			pos_x = pos_x + Px[i]*math.bernstein( i - 1, n - 1, t )
			pos_y = pos_y + Py[i]*math.bernstein( i - 1, n - 1, t )
		end
		if Return == "x" then
			return pos_x
		end
		if Return == "y" then
			return pos_y
		end
		return pos_x, pos_y
	end
	
	function math.bezier( Return, ... )
		if type( ... ) ~= "string" then
			local points_Bezier = { }
			local MB_points_Bx, MB_points_By = { }, { }
			if type( ... ) == "table" then
				points_Bezier = ...
			else
				points_Bezier = { ... }
			end
			for i = 1, #points_Bezier/2 do
				MB_points_Bx[i] = points_Bezier[2*i - 1]
				MB_points_By[i] = points_Bezier[2*i - 0]
			end
			local MBpos_x, MBpos_y = math.confi_bezier( nil, MB_points_Bx, MB_points_By, module )
			if Return == "x" then
				return MBpos_x
			end
			if Return == "y" then
				return MBpos_y
			end
			return MBpos_x, MBpos_y
		else
			if (j == 1) then
				local Shape9 = shape.ASSDraw3( ... )
				local max_space = (2 + offset_maxspace)/((fx.scale_x*fx.scale_y)^0.5)
				if max_space <= 0 then
					max_space = 1
				end
				local MB_t, MB_i, MB_points_Bezier = 0, 1, { }
				MBpos_x, MBpos_y, MB_m = { }, { }, 0
				for sh_c in Shape9:gmatch( "%S+" ) do
					table.insert( MB_points_Bezier, sh_c )
				end
				local MB_lpos_x, MB_lpos_y = MB_points_Bezier[2], MB_points_Bezier[3]
				while MB_i <= #MB_points_Bezier do
					MB_points_Bx, MB_points_By = { }, { }
					if MB_points_Bezier[MB_i] == "m" then
						s_point_x = MB_points_Bezier[MB_i + 1]
						s_point_y = MB_points_Bezier[MB_i + 2]
						MB_i = MB_i + 3
						MB_ldist = 0
					elseif MB_points_Bezier[MB_i] == "b" then
						MB_points_Bx[1] = s_point_x
						MB_points_By[1] = s_point_y
						for k = 2, 4 do
							MB_points_Bx[k] = MB_points_Bezier[MB_i + 2*(k - 2) + 1]
							MB_points_By[k] = MB_points_Bezier[MB_i + 2*(k - 2) + 2]
						end
						s_point_x = MB_points_Bezier[MB_i + 5]
						s_point_y = MB_points_Bezier[MB_i + 6]
						MB_i = MB_i + 7
					elseif MB_points_Bezier[MB_i] == "l" then
						MB_points_Bx[1] = s_point_x
						MB_points_By[1] = s_point_y
						MB_points_Bx[2] = MB_points_Bezier[MB_i + 1]
						MB_points_By[2] = MB_points_Bezier[MB_i + 2]
						s_point_x = MB_points_Bezier[MB_i + 1]
						s_point_y = MB_points_Bezier[MB_i + 2]
						MB_i = MB_i + 3
					else
						MB_i = #MB_points_Bezier + 1
					end
					MB_ct = 0
					MB_n = #MB_points_Bx
					if MB_n ~= 0 then
						while MB_ct >= 0
							and MB_ct < 1 do
							MB_m = MB_m + 1
							if MB_ct == 0 then
								if MB_points_Bx[1] == MB_lpos_x
									and MB_points_By[1] == MB_lpos_y then
									MBpos_x[MB_m], MBpos_y[MB_m] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, 0.12 )
									MB_dist = math.distance( MBpos_x[MB_m], MBpos_y[MB_m], MB_points_Bx[1], MB_points_By[1] )
									if MB_dist == 0 then
										MB_ct = 1
									else
										MB_ct = (max_space - MB_ldist)/MB_dist*0.1
										MBpos_x[MB_m], MBpos_y[MB_m] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct )
										MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
										MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[MB_m], MBpos_y[MB_m] )
										MB_ct = MB_ct + max_space/MB_dist*0.1
									end
								else
									MBpos_x[MB_m], MBpos_y[MB_m] = MB_points_Bx[1], MB_points_By[1]
									MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
									MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[MB_m], MBpos_y[MB_m] )
									if MB_dist == 0 then
										MB_ct = 1
									else
										MB_ct = MB_ct + max_space/MB_dist*0.1
									end
								end
							else
								MBpos_x[MB_m], MBpos_y[MB_m] = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct )
								MB_nx, MB_ny = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, MB_ct + 0.1 )
								MB_dist = math.distance( MB_nx, MB_ny, MBpos_x[MB_m], MBpos_y[MB_m] )
								if MB_dist == 0 then
									MB_ct = 1
								else
									MB_ct = MB_ct + max_space/MB_dist*0.1
								end
							end
						end
						MB_lpos_x, MB_lpos_y = math.confi_bezier( MB_n, MB_points_Bx, MB_points_By, 1 )
						MB_ldist = math.distance( MB_lpos_x, MB_lpos_y, MBpos_x[MB_m], MBpos_y[MB_m] )
						if MB_ldist > max_space then
							MB_ldist = max_space
						end
					end
				end
			end
			maxloop( MB_m )
			MB_t = j/MB_m
			if Return == "x" then
				return MBpos_x[j]
			end
			if Return == "y" then
				return MBpos_y[j]
			end
			return MBpos_x[j], MBpos_y[j]
		end
	end

	function math.bezier2( Shape, mode, Align_Shape, OffsetB, length )
		local pyointa = { }
		function pyointa.tangential2P( Pnts, t_ )
			local tanVec, XY, dpos = { }, { }, { }
			XY = pyointa.difference( Pnts )
			dpos = pyointa.tDifferential( XY, t_ ) 
			for i = 1, 2 do
				tanVec[i] = dpos[2][i] / math.sqrt(dpos[2][1]^2 + dpos[2][2]^2)
			end
			return tanVec
		end

		function pyointa.normal2P( Pnts, t_ )
			local normalVec = { }
			normalVec = pyointa.tangential2P( Pnts, t_ )
			normalVec[1], normalVec[2] = normalVec[2], -normalVec[1]
			return normalVec
		end

		function pyointa.difference( Pnts )
			local DVec, XY = { }, { }
			-- 1st step difference
			DVec[1] = {[1] = Pnts[2][1] - Pnts[1][1], [2] = Pnts[2][2] - Pnts[1][2]}
			DVec[2] = {[1] = Pnts[3][1] - Pnts[2][1], [2] = Pnts[3][2] - Pnts[2][2]}
			DVec[3] = {[1] = Pnts[4][1] - Pnts[3][1], [2] = Pnts[4][2] - Pnts[3][2]}
			-- 2nd step difference
			DVec[4] = {[1] = DVec[2][1] - DVec[1][1], [2] = DVec[2][2] - DVec[1][2]}
			DVec[5] = {[1] = DVec[3][1] - DVec[2][1], [2] = DVec[3][2] - DVec[2][2]}
			-- 3rd step difference
			DVec[6] = {[1] = DVec[5][1] - DVec[4][1], [2] = DVec[5][2] - DVec[4][2]}
			XY[1] = {[1] = Pnts[1][1], [2] = Pnts[1][2]}
			XY[2] = {[1] = DVec[1][1], [2] = DVec[1][2]}
			XY[3] = {[1] = DVec[4][1], [2] = DVec[4][2]}
			XY[4] = {[1] = DVec[6][1], [2] = DVec[6][2]}
			return XY
		end

		function pyointa.tDifferential( XY, ta ) 
			local dPos = { }
			dPos[1] = {
				[1] = XY[4][1]*ta^3 + 3*XY[3][1]*ta^2 + 3*XY[2][1]*ta + XY[1][1],
				[2] = XY[4][2]*ta^3 + 3*XY[3][2]*ta^2 + 3*XY[2][2]*ta + XY[1][2]
			}
			dPos[2] = {
				[1] = 3*(XY[4][1]*ta^2 + 2*XY[3][1]*ta + XY[2][1]),
				[2] = 3*(XY[4][2]*ta^2 + 2*XY[3][2]*ta + XY[2][2])
			}
			dPos[3] = {
				[1] = 6*(XY[4][1]*ta + XY[3][1]),
				[2] = 6*(XY[4][2]*ta + XY[3][2])
			}
			return dPos
		end

		function pyointa.getBezierLength( p, ta , tb, nN ) 
			local XY, dpos, t_ = { }, { }, { }
			for i = 1, 2*nN + 1 do
				t_[i] = ta + (i - 1)*(tb - ta)/(2*nN)
			end
			XY = pyointa.difference( p )				
			dpos = pyointa.tDifferential( XY, t_[1] )	
			local Ft1 = (dpos[2][1]^2 + dpos[2][2]^2)^0.5
			dpos = pyointa.tDifferential( XY, t_[2*nN + 1] )
			local Ft2 = (dpos[2][1]^2 + dpos[2][2]^2)^0.5
			local SFt1 = 0
			for i = 1, nN do
				dpos = pyointa.tDifferential( XY, t_[2*i] )
				SFt1 = SFt1 + (dpos[2][1]^2 + dpos[2][2]^2)^0.5
			end
			local SFt2 = 0
			for i = 1, nN - 1 do
				dpos = pyointa.tDifferential( XY, t_[2*i + 1] )
				SFt2 = SFt2 + (dpos[2][1]^2 + dpos[2][2]^2)^0.5
			end
			local SimpLength = ((tb - ta)/(2*nN)/3)*((Ft1 + Ft2) + (4*SFt1) + (2*SFt2))
			return SimpLength
		end

		function pyointa.length2t( Pnts, Ltarget, nN ) 
			local ll = { [1] = 0 }
			local ni, tb, t_ = 1.0/nN, 0, 0
			for i = 2, nN + 1 do
				tb = tb + ni
				ll[i] = pyointa.getBezierLength( Pnts, 0, tb, nN*2 )
			end
			if Ltarget > ll[nN + 1] then
				t_ = false
				return t_
			end
			for i = 1, nN do
				if ((Ltarget >= ll[i])
					and (Ltarget <= ll[i + 1])) then
					t_ = (i - 1)/nN + (Ltarget - ll[i])/(ll[i + 1] - ll[i])*(1/nN)
					break
				end
			end
			return t_
		end

		function pyointa.length2PtNo( Pnts, Ltarget, nN )
			local bl, cpoint = { }, { }
			local leng
			for h = 1, #Pnts do
				bl = { } bl[1] = 0
				for i = 2, #Pnts[h] + 1 do
					bl[i] = bl[i - 1] + pyointa.getBezierLength( Pnts[h][i - 1], 0, 1.0, nN )
				end
				if Ltarget > bl[#bl] then
					Ltarget = Ltarget - bl[#bl]
				else
					for j = 1, #Pnts[h] do
						if ((Ltarget >= bl[j])
							and (Ltarget <= bl[j + 1])) then
							cpoint = Pnts[h][j]
							leng = Ltarget - bl[j]
							break
						end
					end
				end
				if leng then
					break
				end
			end
			if leng then
				return cpoint, leng
			else
				return false
			end
		end

		function pyointa.getBezierPos( Pnts, t_ ) 
			local XY, pos_Bzr = { }, { }
			XY = pyointa.difference( Pnts )
			for i = 1, 2 do
				pos_Bzr[i] = XY[4][i]*t_^3 + 3*XY[3][i]*t_^2 + 3*XY[2][i]*t_ + XY[1][i]
			end
			return pos_Bzr
		end

		function pyointa.shape2coord( shape ) 
			local coord, xy, temp, k = { }, { }, { }, 0
			for c in shape:gmatch( "%S+" ) do
				table.insert( xy, c )
			end
			repeat
				k = k + 1
			until xy[k] == "m" or k > #xy
			if k > 1 then
				aegisub.debug.out( "invalid drawing command" )
			end
			local d_comm = "m"
			local i = 1
			k = k + 3
			coord[i] = { }
			while k < #xy do 
				if xy[k] == "m" then 
					k = k + 3
					i = i + 1
					coord[i] = { }
					d_comm = "m"
				elseif xy[k] == "b" then
					cp1x, cp1y = xy[k - 2], xy[k - 1] 
					cp2x, cp2y = xy[k + 1], xy[k + 2]
					cp3x, cp3y = xy[k + 3], xy[k + 4]
					cp4x, cp4y = xy[k + 5], xy[k + 6]
					k = k + 7
					d_comm = "b"
					table.insert( coord[i], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
				elseif xy[k] == "l" then 		
					cp1x, cp1y = xy[k - 2], xy[k - 1]
					cp2x = xy[k - 2] + ((xy[k + 1] - xy[k - 2])*(1/3))
					cp2y = xy[k - 1] + ((xy[k + 2] - xy[k - 1])*(1/3))
					cp3x = xy[k - 2] + ((xy[k + 1] - xy[k - 2])*(2/3))
					cp3y = xy[k - 1] + ((xy[k + 2] - xy[k - 1])*(2/3))
					cp4x, cp4y = xy[k + 1], xy[k + 2]
					k = k + 3
					d_comm = "l"
					table.insert( coord[i], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
				elseif string.match( xy[k], "%d+" ) ~= nil then
					if d_comm == "b" then        
						cp1x, cp1y = xy[k - 2], xy[k - 1] 
						cp2x, cp2y = xy[k + 0], xy[k + 1]
						cp3x, cp3y = xy[k + 2], xy[k + 3]
						cp4x, cp4y = xy[k + 4], xy[k + 5]
						k = k + 6
						table.insert( coord[i], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
					elseif d_comm == "l" then       
						cp1x, cp1y = xy[k - 2], xy[k - 1]
						cp2x = xy[k - 2] + ((xy[k + 0] - xy[k - 2])*(1/3))
						cp2y = xy[k - 1] + ((xy[k + 1] - xy[k - 1])*(1/3))
						cp3x = xy[k - 2] + ((xy[k + 0] - xy[k - 2])*(2/3))
						cp3y = xy[k - 1] + ((xy[k + 1] - xy[k - 1])*(2/3))
						cp4x, cp4y = xy[k], xy[k + 1]
						k = k + 2     
						table.insert( coord[i], { { cp1x, cp1y }, { cp2x, cp2y }, { cp3x, cp3y }, { cp4x, cp4y } } )
					end
				else
					aegisub.debug.out( "unkown drawing command" )
				end
			end
			return coord
		end
		
		if Shape == nil then
			Shape = shape.displace( format( "m 0 0 l %d 0", l_width ), l_left, l_middle )
			if linefx[ii].text:match( "\\i?clip%b()" ) then
				Shape = shape.ASSDraw3( linefx[ii].text:match( "\\i?clip%b()" ) )
			end
		end
		if Align_Shape then
			Shape = shape.incenter( Shape )
			local MB2_x = l_center + 0.5*l_width*((math.round( Align_Shape ) - 1)%3 - 1)
			local MB2_y = l_middle + 0.5*l_height*(ceil( (10 - ((math.round( Align_Shape ) - 1)%9 + 1))/3 ) - 2)
			Shape = shape.displace( Shape, MB2_x, MB2_y )
		end
		local pos_Bezier, eVec, cont_point, PtNo = { }, { }, { }, { }
		local nN, Blength, lineoffset = 8, 0, 0
		cont_point = pyointa.shape2coord( shape.ASSDraw3( Shape ) )
		for i = 1, #cont_point do
			for k = 1, #cont_point[i] do
				Blength = Blength + pyointa.getBezierLength( cont_point[i][k], 0 , 1.0, nN )
			end
		end
		if length then
			return Blength
		end
		local actor_offset = 0
		if l_actor:match( "%-?%d+[%.%d]*" ) then
			actor_offset = tonumber( l_actor:match( "%-?%d+[%.%d]*" ) )
		end
		if OffsetB then
			actor_offset = OffsetB
		end
		if mode == nil or mode == 1 then -- modo por default (centro de la shape)
			lineoffset = (Blength - l_width)/2 + actor_offset
		elseif mode == 2 then -- justifica el texto a la izquierda
			lineoffset = actor_offset
		elseif mode == 3 then -- justifica el texto a la derecha
			lineoffset = Blength - l_width - actor_offset
		elseif mode == 4 then -- justifica el texto en toda la longitud de la shape, equidistantemente
			lineoffset = (val_i - 1)*(Blength - l_width)/(val_n - 1)
		end
		targetLength, rot_Bzr = 0, 0
		PtNo, targetLength = pyointa.length2PtNo( cont_point, lineoffset + val_center - l_left, nN )
		if mode == 5 then -- para trazar una curva por medio de shapes
			maxloop( (0.68 + offset_maxspace)*Blength )
			PtNo, targetLength = pyointa.length2PtNo( cont_point, Blength*module , nN )
		end
		if PtNo ~= false then
			tb = pyointa.length2t( PtNo, targetLength, nN )
			if tb ~= false then
				pos_Bezier = pyointa.getBezierPos( PtNo, tb )
				eVec	   = pyointa.normal2P( PtNo, tb )
				rot_Bzr	   = -math.deg( math.atan2( eVec[2], eVec[1] ) ) - 90
			end
		else
			pos_Bezier[1] = val_center
			pos_Bezier[2] = val_middle
			rot_Bzr = 0
		end
		bzr2_fr = math.round(tag.only(rot_Bzr < -180, rot_Bzr + 360, rot_Bzr), 3)
		local PosBzr = effector.new_pos( pos_Bezier[1], pos_Bezier[2] )
		return format( "%s\\fr%s", PosBzr, math.round( tag.only( rot_Bzr < -180, rot_Bzr + 360, rot_Bzr ), 3 ) )
	end
	
	function math.movebezier( Shapes, t1, t2, mode )
		local MmBSh
		local t2 = t2 or fx.movet_f
		local t1 = t1 or fx.movet_i
		local dur = t2 - t1
		if type( Shapes ) == "string" then
			MmBSh = { Shapes }
		else
			MmBSh = Shapes
		end
		local MmBTb, MmBtm, MmBps, MmBfr, MmBco, MmBfx = { }, { }, { }, { }, { }, ""
		for i = 1, #MmBSh do
			MmBTb[i] = math.bezier2( MmBSh[i], mode )
		end
		MmBtg = table.op( MmBTb, "concat" )
		if #MmBSh > 1 then
			for i = 1, #MmBSh do
				MmBtm[i] = t1 + dur*(i - 1)/(#MmBSh - 1)
			end
		end
		for c in MmBtg:gmatch( "%b()" ) do
			table.insert( MmBps, c )
		end
		for c in MmBtg:gmatch( "\\fr%-?%d+[%.%d]*" ) do
			table.insert( MmBfr, c )
		end
		MmBrz = MmBfr[1]
		if #MmBSh > 1 then
			for i = 2, #MmBSh do
				MmBrz = MmBrz .. format( "\\t(%s,%s,%s)", MmBtm[i - 1], MmBtm[i], MmBfr[i] )
			end
		end
		for i = 1, #MmBps do
			MmBco[2*i - 1], MmBco[2*i] = MmBps[i]:match( "(%-?%d+[%.%d]*),(%-?%d+[%.%d]*)" )
		end
		if #MmBSh == 1 then
			MmBfx = format( "\\pos(%s,%s)%s", MmBco[1], MmBco[2], MmBrz )
		elseif #MmBSh == 2 then
			MmBfx = format( "\\move(%s,%s,%s,%s,%s,%s)%s", MmBco[1], MmBco[2], MmBco[3], MmBco[4], t1, t2, MmBrz )
		elseif #MmBSh == 3 then
			MmBfx = format( "\\moves3(%s,%s,%s,%s,%s,%s,%s,%s)%s", MmBco[1], MmBco[2], MmBco[3], MmBco[4], MmBco[5], MmBco[6], t1, t2, MmBrz )
		elseif #MmBSh == 4 then
			MmBfx = format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)%s", MmBco[1], MmBco[2], MmBco[3], MmBco[4], MmBco[5], MmBco[6], MmBco[7], MmBco[8], t1, t2, MmBrz )
		end
		return MmBfx
	end
	
	function math.bezier2move( Shape, Mode, Accel, Offset_time )
		local Mode = Mode or 1
		local Accel = Accel or 1
		local timeO = Offset_time or 0
		local bzr_length, bzr_offset
		if j == 1 then
			bzr_length = remember( "lgth", math.bezier2( Shape, 1, nil, 0, true ) )
			bzr_offset = remember( "offt", bzr_length - linefx[ii].width )
			if bzr_offset <= 0 then
				return ""
			end
			maxloop( ceil( fx.dur / (frame_dur + timeO) ) )
		else
			bzr_length = recall.lgth
			bzr_offset = recall.offt
		end
		retime( "fxpretime", (j - 1)*(frame_dur + timeO), j*(frame_dur + timeO) )
		if Mode == 1 then
			return math.bezier2( Shape, 2, nil, bzr_offset*module^Accel )
		end
		return math.bezier2( Shape, 3, nil, bzr_offset*module^Accel )
	end --math.bezier2move( nil, 1 )
	
	function math.circle( Shape )
		--retorna las coordenadas del centro y el radio de un círculo a partir de tres puntos en un clip
		local coor, center = { }, { }
		local P1, P2, P3
		for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
			table.insert( coor, tonumber( c ) )
		end
		P1 = { x = coor[1], y = coor[2] }
		P1.z = -(P1.x^2 + P1.y^2)
		P2 = { x = coor[3], y = coor[4] }
		P2.z = -(P2.x^2 + P2.y^2)
		P3 = { x = coor[5], y = coor[6] }
		P3.z = -(P3.x^2 + P3.y^2)
		local Det_i = (P1.x*P2.y + P2.x*P3.y + P3.x*P1.y) - (P1.y*P2.x + P2.y*P3.x + P3.y*P1.x)
		local Det_D = (P1.z*P2.y + P2.z*P3.y + P3.z*P1.y) - (P1.y*P2.z + P2.y*P3.z + P3.y*P1.z)
		local Det_E = (P1.x*P2.z + P2.x*P3.z + P3.x*P1.z) - (P1.z*P2.x + P2.z*P3.x + P3.z*P1.x)
		local Det_F = (P1.x*P2.y*P3.z + P2.x*P3.y*P1.z + P3.x*P1.y*P2.z) - (P1.z*P2.y*P3.x + P2.z*P3.y*P1.x + P3.z*P1.y*P2.x)
		local D = Det_D / Det_i
		local E = Det_E / Det_i
		local F = Det_F / Det_i
		center.x = math.round( -D/2, 3 )
		center.y = math.round( -E/2, 3 )
		local radius = math.round( ((D/2)^2 + (E/2)^2 - F)^0.5, 3 )
		return center.x, center.y, radius
	end
	
	function math.rotate( p, axis, angle )
		local angle = rad( angle or 0 )
		local axisr = axis or "z"
		local rot_p = { }
		local coo_x = p[1] or 0
		local coo_y = p[2] or 0
		local coo_z = p[3] or 0
		if axisr == "x" then
			rot_p[1] = coo_x
			rot_p[2] = cos( angle )*coo_y - sin( angle )*coo_z
			rot_p[3] = sin( angle )*coo_y + cos( angle )*coo_z
		elseif axisr == "y" then
			rot_p[1] = cos( angle )*coo_x + sin( angle )*coo_z
			rot_p[2] = coo_y
			rot_p[3] = cos( angle )*coo_z - sin( angle )*coo_x
		else
			rot_p[1] = cos( angle )*coo_x - sin( angle )*coo_y
			rot_p[2] = sin( angle )*coo_x + cos( angle )*coo_y
			rot_p[3] = coo_z
		end
		return rot_p
	end

	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "tag" ------------------------------------------------------------------
	function tag.redefine( tag_str )
		local tag_str = tag_str or ""
		effector.print_error( tag_str, "string", "tag.redefine", 1 )
		local tag_rdf = ""
		local tag_fun = {
			[01] = "\\1vc",		[02] = "\\2vc",		[03] = "\\3vc",		[04] = "\\4vc",		[05] = "\\1va",		[06] = "\\2va",
			[07] = "\\3va",		[08] = "\\4va",		[09] = "\\1img",	[10] = "\\2img",	[11] = "\\3img",	[12] = "\\4img",
			[13] = "\\pos",		[14] = "\\move",	[15] = "\\moves3",	[16] = "\\moves4",	[17] = "\\jitter",	[18] = "\\mover",
			[19] = "\\org",		[20] = "\\distort",	[21] = "\\fad",		[22] = "\\fade",	[23] = "\\movevc",	[24] = "\\clip",
			[25] = "\\iclip",	[26] = "\\t"
		}
		tag_rdf = tag_str:gsub( "(\\%w+%b())",
			function( capture )
				local line = linefx[ii]
				local tag_capture = tag.operation( capture:match( "(\\%w+)%b()" ) ) .. "%s"
				local val_capture = capture:match( "\\%w+(%b())" ):sub( 2, -2 )
				local fun_capture, tbl_capture
				if table.inside( tag_fun, tag_capture ) == true then
					return capture
				end
				if pcall( loadstring( format( "return function( meta, line, i ) return %s end", val_capture ) ) ) == true then
					fun_capture = loadstring( format( "return function( meta, line, i ) return %s end", val_capture ) )( )
					tbl_capture = fun_capture( meta, line, i )
					return format( tag_capture, tbl_capture )
				end
				return capture
			end
		)
		tag_rdf = tag.dark( tag_rdf ):gsub( "\\\\", "\\" )
		return tag_rdf
	end
	
	function tag.set( times_set, events_set )
		if type( times_set ) == "table" then
			times_set = times_set
		else
			times_set = { times_set }
		end
		if type( events_set ) == "table" then
			events_set = events_set
		else
			events_set = { events_set }
		end
		effector.print_error( times_set, "table", "tag.set", 1 )
		effector.print_error( events_set, "table", "tag.set", 2 )
		local t_set = table.complete( times_set, fx.start_time, fx.end_time )
		local t_st2 = table.duplicate( t_set )
		local iSt, iEt = table.index( t_set, fx.start_time ), table.index( t_set, fx.end_time )
		events_set[0] = ""
		local i = iSt + 1
		local Tag_fx = events_set[i - 2]
		for k = 1, #t_set do
			if type( t_set[k] ) == "table" then
				t_set[k] = t_set[k][1]
			end
		end
		if iSt + 1 ~= iEt then
			while t_set[i] < fx.end_time do
				if type( t_st2[i] ) == "table" then
					offset_t = t_st2[i][2]
				else
					offset_t = 1
				end
				t1 = t_set[i] - fx.start_time - frame_dur/2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, events_set[i - 1] )
				i = i + 1
			end
		end
		return Tag_fx
	end

	function tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		local ti = time_vci or fx.movet_i
		local tf = time_vcf or fx.movet_f
		local DX = Dx or fx.move_x2 - fx.move_x1
		local DY = Dy or fx.move_y2 - fx.move_y1
		local PX = posx or fx.move_x1
		local PY = posy or fx.move_y1
		local Shape = shape.origin( shape.ASSDraw3( Shape ) )
		effector.print_error( Shape, "shape", "tag.movevc", 1 )
		effector.print_error( ti, "number", "tag.movevc", 2 )
		effector.print_error( tf, "number", "tag.movevc", 3 )
		effector.print_error( DX, "number", "tag.movevc", 4 )
		effector.print_error( DY, "number", "tag.movevc", 5 )
		effector.print_error( PX, "number", "tag.movevc", 6 )
		effector.print_error( PY, "number", "tag.movevc", 7 )
		shape.info( Shape )
		local Sh_W, Sh_H, Tag_fx = w_shape, h_shape, ""
		Tag_fx = format( "\\clip(%s)\\movevc(%s,%s,%s,%s,%s,%s)", Shape,
			math.round( PX - Sh_W/2, 2 ), math.round( PY - Sh_H/2, 2 ),
			math.round( PX - Sh_W/2 + DX, 2 ), math.round( PY - Sh_H/2 + DY, 2 ),
			math.round( ti, 2 ), math.round( tf, 2 )
		)
		return Tag_fx
	end
	
	function tag.movevci( Shape, posx, posy, Dx, Dy, time_vci, time_vcf )
		local  Tag_movevc = tag.movevc( Shape, posx, posy, Dx, Dy, time_vci, time_vcf ):gsub( "clip", "iclip" )
		return Tag_movevc
	end

	function tag.only( condition, s_true, s_false )
		if condition then
			return s_true
		end
		return s_false or ( (type( s_true ) == "number") and 0 or "" )
	end

	function tag.oscill( dur, delay, ... )
		-- delay = delay, or: delay = {delay, accel}, or: delay = {delay, accel, dilatation}
		effector.print_error( dur, "numbertable", "tag.oscill", 1 )
		effector.print_error( delay, "numbertable", "tag.oscill", 2 )
		local Ini, Dur, Index_i, dt, accel, dilat, Tags = 0, dur, 0, delay, 1, 0, { }
		if type( dur ) == "table" then
			Ini = dur[1]
			Dur = dur[2] - Ini
			if dur[3] then
				Index_i = dur[3] - 1
			end
		end
		if type( delay ) == "table" then
			if type( delay[1] ) == "table" then
				dt = delay[1][1]
			else
				dt = delay[1]
			end
			if delay[2] then
				accel = delay[2]
			end
			if delay[3] then
				dilat = delay[3]/2
			end
		end
		if type( ... ) == "table" then
			Tags = ...
		else
			Tags = { ... }
		end
		local t_1, t_2, Tag_fx = 0, 1, ""
		local indicator, tag_osc = 1, ""
		dt = dt - dilat
		i = 0
		while Dur > 0 do
			t_1 = math.round( dt*i + Ini, 2 )
			if type( delay ) == "table" and
				type( delay[1] ) == "table" then
				t_2 = t_1 + delay[1][2]
			else
				t_2 = math.round( (dt + dilat)*(i + 1) + Ini, 2 )
			end
			indicator = #Tags - #Tags*ceil( (i + 1 + Index_i)/#Tags ) + i + 1 + Index_i
			if Tags[indicator]:gsub( "%b[]", "" ) == "" then
				Tags[indicator] = Tags[indicator]:sub( 2, -2 )
				local line = linefx[ii]
				func_oscll = loadstring( format( "return function( meta, line, x, y ) return %s end", Tags[indicator] ) )( )
				Tags[indicator] = func_oscll( meta, line, x, y )
			end
			tag_osc = Tags[indicator]:gsub( "\\[%+%-]*%w+R[dcm]*%b()", "\\[%+%-]*%w+%(R[dcm]*%b()%)" )
			tag_osc = tag.redefine( tag_osc )
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s,%s)", t_1, t_2, accel, tag_osc )
			Tag_fx = Tag_fx:gsub( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,%d+[%.%d]*%,%)", "" )
			dt	= dt + dilat
			i	= i + 1
			Dur	= Dur - dt
		end
		return Tag_fx
	end

	function tag.glitter( dur, ExtraTags_i, ExtraTags_f )
		local Dur, ini, t, t1, t2, t3, t4, Tag_fx = 0, 0, 0, 0, 0, 0, 0, "\\shad0"
		if type( dur ) == "table" then
			Dur = dur[2] - dur[1]
			ini = dur[1]
		else
			Dur = dur or fx.dur
			ini = 0
		end
		local GT_i = ExtraTags_i or ""
		local GT_f = ExtraTags_f or ""
		effector.print_error( Dur, "numbertable", "tag.glitter", 1 )
		effector.print_error( ini, "numbertable", "tag.glitter", 1 )
		effector.print_error( GT_i, "string", "tag.glitter", 2 )
		effector.print_error( GT_f, "string", "tag.glitter", 3 )
		local tag_Ei, tag_Ef = "", ""
		i = 0
		while Dur > t do
			t1 = t + Rrd( 1, Dur/2, 1, 2*i )
			t2 = t1 + 1
			t3 = t2 + frame_dur
			t4 = t3 + 100
			size1 = Rrd( 1.5*fx.sizex, 2.5*fx.sizex, 1, i )
			size2 = Rrd( 0.5*fx.sizex, 1.5*fx.sizex, 1, -pi*i )
			tag_Ei = tag.redefine( GT_i )
			tag_Ef = tag.redefine( GT_f )
			Tag_fx = Tag_fx .. format( "\\t(%d,%d,%s\\fscx%d\\fscy%d)\\t(%d,%d,%s\\fscx%d\\fscy%d)",
			ini + t1, ini + t2, tag_Ei, size1, size1, ini + t3, ini + t4, tag_Ef, size2, size2 ) 
			t = t4
			i = i + 1
		end
		return Tag_fx 
	end
	
	function tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		local left_x, top_y, clip_W, clip_H, size_W, size_H, mode
		local loop_W, loop_H = fx.loop_h, fx.loop_v
		local offset = l.outline/2 + l.shadow/2
		if type( left_cx ) == "string" then
			clip_move = left_cx
			left_x, top_y  = fx.move_l1 - offset, fx.move_t1 - offset
			clip_W, clip_H = val_width + 2*offset, val_height + 2*offset
			mode = 79
		else
			left_x = (left_cx or fx.move_l1) - offset
			top_y = (top_cy or fx.move_t1) - offset
			clip_W, clip_H = (width_clip or val_width) + 2*offset, (height_clip or val_height) + 2*offset
			mode = Mode or 79
		end
		size_W, size_H = clip_W/loop_W, clip_H/loop_H
		local cx1, cx2, cy1, cy2
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, mode ) == false then
			mode = 79
		end
		if mode == 17 or mode == 71 then
			cx1 = left_x + (ceil( j/loop_H ) - 1)*size_W
			cx2 = left_x + (ceil( j/loop_H ) - 0)*size_W
		elseif mode == 13 or mode == 79 then
			cx1 = left_x + ((j - 1)%loop_W + 0)*size_W
			cx2 = left_x + ((j - 1)%loop_W + 1)*size_W
		elseif mode == 39 or mode == 93 then
			cx1 = left_x + clip_W - (ceil( j/loop_H ) - 0)*size_W
			cx2 = left_x + clip_W - (ceil( j/loop_H ) - 1)*size_W
		elseif mode == 31 or mode == 97 then
			cx1 = left_x + clip_W - ((j - 1)%loop_W + 1)*size_W
			cx2 = left_x + clip_W - ((j - 1)%loop_W + 0)*size_W
		end
		if mode == 79 or mode == 97 then
			cy1 = top_y + (ceil( j/loop_W ) - 1)*size_H
			cy2 = top_y + (ceil( j/loop_W ) - 0)*size_H
		elseif mode == 71 or mode == 93 then
			cy1 = top_y + ((j - 1)%loop_H + 0)*size_H
			cy2 = top_y + ((j - 1)%loop_H + 1)*size_H
		elseif mode == 13 or mode == 31 then
			cy1 = top_y + clip_H - (ceil( j/loop_W ) - 0)*size_H
			cy2 = top_y + clip_H - (ceil( j/loop_W ) - 1)*size_H
		elseif mode == 17 or mode == 39 then
			cy1 = top_y + clip_H - ((j - 1)%loop_H + 1)*size_H
			cy2 = top_y + clip_H - ((j - 1)%loop_H + 0)*size_H
		end
		local func_moves, tags_moves, tags_trans, clip_trans
		local table_moves = clip_move or nil
		local time_i, time_f, time_dur
		local clips_tag = ""
		if table_moves then
			if type( table_moves ) == "table" then
				if #table_moves%2 == 1 then
					time_i = table_moves[#table_moves][1]
					time_f = table_moves[#table_moves][2]
					table.remove( table_moves, #table_moves )
				else
					time_i = 0
					time_f = fx.dur
				end
				time_dur = time_f - time_i
				clips_tag = clips_tag .. format( "\\clip(%s,%s,%s,%s)",
					math.round( cx1 + table_moves[1], 2 ),
					math.round( cy1 + table_moves[2], 2 ),
					math.round( cx2 + table_moves[1], 2 ),
					math.round( cy2 + table_moves[2], 2 )
				)
				for i = 2, #table_moves/2 do
					clips_tag = clips_tag .. format( "\\t(%s,%s,\\clip(%s,%s,%s,%s))",
						math.round( time_i + (i - 2)*time_dur/tag.only( #table_moves/2 == 1, 1, #table_moves/2 - 1 ), 2 ),
						math.round( time_i + (i - 1)*time_dur/tag.only( #table_moves/2 == 1, 1, #table_moves/2 - 1 ), 2 ),
						math.round( cx1 + table_moves[2*i - 1], 2 ),
						math.round( cy1 + table_moves[2*i - 0], 2 ),
						math.round( cx2 + table_moves[2*i - 1], 2 ),
						math.round( cy2 + table_moves[2*i - 0], 2 )
					)
				end
			elseif type( table_moves ) == "string" then
				local line = linefx[ii]
				func_moves = loadstring( format( "return function( meta, line, x, y ) return %s end", table_moves ) )( )
				tags_moves = func_moves( meta, line, x, y )
				tags_trans = { }
				for tr in tags_moves:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,%d+[%.%d]*%,\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
					tr = tr:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + size_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + size_H, 2 )
							)
						end
					)
					table.insert( tags_trans, tr )
				end
				clip_trans = table.op( tags_trans, "concat" )
				if tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" ) then
					clips_tag = tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" )
					clips_tag = clips_tag:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)\\t", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + size_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + size_H, 2 )
							)
						end
					)
				else
					clips_tag = format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
				end
				clips_tag = tags_moves .. clips_tag .. clip_trans
			end
		else
			clips_tag = format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
		end
		return clips_tag
	end --tag.clip( syl.left, syl.top, syl.width, syl.height, 79, "shape.Rmove( 0.4*line.height)" )

	function tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		local left_x, top_y, clip_W, clip_H
		local offset = l.outline/2 + l.shadow/2
		if type( left_cx ) == "string" then
			clip_move = left_cx
			left_x, top_y  = fx.move_l1 - offset, fx.move_t1 - offset
			clip_W, clip_H = val_width + 2*offset, val_height + 2*offset
		else
			left_x = (left_cx or fx.move_l1) - offset
			top_y  = (top_cy or fx.move_t1) - offset
			clip_W = (width_clip or val_width) + 2*offset
			clip_H = (height_clip or val_height) + 2*offset
		end
		local cx1, cx2, cy1, cy2 = left_x, left_x + clip_W, top_y, top_y + clip_H
		local func_moves, tags_moves, tags_trans, clip_trans
		local table_moves = clip_move or nil
		local time_i, time_f, time_dur
		local clips_tag = ""
		if table_moves then
			if type( table_moves ) == "table" then
				if #table_moves%2 == 1 then
					time_i = table_moves[#table_moves][1]
					time_f = table_moves[#table_moves][2]
					table.remove( table_moves, #table_moves )
				else
					time_i = 0
					time_f = fx.dur
				end
				time_dur = time_f - time_i
				clips_tag = clips_tag .. format( "\\clip(%s,%s,%s,%s)",
					math.round( cx1 + table_moves[1], 2 ),
					math.round( cy1 + table_moves[2], 2 ),
					math.round( cx2 + table_moves[1], 2 ),
					math.round( cy2 + table_moves[2], 2 )
				)
				for i = 2, #table_moves/2 do
					clips_tag = clips_tag .. format( "\\t(%s,%s,\\clip(%s,%s,%s,%s))",
						math.round( time_i + (i - 2)*time_dur/tag.only( #table_moves/2 == 1, 1, #table_moves/2 - 1 ), 2 ),
						math.round( time_i + (i - 1)*time_dur/tag.only( #table_moves/2 == 1, 1, #table_moves/2 - 1 ), 2 ),
						math.round( cx1 + table_moves[2*i - 1], 2 ),
						math.round( cy1 + table_moves[2*i - 0], 2 ),
						math.round( cx2 + table_moves[2*i - 1], 2 ),
						math.round( cy2 + table_moves[2*i - 0], 2 )
					)
				end
			elseif type( table_moves ) == "string" then
				local line = linefx[ii]
				func_moves = loadstring( format( "return function( meta, line, x, y ) return %s end", table_moves ) )( )
				tags_moves = func_moves( meta, line, x, y )
				tags_trans = { }
				for tr in tags_moves:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,%d+[%.%d]*%,\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
					tr = tr:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + clip_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + clip_H, 2 )
							)
						end
					)
					table.insert( tags_trans, tr )
				end
				clip_trans = table.op( tags_trans, "concat" )
				if tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" ) then
					clips_tag = tags_moves:match( "\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*\\t" )
					clips_tag = clips_tag:gsub( "\\fscx(%d+[%.%d]*)\\fscy(%d+[%.%d]*)\\t", 
						function( x, y )
							return format( "\\clip(%s,%s,%s,%s)",
								math.round( x + cx1 - left_x, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y, 2 ),
								math.round( x + cx1 - left_x + clip_W, 2 ),
								math.round( y - l.height + l.descent + cy1 - top_y + clip_H, 2 )
							)
						end
					)
				else
					clips_tag = format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
				end
				clips_tag = tags_moves .. clips_tag .. clip_trans
			end
		else
			clips_tag = format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
		end
		return clips_tag
	end --tag.clip2( syl.left, syl.top, syl.width, syl.height, "shape.Rmove( 0.4*line.height)" )
	
	function tag.iclip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move )
		local  Tag_iclip = tag.clip( left_cx, top_cy, width_clip, height_clip, Mode, clip_move ):gsub( "clip", "iclip" )
		return Tag_iclip
	end
	
	function tag.iclip2( left_cx, top_cy, width_clip, height_clip, clip_move )
		local  Tag_clip2 = tag.clip2( left_cx, top_cy, width_clip, height_clip, clip_move ):gsub( "clip", "iclip" )
		return Tag_clip2
	end
	
	function tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmCdx, TmCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmCc1 = tag.clip( left_x, top_y, width_clip, height_clip, Mode )
		local TmCc2 = tag.clip( left_x + TmCdx, top_y + TmCdy, width_clip, height_clip, Mode )
		return format( "%s\\t(%s,%s,%s)", TmCc1, fx.movet_i, fx.movet_f, TmCc2 )
	end
	
	function tag.moveiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local  Tag_moveiclip = tag.moveclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_moveiclip
	end
	
	function tag.moveclip2( left_cx, top_cy, width_clip, height_clip )
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmC2dx, TmC2dy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmC2c1 = tag.clip2( left_x, top_y, width_clip, height_clip )
		local TmC2c2 = tag.clip2( left_x + TmC2dx, top_y + TmC2dy, width_clip, height_clip )
		return format( "%s\\t(%s,%s,%s)", TmC2c1, fx.movet_i, fx.movet_f, TmC2c2 )
	end
	
	function tag.moveiclip2( left_cx, top_cy, width_clip, height_clip )
		local  Tag_moveiclip2 = tag.moveclip2( left_cx, top_cy, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_moveiclip2
	end
	
	function tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local offset = l.outline/2 + l.shadow/2
		local mode = Mode or 79
		local left_x = (left_cx or fx.move_l1) - offset
		local top_y = (top_cy or fx.move_t1) - offset
		local clip_W, clip_H = (width_clip or val_width) + 2*offset, (height_clip or val_height) + 2*offset
		local loop_W, loop_H = fx.loop_h, fx.loop_v
		local pixelW, pixelH
		if j == 1 then
			pixelW = remember( "pixx", { } )
			pixelH = remember( "pixy", { } )
			pixelW[-1] = 0
			pixelH[-1] = 0
			for i = 0, loop_W - 1 do
				pixelW[i] = pixelW[i - 1] + clip_W/loop_W + R( -clip_W/(2*loop_W), clip_W/(2*loop_W) )
			end
			for i = 0, loop_H - 1 do
				pixelH[i] = pixelH[i - 1] + clip_H/loop_H + R( -clip_H/(2*loop_H), clip_H/(2*loop_H) )
			end
			pixelW[loop_W - 1] = clip_W
			pixelH[loop_H - 1] = clip_H
		else
			pixelW = recall.pixx
			pixelH = recall.pixy
		end
		local cx1, cx2, cy1, cy2
		if table.inside( { 13, 17, 31, 39, 71, 79, 93, 97 }, mode ) == false then
			mode = 79
		end
		if mode == 17 or mode == 71 then
			cx1 = left_x + pixelW[ceil( j/loop_H ) - 2]
			cx2 = left_x + pixelW[ceil( j/loop_H ) - 1]
		elseif mode == 13 or mode == 79 then
			cx1 = left_x + pixelW[(j - 1)%loop_W - 1]
			cx2 = left_x + pixelW[(j - 1)%loop_W - 0]
		elseif mode == 39 or mode == 93 then
			cx1 = left_x + clip_W - pixelW[ceil( j/loop_H ) - 1]
			cx2 = left_x + clip_W - pixelW[ceil( j/loop_H ) - 2]
		elseif mode == 31 or mode == 97 then
			cx1 = left_x + clip_W - pixelW[(j - 1)%loop_W - 0]
			cx2 = left_x + clip_W - pixelW[(j - 1)%loop_W - 1]
		end
		if mode == 79 or mode == 97 then
			cy1 = top_y + pixelH[ceil( j/loop_W ) - 2]
			cy2 = top_y + pixelH[ceil( j/loop_W ) - 1]
		elseif mode == 71 or mode == 93 then
			cy1 = top_y + pixelH[(j - 1)%loop_H - 1]
			cy2 = top_y + pixelH[(j - 1)%loop_H - 0]
		elseif mode == 13 or mode == 31 then
			cy1 = top_y + clip_H - pixelH[ceil( j/loop_W ) - 1]
			cy2 = top_y + clip_H - pixelH[ceil( j/loop_W ) - 2]
		elseif mode == 17 or mode == 39 then
			cy1 = top_y + clip_H - pixelH[(j - 1)%loop_H - 0]
			cy2 = top_y + clip_H - pixelH[(j - 1)%loop_H - 1]
		end
		return format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
	end

	function tag.Riclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local  Tag_Riclip = tag.Rclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_Riclip
	end
	
	function tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmRCdx, TmRCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmRCc1 = tag.Rclip( left_x, top_y, width_clip, height_clip, Mode )
		local TmRCc2 = tag.Rclip( left_x + TmRCdx, top_y + TmRCdy, width_clip, height_clip, Mode )
		return format( "%s\\t(%s,%s,%s)", TmRCc1, fx.movet_i, fx.movet_f, TmRCc2 )
	end

	function tag.moveRiclip( left_cx, top_cy, width_clip, height_clip, Mode )
		local  Tag_moveRiclip = tag.moveRclip( left_cx, top_cy, width_clip, height_clip, Mode ):gsub( "clip", "iclip" )
		return Tag_moveRiclip
	end
	
	function tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip ) --Rectangular Perimeter Clip
		local offset = l.outline/2 + l.shadow/2
		local left_x = (left_cx or fx.move_l1) - offset
		local top_y  = (top_cy or fx.move_t1) - offset
		local size_W = (width_clip or val_width) + 2*offset
		local size_H = (height_clip or val_height) + 2*offset
		local size_C = size_clip or { size_W, size_H }
		if type( size_C ) == "number" then
			size_C = { size_C, size_C }
		end
		local loop_x, loop_y, loop_p = ceil( size_W/size_C[1] ), ceil( size_H/size_C[2] ), 1
		fx.loop_h, fx.loop_v = loop_x, loop_y
		if 2*(loop_x + loop_y - 2) == 0 then
			loop_p = 1
		else
			loop_p = 2*(loop_x + loop_y - 2)
		end
		maxloop( loop_p )
		if loop_x == 1 or loop_y == 1 then
			return tag.clip( left_x, top_y, width_clip, height_clip )
		end
		left_x = left_x + (size_W - loop_x*size_C[1])/2
		top_y = top_y + (size_H - loop_y*size_C[2])/2
		local cx1, cx2, cy1, cy2 = 0, 0, 0, 0
		if j <= loop_x then
			cx1 = left_x + (j - 1)*size_C[1]
			cx2 = left_x + (j - 0)*size_C[1]
			cy1 = top_y
			cy2 = top_y + size_C[2]
		elseif j > loop_x and j <= loop_x + (maxj - 2*loop_x)/2 then
			cx1 = left_x
			cx2 = left_x + size_C[1]
			cy1 = top_y + ((j - loop_x - 1)%((maxj - 2*loop_x)/2) + 1)*size_C[2]
			cy2 = top_y + ((j - loop_x - 1)%((maxj - 2*loop_x)/2) + 2)*size_C[2]
		elseif j > loop_x + (maxj - 2*loop_x)/2
			and j <= maxj - loop_x then
			cx1 = left_x + (loop_x - 1)*size_C[1]
			cx2 = left_x + (loop_x - 0)*size_C[1]
			cy1 = top_y + ((j - loop_x + (maxj - 2*loop_x)/2 - 1)%((maxj - 2*loop_x)/2) + 1)*size_C[2]
			cy2 = top_y + ((j - loop_x + (maxj - 2*loop_x)/2 - 1)%((maxj - 2*loop_x)/2) + 2)*size_C[2]
		else
			cx1 = left_x + ((maxj - loop_x + j - 1)%loop_x + 0)*size_C[1]
			cx2 = left_x + ((maxj - loop_x + j - 1)%loop_x + 1)*size_C[1]
			cy1 = top_y + (loop_y - 1)*size_C[2]
			cy2 = top_y + (loop_y - 0)*size_C[2]
		end
		return format( "\\clip(%s,%s,%s,%s)", math.round( cx1, 2 ), math.round( cy1, 2 ), math.round( cx2, 2 ), math.round( cy2, 2 ) )
	end --tag.Pclip( { syl.width/6, syl.height/4 }, syl.left, syl.top, syl.width, syl.height )

	function tag.Piclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		local  Tag_Piclip = tag.Pclip( size_clip, left_cx, top_cy, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_Piclip
	end
	
	function tag.movePclip( size_clip, left_cx, top_cy, width_clip, height_clip )
		local left_x = left_cx or fx.move_l1
		local top_y  = top_cy or fx.move_t1
		local TmPCdx, TmPCdy = fx.move_l2 - fx.move_l1, fx.move_t2 - fx.move_t1
		local TmPCc1 = tag.Pclip( size_clip, left_x, top_y, width_clip, height_clip )
		local TmPCc2 = tag.Pclip( size_clip, left_x + TmPCdx, top_y + TmPCdy, width_clip, height_clip )
		return format( "%s\\t(%s,%s,%s)", TmPCc1, fx.movet_i, fx.movet_f, TmPCc2 )
	end

	function tag.movePiclip( size_clip, left_x, top_y, width_clip, height_clip )
		local  Tag_movePiclip = tag.movePclip( size_clip, left_x, top_y, width_clip, height_clip ):gsub( "clip", "iclip" )
		return Tag_movePiclip
	end
	
	function tag.HTML_to_ass( HTML_str )
		HTML_str = HTML_str:gsub( "%#%x%x%x%x%x%x",
			function( HTML_color )
				return color.ass( HTML_color )
			end
		)
		HTML_str = tag.natsu( HTML_str )		-- equivale a tag.module y tag.module1
		HTML_str = tag.dark( HTML_str )			-- unifica tags de tamaño y de rotación
		HTML_str = tag.do_alpha( HTML_str )		-- identifica los alphas en base decimal
		return HTML_str
		--se aplica al texto directamente antes de ejecutar cualquier función
	end
	
	function tag.xipol( vals )
		if #vals == 1 then
			vals[2] = vals[1]
		end
		local n = #vals - 1
		local N, vals_xipol, xmodule
		if j == 1 then
			vals_xipol = remember( "Xipol", { } )
			for i = 1, maxj do
				N = ceil( i/((maxj + 1)/n) )
			--	xmodule = (i - (N - 1)*(maxj + 1)/n - 1)/((maxj + 1)/n)
				xmodule = (i - (N - 1)*(maxj + 0)/n - 1)/((maxj + 1)/n - 1)
				vals_xipol[i] = vals[N] + (vals[N + 1] - vals[N]) * xmodule
			end
		else
			vals_xipol = recall.Xipol
		end
		return math.round( vals_xipol[j] )
	end
	
	function tag.xipol1( vals )
		if #vals == 1 then
			vals[2] = vals[1]
		end
		local n = #vals - 1
		local N, vals_xipol1, xmodule1
		if val_i == 1 then
			vals_xipol1 = remember( "Xipol1", { } )
			for i = 1, val_n do
				N = ceil( i/((val_n + 1)/n) )
			--	xmodule1 = (i - (N - 1)*(val_n + 1)/n - 1)/((val_n + 1)/n)
				xmodule1 = (i - (N - 1)*(val_n + 0)/n - 1)/((val_n + 1)/n - 1)
				vals_xipol1[i] = vals[N] + (vals[N + 1] - vals[N]) * xmodule1
			end
		else
			vals_xipol1 = recall.Xipol1
		end
		return math.round( vals_xipol1[val_i], 3 )
	end
	
	function tag.natsu( string_ipol )
		local tags_color = { "\\c", "\\1c", "\\2c", "\\3c", "\\4c", "\\1vc", "\\2vc", "\\3vc", "\\4vc" }
		local tags_alpha = { "\\alpha", "\\1a", "\\2a", "\\3a", "\\4a", "\\1va", "\\2va", "\\3va", "\\4va" }
		string_ipol = string_ipol:gsub( "(\\%w+%-?%b{})",
			function( capture )
				local line = linefx[ii]
				local tag_ipol = tag.operation( capture:match( "(\\%w+)%-?%b{}" ) )
				local val_ipol = capture:match( "\\%w+%-?(%b{})" ):sub( 2, -2 )
				local fun_ipol = loadstring( format( "return function( meta, line, module ) return {%s} end", val_ipol ) )( )
				local tbl_ipol = fun_ipol( meta, line, module )
				if capture:match( "(\\%w+%-)%b{}" ) then
					if table.inside( tags_color, tag_ipol ) then
						return format( "%s%s", tag_ipol, color.loop( tbl_ipol ) )
					elseif table.inside( tags_alpha, tag_ipol ) then
						return format( "%s%s", tag_ipol, alpha.loop( tbl_ipol ) )
					else
						if #tbl_ipol < 3 then
							table.insert( tbl_ipol, 1, tag_ipol )
							return tag.module( tbl_ipol )
						else
							return format( "%s%s", tag_ipol, tag.xipol( tbl_ipol ) )
						end
					end
				else
					if table.inside( tags_color, tag_ipol ) then
						return format( "%s%s", tag_ipol, color.ipol( tbl_ipol ) )
					elseif table.inside( tags_alpha, tag_ipol ) then
						return format( "%s%s", tag_ipol, alpha.ipol( tbl_ipol ) )
					else
						if #tbl_ipol < 3 then
							table.insert( tbl_ipol, 1, tag_ipol )
							return tag.module1( tbl_ipol )
						else
							return format( "%s%s", tag_ipol, tag.xipol1( tbl_ipol ) )
						end
					end
				end
			end
		)
		return string_ipol
	end

	function tag.dark( Text )
		local tags_i = {
			[01] = "\\fscxy%-?%d+[%.%d]*",	[02] = "\\frxy%-?%d+[%.%d]*",	[03] = "\\frxz%-?%d+[%.%d]*",
			[04] = "\\fryz%-?%d+[%.%d]*",	[05] = "\\frxyz%-?%d+[%.%d]*",	[06] = "\\fscxyR[dcm]*%b()",
			[07] = "\\frxyR[dcm]*%b()",		[08] = "\\frxzR[dcm]*%b()",		[09] = "\\fryzR[dcm]*%b()",
			[10] = "\\frxyzR[dcm]*%b()"
		}
		local tags_r = { }
		if fx__.language == "Lua" then
			tags_r = {
				[01] = "\\fscx%s\\\\fscy%s",	[02] = "\\frx%s\\\\fry%s",			[03] = "\\frx%s\\\\frz%s",
				[04] = "\\fry%s\\\\frz%s",		[05] = "\\frx%s\\\\fry%s\\\\frz%s",	[06] = "\\fscx%s\\\\fscy%s",
				[07] = "\\frx%s\\\\fry%s",		[08] = "\\frx%s\\\\frz%s",			[09] = "\\fry%s\\\\frz%s",
				[10] = "\\frx%s\\\\fry%s\\\\frz%s"
			}
		else
			tags_r = {
				[01] = "\\fscx%s\\fscy%s",		[02] = "\\frx%s\\fry%s",			[03] = "\\frx%s\\frz%s",
				[04] = "\\fry%s\\frz%s",		[05] = "\\frx%s\\fry%s\\frz%s",		[06] = "\\fscx%s\\fscy%s",
				[07] = "\\frx%s\\fry%s",		[08] = "\\frx%s\\frz%s",			[09] = "\\fry%s\\frz%s",
				[10] = "\\frx%s\\fry%s\\frz%s"
			}
		end
		for i = 1, #tags_i do
			Text = Text:gsub( tags_i[i],
				function( capture )
					local line = linefx[ii]
					if capture:match( "R[dcm]*%b()" ) then
						local rnd_dark = capture:match( "(R[dcm]*)" )
						local val_dark = capture:match( "(%b())" ):sub( 2, -2 )
						local fun_dark = loadstring( format( "return function( meta, line, module ) return {%s} end", val_dark ) )( )
						local tbl_dark = fun_dark( meta, line, module )
						if rnd_dark == "R" then
							return format( tags_r[i], R( unpack( tbl_dark ) ),  R( unpack( tbl_dark ) ),  R( unpack( tbl_dark ) ) )
						elseif rnd_dark == "Rd" then
							return format( tags_r[i], Rd( unpack( tbl_dark ) ), Rd( unpack( tbl_dark ) ), Rd( unpack( tbl_dark ) ) )
						elseif rnd_dark == "Rc" then
							return format( tags_r[i], Rc( unpack( tbl_dark ) ), Rc( unpack( tbl_dark ) ), Rc( unpack( tbl_dark ) ) )
						elseif rnd_dark == "Rm" then
							return format( tags_r[i], Rm( unpack( tbl_dark ) ), Rm( unpack( tbl_dark ) ), Rm( unpack( tbl_dark ) ) )
						end
					else
						local val_dark2 = tonumber( capture:match( "%-?%d+[%.%d]*" ) )
						return format( tags_r[i], val_dark2, val_dark2, val_dark2 )
					end
				end
			)
		end
		--Text = Text:gsub("\\\\", "\\")
		return Text
	end
	
	function tag.do_alpha( tag_txt )
		local tag_alpha = {
			[1] = "\\alpha(%d+)",
			[2] = "\\1a(%d+)",
			[3] = "\\2a(%d+)",
			[4] = "\\3a(%d+)",
			[5] = "\\4a(%d+)",
			[6] = "\\1va%([ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)[ ]*%)",
			[7] = "\\2va%([ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)[ ]*%)",
			[8] = "\\3va%([ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)[ ]*%)",
			[9] = "\\4va%([ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)%,[ ]*(%d+)[ ]*%)"
		}
		local tag_replace = {
			[1] = "\\alpha%s",
			[2] = "\\1a%s",
			[3] = "\\2a%s",
			[4] = "\\3a%s",
			[5] = "\\4a%s",
			[6] = "\\1va(%s,%s,%s,%s)",
			[7] = "\\2va(%s,%s,%s,%s)",
			[8] = "\\3va(%s,%s,%s,%s)",
			[9] = "\\4va(%s,%s,%s,%s)"
		}
		for i = 1, 5 do
			tag_txt = tag_txt:gsub( tag_alpha[i],
				function( num )
					return format( tag_replace[i], ass_alpha( num ) )
				end
			)
		end
		for i = 6, 9 do
			tag_txt = tag_txt:gsub( tag_alpha[i],
				function( num1, num2, num3, num4 )
					return format( tag_replace[i], ass_alpha( num1 ), ass_alpha( num2 ), ass_alpha( num3 ), ass_alpha( num4 ) )
				end
			)
		end
		return tag_txt
	end
	
	function tag.do_tag( KE_str )
		local func_tag = {
			[001] = "\\tag.set%b()",			[002] = "\\tag.movevc%b()",			[003] = "\\tag.movevci%b()",		[004] = "\\tag.only%b()",
			[005] = "\\tag.oscill%b()",			[006] = "\\tag.glitter%b()",		[007] = "\\tag.clip%b()",			[008] = "\\tag.clip2%b()",
			[009] = "\\tag.iclip%b()",			[010] = "\\tag.iclip2%b()",			[011] = "\\tag.moveclip%b()",		[012] = "\\tag.moveiclip%b()",
			[013] = "\\tag.moveclip2%b()",		[014] = "\\tag.moveiclip2%b()",		[015] = "\\tag.Rclip%b()",			[016] = "\\tag.Riclip%b()",
			[017] = "\\tag.moveRclip%b()",		[018] = "\\tag.moveRiclip%b()",		[019] = "\\tag.Pclip%b()",			[020] = "\\tag.Piclip%b()",
			[021] = "\\tag.movePclip%b()",		[022] = "\\tag.movePiclip%b()",		[023] = "\\tag.colorchange%b()",	[024] = "\\tag.colorchange1%b()",
			[025] = "\\tag.colorchange2%b()",	[026] = "\\tag.colorchange3%b()",	[027] = "\\tag.colorchange4%b()",	[028] = "\\shape.Lmove%b()",
			[029] = "\\shape.Lmove2%b()",		[030] = "\\shape.Pmove%b()",		[031] = "\\shape.Smove%b()",		[032] = "\\shape.Rmove%b()",
			[033] = "\\shape.Rmove2%b()",		[034] = "\\shape.Rmove3%b()",		[035] = "\\shape.Rmove4%b()",		[036] = "\\shape.movevc%b()",
			[037] = "\\shape.movevci%b()"
		}
		local func_rep = {
			[001] = tag.set,					[002] = tag.movevc,					[003] = tag.movevci,				[004] = tag.only,
			[005] = tag.oscill,					[006] = tag.glitter,				[007] = tag.clip,					[008] = tag.clip2,
			[009] = tag.iclip,					[010] = tag.iclip2,					[011] = tag.moveclip,				[012] = tag.moveiclip,
			[013] = tag.moveclip2,				[014] = tag.moveiclip2,				[015] = tag.Rclip,					[016] = tag.Riclip,
			[017] = tag.moveRclip,				[018] = tag.moveRiclip,				[019] = tag.Pclip,					[020] = tag.Piclip,
			[021] = tag.movePclip,				[022] = tag.movePiclip,				[023] = tag.colorchange,			[024] = tag.colorchange1,
			[025] = tag.colorchange2,			[026] = tag.colorchange3,			[027] = tag.colorchange4,			[028] = shape.Lmove,
			[029] = shape.Lmove2,				[030] = shape.Pmove,				[031] = shape.Smove,				[032] = shape.Rmove,
			[033] = shape.Rmove2,				[034] = shape.Rmove3,				[035] = shape.Rmove4,				[036] = shape.movevc,
			[037] = shape.movevci
		}
		for i = 1, #func_tag do
			KE_str = KE_str:gsub( func_tag[i],
				function( capture )
					local line = linefx[ii]
					local val_dotag = capture:match( "\\%w+[%.%w+]*(%b())" ):sub( 2, -2 )
					if fx__.language == "Lua" then
						val_dotag = val_dotag:gsub( "\\", "\\\\" ) --mejor probar con tag.operation!!
					end
					local fun_dotag = loadstring( format( "return function( meta, line, module ) return { %s } end", val_dotag ) )( )
					local tbl_dotag = fun_dotag( meta, line, module )
					return func_rep[i]( unpack( tbl_dotag ) )
				end
			)
		end
		return KE_str
	end
	
	function tag.to_Auto4( str_dollar2 )
		local str_dollar2, t_structure, structure = tag.v_dollar( str_dollar2 ), { }, ""
		for v_dol1 in str_dollar2:gmatch( "%b!!" ) do
			table.insert( t_structure, v_dol1 )
		end
		local line = linefx[ii]
		for i = 1, #t_structure do
			structure = t_structure[i]:gsub( "%!", "" )
			if pcall( loadstring( "return function( meta, line, x, y ) return " .. structure .. " end" ) ) == true then
				structure_ = loadstring( "return function( meta, line, x, y ) return " .. structure .. " end" )( )
				structu_KE = structure_( meta, line, x, y )
				t_structure[i] = tag.operation( t_structure[i] )
			else
				structu_KE = t_structure[i]
			end
			str_dollar2 = str_dollar2:gsub( t_structure[i], structu_KE, 1 )
		end
		if str_dollar2:len( ) > str_dollar2:gsub( "}", "" ):len( ) then
			i4 = str_dollar2:find( "}" )
			if type( str_dollar2:sub( i4 + 1, -1 ) ) == "string"
				and str_dollar2:sub( i4 + 1, -1 ) ~= "" then
				returnfx = { [1] = str_dollar2:sub( i4 + 1, -1 ) }
			end
			str_dollar2 = tag.HTML_to_ass( str_dollar2:sub( 1, i4 ) )
		end
		return tag.do_tag( str_dollar2 ):gsub( "{", "" ):gsub( "}", "" )
	end
	
	function tag.to_temp( Temp_Line )
		local Temp_Line, T_adm, T_cap, T_capKE = tag.temp2( Temp_Line ), { }, "", ""
		for c in Temp_Line:gmatch( "%b!!" ) do
			table.insert( T_adm, c )
		end
		local line = linefx[ii]
		for i = 1, #T_adm do
			T_cap = T_adm[i]:gsub( "%!", "" )
			if pcall( loadstring( "return function( meta, line, x, y ) return " .. T_cap .. " end" ) ) == true then
				T_cap_   = loadstring( "return function( meta, line, x, y ) return " .. T_cap .. " end" )( )
				T_capKE  = T_cap_( meta, line, x, y )
				T_adm[i] = tag.operation( T_adm[i] )
			else
				T_capKE = T_adm[i]
			end
			Temp_Line = Temp_Line:gsub( T_adm[i], T_capKE, 1 )
		end
		return Temp_Line
	end
	
	function tag.v_dollar( str_dollar )
		local var_dollar = {
			[001] = "$layer",	 [002] = "$style",	  [003] = "$actor",	   [004] = "$margin_l", [005] = "$margin_r",
			[006] = "$margin_v", [007] = "$margin_t", [008] = "$margin_b", ------▲ variables de estilo -------------
			[009] = "$lstart",	 [010] = "$lend",	  [011] = "$lmid",	   [012] = "$ldur",
			[013] = "$li",		 [014] = "$linen",	  [015] = "$lleft",	   [016] = "$lcenter",	[017] = "$lright",
			[018] = "$lbottom",	 [019] = "$lmiddle",  [020] = "$ltop",	   [021] = "$lwidth",	[022] = "$lheight",
			[023] = "$lx",		 [024] = "$ly",		  [025] = "$lkdur",	   ------▲ variables de linea --------------
			[026] = "$sstart",	 [027] = "$send",	  [028] = "$smid",	   [029] = "$sdur",
			[030] = "$si",		 [031] = "$syln",	  [032] = "$sleft",	   [033] = "$scenter",	[034] = "$sright",
			[035] = "$sbottom",	 [036] = "$smiddle",  [037] = "$stop",	   [038] = "$swidth",	[039] = "$sheight",
			[040] = "$sx",		 [041] = "$sy",		  [042] = "$skdur",	   ------▲ variables de sílaba -------------
			[043] = "$fstart",	 [044] = "$fend",	  [045] = "$fmid",	   [046] = "$fdur",
			[047] = "$fi",		 [048] = "$furin",	  [049] = "$fleft",	   [050] = "$fcenter",	[051] = "$fright",
			[052] = "$fbottom",	 [053] = "$fmiddle",  [054] = "$ftop",	   [055] = "$fwidth",	[056] = "$fheight",
			[057] = "$fx",		 [058] = "$fy",		  [059] = "$fkdur",	   ------▲ variables de furigana -----------
			[060] = "$cstart",	 [061] = "$cend",	  [062] = "$cmid",	   [063] = "$cdur",
			[064] = "$ci",		 [065] = "$charn",	  [066] = "$cleft",	   [067] = "$ccenter",	[068] = "$cright",
			[069] = "$cbottom",	 [070] = "$cmiddle",  [071] = "$ctop",	   [072] = "$cwidth",	[073] = "$cheight",
			[074] = "$cx",		 [075] = "$cy",		  [076] = "$ckdur",	   ------▲ variables de caracter -----------
			[077] = "$wstart",	 [078] = "$wend",	  [079] = "$wmid",	   [080] = "$wdur",
			[081] = "$wi",		 [082] = "$wordn",	  [083] = "$wleft",	   [084] = "$wcenter",	[085] = "$wright",
			[086] = "$wbottom",	 [087] = "$wmiddle",  [088] = "$wtop",	   [089] = "$wwidth",	[090] = "$wheight",
			[091] = "$wx",		 [092] = "$wy",		  [093] = "$wkdur",	   ------▲ variables de palabra ------------
			[094] = "$fxstart",	 [095] = "$fxend",	  [096] = "$fxmid",	   [097] = "$fxdur",
			[098] = "$fxi",		 [099] = "$fxn",	  [100] = "$fxleft",   [101] = "$fxcenter",	[102] = "$fxright",
			[103] = "$fxbottom", [104] = "$fxmiddle", [105] = "$fxtop",	   [106] = "$fxwidth",	[107] = "$fxheight",
			[108] = "$fxx",		 [109] = "$fxy",	  [110] = "$fxkdur",   ------▲ variables de efecto -------------
			[111] = "$start",	 [112] = "$end",	  [113] = "$mid",	   [114] = "$dur",
			[115] = "$i",		 [116] = "$n",		  [117] = "$left",	   [118] = "$center",	[119] = "$right",
			[120] = "$bottom",	 [121] = "$middle",	  [122] = "$top",	   [123] = "$width",	[124] = "$height",
			[125] = "$x",		 [126] = "$y",		  [127] = "$kdur",	   ------▲ variables generales -------------
			[128] = "$scale_x",  [129] = "$scale_y",  [130] = "$angle",    [131] = "$outline",	[132] = "$shadow",
			[133] = "$fontsize", [134] = "$fontname", [135] = "$spacing",  [136] = "$color1",	[137] = "$color2",
			[138] = "$color3",   [139] = "$color4",   [140] = "$alpha1",   [141] = "$alpha2",	[142] = "$alpha3",
			[143] = "$alpha4",   [144] = "$align"						   ------▲ variables extra estilo ----------
		}
		local var_kefx = {
			[001] = l_layer,	 [002] = l_style,	  [003] = l_actor,	   [004] = l_ml,		[005] = l_mr,
			[006] = l_mv,		 [007] = l_mt,		  [008] = l_mb,		   ------▲ variables de estilo -------------
			[009] = l_start,	 [010] = l_end,		  [011] = l_mid,	   [012] = l_dur,
			[013] = l_i,		 [014] = l_n,		  [015] = l_left,	   [016] = l_center,	[017] = l_right,
			[018] = l_bottom,	 [019] = l_middle,	  [020] = l_top,	   [021] = l_width,		[022] = l_height,
			[023] = l_x,		 [024] = l_y,		  [025] = l_dur/10,	   ------▲ variables de linea --------------
			[026] = syl_start,	 [027] = syl_end,	  [028] = syl_mid,	   [029] = syl_dur,
			[030] = syl_i,		 [031] = syl_n,		  [032] = syl_left,	   [033] = syl_center,	[034] = syl_right,
			[035] = syl_bottom,	 [036] = syl_middle,  [037] = syl_top,	   [038] = syl_width,	[039] = syl_height,
			[040] = syl_center,	 [041] = syl_middle,  [042] = syl_dur/10,  ------▲ variables de sílaba -------------
			[043] = furi_start,	 [044] = furi_end,	  [045] = furi_mid,	   [046] = furi_dur,
			[047] = furi_i,		 [048] = furi_n,	  [049] = furi_left,   [050] = furi_center,	[051] = furi_right,
			[052] = furi_bottom, [053] = furi_middle, [054] = furi_top,	   [055] = furi_width,	[056] = furi_height,
			[057] = furi_center, [058] = furi_middle, [059] = furi_dur/10,  ------▲ variables de furigana -----------
			[060] = char_start,	 [061] = char_end,	  [062] = char_mid,	   [063] = char_dur,
			[064] = char_i,		 [065] = char_n,	  [066] = char_left,   [067] = char_center,	[068] = char_right,
			[069] = char_bottom, [070] = char_middle, [071] = char_top,	   [072] = char_width,	[073] = char_height,
			[074] = char_center, [075] = char_middle, [076] = char_dur/10,  ------▲ variables de caracter -----------
			[077] = word_start,	 [078] = word_end,	  [079] = word_mid,	   [080] = word_dur,
			[081] = word_i,		 [082] = word_n,	  [083] = word_left,   [084] = word_center,	[085] = word_right,
			[086] = word_bottom, [087] = word_middle, [088] = word_top,	   [089] = word_width,	[090] = word_height,
			[091] = word_center, [092] = word_middle, [093] = word_dur/10,  ------▲ variables de palabra ------------
			[094] = fx_start,	 [095] = fx_end,	  [096] = fx_mid,	   [097] = fx_dur,
			[098] = fx_i,		 [099] = fx_n,		  [100] = fx_left,     [101] = fx_center,	[102] = fx_right,
			[103] = fx_bottom,	 [104] = fx_middle,	  [105] = fx_top,	   [106] = fx_width,	[107] = fx_height,
			[108] = fx_x,		 [109] = fx_y,		  [110] = fx_dur/10,   ------▲ variables de efecto -------------
			[111] = val_start,	 [112] = val_end,	  [113] = val_mid,	   [114] = val_dur,
			[115] = val_i,		 [116] = val_n,		  [117] = val_left,	   [118] = val_center,	[119] = val_right,
			[120] = val_bottom,	 [121] = val_middle,  [122] = val_top,	   [123] = val_width,	[124] = val_height,
			[125] = val_center,	 [126] = val_middle,  [127] = val_dur/10,  ------▲ variables generales -------------
			[128] = l_scale_x,	 [129] = l_scale_y,	  [130] = l_angle,	   [131] = l_outline,	[132] = l_shadow,
			[133] = l_fsize,	 [134] = l_fname,	  [135] = l_spacing,   [136] = l_color1,	[137] = l_color2,
			[138] = l_color3,	 [139] = l_color4,	  [140] = l_alpha1,	   [141] = l_alpha2,	[142] = l_alpha3,
			[143] = l_alpha4,	 [144] = l_align						   ------▲ variables extra estilo ----------
		}
		local t_dollar, val_KE = { }, ""
		var_kefx = math.round( var_kefx, 2 )
		for c_dol in str_dollar:gmatch( "%$%w+[_%w]*" ) do
			table.insert( t_dollar, c_dol )
		end
		for i = 1, #t_dollar do
			if type( table.index( var_dollar, t_dollar[i] ) ) == "number" then
				val_KE = var_kefx[table.index( var_dollar, t_dollar[i] )]
			else
				val_KE = t_dollar[i]
			end
			str_dollar = str_dollar:gsub( t_dollar[i], val_KE, 1 )
		end
		return str_dollar
	end
	
	function tag.coupling( str_addtags )
		local tags_unrepeat, tag2_unrepeat, tag2_unrpt = { }, { }, { }
		tags_unrepeat = { "\\an?%d", "\\org%(.-%)", "\\pos%(.-%)", "\\move%(.-%)", "\\moves3%(.-%)", "\\moves4%(.-%)", "\\mover%(.-%)", "\\movevc%(.-%)" }
		tag2_unrepeat = { "\\pos%(.-%)", "\\move%(.-%)", "\\moves3%(.-%)", "\\moves4%(.-%)", "\\mover%(.-%)" }
		function tag.coupling2( str_addtags2, tag_cap )
			local tags_unrpt = { }
			for c_cou in str_addtags2:gmatch( tag_cap ) do
				table.insert( tags_unrpt, c_cou )
			end
			if #tags_unrpt > 1 then
				str_addtags2 = str_addtags2:gsub( tag_cap, "", #tags_unrpt - 1 )
			end
			return str_addtags2
		end
		for i = 1, #tags_unrepeat do
			str_addtags = tag.coupling2( str_addtags, tags_unrepeat[i] )
		end
		for i = 1, #tag2_unrepeat do
			for c_cou2 in str_addtags:gmatch( tag2_unrepeat[i] ) do
				table.insert( tag2_unrpt, c_cou2 )
			end
		end
		if #tag2_unrpt > 1 then
			for i = 1, #tag2_unrpt - 1 do
				str_addtags = str_addtags:gsub( tag.operation( tag2_unrpt[i] ), "" )
			end
		end
		return str_addtags
	end
	
	function tag.operation( str_structure )
		str_structure = str_structure:gsub( "%%","%%%%" ):gsub( "%*", "%%*" ):gsub( "%+", "%%+" ):gsub( "%-", "%%-" )
		str_structure = str_structure:gsub( "%(", "%%(" ):gsub( "%)", "%%)" ):gsub( "%[", "%%[" ):gsub( "%]", "%%]" )
		return str_structure
	end

	function tag.to_err( str_vm )
		local rep1, rep2, rep3, err_ = { }, { }, { }, { }
		rep1 = { "\\[%d]*c%(.-%)", "\\%da%(.-%)", "\\%dvc%&.-%&", "\\%dva%&.-%&", "\\alpha%(.-%)" }
		rep2 = { { "\\[%d]*c", "%(.-%)" }, { "\\%da", "%(.-%)" }, { "\\%dvc", "%&.-%&" }, { "\\%dva", "%&.-%&" }, { "\\alpha", "%(.-%)" } }
		rep3 = { color.vc_to_c, alpha.va_to_a, color.c_to_vc, alpha.a_to_va, alpha.va_to_a }
		for k = 1, 5 do
			i = 1
			err_[k] = { }
			for c_err in str_vm:gmatch( rep1[k] ) do
				table.insert( err_[k], c_err )
			end
			err_[6] = { }
			for i = 1, #err_[k] do
				err_[6][i] = { }
				err_[6][i][1] = err_[k][i]:match( rep2[k][1] )
				err_[6][i][2] = rep3[k]( err_[k][i]:match( rep2[k][2] ) )
			end
			while i <= #err_[k] do
				str_vm = str_vm:gsub( rep1[k], err_[6][i][1] .. err_[6][i][2], 1 )
				i = i + 1
			end
		end
		return str_vm
	end
	
	function tag.to_vsf( str_mod )
		local str_vsf, tags_mod, tags_vsf, t_mod = tag.to_err( str_mod ), { }, { }, { }
		t_mod = { "\\1vc", "\\2vc", "\\3vc", "\\4vc", "\\1va", "\\2va", "\\3va", "\\4va" }
		local i_c, i_a = interpolate_color, interpolate_alpha
		local func_, repl_, ni = { i_c, i_a }, { "(%x%x%x%x%x%x)", "(%x%x)" }, 1
		local tags_vsf_1, tags_vsf_2
		for k = 1, #t_mod do
			ni = ceil( k/4 )
			tags_mod[k], tags_vsf[k] = { }, { }
			for c_vsf in str_vsf:gmatch( t_mod[k] .. "%(.-%)" ) do
				table.insert( tags_mod[k], c_vsf )
			end
			for i = 1, #tags_mod[k] do
				tags_vsf[k][i] = { }
				for c_vsf2 in tags_mod[k][i]:gmatch( repl_[ni] ) do
					table.insert( tags_vsf[k][i], "&H" .. c_vsf2 .. "&" )
				end
				tags_vsf_1 = func_[ni]( 0.5, tags_vsf[k][i][1], tags_vsf[k][i][4] )
				tags_vsf_2 = func_[ni]( 0.5, tags_vsf[k][i][2], tags_vsf[k][i][3] )
				tags_vsf[k][i] = func_[ni]( 0.5, tags_vsf_1, tags_vsf_2 )
			end
			str_vsf = str_vsf:gsub( t_mod[k] .. "%(.-%)", t_mod[k] )
			i = 1
			while i <= #tags_mod[k] do
				str_vsf = str_vsf:gsub( t_mod[k], t_mod[k]:gsub( "v", "" ) .. tags_vsf[k][i], 1 )
				i = i + 1
			end
		end
		str_vsf = tag.coupling( str_vsf:gsub( "}{", "" ):gsub( "{}", "" ):gsub( "{{", "{" ):gsub( "}}", "}" ) )
		return str_vsf:gsub( "}|{", "}{" )
	end
	
	function tag.to_mod( str_vsf )
		local str_mod, A_vsf, ki = tag.to_err( str_vsf ), { }, 1
		local t_vsf = { "\\c", "\\1c", "\\2c", "\\3c", "\\4c", "\\1a", "\\2a", "\\3a", "\\4a" }
		for k = 1, #t_vsf do
			local tags_vsf2 = { }
			for c_mod in str_mod:gmatch( t_vsf[k] .. "%&.-%&" ) do
				table.insert( tags_vsf2, math.format2( "(%s,%s,%s,%s)", c_mod:gsub( t_vsf[k], "" ) ) )
			end
			str_mod =  str_mod:gsub( t_vsf[k] .. "%&.-%&", t_vsf[k] )
			local i = 1
			while i <= #tags_vsf2 do
				str_mod = str_mod:gsub( t_vsf[k], t_vsf[k]:gsub( "c", "vc" ):gsub( "a", "va" ) .. tags_vsf2[i], 1 )
				i = i + 1
			end
		end
		for c_mod2 in str_mod:gmatch( "\\alpha%&.-%&" ) do
			table.insert( A_vsf, math.format2( "(%s,%s,%s,%s)", c_mod2:gsub( "\\alpha", "" ) ) )
		end
		while ki <= #A_vsf do
			str_mod = str_mod:gsub( "\\alpha%&.-%&", math.format2( "\\1va%s\\3va%s\\4va%s", A_vsf[ki] ), 1 )
			ki = ki + 1
		end
		str_mod = tag.coupling( str_mod:gsub( "\\vc", "\\1vc" ):gsub( "}{", "" ):gsub( "{}", "" ):gsub( "{{", "{" ):gsub( "}}", "}" ) )
		str_mod = str_mod:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
			function( c, x, y )
				if c then
					return format( "%s %s %s ", c, math.round( tonumber( x ) ), math.round( tonumber( y ) ) )
				end
			end
		)
		return str_mod:gsub( "}|{", "}{" )
	end
	
	function tag.colorchange( Color_or_Table, dur )
		local c_ch, t_ch = Color_or_Table, { }
		local t_ci, t_cf = 0, 0
		if type( c_ch ) == "table" then
			t_ch = c_ch
		else
			t_ch = { c_ch }
		end
		t_ch = color.from_error( t_ch )
		if type( dur ) == "table" then
			t_ci = dur[1]
			t_cf = dur[2]
		else
			t_ci = 0
			t_cf = dur or fx.dur
		end
		local i, Tag_fx, T_c = 1, "", math.round( (t_cf - t_ci)/#t_ch, 2 )
		while i <= #t_ch do
			if color.assF( t_ch[i] ):len( ) < 15 then
				tag_C = "\\1c"
			else
				tag_C = "\\1vc"
			end
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t_ci + T_c*(i - 1), t_ci + T_c*i, tag_C .. color.assF( t_ch[i] ) )
			i = i + 1
		end
		return Tag_fx
	end
	
	function tag.colorchange1( Color_or_Table, dur )
		return tag.colorchange( Color_or_Table, dur )
	end
	
	function tag.colorchange2( Color_or_Table, dur )
		local  color_chng2 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\2" )
		return color_chng2
	end
	
	function tag.colorchange3( Color_or_Table, dur )
		local  color_chng3 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\3" )
		return color_chng3
	end
	
	function tag.colorchange4( Color_or_Table, dur )
		local  color_chng4 = tag.colorchange( Color_or_Table, dur ):gsub( "\\1", "\\4" )
		return color_chng4
	end
	
	function tag.ipol( Ipol1, Ipol2, i_ipol )
		local val1, val2, v1, v2 = { }, { }, "", ""
		if i_ipol == nil then
			i_ipol = 0.5
		elseif i_ipol <= 0 then
			i_ipol = 0
		elseif i_ipol >= 1 then
			i_ipol = 1
		end
		if type( Ipol1 ) == "number"
			and type( Ipol2 ) == "number" then
			return Ipol1 + i_ipol*(Ipol2 - Ipol1)
		elseif type( Ipol1 ) == "string"
			and type( Ipol2 ) == "string" then
			Ipol1 = color.from_error( Ipol1 )
			Ipol2 = color.from_error( Ipol2 )
			for c in Ipol1:gmatch( "&.-&" ) do
				table.insert( val1, c )
			end
			for c in Ipol2:gmatch( "&.-&" ) do
				table.insert( val2, c )
			end
			if #val1 == 0 or #val2 == 0 then
				return Ipol1, Ipol2
			end
			if #val1 == 4 then
				v1 = format( "(%s,%s,%s,%s)", val1[1], val1[2], val1[3], val1[4] )
			else
				v1 = val1[1]
			end
			if #val2 == 4 then
				v2 = format( "(%s,%s,%s,%s)", val2[1], val2[2], val2[3], val2[4] )
			else
				v2 = val2[1]
			end
			if v1:len( ) > 25 then
				v1 = color.vc_to_c( v1 )
			end
			if v2:len( ) > 25 then
				v2 = color.vc_to_c( v2 )
			end
			if v1:len( ) == 25 then
				v1 = alpha.va_to_a( v1 )
			end
			if v2:len( ) == 25 then
				v2 = alpha.va_to_a( v2 )
			end
			if v1:len( ) == 5
				and v2:len( ) == 5 then
				return interpolate_alpha( i_ipol, v1, v2 )
			end
			return interpolate_color( i_ipol, v1, v2 )			
		end
		return Ipol1, Ipol2
	end
	
	function tag.temp2( my_temp )
		local my_temp_bar, my_temp_Tbar = "", { }
		if my_temp:match( "%b||" ) then
			for c in my_temp:gmatch( "%b||" ) do
				table.insert( my_temp_Tbar, c )
			end
			my_temp_bar = table.op( my_temp_Tbar, "concat" )
			my_temp = my_temp:gsub( "%b||", "" )
		end
		local var_temp_D = {
			[001] = "$layer",	 [002] = "$style",	   [003] = "$actor",	[004] = "$margin_l", [005] = "$margin_r", [006] = "$margin_v",
			[007] = "$margin_t", [008] = "$margin_b",  [009] = "$scale_x",  [010] = "$scale_y",  [011] = "$angle",    [012] = "$outline",
			[013] = "$shadow",   [014] = "$fontsize",  [015] = "$fontname", [016] = "$spacing",  [017] = "$color1",	  [018] = "$color2",
			[019] = "$color3",   [020] = "$color4",    [021] = "$alpha1",   [022] = "$alpha2",	 [023] = "$alpha3",   [024] = "$alpha4",
			[025] = "$align",	 [026] = "$lstart",	   [027] = "$lend",	    [028] = "$lmid",	 [029] = "$ldur",	  [030] = "$li",
			[031] = "$linen",	 [032] = "$lleft",	   [033] = "$lcenter",  [034] = "$lright",   [035] = "$lbottom",  [036] = "$lmiddle",
			[037] = "$ltop",	 [038] = "$lwidth",	   [039] = "$lheight",  [040] = "$lx",		 [041] = "$ly",		  [042] = "$lkdur",
			[043] = "$lpretime", [044] = "$lposttime", [045] = "$ldescent", [046] = "$lextlead", [047] = "$sbottom",  [048] = "$smiddle",
			[049] = "$stop",	 [050] = "$sheight",   [051] = "$cbottom",	[052] = "$cmiddle",  [053] = "$ctop",	  [054] = "$cheight",
			[055] = "$wbottom",	 [056] = "$wmiddle",   [057] = "$wtop",		[058] = "$wheight",	 [059] = "$fxbottom", [060] = "$fxmiddle",
			[061] = "$fxtop",	 [062] = "$fxheight",  [063] = "$bottom",	[064] = "$middle",	 [065] = "$top",	  [066] = "$height",
			[067] = "$sy",		 [068] = "$cy",		   [069] = "$wy",		[070] = "$fxy",	     [071] = "$y",
			[072] = "$sstart",	 [073] = "$send",	   [074] = "$smid",	    [075] = "$sdur",	 [076] = "$sleft",	  [077] = "$scenter",
			[078] = "$sright",   [079] = "$swidth",	   [080] = "$sx",	    [081] = "$skdur",
			[082] = "$cstart",	 [083] = "$cend",	   [084] = "$cmid",	    [085] = "$cdur",	 [086] = "$cleft",	  [087] = "$ccenter",
			[088] = "$cright",   [089] = "$cwidth",	   [090] = "$cx",	    [091] = "$ckdur",
			[092] = "$wstart",	 [093] = "$wend",	   [094] = "$wmid",	    [095] = "$wdur",	 [096] = "$wleft",	  [097] = "$wcenter",
			[098] = "$wright",   [099] = "$wwidth",	   [100] = "$wx",	    [101] = "$wkdur",
			[102] = "$fxstart",	 [103] = "$fxend",	   [104] = "$fxmid",	[105] = "$fxdur",	 [106] = "$fxleft",   [107] = "$fxcenter",
			[108] = "$fxright",  [109] = "$fxwidth",   [110] = "$fxx",	    [111] = "$fxkdur",
			[112] = "$start",	 [113] = "$end",	   [114] = "$mid",	    [115] = "$dur",		 [116] = "$left",	  [117] = "$center",
			[118] = "$right",	 [119] = "$width",	   [120] = "$x",		[121] = "$kdur",
			[122] = "$si",		 [123] = "$syln",	   [124] = "$ci",		[125] = "$charn",	 [126] = "$wi",		  [127] = "$wordn",
			[128] = "$fxi",		 [129] = "$fxn",	   [130] = "$i",		[131] = "$n",
		}
		local Tl, Ts, Tc, Tw = linefx[ii], linefx[ii].syl, linefx[ii].char, linefx[ii].word
		local var_temp_L = {
			[001] = Tl.layer,	 [002] = Tl.style,	   [003] = Tl.actor,	[004] = Tl.margin_l, [005] = Tl.margin_r, [006] = Tl.margin_v,
			[007] = Tl.margin_t, [008] = Tl.margin_b,  [009] = Tl.scale_x,  [010] = Tl.scale_y,  [011] = Tl.angle,    [012] = Tl.outline,
			[013] = Tl.shadow,   [014] = Tl.fontsize,  [015] = Tl.fontname, [016] = Tl.spacing,  [017] = Tl.color1,	  [018] = Tl.color2,
			[019] = Tl.color3,   [020] = Tl.color4,    [021] = Tl.alpha1,   [022] = Tl.alpha2,	 [023] = Tl.alpha3,   [024] = Tl.alpha4,
			[025] = Tl.align,	 [026] = Tl.start_time,[027] = Tl.end_time,	[028] = Tl.mid_time, [029] = Tl.duration, [030] = l_i,
			[031] = l_n,		 [032] = Tl.left,	   [033] = Tl.center,   [034] = Tl.right,	 [035] = Tl.bottom,   [036] = Tl.middle,
			[037] = Tl.top,	 	 [038] = Tl.width,	   [039] = Tl.height,   [040] = Tl.center,	 [041] = Tl.middle,	  [042] = Tl.duration/10,
			[043] = Tl.pretime,  [044] = Tl.posttime,  [045] = Tl.descent,  [046] = Tl.extlead,	 [047] = Tl.bottom,   [048] = Tl.middle,
			[049] = Tl.top,	 	 [050] = Tl.height,	   [051] = Tl.bottom,   [052] = Tl.middle,   [053] = Tl.top,	  [054] = Tl.height,
			[055] = Tl.bottom,   [056] = Tl.middle,	   [057] = Tl.top,	    [058] = Tl.height,   [059] = Tl.bottom,   [060] = Tl.middle,
			[061] = Tl.top,	 	 [062] = Tl.height,    [063] = Tl.bottom,   [064] = Tl.middle,   [065] = Tl.top,	  [066] = Tl.height,
			[067] = Tl.middle,   [068] = Tl.middle,    [069] = Tl.middle,   [070] = Tl.middle,   [071] = Tl.middle,
			[072] = { }, [073] = { }, [074] = { }, [075] = { }, [076] = { }, [077] = { }, [078] = { }, [079] = { }, [080] = { }, [081] = { },
			[082] = { }, [083] = { }, [084] = { }, [085] = { }, [086] = { }, [087] = { }, [088] = { }, [089] = { }, [090] = { }, [091] = { },
			[092] = { }, [093] = { }, [094] = { }, [095] = { }, [096] = { }, [097] = { }, [098] = { }, [099] = { }, [100] = { }, [101] = { },
			[102] = { }, [103] = { }, [104] = { }, [105] = { }, [106] = { }, [107] = { }, [108] = { }, [109] = { }, [110] = { }, [111] = { },
			[112] = { }, [113] = { }, [114] = { }, [115] = { }, [116] = { }, [117] = { }, [118] = { }, [119] = { }, [120] = { }, [121] = { },
			[122] = { }, [123] = { }, [124] = { }, [125] = { }, [126] = { }, [127] = { }, [128] = { }, [129] = { }, [130] = { }, [131] = { },
		}
		local Tfx, T2x = { [1] = Ts, [2] = Tc, [3] = Tw }, { }
		if fx__.t_type == "Template Line [Word]" then
			T2x = Tw
		elseif fx__.t_type == "Template Line [Syl]" then
			T2x = Ts
		elseif fx__.t_type == "Template Line [Char]" then
			T2x = Tc
		end
		for i = 1, 71 do
			var_temp_L[i] = table.replay( T2x.n, var_temp_L[i] )
		end
		for k = 1, 3 do
			for i = 1, Tfx[k].n do
				var_temp_L[72 + (k - 1)*10][i] = Tfx[k][i].start_time
				var_temp_L[73 + (k - 1)*10][i] = Tfx[k][i].end_time
				var_temp_L[74 + (k - 1)*10][i] = Tfx[k][i].mid_time
				var_temp_L[75 + (k - 1)*10][i] = Tfx[k][i].duration
				var_temp_L[76 + (k - 1)*10][i] = Tfx[k][i].left
				var_temp_L[77 + (k - 1)*10][i] = Tfx[k][i].center
				var_temp_L[78 + (k - 1)*10][i] = Tfx[k][i].right
				var_temp_L[79 + (k - 1)*10][i] = Tfx[k][i].width
				var_temp_L[80 + (k - 1)*10][i] = Tfx[k][i].center
				var_temp_L[81 + (k - 1)*10][i] = Tfx[k][i].duration/10
			end
		end
		for k = 1, 2 do
			for i = 1, T2x.n do
				var_temp_L[102 + (k - 1)*10][i] = T2x[i].start_time
				var_temp_L[103 + (k - 1)*10][i] = T2x[i].end_time
				var_temp_L[104 + (k - 1)*10][i] = T2x[i].mid_time
				var_temp_L[105 + (k - 1)*10][i] = T2x[i].duration
				var_temp_L[106 + (k - 1)*10][i] = T2x[i].left
				var_temp_L[107 + (k - 1)*10][i] = T2x[i].center
				var_temp_L[108 + (k - 1)*10][i] = T2x[i].right
				var_temp_L[109 + (k - 1)*10][i] = T2x[i].width
				var_temp_L[110 + (k - 1)*10][i] = T2x[i].center
				var_temp_L[111 + (k - 1)*10][i] = T2x[i].duration/10
			end
		end
		for i = 1, T2x.n do
			var_temp_L[122][i] = i
			var_temp_L[123][i] = T2x.n
			var_temp_L[124][i] = i
			var_temp_L[125][i] = T2x.n
			var_temp_L[126][i] = i
			var_temp_L[127][i] = T2x.n
			var_temp_L[128][i] = i
			var_temp_L[129][i] = T2x.n
			var_temp_L[130][i] = i
			var_temp_L[131][i] = T2x.n
		end
		my_temp = my_temp:gsub( "{", "" ):gsub( "}", "" )
		function dollar2val( d_string, d_index )
			local dollar_T, dll_val = { }, { }
			for c in d_string:gmatch( "%$%w+[_%w]*" ) do
				table.insert( dollar_T, c )
			end
			for i = 1, #dollar_T do
				if type( table.index( var_temp_D, dollar_T[i] ) ) == "number" then 
					dll_val = var_temp_L[table.index( var_temp_D, dollar_T[i] )][d_index]
				else
					dll_val = dollar_T[i]
				end
				d_string = d_string:gsub( dollar_T[i], dll_val, 1 )
			end
			return d_string
		end
		local temp_line, temp_text = "", ""
		for i = 1, T2x.n do
			temp_text = T2x[i].text1:gsub( "\\k%d+", "" ):gsub( "\\K%d+", "" ):gsub( "\\kf%d+", "" ):gsub( "\\ko%d+", "" ):gsub( "KEfx", "" )
			temp_line = temp_line .. format( "{\\r%s%s}%s", tags_style, dollar2val( my_temp, i ):gsub( "\\r", "" ), temp_text )
		end
		if my_temp_bar ~= "" then
			return format( "{%s}%s", tag.inbar( my_temp_bar ), temp_line )
		end
		return temp_line
	end
	
	function tag.inbar( string_tags )
		local barT = { }
		local string_tags = tag.v_dollar( string_tags )
		for c in string_tags:gmatch( "%b||" ) do
			table.insert( barT, c )
		end
		local line, bar_cap, bar_cKE, bar_str = linefx[ii], "", "", string_tags
		for i = 1, #barT do
			bar_cap = barT[i]:gsub( "%|", "" )
			if pcall( loadstring( "return function( meta, line, x, y ) return " .. bar_cap .. " end" ) ) == true then
				bar_fun = loadstring( "return function( meta, line, x, y ) return " .. bar_cap .. " end" )( )
				bar_cKE = bar_fun( meta, line, x, y )
				barT[i] = tag.operation( barT[i] )
			else
				bar_cKE =  barT[i]
			end
			bar_str = bar_str:gsub( barT[i], bar_cKE, 1 )
		end
		return bar_str:gsub( "%|", "" )
	end

	function tag.adjust( t_adjust, adj_accel )
		local adj_cap1, adj_cap2, adj_cap3, adj_cap4 = { }, { }, { }, { }
		for c in t_adjust:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*" ) do
			table.insert( adj_cap1, c )
		end
		for i = 1, #adj_cap1 do
			for c in adj_cap1[i]:gmatch( "%d+[%.%d]*" ) do
				table.insert( adj_cap2, c )
			end
		end
		local max_time = adj_cap2[#adj_cap2] table.remove( adj_cap2, #adj_cap2 )
		local adj_accel = adj_accel or 1
		for i = 1, (#adj_cap2 +1)/2 do
			adj_cap3[i] = adj_cap2[2*i - 1]
		end
		table.insert( adj_cap3, max_time )
		if #adj_cap3 > 1 then
			adj_k = 1
			for i = 1, #adj_cap3 do
				adj_cap4[i] = adj_cap3[1] + (adj_cap3[#adj_cap3] - adj_cap3[1])*((i - 1)/(#adj_cap3 - 1))^adj_accel
			end
			t_adjust = t_adjust:gsub( "\\t%((%d+[%.%d]*)%,(%d+[%.%d]*)", 
				function( A, B )
					adj_tag = "\\t(" .. math.round( adj_cap4[adj_k], 2 ) .. "," .. math.round( adj_cap4[adj_k + 1], 2 )
					adj_k = adj_k + 1
					return adj_tag
				end
			)
		end
		return t_adjust
	end
	
	function tag.val( val_tags )
		tags_vals = {
			---------------------------------------------------------------------------------------------------------------------------------
			[01] = "\\i(%d+)",				[02] = "\\xshad(%-?%d+[%.%d]*)", [03] = "\\fsp(%-?%d+[%.%d]*)",	[04] = "\\p(%d+)",
			[05] = "\\b(%d+)",				[06] = "\\yshad(%-?%d+[%.%d]*)", [07] = "\\fr(%-?%d+[%.%d]*)",	[08] = "\\an(%d+)",
			[09] = "\\u(%d+)",				[10] = "\\be(%d+[%.%d]*)",		 [11] = "\\frx(%-?%d+[%.%d]*)",	[12] = "\\a(%d+)",
			[13] = "\\s(%d+)",				[14] = "\\blur(%d+[%.%d]*)",	 [15] = "\\fry(%-?%d+[%.%d]*)",	[16] = "\\k(%d+)",
			[17] = "\\bord(%d+[%.%d]*)",	[18] = "\\frz(%-?%d+[%.%d]*)",	 [19] = "\\fax(%-?%d+[%.%d]*)",	[20] = "\\K(%d+)",
			[21] = "\\xbord(%d+[%.%d]*)",	[22] = "\\fs(%d+[%.%d]*)",		 [23] = "\\fay(%-?%d+[%.%d]*)",	[24] = "\\kf(%d+)",
			[25] = "\\ybord(%d+[%.%d]*)",	[26] = "\\fscx(%d+[%.%d]*)",	 [27] = "\\fe(%d+[%.%d]*)",		[28] = "\\ko(%d+)",
			[29] = "\\shad(%-?%d+[%.%d]*)",	[30] = "\\fscy(%d+[%.%d]*)",	 [31] = "\\q(%d+)",				[32] = "\\fsc(%d+[%.%d]*)",
			[33] = "\\fsvp(%-?%d+[%.%d]*)",	[34] = "\\frs(%-?%d+[%.%d]*)",	 [35] = "\\rnd(%-?%d+[%.%d]*)",	[36] = "\\rndx(%-?%d+[%.%d]*)",
			[37] = "\\rndy(%-?%d+[%.%d]*)",	[38] = "\\rndz(%-?%d+[%.%d]*)",	 [39] = "\\z(%-?%d+[%.%d]*)",
			---------------------------------------------------------------------------------------------------------------------------------
			[40] = "\\fn(%S+[ %S+]*)",		[41] = "\\r",					 [42] = "\\n",					[43] = "\\N",
			[44] = "\\c(&H[%x]*&?)",		[45] = "\\alpha(&H[%x]*&?)",
			[46] = "\\1c(&H[%x]*&?)",		[47] = "\\1a(&H[%x]*&?)",		 [48] = "\\1vc%b()",			[49] = "\\1va%b()",
			[50] = "\\2c(&H[%x]*&?)",		[51] = "\\2a(&H[%x]*&?)",		 [52] = "\\2vc%b()",			[53] = "\\2va%b()",
			[54] = "\\3c(&H[%x]*&?)",		[55] = "\\3a(&H[%x]*&?)",		 [56] = "\\3vc%b()",			[57] = "\\3va%b()",
			[58] = "\\4c(&H[%x]*&?)",		[59] = "\\4a(&H[%x]*&?)",		 [60] = "\\4vc%b()",			[61] = "\\4va%b()",
			[62] = "\\1img%b()",			[63] = "\\2img%b()",			 [64] = "\\3img%b()",			[65] = "\\4img%b()",
			---------------------------------------------------------------------------------------------------------------------------------
			[66] = "\\pos%b()",				[67] = "\\move%b()",			 [68] = "\\moves3%b()",			[69] = "\\moves4%b()",
			[70] = "\\jitter%b()",			[71] = "\\mover%b()",			 [72] = "\\org%b()",			[73] = "\\distort%b()",
			[74] = "\\fad%b()",				[75] = "\\fade%b()",			 [76] = "\\movevc%b()",			[77] = "\\clip%b()",
			[78] = "\\iclip%b()",			[79] = "\\t%b()"
			---------------------------------------------------------------------------------------------------------------------------------
		}
		tags_tags = {
			---------------------------------------------------------------------------------------------------------------------------------
			[01] = "i",		[02] = "xshad",	[03] = "fsp",	[04] = "p",		[05] = "b",		[06] = "yshad",	[07] = "fr",	[08] = "an",
			[09] = "u",		[10] = "be",	[11] = "frx",	[12] = "a",		[13] = "s",		[14] = "blur",	[15] = "fry",	[16] = "k",
			[17] = "bord",	[18] = "frz",	[19] = "fax",	[20] = "K",		[21] = "xbord",	[22] = "fs",	[23] = "fay",	[24] = "kf",
			[25] = "ybord",	[26] = "fscx",	[27] = "fe",	[28] = "ko",	[29] = "shad",	[30] = "fscy",	[31] = "q",		[32] = "fsc",
			[33] = "fsvp",	[34] = "frs",	[35] = "rnd",	[36] = "rndx",	[37] = "rndy",	[38] = "rndz",	[39] = "z",
			---------------------------------------------------------------------------------------------------------------------------------
			[40] = "fn",	[41] = "r",		[42] = "n",		[43] = "N",		[44] = "c",		[45] = "alpha",	[46] = "1c",	[47] = "1a",
			[48] = "1vc",	[49] = "1va",	[50] = "2c",	[51] = "2a",	[52] = "2vc",	[53] = "2va",	[54] = "3c",	[55] = "3a",
			[56] = "3vc",	[57] = "3va",	[58] = "4c",	[59] = "4a",	[60] = "4vc",	[61] = "4va",	[62] = "1img",	[63] = "2img",
			[64] = "3img",	[65] = "4img",
			---------------------------------------------------------------------------------------------------------------------------------
			[66] = "pos",	[67] = "move",	[68] = "moves3",[69] = "moves4",[70] = "jitter",[71] = "mover",	[72] = "org",	[73] = "distort",
			[74] = "fad",	[75] = "fade",	[76] = "movevc",[77] = "clip",	[78] = "iclip",	[79] = "t"
			---------------------------------------------------------------------------------------------------------------------------------
		}
		cap = { }
		for i = 1, #tags_vals do
			cap[i] = { }
			for c in val_tags:gmatch( tags_vals[i] ) do
				if c:match( "%-?%d+[%.%d]*" )
					and c:gsub( "%-?%d+[%.%d]*", "" ) == "" then
					c = tonumber( c )
				end
				table.insert( cap[i], c )
			end
		end
		cap2 = table.duplicate( cap )
		tag2 = { }
		for k, v in ipairs( cap2 ) do
			new_k = tags_tags[k]
			tag2[new_k] = v
		end
		for i = 1, 65 do
			new_i = tags_tags[i]
			tag2[new_i] = tag2[new_i][1]
		end
		for i = 66,76 do
			new_i = tags_tags[i]
			tag2[new_i] = { }
			if cap2[i][1] then
				for c in cap2[i][1]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( tag2[new_i], tonumber( c ) )
				end
			end
		end
		-- \pos(x,y) -------------------------
		tag2.pos.x = tag2.pos[1] or fx.move_x1
		tag2.pos.y = tag2.pos[2] or fx.move_y1
		-- \move(x1,y1,x2,y2,t1,t2) -------------
		tag2.move.x1 = tag2.move[1] or fx.move_x1
		tag2.move.x2 = tag2.move[3] or fx.move_x2
		tag2.move.y1 = tag2.move[2] or fx.move_y1
		tag2.move.y2 = tag2.move[4] or fx.move_y2
		tag2.move.t1 = tag2.move[5] or fx.movet_i
		tag2.move.t2 = tag2.move[6] or fx.movet_f
		-- \moves3(x1,y1,x2,y2,x3,y3,t1,t2) ---------
		tag2.moves3.x1 = tag2.moves3[1] or fx.move_x1
		tag2.moves3.x2 = tag2.moves3[3] or fx.move_x2
		tag2.moves3.x3 = tag2.moves3[5] or fx.move_x3
		tag2.moves3.y1 = tag2.moves3[2] or fx.move_y1
		tag2.moves3.y2 = tag2.moves3[4] or fx.move_y2
		tag2.moves3.y3 = tag2.moves3[6] or fx.move_y3
		tag2.moves3.t1 = tag2.moves3[7] or fx.movet_i
		tag2.moves3.t2 = tag2.moves3[8] or fx.movet_f
		-- \moves4(x1,y1,x2,y2,x3,y3,x4,y4,t1,t2) ---
		tag2.moves4.x1 = tag2.moves4[1] or fx.move_x1
		tag2.moves4.x2 = tag2.moves4[3] or fx.move_x2
		tag2.moves4.x3 = tag2.moves4[5] or fx.move_x3
		tag2.moves4.x4 = tag2.moves4[7] or fx.move_x4
		tag2.moves4.y1 = tag2.moves4[2] or fx.move_y1
		tag2.moves4.y2 = tag2.moves4[4] or fx.move_y2
		tag2.moves4.y3 = tag2.moves4[6] or fx.move_y3
		tag2.moves4.y4 = tag2.moves4[8] or fx.move_y4
		tag2.moves4.t1 = tag2.moves4[9] or fx.movet_i
		tag2.moves4.t2 = tag2.moves4[10] or fx.movet_f
		-- \jitter(x1,y1,x2,y2,x3,y3,t1,t2) ---------
		tag2.jitter.x1 = tag2.jitter[1] or 0
		tag2.jitter.x2 = tag2.jitter[3] or 0
		tag2.jitter.y1 = tag2.jitter[2] or 0
		tag2.jitter.y2 = tag2.jitter[4] or 0
		tag2.jitter.t1 = tag2.jitter[5] or 0
		tag2.jitter.t2 = tag2.jitter[6] or 0
		-- \mover(x1,y1,x2,y2,a1,a2,r1,r2,t1,t2) --
		tag2.mover.x1 = tag2.mover[1] or fx.move_x1
		tag2.mover.x2 = tag2.mover[3] or fx.move_x2
		tag2.mover.y1 = tag2.mover[2] or fx.move_y1
		tag2.mover.y2 = tag2.mover[4] or fx.move_y2
		tag2.mover.a1 = tag2.mover[5] or fx.angle1
		tag2.mover.a2 = tag2.mover[6] or fx.angle2
		tag2.mover.r1 = tag2.mover[7] or fx.radius1
		tag2.mover.r2 = tag2.mover[8] or fx.radius1
		tag2.mover.t1 = tag2.mover[9] or fx.movet_i
		tag2.mover.t2 = tag2.mover[10] or fx.movet_f
		-- \org(x,y) -------------------------------
		tag2.org.x = tag2.org[1] or fx.move_x1
		tag2.org.y = tag2.org[2] or fx.move_y1
		-- \distort(x1,y1,x2,y2,x3,y3) -------
		tag2.distort.x1 = tag2.distort[1] or 0
		tag2.distort.x2 = tag2.distort[3] or 0
		tag2.distort.x3 = tag2.distort[5] or 0
		tag2.distort.y1 = tag2.distort[2] or 0
		tag2.distort.y2 = tag2.distort[4] or 0
		tag2.distort.y3 = tag2.distort[6] or 0
		-- \fad(a1,a2) -----------------------
		tag2.fad.a1 = tag2.fad[1] or 0
		tag2.fad.a2 = tag2.fad[2] or 0
		-- \fade(a1,a2,a3,t1,t2,t3,t4) --
		tag2.fade.a1 = tag2.fade[1] or 0
		tag2.fade.a2 = tag2.fade[2] or 0
		tag2.fade.a3 = tag2.fade[3] or 0
		tag2.fade.t1 = tag2.fade[4] or 0
		tag2.fade.t2 = tag2.fade[5] or 0
		tag2.fade.t3 = tag2.fade[6] or 0
		tag2.fade.t4 = tag2.fade[7] or 0
		-- \movevc(x1,y1,x2,y2,t1,t2) ---------------
		tag2.movevc.x1 = tag2.movevc[1] or fx.move_x1
		tag2.movevc.x2 = tag2.movevc[3] or fx.move_x2
		tag2.movevc.y1 = tag2.movevc[2] or fx.move_y1
		tag2.movevc.y2 = tag2.movevc[4] or fx.move_y2
		tag2.movevc.t1 = tag2.movevc[5] or fx.movet_i
		tag2.movevc.t2 = tag2.movevc[6] or fx.movet_f
		-- \clip(x1,y1,x2,y2) or \clip( shape ) -----
		if cap2[77][1] then
			tag2.clip = { }
			if cap2[77][1]:match( "m %-?%d+[%.%d]*" ) then
				tag2.clip.shape = cap2[77][1]:match( "[mlb]* %-?%d+[%.%d]* [%-%.%d mlb]*" )
				tag2.clip.x1 = fx.move_x1
				tag2.clip.x2 = fx.move_x2
				tag2.clip.y1 = fx.move_y1
				tag2.clip.y2 = fx.move_y2
			else
				tag2.clip.shape = ""
				clip_parameters = { }
				for c in cap2[77][1]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( clip_parameters, c )
				end
				tag2.clip.x1 = clip_parameters[1]
				tag2.clip.x2 = clip_parameters[3]
				tag2.clip.y1 = clip_parameters[2]
				tag2.clip.y2 = clip_parameters[4]
			end
		else
			tag2.clip.x1 = fx.move_x1
			tag2.clip.x2 = fx.move_x2
			tag2.clip.y1 = fx.move_y1
			tag2.clip.y2 = fx.move_y2
		end
		-- \iclip(x1,y1,x2,y2) or \iclip( shape ) -----
		if cap2[78][1] then
			tag2.iclip = { }
			if cap2[78][1]:match( "m %-?%d+[%.%d]*" ) then
				tag2.iclip.shape = cap2[77][1]:match( "[mlb]* %-?%d+[%.%d]* [%-%.%d mlb]*" )
				tag2.iclip.x1 = fx.move_x1
				tag2.iclip.x2 = fx.move_x2
				tag2.iclip.y1 = fx.move_y1
				tag2.iclip.y2 = fx.move_y2
			else
				tag2.iclip.shape = shape.ASSDraw3( cap2[78][1] )
				iclip_parameters = { }
				for c in cap2[77][1]:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( iclip_parameters, c )
				end
				tag2.iclip.x1 = iclip_parameters[1]
				tag2.iclip.x2 = iclip_parameters[3]
				tag2.iclip.y1 = iclip_parameters[2]
				tag2.iclip.y2 = iclip_parameters[4]
			end
		else
			tag2.iclip.x1 = fx.move_x1
			tag2.iclip.x2 = fx.move_x2
			tag2.iclip.y1 = fx.move_y1
			tag2.iclip.y2 = fx.move_y2
		end
		-- \t(\tags) or \t(a,\tags) or \t(t1,t2,a,\tags)--
		if cap2[79][1] then
			if cap2[79][1]:match( "%b(\\" ) then
				t_parameters = { }
				for c in cap2[79][1]:match( "%b(\\" ):gmatch( "%-?%d+[%.%d]" ) do
					table.insert( t_parameters, c )
				end
				if #t_parameters == 1 then
					tag2.t.t1 = fx.movet_i
					tag2.t.t2 = fx.movet_f
					tag2.t.a  = t_parameters[1]
				else
					tag2.t.t1 = t_parameters[1]
					tag2.t.t2 = t_parameters[2]
					tag2.t.a  = t_parameters[3] or 1
				end
			end
		else
			tag2.t.t1 = fx.movet_i
			tag2.t.t2 = fx.movet_f
			tag2.t.a  = 1
		end
		return val_tags
	end
	
	function tag.num( string_values, special_tag )
		local TNval = { }
		local TNstr = string_values or ""
		local TNstg = special_tag or ""
		for c in TNstr:gmatch( TNstg .. "%-?%d+[%.%d]*" ) do
			table.insert( TNval, tonumber( c ) )
		end
		return TNval
	end
	
	function tag.module( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[i] ) == "table" then
				txt_val = math.round( tag.ipol( txt_tag[i][2], txt_tag[i][3], module ), 3 )
				txt_2tg[i] = format( "%s%s", txt_tag[i][1], txt_val )
			else
				txt_2tg[i] = txt_tag[i]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[i]
		end
		return txt_str
	end

	function tag.module1( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[i] ) == "table" then
				txt_val = math.round( tag.ipol( txt_tag[i][2], txt_tag[i][3], module1 ), 3 )
				txt_2tg[i] = format( "%s%s", txt_tag[i][1], txt_val )
			else
				txt_2tg[i] = txt_tag[i]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[i]
		end
		return txt_str
	end

	function tag.module2( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type( txt_tag[i] ) == "table" then
				txt_val = math.round( tag.ipol( txt_tag[i][2], txt_tag[i][3], module2 ), 3 )
				txt_2tg[i] = format( "%s%s", txt_tag[i][1], txt_val )
			else
				txt_2tg[i] = txt_tag[i]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[i]
		end
		return txt_str
	end
	
	function tag.moduler( ... )
		local txt_tag, txt_2tg, txt_str, txt_val = { ... }, { }, "", ""
		for i = 1, #txt_tag do
			if type(txt_tag[i]) == "table" then
				txt_val = math.round( tag.ipol( txt_tag[i][2], txt_tag[i][3], moduler ), 3 )
				txt_2tg[i] = format( "%s%s", txt_tag[i][1], txt_val )
			else
				txt_2tg[i] = txt_tag[i]
			end
		end
		for i = 1, #txt_2tg do
			txt_str = txt_str .. txt_2tg[i]
		end
		return txt_str
	end
	
	function tag.delete( String, ... )
		local str_delete = ""
		local tag_delete = ...
		local tbl_delete
		if tag_delete == nil then
			str_delete = String:gsub( "%b{}", "" )
			return str_delete
		end
		if type( tag_delete ) == "table" then
			tbl_delete = tag_delete
		else
			tbl_delete = { tag_delete }
		end
		local tags_name = {
			-------------------------------------------------------------------------------
			[01] = "\\i",		[02] = "\\xshad",	[03] = "\\fsp",		[04] = "\\p",
			[05] = "\\b",		[06] = "\\yshad",	[07] = "\\fr",		[08] = "\\an",
			[09] = "\\u",		[10] = "\\be",		[11] = "\\frx",		[12] = "\\a",
			[13] = "\\s",		[14] = "\\blur",	[15] = "\\fry",		[16] = "\\k",
			[17] = "\\bord",	[18] = "\\frz",		[19] = "\\fax",		[20] = "\\K",
			[21] = "\\xbord",	[22] = "\\fs",		[23] = "\\fay",		[24] = "\\kf",
			[25] = "\\ybord",	[26] = "\\fscx",	[27] = "\\fe",		[28] = "\\ko",
			[29] = "\\shad",	[30] = "\\fscy",	[31] = "\\q",		[32] = "\\fsc",
			[33] = "\\fsvp",	[34] = "\\frs",		[35] = "\\rnd",		[36] = "\\rndx",
			[37] = "\\rndy",	[38] = "\\rndz",	[39] = "\\z",
			-------------------------------------------------------------------------------
			[40] = "\\fn",		[41] = "\\r",		[42] = "\\n",		[43] = "\\N",
			[44] = "\\c",		[45] = "\\alpha",
			[46] = "\\1c",		[47] = "\\1a",		[48] = "\\1vc",		[49] = "\\1va",
			[50] = "\\2c",		[51] = "\\2a",		[52] = "\\2vc",		[53] = "\\2va",
			[54] = "\\3c",		[55] = "\\3a",		[56] = "\\3vc",		[57] = "\\3va",
			[58] = "\\4c",		[59] = "\\4a",		[60] = "\\4vc",		[61] = "\\4va",
			[62] = "\\1img",	[63] = "\\2img",	[64] = "\\3img",	[65] = "\\4img",
			-------------------------------------------------------------------------------
			[66] = "\\pos",		[67] = "\\move",	[68] = "\\moves",	[69] = "\\moves4",
			[70] = "\\jitter",	[71] = "\\mover",	[72] = "\\org",		[73] = "\\distort",
			[74] = "\\fad",		[75] = "\\fade",	[76] = "\\movevc",	[77] = "\\clip",
			[78] = "\\iclip",	[79] = "\\t"
			-------------------------------------------------------------------------------
		}
		local tags_vals = {
			------------------------------------------------------------------------------------------------------------------------------
			[01] = "\\i%d+",				[02] = "\\xshad%-?%d+[%.%d]*",	[03] = "\\fsp%-?%d+[%.%d]*",	[04] = "\\p%d+",
			[05] = "\\b%d+",				[06] = "\\yshad%-?%d+[%.%d]*",	[07] = "\\fr%-?%d+[%.%d]*",		[08] = "\\an%d+",
			[09] = "\\u%d+",				[10] = "\\be%d+[%.%d]*",		[11] = "\\frx%-?%d+[%.%d]*",	[12] = "\\a%d+",
			[13] = "\\s%d+",				[14] = "\\blur%d+[%.%d]*",		[15] = "\\fry%-?%d+[%.%d]*",	[16] = "\\k%d+",
			[17] = "\\bord%d+[%.%d]*",		[18] = "\\frz%-?%d+[%.%d]*",	[19] = "\\fax%-?%d+[%.%d]*",	[20] = "\\K%d+",
			[21] = "\\xbord%d+[%.%d]*",		[22] = "\\fs%d+[%.%d]*",		[23] = "\\fay%-?%d+[%.%d]*",	[24] = "\\kf%d+",
			[25] = "\\ybord%d+[%.%d]*",		[26] = "\\fscx%d+[%.%d]*",		[27] = "\\fe%d+[%.%d]*",		[28] = "\\ko%d+",
			[29] = "\\shad%-?%d+[%.%d]*",	[30] = "\\fscy%d+[%.%d]*",		[31] = "\\q%d+",				[32] = "\\fsc%d+[%.%d]*",
			[33] = "\\fsvp%-?%d+[%.%d]*",	[34] = "\\frs%-?%d+[%.%d]*",	[35] = "\\rnd%-?%d+[%.%d]*",	[36] = "\\rndx%-?%d+[%.%d]*",
			[37] = "\\rndy%-?%d+[%.%d]*",	[38] = "\\rndz%-?%d+[%.%d]*",	[39] = "\\z%-?%d+[%.%d]*",
			------------------------------------------------------------------------------------------------------------------------------
			[40] = "\\fn%w+[ %w+]*",		[41] = "\\r",					[42] = "\\n",					[43] = "\\N",
			[44] = "\\c[&H%x%#]*",			[45] = "\\alpha[&H%x%#]*",
			[46] = "\\1c[&H%x%#]*",			[47] = "\\1a[&H%x%#]*",			[48] = "\\1vc%b()",				[49] = "\\1va%b()",
			[50] = "\\2c[&H%x%#]*",			[51] = "\\2a[&H%x%#]*",			[52] = "\\2vc%b()",				[53] = "\\2va%b()",
			[54] = "\\3c[&H%x%#]*",			[55] = "\\3a[&H%x%#]*",			[56] = "\\3vc%b()",				[57] = "\\3va%b()",
			[58] = "\\4c[&H%x%#]*",			[59] = "\\4a[&H%x%#]*",			[60] = "\\4vc%b()",				[61] = "\\4va%b()",
			[62] = "\\1img%b()",			[63] = "\\2img%b()",			[64] = "\\3img%b()",			[65] = "\\4img%b()",
			------------------------------------------------------------------------------------------------------------------------------
			[66] = "\\pos%b()",				[67] = "\\move%b()",			[68] = "\\moves3%b()",			[69] = "\\moves4%b()",
			[70] = "\\jitter%b()",			[71] = "\\mover%b()",			[72] = "\\org%b()",				[73] = "\\distort%b()",
			[74] = "\\fad%b()",				[75] = "\\fade%b()",			[76] = "\\movevc%b()",			[77] = "\\clip%b()",
			[78] = "\\iclip%b()",			[79] = "\\t%b()"
			------------------------------------------------------------------------------------------------------------------------------
		}
		local n
		for i = 1, #tbl_delete do
			if table.inside( tags_name, tbl_delete[i] ) then
				n = table.index( tags_name, tbl_delete[i] )
				String = String:gsub( tags_vals[n], "" )
			end
		end
		return String
	end		
	
	--------------------------------------------------------------------------------------------------
	-- Librería de funciones "color" -----------------------------------------------------------------
	function color.ass( html_color )
		local html_color = html_color or "#FFFFFF"
		effector.print_error( html_color, "color", "color.ass", 1 )
		local r_ass, g_ass, b_ass = html_color:match( "(%x%x)(%x%x)(%x%x)" )
		return ass_color( tonumber( r_ass, 16 ), tonumber( g_ass, 16 ), tonumber( b_ass, 16 ) )
	end
	
	function color.assF( color_or_table )
		local cF, tcF = { }, { }
		local color_or_table = color_or_table or text.color1
		effector.print_error( color_or_table, "color", "color.assF", 1 )
		if type( color_or_table ) == "table" then
			cF = color_or_table
		else
			cF = { color_or_table }
		end
		for i = 1, #cF do
			if cF[i]:len( ) < 15 then
				cF[i] = cF[i]:match( "%x+" ) cF[i] = "&H" .. cF[i]:upper( ) .. "&"
			else
				for c in cF[i]:gmatch( "[%&Hh]*%x%x%x%x%x%x[%&]*" ) do
					c = c:match( "%x+" )
					c = format( "&H%s&", c:upper( ) )
					table.insert( tcF, c )
				end
				cF[i] = format( "(%s,%s,%s,%s)", tcF[1], tcF[2], tcF[3], tcF[4] )
			end
		end
		if #cF == 1 then
			return cF[1]
		end
		return cF
	end
	
	function color.to_RGB( color_or_table )
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.to_RGB", 1 )
		local C_ass, RGB_table, _c = { }, { }, color.vc_to_c
		if type( color_or_table ) == "table" then
			C_ass = color_or_table
		else
			C_ass = { color_or_table }
		end
		for i = 1, #C_ass do
			local b_RGB, g_RGB, r_RGB = _c( C_ass[i] ):match( "(%x%x)(%x%x)(%x%x)" )
			RGB_table[i] = { tonumber( r_RGB, 16 ), tonumber( g_RGB, 16 ), tonumber( b_RGB, 16 ) }
		end
		if #C_ass == 1 then
			return RGB_table[1]
		end
		return RGB_table
	end
	
	function color.to_HSV( color_or_table )
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.to_HSV", 1 )
		local c_ass, HSV_table, H, S, V, Cmin, Cmax, Dt = { }, { }, 0, 0, 0, 0, 1, 1
		if type( color_or_table ) == "table" then
			c_ass = color_or_table
		else
			c_ass = { color_or_table }
		end
		for i = 1, #c_ass do
			local R, G, B = unpack( color.to_RGB( c_ass[i] ) )
			local Rc, Gc, Bc = R/255 + 0.000001, G/255, B/255
			Cmax = math.max( Rc, Gc, Bc )
			Cmin = math.min( Rc, Gc, Bc )
			Dt = Cmax - Cmin
			if Cmax == Rc then
				H = math.round( 60*(((Gc - Bc)/Dt)%6), 3 )
			elseif Cmax == Gc then
				H = math.round( 60*(((Bc - Rc)/Dt)+2), 3 )
			else
				H = math.round( 60*(((Rc - Gc)/Dt)+4), 3 )
			end
			if Dt == 0 then
				S = 0
			else
				S = math.round( Dt/Cmax, 3 )
			end
			V = math.round( Cmax, 3 )
			HSV_table[i] = { H, S, V }
		end
		if #c_ass == 1 then
			return HSV_table[1]
		end
		return HSV_table
	end
	
	function color.vc( color_or_table )
		local vc, cvc_t = { }, { }
		local color_or_table = color.from_error( color_or_table or text.color1 )
		effector.print_error( color_or_table, "color", "color.vc", 1 )
		if type( color_or_table ) == "table" then
			vc = color_or_table
		else
			vc = { color_or_table }
		end
		for i = 1, #vc do
			if vc[i]:len( ) < 15 then
				cvc_t[i] = math.format2( "(%s,%s,%s,%s)", color.assF( vc[i] ) )
			else
				cvc_t[i] = color.assF( vc[i] )
			end
		end
		if #cvc_t == 1 then
			return cvc_t[1]
		end
		return cvc_t
	end
	
	function color.r( )
		return ass_color( HSV_to_RGB( R( 36000 )/100, R( 0, 100 )/100, R( 0, 100 )/100 ) )
	end

	function color.rc( CrC_color, ... )
		local CrC_color = color.from_error( CrC_color or text.color1 )
		effector.print_error( CrC_color, "color", "color.rc", 1 )
		local CrCcol, CrCtbl, i_c, _c = { }, { }, interpolate_color, color.vc_to_c
		local CrCmsk = color.from_error( ... or { "&H6E6E6E&", "&H000000&" } )
		if type( CrC_color ) == "table" then
			CrCcol = CrC_color
		else
			CrCcol = { CrC_color }
		end
		if type( CrCmsk ) ~= "table" then
			CrCmsk = { CrCmsk }
		end
		if #CrCmsk == 1 then
			CrCmsk[2] = CrCmsk[1]
		end
		for i = 1, #CrCcol do
			CrCmsk = table.disorder( CrCmsk )
			CrCtbl[i] = i_c( R( 20, 100 )/100, i_c( R( 2 ) - 1, CrCmsk[1], CrCmsk[2] ), _c( CrCcol[i] ) )
		end
		if #CrCcol == 1 then
			return CrCtbl[1]
		end
		return CrCtbl
	end
	
	function color.rvc( CrVC_color, ... )
		local CrVC_color = color.from_error( CrVC_color or text.color1 )
		effector.print_error( CrVC_color, "color", "color.rvc", 1 )
		local CrVCtbl, CrVCcol = { }, { }
		if type( CrVC_color ) == "table" then
			CrVCcol = CrVC_color
		else
			CrVCcol = { CrVC_color }
		end
		for i = 1, #CrVCcol do
			CrVCtbl[i] = format( "(%s,%s,%s,%s)",
			color.rc( CrVCcol[i], ... ), color.rc( CrVCcol[i], ... ), color.rc( CrVCcol[i], ... ), color.rc( CrVCcol[i], ... ) )
		end
		if #CrVCcol == 1 then
			return CrVCtbl[1]
		end
		return CrVCtbl
	end
	
	function color.gradientv( ColorTop_or_table, ColorBottom_or_table )
		local ColorBottom_or_table = color.from_error( ColorBottom_or_table or text.color2 )
		local ColorTop_or_table = color.from_error( ColorTop_or_table or text.color1 )
		effector.print_error( ColorTop_or_table, "color", "color.gradientv", 1 )
		effector.print_error( ColorBottom_or_table, "color", "color.gradientv", 2 )
		local Cv_table, CT, CB, _c = { }, { }, { }, color.vc_to_c
		if type( ColorTop_or_table ) == "table" then
			CT = ColorTop_or_table
		else
			CT = { ColorTop_or_table }
		end
		if type( ColorBottom_or_table ) == "table" then
			CB = ColorBottom_or_table
		else
			CB = { ColorBottom_or_table }
		end
		for i = 1, #CT do
			for k = 1, #CB do
				table.insert( Cv_table, format( "(%s,%s,%s,%s)", _c( CT[i] ), _c( CT[i] ), _c( CB[k] ), _c( CB[k] ) ) )
			end
		end
		if #Cv_table == 1 then
			return Cv_table[1]
		end
		return Cv_table
	end
	
	function color.gradienth( ColorLeft_or_table, ColorRight_or_table, algorithm )
		--example algorithm: "1 - abs(2*%s - 1)"
		local Al = algorithm or "%s"
		local ColorRight_or_table = color.from_error( ColorRight_or_table or text.color2 )
		local ColorLeft_or_table = color.from_error( ColorLeft_or_table or text.color1 )
		effector.print_error( ColorLeft_or_table, "color", "color.gradienth", 1 )
		effector.print_error( ColorRight_or_table, "color", "color.gradienth", 2 )
		effector.print_error( Al, "string", "color.gradienth", 3 )
		local Ch_table, CL, CR, _c, i_c = { }, { }, { }, color.vc_to_c, interpolate_color
		local v1, v2 = math.format( Al, 2*(val_i - 1)/(2*val_n - 1) ), math.format( Al, (2*val_i - 1)/(2*val_n - 1) )
		if type( ColorLeft_or_table ) == "table" then
			CL = ColorLeft_or_table
		else
			CL = { ColorLeft_or_table }
		end
		if type( ColorRight_or_table ) == "table" then
			CR = ColorRight_or_table
		else
			CR = { ColorRight_or_table }
		end
		for i = 1, #CL do
			for k = 1, #CR do
				Cx1 = i_c( v1, _c( CL[i] ), _c( CR[k] ) )
				Cx2 = i_c( v2, _c( CL[i] ), _c( CR[k] ) )
				table.insert( Ch_table, format( "(%s,%s,%s,%s)", Cx1, Cx2, Cx1, Cx2 ) )
			end
		end
		if #Ch_table == 1 then
			return Ch_table[1]
		end
		return Ch_table
	end
	
	function color.vc_to_c( colorvc_or_table )
		local colorvc_or_table = color.from_error( colorvc_or_table or text.color1 )
		effector.print_error( colorvc_or_table, "color", "color.vc_to_c", 1 )
		local colorvc, VC2Ccolors, i_c = { }, { }, interpolate_color
		if type( colorvc_or_table ) == "table" then
			colorvc = colorvc_or_table
		else
			colorvc = { colorvc_or_table }
		end
		for k = 1, #colorvc do
			VC2Ccolors = { }
			if colorvc[k]:len( ) < 15 then
				colorvc[k] = color.assF( colorvc[k] )
			else
				for c in colorvc[k]:gmatch( "[%&Hh]*%x%x%x%x%x%x[%&]*" ) do
					table.insert( VC2Ccolors, color.assF( c ) )
				end
				colorvc[k] = i_c( 0.5, i_c( 0.5, VC2Ccolors[1], VC2Ccolors[4] ), i_c( 0.5, VC2Ccolors[2], VC2Ccolors[3] ) )
			end 
		end
		if #colorvc == 1 then
			return colorvc[1]
		end
		return colorvc
	end
	
	function color.c_to_vc( colorc_or_table )
		local colorc_or_table = color.from_error( colorc_or_table or text.color1 )
		effector.print_error( colorc_or_table, "color", "color.c_to_vc", 1 )
		return color.vc( colorc_or_table )
	end
	
	function color.interpolate( color1_or_table, color2_or_table, Index_Ipol )
		local II = Index_Ipol or 0.5
		local color2_or_table = color.from_error( color2_or_table or text.color2 )
		local color1_or_table = color.from_error( color1_or_table or text.color1 )
		effector.print_error( color1_or_table, "color", "color.interpolate", 1 )
		effector.print_error( color2_or_table, "color", "color.interpolate", 2 )
		effector.print_error( II, "number", "color.interpolate", 3 )
		local Ci_table, C1, C2, _c, i_c = { }, { }, { }, color.vc_to_c, interpolate_color
		if type( color1_or_table ) == "table" then
			C1 = color1_or_table
		else
			C1 = { color1_or_table }
		end
		if type( color2_or_table ) == "table" then
			C2 = color2_or_table
		else
			C2 = { color2_or_table }
		end
		for i = 1, #C1 do
			for k = 1, #C2 do
				table.insert( Ci_table, i_c( II, _c( C1[i] ), _c( C2[k] ) ) )
			end
		end
		if #Ci_table == 1 then
			return Ci_table[1]
		end
		return Ci_table
	end
	
	function color.vector( color1, color2 )
		local color2 = color.from_error( color2 or text.color2 )
		local color1 = color.from_error( color1 or text.color1 )
		effector.print_error( color1, "color", "color.vector", 1 )
		effector.print_error( color2, "color", "color.vector", 2 )
		local cv_table, cv_index, C1, C2 = { }, table.disorder( 4 ), color.vc_to_c( color1 ), color.vc_to_c( color2 )
		local Cfx = { { C1, C1, C2, C1 }, { C2, C1, C1, C1 }, { C1, C1, C1, C2 }, { C1, C2, C1, C1 } }
		cv_table = {
			[1] = Cfx[cv_index[1]],
			[2] = Cfx[cv_index[2]],
			[3] = Cfx[cv_index[3]],
			[4] = { C2, C2, C2, C2 }
		}
		cv_table[0] = { C1, C1, C1, C1 }
		for i = 1, 4 do
			if cv_table[1][i] == cv_table[2][i] then
				cv_table[2][i] = C1
			else
				cv_table[2][i] = C2
			end
		end
		for i = 1, 4 do
			if cv_table[2][i] == cv_table[3][i] then
				cv_table[3][i] = C1
			else
				cv_table[3][i] = C2
			end
		end
		for i = 1, 4 do
			cv_table[i] = format( "(%s)", table.show( cv_table[i] ) )
		end
		return cv_table
	end
	
	function color.delay( time_i, delay, color_i, color_f, ... )
		local color_f = color.from_error( color_f or text.color2 )
		local color_i = color.from_error( color_i or text.color1 )
		local delay = delay or 800
		local time_i = time_i or 0
		effector.print_error( time_i, "number", "color.delay", 1 )
		effector.print_error( delay, "number", "color.delay", 2 )
		effector.print_error( color_i, "color", "color.delay", 3 )
		effector.print_error( color_f, "color", "color.delay", 4 )
		local e_concat, ti, cd_index, _c = { ... }, time_i, table.disorder( 4 ), color.vc_to_c
		local X, vcl, Ci, Cf, Tag_fx, Ax, event = { }, { }, _c( color_i ), _c( color_f ), "", "", ""
		local Cfx = { { Ci, Ci, Cf, Ci }, { Cf, Ci, Ci, Ci }, { Ci, Ci, Ci, Cf }, { Ci, Cf, Ci, Ci } }
		X = {
			[0] = { Ci, Ci, Ci, Ci },
			[1] = Cfx[cd_index[1]],
			[2] = Cfx[cd_index[2]],
			[3] = Cfx[cd_index[3]],
			[4] = { Cf, Cf, Cf, Cf }
		}
		for i = 1, 4 do
			if X[1][i] == X[2][i] then
				X[2][i] = Ci
			else
				X[2][i] = Cf
			end
		end
		for i = 1, 4 do
			if X[2][i] == X[3][i] then
				X[3][i] = Ci
			else
				X[3][i] = Cf
			end
		end
		if #e_concat == 0
			or e_concat == nil then
			Tag_fx = format( "\\1vc(%s)\\3vc(%s)\\4vc(%s)", table.show( X[0] ), table.show( X[0] ), table.show( X[0] ) )
			for i = 1, 4 do
				Ax = table.show( X[i] )
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1vc(%s)\\3vc(%s)\\4vc(%s))", ti + delay*(i - 1)/4, ti + delay*i/4, Ax, Ax, Ax )
			end
		else
			for i = 1, #e_concat do
				vcl[i] = e_concat[i]
			end
			for i = 1, #e_concat do
				Tag_fx = Tag_fx .. format( "%s(%s)", vcl[i], table.show( X[0] ) )
			end
			for i = 1, 4 do
				Ax = table.show( X[i] )
				event = ""
				for k = 1, #e_concat do
					event = event .. format( "%s(%s)", vcl[k], Ax )
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", ti + delay*(i - 1)/4, ti + delay*i/4, event )
			end
		end
		return Tag_fx
	end
	
	function color.movedelay( dur, delay, mode, ... )
		local colors = color.from_error( ... or text.color2 )
		local mode = mode or 1
		local delay = delay or 360
		local dur = dur or fx.dur
		effector.print_error( dur, "number", "color.movedelay", 1 )
		effector.print_error( delay, "number", "color.movedelay", 2 )
		effector.print_error( mode, "numberstring", "color.movedelay", 3 )
		local CFX, CdFX, N, Tag_fx, dt, _c = { }, { }, { }, "", delay, color.vc_to_c
		local V, I, Ind = 1, 1, 1
		if type( colors ) == "table" then
			CFX = colors
		else
			CFX = { colors }
		end
		if #CFX == 1 then
			CFX[2] = text.color1
		end
		for i = 1, #CFX - 1 do
			table.inserttable( CdFX, color.vector( _c( CFX[i] ), _c( CFX[i + 1] ) ) )
		end
		for c_mov in tostring( mode ):gmatch( "%d" ) do
			table.insert( N, c_mov )
		end
		if #N == 0 then
			N = { [1] = 1 }
		end
		for i = 1, #N do
			N[i] = format( "\\%svc", N[i] )
		end
		CdFX = table.concat2( CdFX, N )
		local i = 0
		while dur > 0 do
			V = #CdFX - 1
			I = i + 1
			Ind = (V - V*ceil( I/V ) + I)*(-1)^(ceil( I/V ) + 1) + (V + 2)*(1 + (-1)^ceil( I/V ))/2
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", math.round( dt*i , 2 ), math.round( dt*(i + 1), 2 ), CdFX[Ind] )
			i = i + 1
			dur = dur - dt
		end
		return Tag_fx
	end

	function color.set( Cset_times, Cset_colors, ... ) --... = \\1vc, \\3vc, \\4vc, \\1c, \\3c or \\4c
		local e_concat = { ... }
		local Cset_colors = color.from_error( Cset_colors or { text.color2 } )
		local Cset_times = Cset_times or { linefx[ii].start_time + linefx[ii].duration/2 }
		effector.print_error( Cset_times, "table", "color.set", 1 )
		effector.print_error( Cset_colors, "table", "color.set", 2 )
		local Cset_c = Cset_colors
		Cset_times = table.complete( Cset_times, fx.start_time, fx.end_time )
		local iSt, iEt, t_t = table.index( Cset_times, fx.start_time ), table.index( Cset_times, fx.end_time ), table.duplicate( Cset_times )
		if #Cset_c >= #Cset_times - 1 then
			Cset_c[0] = Cset_c[#Cset_times - 1]
		else
			Cset_c[0] = text.color1
		end
		local i = iSt + 1
		local Tag_fx, event, t1, t2, offset_t, c_set = "", "", 0, 1, 1, table.duplicate( Cset_c )
		for i = 0, #c_set do
			if type( c_set[i] ) == "table" then
				Cset_c[i] = c_set[i][(val_i - 1)%#Cset_c[i] + 1]
			end
		end
		if #e_concat == 0 then
			Tag_fx = "\\1c" .. Cset_c[i - 2]
		else
			Tag_fx = ""
			for k = 1, #e_concat do
				if i - 2 == 0 then
					if e_concat[k] == "\\1c"
						or e_concat[k] == "\\1vc" then
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[0] = Cset_c[#Cset_times - 1]
						else
							Cset_c[0] = text.color1
						end
					elseif e_concat[k] == "\\3c"
						or e_concat[k] == "\\3vc" then
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[0] = Cset_c[#Cset_times - 1]
						else
							Cset_c[0] = text.color3
						end
					elseif e_concat[k] == "\\4c"
						or e_concat[k] == "\\4vc" then
						if #Cset_c >= #Cset_times - 1 then
							Cset_c[0] = Cset_c[#Cset_times - 1]
						else
							Cset_c[0] = text.color4
						end
					end
				end
				Tag_fx = Tag_fx .. e_concat[k] .. Cset_c[i - 2]
			end
		end
		for i = 1, #Cset_times do
			if type( Cset_times[i] ) == "table" then
				Cset_times[i] = Cset_times[i][1]
			end
		end
		if iSt + 1 ~= iEt then
			while Cset_times[i] < fx.end_time do
				if type( t_t[i] ) == "table" then
					offset_t = t_t[i][2]
				else
					offset_t = 1
				end
				t1 = Cset_times[i] - fx.start_time - frame_dur/2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				if #e_concat == 0 then
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1vc%s)", t1, t2, Cset_c[i - 1] )
				else
					event = ""
					for k = 1, #e_concat do
						event = event .. e_concat[k] .. Cset_c[i - 1]
					end
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, event )
				end
				i = i + 1
			end
		end
		return Tag_fx
	end

	function color.mask( Mode, Color, Mask )
		return table.mask( Color, Mask, Mode )
		--se puede usar: color.mask( mode, table, mask )[valor]
	end
	
	function color.movemask( Dur, Delay, Mode, Color, Mask )
		--Example: color.movemask( fx.dur, 220, "\\1vc", table.make( "color", syl.n, 15, 90 )[syl.i], "&H000000&" )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, val_i + 1 }
		end
		local CmMtb = table.mask( Color, Mask, Mode, true )
		return CmMtb[val_i] .. tag.oscill( Dur, Delay, CmMtb )
	end --color.movemask( fx.dur, 300, "\\1vc", "&H0000FF&" )

	function color.setmovemask( delay, mode, t, colors )--mode: "\\1c", "\\3c", "\\4c", "\\1vc", "\\3vc" or "\\4vc"
		local colors = color.from_error( colors or { text.color2 } )
		local t = t or { linefx[ii].start_time + linefx[ii].duration/2 }
		local mode = mode or "\\1vc"
		local delay = delay or 420
		t = table.complete( t, fx.start_time, fx.end_time )
		if #colors >= #t - 1 then
			table.insert( colors, 1, colors[#t - 1] )
		else
			table.insert( colors, 1, text.color1 )
		end
		function color.masktable2( color_table )
			if val_i == 1 then
				TT_cmask = remember( "Tmsk", { } )
				Ct, ton2, T_cmask = color_table, { }, { }
				for i = 1, #Ct do
					ton2[i], T_cmask[i] = { }, { }
					for k = 1, 2*(val_n + 1) do
						ton2[i][k] = color.rc( Ct[i] )
					end
					ton2[i][1] = ton2[i][2*(val_n + 1) - 2]
					ton2[i][3] = ton2[i][2*(val_n + 1)]
					for h = 1, val_n do
						T_cmask[i][h] = format( "(%s,%s,%s,%s)", ton2[i][2*h - 1], ton2[i][2*h + 1], ton2[i][2*h], ton2[i][2*h + 2] )
					end
				end
				for i = 1, #Ct do
					TT_cmask[i] = T_cmask[i]
				end
			else
				TT_cmask = recall.Tmsk
			end
			return TT_cmask
		end
		colors = color.masktable2( colors )
		local Ind2, Tag2, t_set = table.index( t, fx.start_time ), "", { }
		for i = table.index( t, fx.start_time ), table.index( t, fx.end_time ) do
			t_set[#t_set + 1] = t[i] - fx.start_time - frame_dur/2
		end
		for i = 1, #t_set - 1 do
			if t_set[i] < 0 then
				t_set[i] = 0
			end
			Tag2 = Tag2 .. format( "\\t(%s,%s,%s)", t_set[i], t_set[i] + 1, mode .. colors[Ind2 + i - 1][(val_i - 2)%val_n + 1] )
			Tag2 = Tag2 .. tag.oscill( { t_set[i], t_set[i + 1], val_i }, delay, table.concat1( colors[Ind2 + i - 1], mode ) )
		end
		return Tag2
	end
	
	function color.movemaskv( Dur, Delay, Mode, Color, Mask )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, 2 }
		end
		local CmMvTB, CmMvtb = table.mask( Color, Mask, Mode, true ), { }
		for i = 1, 12 do
			CmMvtb[i] = CmMvTB[val_i + (i - 1)*val_n]
		end
		return CmMvtb[1] .. tag.oscill( Dur, Delay, CmMvtb )
	end

	function color.masktable( color_or_table )
		local color_or_table = color.from_error( color_or_table or text.color1 )
		local Ct, tone, T_cmask, TT_cmask
		if val_i == 1 then
			Ct = color_or_table
			tone, T_cmask, TT_cmask = { }, { }, { }
			if type( Ct ) == "table" then
				for i = 1, #Ct do
					tone[i], T_cmask[i] = { }, { }
					for k = 1, 2*(val_n + 1) do
						tone[i][k] = color.interpolate( Ct[i], "&H000000&", R( 0, 80 )/100 )
					end
					for h = 1, val_n do
						T_cmask[i][h] = format( "(%s,%s,%s,%s)", tone[i][2*h - 1], tone[i][2*h + 1], tone[i][2*h], tone[i][2*h + 2] )
					end
				end
				for i = 1, #Ct do
					TT_cmask[i] = T_cmask[i]
				end
				return TT_cmask
			end
			for i = 1, 2*(val_n + 1) do
				tone[i] = color.interpolate( Ct, "&H000000&", R( 0, 80 )/100 )
			end
			for k = 1, val_n do
				T_cmask[k] = format( "(%s,%s,%s,%s)", tone[2*k - 1], tone[2*k + 1], tone[2*k], tone[2*k + 2] )
			end
		end
		return T_cmask
	end
	
	function color.module( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module )
	end

	function color.module1( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module1 )
	end

	function color.module2( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, module2 )
	end
	
	function color.moduler( color1_or_table, color2_or_table )
		return color.interpolate( color1_or_table, color2_or_table, moduler )
	end
	
	function color.ipol( ... )
		local Colors = { }
		if type( ... ) == "table" then
			Colors = ...
		else
			Colors = { ... }
		end
		if #Colors == 1 then
			table.insert( Colors, 1, text.color1 )
		end
		local n = #Colors - 1
		local N, Cipol
		if val_i == 1 then
			Cipol = remember( "cipol", { } )
			for i = 1, val_n + 1 do
				N = ceil( i/((val_n + 1)/n) )
			--	Cipol[i] = color.interpolate( Colors[N], Colors[N + 1], (i - (N - 1)*(val_n + 1)/n - 1)/((val_n + 1)/n) )
				Cipol[i] = color.interpolate( Colors[N], Colors[N + 1], (i - (N - 1)*(val_n + 0)/n - 1)/((val_n + 1)/n - 1) )
			end
		else
			Cipol = recall.cipol
		end
		if fx__.v_kanji == false then
			return format( "(%s,%s,%s,%s)", Cipol[val_i], Cipol[val_i + 1], Cipol[val_i], Cipol[val_i + 1] )
		end
		return format( "(%s,%s,%s,%s)", Cipol[val_i], Cipol[val_i], Cipol[val_i + 1], Cipol[val_i + 1] )
	end
	
	function color.loop( ... )
		local coloRs2 = { }
		if type( ... ) == "table" then
			coloRs2 = ... 
		else
			coloRs2 = { ... }
		end
		if #coloRs2 == 1 then
			table.insert( coloRs2, 1, text.color1 )
		end
		local n = #coloRs2 - 1
		local N, C_ipol2
		if j == 1 then
			C_ipol2 = remember( "cipol2", { } )
			for i = 1, maxj + 1 do
				N = ceil( i/((maxj + 1)/n) )
			--	C_ipol2[i] = color.interpolate( coloRs2[N], coloRs2[N + 1], (i - (N - 1)*(maxj + 1)/n - 1)/((maxj + 1)/n) )
				C_ipol2[i] = color.interpolate( coloRs2[N], coloRs2[N + 1], (i - (N - 1)*(maxj + 0)/n - 1)/((maxj + 1)/n - 1) )
			end
		else
			C_ipol2 = recall.cipol2
		end
		if fx__.v_kanji == false then
			return format( "(%s,%s,%s,%s)", C_ipol2[j], C_ipol2[j + 1], C_ipol2[j], C_ipol2[j + 1] )
		end
		return format( "(%s,%s,%s,%s)", C_ipol2[j], C_ipol2[j], C_ipol2[j + 1], C_ipol2[j + 1] )
	end
	
	function color.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
		local  CbGgt = table.bigradient( Color_or_Table1, Color_or_Table2, Size_Table )
		return CbGgt[(val_i - 1)%#CbGgt + 1]
	end
	
	function color.distance( CD_center, ... )
		--CD_center = {center_x, center_y[, radius_min[, radius_max[, center_ref_x, center_ref_y]]]}
		local CD_max_dis, CD_radius_min, CD_radius_max, CD_radius_dis, CD_gradient, dtc_col
		if val_i == 1 and j == 1 then
			CD_max_dis = {
				[1] = math.distance( CD_center[1], CD_center[2], 0, 0 ),
				[2] = math.distance( CD_center[1], CD_center[2], xres, 0 ),
				[3] = math.distance( CD_center[1], CD_center[2], 0, yres ),
				[4] = math.distance( CD_center[1], CD_center[2], xres, yres )
			}
			CD_radius_min = CD_center[3] or 0
			CD_radius_max = CD_center[4] or math.max( unpack( CD_max_dis ) )
			CD_radius_dis = CD_radius_max - CD_radius_min
			CD_gradient = table.gradient3( 360, ... )
			dtc_col = remember( "CD_col", function( AdD_x, AdD_y )
				local dc_dis = math.distance( CD_center[1], CD_center[2], AdD_x, AdD_y ) - CD_radius_min
				if ceil( dc_dis ) <= 0 then
					return color.vc_to_c( CD_gradient[1] )
				elseif ceil( dc_dis ) >= CD_radius_dis then
					return color.vc_to_c( CD_gradient[360] )
				end
				return color.vc_to_c( CD_gradient[ceil( 360*dc_dis/CD_radius_dis )] )
			end )
		else
			dtc_col = recall.CD_col
		end
		if CD_center[7] then
			return format( "(%s,%s,%s,%s)", dtc_col( CD_center[5] - val_width/2, CD_center[6] - val_height/2 ), 
			dtc_col( CD_center[5] + val_width/2, CD_center[6] - val_height/2 ),
			dtc_col( CD_center[5] - val_width/2, CD_center[6] + val_height/2 ), 
			dtc_col( CD_center[5] + val_width/2, CD_center[6] + val_height/2 ) )
		elseif CD_center[6] then
			return format( "(%s,%s,%s,%s)", dtc_col( CD_center[5], CD_center[6] ), dtc_col( CD_center[5], CD_center[6] ),
			dtc_col( CD_center[5], CD_center[6] ), dtc_col( CD_center[5], CD_center[6] ) )
		end
		return format( "(%s,%s,%s,%s)", dtc_col( val_left, val_top ), dtc_col( val_right, val_top ),
		dtc_col( val_left, val_bottom ), dtc_col( val_right, val_bottom ) )
	end

	function color.angle( CA_origin, ... )
		--CA_origin = {origin_x, origin_y[, pos_ref_x, pos_ref_y]}
		local CA_gradient, ang_col
		if val_i == 1
			and j == 1 then
			CA_gradient = table.gradient3( 360, ... )
			ang_col = remember( "c_ang", function( adD_x, adD_y )
				local ca_ang = math.angle( CA_origin[1], CA_origin[2], adD_x, adD_y )%361
				return color.vc_to_c( CA_gradient[ceil(ca_ang)] )
			end )
		else
			ang_col = recall.c_ang
		end 
		if CA_origin[5] then
			return format( "(%s,%s,%s,%s)", ang_col( CA_origin[3] - val_width/2, CA_origin[4] - val_height/2 ), 
			ang_col( CA_origin[3] + val_width/2, CA_origin[4] - val_height/2 ), 
			ang_col( CA_origin[3] - val_width/2, CA_origin[4] + val_height/2 ), 
			ang_col( CA_origin[3] + val_width/2, CA_origin[4] + val_height/2 ) )
		elseif CA_origin[4] then
			return format( "(%s,%s,%s,%s)", ang_col( CA_origin[3], CA_origin[4] ), ang_col( CA_origin[3], CA_origin[4] ),
			ang_col( CA_origin[3], CA_origin[4] ), ang_col( CA_origin[3], CA_origin[4] ) )
		end
		return format( "(%s,%s,%s,%s)", ang_col( val_left, val_top ), ang_col( val_right, val_top ),
		ang_col( val_left, val_bottom ), ang_col( val_right, val_bottom ) )
	end
	
	function color.from_error( color_or_table )
		if type( color_or_table ) == "string" then
			if color_or_table:match( "#%x%x%x%x%x%x" ) then
				color_or_table = color_or_table:gsub( "#%x%x%x%x%x%x",
					function( HTML_color )
						return color.ass( HTML_color )
					end
				)
			else
				color_or_table = color_or_table:gsub( "[%&Hh]*(%x%x%x%x%x%x)[%&]*",
					function( ASS_color )
						return format( "&H%s&", ASS_color )
					end
				)
			end
		elseif type( color_or_table ) == "table" then
			for k, valor in pairs( color_or_table ) do
				if type( valor ) == "string" then
					if valor:match( "#%x%x%x%x%x%x" ) then
						color_or_table[k] = valor:gsub( "#%x%x%x%x%x%x",
							function( HTML_color )
								return color.ass( HTML_color )
							end
						)
					else
						color_or_table[k] = valor:gsub( "[%&Hh]*(%x%x%x%x%x%x)[%&]*",
							function( ASS_color )
								return format( "&H%s&", ASS_color )
							end
						)
					end
				end
			end
		end
		return color_or_table
	end
	
	--------------------------------------------------------------------------------------------------
	--Librería de las Funciones alpha ----------------------------------------------------------------
	function alpha.assF( alpha_or_table )
		local alpha_or_table = alpha_or_table or text.alpha1
		local aF, taF = { }, { }
		if type( alpha_or_table ) == "table" then
			aF = alpha_or_table
		else
			aF = { alpha_or_table }
		end
		for i = 1, #aF do
			taF = { }
			if type( aF[i] ) == "number" then
				aF[i] = ass_alpha( aF[i]%256 )
			else
				if aF[i]:len( ) < 7 then
					aF[i] = aF[i]:match( "%x+" )
					aF[i] = format( "&H%s&", aF[i]:upper( ) )
				else
					for cF in aF[i]:gmatch( "[%&Hh]*%x%x[%&]*" ) do
						cF = cF:match( "%x+" )
						cF = format( "&H%s&", cF:upper( ) )
						table.insert( taF, cF )
					end
					aF[i] = format( "(%s,%s,%s,%s)", taF[1], taF[2], taF[3], taF[4] )
				end
			end
		end
		if #aF == 1 then
			return aF[1]
		end
		return aF
	end
	
	function alpha.va( alpha_or_table )
		local alpha_or_table = alpha.from_error( alpha_or_table or text.alpha1 )
		local vA, ava_t = { }, { }
		if type( alpha_or_table ) == "table" then
			vA = alpha_or_table
		else
			vA = { alpha_or_table }
		end
		for i = 1, #vA do
			if type( vA[i] ) == "number"
				or vA[i]:len( ) < 7 then
				ava_t[i] = math.format2( "(%s,%s,%s,%s)", alpha.assF( vA[i] ) )
			else
				ava_t[i] = alpha.assF( vA[i] )
			end
		end
		if #ava_t == 1 then
			return ava_t[1]
		end
		return ava_t
	end

	function alpha.r( )
		return ass_alpha( R( 0, 255 ) )
	end
	
	function alpha.ra( ArA_alpha, ... )
		local ArA_alpha = alpha.from_error( ArA_alpha or text.alpha1 )
		local ArAalp, ArAtbl, i_a, _a = { }, { }, interpolate_alpha, alpha.va_to_a
		if type( ArA_alpha ) == "table" then
			ArAalp = ArA_alpha
		else
			ArAalp = { ArA_alpha }
		end
		local ArAmsk = alpha.from_error( ... or { "&HFF&", "&H00&" } )
		if type( ArAmsk ) ~= "table" then
			ArAmsk = { ArAmsk }
		end
		if #ArAmsk == 1 then
			ArAmsk[2] = ArAmsk[1]
		end
		for i = 1, #ArAalp do
			ArAmsk = table.disorder( ArAmsk )
			ArAtbl[i] = i_a( R( 20, 100 )/100, i_a( R( 2 ) - 1, ArAmsk[1], ArAmsk[2] ), _a( ArAalp[i] ) )
		end
		if #ArAalp == 1 then
			return ArAtbl[1]
		end
		return ArAtbl
	end
	
	function alpha.rva( ArCA_alpha, ... )
		local ArCA_alpha = alpha.from_error( ArCA_alpha or text.alpha1 )
		local ArCAalp, ArCAtbl = { }, { }
		if type( ArCA_alpha ) == "table" then
			ArCAalp = ArCA_alpha
		else
			ArCAalp = { ArCA_alpha }
		end
		for i = 1, #ArCAalp do
			ArCAtbl[i] = format( "(%s,%s,%s,%s)",
			alpha.ra( ArCAalp[i], ... ), alpha.ra( ArCAalp[i], ... ), alpha.ra( ArCAalp[i], ... ), alpha.ra( ArCAalp[i], ... ) )
		end
		if #ArCAalp == 1 then
			return ArCAtbl[1]
		end
		return ArCAtbl
	end
	
	function alpha.gradientv( AlphaTop_or_table, AlphaBottom_or_table )
		local AlphaBottom_or_table = alpha.from_error( AlphaBottom_or_table or "&HFF&" )
		local AlphaTop_or_table = alpha.from_error( AlphaTop_or_table or text.alpha1 )
		local Av_table, AT, AB, _a = { }, { }, { }, alpha.va_to_a
		if type( AlphaTop_or_table ) == "table" then
			AT = AlphaTop_or_table
		else
			AT = { AlphaTop_or_table }
		end
		if type( AlphaBottom_or_table ) == "table" then
			AB = AlphaBottom_or_table
		else
			AB = { AlphaBottom_or_table }
		end
		for i = 1, #AT do
			for k = 1, #AB do
				table.insert( Av_table, format( "(%s,%s,%s,%s)", _a( AT[i] ), _a( AT[i] ), _a( AB[k] ), _a( AB[k] ) ) )
			end
		end
		if #Av_table == 1 then
			return Av_table[1]
		end
		return Av_table
	end
	
	function alpha.gradienth( AlphaLeft_or_table, AlphaRight_or_table, algorithm )
		--example algorithm: "1 - abs(2*%s - 1)"
		local Al = algorithm or "%s"
		local AlphaRight_or_table = alpha.from_error( AlphaRight_or_table or "&HFF&" )
		local AlphaLeft_or_table = alpha.from_error( AlphaLeft_or_table or text.alpha1 )
		local Ah_table, AL, AR, _a, i_a = { }, { }, { }, alpha.va_to_a, interpolate_alpha
		local v1, v2 = math.format( Al, 2*(val_i - 1)/(2*val_n - 1) ), math.format( Al, (2*val_i - 1)/(2*val_n - 1) )
		if type( AlphaLeft_or_table )  == "table" then
			AL = AlphaLeft_or_table
		else
			AL = { AlphaLeft_or_table }
		end
		if type( AlphaRight_or_table ) == "table" then
			AR = AlphaRight_or_table
		else
			AR = { AlphaRight_or_table }
		end
		for i = 1, #AL do
			for k = 1, #AR do
				Ax1 = i_a( v1, _a( AL[i] ), _a( AR[k] ) )
				Ax2 = i_a( v2, _a( AL[i] ), _a( AR[k] ) )
				table.insert( Ah_table, format( "(%s,%s,%s,%s)", Ax1, Ax2, Ax1, Ax2 ) )
			end
		end
		if #Ah_table == 1 then
			return Ah_table[1]
		end
		return Ah_table
	end
	
	function alpha.va_to_a( alphava_or_table )
		local alphava_or_table = alpha.from_error( alphava_or_table or text.alpha1 )
		local alphava, alphas, i_a = { }, { }, interpolate_alpha
		if type( alphava_or_table ) == "table" then
			alphava = alphava_or_table
		else
			alphava = { alphava_or_table }
		end
		for k = 1, #alphava do alphas = { }
			if type( alphava[k] ) == "number"
				or alphava[k]:len( ) < 7 then
				alphava[k] = alpha.assF( alphava[k] )
			else
				for c_va in alphava[k]:gmatch( "[%&Hh]*%x%x[%&]*" ) do
					table.insert( alphas, alpha.assF( c_va ) )
				end
				alphava[k] = i_a( 0.5, i_a( 0.5, alphas[1], alphas[4] ), i_a( 0.5, alphas[2], alphas[3] ) )
			end 
		end
		if #alphava == 1 then
			return alphava[1]
		end
		return alphava
	end
	
	function alpha.a_to_va( alphaa )
		local  alphaa = alphaa or text.alpha1
		return alpha.va( alphaa )
	end
	
	function alpha.interpolate( alpha1_or_table, alpha2_or_table, Index_Ipol )
		local II = Index_Ipol or 0.5
		local alpha2_or_table = alpha.from_error( alpha2_or_table or text.alpha1 )
		local alpha1_or_table = alpha.from_error( alpha1_or_table or "&HFF&" )
		local Ai_table, A1, A2, _a = { }, { }, { }, alpha.va_to_a
		if type( alpha1_or_table ) == "table" then
			A1 = alpha1_or_table
		else
			A1 = { alpha1_or_table }
		end
		if type( alpha2_or_table ) == "table" then
			A2 = alpha2_or_table
		else
			A2 = { alpha2_or_table }
		end
		for i = 1, #A1 do
			for k = 1, #A2 do
				table.insert( Ai_table, interpolate_alpha( II, _a( A1[i] ), _a( A2[k] ) ) )
			end
		end
		if #Ai_table == 1 then
			return Ai_table[1]
		end
		return Ai_table
	end
	
	function alpha.delay( time_i, delay, alpha_i, alpha_f, ... )
		local alpha_f = alpha.from_error( alpha_f or text.alpha1 )
		local alpha_i = alpha.from_error( alpha_i or "&HFF&" )
		local delay = delay or 640
		local time_i = time_i or 0
		local e_concat, Tag_fx, event, ti, X, AD_val, index = { ... }, "", "", time_i, { }, { }, table.disorder( 4 )
		local Ai, Af = alpha.assF( alpha_i ), alpha.assF( alpha_f )
		local Afx = { { Ai, Ai, Af, Ai }, { Af, Ai, Ai, Ai }, { Ai, Ai, Ai, Af }, { Ai, Af, Ai, Ai } }
		X = {
			[0] = { Ai, Ai, Ai, Ai },
			[1] = Afx[index[1]],
			[2] = Afx[index[2]],
			[3] = Afx[index[3]],
			[4] = { Af, Af, Af, Af }
		}
		for i = 1, 4 do
			if X[1][i] == X[2][i] then
				X[2][i] = Ai
			else
				X[2][i] = Af
			end
		end
		for i = 1, 4 do
			if X[2][i] == X[3][i] then
				X[3][i] = Ai
			else
				X[3][i] = Af
			end
		end
		local Ax
		if #e_concat == 0 or e_concat == nil then
			Tag_fx = format( "\\1va(%s)\\3va(%s)\\4va(%s)", table.show( X[0] ), table.show( X[0] ), table.show( X[0] ) )
			for i = 1, 4 do
				Ax = table.show( X[i] )
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1va(%s)\\3va(%s)\\4va(%s))", ti + delay*(i - 1)/4, ti + delay*i/4, Ax, Ax, Ax )
			end
		else
			for i = 1, #e_concat do
				AD_val[i] = e_concat[i]
			end
			for i = 1, #e_concat do
				Tag_fx = Tag_fx .. format( "%s(%s)", AD_val[i], table.show( X[0] ) )
			end
			for i = 1, 4 do
				Ax = table.show( X[i] )
				event = ""
				for k = 1, #e_concat do
					event = event .. format( "%s(%s)", AD_val[k], Ax )
				end
				Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", ti + delay*(i - 1)/4, ti + delay*i/4, event )
			end
		end
		return Tag_fx
	end
	
	function alpha.set( Aset_times, Aset_alphas, ... ) --... = \\1va, \\3va, \\4va, \\1a, \\3a or \\4a
		local e_concat = { ... }
		local Aset_alphas = alpha.from_error( Aset_alphas or { "&H86&" } )
		local Aset_times = Aset_times or { linefx[ii].start_time + linefx[ii].duration/2 }
		local Aset_a = Aset_alphas
		Aset_times = table.complete( Aset_times, fx.start_time, fx.end_time )
		local iSt, iEt, t_t = table.index( Aset_times, fx.start_time ), table.index( Aset_times, fx.end_time ), table.duplicate( Aset_times )
		if #Aset_a >= #Aset_times - 1 then
			Aset_a[0] = Aset_a[#Aset_times - 1]
		else
			Aset_a[0] = text.alpha1
		end
		local i = iSt + 1
		local Tag_fx, event, t1, t2, offset_t, c_set = "", "", 0, 1, 1, table.duplicate( Aset_a )
		for i = 0, #c_set do
			if type( c_set[i] ) == "table" then
				Aset_a[i] = c_set[i][(val_i - 1)%#Aset_a[i] + 1]
			end
		end
		if #e_concat == 0 then
			Tag_fx = "\\1a" .. Aset_a[i - 2]
		else
			Tag_fx = ""
			for k = 1, #e_concat do
				if i - 2 == 0 then
					if e_concat[k] == "\\1a"
						or e_concat[k] == "\\1va" then
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[0] = Aset_a[#Aset_times - 1]
						else
							Aset_a[0] = text.alpha1
						end
					elseif e_concat[k] == "\\3a"
						or e_concat[k] == "\\3va" then
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[0] = Aset_a[#Aset_times - 1]
						else
							Aset_a[0] = text.alpha3
						end
					elseif e_concat[k] == "\\4a"
						or e_concat[k] == "\\4va" then
						if #Aset_a >= #Aset_times - 1 then
							Aset_a[0] = Aset_a[#Aset_times - 1]
						else
							Aset_a[0] = text.alpha4
						end
					end
				end
				Tag_fx = Tag_fx .. e_concat[k] .. Aset_a[i - 2]
			end
		end
		for i = 1, #Aset_times do
			if type( Aset_times[i] ) == "table" then
				Aset_times[i] = Aset_times[i][1]
			end
		end
		if iSt + 1 ~= iEt then
			while Aset_times[i] < fx.end_time do
				if type( t_t[i] ) == "table" then
					offset_t = t_t[i][2]
				else
					offset_t = 1
				end
				t1 = Aset_times[i] - fx.start_time - frame_dur/2
				if t1 < 0 then
					t1 = 0
				end
				t2 = t1 + offset_t
				if #e_concat == 0 then
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\1va%s)", t1, t2, Aset_a[i - 1] )
				else
					event = ""
					for k = 1, #e_concat do
						event = event .. e_concat[k] .. Aset_a[i - 1]
					end
					Tag_fx = Tag_fx .. format( "\\t(%s,%s,%s)", t1, t2, event )
				end
				i = i + 1
			end
		end
		return Tag_fx
	end
	
	function alpha.mask( Mode, Alpha, Mask )
		return table.mask( Alpha, Mask, Mode )
	end
	
	function alpha.movemask( Dur, Delay, Mode, Alpha, Mask )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, val_i + 1 }
		end
		local  AmMtb = table.mask( Alpha, Mask, Mode, true )
		return AmMtb[val_i] .. tag.oscill( Dur, Delay, AmMtb )
	end
	
	function alpha.movemaskv( Dur, Delay, Mode, Alpha, Mask )
		if type( Dur ) == "table" then
			table.insert( Dur, val_i + 1 )
		else
			Dur = { 0, Dur, 2 }
		end
		local AmMvTB, AmMvtb = table.mask( Alpha, Mask, Mode, true ), { }
		for i = 1, 12 do
			AmMvtb[i] = AmMvTB[val_i + (i - 1)*val_n]
		end
		return AmMvtb[1] .. tag.oscill( Dur, Delay, AmMvtb )
	end
	
	function alpha.masktable( alpha_or_table )
		local alpha_or_table = alpha.from_error( alpha_or_table or text.alpha1 )
		local At, tone_a, T_amask, TT_amask
		if val_i == 1 then
			At = alpha_or_table
			tone_a, T_amask, TT_amask = { }, { }, { }
			if type( At ) == "table" then
				for i = 1, #At do
					tone_a[i] = { }
					T_amask[i] = { }
					for k = 1, 2*(val_n + 1) do
						tone_a[i][k] = alpha.ra( At[i] )
					end
					for h = 1, val_n do
						T_amask[i][h] = format( "(%s,%s,%s,%s)", tone_a[i][2*h - 1], tone_a[i][2*h + 1], tone_a[i][2*h], tone_a[i][2*h + 2] )
					end
				end
				for i = 1, #At do
					TT_amask[i] = T_amask[i]
				end
				return TT_amask
			end
			for i = 1, 2*(val_n + 1) do
				tone_a[i] = alpha.ra( At )
			end
			for k = 1, val_n do
				T_amask[k] = format( "(%s,%s,%s,%s)", tone_a[2*k - 1], tone_a[2*k + 1], tone_a[2*k], tone_a[2*k + 2] )
			end
		end
		return T_amask
	end
	
	function alpha.module( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module )
	end

	function alpha.module1( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module1 )
	end

	function alpha.module2( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, module2 )
	end
	
	function alpha.moduler( alpha1_or_table, alpha2_or_table )
		return alpha.interpolate( alpha1_or_table, alpha2_or_table, moduler )
	end
	
	function alpha.ipol( ... )
		local Alphas = { }
		if type( ... ) == "table" then
			Alphas = ... 
		else
			Alphas = { ... }
		end
		if #Alphas == 1 then
			table.insert( Alphas, 1, text.alpha1 )
		end
		Alphas = alpha.from_error( Alphas )
		local n, A_ipol = #Alphas - 1, { }
		local N
		for i = 1, val_n + 1 do
			N = ceil( i/((val_n + 1)/n) )
			A_ipol[i] = alpha.interpolate( Alphas[N], Alphas[N + 1], (i - (N - 1)*(val_n + 0)/n - 1)/((val_n + 1)/n - 1) )
		end
		if fx__.v_kanji == false then
			return format( "(%s,%s,%s,%s)", A_ipol[val_i], A_ipol[val_i + 1], A_ipol[val_i], A_ipol[val_i + 1] )
		end
		return format( "(%s,%s,%s,%s)", A_ipol[val_i], A_ipol[val_i], A_ipol[val_i + 1], A_ipol[val_i + 1] )
	end
	
	function alpha.loop( ... )
		local Alphas = { }
		if type( ... ) == "table" then
			Alphas = ... 
		else 
			Alphas = { ... } 
		end
		if #Alphas == 1 then
			table.insert( Alphas, 1, text.alpha1 )
		end
		Alphas = alpha.from_error( Alphas )
		local n, A_loop = #Alphas - 1, { }
		local N
		for i = 1, maxj + 1 do
			N = ceil( i/((maxj + 1)/n) )
			A_loop[i] = alpha.interpolate( Alphas[N], Alphas[N + 1], (i - (N - 1)*(maxj + 0)/n - 1)/((maxj + 1)/n - 1) )
		end
		if fx__.v_kanji == false then
			return format( "(%s,%s,%s,%s)", A_loop[j], A_loop[j + 1], A_loop[j], A_loop[j + 1] )
		end
		return format( "(%s,%s,%s,%s)", A_loop[j], A_loop[j], A_loop[j + 1], A_loop[j + 1] )
	end
	
	function alpha.bigradient( Alpha_or_Table1, Alpha_or_Table2, Size_Table )
		local Alpha1 = alpha.from_error( Alpha_or_Table1 or text.alpha1 )
		local Alpha2 = alpha.from_error( Alpha_or_Table2 or text.alpha2 )
		local bigrad = table.bigradient( Alpha1, Alpha2, Size_Table )
		return bigrad[(val_i - 1)%#bigrad + 1]
	end
	
	function alpha.distance( AD_center, ... )
		--AD_center = {center_x, center_y[, radius_min[, radius_max[, center_ref_x, center_ref_y]]]}
		local AD_max_dis, AD_radius_min, AD_radius_max, AD_radius_dis, AD_gradient, dtc_alp
		if val_i == 1
			and j == 1 then
			AD_max_dis = {
				[1] = math.distance( AD_center[1], AD_center[2], 0, 0 ),
				[2] = math.distance( AD_center[1], AD_center[2], xres, 0 ),
				[3] = math.distance( AD_center[1], AD_center[2], 0, yres ),
				[4] = math.distance( AD_center[1], AD_center[2], xres, yres )
			}
			AD_radius_min = AD_center[3] or 0
			AD_radius_max = AD_center[4] or math.max( unpack( AD_max_dis ) )
			AD_radius_dis = AD_radius_max - AD_radius_min
			AD_gradient = table.gradient3( 86, ... )
			dtc_alp = remember( "AC_alp", function( AdD_x, AdD_y )
				local ad_dis = math.distance( AD_center[1], AD_center[2], AdD_x, AdD_y ) - AD_radius_min
				if ceil( ad_dis ) <= 0 then
					return alpha.va_to_a( AD_gradient[1] )
				elseif ceil(ad_dis) >= AD_radius_dis then
					return alpha.va_to_a( AD_gradient[86] )
				end
				return alpha.va_to_a( AD_gradient[ceil( 86*ad_dis/AD_radius_dis )] )
			end )
		else
			dtc_alp = recall.AC_alp
		end
		if AD_center[5] then
			return format( "(%s,%s,%s,%s)", dtc_alp( AD_center[5], AD_center[6] ), dtc_alp( AD_center[5], AD_center[6] ),
			dtc_alp( AD_center[5], AD_center[6] ), dtc_alp( AD_center[5], AD_center[6] ) )
		end
		return format( "(%s,%s,%s,%s)", dtc_alp( val_left, val_top ), dtc_alp( val_right, val_top ),
		dtc_alp( val_left, val_bottom ), dtc_alp( val_right, val_bottom ) )
	end

	function alpha.angle( AA_origin, ... )
		--AA_origin = {origin_x, origin_y[, pos_ref_x, pos_ref_y]}
		local AA_gradient, ang_alp
		if val_i == 1
			and j == 1 then
			AA_gradient = table.gradient3( 86, ... )
			ang_alp = remember( "a_ang", function( adD_x, adD_y )
				local aa_ang = math.angle( AA_origin[1], AA_origin[2], adD_x, adD_y )%87
				return alpha.va_to_a( AA_gradient[ceil( aa_ang )] )
			end )
		else
			ang_alp = recall.a_ang
		end 
		if AA_origin[3] then
			return format( "(%s,%s,%s,%s)", ang_alp( AA_origin[3], AA_origin[4] ), ang_alp( AA_origin[3], AA_origin[4] ),
			ang_alp( AA_origin[3], AA_origin[4] ), ang_alp( AA_origin[3], AA_origin[4] ) )
		end
		return format( "(%s,%s,%s,%s)", ang_alp( val_left, val_top ), ang_alp( val_right, val_top ),
		ang_alp( val_left, val_bottom ), ang_alp( val_right, val_bottom ) )
	end
	
	function alpha.from_error( alpha_or_table )
		if type( alpha_or_table ) == "string" then
			alpha_or_table = alpha_or_table:gsub( "[%#%&Hh]*(%x%x)[%&]*",
				function( ASS_alpha )
					return format( "&H%s&", ASS_alpha )
				end
			)
		elseif type( alpha_or_table ) == "table" then
			for k, valor in pairs( alpha_or_table ) do
				if type( valor ) == "string" then
					alpha_or_table[k] = valor:gsub( "[%#%&Hh]*(%x%x)[%&]*",
						function( ASS_alpha )
							return format( "&H%s&", ASS_alpha )
						end
					)
				end
			end
		end
		return alpha_or_table
	end
	-- [%#%&Hh]^* <-- son opcionales, pero mínimo debe haber una de ella :)
	--------------------------------------------------------------------------------------------------
	--Librería de las Funciones shapes ---------------------------------------------------------------
	function shape.ASSDraw3( Shape, Round )
		effector.print_error( Shape, "shape", "shape.ASSDraw3", 1 )
		local Shape = Shape:gsub( "  ", " " )
		local Round = Round or 2
		effector.print_error( Round, "number", "shape.ASSDraw3", 2 )
		if fx.filter == "mod" then
			Round = 0
		end
		Shape = Shape:gsub( "%S+",
			function( num )
				return format( "%s", math.round( tonumber( num ) or num, Round ) )
			end
		)
		Shape = Shape:gsub( " c", "" ):gsub( "%b{}", "" )
		local segments, coor2, CV = { }, { }, { }
		if Shape:match( "%i?clip%b()" ) then
			if Shape:match( "%-?%d+[%.%d]*%,%-?%d+[%.%d]*%,%-?%d+[%.%d]*%,%-?%d+[%.%d]*" ) then
				for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( CV, c )
				end
				Shape = format( "m %s %s l %s %s l %s %s l %s %s ", CV[1], CV[2], CV[1], CV[4], CV[3], CV[4], CV[3], CV[2] )
			else
				Shape = Shape:match( "%b()" ):sub( 2, -2 )
			end
		end
		for c in Shape:gmatch( "[blm]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			if c:match( "b" )
				or c:match( "l" )
				or c:match( "m" ) then
				table.insert( segments, c )
			end
		end
		for k = 1, #segments do
			coor2[k] = { }
			for c6 in segments[k]:gmatch( "%S+" ) do --captura: signos, números, letras y puntos
				table.insert( coor2[k], format( "%s ", c6 ) )
			end
		end
		for k = 1, #coor2 do
			if coor2[k][1] == "b "
				and #coor2[k] > 7 then
				coor3 = { }
				table.remove( coor2[k], 1 )
				for i = 1, #coor2[k]/6 do
					coor3[i] = { }
					for h = 1, 6 do
						table.insert( coor3[i], coor2[k][6*(i - 1) + h] )
					end
					coor3[i] = format( "b %s", table.op( coor3[i], "concat" ) )
				end
				coor2[k] = table.op( coor3, "concat" )
			elseif coor2[k][1] == "l "
				and #coor2[k] > 3 then
				coor4 = { }
				table.remove( coor2[k], 1 )
				for i = 1, #coor2[k]/2 do
					coor4[i] = { }
					for h = 1, 2 do
						table.insert( coor4[i], coor2[k][2*(i - 1) + h] )
					end
					coor4[i] = format( "l %s", table.op( coor4[i], "concat" ) )
				end
				coor2[k] = table.op( coor4, "concat" )
			else
				coor2[k] = table.op( coor2[k], "concat" )
			end
		end
		return table.op( coor2, "concat" )
	end
	
	function shape.round( Shape, Round )
		local Shape = shape.ASSDraw3( Shape )
		local Round = Round or 0
		effector.print_error( Shape, "shape", "shape.round", 1 )
		effector.print_error( Round, "number", "shape.round", 2 )
		Shape = Shape:gsub( "%S+",
			function( num )
				return format( "%s", math.round( tonumber( num ) or num, Round ) )
			end
		)
		return Shape
	end
	
	function shape.info( Shape )
		effector.print_error( Shape, "shape", "shape.info", 1 )
		local Shape = shape.ASSDraw3( Shape )
		shape1, shape2, index, shape_x, shape_y = { }, { }, { }, { }, { }
		for c_inf in Shape:gmatch( "%S+" ) do
			table.insert( shape1, c_inf )
			table.insert( shape2, c_inf )
		end
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.insert( index, k )
			end
		end
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.remove( shape1, k )
			end
		end
		for k = 1, #shape1/2 do
			shape_x[k] = tonumber( shape1[2*k - 1] )
			shape_y[k] = tonumber( shape1[2*k - 0] )
		end
		local shape_x2 = table.duplicate( shape_x )
		local shape_y2 = table.duplicate( shape_y )
		table.sort( shape_x2, function( x1, x2 ) return x1 < x2 end )
		table.sort( shape_y2, function( y1, y2 ) return y1 < y2 end )
		-- Shape Data ------------------
		minx = shape_x2[1]			--> la menor de las coordenadas en "x"
		maxx = shape_x2[#shape_x2]	--> la mayor de las coordenadas en "x"
		miny = shape_y2[1]			--> la menor de las coordenadas en "y"
		maxy = shape_y2[#shape_y2]	--> la mayor de las coordenadas en "y"
		w_shape = maxx - minx		--> (width) ancho total en pixeles de la shape
		h_shape = maxy - miny		--> (height) alto total en pixeles de la shape
		c_shape = minx + w_shape/2	--> (center) coordenada en "x" del centro de la shape
		m_shape = miny + h_shape/2	--> (middle) coordenada en "y" del centro de la shape
	end
	
	function shape.redraw( Shape, tract )
		effector.print_error( Shape, "shape", "shape.redraw", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local tract = tract or 2
		effector.print_error( tract, "number", "shape.redraw", 2 )
		local shape_parts, shape_sgm, shape_redraw, shape_new = { }, { }, { }, ""
		local length, angle_, n, N
		for c in Shape:gmatch( "[mlb]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			if c:match( "m" )
				or c:match( "l" )
				or c:match( "b" ) then
				table.insert( shape_parts, c )
			end
		end
		for i = 1, #shape_parts do
			shape_sgm[i] = { }
			for c in shape_parts[i]:gmatch( "%S+" ) do
				table.insert( shape_sgm[i], tonumber( c ) or c )
			end
		end
		for i = 1, #shape_sgm do
			shape_redraw[i] = { }
			if shape_sgm[i][1] == "m" then
				shape_redraw[i] = shape_sgm[i]
			elseif shape_sgm[i][1] == "l" then
				n = #shape_sgm[i - 1]
				length = math.distance( shape_sgm[i - 1][n - 1], shape_sgm[i - 1][n], shape_sgm[i][2], shape_sgm[i][3] )
				angle_ = math.angle( shape_sgm[i - 1][n - 1], shape_sgm[i - 1][n], shape_sgm[i][2], shape_sgm[i][3] )
				N = ceil( length/tract )
				shape_redraw[i][-1] = shape_sgm[i - 1][n - 1]
				shape_redraw[i][0]  = shape_sgm[i - 1][n]
				for k = 1, N do
					local Px = shape_sgm[i - 1][n - 1] + math.polar( angle_, length*k/N, "x" )
					local Py = shape_sgm[i - 1][n - 0] + math.polar( angle_, length*k/N, "y" )
					shape_redraw[i][k] = format( "%s %s", Px, Py )
				end
				table.insert( shape_redraw[i], 1, "l" )
			elseif shape_sgm[i][1] == "b" then
				n = #shape_sgm[i - 1]
				local Bx = { shape_sgm[i - 1][n - 1], shape_sgm[i][2], shape_sgm[i][4], shape_sgm[i][6] }
				local By = { shape_sgm[i - 1][n - 0], shape_sgm[i][3], shape_sgm[i][5], shape_sgm[i][7] }
				length = math.length_bezier( shape_sgm[i - 1][n - 1], shape_sgm[i - 1][n], shape_sgm[i][2]
					, shape_sgm[i][3], shape_sgm[i][4], shape_sgm[i][5], shape_sgm[i][6], shape_sgm[i][7] )
				N = ceil( length/tract )
				for k = 1, N do
					local Px, Py = math.confi_bezier( 4, Bx, By, k/N )
					shape_redraw[i][k] = format( "%s %s", Px, Py )
				end
				table.insert( shape_redraw[i], 1, "l" )
			end
		end
		for i = 1, #shape_redraw do
			for k = 1, #shape_redraw[i] do
				shape_new = shape_new .. shape_redraw[i][k] .. " "
			end
		end
		return shape.ASSDraw3( shape_new )
	end --shape.redraw( shape.circle, 3 )

	function shape.modify( Shape, modify )
		effector.print_error( Shape, "shape", "shape.modify", 1 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		local modify = modify or function( x, y ) return format( "%s %s", x, y ) end
		effector.print_error( modify, "function", "shape.modify", 2 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", modify )
		return shape.ASSDraw3( Shape )
	end --shape.modify( shape.circle, function( x, y ) x = x + w_shape return format( "%s %s", x, y ) end )

	function shape.filter( Shape, Filter )
		--require "Yutils.lua"
		local Filter = Filter or function( x, y ) return x, y end
		effector.print_error( Shape, "shape", "shape.filter", 1 )
		effector.print_error( Filter, "function", "shape.filter", 2 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		Shape = Yutils.shape.filter( Shape, Filter )
		return shape.ASSDraw3( Shape )
	end
	
	function shape.filter2( Shape, Filter, Split )
		--require "Yutils.lua"
		local Split = Split or 2
		local Filter = Filter or function( x, y ) return x, y end
		effector.print_error( Shape, "shape", "shape.filter2", 1 )
		effector.print_error( Filter, "function", "shape.filter2", 2 )
		effector.print_error( Split, "number", "shape.filter2", 3 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		Shape = Yutils.shape.split( Shape, Split )
		Shape = Yutils.shape.flatten( Shape, Split )
		Shape = Yutils.shape.filter( Shape, Filter )
		return shape.ASSDraw3( Shape )
	end
	
	function shape.filter3( Shape, Split, ... )
		--require "Yutils.lua"
		local Split = Split or 2
		effector.print_error( Shape, "shape", "shape.filter3", 1 )
		effector.print_error( Split, "number", "shape.filter3", 2 )
		local Shape = shape.ASSDraw3( Shape )
		local filters
		if type( ... ) == "table" then
			filters = ...
		else
			filters = { ... }
		end
		if #filters == 0 then
			filters[1] = function( x, y ) return x, y end
		end
		shape.info( Shape )
		Shape = Yutils.shape.split( Shape, Split )
		Shape = Yutils.shape.flatten( Shape, Split )
		for i = 1, #filters do
			if type( filters[i] ) ~= "function" then
				filters[i] = function( x, y ) return x, y end
			end
			Shape = Yutils.shape.filter( Shape,
				function( x, y )
					Do = math.distance( x, y )
					Dc = math.distance( x, y, c_shape, m_shape )
					Ao = math.angle( x, y )
					Ac = math.angle( x, y, c_shape, m_shape )
					Mx = (y - miny ) / h_shape
					My = (x - minx ) / w_shape
					return filters[i]( x, y )
				end
			)
			shape.info( Shape )
		end
		return shape.ASSDraw3( Shape )
	end
	
	function shape.length( Shape, parts )
		effector.print_error( Shape, "shape", "shape.length", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local shape_parts, shape_segments, shape_length = { }, { }, 0
		for c in Shape:gmatch( "%S+" ) do
			table.insert( shape_parts, c )
		end
		for k = 1, #shape_parts do
			local segments, n = { }, 0
			if shape_parts[k] == "l"
				or shape_parts[k] == "b" then
				n = ( shape_parts[k] == "l" ) and 5 or 9
				for i = 1, n do
					segments[i] = tonumber( shape_parts[k - 3 + i] )
				end
				table.remove( segments, 3 )
				table.insert( shape_segments, segments )
			end
		end
		if parts then
			return shape_segments
		end
		for i = 1, #shape_segments do
			shape_length = shape_length + math.length_bezier( shape_segments[i] )
		end
		return shape_length
	end
	
	function shape.width( Shape, Height )
		effector.print_error( Shape, "shape", "shape.width", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local shape_parts, shape_px, shape_py = { }, { }, { }
		for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
			table.insert( shape_parts, c )
		end
		for i = 1, #shape_parts/2 do
			shape_px[i] = tonumber( shape_parts[2*i - 1] )
			shape_py[i] = tonumber( shape_parts[2*i - 0] )
		end
		local shape_px2 = table.duplicate( shape_px )
		local shape_py2 = table.duplicate( shape_py )
		table.sort( shape_px2, function( x1, x2 ) return x1 < x2 end )
		table.sort( shape_py2, function( y1, y2 ) return y1 < y2 end )
		local shape_width  = shape_px2[#shape_px2] - shape_px2[1]
		local shape_height = shape_py2[#shape_py2] - shape_py2[1]
		if Height == "height" then
			return shape_height
		end
		return shape_width
	end
	
	function shape.height( Shape )
		effector.print_error( Shape, "shape", "shape.height", 1 )
		return shape.width( Shape, "height" )
	end
	
	function shape.from_clip( )
		local Shape = ""
		fxgroup = nil
		lines_comment = false
		if linefx[ii].text:match( "\\i?clip%b()" ) then
			fxgroup = true
			lines_comment = false
			Shape = linefx[ii].text:match( "\\i?clip%b()" )
			return format( "{\\an7\\pos(0,0)\\p1}%s", shape.ASSDraw3( Shape ) )
		end
	end

	function shape.rotate( Shape, Angle, org_x, org_y )
		effector.print_error( Shape, "shape", "shape.rotate", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Ang = Angle or 0
		local cx = org_x or 0
		local cy = org_y or 0
		effector.print_error( Ang, "number", "shape.rotate", 2 )
		effector.print_error( cx, "numberstring", "shape.rotate", 3 )
		effector.print_error( cy, "number", "shape.rotate", 4 )
		if cx == "center" then
			shape.info( Shape )
			cx = minx + w_shape/2
			cy = miny + h_shape/2
		end
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
			function( x, y )
				local new_ang = math.angle( cx, cy, x, y )
				local new_rad = math.distance( cx, cy, x, y )
				x = cx + math.polar( new_ang + Ang, new_rad, "x" )
				y = cy + math.polar( new_ang + Ang, new_rad, "y" )
				return format( "%s %s", x, y )
			end
		)
		return shape.ASSDraw3( Shape )
	end
	
	function shape.reflect( Shape, Axis, Relative )
		effector.print_error( Shape, "shape", "shape.reflect", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Reltv = Relative or 0
		effector.print_error( Reltv, "number", "shape.reflect", 3 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
			function( x, y )
				if Axis == "x" then
					y = Reltv - y
				elseif Axis == "y" then
					x = Reltv - x
				else
					x = Reltv - x
					y = Reltv - y
				end
				return format( "%s %s", x, y )
			end
		)
		return shape.ASSDraw3( Shape )
	end
	
	function shape.oblique( Shape, Pixel, Axis )
		effector.print_error( Shape, "shape", "shape.oblique", 1 )
		effector.print_error( Pixel, "numbertable", "shape.oblique", 2 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		local pxl1, pxl2 = 0, 0
		if type( Pixel ) == "table" then
			pxl1 = Pixel[1]
			pxl2 = Pixel[2] or 0
		else
			pxl1 = Pixel
		end
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
			function( x, y )
				if Axis == "x" then
					x = math.round( x + pxl1*(y - miny)/h_shape )
				elseif Axis == "y" then
					y = math.round( y + pxl1*(x - minx)/w_shape )
				else
					x = math.round( x + pxl1*(y - miny)/h_shape )
					y = math.round( y + pxl2*(x - minx)/w_shape )
				end
				return format( "%s %s", x, y )
			end
		)
		return shape.ASSDraw3( Shape )
	end

	function shape.to_bezier( Shape )
		effector.print_error( Shape, "shape", "shape.to_bezier", 1 )
		local Shape = shape.ASSDraw3( Shape )
		for i = 1, 2 do
			Shape = Shape:gsub( "(%-?%d+[%.%d]* %-?%d+[%.%d]* l %-?%d+[%.%d]* %-?%d+[%.%d]*)",
				function( seg_line )
					local coor = { }
					for c in seg_line:gmatch( "%-?%d+[%.%d]*" ) do
						table.insert( coor, c )
					end
					local x1, y1, x4, y4 = coor[1], coor[2], coor[3], coor[4]
					local Ang = math.angle( x1, y1, x4, y4 )
					local Rad = math.distance( x1, y1, x4, y4 )
					local x2, x3 = x1 + math.polar( Ang, (1/3)*Rad, "x" ), x1 + math.polar( Ang, (2/3)*Rad, "x" )
					local y2, y3 = y1 + math.polar( Ang, (1/3)*Rad, "y" ), y1 + math.polar( Ang, (2/3)*Rad, "y" )
					return format( "%s %s b %s %s %s %s %s %s", x1, y1, x2, y2, x3, y3, x4, y4 )
				end
			)
		end
		return shape.ASSDraw3(Shape)
	end --shape.to_bezier( shape.rectangle )
	
	function shape.reverse( Shape )
		effector.print_error( Shape, "shape", "shape.reverse", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local shape1, shape2, shape3, index, shape_x, shape_y, shape_inv = { }, { }, { }, { }, { }, { }, ""
		for c in Shape:gmatch( "%S+" ) do
			table.insert( shape1, c )
			table.insert( shape2, c )
		end
		shape1, shape2 = table.reverse( shape1 ), table.reverse( shape2 )
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.insert( index, k )
			end
		end
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.remove( shape1, k )
			end
		end
		for k = 1, #shape1/2 do
			shape_x[k] = tonumber( shape1[2*k - 0] )
			shape_y[k] = tonumber( shape1[2*k - 1] )
		end
		for k = 1, #shape1 do
			if k%2 == 1 then
				shape3[k] = shape_x[(k + 1)/2]
			else
				shape3[k] = shape_y[(k + 0)/2]
			end
		end
		for k = 1, #index do
			if shape2[index[k]] ~= "b" then
				table.insert( shape3, index[k], shape2[index[k]] )
			else
				table.insert( shape3, index[k] - 4, shape2[index[k]] )
			end
		end
		for k = 1, #shape3 do
			shape_inv = shape_inv .. shape3[k] .. " "
		end
		shape_inv = shape_inv:sub( 1, -3 )
		shape_inv = "m " .. shape_inv
		return shape.ASSDraw3( shape_inv )
	end

	function shape.origin( Shape )
		effector.print_error( Shape, "shape", "shape.origin", 1 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		Shape = shape.displace( Shape, -minx, -miny )
		return shape.ASSDraw3( Shape )
	end
	
	function shape.displace( Shape, Dx, Dy )
		effector.print_error( Shape, "shape", "shape.displace", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Dx = Dx or 0
		local Dy = Dy or 0
		effector.print_error( Dx, "number", "shape.displace", 2 )
		effector.print_error( Dy, "number", "shape.displace", 3 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
			function( x, y )
				return format( "%s %s", x + Dx, y + Dy )
			end
		)
		return shape.ASSDraw3( Shape )
	end --shape.displace( shape.circle, 20, 10 )
	
	function shape.incenter( Shape )
		effector.print_error( Shape, "shape", "shape.incenter", 1 )
		local Shape = shape.origin( Shape )
		Shape = shape.displace( Shape, -shape.width( Shape )/2, -shape.height( Shape )/2)
		return shape.ASSDraw3( Shape )
	end
	
	function shape.centerpos( Shape, CenterX, CenterY )
		effector.print_error( Shape, "shape", "shape.centerpos", 1 )
		local CenterX = CenterX or 0
		local CenterY = CenterY or 0
		effector.print_error( CenterX, "number", "shape.centerpos", 2 )
		effector.print_error( CenterY, "number", "shape.centerpos", 3 )
		local Shape = shape.displace( shape.incenter( Shape ), CenterX, CenterY )
		return shape.ASSDraw3( Shape )
	end
	
	function shape.firstpos( Shape, pos_x, pos_y )
		effector.print_error( Shape, "shape", "shape.firstpos", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local first_x = pos_x or 0
		local first_y = pos_y or 0
		effector.print_error( first_x, "number", "shape.firstpos", 2 )
		effector.print_error( first_y, "number", "shape.firstpos", 3 )
		local first_p = { }
		if Shape:match( "m %-?%d+[%.%d]* %-?%d+[%.%d]* " ) then
			first_p.x = Shape:match( "m (%-?%d+[%.%d]*) %-?%d+[%.%d]* " )
			first_p.y = Shape:match( "m %-?%d+[%.%d]* (%-?%d+[%.%d]*) " )
		end
		Shape = shape.displace( Shape, first_x - first_p.x, first_y - first_p.y )
		return shape.ASSDraw3( Shape )
	end
	
	function shape.ratio( Shape, Ratiox, Ratioy )
		effector.print_error( Shape, "shape", "shape.ratio", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Rx, Ry
		if Ratiox then
			Rx = Ratiox
			if type( Ratiox ) == "table" then
				Rx = Ratiox[1] / shape.width( Shape )
			end
		else
			Rx = 1
		end
		if Ratioy then
			Ry = Ratioy
			if type( Ratioy ) == "table" then
				Ry = Ratioy[1] / shape.height( Shape )
				if Ratiox == nil then
					Rx = Ry
				end
			end
		else
			Ry = Rx
		end
		effector.print_error( Rx, "numbertable", "shape.ratio", 2 )
		effector.print_error( Ry, "numbertable", "shape.ratio", 3 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)", 
			function( x, y )
				return format( "%s %s", x*Rx, y*Ry )
			end
		)
		return shape.ASSDraw3( Shape )
	end
	
	function shape.size( Shape, SizeX, SizeY ) --actualizada 23-12-14
		effector.print_error( Shape, "shape", "shape.size", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Szx = SizeX or shape.width( Shape )
		local Szy = SizeY or Szx
		if type( Szx ) == "table" then
			Szx = shape.width( Shape ) + Szx[1]
		end
		if type( Szy ) == "table" then
			Szy = shape.height( Shape ) + Szy[1]
		end
		effector.print_error( Szx, "numbertable", "shape.size", 2 )
		effector.print_error( Szy, "numbertable", "shape.size", 3 )
		Shape = shape.ratio( Shape, Szx/shape.width( Shape ), Szy/shape.height( Shape ) )
		return shape.ASSDraw3( Shape )
	end --shape.size( shape.rectangle, 120, 45 )

	function shape.array( Shape, loops, Angle_or_mode, Dxy )
		shape.array2 = function( Shp2, loops2, A_or_m, Dxy2, Sh_center )
			local loop1, loop2, loop_m, i, Angle_, Rotation = 1, 1, 1, 0, 0, 0
			if type( loops2 ) == "table" then
				loop1 = loops2[1]
				loop2 = loops2[2]
			else
				loop1 = loops2
				loop2 = 1
			end
			loop_m = loop1*loop2
			if type( A_or_m ) == "table" then
				Angle_ = A_or_m[1]
				Rotation = A_or_m[2] or 0
			elseif type( A_or_m ) == "number" then
				Angle_ = A_or_m
				Rotation = 0
			else
				Angle_ = 0
				Rotation = 0
			end
			local Shp2, S_mtz, ref = shape.origin( shape.rotate( Shp2, Rotation ) ), "", 0
			if Angle_%360 > 90
				and Angle_%360 < 180 then
				Angle_ = 90 - Angle_%90
				ref = 1
			elseif Angle_%360 > 180
				and Angle_%360 < 270 then
				Angle_ = Angle_%180
				ref = 0
			elseif Angle_%360 > 270
				and Angle_%360 < 360 then
				Angle_ = 360 - Angle_%360
				ref = 1
			end
			shape.info( Shp2 )
			local S_w, S_h = w_shape, h_shape
			local A_mid, D_min, Dox, Doy = math.angle( 0, 0, S_w, -S_h ), S_w, 0, 0
			local r_in, r_fn, Arc, radio_off = S_w, S_w, 360, D_min
			if Angle_ == 0 then
				D_min = S_w
			elseif Angle_ == 90 then
				D_min = S_h
			elseif Angle_ <= A_mid then
				D_min = abs( S_w/cos( rad( Angle_ ) ) )
			else
				D_min = abs( S_h/sin( rad( Angle_ ) ) )
			end
			if Dxy2 == nil then
				Dox = 0
				Doy = 0
			elseif type( Dxy2 ) == "table" then
				Dox = Dxy2[1]
				Doy = Dxy2[2]
			else
				Dox = Dxy2
				Doy = 0
			end
			while i < loop_m do
				if A_or_m == "radial" then
					if loop2 == 1 then
						if type( Dxy2 ) == "table" then
							r_in = Dxy2[1]
							r_fn = Dxy2[2]
							Arc  = Dxy2[3] or 360
						else
							r_in = Dxy2 or S_w
							r_fn = r_in
							Arc  = 360
						end
						if loop_m == 1 then
							radio_array = r_in
						else
							radio_array = r_in + (r_fn - r_in)*i/(loop_m - 1)
						end
						if loop_m > 1 and Arc%360 ~= 0 then
							Arc = i*Arc/(loop1 - 1)
						else
							Arc = i*Arc/loop1
						end
						S_mtz = S_mtz .. shape.rotate( shape.displace( Shp2, radio_array, -S_h/2 ), Arc )
					else
						if type( Dxy2 ) == "table" then
							r_in = Dxy2[1]
							radio_off = D_min + Dxy2[2]
						else
							r_in = Dxy2 or S_w
							radio_off = D_min
						end
						S_mtz = S_mtz .. shape.rotate( shape.displace( Shp2, r_in + radio_off*floor( i/loop1 ), -S_h/2 ), 360*i*loop2/loop_m )
					end
				elseif A_or_m == "array" then
					S_mtz = S_mtz .. shape.displace( Shp2, (S_w + Dox)*(i%loop1), (S_h + Doy)*floor( i/loop1 ) )
				else
					S_mtz = S_mtz .. shape.displace( Shp2, math.polar( Angle_, (D_min + Dox)*i, "x" ), math.polar( Angle_, (D_min + Dox)*i, "y" ) )
				end
				i = i + 1
			end
			if ref == 1 then
				S_mtz = shape.reflect( S_mtz, "y" )
			end
			if Sh_center then
				return S_mtz
			end
			return shape.origin( S_mtz )
		end
		effector.print_error( Shape, "stringtable", "shape.array", 1 )
		effector.print_error( loops, "numbertable", "shape.array", 2 )
		effector.print_error( Angle_or_mode, "numberstring", "shape.array", 3 )
		if Dxy then
			effector.print_error( Dxy, "numbertable", "shape.array", 4 )
		end
		local S_rad, S_arr, S_mod, Dis1, Dis2 = "", "", "", 0, 0
		if type( Shape ) == "table" then
			if type( Dxy ) == "table" then
				Dis1 = Dxy[1]
				Dis2 = Dxy[2] or 0
			else
				Dis1 = Dxy
				Dis2 = 0
			end
			Shape[0] = shape.origin( Shape[#Shape] )
			if type( loops ) == "table"
				and loops[2] then
				if Angle_or_mode == "radial" then
					for k = 1, loops[2] do
						Shape[(k - 1)%#Shape + 1] = shape.origin( Shape[(k - 1)%#Shape + 1] )
						Dis1 = Dis1 + ( (k > 1) and shape.width( Shape[(k - 1)%#Shape] ) or 0 )
						S_mod = shape.array2( Shape[(k - 1)%#Shape + 1], loops[1], "radial", Dis1 + (k - 1)*Dis2, "incenter" )
						S_rad = S_rad .. S_mod
					end
					return shape.origin( S_rad )
				elseif Angle_or_mode == "array" then
					for k = 1, loops[2] do
						Shape[(k - 1)%#Shape + 1] = shape.origin( Shape[(k - 1)%#Shape + 1] )
						S_mod = shape.array2( Shape[(k - 1)%#Shape + 1], loops[1], "array", Dis1 )
						S_arr = S_arr .. shape.displace( S_mod, -shape.width( S_mod )/2, 0 )
						S_arr = shape.displace( S_arr, 0, -shape.height( Shape[(k - 1)%#Shape + 1] ) - Dis2 )
					end
					return shape.origin( S_arr )
				end
				return shape.array2( Shape[1], loops[1], Angle_or_mode, Dxy )
			elseif Angle_or_mode == "radial" then
				for k = 1, #Shape do
					S_mod = shape.array2( Shape[k], loops, "radial", Dis1, "incenter" )
					S_arr = S_arr .. shape.rotate( S_mod, (k - 1)*(360/loops)/#Shape )
				end
				return shape.origin( S_arr )
			end
			return shape.array2( Shape[1], loops, Angle_or_mode, Dxy )
		end
		return shape.array2( Shape, loops, Angle_or_mode, Dxy )
	end
	
	function shape.config( Shape, Rtrn, Ratio )
		effector.print_error( Shape, "shape", "shape.config", 1 )
		effector.print_error( Rtrn, "string", "shape.config", 2 )
		if Ratio then
			effector.print_error( Ratio, "number", "shape.config", 3 )
		end
		local Shape7 = shape.displace( shape.ratio( shape.ASSDraw3( Shape ), Ratio ), fx.move_x1, fx.move_y1 )
		Shape7 = Shape7:gsub( "m", "l" )
		Shape7 = Shape7:gsub( "l", "m", 1 )
		local shape1, shape2, shape3, index, shape_x, shape_y, shape_FX = { }, { }, { }, { }, { }, { }, ""
		local segments, length_segments, segments_x, segments_y, length_shape = { }, { }, { }, { }, 0
		for c_conf in Shape7:gmatch( "%S+" ) do
			table.insert( shape1, c_conf )
			table.insert( shape2, c_conf )
		end
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.insert( index, k )
			end
		end
		for k = 1, #shape1 do
			if shape1[k] == "m"
				or shape1[k] == "l"
				or shape1[k] == "b" then
				table.remove( shape1, k )
			end
		end
		for k = 1, #shape1/2 do
			shape_x[k] = tonumber( shape1[2*k - 1] )
			shape_y[k] = tonumber( shape1[2*k - 0] )
		end
		if Rtrn == "loop" then
			return #index - 1
		end
		local shape_x2 = table.duplicate( shape_x )
		local shape_y2 = table.duplicate( shape_y )
		table.sort( shape_x2, function( x1, x2 ) return x1 < x2 end )
		table.sort( shape_y2, function( y1, y2 ) return y1 < y2 end )
		local shape_minx, shape_maxx = shape_x2[1], shape_x2[#shape_x2]
		local shape_miny, shape_maxy = shape_y2[1], shape_y2[#shape_y2]
		local shape_width  = shape_maxx - shape_minx
		local shape_height = shape_maxy - shape_miny
		if Rtrn == "minx" then
			return shape_minx - math.round( fx.move_x1 )
		end
		if Rtrn == "maxx" then
			return shape_maxx - math.round( fx.move_x1 )
		end
		if Rtrn == "miny" then
			return shape_miny - math.round( fx.move_y1 )
		end
		if Rtrn == "maxy" then
			return shape_maxy - math.round( fx.move_y1 )
		end
		if Rtrn == "width" then
			return shape_width
		end
		if Rtrn == "height" then
			return shape_height
		end
		local n
		for k = 1, #index do
			segments[k] = { }
			n = index[k]
			if shape2[n] == "l" then
				for i = 1, 5 do
					segments[k][i] = tonumber( shape2[n - 3 + i] )
				end
				table.remove(segments[k], 3)
			elseif shape2[n] == "b" then
				for i = 1, 9 do
					segments[k][i] = tonumber( shape2[n - 3 + i] )
				end
				table.remove( segments[k], 3 )
			end
			if #segments[k] == 0 then
				segments[k] = ""
			end
		end
		local Ind = ceil( j/fx.loop_h )
		for k = 1, #segments do
			if segments[k] == "" then
				table.retire( segments, segments[k] )
			end
		end
		for k = 1, #segments do
			length_segments[k] = math.length_bezier( segments[k] )
		end
		for k = 1, #segments do
			length_shape = length_shape + length_segments[k]
		end
		if length_shape == 0 then
			length_shape = 1
		end
		for k = 1, #segments do
			segments_x[k] = { }
			segments_y[k] = { }
			for i = 1, #segments[k]/2 do
				segments_x[k][i] = segments[k][2*i - 1]
				segments_y[k][i] = segments[k][2*i - 0]
			end
		end
		if Rtrn == "x" then
			return unpack( segments_x[Ind] )
		end
		if Rtrn == "y" then
			return unpack( segments_y[Ind] )
		end
		if Rtrn == "length" then
			return length_shape
		end
		if Rtrn == "segments" then
			return table.op( segments, "add", { -math.round( fx.move_x1 ), -math.round( fx.move_y1 ) } )
		end
		local dur_relative, times, move_times = { }, { }, { }
		if j == 1 then
			times = remember( "Tms", { [0] = 0 } )
			for k = 1, #segments do
				dur_relative[k] = math.round( fx.dur*(length_segments[k]/length_shape), 2 )
			end
			for k = 1, #segments do
				times[k] = times[k - 1] + dur_relative[k]
			end
		else
			times = recall.Tms
		end
		for k = 1, #segments do
			move_times[k] = { }
			move_times[k][1] = times[k - 1]
			move_times[k][2] = times[k - 0]
		end
		if Rtrn == "time" then
			return times
		end
		if Rtrn == "t" then
			return unpack( move_times[Ind] )
		end
		if Rtrn == "tag" then
			return format( "%s\\t(%s,%s,%s)\\t(%s,%s,%s)", text.alpha0, times[Ind-1], times[Ind-1] + 1, text.alpha,
			times[Ind], times[Ind] + 1, text.alpha0 )
		end
		if Rtrn == "tag2" then
			return format( "\\fscy0\\t(%s,%s,\\fscy%s)\\t(%s,%s,\\fscy0)", times[Ind-1], times[Ind-1] + 1, fx.sizey, times[Ind], times[Ind] + 1 )
		end
		if Rtrn == "move" then
			maxloop( (#index - 1)*fx.loop_h )
			if #segments[Ind] == 4 then
				return format( "\\move(%s,%s,%s,%s,%s,%s)%s\\t(%s,%s,%s)\\t(%s,%s,%s)",
				segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4], times[Ind-1], times[Ind], text.alpha0,
				times[Ind-1], times[Ind-1] + 1, text.alpha, times[Ind], times[Ind] + 1, text.alpha0 )
			end
			return format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)%s\\t(%s,%s,%s)\\t(%s,%s,%s)",
			segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4],
			segments[Ind][5], segments[Ind][6], segments[Ind][7], segments[Ind][8], times[Ind-1], times[Ind],
			text.alpha0, times[Ind-1], times[Ind-1] + 1, text.alpha, times[Ind], times[Ind] + 1, text.alpha0 )
		elseif Rtrn == "move2" then
			maxloop( (#index - 1)*fx.loop_h )
			if #segments[Ind] == 4 then
				return format( "\\move(%s,%s,%s,%s,%s,%s)\\fscy0\\t(%s,%s,\\fscy%s)\\t(%s,%s,\\fscy0)",
				segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4], times[Ind-1], times[Ind],
				times[Ind-1], times[Ind-1] + 1, fx.sizey, times[Ind], times[Ind] + 1 )
			end
			return format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)\\fscy0\\t(%s,%s,\\fscy%s)\\t(%s,%s,\\fscy0)",
			segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4],
			segments[Ind][5], segments[Ind][6], segments[Ind][7], segments[Ind][8], times[Ind-1], times[Ind],
			times[Ind-1], times[Ind-1] + 1, fx.sizey, times[Ind], times[Ind] + 1 )
		elseif Rtrn == "move3" then
			maxloop( (#index - 1)*fx.loop_h )
			retime( "fxpretime", times[Ind-1], times[Ind] )
			if #segments[Ind] == 4 then
				return format( "\\move(%s,%s,%s,%s)", segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4] )
			end
			return format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s)",
			segments[Ind][1], segments[Ind][2], segments[Ind][3], segments[Ind][4],
			segments[Ind][5], segments[Ind][6], segments[Ind][7], segments[Ind][8] )
		end
	end

	function shape.Lmove( x1, y1, x2, y2, t1, t2, Accel ) -- Shape Lineal Move
		local Lcoor, time1, time2, accel = { }, 0, 1, 1
		local posx1, posx2, posy1, posy2 = 0, 0, 0, 0
		if type( x1 ) == "table" then
			Lcoor = x1
			time1 = math.round( y1 or fx.movet_i, 2 )
			time2 = math.round( x2 or fx.movet_f, 2 )
			accel = math.round( y2 or 1, 3 )
		else
			posx1 = x1 or fx.move_x1
			posy1 = y1 or fx.move_y1
			posx2 = x2 or fx.move_x2
			posy2 = y2 or fx.move_y2
			table.insert( Lcoor, posx1 )
			table.insert( Lcoor, posy1 )
			table.insert( Lcoor, posx2 )
			table.insert( Lcoor, posy2 )
			time1 = math.round( t1 or fx.movet_i, 2 )
			time2 = math.round( t2 or fx.movet_f, 2 )
			accel = math.round( Accel or 1, 3 )
		end
		effector.print_error( posx1, "number", "shape.Lmove", 1 )
		effector.print_error( posy1, "number", "shape.Lmove", 2 )
		effector.print_error( posx2, "number", "shape.Lmove", 3 )
		effector.print_error( posy2, "number", "shape.Lmove", 4 )
		effector.print_error( time1, "number", "shape.Lmove", 5 )
		effector.print_error( time2, "number", "shape.Lmove", 6 )
		effector.print_error( accel, "number", "shape.Lmove", 7 )
		local coorx, coory, segms, fscxy, sizex, sizey, times = { }, { }, { }, { }, { }, { }, { [0] = 0 }
		for i = 1, #Lcoor/2 do
			coorx[i] = Lcoor[2*i - 1] - val_width/2
			coory[i] = Lcoor[2*i] + val_height/2 - l.descent
		end
		coorx, coory = math.round( coorx, 3 ), math.round( coory, 3 )
		for i = 2, #coorx do
			segms[i - 1] = math.distance( coorx[i], coory[i], coorx[i - 1], coory[i - 1] )
		end
		local length = table.op( segms, "sum" )
		table.insert( segms, 1, 0 )
		if length == 0 then
			length = 1
		end
		for i = 1, #segms do
			times[i] = time1 + (time2 - time1)*segms[i]/length + times[i - 1]
		end
		times = math.round( times, 2 )
		local tags1 = format( "\\fscx%s\\fscy%s", coorx[1], coory[1] )
		for i = 2, #coorx do
			tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", times[i - 1], times[i], accel, coorx[i], coory[i] )
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style )
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function(x, y)
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Lmove(100,200,500,600)
	
	function shape.Lmove2( Coor, Times ) -- Shape Lineal Move 2
		effector.print_error( Coor, "table", "shape.Lmove2", 1 )
		effector.print_error( Times, "table", "shape.Lmove2", 2 )
		local coorx, coory = { }, { }
		for i = 1, #Coor/2 do
			coorx[i] = Coor[2*i - 1] - val_width/2
			coory[i] = Coor[2*i - 0] + val_height/2 - l.descent
		end
		local tags1 = format( "\\fscx%s\\fscy%s", coorx[1], coory[1] )
		for i = 2, #coorx do
			tags1 = tags1 .. format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)", Times[2*(i - 1) - 1], Times[2*(i - 1)], coorx[i], coory[i] )
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function(x, y)
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Lmove2({-l.width/2, fx.pos_y, fx.pos_x, fx.pos_y, xres + l.width/2, fx.pos_y}, {0, 200, fx.dur - 200, fx.dur})
	
	function shape.Pmove( F_x, F_y, domainF, t1, t2, Accel, offset_t ) -- Shape Parametric Move
		effector.print_error( F_x, "string", "shape.Pmove", 1 )
		effector.print_error( F_y, "string", "shape.Pmove", 2 )
		effector.print_error( domainF, "numbertable", "shape.Pmove", 3 )
		local offset_t = offset_t or 0
		local accel = Accel or 1
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		local dur_t = time2 - time1
		local tgdur
		effector.print_error( time1, "number", "shape.Pmove", 4 )
		effector.print_error( time2, "number", "shape.Pmove", 5 )
		effector.print_error( accel, "number", "shape.Pmove", 6 )
		effector.print_error( offset_t, "numbertable", "shape.Pmove", 7 )
		if type( offset_t ) == "table" then
			tgdur = math.round( offset_t[1], 2)
		else
			tgdur = math.round( 2.4*frame_dur + offset_t, 2 )
		end
		tgdur = abs( tgdur )
		local n, i, domain = ceil( dur_t/tgdur ), 0, { }
		if type( domainF ) == "number" then
			domain = { 0, domainF }
		else
			domain = { domainF[1], domainF[2] }
		end
		--local posx = math.round( fx.pos_x - val_width/2 + math.format( F_x, domain[1] ), 3 )
		--local posy = math.round( fx.pos_y + val_height/2 - l.descent - math.format( F_y, domain[1] ), 3 )
		local posx = math.round( fx.move_x1 - val_width/2 + math.format( F_x, domain[1] ), 3 )
		local posy = math.round( fx.move_y1 + val_height/2 - l.descent - math.format( F_y, domain[1] ), 3 )
		local tags = format( "\\fscx%s\\fscy%s", posx, posy )
		while dur_t > 0 do
			tags = tags .. format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)", time1 + tgdur*i, time1 + tgdur*(i + 1), 
			math.round( posx + math.format( F_x, domain[1] + (domain[2] - domain[1])*((i + 1)/n)^accel ) - math.format( F_x, domain[1] ), 3 ),
			math.round( posy - math.format( F_y, domain[1] + (domain[2] - domain[1])*((i + 1)/n)^accel ) + math.format( F_y, domain[1] ), 3 ) )
			i = i + 1
			dur_t = dur_t - tgdur
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags, tags_style )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Pmove("100*cos(%s)", "100*sin(%s)", {0, 2*pi})

	function shape.Smove( Shape, t1, t2, offset_t, Relative ) -- Shape Shape Move
		effector.print_error( Shape, "stringtable", "shape.Smove", 1 )
		local offset_t = offset_t or 0
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		effector.print_error( time1, "number", "shape.Smove", 2 )
		effector.print_error( time2, "number", "shape.Smove", 3 )
		effector.print_error( offset_t, "numbertable", "shape.Smove", 4 )
		local dur_t, segms = time2 - time1, { }
		if type( Shape ) == "table" then
			if #Shape == 4 then
				Shape = format( "m %s %s l %s %s ", Shape[1], Shape[2], Shape[3], Shape[4] )
			elseif #Shape == 6 then
				Shape = format( "m %s %s b %s %s %s %s %s %s ", Shape[1], Shape[2], Shape[3], 
				Shape[4], Shape[3], Shape[4], Shape[5], Shape[6] )
			elseif #Shape == 8 then
				Shape = format( "m %s %s b %s %s %s %s %s %s ", Shape[1], Shape[2], Shape[3], 
				Shape[4], Shape[5], Shape[6], Shape[7], Shape[8] )
			end
		end
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		local Shape2
		Shape2 = shape.displace( Shape, -shape_x[1], -shape_y[1] )
		if Relative then
			Shape2 = Shape
		end
		for i = 1, #shape.config( Shape2, "segments" ) do
			segms[i] = shape.config( Shape2, "segments" )[i]
			segms[i] = math.round( segms[i] )
		end
		local length, times = shape.length( Shape2 ), { [0] = 0 }
		--local posx, posy = math.round( fx.pos_x - val_width/2, 3 ), math.round( fx.pos_y + val_height/2 - l.descent, 3 )
		local posx, posy = math.round( fx.move_x1 - val_width/2, 3 ), math.round( fx.move_y1 + val_height/2 - l.descent, 3 )
		local tags = format( "\\fscx%s\\fscy%s", posx, posy )
		for i = 1, #segms do
			times[i] = dur_t*math.length_bezier( segms[i] )/length + times[i - 1]
		end
		times = math.round( table.op( times, "add", time1 ), 2 )
		times[0] = time1
		function Pmove2( Segment, T1, T2 )
			local coorx, coory, timei, timef = { }, { }, 0, 1
			for i = 1, #Segment/2 do
				table.insert( coorx, Segment[2*i - 1] )
				table.insert( coory, -Segment[2*i] )
			end
			local f_x2 = format( "%s*(1-%%s)^3 + %s*(3*%%s)*(1-%%s)^2 + %s*(3*%%s^2)*(1-%%s) + %s*%%s^3", unpack( coorx ) )
			local f_y2 = format( "%s*(1-%%s)^3 + %s*(3*%%s)*(1-%%s)^2 + %s*(3*%%s^2)*(1-%%s) + %s*%%s^3", unpack( coory ) )
			local Dur_t = T2 - T1
			local Tgdur
			if type( offset_t ) == "table" then
				Tgdur = math.round( offset_t[1], 2 )
			else
				Tgdur = math.round( 2*frame_dur + offset_t, 2 )
			end
			Tgdur = abs( Tgdur )
			local n, i, tagBz = ceil( Dur_t/Tgdur ), 0, ""
			local Posx = fx.move_x1 - val_width/2 + math.format( f_x2, 0 )
			local Posy = fx.move_y1 + val_height/2 - l.descent - math.format( f_y2, 0 )
			while Dur_t > 0 do
				timei = T1 + Tgdur*i
				timef = ( (Tgdur*(i + 1) > Dur_t) and T2 or T1 + Tgdur*(i + 1) )
				tagBz = tagBz .. format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)", timei, timef, 
				math.round( Posx + math.format( f_x2, (i + 1)/n ) - math.format( f_x2, 0 ), 3 ),
				math.round( Posy - math.format( f_y2, (i + 1)/n ) + math.format( f_y2, 0 ), 3 ) )
				i = i + 1
				Dur_t = Dur_t - Tgdur
			end
			return tag.adjust( tagBz )
		end
		function Lmove2( Segment, T1, T2)
			local sizeX = math.round( fx.pos_x - val_width/2 + Segment[3], 3 )
			local sizeY = math.round( fx.pos_y + val_height/2 - l.descent + Segment[4], 3 )
			local tagsL = format( "\\t(%s,%s,1,\\fscx%s\\fscy%s)", T1, T2, sizeX, sizeY )
			return tagsL
		end
		for k = 1, #segms do
			if #segms[k] == 8 then
				tags = tags .. Pmove2( segms[k], times[k-1], times[k] )
			else
				tags = tags .. Lmove2( segms[k], times[k-1], times[k] )
			end
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags, tags_style )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Smove( shape.trebol )
	
	function shape.Rmove( Rx, Ry, t1, t2, Accel, offset_t, Counter2 ) -- Shape Random Move
		local offset_t = offset_t or 0
		local accel = Accel or 1
		local time2 = t2 or fx.movet_f
		local time1 = t1 or fx.movet_i
		local dur_t = time2 - time1
		local Rx = Rx or val_height
		local Ry = Ry or Rx
		local tgdur
		effector.print_error( Rx, "numbershapetable", "shape.Rmove", 1 )
		effector.print_error( Ry, "numbershapetable", "shape.Rmove", 2 )
		effector.print_error( time1, "number", "shape.Rmove", 3 )
		effector.print_error( time2, "number", "shape.Rmove", 4 )
		effector.print_error( accel, "numberstring", "shape.Rmove", 5 )
		effector.print_error( offset_t, "numbertable", "shape.Rmove", 6 )
		local line = linefx[ii]
		local func_accel = loadstring( format( "return function( meta, line, i ) return %s end", accel ) )( )
		if type( offset_t ) == "table" then
			tgdur = math.round( offset_t[1], 2 )
		else
			tgdur = math.round( 3.6*frame_dur + offset_t, 2 )
		end
		tgdur = abs( tgdur )
		local posx = math.round( fx.move_x1 - val_width/2, 2 )
		local posy = math.round( fx.move_y1 + val_height/2 - l.descent, 2 )
		local tags1, randx, randy, i = format( "\\fscx%s\\fscy%s", posx, posy ), 0, 0, 0
		local tm1, tm2, pdx, pdy
		if type( Rx ) == "string" then
			local coor, coor_x, coor_y = { }, { }, { }
			for num in Rx:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor, tonumber( num ) )
			end
			for i = 1, #coor/2 do
				coor_x[i] = coor[2*i - 1]
				coor_y[i] = coor[2*i - 0]
			end
			while dur_t > 0 do
				randx = coor_x[(i + 1)%#coor_x + 1]
				randy = coor_y[(i + 1)%#coor_y + 1]
				if dur_t - tgdur <= 0 then
					randx = 0
					randy = 0
				end
				tm1 = time1 + tgdur*(i + 0)
				tm2 = time1 + tgdur*(i + 1)
				pdx = posx + randx
				pdy = posy + randy
				accel = math.round( func_accel( meta, line, i ), 3 )
				tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", tm1, tm2, accel, pdx, pdy )
				i = i + 1
				dur_t = dur_t - tgdur
			end
		else
			while dur_t > 0 do
				if type( Rx ) == "table" then
					randx = Rrd( Rx[1], Rx[2], 1, i, Counter2 )
				else
					randx = Rrd( -Rx, Rx, 1, i, Counter2 )
				end
				if type( Ry ) == "table" then
					randy = Rrd( Ry[1], Ry[2], 1, -pi*i, Counter2 )
				else
					randy = Rrd( -Ry, Ry, 1, -pi*i, Counter2 )
				end
				if dur_t - tgdur <= 0 then
					randx = 0
					randy = 0
				end
				tm1 = time1 + tgdur*(i + 0)
				tm2 = time1 + tgdur*(i + 1)
				pdx = posx + randx
				pdy = posy + randy
				accel = math.round( func_accel( meta, line, i ), 3 )
				tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", tm1, tm2, accel, pdx, pdy )
				i = i + 1
				dur_t = dur_t - tgdur
			end
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Rmove( 10, 20 )
	
	function shape.Rmove2( Rx, Ry, t, Accel ) -- Shape Random Move
		local time_ini, time_fin, time_tag, time_shk, time_off
		if t == nil then
			time_ini = 0
			time_fin = fx.dur
			time_tag = math.round( 2.8*frame_dur, 2 )
			time_shk = Rrd( 3, 6 ) * time_tag
			time_off = Rrd( 4, 8 ) * time_tag
		else
			time_ini = t[1] or 0
			time_fin = t[2] or fx.dur
			time_tag = t[3] or math.round( 2.8*frame_dur, 2 )
			time_shk = t[4] or Rrd( 3, 6 ) * time_tag
			time_off = t[5] or Rrd( 4, 8 ) * time_tag
		end
		local time_dur = time_fin - time_ini
		local tag_tbl, tag_dur, i = { }, 0, 1
		local tag_tm1, tag_tm2, tag_shk, tag_off
		while time_dur > tag_dur do
			tag_shk = Rrd( 0.75*time_shk, 1.25*time_shk, 1, 4*i )
			tag_off = Rrd( 0.65*time_off, 1.25*time_off, 1, -2*pi*i )
			tag_tm1 = tag_dur + tag.only( i == 1 and Rrd( 1, 2, 1, 2*i ) == 2, 0, tag_off )
			tag_tm2 = tag_tm1 + tag_shk
			tag_tbl[i] = shape.Rmove( Rx, Ry, tag_tm1, tag_tm2, Accel, { time_tag }, i )
			tag_dur = tag_tm2
			i = i + 1
		end
		local tag_fx1 = { }
		for i = 2, #tag_tbl do
			tag_fx1[i - 1] = ""
			for c in tag_tbl[i]:gmatch( "\\t%b()" ) do
				tag_fx1[i - 1] = tag_fx1[i - 1] .. c
			end
		end
		local tag_fx2 = tag_tbl[1]
		local tag_fx3 = table.op( tag_fx1, "concat" )
		local tag_fx4 = tag_fx2:gsub( "\\p1", tag_fx3 .. "\\p1" )
		return tag_fx4
	end --shape.Rmove2( 12, 12 )
	
	function shape.Rmove3( Rx, Ry, t, Accel, offset_t )
		local times = t or { 0, fx.dur }
		effector.print_error( times, "table", "shape.Rmove3", 3 )
		local rmove3_tgfx = ""
		local rmove3_tags = shape.Rmove( Rx, Ry, times[1], times[2], Accel, offset_t )
		local rmove3_tag3 = { }
		local rmove3_tbl3 = { }
		for i = 2, #times/2 do
			rmove3_tbl3[i - 1] = { }
			rmove3_tag3[i - 1] = shape.Rmove( Rx, Ry, times[2*i - 1], times[2*i - 0], Accel, offset_t, i )
			for tr in rmove3_tag3[i - 1]:gmatch( "\\t%(%d+[%.%d]*%,%d+[%.%d]*%,%d+[%.%d]*%,\\fscx%d+[%.%d]*\\fscy%d+[%.%d]*%)" ) do
				table.insert( rmove3_tbl3[i - 1], tr )
			end
			rmove3_tag3[i - 1] = table.op( rmove3_tbl3[i - 1], "concat" )
		end
		rmove3_tag3 = table.op( rmove3_tag3, "concat" )
		rmove3_tgfx = rmove3_tags:gsub( "\\p1", format( "%s\\p1", rmove3_tag3 ) )
		return rmove3_tgfx
	end --shape.Rmove3( nil, nil, { 0, 400, fx.dur - 400, fx.dur } )
	
	function shape.Rmove4( Rx, Ry, t1, t2, Accel, offset_t, move4 )
		local time1 = t1 or fx.movet_i
		local time2 = t2 or fx.movet_f
		local dur_t = time2 - time1
		local move4 = move4 or { 1.5*frame_dur, 25*ratio }
		move4[3] = move4[3] or 1
		effector.print_error( move4, "table", "shape.Rmove4", 7 )
		local tag_r = shape.Rmove( Rx, Ry, time1, time2, Accel, offset_t )
		local tagfx, Dur, i = "\\fscx0\\fscy0", dur_t, 0
		local t, dx, acc
		while Dur > 0 do
			if type( move4[1] ) == "table" then
				t = math.round( Rrd( move4[1][1]*100, move4[1][2]*100, 1, i )/100, 2 )
			else
				t = math.round( move4[1], 2 )
			end
			if type( move4[2] ) == "table" then
				dx = math.round( Rrd( move4[2][1]*100, move4[2][2]*100, 1, 2*i )/100, 2 )
			else
				dx = math.round( move4[2], 2 )
			end
			if type( move4[3] ) == "table" then
				acc = math.round( Rrd( move4[3][1]*100, move4[3][2]*100, 1, -pi*i )/100, 2 )
			else
				acc = math.round( move4[3], 2 )
			end
			if dx < 0 or Dur - t <= 0 then
				dx = 0
			end
			tagfx = tagfx .. format( "\\t(%s,%s,%s,\\fscx%s)", time1 + i*t, time1 + (i + 1)*t, acc, dx*((i + 1)%2) )
			Dur, i = Dur - t, i + 1
		end
		local dx2
		if type( move4[2] ) == "table" then
			dx2 = math.round( abs( (move4[2][2] - move4[2][1])/2 ), 2 )
		else
			dx2 = math.round( move4[2]/2, 2 )
		end
		tag_r = tag_r:gsub( "\\pos%((%-?%d+[%.%d]*)%,(%-?%d+[%.%d]*)%)",
			function( x, y )
				return format( "\\pos(%s,%s)", tonumber( x ) - dx2, y )
			end
		)
		tagfx = tagfx .. "\\p1}m 0 0 m 100 100 {\\p0\\r"
		tagfx = tag_r:gsub( "\\r", "\\r" .. tagfx )
		return tagfx
	end --shape.Rmove4( 20, 20, 0, fx.dur, 1, { 460 }, { 3*frame_dur, { 20, 40 } } )
	
	function shape.Omove( P, t1, t2, Dur, Accel ) -- Shape Oscill Move
		local Ocoor = P
		local time1 = math.round( t1 or fx.movet_i, 2 )
		local time2 = math.round( t2 or fx.movet_f, 2 )
		local DurOM = time2 - time1
		local Durtt = Dur or 2*frame_dur
		local accel = Accel or 1
		if type( Ocoor ) == "string" then
			local Ocoor2 = { }
			for num in Ocoor:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( Ocoor2, tonumber( num ) )
			end
			Ocoor = Ocoor2
		end
		local coorx, coory = { }, { }
		for i = 1, #Ocoor/2 do
			coorx[i] = math.round( Ocoor[2*i - 1], 2 )
			coory[i] = math.round( Ocoor[2*i - 0], 2 )
		end
		local line = linefx[ii]
		local func_accel = loadstring( format( "return function( meta, line, i ) return %s end", accel ) )( )
		local posx = math.round( fx.move_x1 - val_width/2, 2 )
		local posy = math.round( fx.move_y1 + val_height/2 - l.descent, 2 )
		local tags1, i = format( "\\fscx%s\\fscy%s", posx, posy ), 0
		local px, py, t1, t2
		while DurOM > 0 do
			px = coorx[i%#coorx + 1]
			py = coory[i%#coory + 1]
			t1 = math.round( time1 + Durtt*(i + 0), 2 )
			t2 = math.round( time1 + Durtt*(i + 1), 2 )
			if DurOM - Durtt <= 0 then
				px = 0
				py = 0
			end
			accel = math.round( func_accel( meta, line, i ), 3 )
			tags1 = tags1 .. format( "\\t(%s,%s,%s,\\fscx%s\\fscy%s)", t1, t2, accel, posx + px, posy + py )
			i = i + 1
			DurOM = DurOM - Durtt
		end
		local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tags1, tags_style )
		local fscxy, sizex, sizey = { }, { }, { }
		for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
			table.insert( fscxy, tonumber( c ) )
		end
		for i = 1, #fscxy/2 do
			table.insert( sizex, fscxy[2*i - 1] )
			table.insert( sizey, fscxy[2*i - 0] )
		end
		local sizex2 = table.duplicate( sizex )
		local sizey2 = table.duplicate( sizey )
		table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
		table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
		local min_x, min_y = sizex2[1], sizey2[1]
		if min_x >= 0 then
			min_x = 0
		end
		if min_y > 0 and min_y <= val_height then
			min_y = -min_y
		elseif min_y >= 0 then
			min_y = 0
		end
		local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
		tags2 = posxy .. tags2:gsub("(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
			function( x, y )
				fsc_x = x:match( "%-?%d+[%.%d]*" )
				fsc_y = y:match( "%-?%d+[%.%d]*" )
				return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
			end
		)
		return tags2
	end --shape.Omove( { 0, 30, 0, -30 } )
	
	function shape.lineclip( Mode, Dur, Ini )
		if linefx[ii].text:match( "\\i?clip%b()" ) then
			local Shape = shape.ASSDraw3( linefx[ii].text:match( "\\i?clip%b()" ) )
			Shape = shape.firstpos( Shape, 0, 0 )
			local t_ini = Ini or fx.movet_i
			local t_dur = Dur or frame_dur
			effector.print_error( t_dur, "number", "shape.lineclip", 2 )
			effector.print_error( t_ini, "number", "shape.lineclip", 3 )
			local coord = { }
			for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coord, tonumber( c ) )
			end
			local pos_x = math.round( fx.move_l1, 3 )
			local pos_y = math.round( fx.move_y1 - l.descent, 3 )
			local tagfx = ""
			if Mode == nil or Mode == 1 then
				tagfx = format( "\\an7\\pos(0,0)\\q2\\fscx%s\\fscy%s", pos_x, pos_y )
				for i = 1, #coord/2 do
					local t1 = t_ini + (i - 1)*t_dur
					tagfx = tagfx .. format( "\\t(%s,%s,\\fscx%s\\fscy%s)", t1, t1 + 1, pos_x + coord[2*i - 1], pos_y + coord[2*i] )
				end
				local tags2 = format( "%s\\p1}m 0 0 m 100 100 {\\p0\\r%s", tagfx, tags_style )
				local fscxy, sizex, sizey = { }, { }, { }
				for c in tags2:gmatch( "fscx?y?(%-?%d+[%.%d]*)" ) do
					table.insert( fscxy, tonumber( c ) )
				end
				for i = 1, #fscxy/2 do
					table.insert( sizex, fscxy[2*i - 1] )
					table.insert( sizey, fscxy[2*i - 0] )
				end
				local sizex2 = table.duplicate( sizex )
				local sizey2 = table.duplicate( sizey )
				table.sort( sizex2, function( x1, x2 ) return x1 < x2 end )
				table.sort( sizey2, function( y1, y2 ) return y1 < y2 end )
				local min_x, min_y = sizex2[1], sizey2[1]
				if min_x >= 0 then
					min_x = 0
				end
				if min_y > 0 and min_y <= val_height then
					min_y = -min_y
				elseif min_y >= 0 then
					min_y = 0
				end
				local posxy = format( "\\an7\\q2%s", effector.new_pos( min_x, min_y ) )
				tags2 = posxy .. tags2:gsub( "(\\fscx%-?%d+[%.%d]*)(\\fscy%-?%d+[%.%d]*)", 
					function( x, y )
						fsc_x = x:match( "%-?%d+[%.%d]*" )
						fsc_y = y:match( "%-?%d+[%.%d]*" )
						return format( "\\fscx%s\\fscy%s", fsc_x - min_x, fsc_y - min_y )
					end
				)
				return tags2
			else
				maxloop( #coord/2 )
				retime( "fxpretime", t_ini + (j - 1)*t_dur, t_ini + j*t_dur )
				return format( "\\pos(%s,%s)", pos_x + coord[2*j - 1] + l_width/2, pos_y + coord[2*j] )
			end
		end
		return ""
	end --shape.lineclip( )

	function shape.setclip( Set_clips, Set_tagfx, Indx_line )
		local Indx_line = Indx_line or { ii }
		function setclip2( s_clips, s_tagfx, i_ln )
			function inclip( Clips )
				local Sh_cT = { }
				if type( Clips ) == "string" then
					return shape.ASSDraw3( Clips )
				end
				for i = 1, #Clips do
					Sh_cT[i] = shape.ASSDraw3( Clips[i] )
				end
				return Sh_cT
			end
			if type( s_clips ) == "string" then
				s_clips = { s_clips }
			end
			if type( s_tagfx ) == "string" then
				s_tagfx = { s_tagfx }
			end
			s_clips = inclip( s_clips )
			if #s_tagfx == #s_clips then
				table.insert( s_tagfx, 1, "" )
			end
			if type( i_ln ) == "number" then
				i_ln = { i_ln }
			end
			i_ln = i_ln or { ii }
			local shape_video = format( "m 0 0 l %d 0 l %d %d l 0 %d ", xres, xres, yres, yres )
			table.insert( s_clips, 1, shape_video .. table.op( s_clips, "concat" ) )
			if table.inside( i_ln, ii ) then
				maxloop( #s_tagfx )
				return format( "\\clip(%s)%s", s_clips[j], s_tagfx[j] )
			else
				fxgroup = false
			end
		end
		effector.print_error( Set_clips, "table", "shape.setclip", 1 )
		effector.print_error( Set_tagfx, "table", "shape.setclip", 2 )
		effector.print_error( Indx_line, "table", "shape.setclip", 3 )
		if type( Set_clips ) == "table"
			and type( Set_clips[1] ) == "table" then
			replay( #Set_clips )
			if table.inside( Indx_line[J], ii ) then
				return setclip2( Set_clips[J], Set_tagfx[J], Indx_line[J] )
			else
				fxgroup = false
				return ""
			end
		end
		return setclip2( Set_clips, Set_tagfx, Indx_line )
	end
	
	function shape.animated( dur, frame_duration, frames, size_x, size_y )
		effector.print_error( dur, "number", "shape.animated", 1 )
		effector.print_error( frame_duration, "number", "shape.animated", 2 )
		effector.print_error( frames, "table", "shape.animated", 3 )
		effector.print_error( size_x, "number", "shape.animated", 4 )
		effector.print_error( size_y, "number", "shape.animated", 5 )
		local t_dur, f_dur = dur, frame_duration
		local Tag_fx, i = "\\bord0\\shad0\\fscx0\\fscy100", 0
		local t1, t2, t3, t4
		maxloop( #frames )
		while t_dur > 0 do
			t1 = f_dur*(i + j - 1) + f_dur*(#frames - 1)*i
			t2 = f_dur*(i + j - 1) + f_dur*(#frames - 1)*i + 1
			t3 = f_dur*(i + j - 0) + f_dur*(#frames - 1)*i
			t4 = f_dur*(i + j - 0) + f_dur*(#frames - 1)*i + 1
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\fscx100)\\t(%s,%s,\\fscx0)", t1, t2, t3, t4 )
			i = i + 1
			t_dur = t_dur - #frames*f_dur
		end
		return format( "{%s\\1img(%s,0,0)\\p1}%s", Tag_fx, frames[j], shape.size( shape.rectangle, size_x, size_y ) )
	end
	
	function shape.animated2( dur, frame_duration, Shapes, Pscale, Random )
		local prop = Pscale or "\\p1"
		effector.print_error( dur, "number", "shape.animated2", 1 )
		effector.print_error( frame_duration, "number", "shape.animated2", 2 )
		effector.print_error( Shapes, "table", "shape.animated2", 3 )
		effector.print_error( prop, "numberstring", "shape.animated2", 4 )
		if type( prop ) == "number" then
			prop = format( "\\p%d", math.round( math.log( prop, 2 ) + 1 ) )
		end
		local t_dur, f_dur = dur, frame_duration
		local Tag_fx, last_alpha, i = "\\alpha&HFF&", "\\alpha&HFF&", 0
		if t_dur/f_dur < #Shapes then
			maxloop( ceil( t_dur/f_dur ) )
		else
			maxloop( #Shapes )
		end
		f_dur = math.round( f_dur, 3 )
		local t1, t2, t3, t4
		while t_dur > 0 do
			t1 = f_dur*(i + j - 1) + f_dur*(#Shapes - 1)*i
			t2 = f_dur*(i + j - 1) + f_dur*(#Shapes - 1)*i + 1
			t3 = f_dur*(i + j - 0) + f_dur*(#Shapes - 1)*i
			t4 = f_dur*(i + j - 0) + f_dur*(#Shapes - 1)*i + 1
			if t2 >= dur then
				last_alpha = "\\alpha&H00&"
			end
			Tag_fx = Tag_fx .. format( "\\t(%s,%s,\\alpha&H00&)\\t(%s,%s,%s)", t1, t2, t3, t4, last_alpha )
			i = i + 1
			t_dur = t_dur - #Shapes*f_dur
		end
		if Random then
			return format( "{%s%s}%s", Tag_fx, prop, Shapes[R( maxj )] )
		end
		return format( "{%s%s}%s", Tag_fx, prop, Shapes[j] )
	end
	
	function shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		effector.print_error( Shape, "shape", "shape.movevc", 1 )
		if ( width_vc and width_vc <= 0 )
			or width_vc == "default" then
			width_vc = val_width
		end
		if ( height_vc and height_vc <= 0 )
			or height_vc == "default" then
			height_vc = val_height
		end
		local SmvcW, SmvcH, Smark, ShmVC, SVCti, SVCtf, SVCdx, SVCdy, SVCpx, SVCpy
		if j == 1 then
			Shape = remember( "Sh1", shape.origin( Shape ) )
			SmvcW = remember( "ShW", abs( width_vc or val_width ) )
			SmvcH = remember( "ShH", abs( height_vc or val_height ) )
			Shape = remember( "Sh2", shape.size( Shape, SmvcW, SmvcH ) )
			shape.info( Shape )
			Smark = remember( "Mrk", format( "m 0 0 l %d 0 m 0 %d l %d %d ", SmvcW, SmvcH, SmvcW, SmvcH ) )
			ShmVC = remember( "Svc", table.concat2( shape.divide( Shape ), Smark ) )
		else
			Shape = recall.Sh1
			SmvcW = recall.ShW
			SmvcH = recall.ShH
			Shape = recall.Sh2
			Smark = recall.Mrk
			ShmVC = recall.Svc
		end
		if Return == "loops" or Return == "loop" then
			return #ShmVC
		end
		if Return == "shape" then
			return ShmVC[j]
		end
		if j == 1 then
			SVCti = remember( "Sti", (time_vci or fx.movet_i) )
			SVCtf = remember( "Stf", (time_vcf or fx.movet_f) )
			SVCdx = remember( "Sdx", (Dx or fx.move_x2 - fx.move_x1) )
			SVCdy = remember( "Sdy", (Dy or fx.move_y2 - fx.move_y1) )
			SVCpx = remember( "Spx", (posx or fx.move_x1) )
			SVCpy = remember( "Spy", (posy or fx.move_y1) )
		else
			SVCti = recall.Sti
			SVCtf = recall.Stf
			SVCdx = recall.Sdx
			SVCdy = recall.Sdy
			SVCpx = recall.Spx
			SVCpy = recall.Spy
		end
		local Tag_fx = ""
		maxloop( #ShmVC )
		if Return == "tag" or Return == nil then
			Tag_fx = format( "\\clip(%s)\\movevc(%s,%s,%s,%s,%s,%s)", ShmVC[j],
			math.round( SVCpx - SmvcW/2, 2 ), math.round( SVCpy - SmvcH/2, 2 ),
			math.round( SVCpx - SmvcW/2 + SVCdx, 2 ), math.round( SVCpy - SmvcH/2 + SVCdy, 2 ),
			math.round( SVCti, 2 ), math.round( SVCtf, 2 ) )
			return Tag_fx
		end
	end
	
	function shape.movevci( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf )
		effector.print_error( Shape, "shape", "shape.movevci", 1 )
		local  tag_Smvci = shape.movevc( Shape, Return, width_vc, height_vc, posx, posy, Dx, Dy, time_vci, time_vcf ):gsub( "clip", "iclip" )
		return tag_Smvci
	end
	
	function shape.divide( Shape, Mark )
		effector.print_error( Shape, "shape", "shape.divide", 1 )
		local Shape, coor, Shapes = shape.ASSDraw3( Shape ), { }, { }
		shape.info( Shape )
		if Mark == nil then
			mark = ""
		elseif Mark == "default" or type( Mark ) == "number" then
			mark = format( "m %s %s l %s %s m %s %s l %s %s ", minx, miny, maxx, miny, minx, maxy, maxx, maxy )
		elseif type( Mark ) == "table" then
			mark = format( "m %s %s l %s %s m %s %s l %s %s ", 
			Mark[1], Mark[2], Mark[3], Mark[2], Mark[1], Mark[4], Mark[3], Mark[4] )
		end
		for c in Shape:gmatch( "%S+" ) do
			table.insert( coor, c )
		end
		local n, m, Shape_I = table.count( coor, "m" ), table.pos( coor, "m" ), ""
		for i = 1, n do
			k = m[i]
			Shapes[i] = { }
			repeat
				Shapes[i][#Shapes[i] + 1] = coor[k]
				k = k + 1
			until coor[k] == "m" or k > #coor
		end
		for i = 1, #Shapes do
			Shape_I = ""
			for k = 1, #Shapes[i] do
				Shape_I = Shape_I .. Shapes[i][k] .. " "
			end
			Shapes[i] = mark .. Shape_I
		end
		return Shapes
	end --table.view(shape.divide2( "m 50 53 l 23 66 l 20 96 l 46 84 m 50 53 l 54 84 l 81 97 l 78 66 " ))
	
	function shape.to_shape( Table_points )
		effector.print_error( Table_points, "table", "shape.to_shape", 1 )
		local Shape = ""
		for i = 1, #Table_points do
			Shape = Shape .. Table_points[i] .. " "
		end
		return Shape
	end
	
	function shape.retire( Shape, Index_1, Index_2 )
		effector.print_error( Shape, "shape", "shape.retire", 1 )
		local Shape, coor = shape.ASSDraw3( Shape ), { }
		local I_1 = Index_1
		local I_2 = Index_2 or Index_1
		effector.print_error( I_1, "number", "shape.retire", 2 )
		effector.print_error( I_2, "number", "shape.retire", 3 )
		for c in Shape:gmatch( "%S+" ) do
			table.insert( coor, c )
		end
		return shape.to_shape( table.retire( coor, I_1, I_2 ) )
	end
	
	function shape.trajectory( Loop_t, distance_nim, distance_max )
		local Loop_t = ceil( Loop_t or linefx[ii].duration/720 )
		local Dr_max = distance_max or 20*ratio
		local Dr_min = distance_nim or 10*ratio
		effector.print_error( Loop_t, "number", "shape.trajectory", 1 )
		effector.print_error( Dr_min, "number", "shape.trajectory", 2 )
		effector.print_error( Dr_max, "number", "shape.trajectory", 3 )
		local n, dist, Ang, px, py = 3*(Loop_t + 1), R( Dr_min, Dr_max ), { }, { }, { }
		Ang[-1] = R( 17 )*17
		Ang[0] = Ang[-1] - 180
		px[-1] = math.polar( Ang[-1], dist, "x" )
		py[-1] = math.polar( Ang[-1], dist, "y" )
		px[0] = px[-1] + math.polar( Ang[0], dist, "x" )
		py[0] = py[-1] + math.polar( Ang[0], dist, "y" )
		for i = 1, n do
			dist = R( Dr_min, Dr_max )
			local Val = (i - 1)%3 + 1
			if Val == 1 then
				Ang[i] = Ang[i - 1]
			elseif Val == 2 then
				Ang[i] = Ang[i - 1] + 90*(-1)^R( 2 ) + R( -10, 10 )*5
			elseif Val == 3 then
				Ang[i] = Ang[i - 1] + 90*(-1)^i - R( -10, 10 )*5
			end
			px[i] = px[i - 1] + math.polar( Ang[i], dist, "x" )
			py[i] = py[i - 1] + math.polar( Ang[i], dist, "y" )
		end
		local tags, k = format( "m %s %s ", px[0], py[0] ), 0
		while k <= Loop_t do
			tags = tags .. format( "b %s %s %s %s %s %s ", 
			px[3*k + 1], py[3*k + 1], px[3*k + 2], py[3*k + 2], px[3*k + 3], py[3*k  + 3] )
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.trajectory( )
	
	function shape.Ltrajectory( length_total, length_curve, height_curve ) -- Curve in Line Trajectory
		local ratio_y = height_curve or 40*ratio
		local lengthC = length_curve or xres/4
		local lengthT = length_total or xres - val_center
		effector.print_error( lengthT, "number", "shape.Ltrajectory", 1 )
		effector.print_error( lengthC, "number", "shape.Ltrajectory", 2 )
		effector.print_error( ratio_y, "number", "shape.Ltrajectory", 3 )
		local Loop_Lt = math.round( lengthT/lengthC )
		local loops, Rand, px, py = 3*Loop_Lt, lengthT/ratio_y, { }, { }
		local Ang, Rad
		for i = 0, loops, 3 do
			px[i] = i*lengthC/3
			py[i] = R( -Rand/4, Rand/4 )
		end
		for i = 1, loops + 1, 3 do
			px[i] = px[i - 1] + R( -0.6*lengthC, 0.6*lengthC )
			py[i] = R( 0.7*Rand, Rand )*(-1)^R( 2 )
		end
		for i = 2, loops, 3 do
			Ang = math.angle( px[i + 2], py[i + 2], px[i + 1], py[i + 1] )
			Rad = math.distance( px[i + 2], py[i + 2], px[i + 1], py[i + 1] )
			px[i] = px[i + 1] + math.polar( Ang, Rad, "x" )
			py[i] = py[i + 1] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, "m 0 0 "
		while k <= Loop_Lt - 1 do
			tags = tags .. format( "b %s %s %s %s %s %s ", 
			px[3*k + 1], py[3*k + 1], px[3*k + 2], py[3*k + 2], px[3*k + 3], py[3*k + 3] )
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Ltrajectory( )
	
	function shape.Ctrajectory( Loop_Ct, radius_min, radius_max ) -- Circle Trajectory
		local R_max = radius_max or xres/25
		local R_min = radius_min or xres/40
		local loops = ceil( 3*(Loop_Ct or linefx[ii].duration/720) )
		effector.print_error( loops, "number", "shape.Ctrajectory", 1 )
		effector.print_error( R_min, "number", "shape.Ctrajectory", 2 )
		effector.print_error( R_max, "number", "shape.Ctrajectory", 3 )
		local px, py = { }, { }
		local Ang, Rad
		for i = -3, loops, 3 do
			Ang = R( 36 )*10
			Rad = R( R_min, R_max )
			px[i] = math.polar( Ang, Rad, "x" )
			py[i] = math.polar( Ang, Rad, "y" )
		end
		for i = -2, loops + 1, 3 do
			Ang = R( 20 )*18
			Rad = R( R_min, 2*R_max )
			px[i] = px[i - 1] + math.polar( Ang, Rad, "x" )
			py[i] = py[i - 1] + math.polar( Ang, Rad, "y" )
		end
		for i = -1, loops, 3 do
			Ang = math.angle( px[i + 2], py[i + 2], px[i + 1], py[i + 1] )
			Rad = R( R_min/2, 2.5*R_max )
			px[i] = px[i + 1] + math.polar( Ang, Rad, "x" )
			py[i] = py[i + 1] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, format( "m 0 0 b %s %s %s %s %s %s ", px[-2], py[-2], px[-1], py[-1], px[0], py[0] )
		while k <= loops/3 - 2 do
			tags = tags .. format( "b %s %s %s %s %s %s ", px[3*k + 1], py[3*k + 1], px[3*k + 2], py[3*k + 2], px[3*k + 3], py[3*k + 3] )
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Ctrajectory( )
	
	function shape.Rtrajectory( Loop_Rt, radius_min, radius_max ) -- Random Trajectory
		local R_max = radius_max or xres/25
		local R_min = radius_min or xres/40
		local loops = ceil( 3*(Loop_Rt or linefx[ii].duration/720) )
		effector.print_error( loops, "number", "shape.Rtrajectory", 1 )
		effector.print_error( R_min, "number", "shape.Rtrajectory", 2 )
		effector.print_error( R_max, "number", "shape.Rtrajectory", 3 )
		local px, py = { }, { }
		local Ang, Rad
		for i = -3, loops, 3 do
			Ang = R( 36 )*10
			Rad = R( R_min, R_max )
			px[i] = math.polar( Ang, Rad, "x" )
			py[i] = math.polar( Ang, Rad, "y" )
		end
		for i = -2, loops + 1, 3 do
			Ang = R( 20 )*18
			Rad = R( R_min, 2*R_max )
			px[i] = px[i - 1] + math.polar( Ang, Rad, "x" )
			py[i] = py[i - 1] + math.polar( Ang, Rad, "y" )
		end
		for i = -1, loops, 3 do
			Ang = R( 30 )*12
			Rad = R( R_min/2, 2.5*R_max )
			px[i] = px[i + 1] + math.polar( Ang, Rad, "x" )
			py[i] = py[i + 1] + math.polar( Ang, Rad, "y" )
		end
		local k, tags = 0, format( "m 0 0 b %s %s %s %s %s %s ", px[-2], py[-2], px[-1], py[-1], px[0], py[0] )
		while k <= loops/3 - 2 do
			tags = tags .. format( "b %s %s %s %s %s %s ", px[3*k + 1], py[3*k + 1], px[3*k + 2], py[3*k + 2], px[3*k + 3], py[3*k + 3] )
			k = k + 1
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3( tags ) ) or recall.tags )
	end --shape.Rtrajectory( )
	
	function shape.Strajectory( Loops_St, Radius ) -- Segment Line Trajectory
		local Radius = Radius or 0.75*val_height
		local loops = ceil( Loops_St or linefx[ii].duration/820 )
		effector.print_error( loops, "number", "shape.Strajectory", 1 )
		effector.print_error( Radius, "number", "shape.Strajectory", 2 )
		local angles = { [0] = R( 36 )*10 }
		for i = 1, loops do
			angles[i] = R( angles[i - 1] + 110, angles[i - 1] + 250 )
		end
		local tags, Rand = "m 0 0 ", 0
		for i = 1, loops do
			Rand = R( 0.7*Radius, Radius )
			tags = format( "%sl %s %s ", tags, math.polar( angles[i], Rand, "x" ), math.polar( angles[i], Rand, "y" ) )
		end
		return ( (j == 1) and remember( "tags", shape.ASSDraw3(tags) ) or recall.tags )
	end --shape.Strajectory( )
	
	function shape.multi1( Size_shape, Px )
		local Shape = ""
		if j == 1 then
			local i = 1
			local Px = Px or 4*ratio
			--Px = math.round(Px)
			if Size_shape == "default"
				or Size_shape == nil then
				Size_shape = math.max( val_width, val_height )
			end
			effector.print_error( Size_shape, "number", "shape.multi1", 1 )
			effector.print_error( Px, "number", "shape.multi1", 2 )
			Shape = format( "m 0 0 l 0 %s l %s %s l %s 0 ", Px, Px, Px, Px )
			while (2*i - 1)*Px <= Size_shape do
				Shape = Shape .. format( "m %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s l %s %s ", 
				-i*Px, -i*Px, -i*Px, (i + 1)*Px, (i + 1)*Px, (i + 1)*Px, (i + 1)*Px, -i*Px, -i*Px, -i*Px, -(i - 1)*Px,
				-(i - 1)*Px, i*Px, -(i - 1)*Px, i*Px, i*Px, -(i - 1)*Px, i*Px, -(i - 1)*Px, -(i - 1)*Px )
				i = i + 1
			end
			Shape = remember( "shape_multi1", Shape )
		else
			Shape = recall.shape_multi1
		end
		return shape.ASSDraw3( Shape ) --shape.multi1( )
	end --retorna shapes cuadradas concéntricas para fx de movevc
	
	function shape.multi2( Width, Height, Pixel )
		local Shape = ""
		if j == 1 then	
			local Pixel = math.round( Pixel or 6*ratio )
			local Height = math.round( Height or val_height )
			local Width = math.round( Width or val_width )
			effector.print_error( Width, "number", "shape.multi2", 1 )
			effector.print_error( Height, "number", "shape.multi2", 2 )
			effector.print_error( Pixel, "number", "shape.multi2", 3 )
			local loopx, loopy = ceil( Width/Pixel ), ceil( Height/Pixel )
			local n, Shapes, top_x, top_y, left_x, left_y = loopx + loopy, { }, { }, { }, { }, { }
			for i = 0, n do
				if i <= loopx then
					top_x[i] = i
					top_y[i] = 0
				else
					top_x[i] = loopx
					top_y[i] = i - loopx
				end
				if i <= loopy then
					left_x[i] = 0
					left_y[i] = i
				else
					left_x[i] = i - loopy
					left_y[i] = loopy
				end
			end
			for i = 1, n do
				Shapes[i] = format( "m %s %s l %s %s l %s %s l %s %s l %s %s ", top_x[i - 1]*Pixel, top_y[i - 1]*Pixel, left_x[i - 1]*Pixel,
				left_y[i - 1]*Pixel, left_x[i]*Pixel, left_y[i]*Pixel, top_x[i]*Pixel, top_y[i]*Pixel, top_x[i - 1]*Pixel, top_y[i - 1]*Pixel )
			end
			Shape = remember( "shape_multi2", table.op( Shapes, "concat" ) )
		else
			Shape = recall.shape_multi2
		end
		return shape.ASSDraw3( Shape ) --shape.multi2( )
	end	--crea shapes diagonales dentro de un rectángulo con medidas dadas
	
	function shape.multi3( Size_Shape, width_bord, Shape )
		local Shape2 = ""
		if j == 1 then
			local Shape = Shape or shape.circle
			local i, Bord, Shpfx1, Shpfx2 = 1, 1, "", ""
			if width_bord == nil or width_bord <= 0 then
				Bord = math.round( 5*ratio )
			else
				Bord = math.round( width_bord )
			end
			if Size_Shape == "default"
				or Size_Shape == nil then
				Size_Shape = math.round( (val_width^2 + val_height^2)^0.5 )
			end
			effector.print_error( Size_Shape, "number", "shape.multi3", 1 )
			effector.print_error( Bord, "number", "shape.multi3", 2 )
			effector.print_error( Shape, "shape", "shape.multi3", 3 )
			local n = ceil( 0.5*(Size_Shape or (val_width^2 + val_height^2)^0.5)/Bord )
			while i <= n do
				Shpfx1 = shape.incenter( shape.size( Shape, 2*(i + 1)*Bord ) )
				Shpfx2 = shape.incenter( shape.reverse( shape.size( Shape, 2*i*Bord ) ):gsub( "m", "l" ) )
				Shape2 = Shape2 .. format( "%s%s", Shpfx1, Shpfx2 )
				i = i + 1
			end
			Shape2 = remember( "shape_multi3", shape.origin( shape.incenter( shape.size( Shape, 2*Bord ) ) .. Shape2 ) )
		else
			Shape2 = recall.shape_multi3
		end
		return shape.ASSDraw3( Shape2 ) --shape.multi3( )
	end --si no se pone a "Shape" entonces retorna círculos concéntricos, o shapes concéntricas de la que se haya ingresado
	
	function shape.multi4( Size, Loop1, Loop2, n )
		local Shape = ""
		local loop1 = math.round( abs( Loop1 or 6 ) )
		if j == 1 then
			local n = math.round( abs( n or 25 ) )
			local loop2 = math.round( Loop2 or 1 )
			local sizer
			if Size == nil or Size == "default" then
				sizer = math.round( (val_width^2 + val_height^2)^0.5 )
			else
				sizer = math.round( Size )
			end
			effector.print_error( sizer, "number", "shape.multi4", 1 )
			effector.print_error( loop1, "number", "shape.multi4", 2 )
			effector.print_error( loop2, "number", "shape.multi4", 3 )
			effector.print_error( n, "number", "shape.multi4", 4 )
			sizer = 2*ceil( sizer/2 )
			if loop1 < 3 then
				loop1 = 3
			end
			if loop2 < 0 then
				loop2 = 1
			elseif loop2 > 24 then
				loop2 = 24
			end
			local ind, i, pixel = sizer/2, 0, math.round( 0.5*sizer/loop2 )
			function multi40( Size2, Loop, pixel2 )
				local Size2 = 2*ceil( Size2/2 )
				local Angle = 360/Loop
				local arista, Shapes, Shape2 = math.round( 360/Angle ), { }, ""
				if pixel2 >= Size2/2 then
					pixel2 = Size2/2
				end
				for i = 1, arista do
					Shapes[i] = format( "m %s %s l %s %s l %s %s l %s %s ", 
					math.polar( Angle*(i - 0), Size2/2 - pixel2, "x" ),	math.polar( Angle*(i - 0), Size2/2 - pixel2, "y" ),
					math.polar( Angle*(i - 0), Size2/2, "x" ),			math.polar( Angle*(i - 0), Size2/2, "y" ),
					math.polar( Angle*(i - 1), Size2/2, "x" ),			math.polar( Angle*(i - 1), Size2/2, "y" ),
					math.polar( Angle*(i - 1), Size2/2 - pixel2, "x" ),	math.polar( Angle*(i - 1), Size2/2 - pixel2, "y" ) )
					Shape2 = Shape2 .. Shapes[i]
				end
				return Shape2
			end 
			while ind > 0 and i < n do
				Shape = Shape .. multi40( ind*2, loop1, pixel )
				ind = ind - pixel
				i = i + 1
			end
			shape_fx1 = remember( "Shp_fx1", shape.origin( shape.rotate( Shape, ((-1)^((loop1 - 1)/2))*90/loop1 ) ) )
			shape_fx2 = remember( "Shp_fx2", shape.origin( Shape ) )
		else
			shape_fx1 = recall.Shp_fx1
			shape_fx2 = recall.Shp_fx2
		end
		if ( loop1%2 ) == 1 then
			return shape_fx1
		end
		return shape.ASSDraw3( shape_fx2 ) --shape.multi4( 200, 6, 4, 3 )
	end --retorna un polígono regular de Loop1 lados, con un arreglo de Loop2. n es la cantidad de arreglos
	
	function shape.multi5( Shapes, Width, Height, Dxy )
		local Shape = ""
		if j == 1 then
			local widths, heights, ShapeT, dis_xy = { }, { }, { }, { }
			local max_W, max_H
			if type( Shapes ) == "table" then
				for i = 1, #Shapes do
					widths[i] = shape.width( Shapes[i] )
					heights[i] = shape.height( Shapes[i] )
				end
				max_W = math.max( unpack( widths ) )
				max_H = math.max( unpack( heights ) )
				for i = 1, #Shapes do
					ShapeT[i] = ""
					for k = 1, #Shapes do
						ShapeT[i] = ShapeT[i] .. shape.displace( shape.incenter( Shapes[(k - i)%#Shapes + 1] ), (k - 1)*max_W, (i - #Shapes)*max_H )
					end
				end
				Shape = shape.origin( table.op( ShapeT, "concat" ) )
			else
				Shape = Shapes or shape.size( shape.rectangle, 8 )
				Shape = shape.origin( Shape )
			end
			local Height = Height or val_height
			local Width = Width or val_width
			effector.print_error( Width, "number", "shape.multi5", 2 )
			effector.print_error( Height, "number", "shape.multi5", 3 )
			if Dxy == nil then
				dis_xy = { 0, 0 }
			elseif type( Dxy ) == "number" then
				dis_xy = { Dxy, 0 }
			else
				dis_xy = Dxy
			end
			local length_H = ceil( Width/(shape.width( Shape ) + dis_xy[1]) )
			local length_V = ceil( Height/(shape.height( Shape ) + dis_xy[2]) )
			Shape = remember( "shape_multi5", shape.array( Shape, { length_H, length_V }, "array", dis_xy ) )
		else
			Shape = recall.shape_multi5
		end
		return shape.ASSDraw3( Shape ) --shape.multi5( )
	end --retorna un arreglo matricial rectangular de las shapes ingresadas
	
	function shape.equality( Shape1, Shape2 )
		local segm1, segm2, Shapefx1, Shapefx2 = { }, { }, { }, { }
		for c in Shape1:gmatch( "[blm]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			table.insert( segm1, c )
		end
		for c in Shape2:gmatch( "[blm]* %-?%d+[%.%d]* [%-%.%d ]*" ) do
			table.insert( segm2, c )
		end
		local difference = abs( #segm1 - #segm2 )
		if difference == 0 then
			return { Shape1, Shape2 }
		end
		local n, N, segm
		if #segm1 < #segm2 then
			n, N = ceil( difference/#segm1 ), ceil( #segm1/difference )
			for i = 1, #segm1 do
				if i%N == 0 then
					segm = ""
					for k = 1, N + 1 do
						segm = segm .. segm1[i]
					end
					Shapefx1[i] = segm
				else
					Shapefx1[i] = segm1[i]
				end
			end
			Shapefx1 = table.op( Shapefx1, "concat" )
			Shapefx2 = Shape2
		else
			n, N = ceil( difference/#segm2 ), ceil( #segm2/difference )
			for i = 1, #segm2 do
				if i%N == 0 then
					segm = ""
					for k = 1, N + 1 do
						segm = segm .. segm2[i]
					end
					Shapefx2[i] = segm
				else
					Shapefx2[i] = segm2[i]
				end
			end
			Shapefx1 = Shape1
			Shapefx2 = table.op( Shapefx2, "concat" )
		end
		return Shapefx1, Shapefx2
	end
	
	function shape.morphism( Size, Shape1, Shape2, Accel )
		effector.print_error( Size, "number", "shape.morphism", 1 )
		effector.print_error( Shape1, "shape", "shape.morphism", 2 )
		effector.print_error( Shape2, "shape", "shape.morphism", 3 )
		local Accel = Accel or 1
		effector.print_error( Accel, "number", "shape.morphism", 4 )
		local Shapes = { }
		if j == 1 then
			--local Shape1, Shape2 = shape.equality( Shape1, Shape2 )
			local coor1, coor2 = { }, { }
			local k
			if Size < 2 or Size == nil then
				Size = 4
			else
				Size = math.round( Size )
			end
			for c in Shape1:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor1, tonumber( c ) )
			end
			for c in Shape2:gmatch( "%-?%d+[%.%d]*" ) do
				table.insert( coor2, tonumber( c ) )
			end
			for i = 1, Size do
				k = 1
				Shapes[i] = Shape1:gsub( "%-?%d+[%.%d]*", 
					function( val )
						val = val + (coor2[(k - 1)%#coor1 + 1] - coor1[k])*((i - 1)/(Size - 1))^Accel
						k = k + 1
						return val
					end
				)
				Shapes[i] = shape.ASSDraw3( Shapes[i] )
			end
			Shapes = remember( "shape_morphism", Shapes )
		else
			Shapes = recall.shape_morphism
		end
		return Shapes --shape.morphism( 6, shape.to_bezier(shape.rectangle), shape.circle )
	end --retorna una tabla con la interpolación entre las dos shapes ingresadas
	
	function shape.bord( Shape, Bord, Size )
		effector.print_error( Shape, "shape", "shape.bord", 1 )
		local Shape = shape.ASSDraw3( Shape )
		shape.info( Shape )
		local P_first, Size_x, Size_y, Shape_1, Shape_2, Shape_B = { }, w_shape, h_shape, "", "", ""
		P_first.x = tonumber( Shape:match( "m (%-?%d+[%.%d]*) %-?%d+[%.%d]* " ) )
		P_first.y = tonumber( Shape:match( "m %-?%d+[%.%d]* (%-?%d+[%.%d]*) " ) )
		local Size = Size or { [1] = w_shape, [2] = h_shape }
		local Bord = Bord or 4
		effector.print_error( Bord, "number", "shape.bord", 2 )
		effector.print_error( Size, "numbertable", "shape.bord", 3 )
		if type( Size ) == "table" then
			Size_x, Size_y = Size[1], Size[2]
		elseif type( Size ) == "number" then
			Size_x, Size_y = Size, Size
		end
		Bord = abs( Bord )
		if  Bord > floor( math.min( Size_x, Size_y )/2 ) - 1 then
			Bord = floor( math.min( Size_x, Size_y )/2 ) - 1
		end
		Shape_1 = shape.incenter( shape.size( Shape, Size_x, Size_y ) )
		Shape_2 = shape.incenter( shape.size( shape.reverse( Shape ), Size_x - 2*Bord, Size_y - 2*Bord ) )
		Shape_2 = "l" .. Shape_2:sub(2, -1)
		Shape_B = Shape_1 .. Shape_2
		return shape.firstpos( Shape_B, P_first.x, P_first.y )
	end --shape.bord( shape.circle, 8, 120 )
	
	function shape.from_audio( Audio_wav, Width_wav, Height_scale_wav, Thickness_wav, Offset_time )
		local Wav_fil = Audio_wav or "test.wav"
		local Wav_frm = frame_dur
		local Wav_wth = Width_wav or l.width + 20*ratio
		local Wav_hht = Height_scale_wav or 1/220 -- = 0.0045
		local Wav_tkn = Thickness_wav or 6*ratio
		local Wav_otm = Offset_time or 0
		effector.print_error( Wav_fil, "string", "shape.from_audio", 1 )
		effector.print_error( Wav_wth, "number", "shape.from_audio", 2 )
		effector.print_error( Wav_hht, "number", "shape.from_audio", 3 )
		effector.print_error( Wav_tkn, "number", "shape.from_audio", 4 )
		effector.print_error( Wav_otm, "number", "shape.from_audio", 5 )
		local Wav_pos = effector.new_pos( fx.pos_x - Wav_wth/2, fx.pos_y )
		if Wav_hht <= 0 or Wav_hht >= 1 then
			Wav_hht = 1/150
		end
		function audio_to_shape( Samples, Width, Height_scale, Thickness )
			local thick, n = Thickness/2, #Samples
			local Shape = format( "m 0 %s l", Samples[1]*Height_scale - thick )
			for i = 2, n do
				Shape = format( "%s %s %s", Shape, (i - 1)/(n - 1)*Width, Samples[i]*Height_scale - thick )
			end
			for i = n, 1, -1 do
				Shape = format( "%s %s %s", Shape, (i - 1)/(n - 1)*Width, Samples[i]*Height_scale + thick )
			end
			return Shape
		end
		if Wav_fil:match( "%.wav" ) == nil then
			Wav_fil = Wav_fil .. ".wav"
		end
		reader = Yutils.decode.create_wav_reader( Wav_fil )
		local chunk_size = reader.sample_from_ms( Wav_frm )
		maxloop( (linefx[ii].duration + 2*Wav_otm)/Wav_frm )
		local ms = linefx[ii].start_time + Wav_frm*(j - 1)
		retime( "preline", Wav_frm*(j - 1) - Wav_otm, Wav_frm*j - Wav_otm )
		reader.position( floor( reader.sample_from_ms( ms ) ) )
		local Shape = shape.ratio( audio_to_shape( reader.samples( chunk_size )[1], Wav_wth/2, Wav_hht, Wav_tkn ), 2, 1 )
		Shape = shape.ASSDraw3( Shape )
		return format( "{\\an7%s\\p1}%s", Wav_pos, Shape )
	end --shape.from_audio( )
	
	function shape.to_pixels( Shape, Shape2 )
		effector.print_error( Shape, "shape", "shape.to_pixels", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local shape_pixel = Shape2 or shape.pixel
		effector.print_error( shape_pixel, "shape", "shape.to_pixels", 2 )
		local pixel_table, Px, Py
		local pixel_datas, pixel, pixel_pos = { }, { }, ""
		if j == 1 then
			pixel_table = Yutils.shape.to_pixels( Shape )
			pixel = remember( "pxl", { } )
			for i = 1, #pixel_table do
				pixel_datas[i] = { }
				for k, v in pairs( pixel_table[i] ) do
					table.insert( pixel_datas[i], v )
				end
			end
			for i = 1, #pixel_table do
				pixel[i] = { }
				pixel[i].x = fx.pos_l + pixel_datas[i][2]
				pixel[i].y = fx.pos_t + pixel_datas[i][1]
				pixel[i].a = ass_alpha( 255 - pixel_datas[i][3] )
			end
			maxloop( #pixel_datas )
		else
			pixel = recall.pxl
		end
		pixel_pos = effector.new_pos( pixel[j].x, pixel[j].y )
		return format( "{%s\\1a%s\\bord0\\shad0\\p1}%s", pixel_pos, pixel[j].a, shape_pixel )
	end --shape.to_pixels( shape.circle )
	
	function shape.fxline( P1, P2, Radius )
		local P1 = P1 or { val_left, val_middle }
		local P2 = P2 or { val_right, val_middle }
		local Radius = Radius or val_width
		local Shape = ""
		local P2x, P2y
		effector.print_error( P1, "table", "shape.fxline", 1 )
		effector.print_error( P2, "numbertable", "shape.fxline", 2 )
		effector.print_error( Radius, "number", "shape.fxline", 3 )
		if type( P2 ) == "table" then
			Shape = format( "m %s %s l %s %s ", P1[1], P1[2], P2[1], P2[2] )
		else
			P2x = P1[1] + math.polar( P2, Radius, "x" )
			P2y = P1[2] + math.polar( P2, Radius, "y" )
			Shape = format( "m %s %s l %s %s ", P1[1], P1[2], P2x, P2y )
		end
		return shape.ASSDraw3( Shape )
	end --shape.fxline( )
	
	function shape.fxcircle( Shape )
		local ShapeC = ""
		local Cpx, Cpy, Radius, Circle
		if Shape == nil then
			Shape = ""
			if linefx[ii].text:match( "\\i?clip%b()" ) then
				Shape = linefx[ii].text:match( "\\i?clip%b()" )
			end
		end
		effector.print_error( Shape, "stringtable", "shape.fxcircle", 1 )
		if type( Shape ) == "string" and Shape ~= "" then
			Cpx, Cpy, Radius = math.circle( Shape )
			ShapeC = shape.displace( shape.incenter( shape.size( shape.circle, 2*Radius ) ), Cpx, Cpy )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		elseif type( Shape ) == "table" then
			ShapeC = shape.displace( shape.incenter( shape.size( shape.circle, 2*Shape[3] ) ), Shape[1], Shape[2] )
			ShapeC = format( "{\\an7\\pos(0,0)}%s", ShapeC )
		end
		return ShapeC
	end --shape.fxcircle( )
	
	function shape.trim( Shape, Lines, Mark, Ratio )
		effector.print_error( Shape, "shape", "shape.trim", 1 )
		local Shape = shape.ASSDraw3( Shape )
		local Mark = Mark or ""
		local Ratio = Ratio or 1
		effector.print_error( Lines, "table", "shape.trim", 2 )
		effector.print_error( Mark, "numbershapetable", "shape.trim", 3 )
		effector.print_error( Ratio, "number", "shape.trim", 4 )
		shape.info( Shape)
		if Mark == 1 then
			Mark = format( "m %s %s l %s %s m %s %s l %s %s ", minx, miny, maxx, miny, minx, maxy, maxx, maxy )
		elseif type( Mark ) == "table" then
			Mark = format( "m 0 0 l %s 0 m 0 %s l %s %s ",
				Mark[1]*Ratio, Mark[2]*Ratio, Mark[1]*Ratio, Mark[2]*Ratio
			)
		end
		local trim_tbl = { Shape }
		local trim_n
		local function get_shapes( Shape, Line )
			local function get_var( Line )
				local x1, y1, x2, y2, m, b
				if type( Line ) == "table" then
					x1, y1 = Line[1], Line[2]
					if #Line == 4 then -- tabla de 2 puntos
						x2, y2 = Line[3], Line[4]
					elseif #Line == 3 then --tabla de punto y pendiente
						if type( Line[3] ) ~= "table" then
							x2 = x1 + 1
							y2 = y1 + Line[3]
						else --table de punto y ángulo
							x2 = x1 + math.polar( Line[3][1], 1, "x" )
							y2 = y1 + math.polar( Line[3][1], 1, "y" )
						end
					end
				else
					local coor = { }
					for num in Line:gmatch( "%-?%d+[%.%d]*" ) do
						table.insert( coor, tonumber( num ) )
					end
					x1, y1, x2, y2 = coor[1], coor[2], coor[3], coor[4]
				end
				x1, y1, x2, y2 = x1*Ratio, y1*Ratio, x2*Ratio, y2*Ratio
				if x1 ~= x2 then
					m = (y2 - y1)/(x2 - x1)
					b = y1 - m*x1
				else
					m = x1
					b = nil
				end
				return m, b
			end
			local function get_point( Shape, Line )
				local shp_trim = { }
				local m, b = get_var( Line )
				if b then
					shp_trim[1] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( c, x, y )
							if c and tonumber( y ) <= m*tonumber( x ) + b then
								if tonumber( y ) + 0.99*Ratio >= m*tonumber( x ) + b then
									y = m*tonumber( x ) + b
								end
								return format( "%s %s %s ", c, x, y )
							end
							return ""
						end
					)
					shp_trim[2] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( c, x, y )
							if c and tonumber( y ) >= m*tonumber( x ) + b then
								if tonumber( y ) + 0.99*Ratio <= m*tonumber( x ) + b then
									y = m*tonumber( x ) + b
								end
								return format( "%s %s %s ", c, x, y )
							end
							return ""
						end
					)
				else
					shp_trim[1] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( c, x, y )
							if c and tonumber( x ) >= m then
								if tonumber( x ) + 0.99*Ratio <= m then
									x = m
								end
								return format( "%s %s %s ", c, x, y )
							end
							return ""
						end
					)
					shp_trim[2] = Shape:gsub( "([mlb]*) (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) ",
						function( c, x, y )
							if c and tonumber( x ) <= m then
								if tonumber( x ) + 0.99*Ratio >= m then
									x = m
								end
								return format( "%s %s %s ", c, x, y )
							end
							return ""
						end
					)
				end
				return shp_trim
			end
			local Line = Line or "m 0 0 l 1 0 "
			local trims = { }
			local shape_trims = { [1] = "", [2] = "" }
			local Shapes = shape.divide( Shape )
			for i = 1, #Shapes do
				Shapes[i] = shape.redraw( Shapes[i], Ratio )
				trims[i] = get_point( Shapes[i], Line )
			end
			for i = 1, #trims do
				trims[i][1] = "m" .. trims[i][1]:sub( 2, -1 )
				trims[i][2] = "m" .. trims[i][2]:sub( 2, -1 )
				if trims[i][1]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" ) then
					trims[i][1] = trims[i][1] .. trims[i][1]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" )
				end
				if trims[i][2]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" ) then
					trims[i][2] = trims[i][2] .. trims[i][2]:match( "m (%-?%d+[%.%d]* %-?%d+[%.%d]* )" )
				end
				if trims[i][1] == "m" then
					trims[i][1] = ""
				end
				if trims[i][2] == "m" then
					trims[i][2] = ""
				end
			end
			for i = 1, #trims do
				shape_trims[1] = shape_trims[1] .. trims[i][1]
				shape_trims[2] = shape_trims[2] .. trims[i][2]
			end
			shape_trims[1] = shape.reduce( shape.ASSDraw3( shape_trims[1] ), 5 )
			shape_trims[2] = shape.reduce( shape.ASSDraw3( shape_trims[2] ), 5 )
			for i, v in pairs( shape_trims ) do
				if v == "" then
					table.remove( shape_trims, i )
				end
			end
			return shape_trims
		end
		local trim_aux = { }
		for i = 1, #Lines do
			trim_n = #trim_tbl
			for k = 1, trim_n do
				trim_aux = table.inserttable( trim_aux, get_shapes( trim_tbl[k], Lines[i] ) )
			end
			trim_tbl = table.duplicate( trim_aux )
			trim_aux = { }
		end
		for i = 1, #trim_tbl do
			trim_tbl[i] = shape.ASSDraw3( Mark ) .. trim_tbl[i]
		end
		return trim_tbl
	end --tbl = shape.trim( shape.rectangle, { "m 0 100 l 100 0 ", "m 0 0 l 100 100 ", { 0, 20, 100, 20 } } )

	function shape.reduce( Shape )
		local Shape = shape.ASSDraw3( Shape )
		effector.print_error( Shape, "shape", "shape.reduce", 1 )
		local function get_red( Shape )
			Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*) l (%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
				function( x1, y1, x2, y2, x3, y3 )
					local angle1 = math.angle( x1, y1, x2, y2 )
					local angle2 = math.angle( x1, y1, x3, y3 )
					if math.round( angle1, 1 ) == math.round( angle2, 1 ) then
						return format( "%s %s l %s %s", x1, y1, x3, y3 )
					end
				end
			)
			return Shape
		end
		while Shape ~= get_red( Shape ) do
			Shape = get_red( Shape )
		end
		return Shape
	end --shape.reduce( "m 0 0 l 0 2 l 0 3 l 0 5 l 0 6 l 0 8 l 0 9 l 0 11 l 0 12 l 0 14 " )
	
	function shape.rotate2( Shape, Axis, Angle )
		local Shape = shape.ASSDraw3( Shape )
		local Axis = Axis or "z"
		local Angle = Angle or 0
		effector.print_error( Shape, "shape", "shape.rotate2", 1 )
		effector.print_error( Axis, "string", "shape.rotate2", 2 )
		effector.print_error( Angle, "number", "shape.rotate2", 3 )
		Shape = Shape:gsub( "(%-?%d+[%.%d]*) (%-?%d+[%.%d]*)",
			function( x, y )
				if Axis == "x"
					or Axis == "y" then
					x = math.rotate( { x, y }, Axis, Angle )[1]
					y = math.rotate( { x, y }, Axis, Angle )[2]
				else
					local new_ang = math.angle( x, y )
					local new_rad = math.distance( x, y )
					x = math.polar( new_ang + Angle, new_rad, "x" )
					y = math.polar( new_ang + Angle, new_rad, "y" )
				end
				return format( "%s %s", x, y )
			end
		)
		return shape.ASSDraw3( Shape )
	end --shape.rotate2( shape.circle, "y", 45 )
	
	function shape.inclip( Tags )
		local Shape = shape.displace( format( "m 0 0 l %s 0", l_width ), l_left, l_middle )
		local Shpos = ""
		if Tags then
			Shpos = "{\\an7\\pos(0,0)}"
		end
		if linefx[ii].text:match( "\\i?clip%b()" ) then
			Shape = shape.ASSDraw3( linefx[ii].text:match( "\\i?clip%b()" ) )
		end
		return format( "%s%s", Shpos, Shape )
	end
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "text" -----------------------------------------------------------------
	function text.upper( text_up )
		local text_up = text_up or linefx[ii].text
		effector.print_error( text_up, "text", "text.upper", 1 )
		local up_tag2, up_tags = { }, { }
		for c in text_up:gmatch( "%b{}" ) do
			table.insert( up_tag2, c )
		end
		local txt_2up = unicode.to_upper_case( text_up )
		for c in txt_2up:gmatch( "%b{}" ) do
			table.insert( up_tags, c )
		end
		for i = 1, #up_tags do
			txt_2up = txt_2up:gsub( tag.operation( up_tags[i] ), up_tag2[i], 1 )
		end
		txt_2up = txt_2up:gsub( "KEfx", "" )
		return txt_2up
	end
	
	function text.lower( text_lw )
		local text_lw = text_lw or linefx[ii].text
		effector.print_error( text_lw, "text", "text.lower", 1 )
		local lw_tag2, lw_tags = { }, { }
		for c in text_lw:gmatch( "%b{}" ) do
			table.insert( lw_tag2, c )
		end
		local txt_2lw = unicode.to_lower_case( text_lw )
		for c in txt_2lw:gmatch( "%b{}" ) do
			table.insert( lw_tags, c )
		end
		for i = 1, #lw_tags do
			txt_2lw = txt_2lw:gsub( tag.operation( lw_tags[i] ), lw_tag2[i], 1 )
		end
		txt_2lw = txt_2lw:gsub( "KEfx", "" )
		return txt_2lw
	end

	function text.kara( )
		local txt_2kr = ""
		for i = 1, linefx[ii].syl.n do
			if i < linefx[ii].syl.n then
				txt_2kr = txt_2kr .. format( "{\\k%s}%s", math.round( linefx[ii].syl[i].duration/10 ), linefx[ii].syl[i].text1 )
			else
				if linefx[ii].syl[i].text1:gsub( " ", "" ) ~= "" then
					txt_2kr = txt_2kr .. format( "{\\k%s}%s", math.round( linefx[ii].syl[i].duration/10 ), linefx[ii].syl[i].text1 )
				end
			end
		end
		txt_2kr = txt_2kr:gsub( "\\k0", "" )
		txt_2kr = txt_2kr:gsub( "{}", "" )
		txt_2kr = txt_2kr:gsub( "({.-})({.-})",
			function( A, B )
				return format( "{\\k%d}", A:match( "%d+" ) + B:match( "%d+" ) )
			end
		)
		txt_2kr = txt_2kr:gsub( "%b{} ",
			function( A )
				A = A:gsub( " ", "" )
				return " " .. A .. "|"
			end
		)
		return txt_2kr
	end --text.kara( )
	
	function text.infx( syl_in_fx, true_false )
		local Syls_in_fx, t_or_f = { }, true
		if true_false then
			t_or_f = false
		else
			t_or_f = true
		end
		local Stxt1, fx_in
		for i = 1, linefx[ii].syl.n do
			Stxt1 = linefx[ii].syl[i].text
			if Stxt1 ~= Stxt1:gsub( "+fx", "" ) then
				fx_in = { }
				table.insert( fx_in, i )
				table.insert( fx_in, linefx[ii].syl.n )
				for k = i, linefx[ii].syl.n do
					if linefx[ii].syl[k].text ~= linefx[ii].syl[k].text:gsub( "-fx", "" ) then
						table.insert( fx_in, k )
					end
				end
				table.sort( fx_in, function( a, b ) return a < b end )
				for k = i, fx_in[table.index( fx_in, i ) + 1] do
					table.insert( Syls_in_fx, k )
				end
			elseif Stxt1 ~= Stxt1:gsub( "-fx", "" ) then
				table.insert( Syls_in_fx, i )
			end
		end
		if table.inside( Syls_in_fx, val_i ) == t_or_f then
			return syl_in_fx
		end
		if syl_in_fx == linefx[ii].syl[val_i].text1 then
			return nil
		end
		if type( syl_in_fx ) == "number" then
			return 0
		end
		return ""
	end
	
	function text.outfx( syl_out_fx )
		return text.infx( syl_out_fx, 2 )
	end
	sylfx = { infx = text.infx, outfx = text.outfx }
	
	function text.tag( ... )
		local txt_tag = { ... }
		local txt_chr, txt_2tg, txt_val, txt_tgi, txt_tgf, txt_mdl = { }, "", "", "", "", 0
		for c in unicode.chars( val_text ) do
			table.insert( txt_chr, c )
		end
		for i = 1, #txt_chr do
			txt_tgf = ""
			if #txt_chr == 1 then
				txt_mdl = 0
			else
				txt_mdl = (i - 1)/(#txt_chr - 1)
			end
			for k = 1, #txt_tag do
				if type( txt_tag[k] ) == "table" then
					txt_val = math.round( tag.ipol( txt_tag[k][2], txt_tag[k][3], txt_mdl ), 3 )
					txt_tgi = format( "%s%s", txt_tag[k][1], txt_val )
				else
					txt_tgi = txt_tag[k]
				end
				txt_tgf = txt_tgf .. txt_tgi
			end
			if txt_chr[i] == " " then
				txt_2tg = txt_2tg .. " "
			else
				txt_2tg = txt_2tg .. format( "{%s}%s", txt_tgf, txt_chr[i] )
			end
		end
		return txt_2tg
	end -- text.tag( { "\\fax", -0.2, 0.4 }, "\\1c&HFFFFFF&" )
	
	text.romaji = {
		"a",	"i",	"u",	"e",	"o",	"ya",	"yu",	"yo",
		"ka",	"ki",	"ku",	"ke",	"ko",	"kya",	"kyu",	"kyo",
		"sa",	"shi",	"su",	"se",	"so",	"sha",	"shu",	"sho",
		"ta",	"chi",	"tsu",	"te",	"to",	"cha",	"chu",	"cho",
		"na",	"ni",	"nu",	"ne",	"no",	"nya",	"nyu",	"nyo",
		"ha",	"hi",	"fu",	"he",	"ho",	"hya",	"hyu",	"hyo",
		"ma",	"mi",	"mu",	"me",	"mo",	"mya",	"myu",	"myo",
		"ya",			"yu",			"yo",
		"ra",	"ri",	"ru",	"re",	"ro",	"rya",	"ryu",	"ryo",
		"wa",	"wi",			"we",	"wo",
		"n",
		"ga",	"gi",	"gu",	"ge",	"go",	"gya",	"gyu",	"gyo",
		"za",	"ji",	"zu",	"ze",	"zo",	"ja",	"ju",	"jo",
		"da",	"di",	"du",	"de",	"do",
		"ba",	"bi",	"bu",	"be",	"bo",	"bya",	"byu",	"byo",
		"pa",	"pi",	"pu",	"pe",	"po",	"pya",	"pyu",	"pyo",
		"b",	"c",	"d",	"k",	"p",	"r",	"s",	"t",	"z"
	}
	
	text.hiragana = {
		"あ",	"い",	"う",	"え",	"お",	"ゃ",	"ゅ",	"ょ",
		"か",	"き",	"く",	"け",	"こ",	"きゃ",	"きゅ",	"きょ",
		"さ",	"し",	"す",	"せ",	"そ",	"しゃ",	"しゅ",	"しょ",
		"た",	"ち",	"つ",	"て",	"と",	"ちゃ",	"ちゅ",	"ちょ",
		"な",	"に",	"ぬ",	"ね",	"の",	"にゃ",	"にゅ",	"にょ",
		"は",	"ひ",	"ふ",	"へ",	"ほ",	"ひゃ",	"ひゅ",	"ひょ",
		"ま",	"み",	"む",	"め",	"も",	"みゃ",	"みゅ",	"みょ",
		"や",			"ゆ",			"よ",
		"ら",	"り",	"る",	"れ",	"ろ",	"りゃ",	"りゅ",	"りょ",
		"わ",	"ゐ",			"ゑ",	"を",
		"ん",
		"が",	"ぎ",	"ぐ",	"げ",	"ご",	"ぎゃ",	"ぎゅ",	"ぎょ",
		"ざ",	"じ",	"ず",	"ぜ",	"ぞ",	"じゃ",	"じゅ",	"じょ",
		"だ",	"ぢ",	"づ",	"で",	"ど",
		"ば",	"び",	"ぶ",	"べ",	"ぼ",	"びゃ",	"びゅ",	"びょ",
		"ぱ",	"ぴ",	"ぷ",	"ぺ",	"ぽ",	"ぴゃ",	"ぴゅ",	"ぴょ",
		"っ",	"っ",	"っ",	"っ",	"っ",	"っ",	"っ",	"っ",	"っ"
	}
	
	text.katakana = {
		"ア",	"イ",	"ウ",	"エ",	"オ",	"ャ",	"ュ",	"ョ",
		"カ",	"キ",	"ク",	"ケ",	"コ",	"キャ",	"キュ",	"キョ",
		"サ",	"シ",	"ス",	"セ",	"ソ",	"シャ",	"シュ",	"ショ",
		"タ",	"チ",	"ッ",	"テ",	"ト",	"チャ",	"チュ",	"チョ",
		"ナ",	"ニ",	"ヌ",	"ネ",	"ノ",	"ニャ",	"ニュ",	"ニョ",
		"ハ",	"ヒ",	"フ",	"ヘ",	"ホ",	"ヒャ",	"ヒュ",	"ヒョ",
		"マ",	"ミ",	"ム",	"メ",	"モ",	"ミャ",	"ミュ",	"ミョ",
		"ヤ",			"ユ",			"ヨ",
		"ラ",	"リ",	"ル",	"レ",	"ロ",	"リャ",	"リュ",	"リョ",
		"ワ",	"ヰ",			"ヱ",	"ヲ",
		"ン",
		"ガ",	"ギ",	"グ",	"ゲ",	"ゴ",	"ギャ",	"ギュ",	"ギョ",
		"ザ",	"ジ",	"ズ",	"ゼ",	"ゾ",	"ジャ",	"ジュ",	"ジョ",
		"ダ",	"ヂ",	"ヅ",	"デ",	"ド",
		"バ",	"ビ",	"ブ",	"ベ",	"ボ",	"ビャ",	"ビュ",	"ビョ",
		"パ",	"ピ",	"プ",	"ペ",	"ポ",	"ピャ",	"ピュ",	"ピョ",
		"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ",	"ッ"
	}
	
	function text.karaoke_true( Table )
		local kT, D_kT = { "k", "K", "kf", "ko" }, { }
		for i = 1, #Table do
			D_kT[i] = { }
			for k = 1, 4 do
				for c_kar in Table[i]:gmatch( kT[k] .. "^?%d+" ) do
					table.insert( D_kT[i], c_kar:match( "%d+" ) )
				end
			end
			if #D_kT[i] == 0 then
				return false
			end
		end
		return true
	end
	
	function text.remove_tags( text_string )
		local  text_withouttags = text_string:gsub( "%b{}", "" )
		return text_withouttags
	end

	function text.remove_space_in_tags( text_str )
		local tags_raw, tags_KEx = { }, { }
		local tags_clp
		for c_rem in text_str:gmatch( "%b{}" ) do
			table.insert( tags_raw, c_rem )
		end
		for i = 1, #tags_raw do
			tags_KEx[i] = tags_raw[i]
			tags_clp = { }
			for c_clp in tags_KEx[i]:gmatch( "\\i?clip%b()" ) do
				table.insert( tags_clp, c_clp )
			end
			tags_KEx[i] = tags_raw[i]:gsub( " ", "" )
			for k = 1, #tags_clp do
				tags_KEx[i] = tags_KEx[i]:gsub( "\\i?clip%b()", tags_clp[k]:gsub( " ", "KEclip" ), 1 )
			end
		end
		for i = 1, #tags_KEx do
			text_str = text_str:gsub( tag.operation( tags_raw[i] ), tags_KEx[i], 1 )
		end
		return text_str
	end
	
	function text.remove_extra_space( linetext_str )
		local linetext_chars = { }
		for c_spc in unicode.chars( linetext_str ) do
			table.insert( linetext_chars, c_spc )
		end
		for i = 1, #linetext_chars do
			if linetext_chars[1] == " "
				or linetext_chars[1] == "	" then
				table.remove( linetext_chars, 1 )
			elseif linetext_chars[#linetext_chars] == " "
				or linetext_chars[#linetext_chars] == "	" then
				table.remove( linetext_chars, #linetext_chars )
			end
		end
		return table.op( linetext_chars, "concat" )
	end
	
	function text.remove_syls_nil( linetext_str, linetext_dur )	
		local syl_complete = text.text2syl( linetext_str, linetext_dur )
		local syl_tags, syl_texts, line_without_syl_nil = { }, { }, ""
		for i = 1, #syl_complete do
			syl_tags[i] = syl_complete[i]:match( "{%S+}" ) or ""
			syl_texts[i] = text.remove_tags( syl_complete[i] )
		end
		if syl_texts[1]
			and syl_texts[1]:gsub( " ", "" ):gsub( "	", "" ) == "" then
			syl_texts[1] = ""
		end
		if syl_texts[#syl_texts]
			and syl_texts[#syl_texts - 1]
			and syl_texts[#syl_texts]:gsub( " ", "" ):gsub( "	", "" ) == ""
			and syl_texts[#syl_texts - 1]:gsub( " ", "" ):gsub( "	", "" ) == "" then
			syl_texts[#syl_texts - 1] = ""
		end
		for i = 1, #syl_complete do
			line_without_syl_nil = line_without_syl_nil .. syl_tags[i] .. syl_texts[i]
		end
		return line_without_syl_nil
	end
	
	function text.to_word( l_text_str, l_text_dur )
		local txt_str = l_text_str:gsub( "\\N", " " )
		txt_str = text.remove_space_in_tags( l_text_str )
		local l_text_dur = l_text_dur or fx.dur
		local word_in_t = { }
		for c_wrd in txt_str:gmatch( "[{.-}]*[%S+]*[\32-\47\58-\64]*" ) do
			table.insert( word_in_t, c_wrd )
		end
		table.remove( word_in_t, #word_in_t )
		if word_in_t[1] then
			if unicode.len( text.remove_tags( word_in_t[1] ):gsub( " ", "" ):gsub( "	", "" ) ) == 0 then
				word_in_t[1] = word_in_t[1]:gsub( " ", "" ):gsub( "	", "" ) .. "KEfx"
			end
			if word_in_t[1] == "KEfx" then
				table.remove( word_in_t, 1 )
			end
		end
		if #word_in_t > 0 then
			word_in_t[#word_in_t] = word_in_t[#word_in_t]:gsub( " ", "" ):gsub( "	", "" )
		end
		if #word_in_t == 0 then
			word_in_t[1] = format( "{\\k%d}", l_text_dur/10 )
		end
		return word_in_t
	end
	
	function text.text2word( linetext_str, linetext_dur )
		local word_in_text = text.to_word( linetext_str, linetext_dur )
		local word_in_text_dur, k_tag = { }, { "k", "K", "kf", "ko" }
		local char_in_linetext_str
		if text.karaoke_true( word_in_text ) == true then
			for i = 1, #word_in_text do
				word_in_text_dur[i] = { }
				for k = 1, 4 do
					for c_2w in word_in_text[i]:gmatch( k_tag[k] .. "^?%d+" ) do
						table.insert( word_in_text_dur[i], c_2w:match( "%d+" ) )
					end
				end
				word_in_text_dur[i] = table.op( word_in_text_dur[i], "sum" )*10
			end
		else
			char_in_linetext_str = unicode.len( text.remove_tags( linetext_str ):gsub( " ", "" ) )
			for i = 1, #word_in_text do
				word_in_text_dur[i] = math.round( unicode.len( text.remove_tags( word_in_text[i] ):gsub( " ", "" ) )*linetext_dur/char_in_linetext_str, 3 )
			end
		end
		return word_in_text, word_in_text_dur
	end
	
	function text.text2syl( linetext_str, linetext_dur )
		local word_in_text = text.to_word( linetext_str, linetext_dur )
		local syl_in_text, syl_in_text_dur, k_tag = { }, { }, { "k", "K", "kf", "ko" }
		local char_in_linetext_str
		if text.karaoke_true( word_in_text ) == true then
			for i = 1, #word_in_text do
				for c_2s1 in word_in_text[i]:gmatch( "{.-}[\32-\122\124\126-\255]*" ) do
					table.insert( syl_in_text, c_2s1 )
				end
			end
			for i = 1, #syl_in_text do
				if text.remove_tags( syl_in_text[i] )== "" then
					syl_in_text[i] = syl_in_text[i] .. "KEfx"
				end
			end
			for i = 1, #syl_in_text do
				syl_in_text_dur[i] = { }
				for k = 1, 4 do
					for c_2s2 in syl_in_text[i]:gmatch( k_tag[k] .. "^?%d+" ) do
						table.insert( syl_in_text_dur[i], c_2s2:match( "%d+" ) )
					end
				end
				syl_in_text_dur[i] = table.op( syl_in_text_dur[i], "sum" )*10
			end
		else
			syl_in_text = word_in_text
			char_in_linetext_str = unicode.len( text.remove_tags( linetext_str ):gsub( " ", "" ) )
			for i = 1, #word_in_text do
				syl_in_text_dur[i] = math.round( unicode.len( text.remove_tags( word_in_text[i] ):gsub( " ", "" ) )*linetext_dur/char_in_linetext_str, 3 )
			end
		end
		return syl_in_text, syl_in_text_dur
	end
	
	function text.text2char( linetext_str, linetext_dur )
		local word_in_text = text.to_word( linetext_str, linetext_dur )
		local syl_in_text, syl_in_text_stp, syl_in_text_dur = { }, { }, { }
		local char_in_text, char_in_text_dur, k_tag = { }, { }, { "k", "K", "kf", "ko" }
		local char_in_linetext_str
		if text.karaoke_true( word_in_text ) == true then
			for i = 1, #word_in_text do
				for c_2c1 in word_in_text[i]:gmatch( "{.-}[\32-\122\124\126-\255]*" ) do
					table.insert( syl_in_text, c_2c1 )
				end
			end
			for i = 1, #syl_in_text do
				if text.remove_tags( syl_in_text[i] )== "" then
					syl_in_text[i] = syl_in_text[i] .. "KEfx"
				end
			end
			for i = 1, #syl_in_text do
				syl_in_text_dur[i] = { }
				for k = 1, 4 do
					for c_2c2 in syl_in_text[i]:gmatch( k_tag[k] .. "^?%d+" ) do
						table.insert( syl_in_text_dur[i], c_2c2:match( "%d+" ) )
					end
				end
				syl_in_text_dur[i] = table.op( syl_in_text_dur[i], "sum" )*10
			end
			for i = 1, #syl_in_text do
				syl_in_text_stp[i] = text.remove_tags( syl_in_text[i] )
				if syl_in_text_stp[i] == "KEfx" then
					table.insert( char_in_text, "KEfx" )
				else
					for c_2c3 in unicode.chars( syl_in_text_stp[i] ) do
						table.insert( char_in_text, c_2c3 )
					end
				end
				if syl_in_text_stp[i] == "KEfx" then
					table.insert( char_in_text_dur, syl_in_text_dur[i] )
				else
					if syl_in_text_stp[i]:gsub( " ", "" ) == ""
						or syl_in_text_stp[i]:gsub( " ", "" ) == syl_in_text_stp[i] then
						for k = 1, unicode.len( syl_in_text_stp[i] ) do
							table.insert( char_in_text_dur, math.round( syl_in_text_dur[i]/unicode.len( syl_in_text_stp[i] ), 2 ) )
						end
					else
						for k = 1, unicode.len( syl_in_text_stp[i] ) do
							if table.string( syl_in_text_stp[i] )[k] == " " then
								table.insert( char_in_text_dur, 0 )
							else
								table.insert( char_in_text_dur, math.round( syl_in_text_dur[i]/unicode.len( syl_in_text_stp[i]:gsub( " ", "" ) ), 2 ) )
							end
						end
					end
				end
			end
		else
			for c_2c4 in unicode.chars( text.remove_tags( linetext_str ) ) do
				table.insert( char_in_text, c_2c4 )
			end
			char_in_linetext_str = #table.retire( table.duplicate( char_in_text ), " " )
			for i = 1, #char_in_text do
				if char_in_text[i] == " "
					or char_in_text[i] == "" then
					table.insert( char_in_text_dur, 0 )
				else
					table.insert( char_in_text_dur, math.round( linetext_dur/char_in_linetext_str, 3 ) )
				end
			end
		end
		return char_in_text, char_in_text_dur
	end
	
	function text.syl2hiragana( Text )
		local I_I
		if table.inside( text.romaji, Text:lower( ):match( "%w+" ) ) == true then
			I_I = table.index( text.romaji, Text:lower( ):match( "%w+" ) )
			return Text:lower( ):gsub( text.romaji[I_I], text.hiragana[I_I] )
		elseif table.inside( text.katakana, Text:match( "[\128-\255]+" ) ) == true then
			I_I = table.index( text.katakana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.katakana[I_I], text.hiragana[I_I] )
		end
		return Text
	end
	
	function text.syl2katakana( Text )
		local I_I
		if table.inside( text.romaji, Text:lower( ):match( "%w+" ) ) == true then
			I_I = table.index( text.romaji, Text:lower( ):match( "%w+" ) )
			return Text:lower( ):gsub( text.romaji[I_I], text.katakana[I_I] )
		elseif table.inside( text.hiragana, Text:match( "[\128-\255]+" ) ) == true then
			I_I = table.index( text.hiragana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.hiragana[I_I], text.katakana[I_I] )
		end
		return Text
	end
	
	function text.kana2romaji( Text )
		local I_I
		if table.inside( text.hiragana, Text:match( "[\128-\255]+" ) ) == true then
			I_I = table.index( text.hiragana, Text:match( "[\128-\255]+" ) )
			return Text:gsub( text.hiragana[I_I], text.romaji[I_I] )
		elseif table.inside( text.katakana, Text:match( "[\128-\255]+" ) ) == true then
			I_I = table.index( text.katakana, Text:match( "[\128-\255]+" ) )
			return Text:gsub(text.katakana[I_I], text.romaji[I_I])
		end
		return Text
	end
	
	function text.text2stripped( text_str4 )
		local text_str4 = text.remove_tags( text_str4 )
		if unicode.len( text_str4:gsub( " ", "" ) ) == 0 then
			return text_str4
		end
		return text_str4:gsub( " ", "" )
	end

	function text.char_size( )
		local char_DS = _ds or 0.85
		local char_ds = char_DS*l.descent
		local char_t1 = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N",
			"O", "P", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "á", "é", "í", "ó", "ú", "ü",
			"b", "d", "f", "h", "i", "k", "l", "ñ", "t" }
		local char_t2 = { "Ñ", "Á", "É", "Í", "Ó", "Ú", "Ü" }
		local char_t3 = { "g", "p", "q", "y" }
		local char_t4 = { "a", "c", "e", "m", "n", "o", "r", "s", "u", "v", "w", "w", "x", "z" }
		local char_t5 = { "Q", "j" }
		if table.inside( char_t1, val_text ) == true then
			c_top	 = l.top + char_ds
			c_bottom = l.bottom - char_ds
			c_height = l.height - 2*char_ds
		elseif table.inside( char_t2, val_text ) == true then
			c_top	 = l.top
			c_bottom = l.bottom - char_ds
			c_height = l.height - char_ds
		elseif table.inside( char_t3, val_text ) == true then
			c_top	 = l.top + 2*char_ds
			c_bottom = l.bottom
			c_height = l.height - 2*char_ds
		elseif table.inside( char_t4, val_text ) == true then
			c_top	 = l.top + 2*char_ds
			c_bottom = l.bottom - char_ds
			c_height = l.height - 3*char_ds
		elseif table.inside( char_t5, val_text ) == true then
			c_top	 = l.top + char_ds
			c_bottom = l.bottom
			c_height = l.height - char_ds
		else
			c_top	 = l.top
			c_bottom = l.bottom
			c_height = val_height
		end
	end
	
	function text.char2byte( string_text )
		local bytes = { }
		for c in unicode.chars( string_text ) do
			table.insert( bytes, c:byte( ) )
		end
		return bytes
	end
	
	function text.byte2char( table_bytes )
		return string.char( unpack( table_bytes ) )
	end
	
	function text.inside( inside, Text )
		local text_ins = Text
		local inside = inside or ""
		if text_ins == nil then
			if fx__.t_type == "Line"
				or fx__.t_type == "Translation Line" 
				or fx__.t_type == "Template Line [Word]"
				or fx__.t_type == "Template Line [Syl]"
				or fx__.t_type == "Template Line [Char]" then
				text_ins = linefx[ii].text_raw
			elseif fx__.t_type == "Word"
				or fx__.t_type == "Translation Word" then		
				text_ins = linefx[ii].word[val_i].text_raw
			elseif fx__.t_type == "Syl"
				or fx__.t_type == "Convert to Hiragana"
				or fx__.t_type == "Convert to Katakana"
				or fx__.t_type == "Convert to Romaji" then
				text_ins = linefx[ii].syl[val_i].text_raw
			elseif fx__.t_type == "Char"
				or fx__.t_type == "Translation Char" then		
				text_ins = linefx[ii].char[val_i].text_raw
			else
				text_ins = val_text
			end
		end
		if text_ins:match( inside ) then
			return true
		end
		return false
	end --text.inside( "-fx" )
	
	function text.bezier( Shape, mode, Accel, Offset_time )
		if Shape == nil then
			Shape = ""
			if linefx[ii].text:match( "\\i?clip%b()" ) then
				Shape = linefx[ii].text:match( "\\i?clip%b()" )
			else
				Shape = shape.displace( format( "m 0 0 l %d 0", l_width ), l_left, l_middle )
			end
		end
		Shape = shape.ASSDraw3( Shape )
		if type( Shape ) == "string" then
			local mode = mode or 2
			if l_actor:match( "circle" )
				and Shape:match( "\\i?clip%b()" ) then
				local center_x, center_y, Radius = math.circle( Shape )
				local ang_x, ang_y
				local Coor = { }
				for c in Shape:gmatch( "%-?%d+[%.%d]*" ) do
					table.insert( Coor, tonumber( c ) )
				end
				ang_x, ang_y = center_x, center_y
				if Coor[7] then
					ang_x, ang_y = Coor[7], Coor[8]
				end
				local angle = math.angle( center_x, center_y, ang_x, ang_y )
				local shape_crc = shape.centerpos( shape.size( shape.circle, 2*(Radius + effect_val[1]) ) )
				shape_crc = shape.displace( shape.rotate( shape_crc, angle - 90 + effect_val[2] ), center_x, center_y )
				if l_actor:match( "icircle" ) then
					shape_crc = shape.reverse( shape_crc )
				end
				if mode >= 5 then
					mode = mode%5 + 1
					return math.bezier2move( shape_crc, mode, Accel, Offset_time )
				end
				return math.bezier2( shape_crc, mode )
			end
			if mode >= 5 then
				mode = mode%5 + 1
				return math.bezier2move( Shape, mode, Accel, Offset_time )
			end
			return math.bezier2( Shape, mode )
		elseif type( Shape ) == "table" then
			local t1 = Aceel
			local t2 = Offset_time
			if mode >= 5 then
				mode = mode%5 + 1
			end
			return math.movebezier( Shape, t1, t2, mode )
		end		
	end --text.bezier( )
	
	function text.inclip( ) -- 5-11-14 fase de pruebas
		local Shape, Lclip = "", ""
		for i = 1, l_n do
			if linefx[ii + i - 1].text:match( "\\i?clip%b()" ) then
				Lclip = shape.ASSDraw3( linefx[ii + i - 1].text:match( "\\i?clip%b()" ) )
				
			end
			Shape = Shape .. Lclip
		end
		noblank1 = "KE"
		--lines_comment = false
		--subtitles.delete( idx_line[l_i] + ii )
		--fx__.modify = true
		fxgroup = ( l_i == 1 )
		fx__.namefx = "raw"
		if Shape:gsub( " ", "" ) == "" then
			return nil
		end
		return format( "{\\clip(%s)%s", Shape, linefx[ii].text:gsub( "\\i?clip%b()", "" ):gsub( "{", "" ) )
	end--]]
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "text" usando Yutils.lua by Youka --------------------------------------
	function text.to_shape( Text, Scale, Tags, Offset )
		local Text = Text or val_text
		while Text:sub( -1, -1 ) == " " do
			Text = Text:sub( 1, -2 )
		end
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local text_font = Yutils.decode.create_font( l.fontname, l.bold, l.italic, l.underline, l.strikeout, l.fontsize, text_scale*l.scale_x/100, text_scale*l.scale_y/100, l.spacing )
		local text_shape = shape.ASSDraw3( text_font.text_to_shape( Text ) )
		local text_off_x = 0.5*(shape.width( text_shape ) - text_scale*aegisub.width( Text ))
		local text_off_y = 0.5*(shape.height( text_shape ) - text_scale*aegisub.height( Text ))
		if Offset then
			text_off_x = 0
			text_off_y = 0
		end
		text_shape = shape.displace( text_shape, text_off_x, text_off_y )
		if Tags then
			return format( "{\\p%d}%s", shape_scale, text_shape )
		end
		return text_shape
	end --text.to_shape( syl.text, 1, nil )
	
	function text.bord_to_shape( Text, Scale, Tags, Bord )
		local Text = Text or val_text
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local text_shape = text.to_shape( Text, text_scale )
		local bord_width = Bord or 2
		local bord_shape = shape.ASSDraw3( Yutils.shape.to_outline( Yutils.shape.flatten( text_shape, 2 ), bord_width*text_scale/2, bord_width*text_scale/2 ) )
		if Tags then
			return format( "{\\p%d}%s", shape_scale, bord_shape )
		end
		return bord_shape
	end	--text.bord_to_shape( line.text_stripped, 8, true )

	function text.do_shape( Text, Shape, Scale, Mode, Tags, Split )
		local Text = Text or val_text
		local Split = Split or 2
		local text_scale = Scale or 1
		local shape_scale = math.round( math.log( text_scale, 2 ) + 1 )
		local Shape = Shape or format( "m %s %s l %s %s", val_left, val_bottom, val_right, val_bottom )
		Shape = shape.ratio( Shape, text_scale )
		shape.info( Shape )
		local text_shape = shape.filter2( text.to_shape( Text, text_scale, nil, true ), nil, Split*text_scale )
		local Ratio = math.round( (text_scale*aegisub.width( Text ))/shape.length( Shape ), 3 )
		local Mode = Mode or 1
		local Filter
		if type( Mode ) == "function" then
			Filter = Mode
		end
		local actor_offset, ratio_offset = 0, 0
		if l_actor:match( "%-?%d+[%.%d]*" ) then
			actor_offset = tonumber( l_actor:match( "%-?%d+[%.%d]*" ) )
		end
		ratio_offset = math.round( (text_scale*actor_offset)/shape.length( Shape ), 3 )
		if shape.length( Shape ) < text_scale*aegisub.width( Text ) then
			Filter = function( x, y ) return x, y end
		else
			if Mode == 1 then
				Filter = function( x, y ) return (1 - Ratio)/2 + ratio_offset + Ratio*x, y end
			elseif Mode == 2 then
				Filter = function( x, y ) return ratio_offset + Ratio*x, y end
			elseif Mode == 3 then
				Filter = function( x, y ) return 1 - Ratio - ratio_offset + Ratio*x, y end
			elseif Mode == 4 then
				Filter = function( x, y ) return x, y end
			end
		end
		local text_pos = effector.new_pos( 0, 0 )
		local text_do_shape = shape.ASSDraw3( Yutils.shape.glue( text_shape, Shape, Filter ) )
		if Tags then
			return format( "{\\an7%s\\p%d}%s", text_pos, shape_scale, text_do_shape )
		end
		return text_do_shape
	end	--text.do_shape( line.text_stripped, "m 102 352 b 359 190 882 184 1164 352", 8, 1, true )
	
	function text.deformed( Text, Deformed, Pixel, Axis )
		local Axis  = Axis or "x"
		local Pixel = Pixel or l.height
		local Deformed = Deformed or 2
		local DeformeD, PixeL = Deformed, Pixel
		if type( Axis ) == "table" then
			DeformeD = Axis[1]
			PixeL = Axis[2]
		end
		local text_def  = Text or val_text
		local text_shp1 = text.to_shape( text_def, 8 )
		local text_fltr = function( x, y )
			local px, py = x, y
			if Axis == "x" then
				y = y - 8*Pixel*sin( ((px - minx)/w_shape)*Deformed*pi )
			elseif Axis == "y" then
				x = x + 8*Pixel*sin( ((py - miny)/h_shape)*Deformed*pi )
			else
				x = x + 8*PixeL*sin( ((py - miny)/h_shape)*DeformeD*pi )
				y = y - 8*Pixel*sin( ((px - minx)/w_shape)*Deformed*pi )
			end
			return x, y
		end
		local text_shp2 = shape.filter2( text_shp1, text_fltr, 6 )
		return format( "{\\p4}%s", text_shp2 )
	end -- text.deformed( line.text_stripped, 8, 5, "y" )
	
	function text.deformed2( Text, Mode )
		local text_shape = text.to_shape( Text, 8, nil, true )
		shape.info( text_shape )
		local center_dx = minx + w_shape/2
		local center_dy = miny + h_shape/2
		if Mode == nil
			or Mode == 1 then
			local k = 0
			text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
				function( x, y )
					local def_angle = math.angle( center_dx, center_dy, x, y )
					k = k + 1
					return center_dx + math.polar( def_angle, 320 + 10*(-1)^k, "x" ), center_dy + math.polar( def_angle, 320 + 10*(-1)^k, "y" )
				end
			)
		elseif Mode == 2 then
			text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
				function( x, y )
					local def_angle = math.angle( center_dx, center_dy, x, y )
					local des_dista = math.distance( center_dx, center_dy, x, y )
					local des_radiu = ((des_dista <= 80) and ((des_dista <= 60) and 70 or 140) or 200)
					return center_dx + math.polar( def_angle, des_radiu, "x" ), center_dy + math.polar( def_angle, des_radiu, "y" )
				end
			)
		elseif Mode == 3 then
			text_shape = Yutils.shape.filter( shape.redraw( text_shape, 6 ), 
				function( x, y )
					local def_angle = math.angle( center_dx, center_dy, x, y )
					local def_angRE = (def_angle - 1)%60 + 1
					local def_ang3A = 180 - 60 - def_angRE
					local des_radiu = 200
					local des_dista = des_radiu*sin( rad( 60 ) )/sin( rad( def_ang3A ) )
					local des_radDE = ((math.distance( center_dx, center_dy, x, y ) <= 80) and des_dista/2 or des_dista)
					return center_dx + math.polar( def_angle, des_radDE, "x" ), center_dy + math.polar( def_angle, des_radDE, "y" )
				end
			)
		end
		local text_pos = effector.new_pos( fx.pos_l, fx.pos_t )
		return format( "{\\an7%s\\p4}%s", text_pos, shape.ASSDraw3( text_shape ) )
	end -- text.deformed2(syl.text)

	function text.to_pixels( Text, Mode, Shape, Space, Ratio )
		local text_2pixel = Text or val_text
		local shape_pixel = Shape or shape.pixel
		local Ratio = Ratio or 1
		local pixel_table, Px, Py
		local pixel_datas, pixel, pixel_pos = { }, { }, ""
		if j == 1 then
			pixel_table = Yutils.shape.to_pixels( shape.ratio( text.to_shape( text_2pixel, 1, nil, true ), Ratio ) )
			pixel = remember( "pxl", { } )
			for i = 1, #pixel_table do
				pixel_datas[i] = { }
				for k, v in pairs( pixel_table[i] ) do
					table.insert( pixel_datas[i], v )
				end
			end
			for i = 1, #pixel_table do
				pixel[i] = { }
				pixel[i].x = fx.pos_l + pixel_datas[i][2] - 0.5*(Ratio - 1)*aegisub.width( text_2pixel )
				pixel[i].y = fx.pos_t + pixel_datas[i][1] - 0.5*(Ratio - 1)*aegisub.height( text_2pixel )
				pixel[i].a = ass_alpha( 255 - pixel_datas[i][3] )
			end
			maxloop( #pixel_datas )
			Px, Py = remember( "PPx", { } ), remember( "PPy", { } )
			for i = 1, 5 do
				Px[i] = R( 20, 50 )*(-1)^R( 2 )
				Py[i] = R( 20, 50 )*(-1)^R( 2 )
			end
		else
			Px, Py = recall.PPx, recall.PPy
			pixel = recall.pxl
		end
		local to_an = math.angle( fx.move_x1, fx.move_y1, pixel[j].x, pixel[j].y )
		if Space
			and R( Space ) ~= 1 then
			return nil
		end
		if Mode == nil
			or Mode == 1 then
			pixel_pos = effector.new_pos( pixel[j].x, pixel[j].y )
			return format( "{%s\\1a%s\\bord0\\shad0\\p1}%s", pixel_pos, pixel[j].a, shape_pixel )
		elseif Mode == 2 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1}%s", pixel[j].x, pixel[j].y, 
			fx.move_x1 + 1.00*math.polar( to_an, 40 + R( -6, 6 ), "x" ), 
			fx.move_y1 + 1.00*math.polar( to_an, 40 + R( -6, 6 ), "y" ), pixel[j].a, shape_pixel )
		elseif Mode == 3 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1}%s", pixel[j].x, pixel[j].y, 
			fx.move_x1 + 0.75*math.polar( to_an, 40 + R( -6, 6 ), "x" ), 
			fx.move_y1 + 1.55*math.polar( to_an, 40 + R( -6, 6 ), "y" ), pixel[j].a, shape_pixel )
		elseif Mode == 4 then
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1}%s", pixel[j].x, pixel[j].y, 
			fx.move_x1 + 1.25*math.polar( to_an, 40 + R( -6, 6 ), "x" ), 
			fx.move_y1 + 0.35*math.polar( to_an, 40 + R( -6, 6 ), "y" ) + 20*R( -1, 1 ), pixel[j].a, shape_pixel )
		elseif Mode == 5 then
			local DDx, DDy = math.confi_bezier( 5, Px, Py, R( 0, 100 )/100 )
			return format( "{\\move(%s,%s,%s,%s)\\1a%s\\bord0\\fad(0,200)\\p1}%s", pixel[j].x, pixel[j].y, 
			fx.move_x1 + DDx + R( -6, 6 ), fx.move_y1 + DDy + R( -6, 6 ), pixel[j].a, shape_pixel )
		end
	end --text.to_pixels( )
	
	function text.to_clip( Text, relative_pos, iclip )
		local Text = Text or val_text
		local text_clip = text.to_shape( Text, 1, nil, true )
		local text_mode
		if relative_pos then
			text_clip = shape.displace( text_clip, val_left, val_top )
		else
			text_clip = shape.displace( text_clip, fx.move_l1, fx.move_t1 )
		end
		if iclip then
			text_mode = "i"
		else
			text_mode = ""
		end
		return format( "\\%sclip(%s)", text_mode, text_clip )
	end --text.to_clip( syl.text )
	
	function text.bord_to_pixel( Text, Shape )
		local bord_shape = Shape or shape.pixel
		local text_2bord = Text or val_text
		local text_shape = text.to_shape( text_2bord, 1, nil, true )
		text_shape = shape.displace( text_shape, fx.move_l1, fx.move_t1 )
		local bord_x, bord_y = math.bezier( 1, text_shape )
		return format( "{\\pos(%s,%s)\\bord0\\shad0\\p1}%s", bord_x, bord_y, bord_shape )
	end --text.bord_to_pixel( syl.text )
	
	function text.gradienth( ... )
		local shp_w = 1
		local Shape, cn = "", ceil( val_width/shp_w )
		local gradh = table.gradient3( { cn }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", gradh[i], shape.size( shape.rectangle, shp_w, ceil( val_height ) ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradienth( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientv( ... )
		local shp_h = 1
		local Shape, cn = "", ceil( val_height/shp_h )
		local gradv = table.gradient3( { cn }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s{\\p0}\\N", gradv[i], shape.size( shape.rectangle, ceil( val_width ), shp_h ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradientv( "&H00FFFF&", "&H0000FF&" )
	
	function text.gradientangle( Angle, ... )
		local shp_s = 1
		local Angle = Angle or 0
		local shp_w = math.round( abs( val_width*cos( rad( Angle ) ) + val_height*sin( rad( Angle ) ) + 1 ) )
		local shp_h = math.round( abs( val_width*sin( rad( Angle ) ) + val_height*cos( rad( Angle ) ) + 1 ) )
		local Shape, cn = format( "{\\fr%s}", Angle%361 ), ceil( shp_w/shp_s )
		local grada = table.gradient3( { cn }, ... )
		for i = 1, cn do
			Shape = Shape .. format( "{\\1c%s\\p1}%s", grada[i], shape.size( shape.rectangle, shp_s, shp_h ) )
		end
		return format( "{%s\\bord0\\shad0}%s", text.to_clip( ), Shape )
	end --text.gradientangle( 45, "&H00FFFF&", "&H0000FF&" )
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "image" usando Yutils.lua by Youka -------------------------------------
	function image.data( bmp_image, Return )
		local bmp_color, bmp_alpha = { }, { }
		local bmp_image = bmp_image or "test.bmp"
		local bmp_xdata = Yutils.decode.create_bmp_reader( bmp_image ).data_packed( )
		for i = 1, #bmp_xdata do
			bmp_color[i] = ass_color( bmp_xdata[i].r, bmp_xdata[i].g, bmp_xdata[i].b )
			bmp_alpha[i] = ass_alpha( 255 - bmp_xdata[i].a )
		end
		if Return == "color" then
			return bmp_color
		end
		if Return == "alpha" then
			return bmp_alpha
		end
		return bmp_color, bmp_alpha
	end --image.data( )
	
	function image.to_pixels( bmp_image, Size )
		local bmp_color, bmp_alpha
		local bmp_image = bmp_image or "test.bmp"
		local Size = Size or 1
		if j == 1 then
			bmp_color = remember( "clr", image.data( bmp_image, "color" ) )
			bmp_alpha = remember( "alp", image.data( bmp_image, "alpha" ) )
			maxloop( #bmp_color )
		else
			bmp_color, bmp_alpha = recall.clr, recall.alp
		end
		local bmp_wth = Yutils.decode.create_bmp_reader( bmp_image ).width( )
		local bmp_hht = Yutils.decode.create_bmp_reader( bmp_image ).height( )
		local posx = fx.pos_x + ((j - 1)%bmp_wth + 1)*Size - bmp_wth*Size/2 + Size/2
		local posy = fx.pos_y + ceil( j/bmp_hht - 1 )*Size - bmp_hht*Size/2 + Size/2
		if bmp_alpha[j] == "&HFF&" then
			return nil
		end
		local bmp_tag = effector.new_pos( posx, posy )
		bmp_tag = format( "{%s\\1c%s\\1a%s}", bmp_tag, bmp_color[j], bmp_alpha[j] )
		return format( "%s{\\bord0\\shad0\\fscx%s\\fscy%s\\p1}%s", bmp_tag, 100*Size, 100*Size, shape.pixel )
	end -- image.to_pixels( )
	
	-------------------------------------------------------------------------------------------------
	-- Librería de Funciones "aegisub" --------------------------------------------------------------
	function aegisub.word( line_text, line_dur, ci_ )
		line_text = line_text:gsub( "\\N", " " ):gsub( "  ", " " )
		words_line2, words_dur2 = text.text2word( line_text, line_dur )
		word_fx = { n = #words_line2 }
		words_left2 = l_left
		words_start2 = 0
		for k = 1, #words_line2 do
			word_fx[k]					= { }
			word_fx[k].text				= words_line2[k]
			word_fx[k].text_raw			= word_fx[k].text
			word_fx[k].text_stripped	= text.text2stripped( words_line2[k] )
			word_fx[k].text1			= text.remove_tags( words_line2[k] ):gsub( "KEfx", "" )
			word_fx[k].text2			= word_fx[k].text_stripped:gsub( "KEfx", "" )
			word_fx[k].width_t			= aegisub.width( word_fx[k].text1 )
			word_fx[k].width			= aegisub.width( word_fx[k].text2 )
			word_fx[k].left				= words_left2 
			word_fx[k].center			= words_left2 + word_fx[k].width/2
			word_fx[k].right			= words_left2 + word_fx[k].width
			word_fx[k].top				= l_top
			word_fx[k].middle			= l_middle
			word_fx[k].bottom			= l_bottom
			word_fx[k].height			= l_height
			word_fx[k].duration			= words_dur2[k]
			word_fx[k].dur				= words_dur2[k]
			word_fx[k].start_time		= words_start2
			word_fx[k].end_time			= words_start2 + word_fx[k].duration
			word_fx[k].mid_time			= words_start2 + word_fx[k].duration/2
			words_left2 				= words_left2  + word_fx[k].width_t
			words_start2				= words_start2 + word_fx[k].duration
		end
		ci_  = ci_ or 1
		word = word_fx[ci_]
		word.i = ci_
		word.n = word_fx.n
		word.text_ = word.text
		word.text  = word.text_stripped:gsub( "KEfx", "" )
		return ""
	end
	
	function aegisub.word2s( )
		w_txt, w_dur = text.text2word( linefx[ii].text, linefx[ii].duration )
		s_txt, w_len, w_fnl = { }, { }, { [0] = 0 }
		for i = 1, #w_txt do
			s_txt[i] = text.text2syl( w_txt[i], w_dur[i] )
			w_len[i] = #s_txt[i]
		end
		for i = 1, #w_txt do
			w_fnl[i] = w_fnl[i - 1] + w_len[i]
		end
		for i = 1, #w_txt do
			if syl.i >= w_fnl[i - 1]
				and syl.i <= w_fnl[i] then
				return i
			end
		end
	end

	function aegisub.wordsi( ws_ )
		ws_txt, ws_dur = text.text2word( linefx[ii].text, linefx[ii].duration )
		sw_txt, w_syli, w_syln = { }, { }, { }
		for i = 1, #ws_txt do
			sw_txt[i] = text.text2syl( ws_txt[i], ws_dur[i] )
		end
		for i = 1, #ws_txt do
			for k = 1, #sw_txt[i] do
				table.insert( w_syli, k )
				table.insert( w_syln, #sw_txt[i] )
			end
		end
		return w_syli[ws_], w_syln[ws_]
	end
	
	function aegisub.syls2c( )
		c_txt = { }
		for char_1 in unicode.chars( syl.text:gsub( "KEfx", "" ):gsub( noblank2, "" ) ) do
			table.insert( c_txt, char_1 )
		end
		if #c_txt == 0 then
			c_txt[1] = ""
		end
		charsyl   = { n = #c_txt }
		charsyl_d = syl.dur/charsyl.n
		charsyl_l = syl.left
		charsyl_s = syl.start_time
		for k = 1, charsyl.n do
			charsyl[k]			  = { }
			charsyl[k].text		  = c_txt[k]
			charsyl[k].text_raw	  = charsyl[k].text
			charsyl[k].width	  = aegisub.text_extents( L, charsyl[k].text )
			charsyl[k].left		  = charsyl_l 
			charsyl[k].center	  = charsyl_l + charsyl[k].width/2
			charsyl[k].right	  = charsyl_l + charsyl[k].width
			charsyl[k].top		  = syl.top
			charsyl[k].middle	  = syl.middle
			charsyl[k].bottom	  = syl.bottom
			charsyl[k].height	  = syl.height
			charsyl[k].duration	  = charsyl_d
			charsyl[k].dur		  = charsyl_d
			charsyl[k].start_time = charsyl_s
			charsyl[k].end_time	  = charsyl[k].start_time + charsyl_d
			charsyl[k].mid_time	  = charsyl[k].start_time + charsyl_d/2
			charsyl_l 			  = charsyl_l + charsyl[k].width
			charsyl_s			  = charsyl_s + charsyl[k].dur
		end
		char = charsyl
		return ""
	end
	
	function aegisub.line2W( )
		w_txt, w_dur = text.text2word( linefx[ii].text, linefx[ii].duration )
		if #w_txt == 0 then
			w_txt[1] = ""
		end
		wordline   = { n = #w_txt }
		wordline_l = linefx[ii].left
		wordline_s = 0
		for k = 1, wordline.n do
			wordline[k]					= { }
			wordline[k].text_			= w_txt[k]
			wordline[k].text_raw		= wordline[k].text_
			wordline[k].text_stripped	= text.text2stripped( w_txt[k] )
			wordline[k].text			= wordline[k].text_stripped:gsub( "KEfx", "" )
			wordline[k].text1			= text.remove_tags( w_txt[k] ):gsub( "KEfx", "" )
			wordline[k].text2			= wordline[k].text_stripped:gsub( "KEfx", "" )
			wordline[k].width_t			= aegisub.text_extents( L, wordline[k].text1 )
			wordline[k].width			= aegisub.text_extents( L, wordline[k].text2 )
			wordline[k].left			= wordline_l 
			wordline[k].center			= wordline_l + wordline[k].width/2
			wordline[k].right			= wordline_l + wordline[k].width
			wordline[k].top				= linefx[ii].top
			wordline[k].middle			= linefx[ii].middle
			wordline[k].bottom			= linefx[ii].bottom
			wordline[k].height			= linefx[ii].height
			wordline[k].duration		= w_dur[k]
			wordline[k].dur				= w_dur[k]
			wordline[k].start_time		= wordline_s
			wordline[k].end_time		= wordline[k].start_time + w_dur[k]
			wordline[k].mid_time		= wordline[k].start_time + w_dur[k]/2
			wordline_l 					= wordline_l + wordline[k].width_t
			wordline_s					= wordline_s + wordline[k].dur
		end
		word = wordline
		return ""
	end
	
	function aegisub.line2S( )
		s_txt, s_dur = text.text2syl( linefx[ii].text, linefx[ii].duration )
		if #s_txt == 0 then
			s_txt[1] = ""
		end
		sylline   = { n = #s_txt }
		sylline_l = linefx[ii].left
		sylline_s = 0
		for k = 1, sylline.n do
			sylline[k]					= { }
			sylline[k].text_			= s_txt[k]
			sylline[k].text_raw			= sylline[k].text_
			sylline[k].text_stripped	= text.text2stripped( s_txt[k] )
			sylline[k].text				= sylline[k].text_stripped:gsub( "KEfx", "" )
			sylline[k].text1			= text.remove_tags( s_txt[k] ):gsub( "KEfx", "" )
			sylline[k].text2			= sylline[k].text_stripped:gsub( "KEfx", "" )
			sylline[k].width_t			= aegisub.text_extents( L, sylline[k].text1 )
			sylline[k].width			= aegisub.text_extents( L, sylline[k].text2 )
			sylline[k].left				= sylline_l 
			sylline[k].center			= sylline_l + sylline[k].width/2
			sylline[k].right			= sylline_l + sylline[k].width
			sylline[k].top				= linefx[ii].top
			sylline[k].middle			= linefx[ii].middle
			sylline[k].bottom			= linefx[ii].bottom
			sylline[k].height			= linefx[ii].height
			sylline[k].duration			= s_dur[k]
			sylline[k].dur				= s_dur[k]
			sylline[k].start_time		= sylline_s
			sylline[k].end_time			= sylline[k].start_time + s_dur[k]
			sylline[k].mid_time			= sylline[k].start_time + s_dur[k]/2
			sylline_l 					= sylline_l + sylline[k].width_t
			sylline_s					= sylline_s + sylline[k].dur
		end
		syl = sylline
		return ""
	end
	
	function aegisub.line2C( )
		c_txt = { }
		for char_2 in unicode.chars( linefx[ii].text_stripped:gsub( noblank2, "" ) ) do
			table.insert( c_txt, char_2 )
		end
		if #c_txt == 0 then
			c_txt[1] = ""
		end
		charline   = { n = #c_txt }
		charline_d = linefx[ii].duration/charline.n
		charline_l = linefx[ii].left
		charline_s = 0
		for k = 1, charline.n do
			charline[k]					= { }
			charline[k].text			= c_txt[k]
			charline[k].text_raw		= charline[k].text
			charline[k].text_stripped	= charline[k].text
			charline[k].width			= aegisub.text_extents( L, charline[k].text )
			charline[k].left			= charline_l 
			charline[k].center			= charline_l + charline[k].width/2
			charline[k].right			= charline_l + charline[k].width
			charline[k].top				= linefx[ii].top
			charline[k].middle			= linefx[ii].middle
			charline[k].bottom			= linefx[ii].bottom
			charline[k].height			= linefx[ii].height
			charline[k].duration		= charline_d
			charline[k].dur				= charline_d
			charline[k].start_time		= charline_s
			charline[k].end_time		= charline[k].start_time + charline_d
			charline[k].mid_time		= charline[k].start_time + charline_d/2
			charline_l 					= charline_l + charline[k].width
			charline_s					= charline_s + charline[k].dur
		end
		char = charline
		return ""
	end
	
	function aegisub.word2S( )
		s_txt, s_dur = text.text2syl( word.text_, word.dur )
		if #s_txt == 0 then
			s_txt[1] = ""
		end
		sylword   = { n = #s_txt }
		sylword_l = word.left
		sylword_s = word.start_time
		for k = 1, sylword.n do
			sylword[k]					= { }
			sylword[k].text_			= s_txt[k]
			sylword[k].text_raw			= sylword[k].text_
			sylword[k].text_stripped	= text.text2stripped( s_txt[k] )
			sylword[k].text				= sylword[k].text_stripped:gsub( "KEfx", "" )
			sylword[k].text1			= text.remove_tags( s_txt[k] ):gsub( "KEfx", "" )
			sylword[k].text2			= sylword[k].text_stripped:gsub( "KEfx", "" )
			sylword[k].width_t			= aegisub.text_extents( L, sylword[k].text1 )
			sylword[k].width			= aegisub.text_extents( L, sylword[k].text2 )
			sylword[k].left				= sylword_l 
			sylword[k].center			= sylword_l + sylword[k].width/2
			sylword[k].right			= sylword_l + sylword[k].width
			sylword[k].top				= word.top
			sylword[k].middle			= word.middle
			sylword[k].bottom			= word.bottom
			sylword[k].height			= word.height
			sylword[k].duration			= s_dur[k]
			sylword[k].dur				= s_dur[k]
			sylword[k].start_time		= sylword_s
			sylword[k].end_time			= sylword[k].start_time + s_dur[k]
			sylword[k].mid_time			= sylword[k].start_time + s_dur[k]/2
			sylword_l 					= sylword_l + sylword[k].width_t
			sylword_s					= sylword_s + sylword[k].dur
		end
		syl = sylword
		return ""
	end
	
	function aegisub.word2C( )
		c_txt = { }
		for char_3 in unicode.chars( word.text ) do
			table.insert( c_txt, char_3 )
		end
		if #c_txt == 0 then
			c_txt[1] = ""
		end
		charword   = { n = #c_txt }
		charword_d = word.dur/charword.n
		charword_l = word.left
		charword_s = word.start_time
		for k = 1, charword.n do
			charword[k]					= { }
			charword[k].text			= c_txt[k]
			charword[k].text_raw		= charword[k].text
			charword[k].text_stripped	= charword[k].text
			charword[k].width			= aegisub.text_extents( L, charword[k].text )
			charword[k].left			= charword_l 
			charword[k].center			= charword_l + charword[k].width/2
			charword[k].right			= charword_l + charword[k].width
			charword[k].top				= word.top
			charword[k].middle			= word.middle
			charword[k].bottom			= word.bottom
			charword[k].height			= word.height
			charword[k].duration		= charword_d
			charword[k].dur				= charword_d
			charword[k].start_time		= charword_s
			charword[k].end_time		= charword[k].start_time + charword_d
			charword[k].mid_time		= charword[k].start_time + charword_d/2
			charword_l 					= charword_l + charword[k].width
			charword_s					= charword_s + charword[k].dur
		end
		char = charword
		return ""
	end
	
	function aegisub.word2c( )
		w_txt = text.text2word( linefx[ii].text, linefx[ii].duration )
		w_len, w_fnl = { }, { [0] = 0 }
		for i = 1, #w_txt do
			w_len[i] = unicode.len( text.text2stripped( w_txt[i] ) .. blk )
		end
		for i = 1, #w_txt do
			w_fnl[i] = w_fnl[i - 1] + w_len[i]
		end
		for i = 1, #w_txt do
			if char.i >= w_fnl[i - 1]
				and char.i <= w_fnl[i] then
				return i
			end
		end
	end
	
	function aegisub.wordci( wc_ )
		wc_txt = text.text2word( linefx[ii].text, linefx[ii].duration )
		w_len, w_chari, w_charn = { }, { }, { }
		for i = 1, #wc_txt do
			w_len[i] = unicode.len( text.text2stripped( wc_txt[i] ) .. blk )
		end
		for i = 1, #wc_txt do
			for k = 1, w_len[i] do
				table.insert( w_chari, k )
				table.insert( w_charn, w_len[i] )
			end
		end
		w_chari[#w_chari + 1] = w_chari[#w_chari]
		w_charn[#w_charn + 1] = w_charn[#w_charn]
		return w_chari[wc_], w_charn[wc_]
	end
	
	function aegisub.width( string_txt )
		local string_width, string_height
		string_width, string_height = aegisub.text_extents( L, string_txt )
		return math.round( string_width, 3 )
	end
	
	function aegisub.height( string_txt )
		local string_width, string_height
		string_width, string_height = aegisub.text_extents( L, string_txt )
		return math.round( string_height, 3 )
	end
	
	-------------------------------------------------------------------------------------------------
	-- Librería de funciones Effector ---------------------------------------------------------------
	setting_box = {
		[01] = {							class = "label";	x = 1; y = 0;	height = 1; width = 2;	label = " [::Primary Setting::]"},
		[02] = {							class = "label";	x = 0; y = 1;	height = 1; width = 1;	label = "               Apply to Style:"},
		[03] = {name = "line_style";		class = "dropdown";	x = 1; y = 1;	height = 1; width = 4;	hint  = "Selected Lines or Lines Styles to which you Apply the Effect.";	items = { };	value = ""},
		[04] = {							class = "label";	x = 0; y = 2;	height = 1; width = 1;	label = "            Selection Effect:"},
		[05] = {name = "effect_mode";		class = "dropdown";	x = 1; y = 2;	height = 1; width = 4;	hint  = "Select the Effect Mode, lead-in[fx], hi-light[fx], lead-out[fx], shape[fx] and translation[fx].";	items = {"lead-in[fx]", "hi-light[fx]", "lead-out[fx]", "shape[fx]", "translation[fx]"};	value = "lead-in[fx]"},
		[06] = {							class = "label";	x = 1; y = 4;	height = 1; width = 2;	label = " [::Text Setting::]"},
		[07] = {							class = "label";	x = 1; y = 5;	height = 1; width = 2;	label = " Primary Color                         "},
		[08] = {							class = "label";	x = 3; y = 5;	height = 1; width = 2;	label = " Secondary Color                     "},
		[09] = {							class = "label";	x = 1; y = 9;	height = 1; width = 2;	label = " Border Color"},
		[10] = {							class = "label";	x = 3; y = 9;	height = 1; width = 2;	label = " Shadow Color"},
		[11] = {name = "color_1c";			class = "color";	x = 1; y = 6;	height = 2; width = 2;	hint  = "text.color1, text.color1c: Select the Primary Color of Text.";		value = "#FFFFFF"},
		[12] = {name = "color_2c";			class = "color";	x = 3; y = 6;	height = 2; width = 2;	hint  = "text.color2, text.color2c: Select the Secondary Color of Text.";	value = "#FF0000"},
		[13] = {name = "color_3c";			class = "color";	x = 1; y = 10;	height = 2; width = 2;	hint  = "text.color3, text.color3c: Select the Border Color of Text.";		value = "#000000"},
		[14] = {name = "color_4c";			class = "color";	x = 3; y = 10;	height = 2; width = 2;	hint  = "text.color4, text.color4c: Select the Shadow Color of Text.";		value = "#000000"},
		[15] = {name = "alpha_1a";			class = "intedit";	x = 1; y = 8;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha1, text.alpa1a: Select the Transparency (alpha) of the Primary Color of Text.";	value = "0"},
		[16] = {name = "alpha_2a";			class = "intedit";	x = 3; y = 8;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha2, text.alpa2a: Select the Transparency (alpha) of the Secondary Color of Text.";	value = "0"},
		[17] = {name = "alpha_3a";			class = "intedit";	x = 1; y = 12;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha3, text.alpa3a: Select the Transparency (alpha) of the Border Color of Text.";	value = "0"},
		[18] = {name = "alpha_4a";			class = "intedit";	x = 3; y = 12;	height = 1; width = 2;	min   = 0; max = 255;			hint = "text.alpha4, text.alpa4a: Select the Transparency (alpha) of the Shadow Color of Text.";	value = "0"},
		[19] = {name = "linecomment";		class = "checkbox"; x = 0; y = 13;	height = 1; width = 1;	label = "Line Comment";			hint = "Comment the Lines of Karaoke.";		value = true},
		[20] = {name = "saveconfiguration";	class = "checkbox"; x = 0; y = 14;	height = 1; width = 1;	label = "Save Configuration";	hint = "Save the Configuration of Text.";	value = true},
		[23] = {							class = "label";	x = 0; y = 3;	height = 1; width = 1;	label = "          Using Tags Filter:"},
		[24] = {name = "tags_filter";		class = "dropdown";	x = 1; y = 3;	height = 1; width = 4;	hint  = "Select the Filter to be used for the Tags Colors and Alpha of Text.";	items = {"VSFilterMod", "XY-VSFilter", "No Tags Color and Alpha", "No Tags Color and Alpha [VSFilterMod]"};	value = "XY-VSFilter"},
		[25] = {							class = "label";	x = 0; y = 8;	height = 1; width = 1;	label = " Kara Effector " .. script_version .. script_update},
		[26] = {							class = "label";	x = 0; y = 9;	height = 1; width = 1;	label = " " .. Effector_Lib_modified:gsub(" ", "/")},
		[27] = {							class = "label";	x = 0; y = 10;	height = 1; width = 1;	label = " (c) Vict8r Kara"},
		[28] = {							class = "label";	x = 3; y = 0;	height = 1; width = 2;	label = " KaraEffector.blogspot.com"},
		[29] = {							class = "label";	x = 3; y = 4;	height = 1; width = 2;	label = " facebook.com/karaeffector"},
	}
	-------------------------------------
	PfxM_Box = {
		[01] = { 					class = "label"; 	x = 0;  y = 0;  height = 1; width = 6;	label = " Shape[fx]: Template Shape"},
		[02] = { 					class = "label"; 	x = 10; y = 0;  height = 1; width = 2;	label = "            Template Type [fx]:"},
		[03] = { 					class = "label"; 	x = 0;  y = 1;  height = 1; width = 2;	label = "           Line Start Time ="},
		[04] = { 					class = "label"; 	x = 0;  y = 2;  height = 1; width = 2;	label = "            Line End Time ="},
		[05] = { 					class = "label"; 	x = 0;  y = 3;  height = 1; width = 2;	label = "                               x(s) ="},
		[06] = { 					class = "label"; 	x = 0;  y = 4;  height = 1; width = 2;	label = "                               y(s) ="},
		[07] = { 					class = "label"; 	x = 0;  y = 5;  height = 1; width = 2;	label = "                                   s ="},
		[08] = { 					class = "label"; 	x = 6;  y = 5;  height = 1; width = 2;	label = ""},
		[09] = { 					class = "label"; 	x = 8;  y = 1;  height = 1; width = 2;	label = "                Center in \"x\" ="},
		[10] = { 					class = "label"; 	x = 8;  y = 2;  height = 1; width = 2;	label = "                Center in \"y\" ="},
		[11] = { 					class = "label"; 	x = 8;  y = 3;  height = 1; width = 2;	label = "                   Scale in \"x\" ="},
		[12] = { 					class = "label"; 	x = 8;  y = 4;  height = 1; width = 2;	label = "                   Scale in \"y\" ="},
		[13] = { 					class = "label"; 	x = 8;  y = 5;  height = 1; width = 2;	label = "                    Align [\\an] ="},
		[14] = { 					class = "label"; 	x = 0;  y = 6;  height = 1; width = 2;	label = "                            Layer ="},
		[15] = { 					class = "label"; 	x = 6;  y = 6;  height = 1; width = 2;	label = "                       Pos in \"x\" ="},
		[16] = { 					class = "label"; 	x = 6;  y = 7;  height = 1; width = 2;	label = "                       Pos in \"y\" ="},
		[17] = { 					class = "label"; 	x = 6;  y = 8;  height = 1; width = 2;	label = "                  Times Move ="},
		[18] = { 					class = "label"; 	x = 0;  y = 7;	height = 1; width = 2;	label = "                             loop ="},
		[19] = { 					class = "label"; 	x = 0;  y = 8;	height = 1; width = 2;	label = "                              Size ="},
		[20] = { 					class = "label"; 	x = 0;  y = 9;  height = 1; width = 2;	label = "                     Return [fx]:"},
		[21] = {					class = "label";	x = 8; 	y = 9;	height = 1; width = 2;	label = " Add Tags:               "},
		[65] = {					class = "label";	x = 10;	y = 9;	height = 1; width = 2;	label = "          Add Tags Language:"},
		[66] = {name = "language";	class = "dropdown";	x = 12;	y = 9;	height = 1; width = 2;	items = { "Lua", "Automation Auto-4" };	value = "Lua"},
		[69] = { 					class = "label"; 	x = 0;  y = 21; height = 1; width = 2;	label = "IRC: #KaraEffector"},	
		[24] = { 					class = "label"; 	x = 0;  y = 14; height = 1; width = 2;	label = "         Shape Colors [fx]:"},
		[25] = { 					class = "label"; 	x = 2;  y = 14; height = 1; width = 2;	label = "    Shape Primary Color"},
		[26] = { 					class = "label"; 	x = 4;  y = 14; height = 1; width = 2;	label = "     Shape Border Color"},
		[27] = { 					class = "label"; 	x = 6;  y = 14; height = 1; width = 2;	label = "    Shape Shadow Color"},
		[28] = { 					class = "label"; 	x = 0;  y = 19; height = 1; width = 2;	label = "                       Variables:"},
		---------------------------------------------------------------------------------------------------------------------------------------
		[29] = {name = "t_type";	class = "dropdown";	x = 12; y = 0;	height = 1; width = 2;	items = {"Line","Syl","Furi","Char"};	value = "Syl"},
		[30] = {name = "noblank";	class = "checkbox"; x = 0;	y = 22;	height = 1; width = 2;	label = "Noblank [fx]";					value = true },
		[31] = {name = "v_kanji";	class = "checkbox"; x = 0;	y = 23;	height = 1; width = 2;	label = "Vertical Kanji [fx]";			value = false},
		[32] = {name = "color1";	class = "color";	x = 2;  y = 15; height = 2; width = 2;											value = "#FFFFFF"},
		[33] = {name = "color3";	class = "color";	x = 4;  y = 15; height = 2; width = 2;											value = "#FFFFFF"},
		[34] = {name = "color4";	class = "color";	x = 6;  y = 15; height = 2; width = 2;											value = "#000000"},
		[35] = {name = "alpha1";	class = "intedit";	x = 2;  y = 17;	height = 1; width = 2;	min = 0; max = 255; 					value = "200"},
		[36] = {name = "alpha3";	class = "intedit";	x = 4;  y = 17;	height = 1; width = 2;	min = 0; max = 255; 					value = "200"},
		[37] = {name = "alpha4";	class = "intedit";	x = 6;  y = 17;	height = 1; width = 2;	min = 0; max = 255; 					value = "200"},
		[38] = {name = "start_t";	class = "textbox";	x = 2;  y = 1;	height = 1; width = 6;	text = "0"},
		[39] = {name = "end_t";		class = "textbox";	x = 2;  y = 2;	height = 1; width = 6;	text = "0"},
		[40] = {name = "fun_x";		class = "textbox";	x = 2;  y = 3;	height = 1; width = 6;	text = "0"},
		[41] = {name = "fun_y";		class = "textbox";	x = 2;  y = 4;	height = 1; width = 6;	text = "0"},
		[42] = {name = "s_i";		class = "textbox";	x = 2;  y = 5;	height = 1; width = 2;	text = "0"},
		[43] = {name = "s_f";		class = "textbox";	x = 4;  y = 5;	height = 1; width = 2;	text = "0"},
		[44] = {name = "center_x";	class = "textbox";	x = 10; y = 1;	height = 1; width = 4;	text = "0"},
		[45] = {name = "center_y";	class = "textbox";	x = 10; y = 2;	height = 1; width = 4;	text = "0"},
		[46] = {name = "scale_x";	class = "textbox";	x = 10; y = 3;	height = 1; width = 4;	text = "1"},
		[47] = {name = "scale_y";	class = "textbox";	x = 10; y = 4;	height = 1; width = 4;	text = "1"},
		[48] = {name = "align";		class = "textbox";	x = 10; y = 5;	height = 1; width = 4;	text = "5"},
		[49] = {name = "layer";		class = "textbox";	x = 2;  y = 6;	height = 1; width = 4;	text = "0"},
		[50] = {name = "move_x";	class = "textbox";	x = 8;  y = 6;	height = 1; width = 6;	text = "0"},
		[51] = {name = "move_y";	class = "textbox";	x = 8;  y = 7;	height = 1; width = 6;	text = "0"},
		[52] = {name = "move_t";	class = "textbox";	x = 8;  y = 8;	height = 1; width = 6;	text = "0"},
		[53] = {name = "loops";		class = "textbox";	x = 2;  y = 7;	height = 1; width = 4;	text = "1"},
		[54] = {name = "size";		class = "textbox";	x = 2;  y = 8;	height = 1; width = 4;	text = "1"},
		[55] = {name = "returnfx";	class = "textbox";	x = 2;  y = 9;	height = 5; width = 4;	text = " "},
		[67] = {name = "modify";	class = "checkbox"; x = 6;	y = 12;	height = 1; width = 2;	label = "Modify or Return[fx]";	value = false},
		[68] = { 					class = "label"; 	x = 6;  y = 0;  height = 1; width = 4;	label = "Estilo seleccionado:"},
		[56] = {name = "addtag";	class = "textbox";	x = 8;  y = 10;	height = 7; width = 6;	text = " "},
		[57] = {name = "variable";	class = "textbox";	x = 2;  y = 19;	height = 6; width = 12;	text = " "},
		[58] = {name = "saveFX";	class = "checkbox"; x = 0;  y = 24;	height = 1; width = 2;	label = "Save Configuration";	value = true},
		[59] = { 					class = "label"; 	x = 10; y = 17;	height = 1; width = 2;	label = "          Template Folder [fx]:"},
		[60] = { 					class = "label"; 	x = 6;  y = 18;	height = 1; width = 2;	label = "                New [fx] Name:"},
		[61] = {name = "printfx";	class = "checkbox"; x = 8;	y = 17;	height = 1; width = 2;	label = "Print Config [fx]";	value = false},
		[62] = {name = "namefx";	class = "textbox";	x = 8;  y = 18;	height = 1; width = 6;	text  = ""},
 		[63] = {name = "folderfx";	class = "dropdown";	x = 12; y = 17;	height = 1; width = 2;	items = { "lead-in[fx]", "hi-light[fx]", "lead-out[fx]", "shape[fx]", "translation[fx]" };	value = nil},
		[64] = { 					class = "label"; 	x = 2;  y = 18;	height = 1; width = 4;	label = format( "▼ Kara Effector %s ▼       [ %s ]", script_version..script_update, Effector_Lib_modified )},
	}--▲
	
	-------------------------------------
	function table.inbox( tablefx, ... )
		local config_FX = { ... }
		---------------------------------
		tablefx[01].label = config_FX[01]
		tablefx[29].value = config_FX[02]
		tablefx[30].value = config_FX[03]
		tablefx[31].value = config_FX[04]
		tablefx[32].value = config_FX[05]
		tablefx[33].value = config_FX[06]
		tablefx[34].value = config_FX[07]
		tablefx[35].value = config_FX[08]
		tablefx[36].value = config_FX[09]
		tablefx[37].value = config_FX[10]
		tablefx[38].text = config_FX[11]
		tablefx[39].text = config_FX[12]
		tablefx[40].text = config_FX[13]
		tablefx[41].text = config_FX[14]
		tablefx[42].text = config_FX[15]
		tablefx[43].text = config_FX[16]
		tablefx[44].text = config_FX[17]
		tablefx[45].text = config_FX[18]
		tablefx[46].text = config_FX[19]
		tablefx[47].text = config_FX[20]
		tablefx[48].text = config_FX[21]
		tablefx[49].text = config_FX[22]
		tablefx[50].text = config_FX[23]
		tablefx[51].text = config_FX[24]
		tablefx[52].text = config_FX[25]
		tablefx[53].text = config_FX[26]
		tablefx[54].text = config_FX[27]
		tablefx[55].text = config_FX[28]
		tablefx[56].text = config_FX[29]
		tablefx[57].text = config_FX[30]
		tablefx[66].value = config_FX[31] or "Lua"
		tablefx[67].value = config_FX[32] or false
		------------------------------------------
		tablefx[29].hint = "Effect Type to Apply at Line Effect"
		tablefx[32].hint = "shape.color1 or shape.color1c: Primary Color Shape"
		tablefx[33].hint = "shape.color3 or shape.color3c: Border Color Shape"
		tablefx[34].hint = "shape.color4 or shape.color4c: Shadow Color Shape"
		tablefx[35].hint = "shape.alpha1 or shape.alpha1a: Primary Alpha Shape"
		tablefx[36].hint = "shape.alpha3 or shape.alpha3a: Border Alpha Shape"
		tablefx[37].hint = "shape.alpha4 or shape.alpha4a: Shadow Alpha Shape"
		tablefx[38].hint = "fx.start_time: Is the Start Time Line Effect"
		tablefx[39].hint = "fx.end_time: Is the End Time Line Effect\nfx.dur = fx.end_time - fx.start_time"
		tablefx[40].hint = "fx.fun_x: Parametric Function Equation for X, example: x(s) = 3*sin(s + 1)"
		tablefx[41].hint = "fx.fun_y: Parametric Function Equation for Y, example: y(s) = s^2 + cos(s)"
		tablefx[42].hint = "fx.domain_i: Initial Domain of Parametric Function"
		tablefx[43].hint = "fx.domain_f: Final Domain of Parametric Function"
		tablefx[44].hint = "fx.center_x: x-coordinate of the Reference Point of the Position"
		tablefx[45].hint = "fx.center_y: y-coordinate of the Reference Point of the Position"
		tablefx[46].hint = "fx.scale_x: x-scale of the Parametric Function"
		tablefx[47].hint = "fx.scale_y: y-scale of the Parametric Function"
		tablefx[48].hint = "fx.align: Line Effect Alignment, for example \\an5"
		tablefx[49].hint = "fx.layer: Line Effect Layer"
		tablefx[50].hint = "x-coordinate of the Final Position of Line Effect\nfx.pos_x = fx.center_x + fx.fun_x*fx.scale_x"
		tablefx[51].hint = "y-coordinate of the Final Position of Line Effect\nfx.pos_y = fx.center_y + fx.fun_y*fx.scale_y"
		tablefx[52].hint = "fx.movet_i, fx.movet_f: Time Move, for default: 0, fx.dur"
		tablefx[53].hint = "fx.loop_v, fx.loop_h: Line Effect Loop\nmaxj = fx.loop_v*fx.loop_h"
		tablefx[54].hint = "fx.sizex, fx.sizey: Line Effect Size"
		tablefx[55].hint = "Line Effect Return, example: syl.text, char.text, \"m 0 0 l 0 1 l 1 1 l 1 0 \""
		tablefx[56].hint = "Line Effect Add Tags, example: \"\\\\bord0\"; format(\"\\\\3vc%s\", shape.color3) in lua Language, or: !maxloop($width/$syln)!!retime(\"start2syl\", -1000 + $si*50, 0)!{\\1c!random.color()!} in Automation Auto-4 Language"
		tablefx[57].hint = "Declare Variables and Functions"
		tablefx[58].hint = "Line Effect Save Configuration"
		tablefx[61].hint = "Print Configurations of the Line Effect"
		tablefx[62].hint = "New Effect Name, not use Special Characters"
		tablefx[63].hint = "Destination Folder for the New Effect"
		tablefx[66].hint = "Select Language for Add Tags"
		tablefx[67].hint = "Decide whether the settings made will generate fx lines or will modify existing karaoke lines"
		return ""
	end
	
	function Ps( string_config )
		string_config = string_config:gsub( "\\", "\\\\" ):gsub( '"', '\\"' ):gsub( "\n", "\\n" )
		while string_config ~= string_config:gsub( "  ", " " ) do
			string_config = string_config:gsub( "  ", " " )
		end
		return string_config
	end
	
	function table.inbox2( table_data )
		table__ = { }
		table__.effect	 = table_data[01].label
		table__.t_type   = table_data[29].value
		table__.noblank  = table_data[30].value
		table__.v_kanji  = table_data[31].value
		table__.color1   = table_data[32].value
		table__.color3   = table_data[33].value
		table__.color4   = table_data[34].value
		table__.alpha1   = table_data[35].value
		table__.alpha3   = table_data[36].value
		table__.alpha4   = table_data[37].value
		table__.start_t  = table_data[38].text
		table__.end_t    = table_data[39].text
		table__.fun_x    = table_data[40].text
		table__.fun_y    = table_data[41].text
		table__.s_i      = table_data[42].text
		table__.s_f      = table_data[43].text
		table__.center_x = table_data[44].text
		table__.center_y = table_data[45].text
		table__.scale_x  = table_data[46].text
		table__.scale_y  = table_data[47].text
		table__.align    = table_data[48].text
		table__.layer    = table_data[49].text
		table__.move_x   = table_data[50].text
		table__.move_y   = table_data[51].text
		table__.move_t   = table_data[52].text
		table__.loops    = table_data[53].text
		table__.size     = table_data[54].text
		table__.returnfx = table_data[55].text
		table__.addtag   = table_data[56].text
		table__.variable = table_data[57].text
		table__.namefx   = table_data[62].text
		table__.folderfx = table_data[63].value
		table__.language = table_data[66].value or "Lua"
		table__.modify	 = table_data[67].value or false
		return table__
	end
	
	-------------------------------------
	PfxM_Box = table.duplicate( PfxM_Box )
	PfxM_Box[29].items = {
		[01] = "Line",
		[02] = "Word",
		[03] = "Syl",
		[04] = "Furi",
		[05] = "Char",
		[06] = "Convert to Hiragana",
		[07] = "Convert to Katakana",
		[08] = "Convert to Romaji",
		[09] = "Translation Line",
		[10] = "Translation Word",
		[11] = "Translation Char",
		[12] = "Template Line [Word]",
		[13] = "Template Line [Syl]",
		[14] = "Template Line [Char]"
	}
	PfxM_Box[29].value = "Syl"
	-------------------------------------
	Shape_Box = table.duplicate( PfxM_Box )
	Shape_Box[29].items = {
		[01] = "Line",
		[02] = "Word",
		[03] = "Syl",
		[04] = "Furi",
		[05] = "Char",
		[06] = "Convert to Hiragana",
		[07] = "Convert to Katakana",
		[08] = "Convert to Romaji",
		[09] = "Translation Line",
		[10] = "Translation Word",
		[11] = "Translation Char",
		[12] = "Template Line [Word]",
		[13] = "Template Line [Syl]",
		[14] = "Template Line [Char]"
	}
	Shape_Box[29].value = "Syl"
	-------------------------------------
	Trans_Box = table.duplicate( PfxM_Box )
	Trans_Box[29].items = {
		[1] = "Translation Line",
		[2] = "Translation Word",
		[3] = "Translation Char"
	}
	Trans_Box[29].value = "Translation Char"
	-------------------------------------

	function effector.pos( t_move, t_pos, t_time )
		local pos, options_pos, options_pdy, offset_posx
		if t_move == 1 then
			pos = F( "\\pos(%s,%s)", t_pos[1], t_pos[2] )
		elseif t_move == 2 then
			pos = F( "\\move(%s,%s,%s,%s)", t_pos[1], t_pos[2], t_pos[3], tostring( t_pos[4] ) .. t_time )
		elseif t_move == 3 then
			pos = F( "\\moves3(%s,%s,%s,%s,%s,%s)", t_pos[1], t_pos[2], t_pos[3], t_pos[4], t_pos[5], tostring( t_pos[6] ) .. t_time )
		elseif t_move == 4 then
			pos = F( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s)", t_pos[1], t_pos[2], t_pos[3], t_pos[4], t_pos[5], t_pos[6], t_pos[7], tostring( t_pos[8] ) .. t_time )
		elseif t_move == 6 then
			pos = F( "\\mover(%s,%s,%s,%s,%s,%s,%s,%s)", t_pos[1], t_pos[2], t_pos[3], t_pos[4], t_pos[9], t_pos[10],t_pos[11],tostring( t_pos[12] ) .. t_time )
		else
			pos = ""
		end
		if l.angle ~= 0 then
			offset_posx, offset_posy = effector.modify_pos( true )
			options_pos = { l.left, l.center, l.right }
			options_pdy = { fx.pos_b, fx.pos_y, fx.pos_t }
			pos = pos .. format( "\\org(%s,%s)\\fr%s",
				math.round( options_pos[(l.align - 1)%3 + 1] - offset_posx, 2 ),
				math.round( options_pdy[ceil( l.align/3 )], 2 ),
				l.angle
			)
		end
		return pos
	end
	
	function effector.knj( v_knj )
		local options_px, options_py, pos_knjx, pos_knjy
		if v_knj == true then
			options_px = {
				[1] = l.margin_l + l.height/2,
				[2] = l.margin_l + (xres - l.margin_l - l.margin_r)/2,
				[3] = xres - l.margin_r - l.height/2
			}
			options_py = {
				[1] = l.middle + l.height*(offset_h*(val_i - val_n)),
				[2] = l.middle + l.height*(offset_h*(val_i - val_n/2 - 1) + 0.45),
				[3] = l.middle + l.height*(offset_h*(val_i - 1))
			}
			pos_knjx = options_px[(l.align - 1)%3 + 1]
			pos_knjy = options_py[ceil( l.align/3 )]
		else
			pos_knjx = fx.center_x
			pos_knjy = fx.center_y
		end
		return pos_knjx, pos_knjy
	end
	
	function effector.offset_pos( string_inPos, offset_dx, offset_dy )
		local offset_dx = offset_dx or 0
		local offset_dy = offset_dy or 0
		local cap_pos, cap_tag = { }, { }
		local pos_cap = { "\\pos%b()", "\\org%b()", "\\move%b()", "\\movevc%b()", "\\moves3%b()", "\\moves4%b()", "\\mover%b()" }
		for i = 1, #pos_cap do
			for oC in string_inPos:gmatch( pos_cap[i] ) do
				table.insert( cap_pos, oC )
			end
		end
		if #cap_pos > 0 then
			for i = 2, #cap_pos + 1 do
				cap_tag[i - 1] = { [1] = cap_pos[i - 1]:match( "\\(%w+)" ) }
				cap_pos[i - 1] = cap_pos[i - 1]:gsub( "\\%w+", "" )
				for oCC in cap_pos[i - 1]:gmatch( "%-?%d+[%.%d+]*" ) do
					table.insert( cap_tag[i - 1], tonumber( oCC ) )
				end
			end
		end
		for i = 1, #cap_tag do
			if cap_tag[i][1] == "pos"
				or cap_tag[i][1] == "org" then
				string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s)", 
				cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy ) )
			elseif cap_tag[i][1] == "move"
				or cap_tag[i][1] == "movevc" then
				if #cap_tag[i] == 5 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy ) )
				elseif #cap_tag[i] == 7 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy, 
					cap_tag[i][6], cap_tag[i][7] ) )
				else --\\movevc(x,y)
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy ) )
				end
			elseif cap_tag[i][1] == "moves3" then
				if #cap_tag[i] == 7 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy, 
					cap_tag[i][6] + offset_dx, cap_tag[i][7] + offset_dy ) )
				elseif #cap_tag[i] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy, 
					cap_tag[i][6] + offset_dx, cap_tag[i][7] + offset_dy, cap_tag[i][8], cap_tag[i][9] ) )
				end
			elseif cap_tag[i][1] == "moves4" then
				if #cap_tag[i] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy, 
					cap_tag[i][6] + offset_dx, cap_tag[i][7] + offset_dy, cap_tag[i][8] + offset_dx, cap_tag[i][9] + offset_dy ) )
				elseif #cap_tag[i] == 11 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5] + offset_dy, 
					cap_tag[i][6] + offset_dx, cap_tag[i][7] + offset_dy, cap_tag[i][8] + offset_dx, cap_tag[i][9] + offset_dy, cap_tag[i][10], cap_tag[i][11] ) )
				end
			elseif cap_tag[i][1] == "mover" then
				if #cap_tag[i] == 9 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5], 
					cap_tag[i][6], cap_tag[i][7], cap_tag[i][8], cap_tag[i][9] ) )
				elseif #cap_tag[i] == 11 then
					string_inPos = string_inPos:gsub( "\\" .. cap_tag[i][1] .. "%b()", format( "\\%s(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)", 
					cap_tag[i][1], cap_tag[i][2] + offset_dx, cap_tag[i][3] + offset_dy, cap_tag[i][4] + offset_dx, cap_tag[i][5], 
					cap_tag[i][6], cap_tag[i][7], cap_tag[i][8], cap_tag[i][9], cap_tag[i][10], cap_tag[i][11] ) )
				end
			end
		end
		return string_inPos
	end

	function effector.import( Lua_file )
		local Lua_file = Lua_file or "utils-auto4"
		Lua_file = Lua_file:gsub( ".lua", "" )
		include( Lua_file .. ".lua" )
	end
	import = effector.import
	
	function effector.addfx( Library_fx, Name_fx )
		local fx_lib = {
			[1] = "lead-in",
			[2] = "hi-light",
			[3] = "lead-out",
			[4] = "shape",
			[5] = "translation"
		}
		local n1, n2
		if type( Library_fx ) == "string" then
			n1 = table.index( fx_lib, Library_fx )
		elseif type( Library_fx ) == "number" then
			n1 = Library_fx
		end
		if type( n1 ) ~= "number" then
			n1 = 1
		end
		if type( Name_fx ) == "string" then
			n2 = table.index( list_fx[n1], Name_fx, "%[.-%] " )
		elseif type( Name_fx ) == "number" then
			n2 = Name_fx
		end
		if type( n2 ) ~= "number" then
			n2 = 1
		end
		local add_fx = table.inbox2( list_library[n1][n2] )
		if  table.inside( effector.list, add_fx ) == false then
			table.insert( effector.list, add_fx )
			lines_comment = false
		end
	end
	addfx = effector.addfx
	
	function effector.savefx( New_fxname, File_fx )
		io.output( io.open( File_fx, "a" ) )
		io.write( New_fxname )
		io.close( )
	end

	function effector.modify_pos( Offset_x )
		local KE_align = linefx[ii].align
		local KE_posDx, KE_pos_x = 0, 0
		local KE_posDy, KE_pos_y = 0, 0
		if linefx[ii].text:match( "\\an%d+" ) then
			KE_align = tonumber( linefx[ii].text:match( "\\an(%d+)" ) )
			KE_pos_y = -0.5*(linefx[ii].height + linefx[ii].descent)
		end
		if linefx[ii].text:match( "\\pos%(" ) then
			KE_posDx = 0.5*linefx[ii].width*((KE_align - 1)%3 - 1)
			KE_posDy = 0.5*linefx[ii].height*(ceil( (10 - ((KE_align - 1)%9 + 1))/3 ) - 2)
			KE_pos_x = linefx[ii].center - tonumber( linefx[ii].text:match( "\\pos%((%-?%d+[.%d+]*)%,%-?%d+[.%d+]*%)" ) )
			KE_pos_y = linefx[ii].middle - tonumber( linefx[ii].text:match( "\\pos%(%-?%d+[.%d+]*%,(%-?%d+[.%d+]*)%)" ) )
		end
		if Offset_x then
			return KE_pos_x, KE_pos_y
		end
		return KE_pos_x + KE_posDx, KE_pos_y + KE_posDy
	end

	function effector.new_pos( posx, posy )
		local posx = posx or fx.pos_x
		local posy = posy or fx.pos_y
		local newpos
		if Nmove == 2 then
			newpos = format( "\\move(%s,%s,%s,%s)"
			, math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 ) .. tags_times )
		elseif Nmove == 3 then
			newpos = format( "\\moves3(%s,%s,%s,%s,%s,%s)"
			, math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x3 - fx.pos_x, 3 ), math.round( posy + fx.move_y3 - fx.pos_y, 3 ) .. tags_times )
		elseif Nmove == 4 then
			newpos = format( "\\moves4(%s,%s,%s,%s,%s,%s,%s,%s)"
			, math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x2 - fx.pos_x, 3 ), math.round( posy + fx.move_y2 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x3 - fx.pos_x, 3 ), math.round( posy + fx.move_y3 - fx.pos_y, 3 )
			, math.round( posx + fx.move_x4 - fx.pos_x, 3 ), math.round( posy + fx.move_y4 - fx.pos_y, 3 ) .. tags_times )
		else
			newpos = format( "\\pos(%s,%s)"
			, math.round( posx + fx.move_x1 - fx.pos_x, 3 ), math.round( posy + fx.move_y1 - fx.pos_y, 3 ) )
		end
		return newpos
	end

	function effector.default_val( )
		fx.loop_v, fx.loop_h, fx.loop_3, loop_h = 1, 1, 1, 1
		fx.maxloop_fx = fx.loop_v*fx.loop_h*fx.loop_3
		maxj = fx.maxloop_fx
		fx.start_time, fx.end_time = l_start, l_end
		fx.dur = fx.end_time - fx.start_time
		fx.mid_time = fx.start_time - fx.dur/2
		fx.center_x, fx.center_y, fx.scale_x, fx.scale_y, offset_maxspace, offset_h = val_center, val_middle, 1, 1, 0, 0.9
		fx.pos_x, fx.pos_y, fx.pos_t, fx.pos_r, fx.pos_b, fx.pos_l = val_center, val_middle, val_top, val_right, val_bottom, val_left
		fx.sizex, fx.sizey, fx.movet_i, fx.movet_f, tags_times = l_scale_x, l_scale_y, 0, fx.dur, ""
		fx.tag_size, fx.align, fx.layer = format( "\\fscx%s\\fscy%s", fx.sizex, fx.sizey ), "\\an5", l_layer
		fx.angle1, fx.angle2, fx.radius1, fx.radius2 = fx.pos_x, fx.pos_x, fx.pos_x, fx.pos_x
		fx.move_x1, fx.move_x2, fx.move_x3, fx.move_x4 = fx.pos_x, fx.pos_x, fx.pos_x, fx.pos_x
		fx.move_y1, fx.move_y2, fx.move_y3, fx.move_y4 = fx.pos_y, fx.pos_y, fx.pos_y, fx.pos_y
		fx.move_t1, fx.move_t2, fx.move_t3, fx.move_t4 = fx.pos_t, fx.pos_t, fx.pos_t, fx.pos_t
		fx.move_r1, fx.move_r2, fx.move_r3, fx.move_r4 = fx.pos_r, fx.pos_r, fx.pos_r, fx.pos_r
		fx.move_b1, fx.move_b2, fx.move_b3, fx.move_b4 = fx.pos_b, fx.pos_b, fx.pos_b, fx.pos_b
		fx.move_l1, fx.move_l2, fx.move_l3, fx.move_l4 = fx.pos_l, fx.pos_l, fx.pos_l, fx.pos_l
	end

	function effector.effect_offset( )
		effect_val = { }
		for c in l_fx:gmatch( "%-?%d+[%.%d+]*" ) do
			table.insert( effect_val, c )
		end
		for i = 1, 32 do
			effect_val[i] = effect_val[i] or 0
		end
		fx.offset_x = effect_val[1]
		fx.offset_y = effect_val[2]
		fx.offset_z = effect_val[3]
	end	
	
	function effector.decide( )
		Decide_No_1 = { 75,97,114,97,32,69,102,102,101,99,116,111,114,91,102,120,93 }
		Decide_No_2 = { 69,102,102,101,99,116,115,32,65,117,116,111,109,97,116,105,111,110,32,75,97,114,97,111,107,101,115,46,32,67,114,101,97,116,105,110,103,32,69,102,102,101,99,116,115,32,119,105,116,104,32,77,111,100,105,102,105,97,98,108,101,32,80,97,114,97,109,101,116,101,114,115 }
		Decide_No_3 = { 80,114,111,106,101,99,116,32,75,97,114,97,76,97,117,114,97 }
		Decide_No_4 = { 51,46,50 }
		Decide_No_5 = { 32,40,99,41,32,86,105,99,116,56,114,32,75,97,114,97 }
		if table.compare( text.char2byte( script_name ), Decide_No_1 ) == false then
			error( text.byte2char( { 78,111,32,100,101,98,101,115,32,99,97,109,98,105,97,114,32,101,108,32,110,111,109,98,114,101,32,100,101,108,32,83,99,114,105,112,116,44,32,100,101,32,108,111,32,99,111,110,116,114,97,114,105,111,32,115,101,32,103,101,110,101,114,97,114,195,161,32,117,110,32,101,114,114,111,114,32,113,117,101,32,110,111,32,116,101,32,100,101,106,97,114,195,161,32,117,115,97,114,32,101,108,32,75,97,114,97,32,69,102,102,101,99,116,111,114 } ) )
		elseif table.compare( text.char2byte( script_description ), Decide_No_2 ) == false then
			error( text.byte2char( { 78,111,32,100,101,98,101,115,32,99,97,109,98,105,97,114,32,108,97,32,100,101,115,99,114,105,112,99,105,195,179,110,32,100,101,108,32,83,99,114,105,112,116,44,32,100,101,32,108,111,32,99,111,110,116,114,97,114,105,111,32,115,101,32,103,101,110,101,114,97,114,195,161,32,117,110,32,101,114,114,111,114,32,113,117,101,32,110,111,32,116,101,32,100,101,106,97,114,195,161,32,117,115,97,114,32,101,108,32,75,97,114,97,32,69,102,102,101,99,116,111,114 } ) )
		elseif table.compare( text.char2byte( script_author ), Decide_No_3 ) == false then
			error( text.byte2char( { 78,111,32,100,101,98,101,115,32,99,97,109,98,105,97,114,32,101,108,32,110,111,109,98,114,101,32,100,101,108,32,97,117,116,111,114,32,100,101,108,32,83,99,114,105,112,116,44,32,100,101,32,108,111,32,99,111,110,116,114,97,114,105,111,32,115,101,32,103,101,110,101,114,97,114,195,161,32,117,110,32,101,114,114,111,114,32,113,117,101,32,110,111,32,116,101,32,100,101,106,97,114,195,161,32,117,115,97,114,32,101,108,32,75,97,114,97,32,69,102,102,101,99,116,111,114 } ) )
		elseif table.compare( text.char2byte( script_version ), Decide_No_4 ) == false then
			error( text.byte2char( { 78,111,32,100,101,98,101,115,32,99,97,109,98,105,97,114,32,101,108,32,110,195,186,109,101,114,111,32,100,101,32,108,97,32,118,101,114,115,105,195,179,110,32,100,101,108,32,83,99,114,105,112,116,44,32,100,101,32,108,111,32,99,111,110,116,114,97,114,105,111,32,115,101,32,103,101,110,101,114,97,114,195,161,32,117,110,32,101,114,114,111,114,32,113,117,101,32,110,111,32,116,101,32,100,101,106,97,114,195,161,32,117,115,97,114,32,101,108,32,75,97,114,97,32,69,102,102,101,99,116,111,114 } ) )
		elseif table.compare( text.char2byte( setting_box[27].label ), Decide_No_5 ) == false then
			error( text.byte2char( { 78,111,32,100,101,98,101,115,32,99,97,109,98,105,97,114,32,101,108,32,110,111,109,98,114,101,32,100,101,108,32,65,117,116,111,114,32,100,101,108,32,75,97,114,97,32,69,102,102,101,99,116,111,114,46,32,69,108,32,97,117,116,111,114,32,100,101,108,32,101,115,116,101,32,109,97,116,101,114,105,97,108,32,101,115,32,86,105,99,116,56,114,32,75,97,114,97 } ) )
		end
	end

	function effector.print_error( name_argument, type_argument, name_function, pos_argument )
		--shape, text, string, number, table, function, color, alpha, numbertable, numberstring, stringtable, true
		--numberstringtable, numbershapetable
		local arg_pos_esp = { "primer", "segundo", "tercero", "cuarto", "quinto", "sexto", "séptimo", "octavo", "noveno", "décimo" }
		local arg_pos_eng = { "first", "second", "thirth", "fourth", "fiveth", "sixth", "seventh", "eigth", "nineth", "tenth" }
		local arg_pos_nm1 = arg_pos_esp[pos_argument] or "primer"
		local arg_pos_nm2 = arg_pos_eng[pos_argument] or "first"
		if type_argument == "shape" then
			if type( name_argument ) ~= "string" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumeto de la función debe ser una shape.
		Este argumento debe ser un string shape, por ejemplo: "m 0 0 l 0 100 l 100 100 l 10 0 ",
		shape.circle, shape.rectangle o cualquier otra figura shape.  Es posible que eso hayas
		intentado, pero cometiste un error en la escritura, como anotar mal un valor u omitir
		las comillas simples o dobles en las que debe ir el código de una shape.
		
		[:error:] The %s argument of the function must be a shape.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "text" then
			if type( name_argument ) ~= "string" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de texto.
		Este argumento debe ser un string de texto, por ejemplo: syl.text, word.text, "AbcDE",
		line.text_stripped, word.text, o cualquier otro string de texto. Posiblemente sea eso lo
		que hayas intentado, pero cometiste uno o más errores en la escritura, como escribir
		mal el nombre de la variable u omitir las comillas simples o dobles en las que debe ir
		siempre el string de texto.
		
		[:error:] The %s argument of the function must be a string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "string" then
			if type( name_argument ) ~= "string" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string.
		Este argumento debe ser un string. Recurda que todo string debe estar entre comillas
		simples o dobles, de otro modo el error persistirá.
		
		[error:] The %s argument of the function must be a string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "number" then
			if type( name_argument ) ~= "number" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un número.
		Este argumento debe ser un número. Ningún valor numérico en este argumento debe
		estar entre comillas simples o dobles.  Es probable que hayas ingresado un número en
		este argumento, pero está fuera de rango. Debes consultar la documentación que hay
		de esta función,  o pedir asesoría del tema en el Blog,  en la fanpage,  o en el grupo de
		facebook del Kara Effector.		
		
		[:error:] The %s argument of the function must be a number.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "table" then
			if type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un tabla.
		Este argumento debe ser una tabla.  Recurda que toda tabla debe estar definida entre
		corchetes "{ }". Todos los elementos de una tabla deben estar separados por coma (,)
		o por punto y coma (;). Posiblemente has cometido uno o más errores de los anterior-
		mente mencionados. Si el argumento solicita únicamente una tabla, entonces no hay
		que poner un número o un string en él.
		
		[:error:] The %s argument of the function must be a table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "function" then
			if type( name_argument ) ~= "function" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser una función.
		Este argumento debe ser una función. Este tipo de argumento es uno de los más com-
		plejos de usar,  ya que es necesario el dominio del lenguaje LUA,  para poder formular
		una función válida. Si el error persiste, debes consultar la documentación que haya de
		esta función o pedir asesoría en el Blog, en la fanpage,  o en el grupo de facebook que
		fue creado para ayudar y dar soporte técnico, del Kara Effector.
		
		[:error:] The %s argument of the function must be a function.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "color" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de color.
		Este argumento debe ser un color en formato .ass ("&HFF00AD&"), HTML ("#00FF00")
		o en el formato VSFilterMod ( "(&HFFFFFF&,&HFFFFFF&,&H000000&,&H000000&)" ).
		Cualquiera de los tres formatos es igualmente válido, todo depende de los resultados
		que se quieran obtener.  Hay funciones en las que un argumento de color puede tener
		la opción de ser remplazado por una tabla en donde cada uno de sus elementos sea un
		string de color  y quizás en esta función sea el caso.  Recomendamos consultar toda la
		documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be a color string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "alpha" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función debe ser un string de alpha.
		Este argumento debe ser un alpha en formato .ass ( "&HFF&" ), HTML ( "#0A" ) o en el
		formato VSFilterMod ( "(&HFF&,&HFF&,&H00&,&H00&)" ).
		Cualquiera de los tres formatos es igualmente válido, todo depende de los resultados
		que se quieran obtener.  Hay funciones en las que un argumento de alpha puede tener
		la opción de ser remplazado por una tabla en donde cada uno de sus elementos sea un
		string de alpha  y quizás en esta función sea el caso.  Recomendamos consultar toda la
		documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be a alpha string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numbertable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número o una tabla.
		Este argumento debe ser o un número o una tabla. Es problable que la tabla sea una en
		donde todos sus elementos sean números, para estar seguros de esta condición, debes
		consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numberstring" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número o un string.
		Este argumento debe ser un número o un string. Para estar seguros de esta condición,
		debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number or string.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numberstringtable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número, un string o una tabla.
		Este argumento debe ser un número, un string o una tabla. Para estar seguros de esta
		condición, debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number, or string or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "numbershapetable" then
			if type( name_argument ) ~= "number"
				and type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un número, una shape o una tabla.
		Este argumento debe ser un número, una shape o una tabla. Para estar seguros de esta
		condición, debes consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be number, or shape or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "stringtable" then
			if type( name_argument ) ~= "string"
				and type( name_argument ) ~= "table" then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento debe ser un string o una tabla.
		Este argumento debe ser un string o una tabla.  Es problable que la tabla sea una en
		donde todos sus elementos sean string, para estar seguros de esta condición, debes
		consultar la documentación que haya de esta función.
		
		[:error:] The %s argument of the function must be string or table.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		elseif type_argument == "true" then
			if not name_argument then
				error( format( [[Kara Effector [:error:] %s( ) :: El %s argumento de la función no se puede omitir.
		Este argumento no se puede omitir y debe ser un valor válido para que la función se
		ejecute de manera satisfactoria. Si hay dudas acerca de la función, se debe consultar
		la documentación pertinente a la misma.
		
		[:error:] The %s argument of the function must be a valid value.]], name_function, arg_pos_nm1, arg_pos_nm2 ), 2 )
			end
		end
	end

	function effector.run_fx( subs, sett, index )
		local meta, styles = karaskel.collect_head( subs )
		local maxi = #index
		local subtitles = subs
		ini_line, count_line_dialogue = 0, 0
		for i = 1, #subtitles do
			if subtitles[i].class == "dialogue"
				and subtitles[i].effect ~= "Effector [Fx]"
				and subtitles[i].effect ~= "fx" then
				count_line_dialogue = count_line_dialogue + 1
			end
			if subtitles[i].effect ~= "Effector [Fx]"
				and subtitles[i].effect ~= "fx" then
				ini_line = ini_line + 1
			end
		end
		count_ln = 1
		idx_line = index
		count_fx = 0
		line_delete = false
		indx_delete = { }
		for _, i in ipairs( index ) do
			local l = subs[i]
			maxi = maxi - 1
			l_counter = #index - maxi
			maxil_counter = #index
			karaskel.preproc_line( subs, meta, styles, l )
			effector.do_fx( subs, meta, l, sett )
			l.comment = lines_comment
			subs[i] = l
			count_ln = count_ln + 1
			if line_delete == true then
				--subs.delete(i)
				table.insert( indx_delete, i )
			end --line_delete = true
		end
		if line_delete == true
			and #indx_delete > 0 then
			for i = 1, #indx_delete do
				subs.delete( indx_delete[1] )
			end
		end
	end

	function effector.preprosses_styles( styles, subtitles, has_selected_lines )
		setting_box[3].items = { }
		local subs = subtitles
		local astyles = { }
		for i = 1, #subtitles do
			if subtitles[i].class == "dialogue"
				and not subtitles[i].comment
				and subtitles[i].effect ~= "Effector [Fx]"
				and subtitles[i].effect ~= "fx" then
				if subtitles[i].style ~= ""
					and not astyles[subtitles[i].style] then 
					astyles[subtitles[i].style] = true
					table.insert( setting_box[3].items, subtitles[i].style )
				end
			end 
		end
		if #setting_box[3].items > 0 then
			table.insert( setting_box[3].items, "All Lines" )
		end
		if has_selected_lines
			and #setting_box[3].items > 0 then
			table.insert( setting_box[3].items, "Selected Lines" )
		end
	end
	
	function effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
		local subs = { }
		if sett.line_style == "Selected Lines" then
			for _, i in ipairs( selected_lines ) do
				if subtitles[i].class == "dialogue"
					and not subtitles[i].comment
					and subtitles[i].effect ~= "Effector [Fx]"
					and subtitles[i].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		elseif sett.line_style == "All Lines" then
			for i = 1, #subtitles do
				if subtitles[i].class == "dialogue" and
					not subtitles[i].comment
					and subtitles[i].effect ~= "Effector [Fx]"
					and subtitles[i].effect ~= "fx" then
					table.insert( subs, i )
				end
			end
		else
			for i = 1, #subtitles do
				if subtitles[i].class == "dialogue"
					and not subtitles[i].comment
					and subtitles[i].effect ~= "Effector [Fx]"
					and subtitles[i].effect ~= "fx"
					and sett.line_style == subtitles[i].style then
					table.insert( subs, i )
				end
			end
		end
		effector.preprosses_lines( subtitles )
		effector.run_fx( subtitles, sett, subs )
	end
	
	function effector.preprosses_lines( subtitles )
		meta, styles = karaskel.collect_head( subtitles )
		linefx = { }
		xres = meta.res_x or 1280
		yres = meta.res_y or 720
		DefaultKE = {
			class = "style";
			section = "[V4+ Styles]";
			raw = "Style: DefaultKE,Arial,25,&H00FFFFFF,&H000000FF,&H00000000,&H00000000,0,0,0,0,100,100,0,0,1,2,2,2,20,20,20,1";
			name = "DefaultKE";
			fontname = "Arial";
			fontsize = 25;
			color1 = "&H00FFFFFF&";
			color2 = "&H000000FF&";
			color3 = "&H00000000&";
			color4 = "&H00000000&";
			bold = false;
			italic = false;
			underline = false;
			strikeout = false;
			scale_x = 100;
			scale_y = 100;
			spacing = 0;
			angle = 0;
			borderstyle = 1;
			outline = 2;
			shadow = 2;
			alignment = 2;
			align = 2;
			margin_l = 20;
			margin_r = 20;
			margin_v = 20;
			margin_b = 20;
			margin_t = 20;
			encoding = 1
		}
		table.insert( styles, 1, DefaultKE )
		for i = 1, #subtitles do
			if subtitles[i].class == "dialogue"
				and subtitles[i].effect ~= "Effector [Fx]"
				and subtitles[i].effect ~= "fx" then
				table.insert( linefx, subtitles[i] )
			end
		end
		linefx.nn = #linefx
		mmwth, mmdur = { l = { } }, { l = { } }
		for i = 1, #linefx do
			l_style = styles[tostring( linefx[i].style )] or styles[1] --> DefaultKE style
			width, height, descent, extlead	= aegisub.text_extents( l_style, text.remove_extra_space( text.remove_tags( linefx[i].text:gsub( "\\N", " " ):gsub( "  ", " " ) ) ) )
			options_lft = { l_style.margin_l, (xres + l_style.margin_l - l_style.margin_r)/2 - width/2, xres - l_style.margin_r - width }
			options_top = { yres - l_style.margin_b - height, yres/2 - height/2, l_style.margin_t }
			mmwth[i] = { wo = { }, sy = { }, ro = { }, hi = { }, ka = { }, ch = { } }
			mmdur[i] = { wo = { }, sy = { }, ro = { }, hi = { }, ka = { }, ch = { } }
			------------▼ line
			linefx.ii				= i
			linefx[i].styleref		= l_style
			linefx[i].duration		= linefx[i].end_time - linefx[i].start_time
			linefx[i].mid_time		= linefx[i].start_time + linefx[i].duration/2
			linefx[i].text_raw		= linefx[i].text
			linefx[i].text_stripped	= text.remove_extra_space( text.remove_tags( linefx[i].text ) )
			linefx[i].text			= text.remove_extra_space( text.remove_space_in_tags( linefx[i].text ) )
			linefx[i].text			= text.remove_syls_nil( linefx[i].text, linefx[i].duration ):gsub( "\\N", " " ):gsub( "  ", " " ):gsub( "KEclip", " " )
			linefx[i].width			= width
			linefx[i].left			= options_lft[(l_style.align - 1)%3 + 1]
			linefx[i].center		= linefx[i].left + width/2
			linefx[i].right			= linefx[i].left + width
			linefx[i].height		= height
			linefx[i].top			= options_top[ceil(l_style.align/3)]
			linefx[i].middle		= linefx[i].top + height/2
			linefx[i].bottom		= linefx[i].top + height
			linefx[i].descent		= descent
			linefx[i].extlead		= extlead
			----------------------------------------------------------
			linefx[i].bold			= l_style.bold
			linefx[i].italic		= l_style.italic
			linefx[i].underline		= l_style.underline
			linefx[i].strikeout		= l_style.strikeout
			linefx[i].align			= l_style.align
			linefx[i].fontsize		= l_style.fontsize
			linefx[i].fontname		= l_style.fontname
			linefx[i].outline		= l_style.outline
			linefx[i].shadow		= l_style.shadow
			linefx[i].angle			= l_style.angle
			linefx[i].spacing		= l_style.spacing
			linefx[i].scale_x		= l_style.scale_x
			linefx[i].scale_y		= l_style.scale_y
			linefx[i].margin_l		= l_style.margin_l
			linefx[i].margin_r		= l_style.margin_r
			linefx[i].margin_t		= l_style.margin_t
			linefx[i].margin_v		= l_style.margin_t
			linefx[i].margin_b		= l_style.margin_b
			linefx[i].color1		= color_from_style( l_style.color1 )
			linefx[i].color2		= color_from_style( l_style.color2 )
			linefx[i].color3		= color_from_style( l_style.color3 )
			linefx[i].color4		= color_from_style( l_style.color4 )
			linefx[i].alpha1		= alpha_from_style( l_style.color1 )
			linefx[i].alpha2		= alpha_from_style( l_style.color2 )
			linefx[i].alpha3		= alpha_from_style( l_style.color3 )
			linefx[i].alpha4		= alpha_from_style( l_style.color4 )
			table.insert( mmwth.l, linefx[i].width )
			table.insert( mmdur.l, linefx[i].duration )
			------------▼ word
			words_line, words_dur = text.text2word( linefx[i].text, linefx[i].duration )
			linefx[i].word		= { }
			linefx[i].word.n	= #words_line
			linefx[i].word.text	= ""
			words_left			= linefx[i].left
			words_start			= 0
			for k = 1, #words_line do
				linefx[i].word.i				= k
				linefx[i].word[k]				= { }
				linefx[i].word[k].text			= text.karaoke_true( words_line ) and words_line[k]:gsub( "KEclip", " " ) or F( "{\\k%s}%s", math.round( words_dur[k]/10 ), words_line[k] ):gsub( "KEclip", " " )
				linefx[i].word[k].text_raw		= linefx[i].word[k].text:gsub( "KEclip", " " )
				linefx[i].word[k].text_stripped	= text.text2stripped( words_line[k] )
				linefx[i].word[k].text1			= text.remove_tags( words_line[k] ):gsub( "KEfx", "" )
				linefx[i].word[k].text2			= linefx[i].word[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].word[k].width_t		= aegisub.text_extents( l_style, linefx[i].word[k].text1 )
				linefx[i].word[k].width			= aegisub.text_extents( l_style, linefx[i].word[k].text2 )
				linefx[i].word[k].left			= words_left 
				linefx[i].word[k].center		= words_left + linefx[i].word[k].width/2
				linefx[i].word[k].right			= words_left + linefx[i].word[k].width
				linefx[i].word[k].top			= linefx[i].top
				linefx[i].word[k].middle		= linefx[i].middle
				linefx[i].word[k].bottom		= linefx[i].bottom
				linefx[i].word[k].height		= linefx[i].height
				linefx[i].word[k].duration		= words_dur[k]
				linefx[i].word[k].dur			= words_dur[k]
				linefx[i].word[k].start_time	= words_start
				linefx[i].word[k].end_time		= linefx[i].word[k].start_time + linefx[i].word[k].duration
				linefx[i].word[k].mid_time		= linefx[i].word[k].start_time + linefx[i].word[k].duration/2
				linefx[i].word.text				= linefx[i].word.text .. linefx[i].word[k].text:gsub( "KEfx", "" )
				words_left 						= words_left  + linefx[i].word[k].width_t
				words_start						= words_start + linefx[i].word[k].duration
				table.insert( mmwth[i].wo, linefx[i].word[k].width )
				table.insert( mmdur[i].wo, linefx[i].word[k].dur )
			end
			for k = #words_line + 1, 2*#words_line do
				linefx[i].word[k] = linefx[i].word[#words_line]
			end
			for k = -#words_line + 1, 0 do
				linefx[i].word[k] = linefx[i].word[1]
			end
			linefx[i].word.start_time		= linefx[i].start_time
			linefx[i].word.left	 			= linefx[i].left
			linefx[i].word.end_time			= linefx[i].end_time
			linefx[i].word.center			= linefx[i].center
			linefx[i].word.duration			= linefx[i].duration
			linefx[i].word.right 			= linefx[i].right
			linefx[i].word.mid_time			= linefx[i].mid_time
			linefx[i].word.height			= linefx[i].height
			linefx[i].word.text				= linefx[i].word.text
			linefx[i].word.top				= linefx[i].top
			linefx[i].word.text_stripped	= linefx[i].text_stripped
			linefx[i].word.middle			= linefx[i].middle
			linefx[i].word.width			= linefx[i].width
			linefx[i].word.bottom			= linefx[i].bottom
			------------▼ syl
			syls_line, syls_dur = text.text2syl( linefx[i].text, linefx[i].duration )
			linefx[i].syl		= { }
			linefx[i].syl.n		= #syls_line
			linefx[i].syl.text	= ""
			syls_left			= linefx[i].left
			syls_start			= 0
			for k = 1, #syls_line do
				linefx[i].syl.i					= k
				linefx[i].syl[k]				= { }
				linefx[i].syl[k].text			= text.karaoke_true( syls_line ) and syls_line[k]:gsub( "KEclip", " " ) or F( "{\\k%s}%s", math.round( syls_dur[k]/10 ), syls_line[k] ):gsub( "KEclip", " " )
				linefx[i].syl[k].text_raw		= linefx[i].syl[k].text:gsub( "KEclip", " " )
				linefx[i].syl[k].text_stripped	= text.text2stripped( syls_line[k] )
				linefx[i].syl[k].text1			= text.remove_tags( syls_line[k] ):gsub( "KEfx", "" )
				linefx[i].syl[k].text2			= linefx[i].syl[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].syl[k].width_t		= aegisub.text_extents( l_style, linefx[i].syl[k].text1 )
				linefx[i].syl[k].width			= aegisub.text_extents( l_style, linefx[i].syl[k].text2 )
				linefx[i].syl[k].left			= syls_left 
				linefx[i].syl[k].center			= syls_left + linefx[i].syl[k].width/2
				linefx[i].syl[k].right			= syls_left + linefx[i].syl[k].width
				linefx[i].syl[k].top			= linefx[i].top
				linefx[i].syl[k].middle			= linefx[i].middle
				linefx[i].syl[k].bottom			= linefx[i].bottom
				linefx[i].syl[k].height			= linefx[i].height
				linefx[i].syl[k].duration		= syls_dur[k]
				linefx[i].syl[k].dur			= syls_dur[k]
				linefx[i].syl[k].start_time		= syls_start
				linefx[i].syl[k].end_time		= linefx[i].syl[k].start_time + linefx[i].syl[k].duration
				linefx[i].syl[k].mid_time		= linefx[i].syl[k].start_time + linefx[i].syl[k].duration/2
				linefx[i].syl.text				= linefx[i].syl.text .. linefx[i].syl[k].text:gsub( "KEfx", "" )
				syls_left 						= syls_left  + linefx[i].syl[k].width_t
				syls_start						= syls_start + linefx[i].syl[k].duration
				table.insert( mmwth[i].sy, linefx[i].syl[k].width )
				table.insert( mmdur[i].sy, linefx[i].syl[k].dur )
			end
			for k = #syls_line + 1, 2*#syls_line do
				linefx[i].syl[k] = linefx[i].syl[#syls_line]
			end
			for k = -#syls_line + 1, 0 do
				linefx[i].syl[k] = linefx[i].syl[1]
			end
			linefx[i].syl.start_time	= linefx[i].start_time
			linefx[i].syl.left			= linefx[i].left
			linefx[i].syl.end_time		= linefx[i].end_time
			linefx[i].syl.center		= linefx[i].center
			linefx[i].syl.duration		= linefx[i].duration
			linefx[i].syl.right			= linefx[i].right
			linefx[i].syl.mid_time		= linefx[i].mid_time
			linefx[i].syl.height		= linefx[i].height
			linefx[i].syl.text			= linefx[i].syl.text
			linefx[i].syl.top			= linefx[i].top
			linefx[i].syl.text_stripped	= linefx[i].text_stripped
			linefx[i].syl.middle		= linefx[i].middle
			linefx[i].syl.width			= linefx[i].width
			linefx[i].syl.bottom		= linefx[i].bottom
			linefx[i].kara				= linefx[i].syl
			------------▼ text.romaji
			roma_line, roma_dur = text.text2syl( linefx[i].text, linefx[i].duration )
			linefx[i].roma		= { }
			linefx[i].roma.n	= #roma_line
			linefx[i].roma.text	= ""
			linefx_roma_wdth	= 0
			roma_start			= 0
			for k = 1, #roma_line do
				linefx[i].roma.i				= k
				linefx[i].roma[k]				= { }
				linefx[i].roma[k].tag			= roma_line[k]:match( "%{.-%}" ) or ""
				linefx[i].roma[k].text			= linefx[i].roma[k].tag:gsub( "KEclip", " " ) .. text.kana2romaji( text.remove_tags( roma_line[k] ) )
				linefx[i].roma[k].text_raw		= linefx[i].roma[k].text:gsub( "KEclip", " " )
				linefx[i].roma[k].text_stripped	= text.text2stripped( linefx[i].roma[k].text )
				linefx[i].roma[k].text1			= text.remove_tags( linefx[i].roma[k].text ):gsub( "KEfx", "" )
				linefx[i].roma[k].text2			= linefx[i].roma[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].roma[k].width_t		= aegisub.text_extents( l_style, linefx[i].roma[k].text1 )
				linefx[i].roma[k].width			= aegisub.text_extents( l_style, linefx[i].roma[k].text2 )
				linefx[i].roma.text				= linefx[i].roma.text .. linefx[i].roma[k].text:gsub( "KEfx", "" )
				linefx_roma_wdth				= linefx_roma_wdth + linefx[i].roma[k].width_t
			end
			options_lft = { l_style.margin_l, (xres + l_style.margin_l - l_style.margin_r)/2 - linefx_roma_wdth/2, xres - l_style.margin_r - linefx_roma_wdth }
			roma_left	= options_lft[(l_style.align - 1)%3 + 1]
			for k = 1, #roma_line do
				linefx[i].roma[k].left			= roma_left 
				linefx[i].roma[k].center		= roma_left + linefx[i].roma[k].width/2
				linefx[i].roma[k].right			= roma_left + linefx[i].roma[k].width
				linefx[i].roma[k].top			= linefx[i].top
				linefx[i].roma[k].middle		= linefx[i].middle
				linefx[i].roma[k].bottom		= linefx[i].bottom
				linefx[i].roma[k].height		= linefx[i].height
				linefx[i].roma[k].duration		= roma_dur[k]
				linefx[i].roma[k].dur			= roma_dur[k]
				linefx[i].roma[k].start_time	= roma_start
				linefx[i].roma[k].end_time		= linefx[i].roma[k].start_time + linefx[i].roma[k].duration
				linefx[i].roma[k].mid_time		= linefx[i].roma[k].start_time + linefx[i].roma[k].duration/2
				roma_left 						= roma_left  + linefx[i].roma[k].width_t
				roma_start						= roma_start + linefx[i].roma[k].duration
				table.insert( mmwth[i].ro, linefx[i].roma[k].width )
				table.insert( mmdur[i].ro, linefx[i].roma[k].dur )
			end
			for k = #roma_line + 1, 2*#roma_line do
				linefx[i].roma[k] = linefx[i].roma[#roma_line]
			end
			for k = -#roma_line + 1, 0 do
				linefx[i].roma[k] = linefx[i].roma[1]
			end
			linefx[i].roma.start_time		= linefx[i].start_time
			linefx[i].roma.end_time			= linefx[i].end_time
			linefx[i].roma.duration			= linefx[i].duration
			linefx[i].roma.mid_time			= linefx[i].mid_time
			linefx[i].roma.text				= linefx[i].roma.text
			linefx[i].roma.text_stripped	= text.remove_tags( linefx[i].roma.text )
			linefx[i].roma.width			= aegisub.text_extents( l_style, linefx[i].roma.text_stripped )
			linefx[i].roma.left				= options_lft[(l_style.align - 1)%3 + 1]
			linefx[i].roma.center			= linefx[i].roma.left + linefx[i].roma.width/2
			linefx[i].roma.right			= linefx[i].roma.left + linefx[i].roma.width
			linefx[i].roma.height			= linefx[i].height
			linefx[i].roma.top				= linefx[i].top
			linefx[i].roma.middle			= linefx[i].middle
			linefx[i].roma.bottom			= linefx[i].bottom
			------------▼ text.hiragana
			hira_line, hira_dur = text.text2syl( linefx[i].text, linefx[i].duration )
			linefx[i].hira		= { }
			linefx[i].hira.n	= #hira_line
			linefx[i].hira.text	= ""
			linefx_hira_wdth	= 0
			hira_start			= 0
			for k = 1, #hira_line do
				linefx[i].hira.i				= k
				linefx[i].hira[k]				= { }
				linefx[i].hira[k].tag			= hira_line[k]:match( "%{.-%}" ) or ""
				linefx[i].hira[k].text			= linefx[i].hira[k].tag:gsub( "KEclip", " " ) .. text.syl2hiragana( text.remove_tags( hira_line[k] ) )
				linefx[i].hira[k].text_raw		= linefx[i].hira[k].text:gsub( "KEclip", " " )
				linefx[i].hira[k].text_stripped	= text.text2stripped( linefx[i].hira[k].text )
				linefx[i].hira[k].text1			= text.remove_tags( linefx[i].hira[k].text ):gsub( "KEfx", "" )
				linefx[i].hira[k].text2			= linefx[i].hira[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].hira[k].width_t		= aegisub.text_extents( l_style, linefx[i].hira[k].text1 )
				linefx[i].hira[k].width			= aegisub.text_extents( l_style, linefx[i].hira[k].text2 )
				linefx[i].hira.text				= linefx[i].hira.text .. linefx[i].hira[k].text:gsub( "KEfx", "" )
				linefx_hira_wdth				= linefx_hira_wdth + linefx[i].hira[k].width_t
			end
			options_lft = { l_style.margin_l, (xres + l_style.margin_l - l_style.margin_r)/2 - linefx_hira_wdth/2, xres - l_style.margin_r - linefx_hira_wdth }
			hira_left	= options_lft[(l_style.align - 1)%3 + 1]
			for k = 1, #hira_line do
				linefx[i].hira[k].left			= hira_left 
				linefx[i].hira[k].center		= hira_left + linefx[i].hira[k].width/2
				linefx[i].hira[k].right			= hira_left + linefx[i].hira[k].width
				linefx[i].hira[k].top			= linefx[i].top
				linefx[i].hira[k].middle		= linefx[i].middle
				linefx[i].hira[k].bottom		= linefx[i].bottom
				linefx[i].hira[k].height		= linefx[i].height
				linefx[i].hira[k].duration		= hira_dur[k]
				linefx[i].hira[k].dur			= hira_dur[k]
				linefx[i].hira[k].start_time	= hira_start
				linefx[i].hira[k].end_time		= linefx[i].hira[k].start_time + linefx[i].hira[k].duration
				linefx[i].hira[k].mid_time		= linefx[i].hira[k].start_time + linefx[i].hira[k].duration/2
				hira_left 						= hira_left  + linefx[i].hira[k].width_t
				hira_start						= hira_start + linefx[i].hira[k].duration
				table.insert( mmwth[i].hi, linefx[i].hira[k].width )
				table.insert( mmdur[i].hi, linefx[i].hira[k].dur )
			end
			for k = #hira_line + 1, 2*#hira_line do
				linefx[i].hira[k] = linefx[i].hira[#hira_line]
			end
			for k = -#hira_line + 1, 0 do
				linefx[i].hira[k] = linefx[i].hira[1]
			end
			linefx[i].hira.start_time		= linefx[i].start_time
			linefx[i].hira.end_time			= linefx[i].end_time
			linefx[i].hira.duration			= linefx[i].duration
			linefx[i].hira.mid_time			= linefx[i].mid_time
			linefx[i].hira.text				= linefx[i].hira.text
			linefx[i].hira.text_stripped	= text.remove_tags( linefx[i].hira.text )
			linefx[i].hira.width			= aegisub.text_extents( l_style, linefx[i].hira.text_stripped )
			linefx[i].hira.left				= options_lft[(l_style.align - 1)%3 + 1]
			linefx[i].hira.center			= linefx[i].hira.left + linefx[i].hira.width/2
			linefx[i].hira.right			= linefx[i].hira.left + linefx[i].hira.width
			linefx[i].hira.height			= linefx[i].height
			linefx[i].hira.top				= linefx[i].top
			linefx[i].hira.middle			= linefx[i].middle
			linefx[i].hira.bottom			= linefx[i].bottom
			------------▼ text.katakana
			kata_line, kata_dur = text.text2syl( linefx[i].text, linefx[i].duration )
			linefx[i].kata		= { }
			linefx[i].kata.n	= #kata_line
			linefx[i].kata.text	= ""
			linefx_kata_wdth	= 0
			kata_start			= 0
			for k = 1, #kata_line do
				linefx[i].kata.i				= k
				linefx[i].kata[k]				= { }
				linefx[i].kata[k].tag			= kata_line[k]:match( "%{.-%}" ) or ""
				linefx[i].kata[k].text			= linefx[i].kata[k].tag:gsub( "KEclip", " " ) .. text.syl2katakana( text.remove_tags( kata_line[k] ) )
				linefx[i].kata[k].text_raw		= linefx[i].kata[k].text:gsub( "KEclip", " " )
				linefx[i].kata[k].text_stripped	= text.text2stripped( linefx[i].kata[k].text )
				linefx[i].kata[k].text1			= text.remove_tags( linefx[i].kata[k].text ):gsub( "KEfx", "" )
				linefx[i].kata[k].text2			= linefx[i].kata[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].kata[k].width_t		= aegisub.text_extents( l_style, linefx[i].kata[k].text1 )
				linefx[i].kata[k].width			= aegisub.text_extents( l_style, linefx[i].kata[k].text2 )
				linefx[i].kata.text				= linefx[i].kata.text .. linefx[i].kata[k].text:gsub( "KEfx", "" )
				linefx_kata_wdth				= linefx_kata_wdth + linefx[i].kata[k].width_t
			end
			options_lft = { l_style.margin_l, (xres + l_style.margin_l - l_style.margin_r)/2 - linefx_kata_wdth/2, xres - l_style.margin_r - linefx_kata_wdth }
			kata_left = options_lft[(l_style.align - 1)%3 + 1]
			for k = 1, #kata_line do
				linefx[i].kata[k].left			= kata_left 
				linefx[i].kata[k].center		= kata_left + linefx[i].kata[k].width/2
				linefx[i].kata[k].right			= kata_left + linefx[i].kata[k].width
				linefx[i].kata[k].top			= linefx[i].top
				linefx[i].kata[k].middle		= linefx[i].middle
				linefx[i].kata[k].bottom		= linefx[i].bottom
				linefx[i].kata[k].height		= linefx[i].height
				linefx[i].kata[k].duration		= kata_dur[k]
				linefx[i].kata[k].dur			= kata_dur[k]
				linefx[i].kata[k].start_time	= kata_start
				linefx[i].kata[k].end_time		= linefx[i].kata[k].start_time + linefx[i].kata[k].duration
				linefx[i].kata[k].mid_time		= linefx[i].kata[k].start_time + linefx[i].kata[k].duration/2
				kata_left 						= kata_left  + linefx[i].kata[k].width_t
				kata_start						= kata_start + linefx[i].kata[k].duration
				table.insert( mmwth[i].ka, linefx[i].kata[k].width )
				table.insert( mmdur[i].ka, linefx[i].kata[k].dur )
			end
			for k = #kata_line + 1, 2*#kata_line do
				linefx[i].kata[k] = linefx[i].kata[#kata_line]
			end
			for k = -#kata_line + 1, 0 do
				linefx[i].kata[k] = linefx[i].kata[1]
			end
			linefx[i].kata.start_time		= linefx[i].start_time
			linefx[i].kata.end_time			= linefx[i].end_time
			linefx[i].kata.duration			= linefx[i].duration
			linefx[i].kata.mid_time			= linefx[i].mid_time
			linefx[i].kata.text				= linefx[i].kata.text
			linefx[i].kata.text_stripped	= text.remove_tags( linefx[i].kata.text )
			linefx[i].kata.width			= aegisub.text_extents( l_style, linefx[i].kata.text_stripped )
			linefx[i].kata.left				= options_lft[(l_style.align - 1)%3 + 1]
			linefx[i].kata.center			= linefx[i].kata.left + linefx[i].kata.width/2
			linefx[i].kata.right			= linefx[i].kata.left + linefx[i].kata.width
			linefx[i].kata.height			= linefx[i].height
			linefx[i].kata.top				= linefx[i].top
			linefx[i].kata.middle			= linefx[i].middle
			linefx[i].kata.bottom			= linefx[i].bottom
			------------▼ char
			chars_line, chars_dur = text.text2char( linefx[i].text, linefx[i].duration )
			linefx[i].char		= { }
			linefx[i].char.n	= #chars_line
			linefx[i].char.text	= ""
			chars_left			= linefx[i].left
			chars_start			= 0
			for k = 1, #chars_line do
				linefx[i].char.i				= k
				linefx[i].char[k]				= { }
				linefx[i].char[k].text			= F( "{\\k%s}%s", math.round( chars_dur[k]/10 ), chars_line[k] ):gsub( "KEclip", " " )
				linefx[i].char[k].text_raw		= linefx[i].char[k].text:gsub( "KEclip", " " )
				linefx[i].char[k].text_stripped	= text.text2stripped( chars_line[k] )
				linefx[i].char[k].text1			= text.remove_tags( chars_line[k] ):gsub( "KEfx", "" )
				linefx[i].char[k].text2			= linefx[i].char[k].text_stripped:gsub( "KEfx", "" )
				linefx[i].char[k].width_t		= aegisub.text_extents( l_style, linefx[i].char[k].text1 )
				linefx[i].char[k].width			= aegisub.text_extents( l_style, linefx[i].char[k].text2 )
				linefx[i].char[k].left			= chars_left 
				linefx[i].char[k].center		= chars_left + linefx[i].char[k].width/2
				linefx[i].char[k].right			= chars_left + linefx[i].char[k].width
				linefx[i].char[k].top			= linefx[i].top
				linefx[i].char[k].middle		= linefx[i].middle
				linefx[i].char[k].bottom		= linefx[i].bottom
				linefx[i].char[k].height		= linefx[i].height
				linefx[i].char[k].duration		= chars_dur[k]
				linefx[i].char[k].dur			= chars_dur[k]
				linefx[i].char[k].start_time	= chars_start
				linefx[i].char[k].end_time		= linefx[i].char[k].start_time + linefx[i].char[k].duration
				linefx[i].char[k].mid_time		= linefx[i].char[k].start_time + linefx[i].char[k].duration/2
				linefx[i].char.text				= linefx[i].char.text .. linefx[i].char[k].text:gsub( "KEfx", "" )
				chars_left 						= chars_left  + linefx[i].char[k].width_t
				chars_start						= chars_start + linefx[i].char[k].duration
				table.insert( mmwth[i].ch, linefx[i].char[k].width )
				table.insert( mmdur[i].ch, linefx[i].char[k].dur )
			end
			for k = #chars_line + 1, 2*#chars_line do
				linefx[i].char[k] = linefx[i].char[#chars_line]
			end
			for k = -#chars_line + 1, 0 do
				linefx[i].char[k] = linefx[i].char[1]
			end
			linefx[i].char.start_time		= linefx[i].start_time
			linefx[i].char.left				= linefx[i].left
			linefx[i].char.end_time			= linefx[i].end_time
			linefx[i].char.center			= linefx[i].center
			linefx[i].char.duration			= linefx[i].duration
			linefx[i].char.right			= linefx[i].right
			linefx[i].char.mid_time			= linefx[i].mid_time
			linefx[i].char.height			= linefx[i].height
			linefx[i].char.text				= linefx[i].char.text
			linefx[i].char.top				= linefx[i].top
			linefx[i].char.text_stripped	= linefx[i].text_stripped
			linefx[i].char.middle			= linefx[i].middle
			linefx[i].char.width			= linefx[i].width
			linefx[i].char.bottom			= linefx[i].bottom
			------------------------------------------------------------------------------------------------
			if i == 1 
				or linefx[i - 1].style ~= linefx[i].style then
				linefx[i].pretime = 0
			else
				linefx[i].pretime = linefx[i].start_time - linefx[i - 1].end_time
			end
			if i == #linefx
				or linefx[i + 1].style ~= linefx[i].style then
				linefx[i].posttime = 0
			else
				linefx[i].posttime = linefx[i + 1].start_time - linefx[i].end_time
			end
			------------------------------------------------------------------------------------------------
		end
		for k = -linefx.nn, 0 do
			linefx[k] = linefx[1]
		end
		for k = linefx.nn + 1, 2*linefx.nn do
			linefx[k] = linefx[linefx.nn]
		end
	end
	
	function effector.macro_fx( subtitles, selected_lines, active_line )
		effector.decide( )
		effector.preprosses_styles( styles, subtitles, #selected_lines > 0 )
		local meta, styles = karaskel.collect_head( subtitles )
		repeat
			box_res, sett = aegisub.dialog.display( setting_box, { "Apply Selection", "Cancel", "Style Manager" } )
			---------------------------------------------------
			if sett.saveconfiguration == true then
				setting_box[3].value  = sett.line_style
				setting_box[5].value  = sett.effect_mode
				setting_box[11].value = sett.color_1c
				setting_box[12].value = sett.color_2c
				setting_box[13].value = sett.color_3c
				setting_box[14].value = sett.color_4c
				setting_box[15].value = sett.alpha_1a
				setting_box[16].value = sett.alpha_2a
				setting_box[17].value = sett.alpha_3a
				setting_box[18].value = sett.alpha_4a
				setting_box[19].value = sett.linecomment
				setting_box[24].value = sett.tags_filter
			end
			---------------------------------------------------
			if box_res == "Back <" then
				repeat
					box_res, sett = aegisub.dialog.display( setting_box, { "Apply Selection", "Cancel", "Style Manager" } )
				until box_res == "Apply Selection" or box_res == "Cancel" or box_res == "Apply " .. sett.effect_mode or box_res == "Modify " .. sett.effect_mode
			end
			---------------------------------------------------
			if box_res == "Style Manager" then
				if sett.line_style == "Selected Lines"
					or sett.line_style == "All Lines"
					or sett.line_style == "" then
					style_fx = setting_box[3].items[1]
				else
					style_fx = sett.line_style
				end
				setting_box[11].value = styles[style_fx].color1
				setting_box[12].value = styles[style_fx].color2
				setting_box[13].value = styles[style_fx].color3
				setting_box[14].value = styles[style_fx].color4
				setting_box[15].value = tonumber( alpha_from_style( styles[style_fx].color1 ):match( "(%x%x)" ), 16 )
				setting_box[16].value = tonumber( alpha_from_style( styles[style_fx].color2 ):match( "(%x%x)" ), 16 )
				setting_box[17].value = tonumber( alpha_from_style( styles[style_fx].color3 ):match( "(%x%x)" ), 16 )
				setting_box[18].value = tonumber( alpha_from_style( styles[style_fx].color4 ):match( "(%x%x)" ), 16 )
			end
			---------------------------------------------------
			if box_res == "Apply Selection"
				and sett.line_style ~= "" then
				if  sett.effect_mode == "lead-in[fx]" then
					setting_box[21] = {class = "label"; 							x = 1; y = 13;	height = 1; width = 2; label = " Select lead-in[fx]:"}
					setting_box[22] = {name = "lead_in_fx";		class = "dropdown";	x = 1; y = 14;	height = 1; width = 4;  hint = "Select the Effect lead-in[fx] for Karaoke."; items = leadin_fx; value = sett.lead_in_fx or leadin_fx[1]}
				elseif sett.effect_mode == "hi-light[fx]" then
					setting_box[21] = {class = "label"; 							x = 1; y = 13;	height = 1; width = 2; label = " Select hi-light[fx]:"}
					setting_box[22] = {name = "hi_light_fx";	class = "dropdown";	x = 1; y = 14;	height = 1; width = 4;  hint = "Select the Effect hi-light[fx] for Karaoke."; items = hilight_fx; value = sett.hi_light_fx or hilight_fx[1]}
				elseif sett.effect_mode == "lead-out[fx]" then
					setting_box[21] = {class = "label"; 							x = 1; y = 13;	height = 1; width = 2; label = " Select lead-out[fx]:"}
					setting_box[22] = {name = "lead_out_fx"; 	class = "dropdown";	x = 1; y = 14;	height = 1; width = 4;  hint = "Select the Effect lead-out[fx] for Karaoke."; items = leadout_fx; value = sett.lead_out_fx or leadout_fx[1]}
				elseif sett.effect_mode == "shape[fx]" then
					setting_box[21] = {class = "label"; 							x = 1; y = 13;	height = 1; width = 2; label = " Select shape[fx]:"}
					setting_box[22] = {name = "shape_fx_fx"; 	class = "dropdown";	x = 1; y = 14;	height = 1; width = 4;  hint = "Select the Effect shape[fx] for Karaoke."; items = shape_fx; value = sett.shape_fx_fx or shape_fx[1]}
				elseif sett.effect_mode == "translation[fx]" then
					setting_box[21] = {class = "label"; 							x = 1; y = 13;	height = 1; width = 2; label = " Select translation[fx]:"}
					setting_box[22] = {name = "transla_fx_fx"; 	class = "dropdown";	x = 1; y = 14;	height = 1; width = 4;  hint = "Select the Effect Translation for Karaoke."; items = transla_fx; value = sett.transla_fx_fx or transla_fx[1]}
				end
				---------------------------------------------------
				repeat
					box_res, sett = aegisub.dialog.display( setting_box, { "Apply " .. sett.effect_mode, "Cancel", "Modify " .. sett.effect_mode, "Back <" } )
					if sett.saveconfiguration == true then
						if sett.effect_mode == "lead-in[fx]" then
							setting_box[22].value = sett.lead_in_fx
							sett.effect = sett.lead_in_fx
						elseif sett.effect_mode == "hi-light[fx]" then
							setting_box[22].value = sett.hi_light_fx
							sett.effect = sett.hi_light_fx
						elseif sett.effect_mode == "lead-out[fx]" then
							setting_box[22].value = sett.lead_out_fx
							sett.effect = sett.lead_out_fx
						elseif sett.effect_mode == "shape[fx]" then
							setting_box[22].value = sett.shape_fx_fx
							sett.effect = sett.shape_fx_fx
						elseif sett.effect_mode == "translation[fx]" then
							setting_box[22].value = sett.transla_fx_fx
							sett.effect = sett.transla_fx_fx
						end
					end
				until box_res == "Apply " .. sett.effect_mode or box_res == "Cancel" or box_res == "Modify " .. sett.effect_mode or box_res == "Back <"
			end
			mode5_fx = {
				[1] = sett.lead_in_fx,
				[2] = sett.hi_light_fx,
				[3] = sett.lead_out_fx,
				[4] = sett.shape_fx_fx,
				[5] = sett.transla_fx_fx
			}
			---------------------------------------------------
			index1 = table.index( list_mode, sett.effect_mode )
			index2 = table.index( list_fx[index1], mode5_fx[index1] )
			fx_box = list_library[index1][index2]
			fx__   = table.inbox2( fx_box or list_library[1][1] )
			---------------------------------------------------
			if box_res == "Apply " .. sett.effect_mode
				and sett.line_style ~= ""  then
				effector.list = { [1] = fx__ }
				for kik, v in ipairs( effector.list ) do
					fx__ = v
					if #effector.list == 1
						or kik == #effector.list then
						lines_comment = sett.linecomment
					else
						lines_comment = false
					end
					aegisub.progress.title( format( "KE %s: %s", script_version, fx__.effect:gsub( "%S+%[fx%]%: ", "" ) ) )
					effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
				end
				local meta, styles = karaskel.collect_head( subtitles, true )
				aegisub.set_undo_point( script_name )
				aegisub.progress.task( "Script successfully implemented!!" )
			end
			---------------------------------------------------
			if box_res == "Modify " .. sett.effect_mode
				and sett.line_style ~= "" then
				fx_box[63].value = fx_box[63].value or sett.effect_mode
				fx_box[68].label = format( " Style [fx]: %s", sett.line_style )
				repeat
					box_res, fx__ = aegisub.dialog.display( fx_box, { "Apply " .. sett.effect_mode, "Cancel", "Style Manager Colors", "Change Template Type", "Back <"--[[, "insert function"--]] } )
					fx__.effect = fx_box[1].label
					if box_res == "insert function" then
						include( "insert function.lua" )
						repeat
							box_ins, config__ = aegisub.dialog.display( conf_insert, { "Insert", "Cancel" } )
							if box_ins == "Insert" then
								fx__.addtag = fx__.addtag .. "Insert Demo"
							end
						until box_ins == "Insert" or box_ins == "Cancel"
					end
					if fx__.saveFX == true then
						fx_box[29].value, fx_box[30].value, fx_box[31].value = fx__.t_type,   fx__.noblank,  fx__.v_kanji
						fx_box[32].value, fx_box[33].value, fx_box[34].value = fx__.color1,   fx__.color3,   fx__.color4
						fx_box[35].value, fx_box[36].value, fx_box[37].value = fx__.alpha1,   fx__.alpha3,   fx__.alpha4
						fx_box[38].text,  fx_box[39].text,  fx_box[40].text	 = fx__.start_t,  fx__.end_t,    fx__.fun_x
						fx_box[41].text,  fx_box[42].text,  fx_box[43].text	 = fx__.fun_y,    fx__.s_i,      fx__.s_f
						fx_box[44].text,  fx_box[45].text,  fx_box[46].text	 = fx__.center_x, fx__.center_y, fx__.scale_x
						fx_box[47].text,  fx_box[48].text,  fx_box[49].text	 = fx__.scale_y,  fx__.align,    fx__.layer
						fx_box[50].text,  fx_box[51].text,  fx_box[52].text	 = fx__.move_x,   fx__.move_y,   fx__.move_t
						fx_box[53].text,  fx_box[54].text,  fx_box[55].text	 = fx__.loops,    fx__.size,     fx__.returnfx
						fx_box[56].text,  fx_box[57].text,  fx_box[62].text	 = fx__.addtag,   fx__.variable, fx__.namefx
						fx_box[63].value, fx_box[66].value, fx_box[67].value = fx__.folderfx, fx__.language, fx__.modify
					end
					if box_res == "Style Manager Colors" then
						if sett.line_style == "Selected Lines"
							or sett.line_style == "All Lines"
							or sett.line_style == "" then
							style_fx = setting_box[3].items[1]
						else
							style_fx = sett.line_style
						end
						fx_box[32].value = styles[style_fx].color1
						fx_box[33].value = styles[style_fx].color3
						fx_box[34].value = styles[style_fx].color4
						fx_box[35].value = tonumber( alpha_from_style( styles[style_fx].color1 ):match( "(%x%x)" ), 16 )
						fx_box[36].value = tonumber( alpha_from_style( styles[style_fx].color3 ):match( "(%x%x)" ), 16 )
						fx_box[37].value = tonumber( alpha_from_style( styles[style_fx].color4 ):match( "(%x%x)" ), 16 )
					end
					if box_res == "Change Template Type" then	
						for i = 38, 57 do
							if fx__.t_type == "Char"
								or fx__.t_type == "Translation Char" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "char." ):gsub( "word%.", "char." )
								fx_box[i].text = fx_box[i].text:gsub( "furi%.", "char." ):gsub( "syl%.",  "char." ):gsub( "hira%.", "char." )
								fx_box[i].text = fx_box[i].text:gsub( "kata%.", "char." ):gsub( "roma%.", "char." ):gsub( "widtht", "width" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped",   "" ):gsub( "char.kara", "line.kara" )
							elseif fx__.t_type == "Syl" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.",  "syl." ):gsub( "word%.",  "syl." )
								fx_box[i].text = fx_box[i].text:gsub( "furi%.",  "syl." ):gsub( "hira%.",  "syl." ):gsub( "kata%.",  "syl." )
								fx_box[i].text = fx_box[i].text:gsub( "roma%.",  "syl." ):gsub( "char%.",  "syl." ):gsub( "_stripped",   "" )
								fx_box[i].text = fx_box[i].text:gsub( "syl.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Hiragana" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "hira." ):gsub( "word%.", "hira." )
								fx_box[i].text = fx_box[i].text:gsub( "furi%.", "hira." ):gsub( "syl%.",  "hira." ):gsub( "kata%.", "hira." )
								fx_box[i].text = fx_box[i].text:gsub( "roma%.", "hira." ):gsub( "char%.", "hira." ):gsub( "widtht", "width" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped",   "" ):gsub( "hira.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Katakana" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "kata." ):gsub( "word%.", "kata." )
								fx_box[i].text = fx_box[i].text:gsub( "furi%.", "kata." ):gsub( "syl%.",  "kata." ):gsub( "hira%.", "kata." )
								fx_box[i].text = fx_box[i].text:gsub( "roma%.", "kata." ):gsub( "char%.", "kata." ):gsub( "widtht", "width" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped",   "" ):gsub( "kata.kara", "line.kara" )
							elseif fx__.t_type == "Convert to Romaji" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "roma." ):gsub( "word%.", "roma." )
								fx_box[i].text = fx_box[i].text:gsub( "furi%.", "roma." ):gsub( "syl%.",  "roma." ):gsub( "hira%.", "roma." )
								fx_box[i].text = fx_box[i].text:gsub( "kata%.", "roma." ):gsub( "char%.", "roma." ):gsub( "widtht", "width" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped",   "" ):gsub( "roma.kara", "line.kara" )
							elseif fx__.t_type == "Furi" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "furi." ):gsub( "word%.", "furi." )
								fx_box[i].text = fx_box[i].text:gsub( "syl%.",  "furi." ):gsub( "hira%.", "furi." ):gsub( "kata%.", "furi." )
								fx_box[i].text = fx_box[i].text:gsub( "roma%.", "furi." ):gsub( "char%.", "furi." ):gsub( "widtht", "width" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped",   "" ):gsub( "furi.kara", "line.kara" )
							elseif fx__.t_type == "Word"
								or fx__.t_type == "Translation Word" then
								fx_box[i].text = fx_box[i].text:gsub( "line%.", "word." ):gsub( "syl%.",  "word." ):gsub( "furi%.", "word." )
								fx_box[i].text = fx_box[i].text:gsub( "hira%.", "word." ):gsub( "kata%.", "word." ):gsub( "roma%.", "word." )
								fx_box[i].text = fx_box[i].text:gsub( "char%.", "word." ):gsub( "widtht", "width" ):gsub( "_stripped",   "" )
								fx_box[i].text = fx_box[i].text:gsub( "word.kara", "line.kara" )
							elseif fx__.t_type == "Line"
								or fx__.t_type == "Translation Line"
								or fx__.t_type == "Template Line [Word]"
								or fx__.t_type == "Template Line [Syl]"
								or fx__.t_type == "Template Line [Char]" then
								fx_box[i].text = fx_box[i].text:gsub( "word%.", "line." ):gsub( "syl%.",  "line." ):gsub( "furi%.", "line." )
								fx_box[i].text = fx_box[i].text:gsub( "hira%.", "line." ):gsub( "kata%.", "line." ):gsub( "roma%.", "line." )
								fx_box[i].text = fx_box[i].text:gsub( "char%.", "line." ):gsub( "widtht", "width" ):gsub( "%.text", "%.text_stripped" )
								fx_box[i].text = fx_box[i].text:gsub( "_stripped_stripped", "_stripped" ):gsub( "%.[ ]*%.text_stripped", "%.%.text" )
							end
						end
					end
				until box_res == "Apply " .. sett.effect_mode or box_res == "Cancel" or box_res == "Back <"
				if box_res == "Apply " .. sett.effect_mode then
					effector.list = { [1] = fx__ }
					for kik, v in ipairs( effector.list ) do
						fx__ = v
						if #effector.list == 1
							or kik == #effector.list then
							lines_comment = sett.linecomment
						else
							lines_comment = false
						end
						aegisub.progress.title( format( "KE %s: %s", script_version, fx__.effect:gsub( "%S+%[fx%]%: ", "" ) ) )
						effector.preprosses_macro( subtitles, sett, fx__, selected_lines )
					end
					if fx__.printfx == false then
						local meta, styles = karaskel.collect_head( subtitles, true )
					end
					aegisub.set_undo_point( script_name )
					aegisub.progress.task( "Script successfully implemented!!" )
				end
			end
			---------------------------------------------------
		until box_res == "Apply Selection" or box_res == "Cancel" or box_res == "Apply " .. sett.effect_mode or box_res == "Modify " .. sett.effect_mode
	end
