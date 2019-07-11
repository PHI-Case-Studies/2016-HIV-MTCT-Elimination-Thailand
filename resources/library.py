from IPython.display import HTML, IFrame
import warnings

def style_notebook():
    style = open("./resources/style.css", "r").read()
    return HTML(style)

def show_video(url):
    return HTML('<iframe src="'+url+'?title=0&byline=0&portrait=0" width="800" height="400" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>')

def play_mp3(file):
    return HTML('<audio src="'+file+'" controls><p>If you are reading this, it is because your browser does not support the audio element</p></audio>')

#def view_pdf(file, width, height):
#    return IFrame(file, width=width, height=height)
def view_pdf(file, width, height):
    return display(HTML('<iframe src="'+file+'"?title=0&byline=0&portrait=0" width="'+str(width)+'" height="'+str(height)+'" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'))

warnings.filterwarnings('ignore')