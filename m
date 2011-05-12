Return-Path: <nitin.a.kamble@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 95CCE4C81008
	for <yocto@yoctoproject.org>; Thu, 12 May 2011 11:49:20 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 12 May 2011 09:49:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,359,1301900400"; d="scan'208,217";a="878186"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 12 May 2011 09:49:20 -0700
Received: from orsmsx504.amr.corp.intel.com ([10.22.226.207]) by
	orsmsx604.amr.corp.intel.com ([10.250.113.17]) with mapi;
	Thu, 12 May 2011 09:49:19 -0700
From: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 12 May 2011 09:49:18 -0700
Thread-Topic: dpatch files in Yocto tree
Thread-Index: AcwQxIlAfUcJXa4vQrqOp1iosMHE6w==
Message-ID: <9DA5872FEF993D41B7173F58FCF6BE94D8968844@orsmsx504.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: dpatch files in Yocto tree
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
X-List-Received-Date: Thu, 12 May 2011 16:49:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9DA5872FEF993D41B7173F58FCF6BE94D8968844orsmsx504amrcor_"

--_000_9DA5872FEF993D41B7173F58FCF6BE94D8968844orsmsx504amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I find following dpatch files in the Yocto tree. Dpatch files have a small =
shell script at the beginning of the patch.

Out of all these, all gcc patches are for all gcc-4.3.3 only, which is kind=
 of outdated stuff now. And will be going out of the tree soon.

Binutils & tslib patches are in current use. Adding metadata vars likes ups=
tream_status may break the dpatch format/script.

Do we care for the shell script inside the dpatch file? Is it ok to break i=
t inside Yocto tree?



meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-012_check_=
ldrunpath_length.patch
meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-001_ld_mak=
efile_patch.patch
meta/recipes-devtools/binutils/binutils-2.21/binutils-x86_64_i386_biarch.pa=
tch
meta/recipes-devtools/binutils/binutils-2.21/binutils-uclibc-300-006_better=
_file_error.patch
meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpatch
meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-armv4t.dpatch
meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatch
meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch
meta/recipes-devtools/gcc/gcc-4.6.0/libstdc++-pic.dpatch
meta/recipes-devtools/gcc/gcc-4.6.0/arm-unbreak-eabi-armv4t.dpatch
meta/recipes-devtools/gcc/gcc-4.6.0/gcc-ice-hack.dpatch
meta/recipes-devtools/gcc/gcc-4.6.0/pr30961.dpatch
meta/recipes-devtools/gcc/gcc-4.3.3/300-libstdc++-pic.patch
meta/recipes-devtools/gcc/gcc-4.3.3/debian/libstdc++-pic.dpatch
meta/recipes-devtools/gcc/gcc-4.3.3/debian/arm-unbreak-eabi-armv4t.dpatch
meta/recipes-devtools/gcc/gcc-4.3.3/debian/gcc-ice-hack.dpatch
meta/recipes-devtools/gcc/gcc-4.3.3/debian/pr30961.dpatch
meta/recipes-graphics/tslib/tslib/32bitBE-support.patch

Thanks,
Nitin


--_000_9DA5872FEF993D41B7173F58FCF6BE94D8968844orsmsx504amrcor_
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
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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

<p class=3DMsoNormal>I find following dpatch files in the Yocto tree. Dpatc=
h files
have a small shell script at the beginning of the patch.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Out of all these, all gcc patches are for all gcc-4.3.=
3 only,
which is kind of outdated stuff now. And will be going out of the tree soon=
.<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Binutils &amp; tslib patches are in current use. Addin=
g
metadata vars likes upstream_status may break the dpatch format/script. <o:=
p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Do we care for the shell script inside the dpatch file=
? Is it
ok to break it inside Yocto tree?<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/binutils/binutils-2.21/binutils-=
uclibc-300-012_check_ldrunpath_length.patch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/binutils/binutils-2.21/binutils-=
uclibc-300-001_ld_makefile_patch.patch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/binutils/binutils-2.21/binutils-=
x86_64_i386_biarch.patch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/binutils/binutils-2.21/binutils-=
uclibc-300-006_better_file_error.patch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.5.1/libstdc++-pic.dpat=
ch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.5.1/arm-unbreak-eabi-a=
rmv4t.dpatch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.5.1/gcc-ice-hack.dpatc=
h<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.5.1/pr30961.dpatch<o:p=
></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.6.0/libstdc++-pic.dpat=
ch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.6.0/arm-unbreak-eabi-a=
rmv4t.dpatch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.6.0/gcc-ice-hack.dpatc=
h<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.6.0/pr30961.dpatch<o:p=
></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.3.3/300-libstdc++-pic.=
patch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.3.3/debian/libstdc++-p=
ic.dpatch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.3.3/debian/arm-unbreak=
-eabi-armv4t.dpatch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.3.3/debian/gcc-ice-hac=
k.dpatch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-devtools/gcc/gcc-4.3.3/debian/pr30961.dpa=
tch<o:p></o:p></p>

<p class=3DMsoNormal>meta/recipes-graphics/tslib/tslib/32bitBE-support.patc=
h<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>Thanks,<o:p></o:p></p>

<p class=3DMsoNormal>Nitin<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_9DA5872FEF993D41B7173F58FCF6BE94D8968844orsmsx504amrcor_--
