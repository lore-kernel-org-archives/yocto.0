Return-Path: <Alok.Pawar3@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58B1AE00B18; Fri, 16 Jun 2017 02:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.207 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0383]
X-Greylist: delayed 378 seconds by postgrey-1.32 at yocto-www;
	Fri, 16 Jun 2017 02:53:45 PDT
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17483E009A5
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 02:53:45 -0700 (PDT)
Received: from [216.82.242.34] by server-15.bemta-8.messagelabs.com id
	44/B7-14717-E29A3495; Fri, 16 Jun 2017 09:47:26 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprCKsWRWlGSWpSXmKPExsVySpdNU1dvpXO
	kwfTV3BaTXq5hc2D0aD/RxxbAGMWamZeUX5HAmrHrfUrBH5mKm//tGhg3SHUxcnIICWxllJi6
	Kb6LkQvI3sIosXvLSlYIZy+jxOrzy5lBqtgEdCQef7jDCmKLCJhKvDj2ha2LkYNDWEBOYs48d
	oiwssSpzQdYIGw9iSfnz7OB2CwCqhK9bTPBxvAKuEsc6foAZjMKiEl8P7WGCcRmFhCXuPVkPp
	gtISAgsWTPeWYIW1Ti5eN/rBC2gcTWpftYIGwFiZXdDWwQtrXE/nlLWSHm5Eh0n+pkhNglKHF
	y5hMWiCeVJfY8amCcwCgyC8m6WUhaZiFpgYjrSCzY/YkNwtaWWLbwNTOMfebAYyZk8QWM7KsY
	NYpTi8pSi3QNjfSSijLTM0pyEzNzdA0NLPRyU4uLE9NTcxKTivWS83M3MQJjiwEIdjBOmOV8i
	FGSg0lJlJdfzilSiC8pP6UyI7E4I76oNCe1+BCjDAeHkgRv7XLnSCHBotT01Iq0zBxglMOkJT
	h4lER4Py0GSvMWFyTmFmemQ6ROMSpKifOeAekTAElklObBtcESyyVGWSlhXkagQ4R4ClKLcjN
	LUOVfMYpzMCoJ89qCTOHJzCuBm/4KaDET0OKgCw4gi0sSEVJSDYw50u8MpO9UPsldY9Pn0ii7
	62eR0I06ta3qP58L/N8awSO/8tP/VSfDC77OUuiz+Nj/piySw/icSfi9QpH3IZcMtmsU2j+Rd
	uTR4dyZ81ktnMWpufHSRZeotZlXP7Fc1GWL/L3+h/LpC91p/7u39962rjwpabomqzB/uSd3X8
	kMc9+ZD58XtiqxFGckGmoxFxUnAgCsTp4tJwMAAA==
X-Env-Sender: Alok.Pawar3@harman.com
X-Msg-Ref: server-10.tower-73.messagelabs.com!1497606443!89652970!2
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.4.19; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 103358 invoked from network); 16 Jun 2017 09:47:25 -0000
Received: from unknown (HELO HIBDWSMB09.ad.harman.com) (202.45.6.41)
	by server-10.tower-73.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 16 Jun 2017 09:47:25 -0000
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB09.ad.harman.com (10.99.236.103) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 15:17:23 +0530
Received: from HIBDWSMB03.ad.harman.com (10.99.236.93) by
	HIBDWSMB03.ad.harman.com (10.99.236.93) with Microsoft SMTP Server
	(TLS) id 15.0.1263.5; Fri, 16 Jun 2017 15:17:23 +0530
Received: from HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348]) by
	HIBDWSMB03.ad.harman.com ([fe80::c93:57c:9471:3348%13]) with mapi id
	15.00.1263.000; Fri, 16 Jun 2017 15:17:23 +0530
From: "Pawar, Alok" <Alok.Pawar3@harman.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto VLC compilation
Thread-Index: AdLmhPUG2KFFomz/RkiRsUYFxe2uQw==
Date: Fri, 16 Jun 2017 09:47:22 +0000
Message-ID: <b052b8f70c6d46c8b9c8aa54abab4c17@HIBDWSMB03.ad.harman.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Yocto VLC compilation
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
X-List-Received-Date: Fri, 16 Jun 2017 09:53:49 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_b052b8f70c6d46c8b9c8aa54abab4c17HIBDWSMB03adharmancom_"

--_000_b052b8f70c6d46c8b9c8aa54abab4c17HIBDWSMB03adharmancom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I am using yocto 2.1.2 krogoth version.
I tried compiling VLC in it, but I fialed. It is giving other dependency pa=
ckage name which contains "restricted licence".

Please help me out, how I can compile and test VLC using yocto for ARM.

Best Regards
Alok Pawar
Sr. Engineer Product Development
Harman Connected Services



--_000_b052b8f70c6d46c8b9c8aa54abab4c17HIBDWSMB03adharmancom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Gill Sans MT";
	panose-1:2 11 5 2 2 1 4 2 2 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi, <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am using yocto 2.1.2 krogoth version.<o:p></o:p></=
p>
<p class=3D"MsoNormal">I tried compiling VLC in it, but I fialed. It is giv=
ing other dependency package name which contains &#8220;restricted licence&=
#8221;.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please help me out, how I can compile and test VLC u=
sing yocto for ARM.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Best Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.0pt;font-family:&quot;=
Gill Sans MT&quot;,sans-serif">Alok Pawar<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Sr. Engineer Product Development<o:p></o:p></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif">Harman Connected Services<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt;font-family:&quot;Gil=
l Sans MT&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_b052b8f70c6d46c8b9c8aa54abab4c17HIBDWSMB03adharmancom_--
