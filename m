Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 350CDE00857; Sat,  1 Nov 2014 05:09:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893F1E00848
	for <yocto@yoctoproject.org>; Sat,  1 Nov 2014 05:08:55 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhIFAHjMVFTGmAcV/2dsb2JhbABcgkgjI1Rc1QYCgRYWAQEBAQEBcQuEBAEBAxIbXgEVFVYmAQQbFwOIHwGlQIRxnx4MAR+QX4NlgR4Fj3mCH5QCjjCDeII0gQMBAQE
X-IronPort-AV: E=Sophos;i="5.07,295,1413259200"; d="scan'208,217";a="92740123"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	01 Nov 2014 08:08:53 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	01 Nov 2014 08:08:53 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Sat, 1 Nov 2014 08:08:52 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to debug dependency/setscene/sstate issues
Thread-Index: Ac/1y75N0KVW1nbGS6yguTxUJ5ovGQ==
Date: Sat, 1 Nov 2014 12:08:51 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984114ED96@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: How to debug dependency/setscene/sstate issues
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
X-List-Received-Date: Sat, 01 Nov 2014 12:09:07 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377984114ED96AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE6521910377984114ED96AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am using Poky daisy / Yocto 1.6.1

Occasionally, when building a custom image or SDK after changing
a package recipe or package content, I find that the do_rootfs task is not
executed for the image or the do_populate_sdk task is not executed
for the sdk.

There are custom classes, packages, packagegroups involved, so it is
possible, nay likely, that the problem is something I did or should've
done but didn't.

How to approach this problem?

Because the problem is intermittent, I usually won't realize there was
a problem until after bitbake is done and didn't build what I expected.
Is there a way to retrospectively review bitbake's decision-making?
Or do I need to run with -DDD all the time?

MV



--_000_30C2D590D16A5C46ADFE6521910377984114ED96AZUS1EXMB03glob_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:m=3D"http://sc=
hemas.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-=
html40">
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
<p class=3D"MsoNormal">I am using Poky daisy / Yocto 1.6.1<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Occasionally, when building a custom image or SDK af=
ter changing<o:p></o:p></p>
<p class=3D"MsoNormal">a package recipe or package content, I find that the=
 do_rootfs task is not<o:p></o:p></p>
<p class=3D"MsoNormal">executed for the image or the do_populate_sdk task i=
s not executed<o:p></o:p></p>
<p class=3D"MsoNormal">for the sdk.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">There are custom classes, packages, packagegroups in=
volved, so it is<o:p></o:p></p>
<p class=3D"MsoNormal">possible, nay likely, that the problem is something =
I did or should&#8217;ve<o:p></o:p></p>
<p class=3D"MsoNormal">done but didn&#8217;t.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How to approach this problem?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Because the problem is intermittent, I usually won&#=
8217;t realize there was<o:p></o:p></p>
<p class=3D"MsoNormal">a problem until after bitbake is done and didn&#8217=
;t build what I expected.<o:p></o:p></p>
<p class=3D"MsoNormal">Is there a way to retrospectively review bitbake&#82=
17;s decision-making?<o:p></o:p></p>
<p class=3D"MsoNormal">Or do I need to run with &#8211;DDD all the time?<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377984114ED96AZUS1EXMB03glob_--
