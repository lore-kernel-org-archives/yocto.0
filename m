Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECCD7E00CEC; Wed,  8 Jun 2016 06:12:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_40,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.3712]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Wed, 08 Jun 2016 06:12:35 PDT
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E0F7E00CE5
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 06:12:35 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DhAQDFGFhX/yYyC4deHAEBglIhLVaBA?=
	=?us-ascii?q?40krWCBeYYTAoFBOBQBAQEBAQEBZRwLhEkDEhteAQwJFVYmAQQbGogNAZw0hRK?=
	=?us-ascii?q?beQwlhieJD4MqghIcBZhPAYEvllGFRI9hHjaDbol+AX4BAQE?=
X-IPAS-Result: =?us-ascii?q?A2DhAQDFGFhX/yYyC4deHAEBglIhLVaBA40krWCBeYYTAoF?=
	=?us-ascii?q?BOBQBAQEBAQEBZRwLhEkDEhteAQwJFVYmAQQbGogNAZw0hRKbeQwlhieJD4Mqg?=
	=?us-ascii?q?hIcBZhPAYEvllGFRI9hHjaDbol+AX4BAQE?=
X-IronPort-AV: E=Sophos;i="5.26,439,1459828800"; 
	d="scan'208,217";a="157700159"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	08 Jun 2016 09:11:30 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES256-SHA;
	08 Jun 2016 09:11:31 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Wed, 8 Jun 2016 09:11:30 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Sharing header files between out-of-tree KLMs
Thread-Index: AdHBhtuqkEp+sX7uT7KmYFnMlQ7Z/w==
Date: Wed, 8 Jun 2016 13:11:29 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377986CD4F67D@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Subject: Sharing header files between out-of-tree KLMs
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
X-List-Received-Date: Wed, 08 Jun 2016 13:12:39 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377986CD4F67DAZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE6521910377986CD4F67DAZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I am building two out-of-tree KLMs with separate yocto recipes.

One of the KLMs depends on a data structure defined in the other one. At
present the structure definition is simply duplicated in both KLMs' source.
I would prefer to define it in a header that one KLM can export and the oth=
er
can #include.

Is there a recommended/canonical way to do this?

MV

--_000_30C2D590D16A5C46ADFE6521910377986CD4F67DAZUS1EXMB03glob_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am building two out-of-tree K=
LMs with separate yocto recipes.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">One of the KLMs depends on a da=
ta structure defined in the other one. At<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">present the structure definitio=
n is simply duplicated in both KLMs&#8217; source.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would prefer to define it in =
a header that one KLM can export and the other<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">can #include.<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there a recommended/canonica=
l way to do this?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">MV<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377986CD4F67DAZUS1EXMB03glob_--
