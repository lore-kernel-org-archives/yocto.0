Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8AEFE0050E
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2014 07:48:43 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id i17so8118247qcy.11
	for <yocto@yoctoproject.org>; Sat, 08 Feb 2014 07:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+8eAcyHyN/UrGvmoiMJ4o/qhTLSLdKwP+2zrcY2cTXo=;
	b=bRyXsXnVBToMPeuG3XObGEk42tkq2LlVYcTTLVBJIvHiDYMH/2ctk4DYv1hdM3Sly2
	xcrdP0ZjMcMHfO82h6J1Ph3NxRd/AxJI8FzXX6NEWs3xMTOoQqgnYQsbe1W6l/mENP2U
	w8pLRwG2VX2hUkObNc/5m09nJ2OS+z842YWZXM+XbhUtbLlHiPLCkTNTMaZslW7Bot2H
	7wLUDrap4fY+RYxb8+tSYW5f9Tg7OxOYJGk2JfpU8GM2vKznlNmXFgwPGO+JPj7Gatj5
	2V7shMd615zH8G6iatPDa+2k8fl1ERtcml6zXvgYZsC0iMPlC81WEXIQdO/eXSCLZuB/
	NDcQ==
MIME-Version: 1.0
X-Received: by 10.224.69.133 with SMTP id z5mr32370195qai.57.1391874522253;
	Sat, 08 Feb 2014 07:48:42 -0800 (PST)
Received: by 10.140.93.182 with HTTP; Sat, 8 Feb 2014 07:48:42 -0800 (PST)
Date: Sat, 8 Feb 2014 08:48:42 -0700
Message-ID: <CANwz6nwNoD_VsMux9rVfJcvnG4KyxqpcP4sAtMU-46zuMjX2hA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: gnuradio dora
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Feb 2014 15:48:44 -0000
Content-Type: multipart/alternative; boundary=001a11c2e7c6788c1704f1e70a7f

--001a11c2e7c6788c1704f1e70a7f
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

On dora branch GNU Radio Companion 3.6.5 starts to bring up the window and
shuts down with the following error.

gnuradio-companion

** (process:1166): WARNING **: Trying to register gtype 'GMountMountFlags'
as enum when in fact it is of type 'GFlags'

** (process:1166): WARNING **: Trying to register gtype 'GDriveStartFlags'
as enum when in fact it is of type 'GFlags'

** (process:1166): WARNING **: Trying to register gtype 'GSocketMsgFlags'
as enum when in fact it is of type 'GFlags'
<<< Welcome to GNU Radio Companion 3.6.5 >>>
Error: 'options'
>>> Failure
Traceback (most recent call last):
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/gui/MainWindow.py",
line 172, in new_page
    flow_graph = self._platform.get_new_flow_graph()
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.py",
line 152, in get_new_flow_graph
    def get_new_flow_graph(self): return self.FlowGraph(platform=self)
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/python/FlowGraph.py",
line 31, in __init__
    _FlowGraph.__init__(self, **kwargs)
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/FlowGraph.py",
line 35, in __init__
    self.import_data()
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/FlowGraph.py",
line 176, in import_data
    self._options_block = self.get_parent().get_new_block(self, 'options')
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.py",
line 162, in get_new_block
    def get_new_block(self, flow_graph, key): return self.Block(flow_graph,
n=self._blocks_n[key])
  File "/usr/lib/python2.7/site-packages/gnuradio/grc/base/odict.py", line
34, in __getitem__
    return self._data[key]
KeyError: 'options'
Also needed to include additional packages not needed in dylan branch
python-pygtk, python-lxml. and python-cheetah
Any and all help is appreciated.
Thanks

--001a11c2e7c6788c1704f1e70a7f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello all,<br><br>On dora branch GNU Radio Compa=
nion 3.6.5 starts to bring up the window and shuts down with the following =
error.<br><br>gnuradio-companion <br><br>** (process:1166): WARNING **: Try=
ing to register gtype &#39;GMountMountFlags&#39; as enum when in fact it is=
 of type &#39;GFlags&#39;<br>
<br>** (process:1166): WARNING **: Trying to register gtype &#39;GDriveStar=
tFlags&#39; as enum when in fact it is of type &#39;GFlags&#39;<br><br>** (=
process:1166): WARNING **: Trying to register gtype &#39;GSocketMsgFlags&#3=
9; as enum when in fact it is of type &#39;GFlags&#39;<br>
&lt;&lt;&lt; Welcome to GNU Radio Companion 3.6.5 &gt;&gt;&gt;<br>Error: &#=
39;options&#39;<br>&gt;&gt;&gt; Failure<br>Traceback (most recent call last=
):<br>=A0 File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/gui/Main=
Window.py&quot;, line 172, in new_page<br>
=A0=A0=A0 flow_graph =3D self._platform.get_new_flow_graph()<br>=A0 File &q=
uot;/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.py&quot;, l=
ine 152, in get_new_flow_graph<br>=A0=A0=A0 def get_new_flow_graph(self): r=
eturn self.FlowGraph(platform=3Dself)<br>
=A0 File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/python/FlowGra=
ph.py&quot;, line 31, in __init__<br>=A0=A0=A0 _FlowGraph.__init__(self, **=
kwargs)<br>=A0 File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/bas=
e/FlowGraph.py&quot;, line 35, in __init__<br>
=A0=A0=A0 self.import_data()<br>=A0 File &quot;/usr/lib/python2.7/site-pack=
ages/gnuradio/grc/base/FlowGraph.py&quot;, line 176, in import_data<br>=A0=
=A0=A0 self._options_block =3D self.get_parent().get_new_block(self, &#39;o=
ptions&#39;)<br>
=A0 File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/base/Platform.=
py&quot;, line 162, in get_new_block<br>=A0=A0=A0 def get_new_block(self, f=
low_graph, key): return self.Block(flow_graph, n=3Dself._blocks_n[key])<br>=
=A0 File &quot;/usr/lib/python2.7/site-packages/gnuradio/grc/base/odict.py&=
quot;, line 34, in __getitem__<br>
=A0=A0=A0 return self._data[key]<br>KeyError: &#39;options&#39;<br></div><d=
iv>Also needed to include additional packages not needed in dylan branch<br=
>python-pygtk, python-lxml. and python-cheetah<br></div>Any and all help is=
 appreciated.<br>
</div>Thanks <br></div>

--001a11c2e7c6788c1704f1e70a7f--
