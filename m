Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F61FE00C1F; Mon, 28 Nov 2016 07:02:24 -0800 (PST)
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
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5665FE00BF3
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 07:02:20 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ERBQBERjxY/xUHmMZeHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhJAEBAQEBH1iBCgG5ToIHhiECgW5BEgECAQEBAQEBAQNfHQuEbAMSG14BDAk?=
	=?us-ascii?q?VViYBBBsaiEsBnQ6FGY0MKgKLHwwBJIY+iSaDL4IwBZpUAYFImVuGFJF9JAEwg?=
	=?us-ascii?q?RSDVx2BXYdyAYEMAQEB?=
X-IPAS-Result: =?us-ascii?q?A2ERBQBERjxY/xUHmMZeHAEBBAEBCgEBgnMhJAEBAQEBH1i?=
	=?us-ascii?q?BCgG5ToIHhiECgW5BEgECAQEBAQEBAQNfHQuEbAMSG14BDAkVViYBBBsaiEsBn?=
	=?us-ascii?q?Q6FGY0MKgKLHwwBJIY+iSaDL4IwBZpUAYFImVuGFJF9JAEwgRSDVx2BXYdyAYE?=
	=?us-ascii?q?MAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,564,1473134400"; 
	d="scan'208,217";a="204995757"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	28 Nov 2016 10:02:16 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC03.global.avaya.com) ([135.11.85.14])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	28 Nov 2016 10:02:16 -0500
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC03.global.avaya.com ([::1]) with mapi id 14.03.0319.002;
	Mon, 28 Nov 2016 10:02:15 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: What source is included in sstate hash, how to change?
Thread-Index: AdJJh6Joeo+XlXDNTCG/JCB4s3VPBw==
Date: Mon, 28 Nov 2016 15:02:15 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF86286@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: What source is included in sstate hash, how to change?
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
X-List-Received-Date: Mon, 28 Nov 2016 15:02:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF86286AZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF86286AZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have a custom recipe for building some peculiarly-structured code:
the Makefile is compiling source from ${S}/.. (i.e., parent directory of
the ${S} directory).

It seems (not 100% sure of this, sstate is still "magic" to me) that the ss=
tate
hash only includes the files in ${S} (which is reasonable). Consequently,
when something in ${S}/.. changes, the fetch step is not redone.

Is there a way to tell sstate to include ${S}/.. in the source hash?

Or am I completely off-track?

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF86286AZUS1EXMB02glob_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a custom recipe for buil=
ding some peculiarly-structured code:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">the Makefile is compiling sourc=
e from ${S}/.. (i.e., parent directory of<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">the ${S} directory).<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It seems (not 100% sure of this=
, sstate is still &#8220;magic&#8221; to me) that the sstate<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">hash only includes the files in=
 ${S} (which is reasonable). Consequently,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">when something in ${S}/.. chang=
es, the fetch step is not redone.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a way to tell sstate t=
o include ${S}/.. in the source hash?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Or am I completely off-track?<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MV<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF86286AZUS1EXMB02glob_--
