Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF919E0091D; Tue, 24 Mar 2015 15:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Mar 2015 15:23:39 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8191AE008D4
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2015 15:23:39 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhAFAB7jEVXGmAcV/2dsb2JhbABcgkMhIlJezD4CgUpMAQEBAQEBfYQWAQEDEhteAQwJFVYmAQQbGogNAZ9HhQCkZAwBH49mg0+BFgWOQoIOkQiEHIh3IoNugjN/AQEB
X-IronPort-AV: E=Sophos;i="5.11,460,1422939600"; d="scan'208,217";a="96104627"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	24 Mar 2015 18:22:35 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Mar 2015 18:22:35 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Tue, 24 Mar 2015 18:22:33 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: populate_sysroot and sstate question
Thread-Index: AdBmf347nCMmxSZUS4q3p2qvUDMa3g==
Date: Tue, 24 Mar 2015 22:22:33 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798538ED24E@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: populate_sysroot and sstate question
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
X-List-Received-Date: Tue, 24 Mar 2015 22:23:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE652191037798538ED24EAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE652191037798538ED24EAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Poky Daisy 1.6.1

I have a custom package of font files and a custom recipe to install then
into ${libdir}/fonts.

I don't want these files in the sysroot, as they are not necessary there,
they are only required on the target, and they make the SDK larger.

In my recipe, I defined an empty populate_sysroot task to override the
default behavior of copying the font files to sysroot (presumably because
they are in ${libdir}).

Today, I came across the fact that this results in an empty populate_sysroo=
t
sstate tarball, which causes a setscene error if I need to use the sstate f=
or
that package later.

Is there a better way to suppress populate_sysroot without breaking
setscene?

MV


--_000_30C2D590D16A5C46ADFE652191037798538ED24EAZUS1EXMB03glob_
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
<p class=3D"MsoNormal">Poky Daisy 1.6.1 <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a custom package of font files and a custom r=
ecipe to install then<o:p></o:p></p>
<p class=3D"MsoNormal">into ${libdir}/fonts.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don&#8217;t want these files in the sysroot, as th=
ey are not necessary there,<o:p></o:p></p>
<p class=3D"MsoNormal">they are only required on the target, and they make =
the SDK larger.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In my recipe, I defined an empty populate_sysroot ta=
sk to override the<o:p></o:p></p>
<p class=3D"MsoNormal">default behavior of copying the font files to sysroo=
t (presumably because<o:p></o:p></p>
<p class=3D"MsoNormal">they are in ${libdir}).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Today, I came across the fact that this results in a=
n empty populate_sysroot<o:p></o:p></p>
<p class=3D"MsoNormal">sstate tarball, which causes a setscene error if I n=
eed to use the sstate for<o:p></o:p></p>
<p class=3D"MsoNormal">that package later.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a better way to suppress populate_sysroot w=
ithout breaking<o:p></o:p></p>
<p class=3D"MsoNormal">setscene?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE652191037798538ED24EAZUS1EXMB03glob_--
