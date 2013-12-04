Return-Path: <yang.y.wang@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E9ECE005B1
	for <yocto@yoctoproject.org>; Tue,  3 Dec 2013 20:04:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Dec 2013 20:04:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,822,1378882800"; 
	d="scan'208,217";a="418992611"
Received: from fmsmsx107.amr.corp.intel.com ([10.19.9.54])
	by orsmga001.jf.intel.com with ESMTP; 03 Dec 2013 20:04:12 -0800
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
	FMSMSX107.amr.corp.intel.com (10.19.9.54) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Dec 2013 20:04:11 -0800
Received: from shsmsx101.ccr.corp.intel.com (10.239.4.153) by
	FMSMSX155.amr.corp.intel.com (10.18.116.71) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 3 Dec 2013 20:04:11 -0800
Received: from shsmsx104.ccr.corp.intel.com ([169.254.5.186]) by
	SHSMSX101.ccr.corp.intel.com ([10.239.4.153]) with mapi id
	14.03.0123.003; Wed, 4 Dec 2013 12:04:10 +0800
From: "Wang, Yang Y" <yang.y.wang@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: use TCMODE for specific package build
Thread-Index: Ac7wpYxaYTiUkpaHSg2eIT8llhe8ig==
Date: Wed, 4 Dec 2013 04:04:09 +0000
Message-ID: <B00C8E670A91FC4CABB6EF6FE24FF0C80A6C757B@SHSMSX104.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.239.127.40]
MIME-Version: 1.0
Subject: use TCMODE for specific package build
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
X-List-Received-Date: Wed, 04 Dec 2013 04:04:19 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C757BSHSMSX104ccrcor_"

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C757BSHSMSX104ccrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,
         I'm trying to use the second toolchain such as icc compiler for my=
 specific package build. I have enabled the TCMODE=3Dicc in the local.conf =
but in this case all the package will be built by icc compiler.
However I only want to build one of my package with icc and use default gcc=
 for all the other package build.
Could anyone let me know how to make it?
Thank you.
-Yang

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C757BSHSMSX104ccrcor_
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
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:\5B8B\4F53;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@\5B8B\4F53";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
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
/* Page Definitions */
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
<body lang=3D"ZH-CN" link=3D"blue" vlink=3D"purple" style=3D"text-justify-t=
rim:punctuation">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi all,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; I&#8217;m trying to use the second toolchain such as icc =
compiler for my specific package build. I have enabled the TCMODE=3Dicc in =
the local.conf but in this case all the package will be built by icc compil=
er.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However I only want to build on=
e of my package with icc and use default gcc for all the other package buil=
d.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Could anyone let me know how to=
 make it?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US">-Yang<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_B00C8E670A91FC4CABB6EF6FE24FF0C80A6C757BSHSMSX104ccrcor_--
