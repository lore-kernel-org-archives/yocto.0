Return-Path: <rahul.saxena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB9BEE0071A
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 15:06:22 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 08 Sep 2011 15:06:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,352,1312182000"; d="scan'208,217";a="49442480"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2011 15:06:22 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Thu, 8 Sep 2011 15:06:22 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Sep 2011 15:06:20 -0700
Thread-Topic: [PATCH 1/2] [KERNEL] Remove 10/100 LAN support. 10/100 LAN
	will be configured by separate files
Thread-Index: Acxuc4ps9lWPdStSReebk0sd1LB41g==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E3F4070@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 1/2] [KERNEL] Remove 10/100 LAN support. 10/100 LAN will be configured by separate files
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
X-List-Received-Date: Thu, 08 Sep 2011 22:06:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2012E3F4070orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F4070orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Remove 10/100 LAN support. 10/100 LAN will be configured by separate files
Signed-off-by: Rahul Saxena<Rahul.saxena@intel.com>

---
 .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg b=
/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
index ea9f7e9..34af860 100644
--- a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
+++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
@@ -1,4 +1,3 @@
 CONFIG_NETDEV_1000=3Dy
-CONFIG_E100=3Dy
 CONFIG_E1000E=3Dy
 CONFIG_E1000=3Dy
--
1.7.0.4

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F4070orsmsx505amrc_
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

<p class=3DMsoNormal>Remove 10/100 LAN support. 10/100 LAN will be configur=
ed by
separate files<o:p></o:p></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>Signed-off-by: Rahul
Saxena&lt;Rahul.saxena@intel.com&gt;<o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>---<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;.../features/intel-e1xxxx/intel-e1xxxx.cfg&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 -<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;1 files changed, 0 insertions(+), 1 deletions(-)=
<o:p></o:p></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

<p class=3DMsoNormal>diff --git a/meta/cfg/kernel-cache/features/intel-e1xx=
xx/intel-e1xxxx.cfg
b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg<o:p></o:p></=
p>

<p class=3DMsoNormal>index ea9f7e9..34af860 100644<o:p></o:p></p>

<p class=3DMsoNormal>---
a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg<o:p></o:p></=
p>

<p class=3DMsoNormal>+++
b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg<o:p></o:p></=
p>

<p class=3DMsoNormal>@@ -1,4 +1,3 @@<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;CONFIG_NETDEV_1000=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-CONFIG_E100=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;CONFIG_E1000E=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>&nbsp;CONFIG_E1000=3Dy<o:p></o:p></p>

<p class=3DMsoNormal>-- <o:p></o:p></p>

<p class=3DMsoNormal>1.7.0.4<o:p></o:p></p>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F4070orsmsx505amrc_--
