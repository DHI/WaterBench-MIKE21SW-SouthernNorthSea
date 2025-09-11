// Created     : 2025-09-11 10:14:36
// DLL         : C:\Program Files (x86)\DHI\MIKE Zero\2025\bin\x64\pfs2004.dll
// Version     : 23.0.3.18318

[FemEngineSW]
   [DOMAIN]
      Touched = 1
      discretization = 2
      number_of_dimensions = 2
      number_of_meshes = 1
      file_name = |.\Mesh_8000_elems.mesh|
      type_of_reordering = 1
      number_of_domains = 16
      coordinate_type = 'LONG/LAT'
      minimum_depth = -5.0
      datum_depth = 0.0
      vertical_mesh_type_overall = 1
      number_of_layers = 10
      z_sigma = -835.7825012499998
      vertical_mesh_type = 1
      layer_thickness = 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1
      sigma_c = 0.1
      theta = 2.0
      b = 0.0
      number_of_layers_zlevel = 10
      vertical_mesh_type_zlevel = 1
      constant_layer_thickness_zlevel = 83.57825012499998
      variable_layer_thickness_zlevel = 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998, 83.57825012499998
      type_of_bathymetry_adjustment = 2
      minimum_layer_thickness_zlevel = 0.8357825012499999
      type_of_mesh = 0
      type_of_gauss = 3
      [BOUNDARY_NAMES]
         Touched = 0
         MzSEPfsListItemCount = 4
         [CODE_33]
            Touched = 0
            name = 'NW'
         EndSect  // CODE_33

         [CODE_2]
            Touched = 0
            name = 'South'
         EndSect  // CODE_2

         [CODE_32]
            Touched = 0
            name = 'N'
         EndSect  // CODE_32

         [CODE_31]
            Touched = 0
            name = 'NE'
         EndSect  // CODE_31

      EndSect  // BOUNDARY_NAMES

      [MATERIAL]
         Touched = 0
         include_material_zones = 0
         [MATERIAL_ZONES]
            Touched = 0
            MzSEPfsListItemCount = 0
            input_format = 1
            format_code = 2
            coordinate_type = 'LONG/LAT'
            file_name = ||
            item_number_for_code = 1
            item_name_for_code = ''
         EndSect  // MATERIAL_ZONES

      EndSect  // MATERIAL

   EndSect  // DOMAIN

   [TIME]
      Touched = 1
      start_time = 2022, 1, 1, 0, 0, 0
      time_step_interval = 1800.0
      number_of_time_steps = 35038
   EndSect  // TIME

   [MODULE_SELECTION]
      Touched = 1
      mode_of_hydrodynamic_module = 0
      hydrodynamic_features = 1
      fluid_property = 1
      mode_of_spectral_wave_module = 2
      mode_of_transport_module = 0
      mode_of_mud_transport_module = 0
      mode_of_eco_lab_module = 0
      mode_of_sand_transport_module = 0
      mode_of_particle_tracking_module = 0
      mode_of_oil_spill_module = 0
      mode_of_shoreline_module = 0
   EndSect  // MODULE_SELECTION

   [SPECTRAL_WAVE_MODULE]
      mode = 2
      [SPACE]
         number_of_mesh_geometry = 1
      EndSect  // SPACE

      [EQUATION]
         Touched = 1
         formulation = 2
         time_formulation = 2
         JONSWAP_factor_1 = 0.92
         JONSWAP_factor_2 = 0.83
         type_of_settings = 2
      EndSect  // EQUATION

      [TIME]
         Touched = 1
         start_time_step = 0
         time_step_factor = 1
         time_step_factor_AD = 1
      EndSect  // TIME

      [SPECTRAL]
         Touched = 1
         type_of_frequency_discretization = 2
         number_of_frequencies = 36
         minimum_frequency = 0.033
         frequency_interval = 0.02
         frequency_factor = 1.11
         type_of_directional_discretization = 1
         number_of_directions = 36
         minimum_direction = 0.0
         maximum_direction = 180.0
         separation_of_wind_sea_and_swell = 4
         threshold_frequency = 0.125
         maximum_threshold_frequency = 0.5959088268863617
         c_wave_age = 0.83
         p_wave_age = 1.0
      EndSect  // SPECTRAL

      [SOLUTION_TECHNIQUE]
         Touched = 1
         error_level = 0
         maximum_number_of_errors = 200
         minimum_period = 0.1
         maximum_period = 25.0
         initial_period = 8.0
         scheme_of_space_discretization_geographical = 1
         scheme_of_space_discretization_direction = 1
         scheme_of_space_discretization_frequency = 1
         method = 1
         number_of_iterations = 500
         tolerance1 = 1e-06
         tolerance2 = 0.001
         relaxation_factor = 0.1
         number_of_levels_in_transport_calc = 32
         number_of_steps_in_source_calc = 1
         maximum_CFL_number = 1.0
         dt_min = 0.01
         dt_max = 600.0
         type_overall = 0
         file_name_overall = 'convergence_overall.dfs0'
         input_format = 1
         coordinate_type = ''
         input_file_name = ||
         number_of_points = 0
         type_domain = 0
         file_name_domain = 'convergence_domain.dfsu'
         output_frequency = 5
      EndSect  // SOLUTION_TECHNIQUE

      [DEPTH]
         Touched = 1
         type = 1
         minimum_depth = 0.01
         format = 3
         soft_time_interval = 0.0
         constant_level = 0.0
         file_name = |..\input/AreaHD.dfsu|
         item_number = 1
         item_name = 'Surface elevation'
      EndSect  // DEPTH

      [CURRENT]
         Touched = 1
         type = 0
         type_blocking = 1
         factor_blocking = 0.1
         format = 3
         soft_time_interval = 0.0
         constant_x_velocity = 0.0
         constant_y_velocity = 0.0
         file_name = |..\input/AreaHD.dfsu|
         item_number_for_x_velocity = 2
         item_number_for_y_velocity = 3
         item_name_for_x_velocity = 'U velocity'
         item_name_for_y_velocity = 'V velocity'
      EndSect  // CURRENT

      [WIND]
         Touched = 1
         type = 2
         format = 3
         constant_speed = 0.0
         constant_direction = 0.0
         file_name = |.\Wind.dfs2|
         item_number_for_x_velocity = 1
         item_number_for_y_velocity = 2
         item_name_for_x_velocity = 'U'
         item_name_for_y_velocity = 'V'
         soft_time_interval = 0.0
         calculate_neutral_wind = 0
         formula = 1
         type_of_drag = 1
         linear_growth_coefficient = 0.0015
         type_of_air_sea_interaction = 1
         growth_parameter = 1.65
         wave_age_tuning_parameter = 0.008
         background_Charnock_parameter = 0.02
         Charnock_parameter = 0.0
         alpha_drag = 0.00063
         beta_drag = 6.600000000000001e-05
         [CORRECTION_OF_FRICTION_VELOCITY]
            type = 1
            CAP_value = 0.06
         EndSect  // CORRECTION_OF_FRICTION_VELOCITY

      EndSect  // WIND

      [ICE]
         Touched = 1
         type = 0
         format = 3
         c_cut_off = 0.33
         file_name = ||
         item_number = 1
         item_name = ''
      EndSect  // ICE

      [WATER_PROPERTIES]
         Touched = 1
         type_of_density = 1
         [DENSITY]
            Touched = 1
            format = 0
            constant_value = 1010.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // DENSITY

         [TEMPERATURE]
            Touched = 1
            format = 3
            constant_value = 10.0
            file_name = |.\/data/daca/DWF23/SW/Wind/StabCorr/2022-12-25_2023-10-01.dfs2|
            item_number = 3
            item_name = 'SST'
         EndSect  // TEMPERATURE

         [SALINITY]
            Touched = 1
            format = 0
            constant_value = 35.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // SALINITY

      EndSect  // WATER_PROPERTIES

      [AIR_PROPERTIES]
         Touched = 1
         type_of_density = 1
         [DENSITY]
            Touched = 1
            format = 0
            constant_value = 1.23725
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // DENSITY

         [PRESSURE]
            Touched = 1
            format = 3
            constant_value = 1013.0
            file_name = |.\/data/daca/DWF23/HD/WRF_Winds/v7/2022-12-25_2023-10-01.dfs2|
            item_number = 3
            item_name = 'Mean Sea Level Pressure'
         EndSect  // PRESSURE

         [TEMPERATURE]
            Touched = 1
            format = 3
            constant_value = 15.0
            file_name = |.\/data/daca/DWF23/SW/Wind/StabCorr/2022-12-25_2023-10-01.dfs2|
            item_number = 1
            item_name = 'T2'
            height_of_temperature_specification = 2.0
         EndSect  // TEMPERATURE

         [RELATIVE_HUMIDITY]
            Touched = 1
            format = 3
            constant_value = 70.0
            file_name = |.\/data/daca/DWF23/SW/Wind/StabCorr/2022-12-25_2023-10-01.dfs2|
            item_number = 2
            item_name = 'RH2'
            height_of_humidity_specification = 2.0
         EndSect  // RELATIVE_HUMIDITY

      EndSect  // AIR_PROPERTIES

      [DIFFRACTION]
         Touched = 1
         type = 0
         minimum_delta = -0.75
         maximum_delta = 3.0
         type_of_smoothing = 1
         smoothing_factor = 1.0
         number_of_smoothing_steps = 1
      EndSect  // DIFFRACTION

      [TRANSFER]
         Touched = 1
         type = 1
         type_triad = 0
         alpha_EB = 0.25
      EndSect  // TRANSFER

      [WAVE_BREAKING]
         Touched = 1
         type = 1
         type_of_gamma = 1
         alpha = 1.0
         gamma_steepness = 1.0
         type_of_effect_on_frequency = 0
         type_of_roller = 0
         roller_propagation_factor = 1.0
         roller_dissipation_factor = 0.15
         roller_density = 1000.0
         [GAMMA]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.8
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // GAMMA

      EndSect  // WAVE_BREAKING

      [BOTTOM_FRICTION]
         Touched = 1
         type = 3
         constant_fc = 0.0
         type_of_effect_on_frequency = 1
         [FRICTION_COEFFICIENT]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.0077
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // FRICTION_COEFFICIENT

         [FRICTION_FACTOR]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.0212
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // FRICTION_FACTOR

         [NIKURADSE_ROUGHNESS]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.01
            file_name = |.\/data/daca/DWF23/SW/Roughness/Roughness_005.dfsu|
            item_number = 1
            item_name = 'Nikuradse  '
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // NIKURADSE_ROUGHNESS

         [SAND_GRAIN_SIZE]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.00025
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // SAND_GRAIN_SIZE

      EndSect  // BOTTOM_FRICTION

      [VEGETATION]
         Touched = 1
         type = 0
         file_name = ||
         item_number = 1
         item_name = ''
      EndSect  // VEGETATION

      [MUD]
         Touched = 1
         type = 0
         viscosity = 0.01
         sediment_density = 2650.0
         alpha = 1.0
         [THICKNESS]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.0
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // THICKNESS

         [DENSITY]
            Touched = 1
            type = 1
            format = 0
            constant_value = 300.0
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // DENSITY

      EndSect  // MUD

      [WHITECAPPING]
         Touched = 1
         type = 1
         type_of_spectrum = 1
         mean_frequency_power = 1
         mean_wave_number_power = 1
         [dissipation_cdiss]
            Touched = 1
            type = 1
            format = 0
            constant_value = 1.33
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // dissipation_cdiss

         [dissipation_delta]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.5
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // dissipation_delta

      EndSect  // WHITECAPPING

      [STRUCTURES]
         type = 0
         input_format = 1
         coordinate_type = ''
         number_of_structures = 0
         input_file_name = ||
         [LINE_STRUCTURES]
            Touched = 1
            MzSEPfsListItemCount = 0
            output_of_link_data = 0
            file_name_section = 'line_section.xyz'
            number_of_structures = 0
         EndSect  // LINE_STRUCTURES

      EndSect  // STRUCTURES

      [INITIAL_CONDITIONS]
         Touched = 1
         type = 0
         type_additional = 1
         type_of_spectra = 1
         fetch = 100000.0
         max_peak_frequency = 0.4
         max_Phillips_constant = 0.0081
         shape_parameter_sigma_a = 0.07000000000000001
         shape_parameter_sigma_b = 0.09
         peakednes_parameter_gamma = 3.3
         file_name_m = ||
         item_number_m0 = 1
         item_number_m1 = 1
         item_name_m0 = ''
         item_name_m1 = ''
         file_name_A = ||
         item_number_A = 1
         item_name_A = ''
      EndSect  // INITIAL_CONDITIONS

      [BOUNDARY_CONDITIONS]
         Touched = 1
         MzSEPfsListItemCount = 4
         [CODE_1]
         EndSect  // CODE_1

         [CODE_33]
            Touched = 1
            type = 5
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = |.\SW_NorthWest_BC.dfs2|
            item_number = 1
            item_name = '0_56: Energy density'
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_33

         [CODE_2]
            Touched = 1
            type = 5
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = |.\SW_South_BC.dfs2|
            item_number = 1
            item_name = '7_56: Energy density'
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_2

         [CODE_32]
            Touched = 1
            type = 5
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = |.\SW_North_BC.dfs2|
            item_number = 1
            item_name = '3_56: Energy density'
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_32

         [CODE_31]
            Touched = 1
            type = 5
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = |.\SW_NorthEast_BC.dfs2|
            item_number = 1
            item_name = '6_56: Energy density'
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_31

      EndSect  // BOUNDARY_CONDITIONS

      [OUTPUTS]
         Touched = 1
         MzSEPfsListItemCount = 2
         number_of_outputs = 2
         [OUTPUT_1]
            Touched = 1
            include = 1
            title = 'Output 1'
            file_name = 'Area.dfsu'
            type = 1
            format = 2
            flood_and_dry = 2
            coordinate_type = 'LONG/LAT'
            zone = 0
            input_file_name = ||
            input_format = 1
            interpolation_type = 1
            use_end_time = 1
            first_time_step = 0
            last_time_step = 35038
            time_step_frequency = 1
            number_of_points = 1
            [POINT_1]
               name = 'Point 1'
               x = 3.188969
               y = 52.8375605
            EndSect  // POINT_1

            [LINE]
               number_of_points = 2
               [POINT_1]
                  x = -2.4591
                  y = 49.675121
               EndSect  // POINT_1

               [POINT_2]
                  x = 8.837038
                  y = 56.0
               EndSect  // POINT_2

               npoints = 20
            EndSect  // LINE

            [AREA]
               number_of_points = 4
               [POINT_1]
                  x = -2.57206138
                  y = 49.61187220999999
               EndSect  // POINT_1

               [POINT_2]
                  x = -2.57206138
                  y = 56.06324879
               EndSect  // POINT_2

               [POINT_3]
                  x = 8.94999938
                  y = 56.06324879
               EndSect  // POINT_3

               [POINT_4]
                  x = 8.94999938
                  y = 49.61187220999999
               EndSect  // POINT_4

               orientation = 0.0
               x_origo = -2.4591
               x_ds = 0.5945335789473684
               x_npoints = 20
               y_origo = 49.675121
               y_ds = 0.5945335789473684
               y_npoints = 12
               z_origo = -103.190040588379
               z_ds = 14.47409407297771
               z_npoints = 10
            EndSect  // AREA

            [INTEGRAL_WAVE_PARAMETERS]
               Touched = 0
               type_of_spectrum = 1
               minimum_frequency = 0.033
               maximum_frequency = 1.412996793136124
               separation_of_wind_sea_and_swell = 5
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               hm0_minimum = 0.01
               type_of_h_max = 3
               duration = 10800.0
               distance_above_bed_for_particle_velocity = 0.0
               minimum_direction = 0.0
               maximum_direction = 360.0
               [Total_wave_parameters]
                  Significant_wave_height = 1
                  Maximum_wave_height = 0
                  Peak_wave_period = 1
                  Wave_period_t01 = 0
                  Wave_period_t02 = 1
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 1
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Total_wave_parameters

               [Wind_sea_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Wind_sea_parameters

               [Swell_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Swell_parameters

            EndSect  // INTEGRAL_WAVE_PARAMETERS

            [INPUT_PARAMETERS]
               Touched = 0
               Surface_elevation = 0
               Water_depth = 0
               Current_velocity_components = 0
               Wind_speed = 0
               Wind_direction = 0
               Ice_concentration = 0
               Water_density = 0
               Air_density = 0
               Fluid_mud_thickness = 0
               Mud_bulk_density = 0
               Mud_dry_density = 0
            EndSect  // INPUT_PARAMETERS

            [MODEL_PARAMETERS]
               Touched = 0
               Neutral_wind_speed = 0
               Wind_friction_speed = 0
               Roughness_length = 0
               Drag_coefficient = 0
               Charnock_constant = 0
               Friction_coefficient = 0
               Breaking_parameter_gamma = 0
               Courant_number = 0
               Time_step_factor = 0
               Convergence_angle = 0
               Length = 0
               Area = 0
               Threshold_period = 0
               Roller_area = 0
               Roller_dissipation = 0
               Breaking_index = 0
            EndSect  // MODEL_PARAMETERS

            [SPECTRAL_PARAMETERS]
               Touched = 0
               separation_of_wind_sea_and_swell = 5.0
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               wave_energy = 1
               wave_action = 0
               zeroth_moment_of_wave_action = 0
               first_moment_of_wave_action = 0
               wave_energy_wind_sea = 0
               wave_energy_swell = 0
            EndSect  // SPECTRAL_PARAMETERS

         EndSect  // OUTPUT_1

         [OUTPUT_2]
            Touched = 1
            include = 1
            title = 'Output 2'
            file_name = 'Points_spectral.dfsu'
            type = 4
            format = 0
            flood_and_dry = 2
            coordinate_type = 'LONG/LAT'
            zone = 0
            input_file_name = ||
            input_format = 1
            interpolation_type = 2
            use_end_time = 1
            first_time_step = 0
            last_time_step = 35038
            time_step_frequency = 1
            number_of_points = 16
            [POINT_1]
               name = '6201045'
               x = -0.31852
               y = 54.29402
            EndSect  // POINT_1

            [POINT_2]
               name = '6201050'
               x = 0.44699
               y = 53.2449
            EndSect  // POINT_2

            [POINT_3]
               name = '6201059'
               x = 1.81717
               y = 52.47586
            EndSect  // POINT_3

            [POINT_4]
               name = '6201047'
               x = -1.47835
               y = 55.18517
            EndSect  // POINT_4

            [POINT_5]
               name = 'A121_'
               x = 3.81663
               y = 55.41664
            EndSect  // POINT_5

            [POINT_6]
               name = 'Europlatform2'
               x = 3.27639
               y = 51.99861
            EndSect  // POINT_6

            [POINT_7]
               name = 'F3platform'
               x = 4.7275
               y = 54.85389
            EndSect  // POINT_7

            [POINT_8]
               name = 'IJmuidenMunitiestort_'
               x = 4.05833
               y = 52.55
            EndSect  // POINT_8

            [POINT_9]
               name = 'J61'
               x = 2.95
               y = 53.81663
            EndSect  // POINT_9

            [POINT_10]
               name = 'K13a_'
               x = 3.22
               y = 53.21778
            EndSect  // POINT_10

            [POINT_11]
               name = 'L91_'
               x = 4.9607
               y = 53.6138
            EndSect  // POINT_11

            [POINT_12]
               name = 'Nymindegab'
               x = 7.941
               y = 55.81
            EndSect  // POINT_12

            [POINT_13]
               name = 'Oosterschelde11'
               x = 3.48122
               y = 51.64379
            EndSect  // POINT_13

            [POINT_14]
               name = 'Q1_'
               x = 4.1506
               y = 52.9264
            EndSect  // POINT_14

            [POINT_15]
               name = 'WaddenEierlandseGat'
               x = 4.66167
               y = 53.27694
            EndSect  // POINT_15

            [POINT_16]
               name = 'WesthinderBuoy'
               x = 2.4358
               y = 51.3811
            EndSect  // POINT_16

            [LINE]
               number_of_points = 2
               [POINT_1]
                  x = -2.4591
                  y = 49.675121
               EndSect  // POINT_1

               [POINT_2]
                  x = 8.837038
                  y = 56.0
               EndSect  // POINT_2

               npoints = 20
            EndSect  // LINE

            [AREA]
               number_of_points = 4
               [POINT_1]
                  x = -2.57206138
                  y = 49.61187220999999
               EndSect  // POINT_1

               [POINT_2]
                  x = -2.57206138
                  y = 56.06324879
               EndSect  // POINT_2

               [POINT_3]
                  x = 8.94999938
                  y = 56.06324879
               EndSect  // POINT_3

               [POINT_4]
                  x = 8.94999938
                  y = 49.61187220999999
               EndSect  // POINT_4

               orientation = 0.0
               x_origo = -2.4591
               x_ds = 0.5945335789473684
               x_npoints = 20
               y_origo = 49.675121
               y_ds = 0.5945335789473684
               y_npoints = 12
               z_origo = -103.190040588379
               z_ds = 14.47409407297771
               z_npoints = 10
            EndSect  // AREA

            [INTEGRAL_WAVE_PARAMETERS]
               Touched = 0
               type_of_spectrum = 1
               minimum_frequency = 0.033
               maximum_frequency = 1.412996793136124
               separation_of_wind_sea_and_swell = 5
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               hm0_minimum = 0.01
               type_of_h_max = 3
               duration = 10800.0
               distance_above_bed_for_particle_velocity = 0.0
               minimum_direction = 0.0
               maximum_direction = 360.0
               [Total_wave_parameters]
                  Significant_wave_height = 1
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 1
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 1
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 1
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Total_wave_parameters

               [Wind_sea_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Wind_sea_parameters

               [Swell_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Swell_parameters

            EndSect  // INTEGRAL_WAVE_PARAMETERS

            [INPUT_PARAMETERS]
               Touched = 0
               Surface_elevation = 0
               Water_depth = 0
               Current_velocity_components = 0
               Wind_speed = 0
               Wind_direction = 0
               Ice_concentration = 0
               Water_density = 0
               Air_density = 0
               Fluid_mud_thickness = 0
               Mud_bulk_density = 0
               Mud_dry_density = 0
            EndSect  // INPUT_PARAMETERS

            [MODEL_PARAMETERS]
               Touched = 0
               Neutral_wind_speed = 0
               Wind_friction_speed = 0
               Roughness_length = 0
               Drag_coefficient = 0
               Charnock_constant = 0
               Friction_coefficient = 0
               Breaking_parameter_gamma = 0
               Courant_number = 0
               Time_step_factor = 0
               Convergence_angle = 0
               Length = 0
               Area = 0
               Threshold_period = 0
               Roller_area = 0
               Roller_dissipation = 0
               Breaking_index = 0
            EndSect  // MODEL_PARAMETERS

            [SPECTRAL_PARAMETERS]
               Touched = 0
               separation_of_wind_sea_and_swell = 5.0
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               wave_energy = 1
               wave_action = 0
               zeroth_moment_of_wave_action = 0
               first_moment_of_wave_action = 0
               wave_energy_wind_sea = 0
               wave_energy_swell = 0
            EndSect  // SPECTRAL_PARAMETERS

         EndSect  // OUTPUT_2

      EndSect  // OUTPUTS

   EndSect  // SPECTRAL_WAVE_MODULE

EndSect  // FemEngineSW

