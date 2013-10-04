Return-Path: <corneliux.stoicescu@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F1FDE016B0
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 01:16:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Oct 2013 01:16:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1031,1371106800"; 
	d="scan'208,217";a="303063323"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Oct 2013 01:15:59 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.100]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.234]) with mapi id
	14.03.0123.003; Fri, 4 Oct 2013 09:15:49 +0100
From: "Stoicescu, CorneliuX" <corneliux.stoicescu@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Creating a custom mips64 layer using yocto-bsp
Thread-Index: Ac7A2LlaJ0If9hvHQ7mEhg7XLp3YiQ==
Date: Fri, 4 Oct 2013 08:15:48 +0000
Message-ID: <33115ABC4887814E8A92A08FBC93416B0A196300@IRSMSX103.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [163.33.239.181]
MIME-Version: 1.0
Cc: jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Creating a custom mips64 layer using yocto-bsp
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
X-List-Received-Date: Fri, 04 Oct 2013 08:16:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_33115ABC4887814E8A92A08FBC93416B0A196300IRSMSX103gercor_"

--_000_33115ABC4887814E8A92A08FBC93416B0A196300IRSMSX103gercor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am trying to create a custom mips64 layer for a project. I am using the "=
yocto-bsp" command to make the magic happen. Unfortunately, the tool only s=
upports creating layers for mips (32 bit) architecture. So I tried a little=
 magic of my own and I changed a line in meta-my_layer/conf/machine/my_laye=
r.conf from:
require conf/machine/include/tune-mips.inc

to

require conf/machine/include/tune-mips64.inc

When building, it fails at linux-yocto task do_package with a lot of errors=
 like:
ERROR: QA Issue: Bit size did not match (64 to 32) linux-yocto on /work/mip=
stest-poky-linux/linux-yocto/3.10.11+gitAUTOINC+dad2b7e1ce_e1aa804148-r0.1/=
packages-split/kernel-module-sch-codel/lib/modules/3.10.11-yocto-standard/k=
ernel/net/sched/sch_codel.ko

I believe that means the modules still think they should be 32 bit but are =
not. Can anyone help me with my issue?

PS: I looked through the Yocto mega-manual and I added the following line t=
o my_layer.conf file without any luck:

TARGET_ARCH =3D "mips64"

Thank you!

--_000_33115ABC4887814E8A92A08FBC93416B0A196300IRSMSX103gercor_
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
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Courrier New";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to create a custom mips64 layer for a pr=
oject. I am using the &#8220;yocto-bsp&#8221; command to make the magic hap=
pen. Unfortunately, the tool only supports creating layers for mips (32 bit=
) architecture. So I tried a little magic of my
 own and I changed a line in meta-my_layer/conf/machine/my_layer.conf from:=
<o:p></o:p></p>
<p class=3D"MsoNormal"><i>require conf/machine/include/tune-mips.inc<o:p></=
o:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i>to<o:p></o:p></i></p>
<p class=3D"MsoNormal"><i><o:p>&nbsp;</o:p></i></p>
<p class=3D"MsoNormal"><i>require conf/machine/include/tune-mips64.inc<o:p>=
</o:p></i></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">When building, it fails at linux-yocto task do_packa=
ge with a lot of errors like:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-autospace:none"><span style=3D"font-si=
ze:9.0pt;font-family:&quot;Courrier New&quot;;color:#7F4040">ERROR</span><s=
pan style=3D"font-size:9.0pt;font-family:&quot;Courrier New&quot;">:
<span style=3D"color:#7F3030">QA Issue: Bit size did not match (64 to 32) l=
inux-yocto on /work/mipstest-poky-linux/linux-yocto/3.10.11&#43;gitAUTOINC&=
#43;dad2b7e1ce_e1aa804148-r0.1/packages-split/kernel-module-sch-codel/lib/m=
odules/3.10.11-yocto-standard/kernel/net/sched/sch_codel.ko<o:p></o:p></spa=
n></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I believe that means the modules still think they sh=
ould be 32 bit but are not. Can anyone help me with my issue?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PS: I looked through the Yocto mega-manual and I add=
ed the following line to my_layer.conf file without any luck:<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><i>TARGET_ARCH =3D &quot;mips64&quot;<o:p></o:p></i>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thank you!<o:p></o:p></p>
</div>
</body>
</html>

--_000_33115ABC4887814E8A92A08FBC93416B0A196300IRSMSX103gercor_--
