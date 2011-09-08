Return-Path: <rahul.saxena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB0C3E012BD
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 16:31:04 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 08 Sep 2011 16:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,353,1312182000"; d="scan'208,217";a="49463693"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga001.fm.intel.com with ESMTP; 08 Sep 2011 16:31:04 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx603.amr.corp.intel.com ([10.22.226.49]) with mapi; Thu, 8 Sep 2011
	16:31:04 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Sep 2011 16:31:02 -0700
Thread-Topic: [PATCH 2/3] [KERNEL]  Add separate feature for 10/100 LAN support
Thread-Index: Acxuf18/g/zdYPrcQ7ykHZjBNn6KWQ==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E3F41C0@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 2/3] [KERNEL] Add separate feature for 10/100 LAN support
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
X-List-Received-Date: Thu, 08 Sep 2011 23:31:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C0orsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C0orsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Added separate feature for 10/100 LAN support.
Signed-off-by: Rahul Saxena<Rahul.saxena@intel.com<mailto:Rahul.saxena@inte=
l.com>>

---
 .../features/intel-e1xxxx/intel-e100.cfg           |    2 ++
 .../features/intel-e1xxxx/intel-e100.scc           |    1 +
 2 files changed, 3 insertions(+), 0 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.=
cfg
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.=
scc

diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg b/m=
eta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg
new file mode 100644
index 0000000..65c96d9
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg
@@ -0,0 +1,2 @@
+CONFIG_NET_PCI=3Dy
+CONFIG_E100=3Dy
diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc b/m=
eta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc
new file mode 100644
index 0000000..f21b629
--- /dev/null
+++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc
@@ -0,0 +1 @@
+kconf hardware intel-e100.cfg
--


--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C0orsmsx505amrc_
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
font-family:"Courier New"'>&nbsp;.../features/intel-e1xxxx/intel-e100.cfg&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 2 ++<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;.../features/intel-e1xxxx/intel-e100.scc&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;2 files changed, 3 insertions(+), 0
deletions(-)<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;create mode 100644
meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg<o:p></o:p></span=
></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;create mode 100644
meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc<o:p></o:p></span=
></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git
a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg b/meta/cfg/ker=
nel-cache/features/intel-e1xxxx/intel-e100.cfg<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>new file mode 100644<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 0000000..65c96d9<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>--- /dev/null<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.cfg<o:p></o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -0,0 +1,2 @@<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+CONFIG_NET_PCI=3Dy<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+CONFIG_E100=3Dy<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>diff --git a/meta/cfg/kernel-cache/features/inte=
l-e1xxxx/intel-e100.scc
b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc<o:p></o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>new file mode 100644<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>index 0000000..f21b629<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>--- /dev/null<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+++
b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.scc<o:p></o:p></sp=
an></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>@@ -0,0 +1 @@<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>+kconf hardware intel-e100.cfg<o:p></o:p></span>=
</p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>-- <o:p></o:p></span></p>

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41C0orsmsx505amrc_--
