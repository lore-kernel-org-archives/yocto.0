Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.10490.1608036187650724711
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 04:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=M90WkvdU;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1608036187; x=1765716187;
  h=from:to:subject:date:mime-version;
  bh=+6H6uzVrZa/qfI3iimcJJsrNkYyY4+9TmPBRuUKtFiI=;
  b=M90WkvdUQBeREzLHC320nganeSMKu29jSsrWmDudWy/JdUzQAs+aaR1D
   VDxmYjthReea59NiPERFB3opO2eg0/1BsHKrgpjbrxDIuv0PhOQY29JfU
   0q7QlMqJLRTekrI+fo5TvEoAwI1lNSOcoE3HQgwuCgWOhx8Q2JHnUCRAX
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3AlQTKFRGx2O3tLzZdYHI4/J1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76p8i+bnLW6fgltlLVR4KTs6sC17OJ9fmxASdZvt6oizMrSNR0TRgLiM?=
 =?us-ascii?q?EbzUQLIfWuLgnFFsPsdDEwB89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVr?=
 =?us-ascii?q?O+/7BpDdj9it1+C15pbffxhEiCCybL9vLhi6txjdu80KjYdtN6o8yAbCr2dVde?=
 =?us-ascii?q?hR2W5mP0+YkQzm5se38p5j8iBQtOwk+sVdT6j0fLk2QKJBAjg+PG87+MPktR/Y?=
 =?us-ascii?q?TQuS/XQcSXkZkgBJAwfe8h73WIr6vzbguep83CmaOtD2TawxVD+/4apnVAPkhS?=
 =?us-ascii?q?EaPDM/7WrZiNF/jLhDrRyhuRJx3pLUbo+WOvp/YqzScsgXSnBdUsZTTSFNHp+w?=
 =?us-ascii?q?Y5UJAuEcPehYtY79p14WoBewAgesA+XvyiRWiXDoxq02y/kqHxza3AM+AdIBrn?=
 =?us-ascii?q?LUp8jrOawPVey6wrTGwTDNY/hL3jr985TIfQ4/of6SW7J8a8/RyU4pFwPekFqf?=
 =?us-ascii?q?t5flMiiO2esXrWeb9OphVfmzi2E5rgFxuSKjydsrionMn48YzE3P+iplzogvP9?=
 =?us-ascii?q?K4VFJ7bsC+EJtWryyXOZZ7T80gTmx0pCs0xLkLtYC0ciYF1pkr2h3SZvibf4SW?=
 =?us-ascii?q?4hztVOWcLzl2inxreL+ygxm//VWgxOHhWce51FVHoyxYmdfCsXAN0gbc6smBSv?=
 =?us-ascii?q?Zl/UeuxyyP1wbN5eFAO0w0krDbK5E5zr4/l5oTrUTDHjLtl0nskKCWcUAk9+61?=
 =?us-ascii?q?4OrkerXrvoKQO5NuhgzwMKkigNKzDfo4PwQUXmWW+fyw2KD/8UHjT7hHgec6n6?=
 =?us-ascii?q?3DvJ3VJskWoLOyDRVP3YY58Rm/Ci+r0NEfnXYaMl1IYAmHj431O1HWJ/D4EOu/?=
 =?us-ascii?q?j0yskDh1w/DGOaXsAonCL3fZlrfheK195kpAxAYv0dxT+ohYCrcbL/7pQUD+rs?=
 =?us-ascii?q?LXDgQ5Mgyv3+boFtB91pgEVW2TBa+ZNbvesV6O5u0xP+mBfJIZtCrnJ/Ur5fPi?=
 =?us-ascii?q?l2E1lUEdcKWz3JYaaGi0HvF8LEWYZXrsjM0BEWAPvgcmV+zqlEONUSBNaHa0Ra?=
 =?us-ascii?q?484zY7CIS9DYjdWI+tm6eM0zyhEZJIfWBHCkuMEWv2eIWBQPcAcj6dIshkkjAc?=
 =?us-ascii?q?T7iuV5ch1Q2ytA/907dmLu3U9TEEtZLkz9V14+zTlQou9TxvFcic02aNQH1onm?=
 =?us-ascii?q?MPXz82xqd/oU5jxVifzah0mftYFcZc56ABbgBvf4/bxPB9I9TzQR7aOMaOQ0qh?=
 =?us-ascii?q?Ws+hAzw6UpQ22dBEKxJsHN6+iTjH3jG2GPkEkLeXA4Qu9aDR1GS3INxynSXozq?=
 =?us-ascii?q?4k2hMDRc1UOGC9wuZE6wXNCoiBuA3Zqp3rP+xIxzLA6mqFi2+JulpVXRVYW6zI?=
 =?us-ascii?q?RmEEekbTtpLy4UaUHOzmMqguLgYUkZ3KEaBNcNC81Vg=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AuBAA5rthf/0HhJQpigQmBT4EjgXyBO?=
 =?us-ascii?q?AqVWJo7FIFoCwEBAQEBAQEBAQgBJQoEAQGGPSY2Bw4CEAEBBgEBAQEBBgQBhlE?=
 =?us-ascii?q?BC4I3IoNNXgGBACYBBBMIgx+BfoEXrgGBNIQ+AYEYhHwGCQGBLo8nPodFAoFFh?=
 =?us-ascii?q?hAEgzs/BRp3A0KBFJoGnWIHA4J0iSOSHyuiPZQFiw2WGwIEAgQFAhWBXQKCCHC?=
 =?us-ascii?q?DBQEBMxI9FwINkhKFFIVEdgEBMwIGCgEBAwmJNjJfAQE?=
X-IPAS-Result: =?us-ascii?q?A2AuBAA5rthf/0HhJQpigQmBT4EjgXyBOAqVWJo7FIFoCwE?=
 =?us-ascii?q?BAQEBAQEBAQgBJQoEAQGGPSY2Bw4CEAEBBgEBAQEBBgQBhlEBC4I3IoNNXgGBA?=
 =?us-ascii?q?CYBBBMIgx+BfoEXrgGBNIQ+AYEYhHwGCQGBLo8nPodFAoFFhhAEgzs/BRp3A0K?=
 =?us-ascii?q?BFJoGnWIHA4J0iSOSHyuiPZQFiw2WGwIEAgQFAhWBXQKCCHCDBQEBMxI9FwINk?=
 =?us-ascii?q?hKFFIVEdgEBMwIGCgEBAwmJNjJfAQE?=
X-IronPort-AV: E=Sophos;i="5.78,421,1599523200"; 
   d="scan'208,217";a="332493792"
X-IronPort-AV: E=Sophos;i="5.78,421,1599523200"; 
   d="scan'208,217";a="93675512"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: #yocto #zeus #kernel -broken atomic modsset
Thread-Topic: #yocto #zeus #kernel -broken atomic modsset
Thread-Index: AdbS2gMXAuVd9lgpQGGWtCaowZChDA==
Date: Tue, 15 Dec 2020 12:43:04 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.48]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1650E46521632DDC.10204@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_5f2ca4cc5435480c87be6a9c9bcf549dbaesystemscom_"

--_000_5f2ca4cc5435480c87be6a9c9bcf549dbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Ok, so I am trying to understand the impact of the following issue seen und=
er our "zeus" based Intel platform build:

https://patchwork.kernel.org/project/dri-devel/patch/20190905181834.6234-1-=
daniel.vetter@ffwll.ch/

The patch is currently preventing my image from going down the DRM_CLIENT_C=
AP_ATOMIC path...

I currently have algorithms centered around the GPU dependent on X and this=
 path, and would like to be able to work around this, if possible.

My goal was to get our Yocto based platform in line with the current Yocto =
release, all our original code was done using the "rocko" release. I have n=
ow ported our Intel based build to "zeus" with this being our final issue..=
.

Questions:


(1) If I wanted to rebuild the "zeus" 3.0.4 kernel to add debug code around=
 this issue how would I go about doing this ?

(2)  Under my downloads directory I see linux-5.2.tar.xz is downloaded, tar=
 ball is without the patch, so I am assuming the patch being applied after,=
 correct ?

(3)  I do not see this built under the build tree after I build my Yocto im=
age, Are some components under the builds tree removed after successfully b=
eing built ?, and how might I stop them from being deleted for inspection, =
etc. ?

(4)  When I perform "bitbake -e linux | grep ^T=3D" I see the following"

ERROR: Nothing PROVIDES 'linux'. Close matches:

  syslinux

  linuxptp

  linux-atm

Was the linux-5.2 package renamed on built or am I looking at the wrong pac=
kage as my stating point ?

(5)  It appears the patch was added to the kernel (https://github.com/torva=
lds/linux/tree/master) about a year ago, has the patch been applied to any =
earlier pre-zeus releases ?

(6)  Will this X11 issue be addressed in future releases, i.e. "gatesgarth"=
. "hardnott" ?

(7)  It is unclear but would you know about what release they might have br=
oken this path ?

Thanks,
Steve



--_000_5f2ca4cc5435480c87be6a9c9bcf549dbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:Consolas;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:933854463;
	mso-list-type:hybrid;
	mso-list-template-ids:-638263920 2094974092 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-text:"\(%1\)";
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Ok, so I am trying to understand the impact of the f=
ollowing issue seen under our &#8220;zeus&#8221; based Intel platform build=
:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://patchwork.kernel.org/project/dri-=
devel/patch/20190905181834.6234-1-daniel.vetter@ffwll.ch/">https://patchwor=
k.kernel.org/project/dri-devel/patch/20190905181834.6234-1-daniel.vetter@ff=
wll.ch/</a><o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">The patch is currently preventing my image from going down =
the DRM_CLIENT_CAP_ATOMIC path&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">I currently have algorithms centered around the GPU depende=
nt on X and this path, and would like to be able to work around this, if po=
ssible.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">My goal was to get our Yocto based platform in line with th=
e current Yocto release, all our original code was done using the &#8220;ro=
cko&#8221; release. I have now ported our Intel
 based build to &#8220;zeus&#8221; with this being our final issue&#8230;<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">Questions:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><b><span style=3D"font-size:10.0pt;font-family=
:Consolas;color:red"><span style=3D"mso-list:Ignore">(1)<span style=3D"font=
:7.0pt &quot;Times New Roman&quot;">
</span></span></span></b><![endif]><b><span style=3D"font-size:10.0pt;font-=
family:Consolas;color:red">If I wanted to rebuild the &#8220;zeus&#8221; 3.=
0.4 kernel to add debug code around this issue how would I go about doing t=
his ?<o:p></o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(2)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;Under my downloads directory I see linux-5.2.=
tar.xz is downloaded, tar ball is without the patch, so I am assuming the p=
atch being applied after, correct ?<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(3)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;I do not see this built under the build tree =
after I build my Yocto image, Are some components under the builds tree rem=
oved after successfully being built ?,
 and how might I stop them from being deleted for inspection, etc. ?<o:p></=
o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(4)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;When I perform &#8220;bitbake -e linux | grep=
 ^T=3D&#8221; I see the following&#8221;<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"font-size:10.0pt;font-family:C=
onsolas;color:#333333">ERROR: Nothing PROVIDES 'linux'. Close matches:<o:p>=
</o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"font-size:10.0pt;font-family:C=
onsolas;color:#333333">&nbsp; syslinux<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"font-size:10.0pt;font-family:C=
onsolas;color:#333333">&nbsp; linuxptp<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"font-size:10.0pt;font-family:C=
onsolas;color:#333333">&nbsp; linux-atm<o:p></o:p></span></p>
<p class=3D"MsoListParagraph"><span style=3D"font-size:10.0pt;font-family:C=
onsolas;color:#333333"></span><b><span style=3D"font-size:10.0pt;font-famil=
y:Consolas;color:red">Was the linux-5.2 package renamed on built or am I lo=
oking at the wrong package as my stating
 point ?</span></b><b><span style=3D"font-size:10.0pt;font-family:Consolas;=
color:#333333"><o:p></o:p></span></b></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(5)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;It appears the patch was added to the kernel =
(<a href=3D"https://github.com/torvalds/linux/tree/master">https://github.c=
om/torvalds/linux/tree/master</a>) about
 a year ago, has the patch been applied to any earlier pre-zeus releases ?<=
o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(6)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;Will this X11 issue be addressed in future re=
leases, i.e. &#8220;gatesgarth&#8221;. &#8220;hardnott&#8221; ?
<o:p></o:p></span></p>
<p class=3D"MsoListParagraph" style=3D"text-indent:-.25in;mso-list:l0 level=
1 lfo1"><![if !supportLists]><span style=3D"font-size:10.0pt;font-family:Co=
nsolas;color:#333333"><span style=3D"mso-list:Ignore">(7)<span style=3D"fon=
t:7.0pt &quot;Times New Roman&quot;">
</span></span></span><![endif]><span style=3D"font-size:10.0pt;font-family:=
Consolas;color:#333333">&nbsp;It is unclear but would you know about what r=
elease they might have broken this path ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:Consolas=
;color:#333333"><o:p>&nbsp;</o:p></span></p>
</div>
</body>
</html>

--_000_5f2ca4cc5435480c87be6a9c9bcf549dbaesystemscom_--
