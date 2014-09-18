Return-Path: <sandrieu@greenflex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1CA8E00790; Thu, 18 Sep 2014 09:47:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_05,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0189]
X-Greylist: delayed 450 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Sep 2014 09:47:06 PDT
Received: from smtp-out.fingerprint.fr (smtp-out.fingerprint.fr
	[109.69.192.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80BD9E00576
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 09:47:06 -0700 (PDT)
Received: from mxr1.fingerprint.fr (unknown [192.168.2.144])
	by smtp-out.fingerprint.fr (Postfix) with SMTP id 5797E8007A
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 18:38:50 +0200 (CEST)
Received: (qmail 28648 invoked from network); 18 Sep 2014 16:39:34 -0000
Received: from unknown (HELO SRV-MAIL.greenflex.group) (185.3.64.10)
	by mxr1.fingerprint.fr with SMTP; 18 Sep 2014 16:39:34 -0000
Received: from SRV-MAIL.greenflex.group (192.168.100.25) by
	SRV-MAIL.greenflex.group (192.168.100.25) with Microsoft SMTP Server
	(TLS) id 15.0.913.22; Thu, 18 Sep 2014 18:39:33 +0200
Received: from SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001]) by
	SRV-MAIL.greenflex.group ([fe80::64f4:d152:2fe:b001%12]) with mapi id
	15.00.0913.011; Thu, 18 Sep 2014 18:39:33 +0200
From: Simon Andrieu <sandrieu@greenflex.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Poky/Yocto drivers for cellular modem
Thread-Index: Ac/TXvwaLsgfP3XiRNm/Yr6NzlivBQ==
Date: Thu, 18 Sep 2014 16:39:33 +0000
Message-ID: <d412ce5cffb0466c897447c7b8674054@SRV-MAIL.greenflex.group>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.193.55.84]
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 19 Sep 2014 14:29:21 -0700
Subject: Poky/Yocto drivers for cellular modem
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
X-List-Received-Date: Thu, 18 Sep 2014 16:47:11 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_d412ce5cffb0466c897447c7b8674054SRVMAILgreenflexgroup_"

--_000_d412ce5cffb0466c897447c7b8674054SRVMAILgreenflexgroup_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

I work for a company  that develops telemetry boxes, and that uses a Poky/Y=
octo distribution running on the main board.
It is planned to integrate a cellular module connected via USB or serial li=
nk to the main board.

Using some Linux distribution, it exists drivers that help recognizing a ce=
llular modem USB stick and to raise a corresponding network interface.
Would you know please if such a generic cellular modem driver exists in Pok=
y/Yocto distribution please?
More further, It could be helpful to have some tutorial notes to integrate =
it please.

I would be also interested by information on various cellular modem support=
 solutions, if already studied.

Thanks for your help.

Best Regards,
Simon Andrieu

--_000_d412ce5cffb0466c897447c7b8674054SRVMAILgreenflexgroup_
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
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
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
<body lang=3D"FR" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I work for a company &nbsp;that=
 develops telemetry boxes, and that uses a Poky/Yocto distribution running =
on the main board.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">It is planned to integrate a ce=
llular module connected via USB or serial link to the main board.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Using some Linux distribution, =
it exists drivers that help recognizing a cellular modem USB stick and to r=
aise a corresponding network interface.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Would you know please if such a=
 generic cellular modem driver exists in Poky/Yocto distribution please?<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">More further, It could be helpf=
ul to have some tutorial notes to integrate it please.<o:p></o:p></span></p=
>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I would be also interested by i=
nformation on various cellular modem support solutions, if already studied.=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks for your help.<o:p></o:p=
></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Best Regards,<o:p></o:p></span>=
</p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Simon Andrieu<o:p></o:p></span>=
</p>
</div>
</body>
</html>

--_000_d412ce5cffb0466c897447c7b8674054SRVMAILgreenflexgroup_--
