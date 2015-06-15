<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="2015.20150614190300.1"><vh>@settings</vh>
<v t="2015.20150614190300.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="2015.20150614190300.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="2015.20150614190345.1" a="E"><vh>@path ./</vh>
<v t="2015.20150614190402.1" a="E"><vh>@clean wsgi.py</vh>
<v t="2015.20150614190402.2"><vh>&lt;&lt;declarations&gt;&gt; (wsgi)</vh></v>
<v t="2015.20150614190402.3" a="E"><vh>class Midterm</vh>
<v t="2015.20150614190402.4"><vh>__init__</vh></v>
<v t="2015.20150614190402.5"><vh>index</vh></v>
<v t="2015.20150614190402.6"><vh>a_40123210</vh></v>
</v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="2015.20150614190300.1"></t>
<t tx="2015.20150614190300.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="2015.20150614190300.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="2015.20150614190345.1"></t>
<t tx="2015.20150614190402.1"># coding=utf-8
# 上面的程式內容編碼必須在程式的第一或者第二行才會有作用

################# (1) 模組導入區
# 導入 cherrypy 模組, 為了在 OpenShift 平台上使用 cherrypy 模組, 必須透過 setup.py 安裝


@language python
@tabwidth -4

&lt;&lt;declarations&gt;&gt;
@others
################# (4) 程式啟動區
# 配合程式檔案所在目錄設定靜態目錄或靜態檔案
application_conf = {'/static':{
        'tools.staticdir.on': True,
        # 程式執行目錄下, 必須自行建立 static 目錄
        'tools.staticdir.dir': _curdir+"/static"},
        '/downloads':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/downloads"},
        '/images':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/images"}
    }
    
root = Midterm()
#root.gear = gear.Gear()

if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示在 OpenSfhit 執行
    application = cherrypy.Application(root, config=application_conf)
else:
    # 表示在近端執行
    cherrypy.quickstart(root, config=application_conf)
</t>
<t tx="2015.20150614190402.2">import cherrypy
# 導入 Python 內建的 os 模組, 因為 os 模組為 Python 內建, 所以無需透過 setup.py 安裝
import os
# 導入 random 模組
import random
# 導入 gear 模組
#import gear

################# (2) 廣域變數設定區
# 確定程式檔案所在目錄, 在 Windows 下有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"


</t>
<t tx="2015.20150614190402.3">################# (3) 程式類別定義區
# 以下改用 CherryPy 網際框架程式架構
# 以下為 Hello 類別的設計內容, 其中的 object 使用, 表示 Hello 類別繼承 object 的所有特性, 包括方法與屬性設計
class Midterm(object):

    # Midterm 類別的啟動設定
    _cp_config = {
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    #'tools.sessions.locking' : 'explicit',
    # session 以檔案儲存, 而且位於 data_dir 下的 tmp 目錄
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session 有效時間設為 60 分鐘
    'tools.sessions.timeout' : 60
    }

    @others
</t>
<t tx="2015.20150614190402.4">def __init__(self):
    # hope to create downloads and images directories　
    if not os.path.isdir(download_root_dir+"downloads"):
        try:
            os.makedirs(download_root_dir+"downloads")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"images"):
        try:
            os.makedirs(download_root_dir+"images")
        except:
            print("mkdir error")
    if not os.path.isdir(download_root_dir+"tmp"):
        try:
            os.makedirs(download_root_dir+"tmp")
        except:
            print("mkdir error")
</t>
<t tx="2015.20150614190402.5"># 以 @ 開頭的 cherrypy.expose 為 decorator, 用來表示隨後的成員方法, 可以直接讓使用者以 URL 連結執行
@cherrypy.expose
# index 方法為 CherryPy 各類別成員方法中的內建(default)方法, 當使用者執行時未指定方法, 系統將會優先執行 index 方法
# 有 self 的方法為類別中的成員方法, Python 程式透過此一 self 在各成員方法間傳遞物件內容
def index(self):
    outstring = '''
    &lt;!DOCTYPE html&gt; 
    &lt;html&gt;
    &lt;head&gt;
    &lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
    &lt;/head&gt;
    &lt;body&gt;
    &lt;a href="a_40123210"&gt;學號&lt;/a&gt;&lt;br /&gt;
    &lt;/body&gt;
    &lt;/html&gt;
    '''
    
    return outstring
</t>
<t tx="2015.20150614190402.6">
@cherrypy.expose

def a_40123210(self):
    outstring = '''
    &lt;!DOCTYPE html&gt; 
    &lt;html&gt;
    &lt;head&gt;
    &lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
    &lt;/head&gt;
     &lt;/body&gt;
     40123210
    &lt;/body&gt;
    &lt;/html&gt;
    '''
    return outstring
</t>
</tnodes>
</leo_file>
