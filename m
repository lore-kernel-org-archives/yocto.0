Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DE37E006AF; Wed, 12 Sep 2018 15:30:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.7.88 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3591 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Sep 2018 15:30:47 PDT
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr70088.outbound.protection.outlook.com [40.107.7.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E5C9E0053F
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 15:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=v2QXIm+g9TKW1qnoF02BzY2eNx3QvCTsrGtyfRdbP3s=;
	b=MwPt/0f2dRNOle6TztnJMl9aVKQPQE/viRFDPU0GgWoMI7LVtm2I3xZUv2KcK9hxjwqmAm7BZEV2IfggFET5yDWWn1ug3YwZxruDkTxq0Lc2Zc02YJPnOA2cneBeRLwRZBz8IyENxAEQvngui9l4eFChYER9qgCOwg8iAXIMd/E=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB0960.eurprd01.prod.exchangelabs.com (10.161.107.18) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.17; Tue, 11 Sep 2018 08:52:46 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Tue, 11 Sep 2018 08:52:46 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: allarch class used in autoconf-archive recipe
Thread-Index: AdRJqUAU7F898CsaSJOtt9dYgFodIg==
Date: Tue, 11 Sep 2018 08:52:46 +0000
Message-ID: <VI1PR01MB1070C47EA12B0CEF99AB13F9E0040@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB0960;
	6:ysbgW2nlVrNdq/qMj35IejRGXxqCrdgZ1o24Md9kI2WML8VYP5wVJhQ+Y6GDy1+aoid+Rd3yC099GJC6miwpjinYbyK4jMPnCiWaXX4nZlTsjKf6qR+nn3Z3NCEI/aXKjhA8iqkgQMiw3/LYFAa/gmOmeEMLlldNyBM344elAbwZ5gmjTZJVPYvfreGNeI2sMVkpbjsnxZbEZqcwG6vskICX2W3Gld4O8xXtm0rLl91v0ixdaSjnM/tYq7TAURUZLa52Nt/yeBnWNKdo8MCD/PoyjcutSFik7dnNoFCaCdbDpf2FcuzHxNI+TSLWNxrZL/1am7sjRhFrfcyNHvAeDtxwJpzBcO/h/o0cGiIS9Wtl0ukF6+UNF0WB/PsdmK1XCzuzNHlt8YGLD2yaQ0ZyWDp+xWmWrb9MfAs2/Te0jU0ObVU9bxXHdDgjDFsT7tNXhMu6CqQN5IumlWR2nQ1zeQ==;
	5:Tpe/nGtCzZXjB7YjqPFdvVAZqLt229SoThcic+fY45MSrhuuBWxnkE917O2EMaDIjgkom/rotdiokErVQegILGdbH3V6p8eiSBNzB9y7gMKxMeI0MdfDmnOI6CwzEiCtB55RJbsR80g8dBO89QA8+3wK7y+qUoXrP0t6FExFfkg=;
	7:LkC9zeX1qXLLRu9BFB4HHkVaNX2Z2gUlaM0iik3+1iJElhVFZIGWf5GONHPqr61cIMNYsmcnBuWLGof7owPxWDF1IR//OxpdHUt3w0eKJ5x92IB4z1i2Y96DVUEQ4flucWFDzEtJ7Gl76R62aSl57W/XcFuLgV7noIDMJUIR14ojAksEhuJUa9aUlezwy90Wjnfk0kUiegaQxUfg+OTf3+wvRQfU9Tl28PIaCFOMa1vSVSGxjLEX98W16PSv7+AX
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: bcda7bb5-0c87-47da-e32c-08d617c3f1e9
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB0960; 
x-ms-traffictypediagnostic: VI1PR01MB0960:
x-microsoft-antispam-prvs: <VI1PR01MB096077E7F20F2900347142E9E0040@VI1PR01MB0960.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(103651359005742)(21748063052155); 
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231311)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(20161123562045)(20161123564045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(201708071742011)(7699050);
	SRVR:VI1PR01MB0960; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB0960; 
x-forefront-prvs: 0792DBEAD0
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(346002)(376002)(39860400002)(396003)(366004)(136003)(199004)(189003)(5640700003)(66066001)(6436002)(478600001)(5660300001)(74316002)(105586002)(486006)(33656002)(2351001)(476003)(106356001)(6916009)(25786009)(2900100001)(97736004)(3846002)(68736007)(102836004)(6116002)(9686003)(26005)(14454004)(256004)(1730700003)(81156014)(81166006)(8676002)(8936002)(606006)(86362001)(790700001)(316002)(6506007)(9326002)(7736002)(2906002)(72206003)(2501003)(7696005)(236005)(14444005)(54896002)(6306002)(966005)(55016002)(5024004)(5630700001)(5250100002)(186003)(99286004)(53936002)(568214009);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB0960;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: 3mRIVUMhTlCkr8DBBGUzyJ0jUxYuXl/2//Fi4J7hg4ULn2PcAp/Hv4ZD2yC/16WwqOooASBd7kZ6Q2MMKb6rm+fwOS2bCHoImO8TkG4mIl8vKmKz1kiMPdGirZaA23tMQknQfigbIHraPXv1RcxMU5QFFqhvTe7Uoolpc9g+GD99RnYPoHC0ElGoVGy6ktx92yXzH7qHsOzKT9N4oN1Mpre47sJwQfPSHrBhv4KNHQ51YcpcHxZeNyKmI4kiifWKy+MzlVIyFIfZ7PvLYtN4IcWIHG0fgCLvxWSs0vSe/Ks1b67U7yfEpxArtZXwH7DIhTzIsLDZ77j5pyOBEa/7YQ6oMd7l6zhP336fvsfVrW8=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcda7bb5-0c87-47da-e32c-08d617c3f1e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2018 08:52:46.2327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB0960
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
X-List-Received-Date: Wed, 12 Sep 2018 22:30:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR01MB1070C47EA12B0CEF99AB13F9E0040VI1PR01MB1070eurp_"

--_000_VI1PR01MB1070C47EA12B0CEF99AB13F9E0040VI1PR01MB1070eurp_
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

--_000_VI1PR01MB1070C47EA12B0CEF99AB13F9E0040VI1PR01MB1070eurp_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
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

--_000_VI1PR01MB1070C47EA12B0CEF99AB13F9E0040VI1PR01MB1070eurp_--
