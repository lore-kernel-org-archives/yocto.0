Return-Path: <Amit.Kumar@lntinfotech.com>
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BB57E013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 22:17:39 -0700 (PDT)
Received: from [216.82.254.20:39962] by server-8.bemta-7.messagelabs.com id
	41/AC-30913-1719FD15; Fri, 12 Jul 2013 05:17:37 +0000
X-Env-Sender: Amit.Kumar@lntinfotech.com
X-Msg-Ref: server-11.tower-47.messagelabs.com!1373606253!3569795!1
X-Originating-IP: [203.101.96.8]
X-StarScan-Received: 
X-StarScan-Version: 6.9.9; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 25183 invoked from network); 12 Jul 2013 05:17:36 -0000
Received: from unknown (HELO BLRINMSHTCAS02.bglrodc.lntinfotech.com)
	(203.101.96.8)
	by server-11.tower-47.messagelabs.com with AES128-SHA encrypted SMTP;
	12 Jul 2013 05:17:36 -0000
Received: from blrinmsmbx01.bglrodc.lntinfotech.com ([169.254.2.40]) by
	BLRINMSHTCAS02.bglrodc.lntinfotech.com ([172.28.0.83]) with mapi;
	Fri, 12 Jul 2013 10:46:33 +0530
From: Amit Kumar <Amit.Kumar@lntinfotech.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 12 Jul 2013 10:46:26 +0530
Thread-Topic: Error to Build Arago Yocto Project
Thread-Index: Ac5+v/dll4o+Jj5FS/OJ1Nn+KGqeeA==
Message-ID: <AF0985D076EB244693F2CCD71AAB10BC2C5E364015@BLRINMSMBX01.bglrodc.lntinfotech.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Error to Build Arago Yocto Project
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
X-List-Received-Date: Fri, 12 Jul 2013 05:17:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AF0985D076EB244693F2CCD71AAB10BC2C5E364015BLRINMSMBX01b_"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E364015BLRINMSMBX01b_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
            I am building the Arago Yocto Project first time. I have follow=
 the steps given in the Arago Project link -
http://arago-project.org/wiki/index.php/Setting_Up_Build_Environment#Detail=
ed_Setup

Error Log is -

amit@amit-HP:~/tisdk/build$ MACHINE=3Dam335x-evm bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main =
build
ERROR: Unable to parse /home/amit/tisdk/sources/meta-arago/meta-arago-extra=
s/recipes-qt/qt4/qt4-embedded-gles_4.8.4.bb<http://qt4-embedded-gles_4.8.4.=
bb>                       | ETA:  --:--:--
Traceback (most recent call last):
  File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/ConfHandler.=
py", line 68, in include(oldfn=3D'/home/amit/tisdk/sources/meta-arago/meta-=
arago-extras/recipes-qt/qt4/qt4-embedded-gles_4.8.4.bb<http://qt4-embedded-=
gles_4.8.4.bb>', fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4=
/qt4-4.8.4.inc', lineno=3D1, data=3D<bb.data_smart.DataSmart object at 0xa1=
4f12c>, error_out=3D'include required'):
         try:
    >        ret =3D handle(fn, data, True)
         except IOError:
  File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line 90=
, in handle(fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-=
4.8.4.inc', data=3D<bb.data_smart.DataSmart object at 0xa14f12c>, include=
=3DTrue):
             if h['supports'](fn, data):
    >            return h['handle'](fn, data, include)
         raise ParseError("not a BitBake file", fn)
  File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/BBHandler.py=
", line 142, in handle(fn=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-=
qt/qt4/qt4-4.8.4.inc', d=3D<bb.data_smart.DataSmart object at 0xa14f12c>, i=
nclude=3DTrue):
         if include:
    >        bb.parse.mark_dependency(d, abs_fn)

  File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line 76=
, in mark_dependency(d=3D<bb.data_smart.DataSmart object at 0xa14f12c>, f=
=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc'):
             f =3D "%s/%s" % (os.getcwd(), f[2:])
    >    deps =3D (d.getVar('__depends') or []) + [(f, cached_mtime(f))]
         d.setVar('__depends', deps)
  File "/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py", line 58=
, in cached_mtime(f=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4=
/qt4-4.8.4.inc'):
         if f not in __mtime_cache:
    >        __mtime_cache[f] =3D os.stat(f)[stat.ST_MTIME]
         return __mtime_cache[f]
OSError: [Errno 2] No such file or directory: '/home/amit/tisdk/sources/oe-=
core/meta/recipes-qt/qt4/qt4-4.8.4.inc'

ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
amit@amit-HP:~/tisdk/build$ cd ../sources/oe-core/meta/recipes-qt/


Is anybody have faced the same error or anybody know the reason of this err=
or?
Please help me out for the same.


Thanks
AmitK


________________________________
The contents of this e-mail and any attachment(s) may contain confidential =
or privileged information for the intended recipient(s). Unintended recipie=
nts are prohibited from taking action on the basis of information in this e=
-mail and using or disseminating the information, and must notify the sende=
r and delete it from their system. L&T Infotech will not accept responsibil=
ity or liability for the accuracy or completeness of, or the presence of an=
y virus or disabling code in this e-mail"

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E364015BLRINMSMBX01b_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Trebuchet MS";
	panose-1:2 11 6 3 2 2 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Trebuchet MS","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I am building the Arago Yocto Project firs=
t time. I have follow the steps given in the Arago Project link &#8211;<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><a href=3D"http://arago-project.or=
g/wiki/index.php/Setting_Up_Build_Environment#Detailed_Setup">http://arago-=
project.org/wiki/index.php/Setting_Up_Build_Environment#Detailed_Setup</a>
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;">Error Log is &#8211;
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal">amit@amit-HP:~/tisdk/build$ MACHINE=3Dam335x-evm bit=
bake core-image-minimal<br>
Pseudo is not present but is required, building this first before the main =
build<br>
ERROR: Unable to parse /home/amit/tisdk/sources/meta-arago/meta-arago-extra=
s/recipes-qt/qt4/<a href=3D"http://qt4-embedded-gles_4.8.4.bb">qt4-embedded=
-gles_4.8.4.bb</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 | ETA:&nbsp; --:--:--<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/Co=
nfHandler.py&quot;, line 68, in include(oldfn=3D'/home/amit/tisdk/sources/m=
eta-arago/meta-arago-extras/recipes-qt/qt4/<a href=3D"http://qt4-embedded-g=
les_4.8.4.bb">qt4-embedded-gles_4.8.4.bb</a>', fn=3D'/home/amit/tisdk/sourc=
es/oe-core/meta/recipes-qt/qt4/qt4-4.8.4.inc',
 lineno=3D1, data=3D&lt;bb.data_smart.DataSmart object at 0xa14f12c&gt;, er=
ror_out=3D'include required'):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; try:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ret =3D h=
andle(fn, data, True)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; except IOError:<br>
&nbsp; File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py=
&quot;, line 90, in handle(fn=3D'/home/amit/tisdk/sources/oe-core/meta/reci=
pes-qt/qt4/qt4-4.8.4.inc', data=3D&lt;bb.data_smart.DataSmart object at 0xa=
14f12c&gt;, include=3DTrue):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 h['supports'](fn, data):<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; return h['handle'](fn, data, include)<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; raise ParseError(&quot;not=
 a BitBake file&quot;, fn)<br>
&nbsp; File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/parse_py/BB=
Handler.py&quot;, line 142, in handle(fn=3D'/home/amit/tisdk/sources/oe-cor=
e/meta/recipes-qt/qt4/qt4-4.8.4.inc', d=3D&lt;bb.data_smart.DataSmart objec=
t at 0xa14f12c&gt;, include=3DTrue):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if include:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; bb.parse.=
mark_dependency(d, abs_fn)<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp; File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py=
&quot;, line 76, in mark_dependency(d=3D&lt;bb.data_smart.DataSmart object =
at 0xa14f12c&gt;, f=3D'/home/amit/tisdk/sources/oe-core/meta/recipes-qt/qt4=
/qt4-4.8.4.inc'):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; f =
=3D &quot;%s/%s&quot; % (os.getcwd(), f[2:])<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; deps =3D (d.getVar('__depends') o=
r []) &#43; [(f, cached_mtime(f))]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; d.setVar('__depends', deps=
)<br>
&nbsp; File &quot;/home/amit/tisdk/sources/bitbake/lib/bb/parse/__init__.py=
&quot;, line 58, in cached_mtime(f=3D'/home/amit/tisdk/sources/oe-core/meta=
/recipes-qt/qt4/qt4-4.8.4.inc'):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if f not in __mtime_cache:=
<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; __mtime_c=
ache[f] =3D os.stat(f)[stat.ST_MTIME]<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return __mtime_cache[f]<br=
>
OSError: [Errno 2] No such file or directory: '/home/amit/tisdk/sources/oe-=
core/meta/recipes-qt/qt4/qt4-4.8.4.inc'<br>
<br>
ERROR: Command execution failed: Exited with 1<br>
<br>
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
<br>
amit@amit-HP:~/tisdk/build$ cd ../sources/oe-core/meta/recipes-qt/<o:p></o:=
p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is anybody have faced the same error or anybody know=
 the reason of this error?
<o:p></o:p></p>
<p class=3D"MsoNormal">Please help me out for the same.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks <o:p></o:p></p>
<p class=3D"MsoNormal">AmitK <o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Tr=
ebuchet MS&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Black" size=3D"3">The contents of this e-mail=
 and any attachment(s) may contain confidential or privileged information f=
or the intended recipient(s). Unintended recipients are prohibited from tak=
ing action on the basis of information
 in this e-mail and using or disseminating the information, and must notify=
 the sender and delete it from their system. L&amp;T Infotech will not acce=
pt responsibility or liability for the accuracy or completeness of, or the =
presence of any virus or disabling code
 in this e-mail&quot;<br>
</font>
</body>
</html>

--_000_AF0985D076EB244693F2CCD71AAB10BC2C5E364015BLRINMSMBX01b_--
