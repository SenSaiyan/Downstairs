/// @description Insert description here
// You can write your code in this editor
shader_set(shdBktGlitch);
BktGlitch_set_resolution_of_application_surface();
BktGlitch_set_time(current_time * 0.06);
BktGlitch_set_intensity(intensity);
BktGlitch_set_line_shift(0.004000);
BktGlitch_set_line_speed(0.010000);
BktGlitch_set_noise_level(0.500000);
BktGlitch_set_jumbleness(0.200000);
BktGlitch_set_jumble_speed(0.166667);
BktGlitch_set_jumble_resolution(.23333333);
BktGlitch_set_jumble_shift(0.160000);
BktGlitch_set_channel_shift(0.004000);
BktGlitch_set_channel_dispersion(0.002500);
BktGlitch_set_shakiness(0.700000);
BktGlitch_set_rng_seed(0.000000);
BktGlitch_set_line_resolution(0.420000);
BktGlitch_set_line_drift(0);
BktGlitch_set_line_vertical_shift(0.713333);

draw_surface(application_surface, 0, 0);
shader_reset();
//draw_surface(application_surface, 0, 0);