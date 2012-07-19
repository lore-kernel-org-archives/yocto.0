Return-Path: <kishore.k.bodke@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EAF7E002A5
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 11:16:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Jul 2012 11:16:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="124453082"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jul 2012 11:16:47 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Jul 2012 11:16:46 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.231]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.93]) with mapi id
	14.01.0355.002; Thu, 19 Jul 2012 11:16:46 -0700
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to set environment variables inside a recipe?
Thread-Index: Ac1l2qCsXMYa5QAcTn2MUw85atNhkQ==
Date: Thu, 19 Jul 2012 18:16:45 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE20AD3AA4C@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: How to set environment variables inside a recipe?
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
X-List-Received-Date: Thu, 19 Jul 2012 18:16:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE20AD3AA4CORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE20AD3AA4CORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am writing a recipe to build a driver specific for  my BSP.

The driver needs a bunch of environmental variables to be set ( specific to=
 driver only ) to build.

Right now to move forward I am doing like below in my recipe to build it.

export  AAA =3D "${S}"
export BBB =3D "${B}"
export CCC =3D "{S}/build-system"
export DDD =3D "{S}/env-files"

Is this right way to do?  Are there any other ways to set the environment v=
ariables inside a recipe?

Any suggestions would be helpful.

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE20AD3AA4CORSMSX105amrcor_
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
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am writing a recipe to build a driver specific for=
 &nbsp;my BSP.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The driver needs a bunch of environmental variables =
to be set ( specific to driver only ) to build.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Right now to move forward I am doing like below in m=
y recipe to build it.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">export &nbsp;AAA =3D &#8220;${S}&#8221;<o:p></o:p></=
p>
<p class=3D"MsoNormal">export BBB =3D &#8220;${B}&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal">export CCC =3D &#8220;{S}/build-system&#8221;<o:p></=
o:p></p>
<p class=3D"MsoNormal">export DDD =3D &#8220;{S}/env-files&#8221;<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this right way to do?&nbsp; Are there any other w=
ays to set the environment variables inside a recipe?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Any suggestions would be helpful.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE20AD3AA4CORSMSX105amrcor_--
