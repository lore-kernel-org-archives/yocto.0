Return-Path: <eirik.solberg.hamnvik@tomra.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A371E009FD; Tue,  7 Jul 2015 02:03:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Jul 2015 02:03:26 PDT
Received: from smtp.tomra.com (smtp.tomra.com [62.92.2.160])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 619A0E009E6
	for <yocto@yoctoproject.org>; Tue,  7 Jul 2015 02:03:26 -0700 (PDT)
Received: from EUNOEUR-EXS010.teu.tomra.corp ([fe80::242c:2953:fc66:e1ee]) by
	EUNOEUR-EXS013.teu.tomra.corp ([fe80::b81a:bbf8:2f42:40f1%13]) with
	mapi id 14.03.0224.002; Tue, 7 Jul 2015 11:02:18 +0200
From: Eirik Solberg Hamnvik <eirik.solberg.hamnvik@tomra.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Recipe runs before network is established on target, causes
	problems. 
Thread-Index: AdC4kxx5mm8MU+ytSSiJaNulWKiP6A==
Date: Tue, 7 Jul 2015 09:02:17 +0000
Message-ID: <9EB14782B17D6549A78433A42753B30B244F3C4F@EUNOEUR-EXS010.teu.tomra.corp>
Accept-Language: nb-NO, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.3.8]
x-exclaimer-md-config: 6b757840-9012-48b5-a10c-05c6ceeb7fd2
MIME-Version: 1.0
Subject: Recipe runs before network is established on target, causes problems.
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
X-List-Received-Date: Tue, 07 Jul 2015 09:03:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_9EB14782B17D6549A78433A42753B30B244F3C4FEUNOEUREXS010te_"

--_000_9EB14782B17D6549A78433A42753B30B244F3C4FEUNOEUREXS010te_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey!

I have a recipe where I in the pkg_postinst_mypackage () function runs apt-=
get update on first boot only.
This doesn't work. I've seen the logfile which says:

Cannot initiate the connection to xxx.xxx.xxx.xxx - connect (101: Network i=
s unreachable).

If I manually go to the terminal after it has booted and type "apt-get upda=
te" it works perfectly fine.
Guess that means that my code tries to run before the network settings are =
established.
Is there some way I could manage this?

Eirik

--_000_9EB14782B17D6549A78433A42753B30B244F3C4FEUNOEUREXS010te_
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
<p class=3D"MsoNormal"><span lang=3D"EN-US">I have a recipe where I in the =
pkg_postinst_mypackage () function runs apt-get update on first boot only.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">This doesn&#8217;t work. I&#821=
7;ve seen the logfile which says:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Cannot initiate the connection =
to xxx.xxx.xxx.xxx &#8211; connect (101: Network is unreachable).<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">If I manually go to the termina=
l after it has booted and type &#8220;apt-get update&#8221; it works perfec=
tly fine.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Guess that means that my code t=
ries to run before the network settings are established.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Is there some way I could manag=
e this? <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Eirik<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_9EB14782B17D6549A78433A42753B30B244F3C4FEUNOEUREXS010te_--
