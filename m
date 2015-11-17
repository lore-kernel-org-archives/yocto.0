Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6AB3E00A4F; Tue, 17 Nov 2015 05:26:33 -0800 (PST)
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
	*      [score: 0.1553]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E0DE009C3
	for <yocto@yoctoproject.org>; Tue, 17 Nov 2015 05:26:30 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2D+BABBP8ZV/xUHmMZbGQSCMSEsVG+9M4d9AoEmORMBAQEBAQEBfwuEJQEBAxIbXgEMCRVWJgEEGxqIDAGnbYULoEogkCmDUIEUBZULAZVbkQQXD4N9gjeBBAEBAQ
X-IPAS-Result: A2D+BABBP8ZV/xUHmMZbGQSCMSEsVG+9M4d9AoEmORMBAQEBAQEBfwuEJQEBAxIbXgEMCRVWJgEEGxqIDAGnbYULoEogkCmDUIEUBZULAZVbkQQXD4N9gjeBBAEBAQ
X-IronPort-AV: E=Sophos;i="5.15,634,1432612800"; 
	d="scan'208,217";a="129024567"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	17 Nov 2015 08:26:28 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES256-SHA;
	17 Nov 2015 08:26:27 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Tue, 17 Nov 2015 08:26:26 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sharing .inc recipe across layers
Thread-Index: AdEhO1xhQF2IvrOzQsmYgvyXIA45NQ==
Date: Tue, 17 Nov 2015 13:26:26 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853A7778E@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Sharing .inc recipe across layers
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
X-List-Received-Date: Tue, 17 Nov 2015 13:26:33 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779853A7778EAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779853A7778EAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

What is the best way to refer to (require) a .inc recipe
in one layer from another layer?

MV

--_000_30C2D590D16A5C46ADFE65219103779853A7778EAZUS1EXMB03glob_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">What is the best way to refer t=
o (require) a .inc recipe<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">in one layer from another layer=
?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MV<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779853A7778EAZUS1EXMB03glob_--
