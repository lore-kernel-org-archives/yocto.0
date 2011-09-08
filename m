Return-Path: <rahul.saxena@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1A9DE0071A
	for <yocto@yoctoproject.org>; Thu,  8 Sep 2011 16:30:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 08 Sep 2011 16:30:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208,217";a="46614116"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga001.jf.intel.com with ESMTP; 08 Sep 2011 16:30:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.226.213) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 8 Sep 2011 16:30:56 -0700
Received: from orsmsx505.amr.corp.intel.com ([10.22.226.208]) by
	orsmsx601.amr.corp.intel.com ([10.22.226.213]) with mapi;
	Thu, 8 Sep 2011 16:30:56 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 8 Sep 2011 16:30:53 -0700
Thread-Topic: [PATCH 0/3] [KERNEL] Cover letter for seperating 10/100 LAN
	feature from 1G and 10G
Thread-Index: Acxuf1n/bGiXsG8UTki5qVBEVNEf2A==
Message-ID: <4FF5AC937153B0459463C1A88EB478F2012E3F41BD@orsmsx505.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: [PATCH 0/3] [KERNEL] Cover letter for seperating 10/100 LAN feature from 1G and 10G
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
X-List-Received-Date: Thu, 08 Sep 2011 23:30:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4FF5AC937153B0459463C1A88EB478F2012E3F41BDorsmsx505amrc_"

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41BDorsmsx505amrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Cover letter for separating 10/100 LAN feature from 1G and 10G. Typically a=
 machine does not need both of 10/100 and 1G/10G drivers.

Signed-off-by: Rahul SaxenaRahul.saxena@intel.com<mailto:Rahul.saxena@intel=
.com>

Rahul Saxena (3):
  Remove 10/100 LAN support. 10/100 LAN will be configured by seperate
    files
  Added seperate feature for 10/100 LAN support
  Added e100 feature configuration to remaining boards

 .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 +
 meta/cfg/kernel-cache/bsp/common-pc/common-pc.scc  |    1 +
 meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
 meta/cfg/kernel-cache/bsp/emenlow/emenlow.scc      |    2 +-
 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |    1 +
 meta/cfg/kernel-cache/bsp/fri2/fri2.scc            |    1 +
 meta/cfg/kernel-cache/bsp/romley/romley.scc        |    1 +
 .../features/intel-e1xxxx/intel-e100.cfg           |    2 ++
 .../features/intel-e1xxxx/intel-e100.scc           |    1 +
 .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    1 -
 10 files changed, 10 insertions(+), 2 deletions(-)
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.=
cfg
 create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e100.=
scc


--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41BDorsmsx505amrc_
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
font-family:"Courier New"'>Cover letter for separating 10/100 LAN feature f=
rom
1G and 10G. Typically a machine does not need both of 10/100 and 1G/10G
drivers.<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>Signed-off-by: Rahul Saxena<a
href=3D"mailto:Rahul.saxena@intel.com">Rahul.saxena@intel.com</a><o:p></o:p=
></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>Rahul Saxena (3):<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp; Remove 10/100 LAN support. 10/100 LAN wil=
l be
configured by seperate<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;&nbsp;&nbsp; files<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp; Added seperate feature for 10/100 LAN sup=
port<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp; Added e100 feature configuration to remai=
ning
boards<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'><o:p>&nbsp;</o:p></span></p>

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
|&nbsp;&nbsp; &nbsp;1 +<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;meta/cfg/kernel-cache/bsp/romley/romley.sc=
c&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 +<o:p></o:p></span></p>

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
font-family:"Courier New"'>&nbsp;.../features/intel-e1xxxx/intel-e1xxxx.cfg=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
|&nbsp;&nbsp;&nbsp; 1 -<o:p></o:p></span></p>

<p class=3DMsoNormal style=3D'text-autospace:none'><span style=3D'font-size=
:10.0pt;
font-family:"Courier New"'>&nbsp;10 files changed, 10 insertions(+), 2
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

<p class=3DMsoNormal><o:p>&nbsp;</o:p></p>

</div>

</body>

</html>

--_000_4FF5AC937153B0459463C1A88EB478F2012E3F41BDorsmsx505amrc_--
