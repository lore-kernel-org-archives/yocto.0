Return-Path: <kishore.k.bodke@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BA4BE00527
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:03:57 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 21 Jan 2013 15:03:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,510,1355126400"; 
	d="scan'208,217";a="276681291"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 21 Jan 2013 15:03:57 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.421.2; Mon, 21 Jan 2013 15:03:56 -0800
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.35]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.4]) with mapi id
	14.01.0355.002; Mon, 21 Jan 2013 15:03:56 -0800
From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: What are the other options to boot the Image if USB is NOT
	Detected from BIOS?
Thread-Index: Ac34K5Z7Ts28M4g0Q0Oy0iaGN3st+Q==
Date: Mon, 21 Jan 2013 23:03:56 +0000
Message-ID: <D956029D25CF204F948EA0FB515E1EE24A4EBB08@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: What are the other options to boot the Image if USB is NOT Detected from BIOS?
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
X-List-Received-Date: Mon, 21 Jan 2013 23:03:57 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_D956029D25CF204F948EA0FB515E1EE24A4EBB08ORSMSX105amrcor_"

--_000_D956029D25CF204F948EA0FB515E1EE24A4EBB08ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I want to boot the Yocto Image for a new hardware platform, for which unfor=
tunately the USB is not detectable in the BIOS (due to h/w issues)

Trying to find out what other options do we have if we cannot boot from USB=
?
Tried burning the CD  from an ISO image.  That did not work either.
Any pointers would be helpful.

Thanks
Kishore.

--_000_D956029D25CF204F948EA0FB515E1EE24A4EBB08ORSMSX105amrcor_
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
<p class=3D"MsoNormal">I want to boot the Yocto Image for a new hardware pl=
atform, for which unfortunately the USB is not detectable in the BIOS (due =
to h/w issues)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Trying to find out what other options do we have if =
we cannot boot from USB?<o:p></o:p></p>
<p class=3D"MsoNormal">Tried burning the CD&nbsp; from an ISO image.&nbsp; =
That did not work either.<o:p></o:p></p>
<p class=3D"MsoNormal">Any pointers would be helpful.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<p class=3D"MsoNormal">Kishore.<o:p></o:p></p>
</div>
</body>
</html>

--_000_D956029D25CF204F948EA0FB515E1EE24A4EBB08ORSMSX105amrcor_--
