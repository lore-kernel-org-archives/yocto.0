Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60173E0049A; Tue,  1 Nov 2016 08:19:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF1DDE00444
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2016 08:19:27 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GCBAA/shhY/yYyC4ddHAEBBAEBCgEBg?=
	=?us-ascii?q?nMhFgEBAQEBH1iBAwGNLqtGggeGIgKCDT8UAQIBAQEBAQEBA18dC4RlAxIbXgE?=
	=?us-ascii?q?MCRVWJgEEGxqIMgGaIYUYl1AMJYY9iR6DL4IvBZQ8hV4Bmj6FfJEXHjZghROHQ?=
	=?us-ascii?q?gGBCwEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2GCBAA/shhY/yYyC4ddHAEBBAEBCgEBgnMhFgEBAQEBH1i?=
	=?us-ascii?q?BAwGNLqtGggeGIgKCDT8UAQIBAQEBAQEBA18dC4RlAxIbXgEMCRVWJgEEGxqIM?=
	=?us-ascii?q?gGaIYUYl1AMJYY9iR6DL4IvBZQ8hV4Bmj6FfJEXHjZghROHQgGBCwEBAQ?=
X-IronPort-AV: E=Sophos;i="5.31,580,1473134400"; 
	d="scan'208,217";a="214368046"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	01 Nov 2016 11:19:04 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	01 Nov 2016 11:19:04 -0400
Received: from AZ-US1EXMB02.global.avaya.com ([fe80::c01d:740:c927:8888]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0319.002; Tue, 1 Nov 2016 11:19:04 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.2 Morty supported Linux Distros
Thread-Index: AdI0UsdSor/FjekUSFCTTIyoE942Bw==
Date: Tue, 1 Nov 2016 15:19:02 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Tue, 01 Nov 2016 15:19:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE6521910377987FF67BEAAZUS1EXMB02glob_"

--_000_30C2D590D16A5C46ADFE6521910377987FF67BEAAZUS1EXMB02glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Noticed that Ubuntu 16.04 LTS is not on the list of supported
distributions for Morty.

Is that correct/intentional, or a documentation oversight?
Ubuntu 16.04 is mentioned elsewhere in the docs.

We are planning to upgrade from Ubuntu 12.04 LTS and it would
make more sense to go to the latest LTS rather than 14.04.

MV

--_000_30C2D590D16A5C46ADFE6521910377987FF67BEAAZUS1EXMB02glob_
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
<p class=3D"MsoNormal">Noticed that Ubuntu 16.04 LTS is not on the list of =
supported<o:p></o:p></p>
<p class=3D"MsoNormal">distributions for Morty.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is that correct/intentional, or a documentation over=
sight?<o:p></o:p></p>
<p class=3D"MsoNormal">Ubuntu 16.04 is mentioned elsewhere in the docs.<o:p=
></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are planning to upgrade from Ubuntu 12.04 LTS and=
 it would<o:p></o:p></p>
<p class=3D"MsoNormal">make more sense to go to the latest LTS rather than =
14.04.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MV<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE6521910377987FF67BEAAZUS1EXMB02glob_--
