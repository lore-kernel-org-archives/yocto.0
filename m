Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305A4E01481;
	Thu, 23 May 2013 00:39:43 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 747D336B34;
	Thu, 23 May 2013 13:09:24 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id 67D8736B2F;
	Thu, 23 May 2013 13:09:24 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Thu, 23 May 2013 13:09:24 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"yocto-owner@yoctoproject.org" <yocto-owner@yoctoproject.org>
Date: Thu, 23 May 2013 13:09:22 +0530
Thread-Topic: External-Sourcery-Toolchain Related Issue
Thread-Index: Ac5XSBwud+8rkVfJS0qIv5zxKmS4bwAOdN/w
Message-ID: <17797116383D4341B029FDF34C22BF6A52C4B2FC51@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.2471.1369267014.19864.yocto@yoctoproject.org>
In-Reply-To: <mailman.2471.1369267014.19864.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: External-Sourcery-Toolchain Related Issue
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
X-List-Received-Date: Thu, 23 May 2013 07:39:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_17797116383D4341B029FDF34C22BF6A52C4B2FC51GUREXMB01ASIA_"

--_000_17797116383D4341B029FDF34C22BF6A52C4B2FC51GUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,



I want to install my existing Toolchain to Yocto Sysroot bypassing default =
yocto toolchain functionality.



My requirements are



1I will download toolchain from my git source ie tar file.

2I just want to install this toolchain to tmp/sysroot folder in build direc=
tory skipping compilation step.





Steps implemented



1 SRC_URI =3D "file:///home/toolchains_bin.tar<file:///\\home\toolchains_bi=
n.tar>"

2 TCMODE=3D"external-csl"

3 EXTERNAL_TOOLCHAIN =3D "/home/yocto/poky/build/tmp/work/mips64-poky-linux=
/external-sourcery-toolchain/GCC-r8/toolchains_bin/mipscross/linux"

4CSL_TARGET_SYS_mips64 =3D "${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}"

5CSL_TARGET_SYS =3D "${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}"

6 TARGET_PREFIX =3D "${CSL_TARGET_SYS_mips64}-"



But when I tried to run

Build> bitbake linux (linux is recipe in my layer)



It gives me error :



ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/home=
/yocto/poky/build/tmp/work/mips64-poky-linux/external-sourcery-toolchain/GC=
C-r8/toolchains_bin/mipscross/linux/bin/mips64-nlm-linux-gcc -v' failed: co=
mmand not found

ERROR: Failed to obtain CodeSourcery toolchain version: Execution of '/home=
/yocto/poky/build/tmp/work/mips64-poky-linux/external-sourcery-toolchain/GC=
C-r8/toolchains_bin/mipscross/linux/bin/mips64-nlm-linux-gcc -v' failed: co=
mmand not found



and continue with the tasks executions like unpacking toolchains_bin.tar to=
 $WORKDIR/mips64-poky-linux/.. and other linux do configure etc





Again run this recipe:

@Build>bitbake linux

NOTE. Once unpacked the toolchain to the location specified if I  again run=
 the above recipe then this error does not come.





Please suggest me the way around to skip this error coming at the first tim=
e when I build my recipe until my toolchain is not unpacked.





Thanks in advance!





Regards,

Rohit Jindal
































=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

--_000_17797116383D4341B029FDF34C22BF6A52C4B2FC51GUREXMB01ASIA_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;}
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
<p class=3D"MsoPlainText">Hi,<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">I want to install my =
existing Toolchain to Yocto Sysroot bypassing default yocto toolchain funct=
ionality.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">My requirements are<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">1I will download tool=
chain from my git source ie tar file.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">2I just want to insta=
ll this toolchain to tmp/sysroot folder in build directory skipping compila=
tion step.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Steps implemented<o:p=
></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">1 SRC_URI =3D &quot;<=
a href=3D"file:///\\home\toolchains_bin.tar">file:///home/toolchains_bin.ta=
r</a>&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">2 TCMODE=3D&quot;exte=
rnal-csl&quot; <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">3 EXTERNAL_TOOLCHAIN =
=3D &quot;/home/yocto/poky/build/tmp/work/mips64-poky-linux/external-source=
ry-toolchain/GCC-r8/toolchains_bin/mipscross/linux&quot;<o:p></o:p></span><=
/p>
<p class=3D"MsoPlainText"><span style=3D"color:black">4CSL_TARGET_SYS_mips6=
4 =3D &quot;${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}&quot;<o:p></o:p></s=
pan></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">5CSL_TARGET_SYS =3D &=
quot;${TARGET_ARCH}${TARGET_TC_VENDOR}-${TCTYPE}&quot;<o:p></o:p></span></p=
>
<p class=3D"MsoPlainText"><span style=3D"color:black">6 TARGET_PREFIX =3D &=
quot;${CSL_TARGET_SYS_mips64}-&quot;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">But when I tried to r=
un <o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Build&gt; bitbake lin=
ux (linux is recipe in my layer)<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">It gives me error :<o=
:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">ERROR: Failed to obta=
in CodeSourcery toolchain version: Execution of '/home/yocto/poky/build/tmp=
/work/mips64-poky-linux/external-sourcery-toolchain/GCC-r8/toolchains_bin/m=
ipscross/linux/bin/mips64-nlm-linux-gcc
 -v' failed: command not found<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">ERROR: Failed to obta=
in CodeSourcery toolchain version: Execution of '/home/yocto/poky/build/tmp=
/work/mips64-poky-linux/external-sourcery-toolchain/GCC-r8/toolchains_bin/m=
ipscross/linux/bin/mips64-nlm-linux-gcc
 -v' failed: command not found<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">and continue with the=
 tasks executions like unpacking toolchains_bin.tar to $WORKDIR/mips64-poky=
-linux/.. and other linux do configure etc<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Again run this recipe=
:<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">@Build&gt;bitbake lin=
ux &nbsp;<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">NOTE. Once unpacked t=
he toolchain to the location specified if I &nbsp;again run the above recip=
e then this error does not come.
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><u><span style=3D"color:black">Please suggest me =
the way around to skip this error coming at the first time when I build my =
recipe until my toolchain is not unpacked.<o:p></o:p></span></u></p>
<p class=3D"MsoPlainText"><u><span style=3D"color:black"><o:p><span style=
=3D"text-decoration:none">&nbsp;</span></o:p></span></u></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Thanks in advance!<o:=
p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Regards,<o:p></o:p></=
span></p>
<p class=3D"MsoPlainText"><span style=3D"color:black">Rohit Jindal<o:p></o:=
p></span></p>
<p class=3D"MsoPlainText"><u><span style=3D"color:black"><o:p><span style=
=3D"text-decoration:none">&nbsp;</span></o:p></span></u></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
<p class=3D"MsoPlainText"><span style=3D"color:black"><o:p>&nbsp;</o:p></sp=
an></p>
</div>
<br>
<font face=3D"Arial" color=3D"Gray" size=3D"2"><br>
<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
Please refer to http://www.aricent.com/legal/email_disclaimer.html<br>
for important disclosures regarding this electronic communication.<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D<br>
</font>
</body>
</html>

--_000_17797116383D4341B029FDF34C22BF6A52C4B2FC51GUREXMB01ASIA_--
