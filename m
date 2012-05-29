Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68D3EE01423
	for <yocto@yoctoproject.org>; Mon, 28 May 2012 19:27:26 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 28 May 2012 19:27:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="148751115"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by azsmga001.ch.intel.com with ESMTP; 28 May 2012 19:27:25 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 28 May 2012 19:27:24 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.232]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.157]) with mapi id
	14.01.0355.002; Mon, 28 May 2012 19:27:24 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: UART test for Yocto
Thread-Index: Ac09QpH64GrV+F3cQA6VvOUNAmR2uw==
Date: Tue, 29 May 2012 02:27:24 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20ACB6744@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: UART test for Yocto
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
X-List-Received-Date: Tue, 29 May 2012 02:27:26 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20ACB6744ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20ACB6744ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

Can we disable the serial console by deleting "console=3Dtty0 console=3Dtty=
S0,115200n8" from the grub.cfg?  Looks like it is not disabled.

I have been reported this issue for the Cedartrail serial port is always en=
abled regardless of serial console option in the grub.cfg.

Is this due to it is always enabled in cedartrail.conf file below, How do w=
e make sure that serial port can be enabled or disabled by editing the grub=
.cfg?

SYSLINUX_OPTS =3D "serial 0 115200"
SERIAL_CONSOLE =3D "115200 ttyS0"
APPEND +=3D "console=3DttyS0,115200 console=3Dtty0"

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20ACB6744ORSMSX105amrcor_
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
<p class=3D"MsoNormal"><span style=3D"color:#17365D">Hi All,<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">Can we disable the ser=
ial console by deleting &quot;console=3Dtty0 console=3DttyS0,115200n8&quot;=
 from the grub.cfg?&nbsp; Looks like it is not disabled.<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I have been reported t=
his issue for the Cedartrail serial port is always enabled regardless of se=
rial console option in the grub.cfg.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">Is this due to it is a=
lways enabled in cedartrail.conf file below, How do we make sure that seria=
l port can be enabled or disabled by editing the grub.cfg?<o:p></o:p></span=
></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">SYSLINUX_OPTS =3D &quo=
t;serial 0 115200&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">SERIAL_CONSOLE =3D &qu=
ot;115200 ttyS0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">APPEND &#43;=3D &quot;=
console=3DttyS0,115200 console=3Dtty0&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">Thanks<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#17365D">Kishore.<o:p></o:p></s=
pan></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20ACB6744ORSMSX105amrcor_--
