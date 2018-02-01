Return-Path: <haseenamol@tataelxsi.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D311DE00E08; Wed, 31 Jan 2018 23:29:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.125.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 1070 seconds by postgrey-1.32 at yocto-www;
	Wed, 31 Jan 2018 23:29:03 PST
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-sg2apc01on0133.outbound.protection.outlook.com
	[104.47.125.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78E52E00D41
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 23:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tataelxsi.onmicrosoft.com; s=selector1-tataelxsi-co-in;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tcAxdmXFZSO8kzhIRfZH9eZMPgGSGNYQuAvZS6MGCpI=;
	b=GAujBRW2n4tPyjF5rfDQBDDhIT/lGyLMRAgfNujyKOGbF7/bnFKl4Z0VHsycHjA0FVcBWeM5Z6Vb2dx3K5eMc9pKfGVeZbWmsilTqz1UsvN1EQhf4Dczq7hSyN7eMOW9+Ryn9iQgw2HGfULl9Js2CI48C89vaEy/k8escbNQqHg=
Received: from PS1PR04MB1657.apcprd04.prod.outlook.com (10.167.51.147) by
	PS1PR04MB1723.apcprd04.prod.outlook.com (10.167.52.17) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.464.11; Thu, 1 Feb 2018 06:56:36 +0000
Received: from PS1PR04MB1657.apcprd04.prod.outlook.com
	([fe80::94d1:565a:c2a9:e357]) by
	PS1PR04MB1657.apcprd04.prod.outlook.com
	([fe80::94d1:565a:c2a9:e357%14]) with mapi id 15.20.0464.012;
	Thu, 1 Feb 2018 06:56:34 +0000
From: HASEENAMOL <haseenamol@tataelxsi.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-raspberrypi][PATCH] [kronos]wayland lib linking added for
	libbrcmEGL to avoid undefined symbol while linking libbrcmEGL.so
Thread-Index: AdObKco19frG5hQmRdurZX8zP8jiDQ==
Date: Thu, 1 Feb 2018 06:56:34 +0000
Message-ID: <PS1PR04MB16577A70F219F5D37556112F81FA0@PS1PR04MB1657.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-mcafeedlp-tag-1: {585215A6-B5E2-49F0-B329-B6366E750896}
x-mcafeedlp-tagged: True
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=haseenamol@tataelxsi.co.in; 
x-originating-ip: [121.244.192.66]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; PS1PR04MB1723;
	6:Iv4bUjMwP4DbwhcsdMsnPEabdffNh3FIBwjUIVwXt0B7/qMsYbqvhfufKkIf27IeUdhbYJzKJE66uO/Uz8ZjPmll7EH2xvjbS4u9+DrsNHchVlmuHIc0h2IrxKQAh0reqQAnu+abFWjXfylugCXpYyyzGpUM93Lv43Mist14iF2fFb/p6Vjs/Tx5bGU2H+QZl6sJRwALHMZ7O/sxcP423gFHq8r324a9TQ242dEONBq4ygCQ+cBUuofUUoNUJ95I/UbO4x4M2jYR/WXFc01Q6MyJqkvV1hJ9rH5o7Us5hZ26uXhmVT5cromeLkMrUdL+fJB0riaPK+i2BcH195se+gkGjFzCnGS/qsTjuMiXk0f+NBEzJGyySjjPx2qkqPF4;
	5:b+IKCc4YLlN7waPFF/En6LALioFuKkZxITLvzTi3gT//KXzM32wzJX0QX1GbdVuuwg6n2HCu3P5tBp9l4JRiDmD5MU1Fdjv2SCJmwiKKkKOQBgG8GIz1MTAM89JSzsJ1B3E2Ic8BZU03VahfF/YUJpi5SKK+LVcH4TjrTxrwFSA=;
	24:97vX0qQZdN6TBeRurq19Cp1FiSPUZsAiZDcKD/OhM+7za02tPfQ7tARUURWicBw5rpGQJzJ7ehuvo3D1cqY3MEUQ8syRKg1AqNlvVUn/cO8=;
	7:ek02ysMTuibtgq+iv2YU5xGvaTAP3mZiUCSh5FwP+bAJFTsuQeLCJMVSBG9Zb7fD7S9rZAaVAZT51Pl20hT/NLw+uY3tsExcWl7plIrW8EZirX7IbDLb2/V3+0voWRPIQgu3IVpAFmLHXHzYux2Wj0BmTbg/wmOyjyrv1E6kVy4TdCojU6Qj0Db6gXzqe/ZEePplFWHYfeRWIW6CuzydYEXAbDKsxHIp9u2XvbD3XBk8vJJ/HxkAfZtHBRYirTrg
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dc9bd004-2e8a-420b-2a3d-08d56940eed2
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(48565401081)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(49563074)(7193020);
	SRVR:PS1PR04MB1723; 
x-ms-traffictypediagnostic: PS1PR04MB1723:
x-microsoft-antispam-prvs: <PS1PR04MB1723C737F682998B320003D681FA0@PS1PR04MB1723.apcprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(28532068793085)(21748063052155)(82036181113711); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(102415395)(6040501)(2401047)(5005006)(8121501046)(93006095)(93001095)(3002001)(3231101)(2400082)(944501161)(10201501046)(6055026)(6041288)(20161123558120)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(6072148)(201708071742011);
	SRVR:PS1PR04MB1723; BCL:0; PCL:0; RULEID:; SRVR:PS1PR04MB1723; 
x-forefront-prvs: 0570F1F193
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(366004)(396003)(39380400002)(39860400002)(346002)(189003)(199004)(14454004)(8676002)(3660700001)(33656002)(5630700001)(74482002)(55016002)(105586002)(53936002)(236005)(478600001)(54896002)(6306002)(3280700002)(26005)(6436002)(186003)(5640700003)(2900100001)(2906002)(5660300001)(25786009)(42882006)(97736004)(6916009)(5250100002)(4326008)(606006)(9686003)(106356001)(7736002)(18717965001)(74316002)(68736007)(2501003)(8936002)(66066001)(54906003)(316002)(2351001)(790700001)(3846002)(53346004)(1730700003)(19609705001)(81156014)(81166006)(107886003)(99286004)(6506007)(86362001)(6116002)(7696005)(102836004)(99936001)(80872002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:PS1PR04MB1723;
	H:PS1PR04MB1657.apcprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:0; LANG:en; 
received-spf: None (protection.outlook.com: tataelxsi.co.in does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: j9PK+0h+afu+3EjO28d8PBBBhUCEq23cdDDMucRwyI3K1nNUrBE3bG4uZDq2CtO3xi0sPOAqJJ5552KmU/Q10g==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: tataelxsi.co.in
X-MS-Exchange-CrossTenant-Network-Message-Id: dc9bd004-2e8a-420b-2a3d-08d56940eed2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Feb 2018 06:56:34.6804 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ad6a39dd-96b6-4368-82da-f2ec4d92e26a
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR04MB1723
Subject: [meta-raspberrypi][PATCH] [kronos]wayland lib linking added for libbrcmEGL to avoid undefined symbol while linking libbrcmEGL.so
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
X-List-Received-Date: Thu, 01 Feb 2018 07:29:05 -0000
X-Groupsio-MsgNum: 39754
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_"

--_004_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_
Content-Type: multipart/alternative;
	boundary="_000_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_"

--_000_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

[meta-raspberrypi][PATCH]
In wayland enabled build libbrcmEGL lib is using wayland functions, but dur=
ing the build it is not linking with wayland libraries. Hence if try to lin=
k libbrcmEGL, will get undefined symbols.

Best Regards
Haseenamol

Senior Specialist - Broadcast | Embedded Product Design
TATA ELXSI
Neyyar Techno park Campus Trivandrum 695 581 India
Tel +91 471 666 1248
www.tataelxsi.com<http://www.tataelxsi.com/>


--_000_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
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
	font-family:"Calibri","sans-serif";}
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">[meta-raspberrypi][PATCH] <o:p></o:p></p>
<p class=3D"MsoNormal">In wayland enabled build libbrcmEGL lib is using way=
land functions, but during the build it is not linking with wayland librari=
es. Hence if try to link libbrcmEGL, will get undefined symbols.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;">Best Regards<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;">Haseenamol
<br>
<br>
<span style=3D"color:#4D4D4D">Senior Specialist - Broadcast | Embedded Prod=
uct Design
<br>
</span><span style=3D"color:#0099FF">TATA ELXSI</span><span style=3D"color:=
#4D4D4D"><o:p></o:p></span></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:#4D4D4D">Neyyar Techno park Campus Tr=
ivandrum 695 581 India<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:9.0pt;font-family:&quot;Ari=
al&quot;,&quot;sans-serif&quot;;color:#4D4D4D">Tel &#43;91 471 666 1248
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><u><span style=3D"font-size:9.0pt;font-family:&quot;=
Arial&quot;,&quot;sans-serif&quot;;color:#4D4D4D"><a href=3D"http://www.tat=
aelxsi.com/"><span style=3D"color:blue">www.tataelxsi.com</span></a></span>=
</u><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_--

--_004_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_
Content-Type: application/octet-stream;
	name="0001-kronos-wayland-lib-linking-added-for-libbrcmEGL-to-a.patch"
Content-Description: 0001-kronos-wayland-lib-linking-added-for-libbrcmEGL-to-a.patch
Content-Disposition: attachment;
	filename="0001-kronos-wayland-lib-linking-added-for-libbrcmEGL-to-a.patch";
	size=2242; creation-date="Thu, 01 Feb 2018 06:52:42 GMT";
	modification-date="Thu, 01 Feb 2018 06:52:42 GMT"
Content-Transfer-Encoding: base64

RnJvbSA3NzViNDdmYjMxNWVkOGNjZGMwYTY4MzM0NmM3MWRjYjkwYjVjYTcxIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBIYXNlZW5hbW9sIDxoYXNlZW5hbW9sQHRhdGFlbHhzaS5jby5p
bj4KRGF0ZTogV2VkLCAzMSBKYW4gMjAxOCAxMToyNDozOSArMDAwMApTdWJqZWN0OiBbbWV0YS1y
YXNwYmVycnlwaV1bUEFUQ0hdIFtrcm9ub3Ndd2F5bGFuZCBsaWIgbGlua2luZyBhZGRlZCBmb3IK
IGxpYmJyY21FR0wgdG8gYXZvaWQgdW5kZWZpbmVkIHN5bWJvbCB3aGlsZSBsaW5raW5nIGxpYmJy
Y21FR0wuc28KClNpZ25lZC1vZmYtYnk6IEhhc2VlbmFtb2wgPGhhc2VlbmFtb2xAdGF0YWVseHNp
LmNvLmluPgotLS0KIC4uLi91c2VybGFuZC8wMDE2LVdBWUxBTkQtZGVwZW5kZW5jeS1mb3Ita2hy
b25vcy5wYXRjaCAgICAgIHwgMTMgKysrKysrKysrKysrKwogcmVjaXBlcy1ncmFwaGljcy91c2Vy
bGFuZC91c2VybGFuZF9naXQuYmIgICAgICAgICAgICAgICAgICAgfCAgMSArCiAyIGZpbGVzIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2RlIDEwMDY0NCByZWNpcGVzLWdyYXBo
aWNzL3VzZXJsYW5kL3VzZXJsYW5kLzAwMTYtV0FZTEFORC1kZXBlbmRlbmN5LWZvci1raHJvbm9z
LnBhdGNoCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1ncmFwaGljcy91c2VybGFuZC91c2VybGFuZC8w
MDE2LVdBWUxBTkQtZGVwZW5kZW5jeS1mb3Ita2hyb25vcy5wYXRjaCBiL3JlY2lwZXMtZ3JhcGhp
Y3MvdXNlcmxhbmQvdXNlcmxhbmQvMDAxNi1XQVlMQU5ELWRlcGVuZGVuY3ktZm9yLWtocm9ub3Mu
cGF0Y2gKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMC4uYmM2MWM4ZAotLS0gL2Rl
di9udWxsCisrKyBiL3JlY2lwZXMtZ3JhcGhpY3MvdXNlcmxhbmQvdXNlcmxhbmQvMDAxNi1XQVlM
QU5ELWRlcGVuZGVuY3ktZm9yLWtocm9ub3MucGF0Y2gKQEAgLTAsMCArMSwxMyBAQAorZGlmZiAt
LWdpdCBhL2ludGVyZmFjZS9raHJvbm9zL0NNYWtlTGlzdHMudHh0IGIvaW50ZXJmYWNlL2tocm9u
b3MvQ01ha2VMaXN0cy50eHQKK2luZGV4IDNkMzU3MWEuLjI0MTk4NDYgMTAwNjQ0CistLS0gYS9p
bnRlcmZhY2Uva2hyb25vcy9DTWFrZUxpc3RzLnR4dAorKysrIGIvaW50ZXJmYWNlL2tocm9ub3Mv
Q01ha2VMaXN0cy50eHQKK0BAIC0xMzYsNyArMTM2LDcgQEAgYWRkX2xpYnJhcnkoYnJjbUdMRVN2
MiAke1NIQVJFRH0gJHtHTEVTX1NPVVJDRX0pCisgYWRkX2xpYnJhcnkoYnJjbU9wZW5WRyAke1NI
QVJFRH0gJHtWR19TT1VSQ0V9KQorIGFkZF9saWJyYXJ5KGJyY21XRkMgJHtTSEFSRUR9ICR7V0ZD
X1NPVVJDRX0pCisgCistdGFyZ2V0X2xpbmtfbGlicmFyaWVzKGJyY21FR0wga2hybl9jbGllbnQg
dmNoaXFfYXJtIHZjb3MgYmNtX2hvc3QgJHtWQ1NNX0xJQlN9IC1sbSkKKyt0YXJnZXRfbGlua19s
aWJyYXJpZXMoYnJjbUVHTCBraHJuX2NsaWVudCB2Y2hpcV9hcm0gdmNvcyBiY21faG9zdCAke1ZD
U01fTElCU30gLWxtICR7V0FZTEFORF9TRVJWRVJfTElCUkFSSUVTfSAke1dBWUxBTkRfQ0xJRU5U
X0xJQlJBUklFU30pCisgdGFyZ2V0X2xpbmtfbGlicmFyaWVzKGJyY21HTEVTdjIgYnJjbUVHTCBr
aHJuX2NsaWVudCB2Y29zKQorIHRhcmdldF9saW5rX2xpYnJhcmllcyhicmNtV0ZDIGJyY21FR0wp
CisgdGFyZ2V0X2xpbmtfbGlicmFyaWVzKGJyY21PcGVuVkcgYnJjbUVHTCkKZGlmZiAtLWdpdCBh
L3JlY2lwZXMtZ3JhcGhpY3MvdXNlcmxhbmQvdXNlcmxhbmRfZ2l0LmJiIGIvcmVjaXBlcy1ncmFw
aGljcy91c2VybGFuZC91c2VybGFuZF9naXQuYmIKaW5kZXggYmYwZTY3Mi4uNWFjNTZlOCAxMDA2
NDQKLS0tIGEvcmVjaXBlcy1ncmFwaGljcy91c2VybGFuZC91c2VybGFuZF9naXQuYmIKKysrIGIv
cmVjaXBlcy1ncmFwaGljcy91c2VybGFuZC91c2VybGFuZF9naXQuYmIKQEAgLTM3LDYgKzM3LDcg
QEAgU1JDX1VSSSA9ICJcCiAgICAgZmlsZTovLzAwMTMtSW1wbGVtZW50LXRyaXBsZS1idWZmZXJp
bmctZm9yLXdheWxhbmQucGF0Y2ggXAogICAgIGZpbGU6Ly8wMDE0LUdMRVMyLWdsMmV4dC5oLURl
ZmluZS1HTF9SOF9FWFQtYW5kLUdMX1JHOF9FWFQucGF0Y2ggXAogICAgIGZpbGU6Ly8wMDE1LUVH
TC1nbHBsYXRmb3JtLmgtZGVmaW5lLUVHTF9DQVNULnBhdGNoIFwKKyAgICBmaWxlOi8vMDAxNi1X
QVlMQU5ELWRlcGVuZGVuY3ktZm9yLWtocm9ub3MucGF0Y2ggXAogIgogUyA9ICIke1dPUktESVJ9
L2dpdCIKIAotLSAKMS45LjEKCg==

--_004_PS1PR04MB16577A70F219F5D37556112F81FA0PS1PR04MB1657apcp_--
