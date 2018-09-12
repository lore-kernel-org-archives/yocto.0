Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3EDFE006C7; Wed, 12 Sep 2018 06:47:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.5.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 98490 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Sep 2018 06:47:40 PDT
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-eopbgr50061.outbound.protection.outlook.com [40.107.5.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA070E003D7
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 06:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=xvZ9dbIbsk+zWB/KXx1dCmjU/Atw5/E2aadPjJFJPBo=;
	b=pzKCYCrk1flRXqFi9R2QelkJ2wCehblXygJyeq5wO4r5rKMIQPMcitO7lU9hS/NmVxa7V5AdsmZgkepqo7fySyDteUBzdDvsrT4O0Qxwm/z88J/cKFA7cjJzcYALrfkdcIqgRtCMwMusAAbhc4DMbTBe61RXjWhfFY8m14vrh+M=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB4014.eurprd01.prod.exchangelabs.com (20.177.53.143) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.16; Wed, 12 Sep 2018 13:15:53 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Wed, 12 Sep 2018 13:15:53 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: allarch class used in autoconf-archive recipe
Thread-Index: AdRJqUAU7F898CsaSJOtt9dYgFodIg==
Date: Wed, 12 Sep 2018 13:15:52 +0000
Message-ID: <VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB4014;
	6:KkDQjA0C1mrfcj0eFkhOrnqukuF6hyxP/4gYfElr8ozT8RTTbUxlOq6ucgFvpcTZ14kEZ8BWgUlBgkKdoxfJxesBXx9NuTK0BZvpGTp8+zoEfF4NlxJrKZb00EU2lvqloawsAWo3RQdFaKfzhAcU9aqDF0PnR1E3XIMsfcRQmaYKJzujTKCBebiDRrTLEHNGQH4VtW04bl6nQKy/+h2/qvhH0eS14F7RC4F4zYQ3GEwAO5gjkD5dhoE/ku8Rci+VmFA+0kDi8NogykRbUb0hZ5XmnMANsIAyjoqnsDw3cHEvZahbMQK1/bEvC3VlR7VUXQDlAZ345EnLrlneH2A1YIe7m9JdZLbnD73eY4teMvJrf0JxPSskmhMzBME+Wte6qDEcZLtzgK4hnkcvLGrAOvihSsevmkhpzh1bxkvGgMjlO3OahwiJXAvkdHXERfu97TB1PJo0iKqQht4vLf362w==;
	5:q8TxNGV+p5rXK44gNGrGdOT/q3kW2OpuZV84nRE6NWwPz6M1OHS25BikaX+ZTfAio/NCfp3ztbSofHO7gk1E0cT5QtGHUDulxsJe0ccyuK/tG9CeVa1dcM4dV1K/Kwm1u9M57qOn7gxA8JA0XR/I9qRmZathO/dVUvtLhPRSCZg=;
	7:cjat8PgTXQtljGhht6i5p84vvZlM2Pz9ICnD3tvCuaoZmMzMxi1cin9qj9FdPu2l1Jvr65y2aNL9dAThhQZUKrWd4MrLAOs0nJvxnIA1BrXx5PFx3cXaIFggDEa8Y403Y7Qm3lXkcbCpGRfCsYN+1Z7VFW2qjY5/WUDAXt3i644sUpN3EnkSGbRtOEPsFuapOOMLOs+Fi+IrinZvMQqA1meTLL7UOa82cDsl8VyCo4UUUn0lkFHQnR2Dkj79Vkv6
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 29797162-481d-497d-706e-08d618b1de09
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB4014; 
x-ms-traffictypediagnostic: VI1PR01MB4014:
x-microsoft-antispam-prvs: <VI1PR01MB4014C8F2450DCF6C60CB86C6E01B0@VI1PR01MB4014.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(103651359005742)(21748063052155); 
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(3231344)(944501410)(52105095)(10201501046)(93006095)(93001095)(149027)(150027)(6041310)(20161123558120)(20161123562045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(201708071742011)(7699050);
	SRVR:VI1PR01MB4014; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB4014; 
x-forefront-prvs: 07935ACF08
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(136003)(346002)(366004)(39860400002)(199004)(189003)(3846002)(97736004)(74316002)(54896002)(6306002)(2906002)(606006)(7736002)(966005)(9686003)(236005)(2351001)(68736007)(476003)(25786009)(81156014)(81166006)(105586002)(106356001)(26005)(1730700003)(66066001)(8676002)(7696005)(99286004)(186003)(55016002)(9326002)(72206003)(8936002)(6116002)(790700001)(53936002)(6436002)(6506007)(5640700003)(478600001)(6916009)(316002)(2501003)(33656002)(2900100001)(5250100002)(5024004)(14444005)(5630700001)(14454004)(5660300001)(486006)(86362001)(102836004)(256004)(568214009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB4014;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: ZXMrUqGDn7kfGVTHRWy//ST4kk1zlcLTbYzlsyYgdESQwpdHh9xE/hjVd3a6HPgnMsJHjcN4/dwPcgalRT3nK8sxvTRXM0U9YMIYp94JWeyJoEl1fj5x/U6D2Myvc5cuBwcDcNhtIQXZratvMA1+3X9y3Fd4lHhmgWgAbAzgKjbDoSbW8YpEUu0w3d+Z+n9Y5W4K6R3NNZksmHzlQ9mX2Z6Kfa1M5qPiDOrZ5T4T/a2Z+Oy/9ytqpZlCxW+vgVrsN5/RF/64VDI+Y1bywYh/JVO1ZTY18LGr7a1j2p8BrAKLUZK7DVQcJ1w8KudE92T7CDhhIVcx0Vv/fLgtsGicU5pFvL7nA8uLkeFDqsqc+Kw=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 29797162-481d-497d-706e-08d618b1de09
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2018 13:15:52.8567 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4014
Subject: allarch class used in autoconf-archive recipe
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
X-List-Received-Date: Wed, 12 Sep 2018 13:47:43 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0VI1PR01MB1070eurp_"

--_000_VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0VI1PR01MB1070eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,
myself grabbed autoconf-archive recipe from
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-devtools/a=
utoconf-archive/autoconf-archive_2018.03.13.bb
to build and install autoconf archive for building user-space app. autoconf=
-archive package builds in Jethro,
as the YP release used here is, without problems even if grabbed from relea=
se later than Jethro.
That recipe inherits 'allarch' class.

If to review Jethro Reference Manual following note can be found reg. 'alla=
rch' class usage:

"Unlike some distro recipes (e.g. Debian), OpenEmbedded recipes that produc=
e packages that depend on tunings
through use of the RDEPENDS and TUNE_PKGARCH variables, should never be con=
figured for all architectures using allarch.
This is the case even if the recipes do not produce architecture-specific o=
utput.

Configuring such recipes for all architectures causes the do_package_write_=
* tasks to have different signatures
for the machines with different tunings. Additionally, unnecessary rebuilds=
 occur every time
an image for a different MACHINE is built even when the recipe never change=
s."

Same note is to be found on reference manual's master branch.

Few questions arise from that:
1. What might be best solution to the discrepancy "not recommended to use v=
s. used in OE-recipe"; to drop this inheritance?
2. How might recipe's past change-flow resulting in recipe's current versio=
n to inherit 'allarch' class look like?
________________________________
This message and any attachments are intended solely for the addressees and=
 may contain confidential information. Any unauthorized use or disclosure, =
either whole or partial, is prohibited.
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.

--_000_VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0VI1PR01MB1070eurp_
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
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal">myself grabbed autoconf-archive recipe from<o:p></o:=
p></p>
<p class=3D"MsoNormal"><a href=3D"http://cgit.openembedded.org/openembedded=
-core/tree/meta/recipes-devtools/autoconf-archive/autoconf-archive_2018.03.=
13.bb">http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-dev=
tools/autoconf-archive/autoconf-archive_2018.03.13.bb</a><o:p></o:p></p>
<p class=3D"MsoNormal">to build and install autoconf archive for building u=
ser-space app. autoconf-archive package builds in Jethro,<o:p></o:p></p>
<p class=3D"MsoNormal">as the YP release used here is, without problems eve=
n if grabbed from release later than Jethro.<o:p></o:p></p>
<p class=3D"MsoNormal">That recipe inherits &#8216;allarch&#8217; class.<o:=
p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If to review Jethro Reference Manual following note =
can be found reg. &#8216;allarch&#8217; class usage:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">&#8220;Unlike some distro recipes (e.g. Debian), Ope=
nEmbedded recipes that produce packages that depend on tunings<o:p></o:p></=
p>
<p class=3D"MsoNormal">through use of the RDEPENDS and TUNE_PKGARCH variabl=
es, should never be configured for all architectures using allarch.<o:p></o=
:p></p>
<p class=3D"MsoNormal">This is the case even if the recipes do not produce =
architecture-specific output.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Configuring such recipes for all architectures cause=
s the do_package_write_* tasks to have different signatures<o:p></o:p></p>
<p class=3D"MsoNormal">for the machines with different tunings. Additionall=
y, unnecessary rebuilds occur every time<o:p></o:p></p>
<p class=3D"MsoNormal">an image for a different MACHINE is built even when =
the recipe never changes.&#8221;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Same note is to be found on reference manual&#8217;s=
 master branch.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Few questions arise from that:<o:p></o:p></p>
<p class=3D"MsoNormal">1. What might be best solution to the discrepancy &#=
8220;not recommended to use vs. used in OE-recipe&#8221;; to drop this inhe=
ritance?<o:p></o:p></p>
<p class=3D"MsoNormal">2. How might recipe&#8217;s past change-flow resulti=
ng in recipe&#8217;s current version to inherit &#8216;allarch&#8217; class=
 look like?<o:p></o:p></p>
</div>
<hr>
<span lang=3D"EN-US" style=3D"font-style:italic;font-size:10.0pt;font-famil=
y:=0A=
&quot;Arial&quot;,&quot;sans-serif&quot;;color:maroon;mso-ansi-language:EN-=
US">This message and any attachments are intended solely for the addressees=
 and may contain confidential information. Any unauthorized
 use or disclosure, either whole or partial, is prohibited.<br>
E-mails are susceptible to alteration. Our company shall not be liable for =
the message if altered, changed or falsified. If you are not the intended r=
ecipient of this message, please delete it and notify the sender.<br>
Although all reasonable efforts have been made to keep this transmission fr=
ee from viruses, the sender will not be liable for damages caused by a tran=
smitted virus.</span>
</body>
</html>

--_000_VI1PR01MB1070A53972E70B7A4AEAD2A4E01B0VI1PR01MB1070eurp_--
