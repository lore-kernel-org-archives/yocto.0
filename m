Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 860DBE00742
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 07:03:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 07:03:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; 
	d="scan'208,217";a="346376997"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by fmsmga001.fm.intel.com with ESMTP; 07 Jun 2013 07:04:00 -0700
Received: from orsmsx107.amr.corp.intel.com (10.22.240.5) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 7 Jun 2013 07:03:37 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.2.22]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.206]) with mapi id
	14.03.0123.003; Fri, 7 Jun 2013 07:03:37 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Application Development
Thread-Index: AQHOYe3TEb9xDGGLo0OLuHBVplozDZkoHv2wgADeg4CAAVAkgP///fLw
Date: Fri, 7 Jun 2013 14:03:36 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C73C38476@ORSMSX103.amr.corp.intel.com>
References: <CAFMfyzKvAfk7o_r1d0EjJw=kHTEY4_AfkGdprxPAhmv9MSkt1A@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C73C379DD@ORSMSX103.amr.corp.intel.com>
	<CAFMfyzJb4U0AXTfC80TtizhX_AzOxuDk5D_Lkgz10SopdTGxWA@mail.gmail.com>
	<CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
In-Reply-To: <CAFMfyzJjrtEkON57=7+d433FMZo+memj8oMufqAWb5tTysydaQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: Application Development
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
X-List-Received-Date: Fri, 07 Jun 2013 14:03:40 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_C6510F6D410BB64A8C15398EDC6B847C73C38476ORSMSX103amrcor_"

--_000_C6510F6D410BB64A8C15398EDC6B847C73C38476ORSMSX103amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yes, you need those packages in your sysroot for cross development.



Cheers,

Jessica



From: satyaswaroop.damarla@gmail.com [mailto:satyaswaroop.damarla@gmail.com=
] On Behalf Of DAMARLA Satya Swaroop
Sent: Friday, June 07, 2013 12:10 AM
To: Zhang, Jessica; yocto@yoctoproject.org
Subject: Re: [yocto] Application Development



SHould we install development and debigging pacakages in the images when we=
 want to build a toolchain.. I mean this



 "dbg-pkgs"       - add -dbg packages for all installed packages

#                     (adds symbol information for debugging/profiling)

#  "dev-pkgs"       - add -dev packages for all installed packages

#                     (useful if you want to develop against libs in the im=
age)





Greets,

Satya



On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroop <swaroop.damarla@gmai=
l.com<mailto:swaroop.damarla@gmail.com>> wrote:

Hi Jessica & Philip,



I have an issue... This is such a long error ... I even did a fresh build b=
y deleting the "tmp" directory. The image build went very well but the tool=
chain is always giving me a error...



| Selecting previously unselected package xz-dev.

| Unpacking xz-dev (from .../xz-dev_5.1.2alpha-r0_armel.deb) ...

| The following package disappeared from your system as

| all files have been overwritten by other packages:

|   avahi

| log_check: Using /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/sk=
idata_harmony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_popu=
late_sdk.4066 as logfile

| Logfile is clean

| Installing NATIVESDK packages

| Ign file: ./ InRelease

| Ign file: ./ InRelease

| Ign file: ./ Release.gpg

| Ign file: ./ Release.gpg

| Get:1 file: ./ Release [24 B]

| Get:2 file: ./ Release [11 B]

| Ign file: ./ Translation-en

| Ign file: ./ Translation-en

| Reading package lists...

| W: Ignoring Provides line with DepCompareOp for package nativesdk-pkgconf=
ig__pkg-config__

| W: You may want to run apt-get update to correct these problems

| Reading package lists...

| Building dependency tree...

| Reading state information...

| Some packages could not be installed. This may mean that you have

| requested an impossible situation or if you are using the unstable

| distribution that some required packages have not yet been created

| or been moved out of Incoming.

| The following information may help to resolve the situation:

|

| The following packages have unmet dependencies:

|  packagegroup-cross-canadian-arm : Depends: gdb-cross-canadian-arm but it=
 is not installable

|                                    Depends: gcc-cross-canadian-arm but it=
 is not installable

|                                    Depends: meta-environment-arm but it i=
s not installable

|                                    Depends: binutils-cross-canadian-arm b=
ut it is not installable

| W: Ignoring Provides line with DepCompareOp for package nativesdk-pkgconf=
ig__pkg-config__

| W: You may want to run apt-get update to correct these problems

| E: Unable to correct problems, you have held broken packages.

| DEBUG: Python function do_populate_sdk finished

| ERROR: Function failed: populate_sdk_image (see /home/damarla/yocto/poky/=
buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-image-=
skidata/1.0-r0/temp/log.do_populate_sdk.4066 for further information)

ERROR: Task 10 (/home/damarla/yocto/poky/meta/recipes-graphics/images/core-=
image-skidata.bb<http://core-image-skidata.bb/>, do_populate_sdk) failed wi=
th exit code '1'

NOTE: Tasks Summary: Attempted 5020 tasks of which 4939 didn't need to be r=
erun and 1 failed.



Summary: 1 task failed:

  /home/damarla/yocto/poky/meta/recipes-graphics/images/core-image-skidata.=
bb<http://core-image-skidata.bb/>, do_populate_sdk

Summary: There was 1 ERROR message shown, returning a non-zero exit code.



I am not able to install those packages as they say there are no installati=
on candidate for them...



On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica <jessica.zhang@intel.com<mai=
lto:jessica.zhang@intel.com>> wrote:

   Hi Satya,



   Use bitbake image-name -c populate_sdk, this allows you to create a tool=
chain with sysroot that match your target image that allows you to develop =
app against...



   Cheers,

   Jessica



   From: yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.o=
rg> [mailto:yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoprojec=
t.org>] On Behalf Of Satya Swaroop Damarla
   Sent: Wednesday, June 05, 2013 6:05 AM
   To: yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
   Subject: [yocto] Application Development



   Hi Guys,



   I have an issue... I created a custom image based on NVIDIA Tegra2 with =
a custom kernel. I installed  packages specific Tegra board and application=
 specific. Now we want to send the baord and the new linux image for applic=
ation development...



   As I went through ADT manual, I only found qemu based toolchains but I w=
ant to create toolchain based on my rootfs and kernel... so that the develo=
pment team can develop a voip application for the board... I am kind of stu=
ck how to proceed in this issue...



   I really need a small way out and hopefully I will catch things automati=
cally..



   Cheers,

   Satya






--_000_C6510F6D410BB64A8C15398EDC6B847C73C38476ORSMSX103amrcor_
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
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Yes, you need those packa=
ges in your sysroot for cross development.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Cheers,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> satyaswa=
roop.damarla@gmail.com [mailto:satyaswaroop.damarla@gmail.com]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Friday, June 07, 2013 12:10 AM<br>
<b>To:</b> Zhang, Jessica; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Application Development<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">SHould we install development and debigging pacakage=
s in the images when we want to build a toolchain.. I mean this<o:p></o:p><=
/p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">&nbsp;&quot;dbg-pkgs&quot; &nbsp; &nbsp; &nbsp; - ad=
d -dbg packages for all installed packages<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; (adds symbol information for debugging/profiling)<o:p><=
/o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># &nbsp;&quot;dev-pkgs&quot; &nbsp; &nbsp; &nbsp; - =
add -dev packages for all installed packages<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"># &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; (useful if you want to develop against libs in the imag=
e)<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Greets,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Satya<o:p></o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Thu, Jun 6, 2013 at 1:07 PM, DAMARLA Satya Swaroo=
p &lt;<a href=3D"mailto:swaroop.damarla@gmail.com" target=3D"_blank">swaroo=
p.damarla@gmail.com</a>&gt; wrote:<o:p></o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">Hi Jessica &amp; Philip,</span><o:p></o:p=
></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">I have an issue... This is such a long er=
ror ... I even did a fresh build by deleting the &quot;tmp&quot; directory.=
 The image build went very well but the toolchain is always giving
 me a error... &nbsp;<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Selecting previously unselected pack=
age xz-dev.</span></i><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Unpacking xz-dev (from .../xz-dev_5.=
1.2alpha-r0_armel.deb) ...</span></i><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| The following package disappeared fr=
om your system as</span></i><span style=3D"font-size:10.0pt;font-family:&qu=
ot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| all files have been overwritten by o=
ther packages:</span></i><span style=3D"font-size:10.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| &nbsp; avahi</span></i><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| log_check: Using /home/damarla/yocto=
/poky/buildSkidataHarmony/tmp/work/skidata_harmony-poky-linux-gnueabi/core-=
image-skidata/1.0-r0/temp/log.do_populate_sdk.4066 as logfile</span></i><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Logfile is clean</span></i><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Installing NATIVESDK packages</span>=
</i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ InRelease</span></i><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ InRelease</span></i><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ Release.gpg</span></i><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ Release.gpg</span></i><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Get:1 file: ./ Release [24 B]</span>=
</i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Get:2 file: ./ Release [11 B]</span>=
</i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;san=
s-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ Translation-en</span></=
i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Ign file: ./ Translation-en</span></=
i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Reading package lists...</span></i><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| W: Ignoring Provides line with DepCo=
mpareOp for package nativesdk-pkgconfig__pkg-config__</span></i><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| W: You may want to run apt-get updat=
e to correct these problems</span></i><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Reading package lists...</span></i><=
span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-ser=
if&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Building dependency tree...</span></=
i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-=
serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Reading state information...</span><=
/i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans=
-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| Some packages could not be installed=
. This may mean that you have</span></i><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| requested an impossible situation or=
 if you are using the unstable</span></i><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| distribution that some required pack=
ages have not yet been created</span></i><span style=3D"font-size:10.0pt;fo=
nt-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| or been moved out of Incoming.</span=
></i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| The following information may help t=
o resolve the situation:</span></i><span style=3D"font-size:10.0pt;font-fam=
ily:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">|&nbsp;</span></i><span style=3D"font-=
size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:=
p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| The following packages have unmet de=
pendencies:</span></i><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| &nbsp;packagegroup-cross-canadian-ar=
m : Depends: gdb-cross-canadian-arm but it is not installable</span></i><sp=
an style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif=
&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;Depends: gcc-cross-canadian-arm but it is not installable</sp=
an></i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;=
sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;Depends: meta-environment-arm but it is not installable</span=
></i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sa=
ns-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;Depends: binutils-cross-canadian-arm but it is not installabl=
e</span></i><span style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&=
quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| W: Ignoring Provides line with DepCo=
mpareOp for package nativesdk-pkgconfig__pkg-config__</span></i><span style=
=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;">=
<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| W: You may want to run apt-get updat=
e to correct these problems</span></i><span style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| E: Unable to correct problems, you h=
ave held broken packages.</span></i><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| DEBUG: Python function do_populate_s=
dk finished</span></i><span style=3D"font-size:10.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">| ERROR: Function failed: populate_sdk=
_image (see /home/damarla/yocto/poky/buildSkidataHarmony/tmp/work/skidata_h=
armony-poky-linux-gnueabi/core-image-skidata/1.0-r0/temp/log.do_populate_sd=
k.4066
 for further information)</span></i><span style=3D"font-size:10.0pt;font-fa=
mily:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">ERROR: Task 10 (/home/damarla/yocto/po=
ky/meta/recipes-graphics/images/<a href=3D"http://core-image-skidata.bb/" t=
arget=3D"_blank">core-image-skidata.bb</a>, do_populate_sdk)
 failed with exit code '1'</span></i><span style=3D"font-size:10.0pt;font-f=
amily:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">NOTE: Tasks Summary: Attempted 5020 ta=
sks of which 4939 didn't need to be rerun and 1 failed.</span></i><span sty=
le=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;=
"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Summary: 1 task failed:</span></i><spa=
n style=3D"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&=
quot;"><o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">&nbsp; /home/damarla/yocto/poky/meta/r=
ecipes-graphics/images/<a href=3D"http://core-image-skidata.bb/" target=3D"=
_blank">core-image-skidata.bb</a>, do_populate_sdk</span></i><span style=3D=
"font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><i><span style=3D"font-size:10.0pt;font-family:&quot=
;Arial&quot;,&quot;sans-serif&quot;">Summary: There was 1 ERROR message sho=
wn, returning a non-zero exit code.</span></i><span style=3D"font-size:10.0=
pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p></o:p></span>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,&quot;sans-serif&quot;">I am not able to install those packages a=
s they say there are no installation candidate for them...<o:p></o:p></span=
></p>
</div>
</div>
</div>
</div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><o:p>&nbsp;</o:p></p>
<div>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jun 6, 2013 at 6:52 AM, Zhang, Jessica &lt;<=
a href=3D"mailto:jessica.zhang@intel.com" target=3D"_blank">jessica.zhang@i=
ntel.com</a>&gt; wrote:<o:p></o:p></p>
</div>
</div>
<div>
<div>
<blockquote style=3D"border:none;border-left:solid #CCCCCC 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Hi Satya,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Use bitbake image-name &#8211;c populat=
e_sdk, this allows you to create a toolchain with sysroot that match
 your target image that allows you to develop app against&#8230;</span><o:p=
></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Cheers,</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">Jessica</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&q=
uot;sans-serif&quot;;color:#1F497D">&nbsp;</span><o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto"><b><span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,=
&quot;sans-serif&quot;">From:</span></b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-b=
ounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctopr=
oject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Satya Swaroop Damarla<br>
<b>Sent:</b> Wednesday, June 05, 2013 6:05 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] Application Development</span><o:p></o:p></p>
<div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Hi Guys,<o:p></o:p></p>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I have an issue... I created a custom image based on NVIDIA Tegra2=
 with a custom kernel. I installed &nbsp;packages specific Tegra board and =
application specific. Now we want to send
 the baord and the new linux image for application development...&nbsp;<o:p=
></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">As I went through ADT manual, I only found qemu based toolchains b=
ut I want to create toolchain based on my rootfs and kernel... so that the =
development team can develop a voip
 application for the board... I am kind of stuck how to proceed in this iss=
ue...<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">I really need a small way out and hopefully I will catch things au=
tomatically..<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">&nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Cheers,<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal" style=3D"mso-margin-top-alt:auto;mso-margin-bottom-a=
lt:auto">Satya<o:p></o:p></p>
</div>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
</body>
</html>

--_000_C6510F6D410BB64A8C15398EDC6B847C73C38476ORSMSX103amrcor_--
