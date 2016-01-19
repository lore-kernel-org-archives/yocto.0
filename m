Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9781AE00AAF; Tue, 19 Jan 2016 08:14:29 -0800 (PST)
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
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Jan 2016 08:14:27 PST
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD370E00912
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 08:14:27 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AJBQCwX55W/yYyC4deGQEBAQEPAQEBAYI+IStSbQaIULJ7gVoJGAGFdgKBPzkTAQEBAQEBAX8LhDQBAQEBAxIbXAIBCA0EBAEBCx0HMhQJCAEBBBMIGod5AaRtmgABAQEBAQEBAwEBAQEBAQEBAQEBFYY6hHSEUTaCKk0bgRsFkxOEBwGIPAWOXoVARI4YIwFAhAlyhWYBgQcBAQE
X-IPAS-Result: A2AJBQCwX55W/yYyC4deGQEBAQEPAQEBAYI+IStSbQaIULJ7gVoJGAGFdgKBPzkTAQEBAQEBAX8LhDQBAQEBAxIbXAIBCA0EBAEBCx0HMhQJCAEBBBMIGod5AaRtmgABAQEBAQEBAwEBAQEBAQEBAQEBFYY6hHSEUTaCKk0bgRsFkxOEBwGIPAWOXoVARI4YIwFAhAlyhWYBgQcBAQE
X-IronPort-AV: E=Sophos;i="5.22,317,1449550800"; 
	d="scan'208,217";a="156642574"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by co300216-co-outbound.net.avaya.com with ESMTP;
	19 Jan 2016 11:13:24 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES256-SHA;
	19 Jan 2016 11:13:24 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Tue, 19 Jan 2016 11:13:23 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PREFERRED_VERSION for native package
Thread-Index: AdFSuvAjF8AY1tHSR/WPd8DxJrhhfQAGL/Nw
Date: Tue, 19 Jan 2016 16:13:23 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853AC84D6@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779853AC8364@AZ-US1EXMB03.global.avaya.com>
In-Reply-To: <30C2D590D16A5C46ADFE65219103779853AC8364@AZ-US1EXMB03.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Subject: Re: PREFERRED_VERSION for native package
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
X-List-Received-Date: Tue, 19 Jan 2016 16:14:29 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_30C2D590D16A5C46ADFE65219103779853AC84D6AZUS1EXMB03glob_"

--_000_30C2D590D16A5C46ADFE65219103779853AC84D6AZUS1EXMB03glob_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

OK, found the problem.

To achieve my objective, the right approach is to add "AGPL-3.0" to INCOMPA=
TIBLE_LICENSE.
This causes the build to fall back to the older version of db.

However, I figured this out after finding the following line in poky/meta/c=
onf/distro/include/default-versions.inc:

                PREFERRED_VERSION_db-native =3D ${@incompatible_license_con=
tains('AGPL-3.0', '5.%', '6.%', d)}

Is it correct that this is an absolute assignment rather than a conditional=
 one? I think my
PREFERRED_VERSION_db-native assignment would've worked if it hadn't been ov=
erridden
by this one.

MV

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Vuille, Martin (Martin)
Sent: January 19, 2016 8:16 AM
To: yocto@yoctoproject.org
Subject: [yocto] PREFERRED_VERSION for native package

Yocto Fido

I am trying to use PREFERRED_VERSION to select an earlier version
of the "db" package. The build includes both db and db-native variants
of the package.

I set PREFERRED_VERSION_db variable and this successfully changes
the version of the db package but not the db-native package.

I tried also setting PREFERRED_VERSION_db-native but this doesn't
seem to have any effect.

What am I missing? How can I override version for a native package?

--_000_30C2D590D16A5C46ADFE65219103779853AC84D6AZUS1EXMB03glob_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<body lang=3D"EN-CA" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">OK, found the problem.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">To achieve my objectiv=
e, the right approach is to add &#8220;AGPL-3.0&#8221; to INCOMPATIBLE_LICE=
NSE.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">This causes the build =
to fall back to the older version of db.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">However, I figured thi=
s out after finding the following line in poky/meta/conf/distro/include/def=
ault-versions.inc:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; PREFER=
RED_VERSION_db-native =3D ${@incompatible_license_contains('AGPL-3.0', '5.%=
', '6.%', d)}<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Is it correct that thi=
s is an absolute assignment rather than a conditional one? I think my<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">PREFERRED_VERSION_db-n=
ative assignment would&#8217;ve worked if it hadn&#8217;t been overridden<o=
:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">by this one.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">MV<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size:10.0pt;fo=
nt-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN=
-CA">From:</span></b><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-fa=
mily:&quot;Tahoma&quot;,&quot;sans-serif&quot;;mso-fareast-language:EN-CA">=
 yocto-bounces@yoctoproject.org
 [mailto:yocto-bounces@yoctoproject.org] <b>On Behalf Of </b>Vuille, Martin=
 (Martin)<br>
<b>Sent:</b> January 19, 2016 8:16 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> [yocto] PREFERRED_VERSION for native package<o:p></o:p></sp=
an></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
</div>
</body>
</html>

--_000_30C2D590D16A5C46ADFE65219103779853AC84D6AZUS1EXMB03glob_--
