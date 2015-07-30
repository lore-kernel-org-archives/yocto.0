Return-Path: <eirik.solberg.hamnvik@tomra.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E346E00A97; Wed, 29 Jul 2015 22:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from smtp.tomra.com (smtp.tomra.com [62.92.2.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1FFEE00A7E
	for <yocto@yoctoproject.org>; Wed, 29 Jul 2015 22:28:05 -0700 (PDT)
Received: from EUNOEUR-EXS010.teu.tomra.corp ([fe80::242c:2953:fc66:e1ee]) by
	EUNOEUR-EXS013.teu.tomra.corp ([fe80::b81a:bbf8:2f42:40f1%13]) with
	mapi id 14.03.0224.002; Thu, 30 Jul 2015 07:28:02 +0200
From: Eirik Solberg Hamnvik <eirik.solberg.hamnvik@tomra.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Core-image-weston network problems
Thread-Index: AdDKh98wYZKQ4fcFQNGznN7K4buppA==
Date: Thu, 30 Jul 2015 05:28:01 +0000
Message-ID: <9EB14782B17D6549A78433A42753B30B244FA7F7@EUNOEUR-EXS010.teu.tomra.corp>
Accept-Language: nb-NO, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.3.8]
x-exclaimer-md-config: 6b757840-9012-48b5-a10c-05c6ceeb7fd2
MIME-Version: 1.0
Subject: Core-image-weston network problems
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
X-List-Received-Date: Thu, 30 Jul 2015 05:28:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9EB14782B17D6549A78433A42753B30B244FA7F7EUNOEUREXS010te_"

--_000_9EB14782B17D6549A78433A42753B30B244FA7F7EUNOEUREXS010te_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey!

I am building core-image-weston. Branch fido. I have a postinstall script t=
hat runs some code on first startup. The script is supposed to do  apt-get =
install of some packages. The problem is that the postinstall script runs b=
efore the network is correctly configured.
Meaning my packages wont download. When it is fully booted I can manually d=
o apt-get install and it works fine. For now I am using the 'at'-command to=
 solve this issue, but I need to change that.
The perfect thing would be to make my package dependent on whichever packag=
e that configures the network settings, so I am guaranteed that it will dow=
nload succesfully. Which one is that? Or are there any better solutions?

Eirik

--_000_9EB14782B17D6549A78433A42753B30B244FA7F7EUNOEUREXS010te_
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
	{margin:0cm;
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
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"NO-BOK" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hey! <o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I am building core-image-weston=
. Branch fido. I have a postinstall script that runs some code on first sta=
rtup. The script is supposed to do &nbsp;apt-get install of some packages. =
The problem is that the postinstall script
 runs before the network is correctly configured.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Meaning my packages wont downlo=
ad. When it is fully booted I can manually do apt-get install and it works =
fine. For now I am using the &#8216;at&#8217;-command to solve this issue, =
but I need to change that.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The perfect thing would be to m=
ake my package dependent on whichever package that configures the network s=
ettings, so I am guaranteed that it will download succesfully. Which one is=
 that? Or are there any better solutions?
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Eirik<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_9EB14782B17D6549A78433A42753B30B244FA7F7EUNOEUREXS010te_--
