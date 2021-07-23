## Load settings from the GUI (autoconfig.yaml)
config.load_autoconfig()

## Set dark mode
#c.colors.webpage.bg = 'black'
#c.colors.webpage.darkmode.enabled = True

## Youtube ad-block
from qutebrowser.api import interceptor
def filter_yt(info: interceptor.Request):
    """Block the given request if neccessary"""
    url = info.request_url
    if url.host() == 'www.youtube.com' and url.path() == '/get_video_info' and '&adformat=' in url.query():
        info.block()
interceptor.register(filter_yt)

#  Search engines
c.url.searchengines = {
        "DEFAULT": "https://google.com/search?q={}", 
        "git": "https://github.com/search?q={}", 
        "mail": "https://mail.google.com/mail/u/0/#search/{}", 
        "mail-personal": "https://mail.google.com/mail/u/1/#search/{}", 
        "yt": "https://www.youtube.com/results?search_query={}",
        "aur": "https://aur.archlinux.org/packages/?O=0&K={}",
}
