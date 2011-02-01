Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3125C4C810C1
	for <yocto@yoctoproject.org>; Mon, 31 Jan 2011 18:41:30 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jan 2011 16:41:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,406,1291622400"; 
	d="scan'208,217";a="653073386"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2011 16:41:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 31 Jan 2011 16:41:29 -0800
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Mon, 31 Jan 2011 16:41:29 -0800
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 31 Jan 2011 16:41:26 -0800
Thread-Topic: [yocto] Kernel Panics on armv4t with gcc.4.5.1
Thread-Index: AcvBeCiIl4ikzgTaRTiGKKp/cVLFZgAMHuYQ
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
In-Reply-To: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
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
X-List-Received-Date: Tue, 01 Feb 2011 00:41:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DA5872FEF993D41B7173F58FCF6BE940A5EBA78orsmsx504amrcor_"

--_000_9DA5872FEF993D41B7173F58FCF6BE940A5EBA78orsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Diego,
  Can you try with 4.5.2 gcc from this branch: http://git.pokylinux.org/cgi=
t/cgit.cgi/poky-contrib/log/?h=3Dnitin/khem_gcc_nitin

Thanks,
Nitin


From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Diego Sueiro
Sent: Monday, January 31, 2011 10:53 AM
To: yocto@yoctoproject.org
Subject: [yocto] Kernel Panics on armv4t with gcc.4.5.1

Folks,

I'm not a kernel and neither a gcc expert developer, and after searching fo=
r a solution for the last 2 weeks I've decided to appeal to the list.

I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440 (armv4t=
) with Yocto Project (poky master branch) and I'm facing a strange issue.

If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the kernel will =
panic on init (console printed message is attached for kernel 2.6.30 and 2.=
6.32).
But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5) everything =
will be ok.
Just for your reference these is the gcc recipes which I'm using:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/g=
cc
http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-devtool=
s/gcc


I've compiled with and without thumb instructions, but the issue remains.
I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch and gcc=
-arm-volatile-bitfield-fix.patch, but no success.



Kind Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--_000_9DA5872FEF993D41B7173F58FCF6BE940A5EBA78orsmsx504amrcor_
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.apple-style-span
	{mso-style-name:apple-style-span;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
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

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Diego,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>&nbsp; Can you try with 4.5.2 gcc from this branch: <a
href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=3Dnitin/=
khem_gcc_nitin">http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=
=3Dnitin/khem_gcc_nitin</a><o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Thanks,<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'>Nitin<o:p></o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><span style=3D'font-size:11.0pt;font-family:"Calibri",=
"sans-serif";
color:#1F497D'><o:p>&nbsp;</o:p></span></p>

<div style=3D'border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt'>

<div>

<div style=3D'border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in'>

<p class=3DMsoNormal><b><span style=3D'font-size:10.0pt;font-family:"Tahoma=
","sans-serif"'>From:</span></b><span
style=3D'font-size:10.0pt;font-family:"Tahoma","sans-serif"'>
yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] <b>O=
n
Behalf Of </b>Diego Sueiro<br>
<b>Sent:</b> Monday, January 31, 2011 10:53 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] Kernel Panics on armv4t with gcc.4.5.1<o:p></o:p></=
span></p>

</div>

</div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>Folks,<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>I'm
not a kernel and neither a gcc expert developer, and after searching for a
solution for the last 2 weeks I've decided to appeal to the list.<o:p></o:p=
></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>I'm
trying to build a kernel image (2.6.32 and 2.6.30) for mini2440 (armv4t) wi=
th
Yocto Project (poky master branch) and&nbsp;I'm facing a strange issue.<o:p=
></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>If
I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the kernel will pan=
ic
on init (console printed message is attached for kernel 2.6.30 and 2.6.32).=
<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>But,
if I compile the kernel with meta-oe gcc recipes (gcc 4.5) everything will =
be
ok.<o:p></o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>Just
for your reference these is the gcc recipes which I'm using:<o:p></o:p></sp=
an></p>

</div>

<blockquote style=3D'margin-left:30.0pt;margin-right:0in;border-width:initi=
al;
border-color:initial'>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><a
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-de=
vtools/gcc"
target=3D"_blank"><span style=3D'color:#0658B5'>http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/gcc</span></a><o:p></o:p></s=
pan></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><a
href=3D"http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes=
-devtools/gcc"
target=3D"_blank"><span style=3D'color:#0658B5'>http://git.openembedded.org=
/cgit.cgi/meta-openembedded/tree/recipes-devtools/gcc</span></a><o:p></o:p>=
</span></p>

</div>

</blockquote>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>I've
compiled with and without thumb instructions, but the issue remains.<o:p></=
o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>I've
tried to apply the patches&nbsp;gcc-armv4-pass-fix-v4bx-to-ld.patch
and&nbsp;gcc-arm-volatile-bitfield-fix.patch, but no success.<o:p></o:p></s=
pan></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p>

</div>

<div>

<div>

<p class=3DMsoNormal><span style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'>Kind
Regards,<o:p></o:p></span></p>

</div>

</div>

<div>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

<div>

<p class=3DMsoNormal>--<o:p></o:p></p>

</div>

<p class=3DMsoNormal>*dS<br>
Diego Sueiro<br>
<br>
/*long live rock 'n roll*/<o:p></o:p></p>

</div>

</div>

</body>

</html>

--_000_9DA5872FEF993D41B7173F58FCF6BE940A5EBA78orsmsx504amrcor_--
