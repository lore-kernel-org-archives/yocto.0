Return-Path: <idealsim@laposte.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEE7EE00AAB; Tue, 19 Jan 2016 05:05:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (idealsim[at]laposte.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [194.117.213.103 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4242]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1260 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Jan 2016 05:05:31 PST
Received: from smtp.laposte.net (smtpoutz28.laposte.net [194.117.213.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 489C3E008F5
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 05:05:31 -0800 (PST)
Received: from smtp.laposte.net (localhost [127.0.0.1])
	by lpn-prd-vrout016 (Postfix) with ESMTP id AE5CA111A93
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 13:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=laposte.net; s=mail1;
	t=1453207470; bh=HOImNT7v4ReBMsbhpqMfku2I6aXvuxotnGhm0VlY/jQ=;
	h=To:Date:Subject:From;
	b=cKhs9OzZvlcDVHPX5MlplJwj+narNg9liz1M9rQFPcBkjBRzzK2BchqzOUuLp4n3K
	cB6qWNtGTDKzEBIZ/KBQhGXoG0R1VSnwIkQfe8U3DUmp8KGJmTd7CNx7YwpyopR3z+
	f2atOHdUjEr0qgwdVwRabnc+ZozAUDiutYsK/tDSJ4y2xAtJ76zwl78G2ZZ1kVoC1+
	NTSuQZMxRIEBfA8ynCtUffHD9qvxajLNOxWV2V7+XPXe8AYmap+tMCAgaAyS+jg8Ax
	yYFgL1naAdD3Fwd9exLfll/SHBiV1uRVCKMeNsA3PsyAEG2kMqBRIv3SarnBeuXimj
	TomHiUpbSW1RA==
Received: from lpn-prd-vrin003 (lpn-prd-vrin003.prosodie [10.128.63.4])
	by lpn-prd-vrout016 (Postfix) with ESMTP id AB19211170C
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 13:44:30 +0100 (CET)
Received: from lpn-prd-vrin003 (localhost [127.0.0.1])
	by lpn-prd-vrin003 (Postfix) with ESMTP id 9C13948C39E
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 13:44:30 +0100 (CET)
Received: from pc-mls.ecafaros.local (unknown [195.200.163.38])
	by lpn-prd-vrin003 (Postfix) with ESMTPA id 7D80348C392
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 13:44:30 +0100 (CET)
To: yocto@yoctoproject.org
Date: Tue, 19 Jan 2016 13:44:30 +0100
MIME-Version: 1.0
From: idealsim <idealsim@laposte.net>
Message-ID: <op.ybhkcgikmnlnty@pc-mls.ecafaros.local>
User-Agent: Opera Mail/1.0 (Win32)
X-VR-SrcIP: 195.200.163.38
X-VR-FullState: 0
X-VR-Score: 0
X-VR-Cause-1: gggruggvucftvghtrhhoucdtuddrfeekiedrleelgddvjecutefuodetggdotefrodftvfcurfhrohhf
X-VR-Cause-2: ihhlvgemucfntefrqffuvffgnecuuegrihhlohhuthemucehtddtnecunecujfgurheptgfvfffuggfh
X-VR-Cause-3: kfgfsegrtdforedtreelnecuhfhrohhmpehiuggvrghlshhimhcuoehiuggvrghlshhimheslhgrphho
X-VR-Cause-4: shhtvgdrnhgvtheqnecuffhomhgrihhnpehophgvrhgrrdgtohhmnecurfgrrhgrmhepmhhouggvpehs
X-VR-Cause-5: mhhtphhouhhtpdhhvghlohepphgtqdhmlhhsrdgvtggrfhgrrhhoshdrlhhotggrlhdpihhnvghtpedu
X-VR-Cause-6: leehrddvtddtrdduieefrdefkedpmhgrihhlfhhrohhmpehiuggvrghlshhimheslhgrphhoshhtvgdr
X-VR-Cause-7: nhgvthdprhgtphhtthhopeihohgtthhoseihohgtthhophhrohhjvggtthdrohhrgh
X-VR-AvState: No
X-VR-State: 0
Subject: yocto and linux mint 17.3
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
X-List-Received-Date: Tue, 19 Jan 2016 13:05:35 -0000
Content-Type: multipart/alternative; boundary=----------rHHn0a6v5ujI35d3xqZ9Vi

------------rHHn0a6v5ujI35d3xqZ9Vi
Content-Type: text/plain; charset=iso-8859-15; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit


Hi all, i'm new on yocto and i have a problem to start a buil with my host  
pc. My pc is under linux mint 17.3 (cinnamon) 64 bits. When i launch a  
bitbake, i have this error :

ImportError: No module named pysqlite2
/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py:107:  
RuntimeWarning: Parent module 'bb' not found while handling absolute import
 from bb.msg import BBLogFormatter
Error in atexit._run_exitfuncs:
Traceback (most recent call last):
File "/usr/local/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
func(*targs, **kargs)
File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py",  
line 107, in print_ui_queue
 from bb.msg import BBLogFormatter
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init__.py",  
line 77, in <module>
 from bb import fetch2 as fetch
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fetch2/__init__.py",  
line 37, in <module>
import bb.persist_data, bb.utils
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/persist_data.py",  
line 35, in <module>
 from pysqlite2 import dbapi2 as sqlite3
ImportError: No module named pysqlite2
Error in sys.exitfunc:
Traceback (most recent call last):
File "/usr/local/lib/python2.7/atexit.py", line 24, in _run_exitfuncs
func(*targs, **kargs)
File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py",  
line 107, in print_ui_queue
 from bb.msg import BBLogFormatter
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init__.py",  
line 77, in <module>
 from bb import fetch2 as fetch
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fetch2/__init__.py",  
line 37, in <module>
import bb.persist_data, bb.utils
File  
"/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/persist_data.py",  
line 35, in <module>
 from pysqlite2 import dbapi2 as sqlite3
ImportError: No module named pysqlite2


   apparently bb can't import pysqlite2 ? I already install pip install  
pysqlite libsqlite3-dev but nothing to solve my problem ... An idea to  
resolve this please ?

-- 
Utilisant le logiciel de courrier d'Opera : http://www.opera.com/mail/

------------rHHn0a6v5ujI35d3xqZ9Vi
Content-Type: multipart/related; boundary=----------rHHn0a6v5ujI35VJ7cYcaY

------------rHHn0a6v5ujI35VJ7cYcaY
Content-Type: text/html; charset=iso-8859-15
Content-ID: <op.1453207470375.f772017d5d6a2fda@172.22.9.5>
Content-Transfer-Encoding: Quoted-Printable

<!DOCTYPE html><html><head><style type=3D"text/css">body { font-family:'=
Times New Roman'; font-size:13px}</style></head><body><div><br>Hi all, i=
'm new on yocto and i have a problem to start a buil with my host pc. My=
 pc is under linux mint 17.3 (cinnamon) 64 bits. When i launch a bitbake=
, i have this error :<br><br><font color=3D"#ff8000"><em>ImportError: No=
 module named pysqlite2<br>/home/mls/bin/fsl-release-bsp/sources/poky/bi=
tbake/lib/bb/event.py:107: RuntimeWarning: Parent module 'bb' not found =
while handling absolute import<br>  from bb.msg import BBLogFormatter<br=
>Error in atexit._run_exitfuncs:<br>Traceback (most recent call last):<b=
r>  File "/usr/local/lib/python2.7/atexit.py", line 24, in _run_exitfunc=
s<br>    func(*targs, **kargs)<br>  File "/home/mls/bin/fsl-release-bsp/=
sources/poky/bitbake/lib/bb/event.py", line 107, in print_ui_queue<br>  =
  from bb.msg import BBLogFormatter<br>  File "/home/mls/bin/fsl-release=
-bsp/sources/poky/bitbake/lib/bb/__init__.py", line 77, in &lt;module&gt=
;<br>    from bb import fetch2 as fetch<br>  File "/home/mls/bin/fsl-rel=
ease-bsp/sources/poky/bitbake/lib/bb/fetch2/__init__.py", line 37, in &l=
t;module&gt;<br>    import bb.persist_data, bb.utils<br>  File "/home/ml=
s/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/persist_data.py", line=
 35, in &lt;module&gt;<br>    from pysqlite2 import dbapi2 as sqlite3<br=
>ImportError: No module named pysqlite2<br>Error in sys.exitfunc:<br>Tra=
ceback (most recent call last):<br>  File "/usr/local/lib/python2.7/atex=
it.py", line 24, in _run_exitfuncs<br>    func(*targs, **kargs)<br>  Fil=
e "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/event.py", =
line 107, in print_ui_queue<br>    from bb.msg import BBLogFormatter<br>=
  File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/__init=
__.py", line 77, in &lt;module&gt;<br>    from bb import fetch2 as fetch=
<br>  File "/home/mls/bin/fsl-release-bsp/sources/poky/bitbake/lib/bb/fe=
tch2/__init__.py", line 37, in &lt;module&gt;<br>    import bb.persist_d=
ata, bb.utils<br>  File "/home/mls/bin/fsl-release-bsp/sources/poky/bitb=
ake/lib/bb/persist_data.py", line 35, in &lt;module&gt;<br>    from pysq=
lite2 import dbapi2 as sqlite3<br>ImportError: No module named pysqlite2=
</em></font><br><br><br>
<span style=3D"color: rgb(51, 51, 51); font-family: 'Lucida Grande', 'Tr=
ebuchet MS', Verdana, Helvetica, Arial, sans-serif; font-size: 13px; fon=
t-style: normal; font-variant: normal; font-weight: normal; letter-spaci=
ng: normal; line-height: 18.2px; orphans: auto; text-align: start; text-=
indent: 0px; text-transform: none; white-space: normal; widows: 1; word-=
spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important=
; float: none; background-color: rgb(224, 237, 211);"></span>&nbsp;
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
://www.opera.com/mail/</a></div></div></body></html>

------------rHHn0a6v5ujI35VJ7cYcaY--

------------rHHn0a6v5ujI35d3xqZ9Vi--
