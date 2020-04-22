Received: from relay.mailchannels.net (relay.mailchannels.net [23.83.212.3])
 by mx.groups.io with SMTP id smtpd.web12.4554.1587569925541086966
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 08:38:46 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: idplus.org.mx, ip: 23.83.212.3, mailfrom: d.fourdrigniez@idplus.org.mx)
X-Sender-Id: neubox|x-authuser|d.fourdrigniez@idplus.org.mx
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id DCCC1100DBC;
	Wed, 22 Apr 2020 15:38:36 +0000 (UTC)
Received: from hv35svg136.neubox.net (100-96-14-13.trex.outbound.svc.cluster.local [100.96.14.13])
	(Authenticated sender: Neubox)
	by relay.mailchannels.net (Postfix) with ESMTPA id 2E90010032E;
	Wed, 22 Apr 2020 15:38:35 +0000 (UTC)
X-Sender-Id: neubox|x-authuser|d.fourdrigniez@idplus.org.mx
Received: from hv35svg136.neubox.net (hv35svg136.neubox.net [65.99.252.218])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.18.6);
	Wed, 22 Apr 2020 15:38:36 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: neubox|x-authuser|d.fourdrigniez@idplus.org.mx
X-MailChannels-Auth-Id: Neubox
X-Blushing-Slimy: 650210d20b1fd8ea_1587569916682_1668467398
X-MC-Loop-Signature: 1587569916682:4049582815
X-MC-Ingress-Time: 1587569916682
Received: from [201.103.223.68] (port=63521 helo=LAPTOPDAVID)
	by hv35svg136.neubox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.93)
	(envelope-from <d.fourdrigniez@idplus.org.mx>)
	id 1jRHSM-0000WE-3y; Wed, 22 Apr 2020 10:38:34 -0500
From: "David Fz" <d.fourdrigniez@idplus.org.mx>
To: "'Joshua Watt'" <jpewhacker@gmail.com>
Cc: "'Samuli Piippo'" <samuli.piippo@qt.io>,
	<yocto@lists.yoctoproject.org>
References: <002301d61806$afd72030$0f856090$@idplus.org.mx> <085e51b2-4740-e41a-c7df-f0449b5ffb28@gmail.com>
In-Reply-To: <085e51b2-4740-e41a-c7df-f0449b5ffb28@gmail.com>
Subject: Re: [Yocto] Building Qt5 toolchain for windows
Date: Wed, 22 Apr 2020 10:38:32 -0500
Message-ID: <000a01d618bc$150e5f30$3f2b1d90$@idplus.org.mx>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGE+h3gDPry1xy7JbW0hCu7mokelwJ0i2SWqRPc6VA=
X-AuthUser: d.fourdrigniez@idplus.org.mx
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_000B_01D61892.2C39DDD0"
Content-Language: fr

------=_NextPart_000_000B_01D61892.2C39DDD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Joshua,

 

Thank you for your reply,

 

Just for information, I put the following parameters in local.conf

 

MACHINE ?= "qemuarm"

 

SDKMACHINE = "i686-mingw32"

 

IMAGE_INSTALL_append = " gcc g++ binutils libgcc-dev libstdc++ libstdc++-dev
libstdc++-staticdev qtbase qtcharts qtconnectivity qtdeclarative qtenginio
qtgraphicaleffects qtlocation qtmultimedia qtscript qtsensors qtserialport
qtsystems qttools qttranslations qtvirtualkeyboard qtwebsockets
qtxmlpatterns openssh-sftp-server gdb gdbserver"

 

And here is the error I get when I run the command: bitbake
meta-toolchain-qt5

 

| In file included from
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32
/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/poky/3.
0.2/sysroots/i686-pokysdk-mingw32/usr/include/winbase.h:18,

|                  from
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32
/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/poky/3.
0.2/sysroots/i686-pokysdk-mingw32/usr/include/windows.h:70,

|                  from
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32
/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/git/qmake/library/ioutils.
cpp:35:

|
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-mingw32
/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/poky/3.
0.2/sysroots/i686-pokysdk-mingw32/usr/include/fileapi.h:53:48: note:
initializing argument 1 of 'void* CreateFileA(LPCSTR, DWORD, DWORD,
LPSECURITY_ATTRIBUTES, DWORD, DWORD, HANDLE)'

|    53 |   WINBASEAPI HANDLE WINAPI CreateFileA (LPCSTR lpFileName, DWORD
dwDesiredAccess, DWORD dwShareMode, LPSECURITY_ATTRIBUTES
lpSecurityAttributes, DWORD dwCreationDisposition, DWORD
dwFlagsAndAttributes, HANDLE hTemplateFile);

|       |                                         ~~~~~~~^~~~~~~~~~

| Makefile:212: recipe for target 'ioutils.o' failed

| make: *** [ioutils.o] Error 1

| WARNING: exit code 2 from a shell command.

| 

ERROR: Task
(/home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:do_c
onfigure) failed with exit code '1'

NOTE: Tasks Summary: Attempted 3299 tasks of which 3161 didn't need to be
rerun and 1 failed.

 

Summary: 1 task failed:

 
/home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:do_co
nfigure

Summary: There was 1 ERROR message shown, returning a non-zero exit code.

 

Best regards,

 

David FOURDRIGNIEZ
Mobile +33 6 27 94 03 25

Email  <mailto:d.fourdrigniez@idplus.org.mx> d.fourdrigniez@idplus.org.mx

 

From: Joshua Watt <jpewhacker@gmail.com> 
Sent: mardi 21 avril 2020 13:20
To: d.fourdrigniez@idplus.org.mx
Cc: Samuli Piippo <samuli.piippo@qt.io>; yocto@lists.yoctoproject.org
Subject: Re: [Yocto] Building Qt5 toolchain for windows

 

 

On 4/21/20 1:00 PM, d.fourdrigniez@idplus.org.mx
<mailto:d.fourdrigniez@idplus.org.mx>  wrote:

Hello,

 

I'm working on a project and I need to build a Qt5 toolchain for Windows,

I'm using meta-qt5 and meta-mingw and my build machine is an ubuntu 18.04

However I keep having errors when i execute < bitbake meta-toolchain-qt5 >,
very much like the one in below forum thread 

https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html

 

Am I doing something wrong ? Could you help sending me some ideas on how I
could accomplish what I want ?

 

I don't actually know a whole lot about cmake/qt5, so I'm not sure what
would need to be done (other than what I've already stated in the message
above). Samuli Piippo (cc'd) recently did some work to get cmake to build
for MinGW, so he might have some insight.

 

Thanks,

 

Best regards,

David Fourdrigniez.


------=_NextPart_000_000B_01D61892.2C39DDD0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hello Joshua,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thank you for your reply,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Just for information, I put the =
following parameters in local.conf<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>MACHINE ?=3D =
&#8220;qemuarm&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier =
New"'>SDKMACHINE =3D &#8220;i686-mingw32&#8221;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>IMAGE_INSTALL_append =
=3D &#8220; gcc g++ binutils libgcc-dev libstdc++ libstdc++-dev =
libstdc++-staticdev qtbase qtcharts qtconnectivity qtdeclarative =
qtenginio qtgraphicaleffects qtlocation qtmultimedia qtscript qtsensors =
qtserialport qtsystems qttools qttranslations qtvirtualkeyboard =
qtwebsockets qtxmlpatterns openssh-sftp-server gdb =
gdbserver&#8221;<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>And here is the error I get when I run the command: =
</span><span lang=3DEN-US style=3D'font-family:"Courier New"'>bitbake =
meta-toolchain-qt5</span><span lang=3DEN-US><o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>| In file included =
from =
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-ming=
w32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/p=
oky/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/winbase.h:18,<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier =
New"'>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from =
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-ming=
w32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/p=
oky/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/windows.h:70,<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier =
New"'>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; from =
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-ming=
w32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/git/qmake/library/io=
utils.cpp:35:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier New"'>| =
/home/david/yocto/poky/build/tmp/work/i686-nativesdk-mingw32-pokysdk-ming=
w32/nativesdk-qtbase/5.13.2+gitAUTOINC+a7a24784ee-r0/recipe-sysroot/opt/p=
oky/3.0.2/sysroots/i686-pokysdk-mingw32/usr/include/fileapi.h:53:48: =
note:&nbsp;&nbsp; initializing argument 1 of 'void* CreateFileA(LPCSTR, =
DWORD, DWORD, LPSECURITY_ATTRIBUTES, DWORD, DWORD, =
HANDLE)'<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>|&nbsp;&nbsp;&nbsp; =
53 |&nbsp;&nbsp; WINBASEAPI HANDLE WINAPI CreateFileA (LPCSTR =
lpFileName, DWORD dwDesiredAccess, DWORD dwShareMode, =
LPSECURITY_ATTRIBUTES lpSecurityAttributes, DWORD dwCreationDisposition, =
DWORD dwFlagsAndAttributes, HANDLE =
hTemplateFile);<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier =
New"'>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;~~~~~~~^~~~~~~~~~<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>| Makefile:212: =
recipe for target 'ioutils.o' failed<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>| make: *** =
[ioutils.o] Error 1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier New"'>| =
WARNING: exit code 2 from a shell command.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>| =
<o:p></o:p></span></p><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New";color:red'>ERROR: =
Task =
(/home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:d=
o_configure) failed with exit code '1'<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>NOTE: Tasks Summary: =
Attempted 3299 tasks of which 3161 didn't need to be rerun and 1 =
failed.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier =
New"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:9.0pt;font-family:"Courier =
New"'>Summary: 1 task failed:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>&nbsp; =
/home/david/yocto/poky/meta-qt5/recipes-qt/qt5/nativesdk-qtbase_git.bb:do=
_configure<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:9.0pt;font-family:"Courier New"'>Summary: There was 1 =
ERROR message shown, returning a non-zero exit =
code.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Best regards,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><p =
class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:#5B9BD5;mso-fareast-language:FR'>David =
FOURDRIGNIEZ<br></span></b><b><span =
style=3D'font-size:8.0pt;color:#5B9BD5;mso-fareast-language:FR'>Mobile =
</span></b><span style=3D'font-size:8.0pt;mso-fareast-language:FR'>+33 6 =
27 94 03 25</span><b><span =
style=3D'font-size:10.0pt;color:#5B9BD5;mso-fareast-language:FR'><o:p></o=
:p></span></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;color:#5B9BD5;mso-fareast-language:FR'>Email</sp=
an></b><span style=3D'font-size:8.0pt;mso-fareast-language:FR'> <a =
href=3D"mailto:d.fourdrigniez@idplus.org.mx"><span =
style=3D'color:#0563C1'>d.fourdrigniez@idplus.org.mx</span></a><o:p></o:p=
></span></p></div><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm'><p class=3DMsoNormal><b><span lang=3DEN-US =
style=3D'mso-fareast-language:FR'>From:</span></b><span lang=3DEN-US =
style=3D'mso-fareast-language:FR'> Joshua Watt =
&lt;jpewhacker@gmail.com&gt; <br><b>Sent:</b> mardi 21 avril 2020 =
13:20<br><b>To:</b> d.fourdrigniez@idplus.org.mx<br><b>Cc:</b> Samuli =
Piippo &lt;samuli.piippo@qt.io&gt;; =
yocto@lists.yoctoproject.org<br><b>Subject:</b> Re: [Yocto] Building Qt5 =
toolchain for windows<o:p></o:p></span></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>On 4/21/20 1:00 PM, <a =
href=3D"mailto:d.fourdrigniez@idplus.org.mx">d.fourdrigniez@idplus.org.mx=
</a> wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>Hello,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>I&#8217;m =
working on a project and I need to build a Qt5 toolchain for =
Windows,<o:p></o:p></p><p class=3DMsoNormal>I&#8217;m using meta-qt5 and =
meta-mingw and my build machine is an ubuntu 18.04<o:p></o:p></p><p =
class=3DMsoNormal>However I keep having errors when i execute =
&laquo;&nbsp;bitbake meta-toolchain-qt5&nbsp;&raquo;, very much like the =
one in below forum thread&nbsp;<o:p></o:p></p><p class=3DMsoNormal><a =
href=3D"https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.ht=
ml">https://www.yoctoproject.org/pipermail/yocto/2019-March/044512.html</=
a><o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Am I doing something wrong&nbsp;? Could you help =
sending me some ideas on how I could accomplish what I =
want&nbsp;?<o:p></o:p></p></blockquote><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:FR'><o:p>&nbsp;</o:p></span></p><p>I don't =
actually know a whole lot about cmake/qt5, so I'm not sure what would =
need to be done (other than what I've already stated in the message =
above). Samuli Piippo (cc'd) recently did some work to get cmake to =
build for MinGW, so he might have some =
insight.<o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>Best =
regards,<o:p></o:p></p><p class=3DMsoNormal>David =
Fourdrigniez.<o:p></o:p></p></blockquote></div></body></html>

------=_NextPart_000_000B_01D61892.2C39DDD0--
