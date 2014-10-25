Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C672AE0082F; Sat, 25 Oct 2014 08:53:38 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625CBE00706
	for <yocto@yoctoproject.org>; Sat, 25 Oct 2014 08:53:35 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AksFAOzGS1TGmAcV/2dsb2JhbABcgkgjI1Rc1Q8CgQUWAQFxC4QEAQEDEhteARUVViYBBBsaiB8BpFWEcZ8tDCCQV4NlgR4FkgeNC4ZkhnqHH4N4gjSBAwEBAQ
X-IronPort-AV: E=Sophos;i="5.04,787,1406606400"; d="scan'208,217";a="91721072"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	25 Oct 2014 11:53:33 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	25 Oct 2014 11:53:34 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Sat, 25 Oct 2014 11:53:32 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Packaging change in daisy vs. denzil
Thread-Index: Ac/wav57jH/c4DK1TGG6VcIobzNU2w==
Date: Sat, 25 Oct 2014 15:53:32 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841147B51@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Packaging change in daisy vs. denzil
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
X-List-Received-Date: Sat, 25 Oct 2014 15:53:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779841147B51AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779841147B51AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trying to make the transition from denzil (1.2) to daisy (1.6.1) and have
run into a problem that's got me stumped.

There seems to have been a change in the way things are packaged that
is breaking a number of my custom recipes.

Let's say I have a package X that consists of source for an .so and some he=
aders.

In denzil, building this would result in three RPMs, X, X-dev, and X-dbg. T=
he .so
would be in X, the headers in X-dev, and the debug info in X-dbg.

In daisy, there are only two RPMs, X-dev and X-dbg. Is that expected
behavior, or is there something I need to change in my recipes because
of the update to daisy?

What RPM do I install in my image, X-dev? I don't want the headers
in the image/rootfs.

Can someone point me to a description/explanation of the changes?

MV

--_000_30C2D590D16A5C46ADFE65219103779841147B51AZUS1EXMB03glob_
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
<p class=3D"MsoNormal">Trying to make the transition from denzil (1.2) to d=
aisy (1.6.1) and have<o:p></o:p></p>
<p class=3D"MsoNormal">run into a problem that&#8217;s got me stumped.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There seems to have been a change in the way things =
are packaged that<o:p></o:p></p>
<p class=3D"MsoNormal">is breaking a number of my custom recipes.<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Let&#8217;s say I have a package X that consists of =
source for an .so and some headers.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In denzil, building this would result in three RPMs,=
 X, X-dev, and X-dbg. The .so<o:p></o:p></p>
<p class=3D"MsoNormal">would be in X, the headers in X-dev, and the debug i=
nfo in X-dbg.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In daisy, there are only two RPMs, X-dev and X-dbg. =
Is that expected<o:p></o:p></p>
<p class=3D"MsoNormal">behavior, or is there something I need to change in =
my recipes because<o:p></o:p></p>
<p class=3D"MsoNormal">of the update to daisy?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What RPM do I install in my image, X-dev? I don&#821=
7;t want the headers<o:p></o:p></p>
<p class=3D"MsoNormal">in the image/rootfs.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can someone point me to a description/explanation of=
 the changes?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779841147B51AZUS1EXMB03glob_--
