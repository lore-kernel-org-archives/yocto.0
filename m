Return-Path: <rahul.saxena@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B92B7E012C4
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 16:31:07 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Sep 2011 16:31:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208,217";a="46460917"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 08 Sep 2011 16:31:07 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.226.128) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 8 Sep 2011 16:31:07 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx606.amr.corp.intel.com ([10.22.226.128]) with mapi;
	Thu, 8 Sep 2011 16:31:07 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Sep 2011 16:31:05 -0700
Thread-Topic: [PATCH 3/3] [KERNEL] Add e100 feature configuration to all boards
Thread-Index: Acxuf2EALhG8PXEfTjapxo4CSrf/Ow==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E3F41C1@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 3/3] [KERNEL] Add e100 feature configuration to all boards
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
X-List-Received-Date: Thu, 08 Sep 2011 23:31:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C1orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C1orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Added separate feature for 10/100 LAN support.
Signed-off-by: Rahul Saxena<Rahul.saxena@intel.com<mailto:Rahul.saxena@inte=
l.com>>

---
 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 +
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    1 +
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    2 +-
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
 meta/cfg/kernel-cache/bsp/romley/romley.scc        |    1 +
 7 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc b/meta=
/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
index 58dab18..a7f6cff 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
@@ -3,6 +3,7 @@ kconf hardware common-pc-64-graphics.cfg

 include features/hpet/hpet.scc
 include features/igb/igb.scc
+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc

 include features/latencytop/latencytop.scc
diff --git a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/k=
ernel-cache/bsp/common-pc/common-pc.scc
index d7dda80..77c3d26 100644
--- a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
+++ b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc
@@ -1,6 +1,7 @@
 kconf hardware common-pc.cfg
 kconf hardware common-pc-gfx.cfg

+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/latencytop/latencytop.scc
 include features/profiling/profiling.scc
diff --git a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc b/meta/cfg/ker=
nel-cache/bsp/crownbay/crownbay.scc
index c7cd538..63b7ad6 100644
--- a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
+++ b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
@@ -3,6 +3,7 @@ kconf hardware crownbay.cfg
 git merge yocto/emgd

 include features/eg20t/eg20t.scc
+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
diff --git a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc b/meta/cfg/kerne=
l-cache/bsp/emenlow/emenlow.scc
index 2a83303..6e4cc40 100644
--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc
@@ -1,7 +1,7 @@
 kconf hardware emenlow.cfg

 kconf non-hardware reboot-quirk.cfg
-
+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-psb/drm-psb.scc
 include features/serial/8250.scc
diff --git a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/k=
ernel-cache/bsp/fishriver/fishriver.scc
index 6e3d385..696ccf7 100644
--- a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
+++ b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
@@ -2,6 +2,7 @@ kconf hardware fishriver.cfg

 git merge yocto/emgd

+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc b/meta/cfg/kernel-cach=
e/bsp/fri2/fri2.scc
index 2d30049..ff38b2d 100644
--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc
@@ -3,6 +3,7 @@ kconf hardware fri2.cfg
 git merge yocto/emgd

 include features/eg20t/eg20t.scc
+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/drm-emgd/drm-emgd.scc
 include features/dmaengine/dmaengine.scc
diff --git a/meta/cfg/kernel-cache/bsp/romley/romley.scc b/meta/cfg/kernel-=
cache/bsp/romley/romley.scc
index 4152816..5d997e1 100644
--- a/meta/cfg/kernel-cache/bsp/romley/romley.scc
+++ b/meta/cfg/kernel-cache/bsp/romley/romley.scc
@@ -4,6 +4,7 @@ include features/i915/i915.scc
 include features/serial/8250.scc
 include features/uio/uio.scc
 include features/hugetlb/hugetlb.scc
+include features/intel-e1xxxx/intel-e100.scc
 include features/intel-e1xxxx/intel-e1xxxx.scc
 include features/ixgbe/ixgbe.scc

--
1.7.0.4




--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C1orsmsx505amrc_
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
	{mso-style-type:export-only;
	font-size:10.0pt;}
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

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>Added separate feature for 10/100 LAN support. <=
o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>Signed-off-by: Rahul Saxena&lt;<a
href=3D"mailto:Rahul.saxena@intel.com">Rahul.saxena@intel.com</a>&gt;<o:p><=
/o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>---<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;.../kernel-cache/bsp/common-pc-64/common-p=
c-64.scc
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/common-pc/common=
-pc.scc&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/crownbay/crownba=
y.scc&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/emenlow/emenlow.=
scc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 2 +-<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/fishriver/fishri=
ver.scc&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/fri2/fri2.scc&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/romley/romley.sc=
c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;7 files changed, 7 insertions(+), 1
deletions(-)<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc
b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc<o:p></o:p></span>=
</p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 58dab18..a7f6cff 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>---
a/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc<o:p></o:p></span>=
</p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/bsp/common-pc-64/common-pc-64.scc<o:p></o:p></span>=
</p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -3,6 +3,7 @@ kconf hardware
common-pc-64-graphics.cfg<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/hpet/hpet.scc<o:p></o:p><=
/span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/igb/igb.scc<o:p></o:p></s=
pan></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/latencytop/latencytop.scc=
<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc b/meta/cfg/kernel-cache=
/bsp/common-pc/common-pc.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index d7dda80..77c3d26 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>---
a/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -1,6 +1,7 @@<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;kconf hardware common-pc.cfg<o:p></o:p></s=
pan></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;kconf hardware common-pc-gfx.cfg<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/latencytop/latencytop.scc=
<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/profiling/profiling.scc<o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc
b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index c7cd538..63b7ad6 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>---
a/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -3,6 +3,7 @@ kconf hardware crownbay.cfg<o:p>=
</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;git merge yocto/emgd<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/eg20t/eg20t.scc<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/drm-emgd/drm-emgd.scc<o:p=
></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/dmaengine/dmaengine.scc<o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git a/meta/cfg/kernel-cache/bsp/emenlow/e=
menlow.scc
b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 2a83303..6e4cc40 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>--- a/meta/cfg/kernel-cache/bsp/emenlow/emenlow.=
scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++ b/meta/cfg/kernel-cache/bsp/emenlow/emenlow.=
scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -1,7 +1,7 @@<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;kconf hardware emenlow.cfg<o:p></o:p></spa=
n></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;kconf non-hardware reboot-quirk.cfg <o:p><=
/o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>-<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/drm-psb/drm-psb.scc<o:p><=
/o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/serial/8250.scc<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc b/meta/cfg/kernel-cache=
/bsp/fishriver/fishriver.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 6e3d385..696ccf7 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>---
a/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -2,6 +2,7 @@ kconf hardware fishriver.cfg<o:p=
></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;git merge yocto/emgd<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/drm-emgd/drm-emgd.scc<o:p=
></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/dmaengine/dmaengine.scc<o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git a/meta/cfg/kernel-cache/bsp/fri2/fri2=
.scc
b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 2d30049..ff38b2d 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>--- a/meta/cfg/kernel-cache/bsp/fri2/fri2.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++ b/meta/cfg/kernel-cache/bsp/fri2/fri2.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -3,6 +3,7 @@ kconf hardware fri2.cfg<o:p></o:=
p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;git merge yocto/emgd<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/eg20t/eg20t.scc<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/drm-emgd/drm-emgd.scc<o:p=
></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/dmaengine/dmaengine.scc<o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/bsp/romley/romley.scc b/meta/cfg/kernel-cache/bsp/r=
omley/romley.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 4152816..5d997e1 100644<o:p></o:p></span><=
/p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>--- a/meta/cfg/kernel-cache/bsp/romley/romley.sc=
c<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++ b/meta/cfg/kernel-cache/bsp/romley/romley.sc=
c<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -4,6 +4,7 @@ include features/i915/i915.scc<o=
:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/serial/8250.scc<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/uio/uio.scc<o:p></o:p></s=
pan></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/hugetlb/hugetlb.scc<o:p><=
/o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+include features/intel-e1xxxx/intel-e100.scc<o:=
p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/intel-e1xxxx/intel-e1xxxx=
.scc<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;include features/ixgbe/ixgbe.scc<o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>-- <o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>1.7.0.4<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C1orsmsx505amrc_--
