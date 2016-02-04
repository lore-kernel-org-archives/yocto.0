Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB9A7E00C94; Thu,  4 Feb 2016 04:09:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.104 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtp.laposte.net (smtpoutz29.laposte.net [194.117.213.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC90E00C8F
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 04:09:14 -0800 (PST)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout017 (Postfix) with ESMTP id BFC70A00DE0
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:09:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1454587752; bh=Mqb9RhQoh8s9PhmMYAV3Emdq48VPTpbVMaCR4GauCrw=;
	h=To:Subject:Date:From;
	b=gXs/qqwCZ2hr74wTC1Cj5QTVPdGmyzvFp+cMwmgrN1HUNj89xfAostWZItRRcf2H3
	msdEhA1ADmiYE6PxVS+69zwagGCOJSb9SSY5rRHiyH/lFZU0SsMwpmjFRWw1a3cEow
	JXxm8nDqS+vIjO9fGe3F8pxegFcKAa6PkI6z6gRXIa8WlmC9dWu/XnRP/gK/6nSD4d
	0cd14Ado0RbjtQHvgPZF/SQipXRr0kBgpg9Bu6Dpc6C1gbe3CUCiUciH1OZ3JFNIz9
	Xb7bmnSsL+pXNmS0JZAhAfhKM/47Otx5SdiFPcURC5SLo1E3qZtip6BY4rz4O9KY3B
	17fNBxMz1vjtg==
Received: from lpn-prd-vrin004 (lpn-prd-vrin004.laposte [10.128.63.5])
	by lpn-prd-vrout017 (Postfix) with ESMTP id BCB6AA00DA0
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:09:12 +0100 (CET)
Received: from lpn-prd-vrin004 (localhost [127.0.0.1])
	by lpn-prd-vrin004 (Postfix) with ESMTP id B073470E250
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:09:12 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [195.200.163.38])
	by lpn-prd-vrin004 (Postfix) with ESMTPA id 8E80D70E245
	for <yocto@yoctoproject.org>; Thu,  4 Feb 2016 13:09:12 +0100 (CET)
To: yocto@yoctoproject.org
Date: Thu, 04 Feb 2016 13:09:12 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.yca5dm1gmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 195.200.163.38
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekjedrvddtgdefiecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgfvufffggfh
X-VR-Cause-3: kfgfsegrtderredtreelnecuhfhrohhmpehiuggvrghlshhimhcuoehiuggvrghlshhimheslhgrphho
X-VR-Cause-4: shhtvgdrnhgvtheqnecuffhomhgrihhnpehophgvrhgrrdgtohhmnecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-5: mhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvghtpedu
X-VR-Cause-6: leehrddvtddtrdduieefrdefkedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdr
X-VR-Cause-7: nhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
Subject: Re: yocto and linux mint 17.3
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
X-List-Received-Date: Thu, 04 Feb 2016 12:09:18 -0000
Content-Type: multipart/alternative; boundary=----------EciqInxd8Tquaox4zJHZTu

------------EciqInxd8Tquaox4zJHZTu
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: Quoted-Printable

Up ! nobodies have an idea ?

Le Thu, 04 Feb 2016 13:08:00 +0100, a =E9crit:

>
> Hi all, i'm new on yocto and i have a problem to start a buil with my =
 =

> host pc. My pc is under linux mint 17.3 (cinnamon) 64 bits. When i  =

> launch a bitbake, i >have this error :
>
> ImportError: No module named pysqlite2
> /home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py:107=
:  =

> RuntimeWarning: Parent module 'bb' not found while handling absolute  =

> >import
> from bb.msg import BBLogFormatter
> Error in atexit._run_exitfuncs:
> Traceback (most recent call last):
> File "/usr/local/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
> func(*targs, **kargs)
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py", =
 =

> line 107, in print_ui_queue
> from bb.msg import BBLogFormatter
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init__.py=
",  =

> line 77, in <module>
> from bb import fetch2 as fetch
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fetch2/__in=
it__.py",  =

> line 37, in <module>
> import bb.persist_data, bb.utils
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/persist_dat=
a.py",  =

> line 35, in <module>
> from pysqlite2 import dbapi2 as sqlite3
> ImportError: No module named pysqlite2
> Error in sys.exitfunc:
> Traceback (most recent call last):
> File "/usr/local/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
> func(*targs, **kargs)
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py", =
 =

> line 107, in print_ui_queue
> from bb.msg import BBLogFormatter
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init__.py=
",  =

> line 77, in <module>
> from bb import fetch2 as fetch
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fetch2/__in=
it__.py",  =

> line 37, in <module>
> import bb.persist_data, bb.utils
> File  =

> "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/persist_dat=
a.py",  =

> line 35, in <module>
> from pysqlite2 import dbapi2 as sqlite3
> ImportError: No module named pysqlite2
>
>
>  apparently bb can't import pysqlite2 ? I already install pip install =
 =

> pysqlite libsqlite3-dev but nothing to solve my problem ... An idea to=
  =

> >resolve this please ?
> --Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mai=
l/



-- =

Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------EciqInxd8Tquaox4zJHZTu
Content-Type: multipart/related; boundary=----------EciqInxd8TquaoG7Ga95m3

------------EciqInxd8TquaoG7Ga95m3
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1454587752399.ac9195655d6a208e@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head><style type=3D"text/css">body { font-family:'=
Times New Roman'; font-size:13px}</style>
<style type=3D"text/css">body { font-family:'Times New Roman'; font-size=
:13px}</style>
</head>
<body><div>Up ! nobodies have an idea ?</div><div><br></div><div>Le Thu,=
 04 Feb 2016 13:08:00 +0100,  a =E9crit:<br></div><br><blockquote style=3D=
"margin: 0 0 0.80ex; border-left: #0000FF 2px solid; padding-left: 1ex">=
<div><br>Hi all, i'm new on yocto and i have a problem to start a buil w=
ith my host pc. My pc is under linux mint 17.3 (cinnamon) 64 bits. When =
i launch a bitbake, i have this error :<br><br><font color=3D"#ff8000"><=
em>ImportError: No module named pysqlite2<br>/home/mls/bin/fsl-release-b=
sp/sources/poky/bitbake/lib/bb/event.py:107: RuntimeWarning: Parent modu=
le 'bb' not found while handling absolute import<br>  from bb.msg import=
 BBLogFormatter<br>Error in atexit._run_exitfuncs:<br>Traceback (most re=
cent call last):<br>  File "/usr/local/lib/python2.7/atexit.py", line 24=
, in _run_exitfuncs<br>    func(*targs, **kargs)<br>  File "/home/mls/bi=
n/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py", line 107, in pr=
int_ui_queue<br>    from bb.msg import BBLogFormatter<br>  File "/home/m=
ls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init__.py", line 77=
, in &lt;module&gt;<br>    from bb import fetch2 as fetch<br>  File "/ho=
me/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fetch2/__init__.p=
y", line 37, in &lt;module&gt;<br>    import bb.persist_data, bb.utils<b=
r>  File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/pers=
ist_data.py", line 35, in &lt;module&gt;<br>    from pysqlite2 import db=
api2 as sqlite3<br>ImportError: No module named pysqlite2<br>Error in sy=
s.exitfunc:<br>Traceback (most recent call last):<br>  File "/usr/local/=
lib/python2.7/atexit.py", line 24, in _run_exitfuncs<br>    func(*targs,=
 **kargs)<br>  File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/=
lib/bb/event.py", line 107, in print_ui_queue<br>    from bb.msg import =
BBLogFormatter<br>  File "/home/mls/bin/fsl-release-bsp/sources/poky/bit=
bake/lib/bb/__init__.py", line 77, in &lt;module&gt;<br>    from bb impo=
rt fetch2 as fetch<br>  File "/home/mls/bin/fsl-release-bsp/sources/poky=
/bitbake/lib/bb/fetch2/__init__.py", line 37, in &lt;module&gt;<br>    i=
mport bb.persist_data, bb.utils<br>  File "/home/mls/bin/fsl-release-bsp=
/sources/poky/bitbake/lib/bb/persist_data.py", line 35, in &lt;module&gt=
;<br>    from pysqlite2 import dbapi2 as sqlite3<br>ImportError: No modu=
le named pysqlite2</em></font><br><br><br>
&nbsp;
<span style=3D"color: rgb(51, 51, 51); font-family: 'Lucida Grande', 'Tr=
ebuchet MS', Verdana, Helvetica, Arial, sans-serif; font-size: 13px; fon=
t-style: normal; font-variant: normal; font-weight: normal; letter-spaci=
ng: normal; line-height: 18.2px; orphans: auto; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 1; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important=
; float: none; background-color: rgb(224, 237, 211);">apparently bb can'=
t import pysqlite2 ? I already install pip install pysqlite libsqlite3-d=
ev but nothing to solve my problem ... An idea to resolve this please ?<=
/span>
<br><br></div><div id=3D"M2Signature"><div>-- </div><div>Utilisant le lo=
giciel de courrier d'Opera : <a href=3D"http://www.opera.com/mail/">http=
://www.opera.com/mail/</a></div></div></blockquote><br><br><br><div id=3D=
"M2Signature"><div>-- </div><div>Utilisant le logiciel de courrier d'Ope=
ra : <a href=3D"http://www.opera.com/mail/">http://www.opera.com/mail/</=
a></div></div></body></html>

------------EciqInxd8TquaoG7Ga95m3--

------------EciqInxd8Tquaox4zJHZTu--
