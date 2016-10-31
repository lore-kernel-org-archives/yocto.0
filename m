Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7712E00444; Mon, 31 Oct 2016 07:39:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Mon, 31 Oct 2016 07:39:01 PDT
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20CD2E0034A
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 07:39:01 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2EwBgDBVhdY/yYyC4dcHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhFgEBAQEBH1h9AQYBjS6rPIIHKoV5AoIQPxQBAgEBAQEBAQEDXx0LgldJAQE?=
	=?us-ascii?q?BAQEBAQEBTAINYgMSG14BFRVWJgEEGwEZiDIBDaBJhRiXOgwBJIY9iQ8PgkoLW?=
	=?us-ascii?q?oIvBZoYAZo4hXuREx42YIUScgEBhVGBLQGBCAEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2EwBgDBVhdY/yYyC4dcHAEBBAEBCgEBgnMhFgEBAQEBH1h?=
	=?us-ascii?q?9AQYBjS6rPIIHKoV5AoIQPxQBAgEBAQEBAQEDXx0LgldJAQEBAQEBAQEBTAINY?=
	=?us-ascii?q?gMSG14BFRVWJgEEGwEZiDIBDaBJhRiXOgwBJIY9iQ8PgkoLWoIvBZoYAZo4hXu?=
	=?us-ascii?q?REx42YIUScgEBhVGBLQGBCAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,575,1473134400"; 
	d="scan'208,217";a="201129744"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	31 Oct 2016 10:37:57 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	31 Oct 2016 10:37:57 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 31 Oct 2016 10:37:56 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.2 minimum kernel requirement
Thread-Index: AdIzg4bIO9VniquCT8Kc16okCpJcPg==
Date: Mon, 31 Oct 2016 14:37:54 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF672EC@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Yocto 2.2 minimum kernel requirement
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
X-List-Received-Date: Mon, 31 Oct 2016 14:39:03 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF672ECAZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF672ECAZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We are looking at upgrading from Yocto 1.8 to 2.2.

Yocto 2.2 has a minimum kernel requirement of 3.2.0.

This isn't an issue for our target (ARMv5, Linux 4.4) but may be
an issue for our automated build machines (x86, Linux 2.6.32-CentOS 6.)

However, there is a note that says
"For x86 and x86_64, you can reset OLDEST_KERNEL<http://www.yoctoproject.or=
g/docs/2.2/mega-manual/mega-manual.html#var-OLDEST_KERNEL> to anything down=
 to 2.6.32 if desired."

Is it possible to configure things such that we can keep supporting the old
kernel for the SDK while we support a more up-to-date kernel for the target=
?

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF672ECAZUS1EXMB02glob_
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
code
	{mso-style-priority:99;
	font-family:"Courier New";}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">We are looking at upgrading fro=
m Yocto 1.8 to 2.2.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yocto 2.2 has a minimum kernel =
requirement of 3.2.0.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This isn&#8217;t an issue for o=
ur target (ARMv5, Linux 4.4) but may be<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">an issue for our automated buil=
d machines (x86, Linux 2.6.32&#8212;CentOS 6.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However, there is a note that s=
ays<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&#8220;</span>For x86 and x86_6=
4, you can reset
<a href=3D"http://www.yoctoproject.org/docs/2.2/mega-manual/mega-manual.htm=
l#var-OLDEST_KERNEL" title=3D"OLDEST_KERNEL">
<code><span style=3D"font-size:10.0pt;color:blue">OLDEST_KERNEL</span></cod=
e></a> to anything down to 2.6.32 if desired.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is it possible to configure things such that we can =
keep supporting the old<o:p></o:p></p>
<p class=3D"MsoNormal">kernel for the SDK while we support a more up-to-dat=
e kernel for the target?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF672ECAZUS1EXMB02glob_--
