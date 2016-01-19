Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 231D8E00AB9; Tue, 19 Jan 2016 05:17:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4931]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Jan 2016 05:17:07 PST
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCB32E008F5
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 05:17:07 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2C0BQD0NZ5W/xUHmMZeGQEBAQEPAQEBAYI+ISsiMHOIULNZgV0FGAGFdgKBRDkTAQEBAQEBAX8LhDYBAQMSG14BDAkVViYBBBsah3kBnyeFEpolDAEghlWJVoJjDEEbgRsFkxOEBwGIPAWOXoVARI4YIwFAhAmGWAGBBwEBAQ
X-IPAS-Result: A2C0BQD0NZ5W/xUHmMZeGQEBAQEPAQEBAYI+ISsiMHOIULNZgV0FGAGFdgKBRDkTAQEBAQEBAX8LhDYBAQMSG14BDAkVViYBBBsah3kBnyeFEpolDAEghlWJVoJjDEEbgRsFkxOEBwGIPAWOXoVARI4YIwFAhAmGWAGBBwEBAQ
X-IronPort-AV: E=Sophos;i="5.22,317,1449550800"; 
	d="scan'208,217";a="162260046"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	19 Jan 2016 08:16:03 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES256-SHA;
	19 Jan 2016 08:16:03 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Tue, 19 Jan 2016 08:16:02 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PREFERRED_VERSION for native package
Thread-Index: AdFSuvAjF8AY1tHSR/WPd8DxJrhhfQ==
Date: Tue, 19 Jan 2016 13:16:02 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853AC8364@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: PREFERRED_VERSION for native package
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
X-List-Received-Date: Tue, 19 Jan 2016 13:17:11 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779853AC8364AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779853AC8364AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Yocto Fido

I am trying to use PREFERRED_VERSION to select an earlier version
of the "db" package. The build includes both db and db-native variants
of the package.

I set PREFERRED_VERSION_db variable and this successfully changes
the version of the db package but not the db-native package.

I tried also setting PREFERRED_VERSION_db-native but this doesn't
seem to have any effect.

What am I missing? How can I override version for a native package?

--_000_30C2D590D16A5C46ADFE65219103779853AC8364AZUS1EXMB03glob_
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
<p class=3D"MsoNormal">Yocto Fido<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am trying to use PREFERRED_VERSION to select an ea=
rlier version<o:p></o:p></p>
<p class=3D"MsoNormal">of the &#8220;db&#8221; package. The build includes =
both db and db-native variants<o:p></o:p></p>
<p class=3D"MsoNormal">of the package.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I set PREFERRED_VERSION_db variable and this success=
fully changes<o:p></o:p></p>
<p class=3D"MsoNormal">the version of the db package but not the db-native =
package.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I tried also setting PREFERRED_VERSION_db-native but=
 this doesn&#8217;t<o:p></o:p></p>
<p class=3D"MsoNormal">seem to have any effect.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What am I missing? How can I override version for a =
native package?<o:p></o:p></p>
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779853AC8364AZUS1EXMB03glob_--
