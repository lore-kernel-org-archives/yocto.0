Return-Path: <rakesh.garg@aricent.com>
Received: from jaguar.aricent.com (unknown [121.241.96.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01509E014EE
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 06:12:37 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id F015B36B7C
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 18:42:05 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id D984D36B62
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 18:42:05 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.130]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Wed, 10 Apr 2013 18:42:06 +0530
From: Rakesh Garg <rakesh.garg@aricent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 10 Apr 2013 18:42:05 +0530
Thread-Topic: Problem while running "bitbake core-image-minimal" 
Thread-Index: Ac417P92E8rVaj24TpC6iscblNEZxQ==
Message-ID: <2D511792EEA46345951D979490DB6D5B5E6BEC74CE@GUREXMB01.ASIAN.AD.ARICENT.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Problem while running "bitbake core-image-minimal"
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
X-List-Received-Date: Wed, 10 Apr 2013 13:12:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2D511792EEA46345951D979490DB6D5B5E6BEC74CEGUREXMB01ASIA_"

--_000_2D511792EEA46345951D979490DB6D5B5E6BEC74CEGUREXMB01ASIA_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am new to Yocto and is trying to do some hands-on.

I downloaded the Yocto project on my Fedore-18 host by using the following =
command:
git clone git://git.yoctoproject.org/poky.git


and then ran the following commands:

1.       source oe-init-build-env

2.       configured local.conf with MACHINE=3Drouterstationpro and rest as =
default.

3.       bitbake core-image-minimal

The last command runs for some time and then hangs for forever. (I've ran i=
t for overnight also just incase it downloads too much since am running it =
for the first time). The screen logs says that it is running do_fetch for g=
cc-cross-initial-4.7.2-r19

I also tried stopping and then re-running the command but no help. It again=
 stucks at the same point.

Following is the terminal output:
Build Configuration:
BB_VERSION =3D "1.17.1"
BUILD_SYS =3D "i686-linux"
NATIVELSBSTRING =3D "Fedora-18"
TARGET_SYS =3D "mips-poky-linux"
MACHINE =3D "routerstationpro"
DISTRO =3D "poky"
DISTRO_VERSION =3D "1.3+snapshot-20130410"
TUNE_FEATURES =3D "o32 bigendian fpu-hard mips32"
TARGET_FPU =3D ""
meta
meta-yocto
meta-yocto-bsp =3D "master:cbdbc54e5743944fd24f497b46b3c54ad966d8eb"

NOTE: Resolving any missing task queue dependencies
NOTE: Preparing runqueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
Currently 1 running tasks (158 of 1568):
0: gcc-cross-initial-4.7.2-r19 do_fetch (pid 5583)

Please suggest what could be the possible reason for this issue.

Thanks and Regards,
Rakesh












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

--_000_2D511792EEA46345951D979490DB6D5B5E6BEC74CEGUREXMB01ASIA_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1120297514;
	mso-list-type:hybrid;
	mso-list-template-ids:-1270988594 -366817844 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Segoe UI","sans-serif";
	color:black;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi All,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I am new to Yocto and =
is trying to do some hands-on.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I downloaded the Yocto=
 project on my Fedore-18 host by using the following command:<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in"><span style=3D"color:#1F4=
97D">git clone git://git.yoctoproject.org/poky.git<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">and then ran the follo=
wing commands:<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&q=
uot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black"><span style=3D"mso-l=
ist:Ignore">1.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">source oe-init=
-build-env&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&q=
uot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black"><span style=3D"mso-l=
ist:Ignore">2.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">configured loc=
al.conf with MACHINE=3Drouterstationpro and rest as default.<o:p></o:p></sp=
an></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:&q=
uot;Segoe UI&quot;,&quot;sans-serif&quot;;color:black"><span style=3D"mso-l=
ist:Ignore">3.<span style=3D"font:7.0pt &quot;Times New Roman&quot;">&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span></span><![endif]><span style=3D"color:#1F497D">bitbake core-i=
mage-minimal<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">The last command runs =
for some time and then hangs for forever. (I&#8217;ve ran it for overnight =
also just incase it downloads too much since am running it for the first ti=
me). The screen logs says that it is running
 do_fetch for gcc-cross-initial-4.7.2-r19<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I also tried stopping =
and then re-running the command but no help. It again stucks at the same po=
int.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Following is the termi=
nal output:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Se=
goe UI&quot;,&quot;sans-serif&quot;;color:black">Build Configuration:<br>
BB_VERSION =3D &quot;1.17.1&quot;<br>
BUILD_SYS =3D &quot;i686-linux&quot;<br>
NATIVELSBSTRING =3D &quot;Fedora-18&quot;<br>
TARGET_SYS =3D &quot;mips-poky-linux&quot;<br>
MACHINE =3D &quot;routerstationpro&quot;<br>
DISTRO =3D &quot;poky&quot;<br>
DISTRO_VERSION =3D &quot;1.3&#43;snapshot-20130410&quot;<br>
TUNE_FEATURES =3D &quot;o32 bigendian fpu-hard mips32&quot;<br>
TARGET_FPU =3D &quot;&quot;<br>
meta&nbsp;<br>
meta-yocto&nbsp;<br>
meta-yocto-bsp =3D &quot;master:cbdbc54e5743944fd24f497b46b3c54ad966d8eb&qu=
ot;<br>
<br>
NOTE: Resolving any missing task queue dependencies<br>
NOTE: Preparing runqueue<br>
NOTE: Executing SetScene Tasks<br>
NOTE: Executing RunQueue Tasks<br>
Currently 1 running tasks (158 of 1568):<br>
0: gcc-cross-initial-4.7.2-r19 do_fetch (pid 5583)</span><span style=3D"fon=
t-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"><o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Please suggest what co=
uld be the possible reason for this issue.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks and Regards,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Rakesh<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;background:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;background:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D;background:black"><o:p>=
&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
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

--_000_2D511792EEA46345951D979490DB6D5B5E6BEC74CEGUREXMB01ASIA_--
