Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59C53E00B45; Sun,  6 Nov 2016 07:33:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13936E00B74
	for <yocto@yoctoproject.org>; Sun,  6 Nov 2016 07:33:29 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GDAgCRTB9Y/yYyC4dcHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhGgEBAQEBH1iBAwGNMKtSggiGJAKCCT8UAQIBAQEBAQEBA18dC4RlAxIbXgE?=
	=?us-ascii?q?MCRVWJgEEGxqINgGgW4UYjSI4Aop9DCWGPokegy+CLwWaJwGaUIYDkTAeN3qFK?=
	=?us-ascii?q?odjAYELAQEB?=
X-IPAS-Result: =?us-ascii?q?A2GDAgCRTB9Y/yYyC4dcHAEBBAEBCgEBgnMhGgEBAQEBH1i?=
	=?us-ascii?q?BAwGNMKtSggiGJAKCCT8UAQIBAQEBAQEBA18dC4RlAxIbXgEMCRVWJgEEGxqIN?=
	=?us-ascii?q?gGgW4UYjSI4Aop9DCWGPokegy+CLwWaJwGaUIYDkTAeN3qFKodjAYELAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,602,1473134400"; 
	d="scan'208,217";a="214962926"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	06 Nov 2016 10:33:27 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	06 Nov 2016 10:33:27 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0319.002; Sun, 6 Nov 2016 10:33:25 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto "Long Term Support"
Thread-Index: AdI4QnirRhDTniFVRU24316T9ElGdg==
Date: Sun, 6 Nov 2016 15:33:22 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF710E3@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Yocto "Long Term Support"
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
X-List-Received-Date: Sun, 06 Nov 2016 15:33:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF710E3AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF710E3AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Has there ever been any discussion of making select releases
"Long Term Support" releases, i.e., committing to support them
for a number of years?

Presumably that would entail having the resources to commit
a maintainer to that release for the LTS interval.

Out of curiosity, how much effort is required (on average) to
maintain a non-current release with at least CVEs and maybe
critical bug fixes from upstream?

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF710E3AZUS1EXMB02glob_
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Has there ever been any discuss=
ion of making select releases<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;Long Term Support&#8221;=
 releases, i.e., committing to support them<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">for a number of years?<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Presumably that would entail ha=
ving the resources to commit<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">a maintainer to that release fo=
r the LTS interval.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Out of curiosity, how much effo=
rt is required (on average) to<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">maintain a non-current release =
with at least CVEs and maybe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">critical bug fixes from upstrea=
m?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MV<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF710E3AZUS1EXMB02glob_--
