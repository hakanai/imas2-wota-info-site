// Conservatively only do this if the user explicitly asked for light mode.
// Don't flashbang the poor innocents who are just using an older browser.
if (window.matchMedia && window.matchMedia('(prefers-color-scheme: light)').matches) {
    jtd.setTheme('light');
}
