Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EDEBE00AAA; Wed, 14 Oct 2015 09:26:23 -0700 (PDT)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Oct 2015 09:26:22 PDT
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E542E009B8
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 09:26:21 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2BgAgA/gR5W/yYyC4deHAGCPCEsVHS9HwENgVqDE4IKfwKBRjgUAQEBAQEBAX8LhCgBAQMSG14BDAkVViYBBBsaiAwBoAWFE54fDAEfhnaJWoNSgRQFklWDQAF5hxAFjjaSYB8BAUKEAoZagQYBAQE
X-IPAS-Result: A2BgAgA/gR5W/yYyC4deHAGCPCEsVHS9HwENgVqDE4IKfwKBRjgUAQEBAQEBAX8LhCgBAQMSG14BDAkVViYBBBsaiAwBoAWFE54fDAEfhnaJWoNSgRQFklWDQAF5hxAFjjaSYB8BAUKEAoZagQYBAQE
X-IronPort-AV: E=Sophos;i="5.17,681,1437451200"; 
	d="scan'208,217";a="141268997"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	14 Oct 2015 12:25:16 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	14 Oct 2015 12:25:06 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Wed, 14 Oct 2015 12:25:05 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Package with both daemon and shared object
Thread-Index: AdEGnEUn6LHpNUmSSime7EG2RKnvUg==
Date: Wed, 14 Oct 2015 16:25:04 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853A592C9@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Package with both daemon and shared object
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
X-List-Received-Date: Wed, 14 Oct 2015 16:26:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779853A592C9AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779853A592C9AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am having a bit of trouble understanding something about
packaging.

I have a custom recipe to build a package that contains both
a daemon executable and a shared object interface library
for the daemon.

But the .so is only packaged in ${PN}-dev, not ${PN}, so
it doesn't end up on the target.

Is that expected behavior? How do I get my .so onto the target?

I worked around it by explicitly creating an extra package
and using FILES_${PN}-whatever to force the .so into it, but
now the .so doesn't get included in ${PN}-dev any more.

In general, is there a way to have a file included in two RPMs?
Or am I approaching this from the wrong direction?

Regards,
MV

--_000_30C2D590D16A5C46ADFE65219103779853A592C9AZUS1EXMB03glob_
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
<p class=3D"MsoNormal">I am having a bit of trouble understanding something=
 about<o:p></o:p></p>
<p class=3D"MsoNormal">packaging.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a custom recipe to build a package that conta=
ins both<o:p></o:p></p>
<p class=3D"MsoNormal">a daemon executable and a shared object interface li=
brary<o:p></o:p></p>
<p class=3D"MsoNormal">for the daemon.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But the .so is only packaged in ${PN}-dev, not ${PN}=
, so<o:p></o:p></p>
<p class=3D"MsoNormal">it doesn&#8217;t end up on the target.<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is that expected behavior? How do I get my .so onto =
the target?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I worked around it by explicitly creating an extra p=
ackage<o:p></o:p></p>
<p class=3D"MsoNormal">and using FILES_${PN}-whatever to force the .so into=
 it, but<o:p></o:p></p>
<p class=3D"MsoNormal">now the .so doesn&#8217;t get included in ${PN}-dev =
any more.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In general, is there a way to have a file included i=
n two RPMs?<o:p></o:p></p>
<p class=3D"MsoNormal">Or am I approaching this from the wrong direction?<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779853A592C9AZUS1EXMB03glob_--
