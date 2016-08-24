Return-Path: <bogdan.tanasa@saabgroup.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93961E01018; Wed, 24 Aug 2016 03:17:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_05,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [146.75.247.197 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0104]
X-Greylist: delayed 4575 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Aug 2016 03:17:36 PDT
Received: from weald2.air.saab.se (weald2.air.saab.se [146.75.247.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D801EE00FEA
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 03:17:36 -0700 (PDT)
Received: from mailhub1.air.saab.se ([136.163.213.4])
	by weald2.air.saab.se (8.14.4/8.14.4) with ESMTP id u7O91IYL022277
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 11:01:18 +0200
Received: from corpappl842.corp.saab.se (corpappl842.corp.saab.se
	[136.163.113.242])
	by mailhub1.air.saab.se (8.13.8/8.13.8) with ESMTP id u7O912nc022743
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2016 11:01:02 +0200
Received: from CORPAPPL846.corp.saab.se (136.163.113.246) by
	corpappl842.corp.saab.se (136.163.113.242) with Microsoft SMTP Server
	(TLS) id 15.0.1178.4; Wed, 24 Aug 2016 11:01:02 +0200
Received: from CORPAPPL846.corp.saab.se ([136.163.113.246]) by
	corpappl846.corp.saab.se ([136.163.113.246]) with mapi id
	15.00.1178.000; Wed, 24 Aug 2016 11:01:02 +0200
From: Tanasa Bogdan <bogdan.tanasa@saabgroup.com>
To: "'yocto@yoctoproject.org'" <yocto@yoctoproject.org>
Thread-Topic: profiling tools on a T4240RDB board
Thread-Index: AdH95aBvT37ImYnqT8GbyTxb88pOuA==
Date: Wed, 24 Aug 2016 09:01:02 +0000
Message-ID: <749b7f156f314157b4440421102957d8@corpappl846.corp.saab.se>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [136.163.113.239]
MIME-Version: 1.0
X-Saab-MailScanner-Information: Please contact the ISP for more information
X-Saab-MailScanner-ID: u7O912nc022743
X-Saab-MailScanner: Found to be clean
X-Saab-MailScanner-SpamCheck: not spam (whitelisted),
	SpamAssassin (not cached, score=-0.422, required 5,
	autolearn=not spam, BAYES_00 -0.50, HTML_MESSAGE 0.00, TW_GT 0.08)
X-Saab-MailScanner-From: bogdan.tanasa@saabgroup.com
X-Saab-MailScanner-Watermark: 1472634062.94089@/ojR1tF3Q6G9tiTzZCFmGQ
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.4.3
	(weald2.air.saab.se [136.163.212.4]);
	Wed, 24 Aug 2016 11:01:18 +0200 (CEST)
Subject: profiling tools on a T4240RDB board
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
X-List-Received-Date: Wed, 24 Aug 2016 10:17:38 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_749b7f156f314157b4440421102957d8corpappl846corpsaabse_"

--_000_749b7f156f314157b4440421102957d8corpappl846corpsaabse_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,

We are using the (freescale) linux yocto 1.6 on a T4240RDB board where we w=
ant to have "tools-profile" set in our local.conf file. When building the f=
sl-image-minimal we see that there are some packages that are graphics-rela=
ted (like gtk+, pixbuf, etc..). The card does not have any graphics capabil=
ities. Why does these packets install at all? Is it possible to have the pr=
ofiling tools without any gtk dependencies? How the local.conf should look =
like?

PS: These dependencies are there even when we choose tools-sdk in order to =
have gcc in the final image.

Thanks,
Bogdan.

--_000_749b7f156f314157b4440421102957d8corpappl846corpsaabse_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
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
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We are using the (freescale) linux yocto 1.6 on a T4=
240RDB board where we want to have &quot;tools-profile&quot; set in our loc=
al.conf file. When building the fsl-image-minimal we see that there are som=
e packages that are graphics-related (like gtk&#43;,
 pixbuf, etc..). The card does not have any graphics capabilities. Why does=
 these packets install at all? Is it possible to have the profiling tools w=
ithout any gtk dependencies? How the local.conf should look like?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">PS: These dependencies are there even when we choose=
 tools-sdk in order to have gcc in the final image.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Bogdan.<o:p></o:p></p>
</div>
</body>
</html>

--_000_749b7f156f314157b4440421102957d8corpappl846corpsaabse_--
