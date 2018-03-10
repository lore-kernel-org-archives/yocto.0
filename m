Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18767E00E3D; Fri,  9 Mar 2018 17:50:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 Mar 2018 17:50:46 PST
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C0CAE00843
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 17:50:45 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2E/AQDFOKNa/yYyC4deGgEBAQEBAgEBA?=
	=?us-ascii?q?QEIAQEBAYJaIlRmbzKNZY1ygxqUNIIVChOFEgKDESE0GAECAQEBAQEBAgNoHAu?=
	=?us-ascii?q?FPRteAQwJFVYmAQQbGoQSZAGhN40UIQKIPoIahTWCLoFWijeDNoISIASaVQkCg?=
	=?us-ascii?q?U+YLoVCkUeBLB45gVJwFYJ+hEWKOwGBFgEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2E/AQDFOKNa/yYyC4deGgEBAQEBAgEBAQEIAQEBAYJaIlR?=
	=?us-ascii?q?mbzKNZY1ygxqUNIIVChOFEgKDESE0GAECAQEBAQEBAgNoHAuFPRteAQwJFVYmA?=
	=?us-ascii?q?QQbGoQSZAGhN40UIQKIPoIahTWCLoFWijeDNoISIASaVQkCgU+YLoVCkUeBLB4?=
	=?us-ascii?q?5gVJwFYJ+hEWKOwGBFgEBAQ?=
X-IronPort-AV: E=Sophos;i="5.47,448,1515474000"; 
	d="scan'208,217";a="235136948"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	09 Mar 2018 20:49:41 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	09 Mar 2018 20:49:40 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0352.000;
	Fri, 9 Mar 2018 20:49:40 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Two packages installing same file (with different content) to
	rootfs
Thread-Index: AdO4EgzfT2mChmdqSeWdB4KHUyIqtg==
Date: Sat, 10 Mar 2018 01:49:39 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377989265BC82@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.150.1
dlp-reaction: no-action
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Two packages installing same file (with different content) to rootfs
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
X-List-Received-Date: Sat, 10 Mar 2018 01:50:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377989265BC82AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377989265BC82AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Ran into an issue where we have two packages installing different
content for the same file in rootfs. Whichever gets installed last "wins".

I thought there was a check to prevent this. I'm sure I've seen a
warning/error like that in the past.

Is this condition detected? Should it be?

We're using Morty.

MV

--_000_30C2D590D16A5C46ADFE6521910377989265BC82AZUS1EXMB02glob_
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
<p class=3D"MsoNormal">Ran into an issue where we have two packages install=
ing different<o:p></o:p></p>
<p class=3D"MsoNormal">content for the same file in rootfs. Whichever gets =
installed last &#8220;wins&#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I thought there was a check to prevent this. I&#8217=
;m sure I&#8217;ve seen a<o:p></o:p></p>
<p class=3D"MsoNormal">warning/error like that in the past.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is this condition detected? Should it be?<o:p></o:p>=
</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We&#8217;re using Morty.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377989265BC82AZUS1EXMB02glob_--
