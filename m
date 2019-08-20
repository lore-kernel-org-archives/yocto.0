Return-Path: <bert.boehne@systec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DBC5E00D11; Tue, 20 Aug 2019 08:33:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [77.222.82.230 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1035 seconds by postgrey-1.32 at yocto-www;
	Tue, 20 Aug 2019 08:33:51 PDT
Received: from mail.demcon.nl (mail.demcon.nl [77.222.82.230])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33584E0097C
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2019 08:33:51 -0700 (PDT)
X-ASG-Debug-ID: 1566314194-0af87313ad31ff0001-yzSStA
Received: from mail.demcon.nl ([172.17.2.17]) by mail.demcon.nl with ESMTP id
	7OrxtwzH4Al65aSl (version=TLSv1.2
	cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO) for
	<yocto@yoctoproject.org>; Tue, 20 Aug 2019 17:16:34 +0200 (CEST)
X-Barracuda-Envelope-From: bert.boehne@systec.de
Received: from DEM-NL-EXCH02.demcon.local (172.17.2.18) by
	DEM-NL-EXCH01.demcon.local (172.17.2.17) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
	15.1.1713.5; Tue, 20 Aug 2019 17:16:34 +0200
Received: from DEM-NL-EXCH02.demcon.local ([fe80::2d7b:6e45:1735:4b69]) by
	DEM-NL-EXCH02.demcon.local ([fe80::2d7b:6e45:1735:4b69%6]) with mapi id
	15.01.1713.007; Tue, 20 Aug 2019 17:16:34 +0200
From: =?iso-8859-1?Q?Bert_B=F6hne?= <bert.boehne@systec.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto 2.7 SDK Eclipse
X-ASG-Orig-Subj: Yocto 2.7 SDK Eclipse
Thread-Index: AdVXZ+To7bV7+e70TVqf5y89bD2+Xg==
Date: Tue, 20 Aug 2019 15:16:34 +0000
Message-ID: <cb03605c9f0d423eaae6bb2d7d60ca00@systec.de>
Accept-Language: de-DE, nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.1.170]
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[172.17.2.17]
X-Barracuda-Start-Time: 1566314194
X-Barracuda-Encrypted: ECDHE-RSA-AES128-GCM-SHA256
X-Barracuda-URL: https://172.17.2.40:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at demcon.nl
X-Barracuda-Scan-Msg-Size: 3233
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=9.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.75536
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Subject: Yocto 2.7 SDK Eclipse
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
X-List-Received-Date: Tue, 20 Aug 2019 15:33:53 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_cb03605c9f0d423eaae6bb2d7d60ca00systecde_"

--_000_cb03605c9f0d423eaae6bb2d7d60ca00systecde_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using Yocto 2.7 and I want to use the SDK to build applications(or giv=
e the SDK to my colleagues to let them build applications). I have read in =
the documentation that there are plugins for Eclipse. But for Yocto 2.7(or =
maybe earlier) the support for this plugin was removed. So if we want to us=
e Eclipse (and CMake), is this still possible? I am a little confused about=
 this.

If anybody could give me a hint, I would appreciate it very much.

Thanks,

Bert

--_000_cb03605c9f0d423eaae6bb2d7d60ca00systecde_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hi,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am using Yocto 2.7 and I want=
 to use the SDK to build applications(or give the SDK to my colleagues to l=
et them build applications). I have read in the documentation that there ar=
e plugins for Eclipse. But for Yocto
 2.7(or maybe earlier) the support for this plugin was removed. So if we wa=
nt to use Eclipse (and CMake), is this still possible? I am a little confus=
ed about this.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If anybody could give me a hint=
, I would appreciate it very much.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Bert<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_cb03605c9f0d423eaae6bb2d7d60ca00systecde_--
