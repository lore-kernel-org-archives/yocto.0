Return-Path: <Jonas.Maas@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52141E00D74; Mon, 11 Jun 2018 06:41:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 501 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Jun 2018 06:41:31 PDT
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27DFCE01A25
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 06:41:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id 42D9110C0DC
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:33:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LMEJNAEGhFP5 for <yocto@yoctoproject.org>;
	Mon, 11 Jun 2018 15:33:07 +0200 (CEST)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp1.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 15:33:07 +0200 (CEST)
Received: from VISTREX4.vi.vector.int ([169.254.2.20]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0382.000;
	Mon, 11 Jun 2018 15:33:07 +0200
From: "Maas, Jonas" <Jonas.Maas@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto not fetching unzip
Thread-Index: AdQBh7kWhWhuP29pTHmCYPDiewjhNA==
Date: Mon, 11 Jun 2018 13:33:07 +0000
Message-ID: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.72.40]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 43002C46-5ABD-4FBC-9490-79DB7D527EF2
x-g-data-mailsecurity-for-exchange-processedonrouted: True
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 15 Jun 2018 08:25:56 -0700
Subject: Yocto not fetching unzip
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
X-List-Received-Date: Mon, 11 Jun 2018 13:41:34 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_592B3CB7FFBCEC488DD878913E3292C08EF14891vistrex4vivecto_"

--_000_592B3CB7FFBCEC488DD878913E3292C08EF14891vistrex4vivecto_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

I am experiencing an issue with yocto-2.1.2:
I am trying to prefetch all needed sources for a certain image, let's say "=
my-image", by calling:

$ bitbake -c fetchall my-image

Next I am archiving the whole Yocto system (including the downloads directo=
ry) to a tar.gz file and unpack it on another system.
Now when I set BB_NO_NETWORK=3D"1" in the local.conf and try to build using

$ bitbake my-image

the package "unzip" is missing. I can fetch it manually by temporarily swit=
ching to online build an calling

$ bitbake -c fetch unzip

However I want to be able to build completely from the generated tar.gz.

Is this a bug in Yocto or intended behavior? If it is intended: Is there a =
proper setting to solve this or do I have to fetch unzip manually bevor pac=
king the archive?
Thanks in advance!


Kind regards,

Jonas

--_000_592B3CB7FFBCEC488DD878913E3292C08EF14891vistrex4vivecto_
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
	{font-family:"Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Yu Gothic";
	panose-1:2 11 4 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">Hello everyone,<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am experiencing an issue with=
 yocto-2.1.2:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am trying to prefetch all nee=
ded sources for a certain image, let&#8217;s say &#8220;my-image&#8221;, by=
 calling:<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake -c fetchall my-image<=
o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Next I am archiving the whole Y=
octo system (including the downloads directory) to a tar.gz file and unpack=
 it on another system.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Now when I set BB_NO_NETWORK=3D=
&#8221;1&#8221; in the local.conf and try to build using<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake my-image<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">the package &#8220;unzip&#8221;=
 is missing. I can fetch it manually by temporarily switching to online bui=
ld an calling<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">$ bitbake -c fetch unzip<o:p></=
o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">However I want to be able to bu=
ild completely from the generated tar.gz.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is this a bug in Yocto or inten=
ded behavior? If it is intended: Is there a proper setting to solve this or=
 do I have to fetch unzip manually bevor packing the archive?<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks in advance!<o:p></o:p></=
span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Kind regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Jonas <o:p></o:p></span></p>
</div>
</body>
</html>

--_000_592B3CB7FFBCEC488DD878913E3292C08EF14891vistrex4vivecto_--
