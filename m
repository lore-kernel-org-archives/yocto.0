Return-Path: <carlos.bejar-colonia@philips.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA945E00D3D; Fri, 22 Jun 2018 08:16:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.108 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3659 seconds by postgrey-1.32 at yocto-www;
	Fri, 22 Jun 2018 08:16:07 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0108.outbound.protection.outlook.com [104.47.2.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DC60E00972
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2018 08:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=philips.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=ZB8SJ+Zu3nOhR+k633pPVfxC+C1L8qx9zJrc5faTWyo=;
	b=m0bVuz6e8PvmLzBkbbmVYXgYNIOdV+nOqBQlZvlOGRVwEF2NqFYsRBbibxY+gZx46zc8Y0vWBmk/FLXEU9yNrCOmjqgtfEzrvMsYu+Baw+DPeZJrl9bqbVtrnuRa0xY9wYaPl9wPlpme07VGny8BENmvUv5sQSuZj/xmxhGORjs=
Received: from HE1P122MB0090.EURP122.PROD.OUTLOOK.COM (129.75.166.25) by
	HE1P122MB0058.EURP122.PROD.OUTLOOK.COM (129.75.140.217) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.841.20; Thu, 21 Jun 2018 22:12:28 +0000
Received: from HE1P122MB0090.EURP122.PROD.OUTLOOK.COM
	([fe80::d44a:d85f:383b:e2fa]) by HE1P122MB0090.EURP122.PROD.OUTLOOK.COM
	([fe80::d44a:d85f:383b:e2fa%14]) with mapi id 15.20.0841.021;
	Thu, 21 Jun 2018 22:12:28 +0000
From: "Bejar-Colonia, Carlos" <carlos.bejar-colonia@philips.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Rocko: how to remove python3 from target's rootfs
Thread-Index: AdQJqPWdu7UrvZT8Svq1h37yr+AFPQ==
Date: Thu, 21 Jun 2018 22:12:27 +0000
Message-ID: <HE1P122MB0090894C688B6F014F3ABE50D6760@HE1P122MB0090.EURP122.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=carlos.bejar-colonia@philips.com; 
x-originating-ip: [192.101.81.235]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1P122MB0058;
	7:y0knMU8iDNBkYxG3jwQQrhmNZao3H40Fj1JJMAXTzHlI2YnSanFRb9ffDggqS7v0apY8xEJaJWynRMCON7L36c1F9BoHwOdyIsdxNmc0BTOKyndA3VNHR+a6socoUJej7W0DeZzk88IpUigqA/qzMZrsTyNjWlyOhWPRPvaSjHKRvINsbIETxbvUE5ZtgYE7+XZviK1aL9WqZFYZ0Lbg6W3LpM7JyMhPweoLaKmCGx7FyBMdG5Q8E1UnuBxLyENo
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 9c5e0a0d-4e1d-4ec5-accd-08d5d7c4135a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(8989080)(4534165)(4627221)(201703031133081)(201702281549075)(8990040)(5600026)(711020)(48565401081)(2017052603328)(7153060)(7193020);
	SRVR:HE1P122MB0058; 
x-ms-traffictypediagnostic: HE1P122MB0058:
x-microsoft-antispam-prvs: <HE1P122MB00588C423049CA96F8CDED25D6760@HE1P122MB0058.EURP122.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231254)(944501410)(52105095)(93006095)(93001095)(3002001)(10201501046)(6055026)(149027)(150027)(6041310)(20161123562045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:HE1P122MB0058; BCL:0; PCL:0; RULEID:; SRVR:HE1P122MB0058; 
x-forefront-prvs: 07106EF9B9
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39860400002)(396003)(346002)(376002)(39380400002)(366004)(55904004)(189003)(199004)(374574003)(6436002)(54896002)(9686003)(478600001)(106356001)(3280700002)(3660700001)(6306002)(105586002)(97736004)(66066001)(55016002)(2351001)(5640700003)(74316002)(7736002)(25786009)(33656002)(2906002)(8936002)(68736007)(6916009)(5660300001)(2900100001)(53936002)(5630700001)(81156014)(81166006)(1730700003)(6506007)(486006)(14454004)(5250100002)(2501003)(186003)(476003)(102836004)(26005)(59450400001)(790700001)(7696005)(6116002)(86362001)(3846002)(8676002)(316002)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1P122MB0058;
	H:HE1P122MB0090.EURP122.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: philips.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: +OxKulKpvfspfPWxu0v4QhS/RoZM1/vj7JN4AQTUFd6gw+5+PeDuQZl2NeOsebJ2eqbpj4KvJXimHJydWTUxJYSpJNVYfIAT4qZEuHJ3MX0xp1zcx4E3ciYvpLr0DlyKQTnMFKcU2vDJCvfGAEROhHLSLDZBTCNcuE8PLCe9sIIQKZQnmIRj0mzZ7N9S4XA2N1bk74MjMTWZlq3BkEKzTCajqdtL4ajMpwBvlQbsdyKh5S+t60Zgp7YvMU7WnKUj55E3mJRuj3kKnl/3t1Cuvg0r0jBKEfuzlJhe6xgLuQwYm9fW5o/WeMoaZ5iR7qJ01slB+jMz8w+L8xvA/Nw43g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: philips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c5e0a0d-4e1d-4ec5-accd-08d5d7c4135a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2018 22:12:27.9345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1a407a2d-7675-4d17-8692-b3ac285306e4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P122MB0058
Subject: Rocko: how to remove python3 from target's rootfs
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
X-List-Received-Date: Fri, 22 Jun 2018 15:16:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HE1P122MB0090894C688B6F014F3ABE50D6760HE1P122MB0090EURP_"

--_000_HE1P122MB0090894C688B6F014F3ABE50D6760HE1P122MB0090EURP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Team,

I've upgraded my Yocto system from Morty to Rocko and I've noticed that pyt=
hon3 gets installed in the rootfs, which I don't want (it takes a lot disk =
space)
I've noticed that when I add dhcp-client package to the rootfs (CORE_IMAGE_=
EXTRA_INSTALL +=3D "dhcp-client"), python3 gets installed as well.
However, with Morty, python3 does not get installed in the rootfs after add=
ing dhcp-client pakage.

Probably someone has already done this, but I was not able to figure it out=
. I tried: IMAGE_INSTALL_remove +=3D "python3-core", didn't help.
Any hints on how to remove python3 from the target's rootfs (without removi=
ng dhcp-client)?

Thanks,
Carlos



________________________________
The information contained in this message may be confidential and legally p=
rotected under applicable law. The message is intended solely for the addre=
ssee(s). If you are not the intended recipient, you are hereby notified tha=
t any use, forwarding, dissemination, or reproduction of this message is st=
rictly prohibited and may be unlawful. If you are not the intended recipien=
t, please contact the sender by return e-mail and destroy all copies of the=
 original message.

--_000_HE1P122MB0090894C688B6F014F3ABE50D6760HE1P122MB0090EURP_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">Hello Yocto Team,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve upgraded my Yocto system from Morty to Ro=
cko and I&#8217;ve noticed that python3 gets installed in the rootfs, which=
 I don&#8217;t want (it takes a lot disk space)<o:p></o:p></p>
<p class=3D"MsoNormal">I&#8217;ve noticed that when I add dhcp-client packa=
ge to the rootfs (CORE_IMAGE_EXTRA_INSTALL &#43;=3D &quot;dhcp-client&quot;=
), python3 gets installed as well.<o:p></o:p></p>
<p class=3D"MsoNormal">However, with Morty, python3 does not get installed =
in the rootfs after adding dhcp-client pakage.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Probably someone has already done this, but I was no=
t able to figure it out. I tried: IMAGE_INSTALL_remove &#43;=3D &quot;pytho=
n3-core&quot;, didn&#8217;t help.<o:p></o:p></p>
<p class=3D"MsoNormal">Any hints on how to remove python3 from the target&#=
8217;s rootfs (without removing dhcp-client)?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Carlos<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1">The information contained in=
 this message may be confidential and legally protected under applicable la=
w. The message is intended solely for the addressee(s). If you are not the =
intended recipient, you are hereby notified
 that any use, forwarding, dissemination, or reproduction of this message i=
s strictly prohibited and may be unlawful. If you are not the intended reci=
pient, please contact the sender by return e-mail and destroy all copies of=
 the original message.<br>
</font>
</body>
</html>

--_000_HE1P122MB0090894C688B6F014F3ABE50D6760HE1P122MB0090EURP_--
