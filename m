Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE191E00781; Thu, 18 Sep 2014 09:19:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_20,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.0765]
X-Greylist: delayed 69 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Sep 2014 09:19:28 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45495E0056A
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 09:19:28 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AtwGAEsFG1SHCzIm/2dsb2JhbABggkcjI1Nb0R4BgQkWAQFwCIQFAQEDEhteAQwJFVYmAQQbGogcAZxGhGWhG49Gg2aBHQWPOIIWkzCNVoFpHIFZgjSBAgEBAQ
X-IronPort-AV: E=Sophos;i="5.04,548,1406606400"; d="scan'208,217";a="72705255"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	18 Sep 2014 12:18:16 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	18 Sep 2014 12:18:15 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Thu, 18 Sep 2014 12:18:15 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Customizing task basehash
Thread-Index: Ac/TWyjFypHKSIkASUaSiPdRCClY4g==
Date: Thu, 18 Sep 2014 16:18:14 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD4037@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Customizing task basehash
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
X-List-Received-Date: Thu, 18 Sep 2014 16:19:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377982FDD4037AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE6521910377982FDD4037AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have defined a class with a customized fetch task (that
copies files from a local directory to the ${S} directory).

I am looking for a way to cause the fetch task to run
whenever the contents of the local directory change
w.r.t. what was last fetched/copied to ${S}.

Seems to me that I could do this by including the hash
of the source directory contents into the basehash of
the fetch task.

But I can't see how to do that. It is possible, or am I
thinking in the wrong direction? Is there a better way
to achieve what I need?

MV

--_000_30C2D590D16A5C46ADFE6521910377982FDD4037AZUS1EXMB03glob_
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
<p class=3D"MsoNormal">I have defined a class with a customized fetch task =
(that<o:p></o:p></p>
<p class=3D"MsoNormal">copies files from a local directory to the ${S} dire=
ctory).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for a way to cause the fetch task to ru=
n<o:p></o:p></p>
<p class=3D"MsoNormal">whenever the contents of the local directory change<=
o:p></o:p></p>
<p class=3D"MsoNormal">w.r.t. what was last fetched/copied to ${S}.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Seems to me that I could do this by including the ha=
sh<o:p></o:p></p>
<p class=3D"MsoNormal">of the source directory contents into the basehash o=
f<o:p></o:p></p>
<p class=3D"MsoNormal">the fetch task.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">But I can&#8217;t see how to do that. It is possible=
, or am I<o:p></o:p></p>
<p class=3D"MsoNormal">thinking in the wrong direction? Is there a better w=
ay<o:p></o:p></p>
<p class=3D"MsoNormal">to achieve what I need?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377982FDD4037AZUS1EXMB03glob_--
