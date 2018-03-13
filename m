Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87273E00E47; Tue, 13 Mar 2018 08:30:37 -0700 (PDT)
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
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Mar 2018 08:30:35 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FCB8E007E1
	for <yocto@yoctoproject.org>; Tue, 13 Mar 2018 08:30:35 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HlAACm7ada/yYyC4deGQEBAQEBAQEBA?=
	=?us-ascii?q?QEBAQcBAQEBAYJaIlRlcCgKjWONdIIEgRaUMYIVCoUlAoMgITQYAQIBAQEBAQE?=
	=?us-ascii?q?CA2gcC4UkAQECAxIbXgEIDQQEAQELVh0JAQQTCBqEEmQBoHyNFCECiDyCCoU1g?=
	=?us-ascii?q?i6BVoUUhSODNoISIASaVgkCmgGFQpFKgSweOYFScBWCfYRHd44jAYEXAQEB?=
X-IPAS-Result: =?us-ascii?q?A2HlAACm7ada/yYyC4deGQEBAQEBAQEBAQEBAQcBAQEBAYJ?=
	=?us-ascii?q?aIlRlcCgKjWONdIIEgRaUMYIVCoUlAoMgITQYAQIBAQEBAQECA2gcC4UkAQECA?=
	=?us-ascii?q?xIbXgEIDQQEAQELVh0JAQQTCBqEEmQBoHyNFCECiDyCCoU1gi6BVoUUhSODNoI?=
	=?us-ascii?q?SIASaVgkCmgGFQpFKgSweOYFScBWCfYRHd44jAYEXAQEB?=
X-IronPort-AV: E=Sophos;i="5.47,465,1515474000"; 
	d="scan'208,217";a="279475484"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	13 Mar 2018 11:29:31 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2018 11:29:31 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0352.000; Tue, 13 Mar 2018 11:29:31 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Two packages installing same file (with different content) to
	rootfs
Thread-Index: AdO4EgzfT2mChmdqSeWdB4KHUyIqtgCzbnBQ
Date: Tue, 13 Mar 2018 15:29:30 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779892669280@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.150.1
dlp-reaction: no-action
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: Two packages installing same file (with different content) to rootfs
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
X-List-Received-Date: Tue, 13 Mar 2018 15:30:37 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779892669280AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE65219103779892669280AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tracked down the problem to the fact that conflict checking in RPM 5.4.16 i=
n Morty is broken.

Backported some changes from upstream and it is working for me now (i.e., d=
etecting and
reporting the conflict.)

MV

From: Vuille, Martin (Martin)
Sent: March 09, 2018 20:50
To: yocto@yoctoproject.org
Subject: Two packages installing same file (with different content) to root=
fs

Ran into an issue where we have two packages installing different
content for the same file in rootfs. Whichever gets installed last "wins".

I thought there was a check to prevent this. I'm sure I've seen a
warning/error like that in the past.

Is this condition detected? Should it be?

We're using Morty.

MV

--_000_30C2D590D16A5C46ADFE65219103779892669280AZUS1EXMB02glob_
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Tracked down the probl=
em to the fact that conflict checking in RPM 5.4.16 in Morty is broken.<o:p=
></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Backported some change=
s from upstream and it is working for me now (i.e., detecting and<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">reporting the conflict=
.)<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">MV<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN=
-CA">From:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN-CA">=
 Vuille,
 Martin (Martin) <br>
<b>Sent:</b> March 09, 2018 20:50<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Two packages installing same file (with different content) =
to rootfs<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779892669280AZUS1EXMB02glob_--
