Return-Path: <dwsmith@ball.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EA85E00E9E; Tue, 29 Sep 2015 13:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.86.201.212 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 696 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Sep 2015 13:38:18 PDT
Received: from mx0b-0014fe01.pphosted.com (mx0b-0014fe01.pphosted.com
	[208.86.201.212])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08950E00DDC
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 13:38:18 -0700 (PDT)
Received: from pps.filterd (m0000621.ppops.net [127.0.0.1])
	by mx0b-0014fe01.pphosted.com (8.15.0.59/8.15.0.59) with SMTP id
	t8TKOurh008847
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 14:26:41 -0600
Received: from owa.ballaerospace.com ([162.18.172.11])
	by mx0b-0014fe01.pphosted.com with ESMTP id 1x7y6dgp1m-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 14:26:41 -0600
Received: from EX2010-CO-02.AERO.BALL.com ([fe80::1c1b:3704:218f:e8b6]) by
	EX2010-CO-03.AERO.BALL.com ([fe80::1892:27e7:c852:983b%13]) with mapi
	id 14.03.0181.006; Tue, 29 Sep 2015 14:26:40 -0600
From: "Smith, Daniel W" <dwsmith@ball.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PSPLASH PPC Colors
Thread-Index: AdD69SPhoftkf+XWQjCaFWyUqTR1Ug==
Date: Tue, 29 Sep 2015 20:26:40 +0000
Message-ID: <167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40@EX2010-CO-02.AERO.BALL.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.255.105]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.14.151, 1.0.33,
	0.0.0000
	definitions=2015-09-29_14:2015-09-29, 2015-09-29,
	1970-01-01 signatures=0
Subject: PSPLASH PPC Colors
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
X-List-Received-Date: Tue, 29 Sep 2015 20:40:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40EX2010CO02AEROB_"

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40EX2010CO02AEROB_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

Has anyone else noticed that the splash screen colors are wrong on PPC?

I installed a custom splash screen with modified colors.  It looks fine on =
qemuarm but on qemuppc the splash screen color are all wrong.   Whites and =
blacks are all yellow, blues are red etc.

Is there an endianness issue with the way that psplash make-image-header.sh=
 creates the splash screen when targeting PPC?  Any ideas on how to fix it.

-Daniel Smith




This message and any enclosures are intended only for the addressee.  Pleas=
e=20
notify the sender by email if you are not the intended recipient.  If you a=
re=20
not the intended recipient, you may not use, copy, disclose, or distribute =
this=20
message or its contents or enclosures to any other person and any such acti=
ons=20
may be unlawful.  Ball reserves the right to monitor and review all message=
s=20
and enclosures sent to or from this email address.

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40EX2010CO02AEROB_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
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
<p class=3D"MsoNormal">All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Has anyone else noticed that the splash screen color=
s are wrong on PPC?&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I installed a custom splash screen with modified col=
ors.&nbsp; It looks fine on qemuarm but on qemuppc the splash screen color =
are all wrong.&nbsp; &nbsp;Whites and blacks are all yellow, blues are red =
etc.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there an endianness issue with the way that pspla=
sh make-image-header.sh creates the splash screen when targeting PPC?&nbsp;=
 Any ideas on how to fix it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">-Daniel Smith<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>

<DIV>
<BR>
<BR>
This message and any enclosures are intended only for the addressee.  Pleas=
e <BR>
notify the sender by email if you are not the intended recipient.  If you a=
re <BR>
not the intended recipient, you may not use, copy, disclose, or distribute =
this <BR>
message or its contents or enclosures to any other person and any such acti=
ons <BR>
may be unlawful.  Ball reserves the right to monitor and review all message=
s <BR>
and enclosures sent to or from this email address.<BR>
</DIV></body>
</html>

--_000_167A17EDB344B047B2D335D8E4C5A2FAA4CB5E40EX2010CO02AEROB_--
