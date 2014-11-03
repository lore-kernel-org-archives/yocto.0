Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07C30E008EA; Mon,  3 Nov 2014 04:53:30 -0800 (PST)
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
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F4F6E008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 04:53:27 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ah8FAE15V1TGmAcV/2dsb2JhbABcgkgjI1Rc1VMCgSUWAQEBAQEBcQuEBAEBAxIbXgEVFVYmAQQbGogfAaNXhHGedQwBH5Bfg2WBHgWPe4IfjRiGbYcBhzGDeII0gQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,307,1413259200"; d="scan'208,217";a="79114630"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	03 Nov 2014 07:53:25 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 07:53:25 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Mon, 3 Nov 2014 07:53:24 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Another sstate rebuild issue, badly need help understanding
	sstate
Thread-Index: Ac/3ZHenwuDsNv5FQjOB/ZYFOtnF4w==
Date: Mon, 3 Nov 2014 12:53:23 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798411583BD@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Another sstate rebuild issue, badly need help understanding sstate
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
X-List-Received-Date: Mon, 03 Nov 2014 12:53:30 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE652191037798411583BDAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE652191037798411583BDAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Poky 1.6.1 / daisy

I have a variable "REV_TOOLS" defined in distro/conf/somename.conf in a
custom distro layer from a git repo.

This variable is assigned to SRCREV in a number of recipes (SRCREV =3D "${R=
EV_TOOLS}")
for packages included in my images and SDKs.

Pulled an update to the distro layer that changed the value of REV_TOOLS.

Rebuilt all my images and SDKs, but bitbake decided there was nothing to do=
.

Looking at toaster, all the do_build tasks for the packages affected by thi=
s change
say "Prebuilt" and the other tasks say "Covered". If I understand correctly=
, this
means sstate didn't detect any change.

I am continually running into this problem and am at my wits' end. Why didn=
't
the affected packages get rebuilt? Clearly there is something I don't under=
stand
and would appreciate some hint.

MV

--_000_30C2D590D16A5C46ADFE652191037798411583BDAZUS1EXMB03glob_
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
<p class=3D"MsoNormal">Poky 1.6.1 / daisy<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a variable &#8220;REV_TOOLS&#8221; defined in=
 distro/conf/somename.conf in a<o:p></o:p></p>
<p class=3D"MsoNormal">custom distro layer from a git repo.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">This variable is assigned to SRCREV in a number of r=
ecipes (SRCREV =3D &#8220;${REV_TOOLS}&#8221;)<o:p></o:p></p>
<p class=3D"MsoNormal">for packages included in my images and SDKs.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Pulled an update to the distro layer that changed th=
e value of REV_TOOLS.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Rebuilt all my images and SDKs, but bitbake decided =
there was nothing to do.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Looking at toaster, all the do_build tasks for the p=
ackages affected by this change<o:p></o:p></p>
<p class=3D"MsoNormal">say &#8220;Prebuilt&#8221; and the other tasks say &=
#8220;Covered&#8221;. If I understand correctly, this<o:p></o:p></p>
<p class=3D"MsoNormal">means sstate didn&#8217;t detect any change.<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am continually running into this problem and am at=
 my wits&#8217; end. Why didn&#8217;t<o:p></o:p></p>
<p class=3D"MsoNormal">the affected packages get rebuilt? Clearly there is =
something I don&#8217;t understand<o:p></o:p></p>
<p class=3D"MsoNormal">and would appreciate some hint.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE652191037798411583BDAZUS1EXMB03glob_--
