Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4D3E0086F; Mon, 22 Sep 2014 04:25:38 -0700 (PDT)
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
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 127FEE0086A
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 04:25:34 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AoMGAO8FIFTGmAcV/2dsb2JhbABggkgjI1Nb0hgBgQkWAQFwCIQFAQEDEhteAQwJFVYmAQQbGogcAZ5jhGmgXI9Vg2aBHQWRV5M0jV2DYYI0gQIBAQE
X-IronPort-AV: E=Sophos;i="5.04,571,1406606400"; d="scan'208,217";a="73050663"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	22 Sep 2014 07:25:32 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	22 Sep 2014 07:25:32 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Mon, 22 Sep 2014 07:25:31 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Forcing fetch task when source changes
Thread-Index: Ac/WV6OeWyp3DS2TR6W6LXTA2odZVA==
Date: Mon, 22 Sep 2014 11:25:29 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Forcing fetch task when source changes
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
X-List-Received-Date: Mon, 22 Sep 2014 11:25:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377982FDD658DAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE6521910377982FDD658DAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have defined a class with a customized fetch task (that
copies files from a local read-only directory to the ${S}
directory).

I am looking for a way to cause the fetch task to run
again whenever the contents of the local directory
change w.r.t. what was last fetched/copied to ${S}.

Is there a way to do that?

MV

--_000_30C2D590D16A5C46ADFE6521910377982FDD658DAZUS1EXMB03glob_
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I have defined a class with a customized fetch task =
(that<o:p></o:p></p>
<p class=3D"MsoNormal">copies files from a local read-only directory to the=
 ${S}<o:p></o:p></p>
<p class=3D"MsoNormal">directory).<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am looking for a way to cause the fetch task to ru=
n<o:p></o:p></p>
<p class=3D"MsoNormal">again whenever the contents of the local directory<o=
:p></o:p></p>
<p class=3D"MsoNormal">change w.r.t. what was last fetched/copied to ${S}.<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a way to do that?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377982FDD658DAZUS1EXMB03glob_--
