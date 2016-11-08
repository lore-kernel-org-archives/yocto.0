Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A4F6E0098A; Tue,  8 Nov 2016 15:25:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0013]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 08 Nov 2016 15:24:57 PST
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1192E00874
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 15:24:57 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HjAgD9XSJY/xUHmMZdHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhGwEBAQEBH1iBBgGNMatZggiGJAKCCz8UAQIBAQEBAQEBA18dC4RlAxIbXgE?=
	=?us-ascii?q?MCRVWJgEEGxqIOgGiB4UYjSI4AosSDAEkhj6JIYMvgi8Fmi8BgT6Qd4ghDIV5k?=
	=?us-ascii?q?TYeN3qFKocgAYELAQEB?=
X-IPAS-Result: =?us-ascii?q?A2HjAgD9XSJY/xUHmMZdHAEBBAEBCgEBgnMhGwEBAQEBH1i?=
	=?us-ascii?q?BBgGNMatZggiGJAKCCz8UAQIBAQEBAQEBA18dC4RlAxIbXgEMCRVWJgEEGxqIO?=
	=?us-ascii?q?gGiB4UYjSI4AosSDAEkhj6JIYMvgi8Fmi8BgT6Qd4ghDIV5kTYeN3qFKocgAYE?=
	=?us-ascii?q?LAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,611,1473134400"; 
	d="scan'208,217";a="179162519"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	08 Nov 2016 18:23:46 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	08 Nov 2016 18:23:45 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0319.002; Tue, 8 Nov 2016 18:23:45 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Postinsts question
Thread-Index: AdI6FuvbahkIhJEzSnaHKEHzMKB9iw==
Date: Tue, 8 Nov 2016 23:23:44 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF75F11@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Postinsts question
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
X-List-Received-Date: Tue, 08 Nov 2016 23:25:01 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF75F11AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF75F11AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are running with our rootfs mounted read-only.
Consequently, any postinsts that get deferred to first boot fail.

Is there a way to fail the build for any postinsts that can't
be performed during the build and have to be deferred?

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF75F11AZUS1EXMB02glob_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">We are running with our rootfs =
mounted read-only.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Consequently, any postinsts tha=
t get deferred to first boot fail.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to fail the buil=
d for any postinsts that can&#8217;t<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">be performed during the build a=
nd have to be deferred?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MV<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF75F11AZUS1EXMB02glob_--
