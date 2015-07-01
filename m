Return-Path: <Alin.Stanciu@spirent.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7CC1E00A54; Wed,  1 Jul 2015 04:33:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [38.111.148.215 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Jul 2015 04:33:45 PDT
Received: from webmail.spirent.com (smtp1.spirent.com [38.111.148.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4727E00A4B
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 04:33:45 -0700 (PDT)
Received: from SPCCOREXCMBX01.AD.SPIRENTCOM.COM ([169.254.1.115]) by
	SPCCOREXCCAS01.AD.SPIRENTCOM.COM ([10.96.66.20]) with mapi id
	14.03.0224.002; Wed, 1 Jul 2015 04:32:40 -0700
From: "Stanciu, Alin" <Alin.Stanciu@spirent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Retrieve list of all software/applications/packages installed
	on Yocto
Thread-Index: AdCz8UAP8MOT8Ze3SlOd5vuzVYAzvg==
Date: Wed, 1 Jul 2015 11:32:39 +0000
Message-ID: <A50844B104EDFA45BBC46099A9C6C8407B0BB7D6@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.66.253]
x-disclaimer: Yes
MIME-Version: 1.0
Subject: Retrieve list of all software/applications/packages installed on Yocto
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
X-List-Received-Date: Wed, 01 Jul 2015 11:33:46 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_A50844B104EDFA45BBC46099A9C6C8407B0BB7D6SPCCOREXCMBX01A_"

--_000_A50844B104EDFA45BBC46099A9C6C8407B0BB7D6SPCCOREXCMBX01A_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I would simply like to know how to obtain a list of all software packages/p=
roducts (basically all applications) running in my Yocto build.

Can this be done via a recipe? How can I find out whether my build has a re=
cipe? What are other ways are there to get the listing?

Thanks


























Spirent Communications e-mail confidentiality.
------------------------------------------------------------------------
This e-mail contains confidential and / or privileged information belonging=
 to Spirent Communications plc, its affiliates and / or subsidiaries. If yo=
u are not the intended recipient, you are hereby notified that any disclosu=
re, copying, distribution and / or the taking of any action based upon reli=
ance on the contents of this transmission is strictly forbidden. If you hav=
e received this message in error please notify the sender by return e-mail =
and delete it from your system.

Spirent Communications plc
Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United Kingdo=
m.
Tel No. +44 (0) 1293 767676
Fax No. +44 (0) 1293 767677

Registered in England Number 470893
Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN,=
 United Kingdom.

Or if within the US,

Spirent Communications,
27349 Agoura Road, Calabasas, CA, 91301, USA.
Tel No. 1-818-676- 2300

--_000_A50844B104EDFA45BBC46099A9C6C8407B0BB7D6SPCCOREXCMBX01A_
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would simply like to know how to obtain a list of =
all software packages/products (basically all applications) running in my Y=
octo build.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can this be done via a recipe? How can I find out wh=
ether my build has a recipe? What are other ways are there to get the listi=
ng?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks<o:p></o:p></p>
<table class=3D"MsoNormalTable" border=3D"0" cellspacing=3D"0" cellpadding=
=3D"0" style=3D"border-collapse:collapse">
<tbody>
<tr>
<td width=3D"134" style=3D"width:100.5pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"11" style=3D"width:8.1pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"246" style=3D"width:184.25pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:gray"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"134" style=3D"width:100.5pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"11" style=3D"width:8.1pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"246" style=3D"width:184.25pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"134" style=3D"width:100.5pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"11" style=3D"width:8.1pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"246" style=3D"width:184.25pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
<tr>
<td width=3D"134" style=3D"width:100.5pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"11" style=3D"width:8.1pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
<td width=3D"246" style=3D"width:184.25pt;padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-family:&quot;Aria=
l&quot;,&quot;sans-serif&quot;;color:#45525A"><o:p>&nbsp;</o:p></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"mso-fareast-language:EN-GB"><o:p>&nbs=
p;</o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div><font size=3D"1">Spirent Communications e-mail confidentiality.<br>
------------------------------------------------------------------------<br=
>
This e-mail contains confidential and / or privileged information belonging=
 to Spirent Communications plc, its affiliates and / or subsidiaries. If yo=
u are not the intended recipient, you are hereby notified that any disclosu=
re, copying, distribution and /
 or the taking of any action based upon reliance on the contents of this tr=
ansmission is strictly forbidden. If you have received this message in erro=
r please notify the sender by return e-mail and delete it from your system.=
<br>
<br>
Spirent Communications plc<br>
Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United Kingdo=
m.<br>
Tel No. &#43;44 (0) 1293 767676<br>
Fax No. &#43;44 (0) 1293 767677<br>
<br>
Registered in England Number 470893<br>
Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN,=
 United Kingdom.<br>
<br>
Or if within the US, <br>
<br>
Spirent Communications,<br>
27349 Agoura Road, Calabasas, CA, 91301, USA.<br>
Tel No. 1-818-676- 2300 <br>
</font></div>
</body>
</html>

--_000_A50844B104EDFA45BBC46099A9C6C8407B0BB7D6SPCCOREXCMBX01A_--
