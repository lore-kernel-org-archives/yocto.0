Return-Path: <isak.lichtenstein@kistler.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ECC9E00524; Wed, 25 Jun 2014 07:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_20,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1945]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Jun 2014 07:05:25 PDT
Received: from mx1.kistler.com (mx1.kistler.com [195.49.77.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D430BE003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 07:05:25 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.01,546,1400018400"; d="scan'208,217";a="10918853"
Received: from unknown (HELO kihagsepp01.int.kistler.com) ([192.168.52.67])
	by mx1.kistler.com with ESMTP/TLS/ADH-AES256-SHA;
	25 Jun 2014 16:04:16 +0200
Received: from mx2.kistler.com (unknown [192.168.52.58])
	by kihagsepp01.int.kistler.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 16:04:12 +0200 (CEST)
X-IronPort-AV: E=Sophos;i="5.01,546,1400018400"; d="scan'208,217";a="1701406"
Received: from kihagwinex02.int.kistler.com ([192.168.100.31])
	by mx2.kistler.com with ESMTP/TLS/AES128-SHA; 25 Jun 2014 16:04:12 +0200
Received: from KIHAGWINEX01.int.kistler.com ([fe80::d70:7df0:c903:4e43]) by
	kihagwinex02.int.kistler.com ([fe80::10cf:df86:bb65:2502%16]) with mapi
	id 14.03.0181.006; Wed, 25 Jun 2014 16:04:12 +0200
From: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Create own image type
Thread-Index: Ac+QfbZ17lC5jli2QW6VwgWVCqsQvw==
Date: Wed, 25 Jun 2014 14:04:11 +0000
Message-ID: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
Accept-Language: en-GB, de-CH, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.100.116]
MIME-Version: 1.0
Subject: Create own image type
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
X-List-Received-Date: Wed, 25 Jun 2014 14:05:29 -0000
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_91B4C1B91AAEFD42AC985EA0F3D4E66886162A9Fkihagwinex01int_"

--_000_91B4C1B91AAEFD42AC985EA0F3D4E66886162A9Fkihagwinex01int_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

I'm trying to create my own image type. I thought that it would be enough t=
o create a myImage.bbclass file implementing IMAGE_CMD_myImage and extendin=
g IMAGE_TYPES +=3D " myImage".

But this isn't working and I didn't find anything in the manual.

It this possible at all ( can't imagine that it isn't) ?

Would appreciate any hint possible.

Best regards

Isak

--_000_91B4C1B91AAEFD42AC985EA0F3D4E66886162A9Fkihagwinex01int_
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
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
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
<body lang=3D"DE-CH" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Hi all,<o:p></o:p></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">I&#8217;m trying to create=
 my own image type. I thought that it would be enough to create a myImage.b=
bclass file implementing IMAGE_CMD_myImage and extending IMAGE_TYPES
 &#43;=3D &#8220; myImage&#8221;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">But this isn&#8217;t worki=
ng and I didn&#8217;t find anything in the manual.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">It this possible at all ( =
can&#8217;t imagine that it isn&#8217;t) ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Would appreciate any hint =
possible.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Best regards<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;"><o:p>&nbsp;</o:p></span></=
p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:10.0pt;font-=
family:&quot;Arial&quot;,&quot;sans-serif&quot;">Isak<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_91B4C1B91AAEFD42AC985EA0F3D4E66886162A9Fkihagwinex01int_--
