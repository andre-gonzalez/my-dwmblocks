//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	/* {"⌨", "sb-kbselect", 0, 30}, */
	{"",	"dwm_currency",	14400, 0},
	{"",	"dwm_weather",	14400, 0},
	{"",	"dwm_packages",	14400, 13},
	{"",	"dwm_spotify", 3,  0},
	{"",	"dwm_systemd_networkd", 5,  0},
	{"",	"dwm_resources", 5,  0},
	{"",	"dwm_battery", 300,  0},
	{"",	"dwm_backlight", 0, 11},
	{"",	"dwm_pulse", 0, 10},
	{"",	"dwm_bluetooth", 60, 12},
	{"",	"dwm_date", 30,  0},
	{"",	"dwm_countdown", 1,  0},
};

//Sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char *delim = "|";

// Have dwmblocks automatically recompile and run when you edit this file in
// vim with the following line in your vimrc/init.vim:

// autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & }
