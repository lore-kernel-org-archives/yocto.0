Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by mx1.pokylinux.org (Postfix) with ESMTP id A54B24C80AC8
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2011 22:30:45 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Mar 2011 20:30:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,280,1299484800"; 
	d="scan'208,217";a="412105376"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by azsmga001.ch.intel.com with ESMTP; 31 Mar 2011 20:30:44 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.226.10) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 31 Mar 2011 20:30:44 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx605.amr.corp.intel.com ([10.22.226.10]) with mapi;
	Thu, 31 Mar 2011 20:30:43 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 31 Mar 2011 20:30:41 -0700
Thread-Topic: Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to be
	corrupted
Thread-Index: AcvwHS2MREokbm+EQTakXlrBwcWJbQ==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2ECFA02A8@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Failure while running bitbake: gcc-4.5.0.tar.bz2 seems to be corrupted
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 01 Apr 2011 03:30:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2ECFA02A8orsmsx505amrcor_"

--_000_4FF5AC937153B0459463C1A88EB478F2ECFA02A8orsmsx505amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

 I get a failure when I run the bitbake  example stated in the Yocto Projec=
t Quick Start Guide

$ bitbake poky-image-sato

Gives the following error:

>>
NOTE: Running task 256 of 1633 (ID: 1585, /home/rsaxena/poky-laverne-4.0/me=
ta/recipes-devtools/gcc/gcc-cross-initial_4.5.0.bb, do_unpack)
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Started
NOTE: Unpacking /home/rsaxena/poky-4.0-build/downloads/gcc-4.5.0.tar.bz2 to=
 /home/rsaxena/poky-4.0-build/tmp/work/i586-poky-linux/gcc-cross-initial-4.=
5.0-r10/
ERROR: Task failed:
NOTE: package gcc-cross-initial-4.5.0-r10: task do_unpack: Failed
ERROR: Task 1585 (/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/=
gcc-cross-initial_4.5.0.bb, do_unpack) failed with 1
ERROR: '/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-=
initial_4.5.0.bb' failed
<<

I find that if I manually try to untar the downloaded gcc-4.5.0.tar.bz2 fil=
e, I get a "not a bzip2 file" error.
I get the same error if I  download the file again and untar it.

So it seems like the  gcc-4.5.0.tar.bz2 is corrupted for some reason.

Pl let me know of any suggestions on how to get this resolved..

Thanks
Rahul

--_000_4FF5AC937153B0459463C1A88EB478F2ECFA02A8orsmsx505amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii">
<meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium)">
<style>
<!--
 /* Font Definitions */
 @font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
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
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
 /* List Definitions */
 @list l0
	{mso-list-id:640574445;
	mso-list-type:hybrid;
	mso-list-template-ids:547806754 -553601400 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
@list l1
	{mso-list-id:1882134201;
	mso-list-type:hybrid;
	mso-list-template-ids:-792569518 441739814 67698691 67698693 67698689 6769=
8691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0D8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:"Times New Roman";}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
-->
</style>
<!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext=3D"edit">
  <o:idmap v:ext=3D"edit" data=3D"1" />
 </o:shapelayout></xml><![endif]-->
</head>

<body lang=3DEN-US link=3Dblue vlink=3Dpurple>

<div class=3DWordSection1>

<p class=3DMsoNormal>Hi,<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>&nbsp;I get a failure when I run the bitbake &nbsp;exa=
mple
stated in the Yocto Project Quick Start Guide<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>$ bitbake poky-image-sato <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Gives the following error: <o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>&gt;&gt;<o:p>&nbsp;</o:p=
></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>NOTE: Running task 256 o=
f 1633
(ID: 1585,
/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial_=
4.5.0.bb,
do_unpack)<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>NOTE: package
gcc-cross-initial-4.5.0-r10: task do_unpack: Started<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>NOTE: Unpacking /home/rs=
axena/poky-4.0-build/downloads/gcc-4.5.0.tar.bz2
to
/home/rsaxena/poky-4.0-build/tmp/work/i586-poky-linux/gcc-cross-initial-4.5=
.0-r10/<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>ERROR: Task failed: <o:p=
></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>NOTE: package
gcc-cross-initial-4.5.0-r10: task do_unpack: Failed<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>ERROR: Task 1585
(/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial=
_4.5.0.bb,
do_unpack) failed with 1<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>ERROR:
'/home/rsaxena/poky-laverne-4.0/meta/recipes-devtools/gcc/gcc-cross-initial=
_4.5.0.bb'
failed<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'>&lt;&lt;<o:p>&nbsp;</o:p=
></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'><o:p>&nbsp;</o:p></span>=
</p>

<p class=3DMsoNormal><span style=3D'color:black'>I find that if I manually =
try to
untar the downloaded gcc-4.5.0.tar.bz2 file, I get a &#8220;not a bzip2 fil=
e&#8221;
error.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:black'>I get the same error if I&=
nbsp;
download the file again and untar it.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:black'><o:p>&nbsp;</o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:black'>So it seems like the &nbsp=
;gcc-4.5.0.tar.bz2
is corrupted for some reason.<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:black'><o:p>&nbsp;</o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:black'>Pl let me know of any sugg=
estions
on how to get this resolved..<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'color:#C00000'><o:p>&nbsp;</o:p></span>=
</p>

<p class=3DMsoNormal><span style=3D'color:black'>Thanks<o:p></o:p></span></=
p>

<p class=3DMsoNormal><span style=3D'color:black'>Rahul<o:p></o:p></span></p=
>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2ECFA02A8orsmsx505amrcor_--
