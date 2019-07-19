Return-Path: <mvelasco@aertecsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 060EEE00DAF; Fri, 19 Jul 2019 04:27:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.15.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150052.outbound.protection.outlook.com [40.107.15.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42511E00931
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 04:27:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=moP9YMbUABu9EL7VxHpco/odPLFBqAhxeQs2vfMQJgNjT353A8SmKvKf9lw6EjqLgaYoazm7kiLVm8WgH9NzHgHLPFLr9FA7RT+LFrLzrfi6qf3CQHO3IEgfF+RQCWasEaLOeF6DKcvbinyXUxm/J5gnnopni+gONGd190hwfnYySPPB+WzQJgTz8QrPw59zs9L5Ji5CrkeT57o4IIAshIe7vqb5wVc+uOSZ1VsvdAUFu/coP4TOavJxfMqVjOa9B/FnSJZ3exbbB0ZJG15u10GYRz6+Y1wWzXZq6U1fIq+qo3ZbsPbZI9oNInP6AR+XD3Bl06KJQXH9iHDDzlmOxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qu0drxGRaPm3WCZlvkEklM4LFSTYZJ+6DHMyIkXshaw=;
	b=jCEBkYkxGlyKg4QXhiMcELpNzXpROW11Yel1+lkw8f17fNXFFzIIWKNhNAC9siyhzefMIkzXkxIxQ5PyBhls6yrRGW5dUM7+KyVMagMewqB60Z/x7z3NNxUXKjNRTC5/TqDWQCWmGrEUnGuiNykIdHGTqutVAarwoJ1ByiP2SOsNzEKmk/485jsaN3doWbkRIPPzfWEgpo0Wfjy8sOexDGtwYbZlcJ2Y9eQEDRIZS1m5DDRdRhwD7Bd/2nRr1ieiClGuwdqM4462KKW41QU/TBhs8LlCjUBZc52jxT1T899kG+aLLnAXWSTJJOOMxCs46z7ZdNv5GXooH3fKqxWiDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=aertecsolutions.com;dmarc=pass action=none
	header.from=aertecsolutions.com;dkim=pass
	header.d=aertecsolutions.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aertec.onmicrosoft.com; s=selector2-aertec-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=Qu0drxGRaPm3WCZlvkEklM4LFSTYZJ+6DHMyIkXshaw=;
	b=mBq5AOhgBhLjxU+EX+9CxvGL+63+GkAYXMw2LgX/X0SkTCx+c2tkc6eIGt9wi1RKpbEEEHjrt1WXSTjl3VuCP70qf0OIwB5XRAGmtbITs6z8NniBALS7zfq/GWwMGhILeGSJG2LGyDsaAoO2NvRwG4rz1HZ/NZDXHbsuXgBMNgs=
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com (10.186.131.71) by
	AM0PR09MB3330.eurprd09.prod.outlook.com (20.179.252.160) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2094.14; Fri, 19 Jul 2019 11:27:42 +0000
Received: from AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca]) by
	AM0PR09MB4066.eurprd09.prod.outlook.com
	([fe80::b4ed:ee1a:3ea1:c7ca%3]) with mapi id 15.20.2094.013;
	Fri, 19 Jul 2019 11:27:42 +0000
From: =?Windows-1252?Q?Mar=EDa_del_Mar_Velasco_AERTEC_Solutions_=96_Aerospace_?=
	=?Windows-1252?Q?=26_Aviation?= <mvelasco@aertecsolutions.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: ERROR: Actual rootfs size is larger than allowed
Thread-Index: AdU+IjU1BCxGWT8RTvqRgQEQttLEMA==
Date: Fri, 19 Jul 2019 11:27:42 +0000
Message-ID: <AM0PR09MB4066402C6F9DCEC298A30B89D7CB0@AM0PR09MB4066.eurprd09.prod.outlook.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mvelasco@aertecsolutions.com; 
x-originating-ip: [77.230.158.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc1dd080-bd8f-4f43-9616-08d70c3c1d86
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(49563074)(7193020);
	SRVR:AM0PR09MB3330; 
x-ms-traffictypediagnostic: AM0PR09MB3330:
x-microsoft-antispam-prvs: <AM0PR09MB3330B2DB9A80F47B2FDA5A94D7CB0@AM0PR09MB3330.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01039C93E4
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(136003)(39850400004)(366004)(376002)(396003)(346002)(199004)(189003)(4744005)(66066001)(76116006)(66616009)(66476007)(71190400001)(71200400001)(68736007)(45776006)(66556008)(7736002)(64756008)(53936002)(8936002)(66946007)(55016002)(413944005)(8676002)(6306002)(19627235002)(316002)(5640700003)(54896002)(9686003)(99286004)(6436002)(478600001)(186003)(26005)(6916009)(2501003)(476003)(99936001)(5024004)(3846002)(25786009)(256004)(2351001)(790700001)(6116002)(86362001)(14454004)(6506007)(33656002)(486006)(52536014)(66446008)(5660300002)(102836004)(81156014)(7696005)(1730700003)(74316002)(81166006)(2906002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR09MB3330;
	H:AM0PR09MB4066.eurprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aertecsolutions.com does not
	designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: kixkS0bvcqNUrRwioEFKAFOWuWfCz7HvyMMciTNQKLowrRLvOvjvPz+TrKiQJB9D00ZcbcmVhQUFjD7x/c1UiqN1MBovkUTBXE5Gu+ftO3Adv937dn2WvVIQS6Dz0QyY3hh0kzBLFqO3ag5++i29KcuQMWF28dT94Cxc9V7pf/aUjr9f4+bpo1jrFMgCDudtkqaJHD7/CoZlwiN0PFvCr07bxLTojTKM8QA+XfaJ5yshF2lvRF+BvheK10KHgnaMTgnxPAtlIW8k1o1uyiEedqkKxx8IDe+NpsKZN0yty7kw2GLEy6RSEIsYGdoHV5QXB50hYPuwg5q0Rt+BEUMQ6EOs4YGY/yMzCq7nOjTyXNMSnq3YiiuQA6406sPz+wsw98WPT4JMNlSx8buz3jYqaaVtt5N+l82h2ej8hkeKNXc=
MIME-Version: 1.0
X-OriginatorOrg: aertecsolutions.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc1dd080-bd8f-4f43-9616-08d70c3c1d86
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2019 11:27:42.7513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ab98a94e-6e04-48d7-be01-b54a8cfe74b2
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mvelasco@aertecsolutions.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB3330
Subject: ERROR: Actual rootfs size is larger than allowed
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
X-List-Received-Date: Fri, 19 Jul 2019 11:27:48 -0000
X-Groupsio-MsgNum: 46006
Content-Language: es-ES
Content-Type: multipart/mixed;
	boundary="_004_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_"

--_004_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_
Content-Type: multipart/alternative;
	boundary="_000_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_"

--_000_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Dear all,

I am new at Yocto Project and I have a simple question. I have cloned poky =
(rocko branch), sourced the environment and bitbaked the core-minimal-image=
-dev without problems. I can write the image in a SD Card and I am able to =
boot the system.

However, when I add IMAGE_INSTALL_append to local.conf with some packages r=
ecipes (IMAGE_INSTALL_append =3D =93nodejs=94 for example), I get the follo=
wing error:


  *   ERROR: Function failed: do_image_wic
  *   ERROR: Actual rootfs size (284260 KB) is larger than allowed size 262=
144 KB.

My question is: where could I find that 262144 KB default size value? I wou=
ld like to change it and make it bigger. I have tried to add  IMAGE_ROOTFS_=
SIZE =3D =935000000=94 to local.conf file but it still fails.

I attach the log.do_image_wic file.

Thanks you in advance,

MM

--_000_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EstiloCorreo17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 3.0cm 70.85pt 3.0cm;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1808545788;
	mso-list-type:hybrid;
	mso-list-template-ids:1811301814 1694126100 134807555 134807557 134807553 =
134807555 134807557 134807553 134807555 134807557;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:\F0E8;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:20.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;
	mso-fareast-font-family:Calibri;
	mso-bidi-font-family:Arial;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:56.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:92.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:128.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:164.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:200.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:236.4pt;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:272.4pt;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:308.4pt;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Dear all,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am new at Yocto Project and I have a simple questi=
on. I have cloned poky (rocko branch), sourced the environment and bitbaked=
 the core-minimal-image-dev without problems. I can write the image in a SD=
 Card and I am able to boot the system.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">However, when I add IMAGE_INSTALL_append to local.co=
nf with some packages recipes (IMAGE_INSTALL_append =3D =93nodejs=94 for ex=
ample), I get the following error:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<ul style=3D"margin-top:0cm" type=3D"disc">
<li class=3D"MsoListParagraph" style=3D"margin-left:-15.6pt;mso-list:l0 lev=
el1 lfo1">
ERROR: Function failed: do_image_wic<o:p></o:p></li><li class=3D"MsoListPar=
agraph" style=3D"margin-left:-15.6pt;mso-list:l0 level1 lfo1">
ERROR: Actual rootfs size (284260 KB) is larger than allowed size 262144 KB=
.<o:p></o:p></li></ul>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My question is: where could I find that 262144 KB de=
fault size value? I would like to change it and make it bigger. I have trie=
d to add &nbsp;IMAGE_ROOTFS_SIZE =3D =935000000=94 to local.conf file but i=
t still fails.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I attach the log.do_image_wic file.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks you in advance,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">MM<o:p></o:p></p>
</div>
</body>
</html>

--_000_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_--

--_004_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_
Content-Type: application/octet-stream; name="log.do_image_wic.4351"
Content-Description: log.do_image_wic.4351
Content-Disposition: attachment; filename="log.do_image_wic.4351"; size=6443;
	creation-date="Thu, 18 Jul 2019 07:58:08 GMT";
	modification-date="Thu, 18 Jul 2019 07:43:12 GMT"
Content-Transfer-Encoding: base64

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc2V0X2ltYWdlX3NpemUKREVCVUc6IFB5
dGhvbiBmdW5jdGlvbiBzZXRfaW1hZ2Vfc2l6ZSBmaW5pc2hlZApERUJVRzogRXhlY3V0aW5nIHB5
dGhvbiBmdW5jdGlvbiBleHRlbmRfcmVjaXBlX3N5c3Jvb3QKTk9URTogRGlyZWN0IGRlcGVuZGVu
Y2llcyBhcmUgWycvaG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ2NjL2djYy1j
cm9zc183LjMuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92
ZW0vcG9reS9tZXRhL3JlY2lwZXMtY29ubmVjdGl2aXR5L29wZW5zc2wvb3BlbnNzbF8xLjAuMm8u
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92ZW0vcG9reS9t
ZXRhL3JlY2lwZXMtZGV2dG9vbHMvZG5mL2RuZl8yLjYuMy5iYjpkb19wb3B1bGF0ZV9zeXNyb290
JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL3ZlbS9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9v
cGtnLXV0aWxzL29wa2ctdXRpbHNfMC4zLjUuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9t
ZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcWVtdS9xZW11d3JhcHBlci1jcm9zc18x
LjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92ZW0vcG9r
eS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZmRpc2svZ3B0ZmRpc2tfMS4wLjMuYmI6ZG9fcG9wdWxh
dGVfc3lzcm9vdCcsICcvaG9tZS92ZW0vcG9reS9tZXRhLXRxL3JlY2lwZXMta2VybmVsL2xpbnV4
L2xpbnV4LXRxXzQuMTQuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTov
aG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMtY29yZS91cGRhdGUtcmMuZC91cGRhdGUtcmMuZF8w
LjcuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMt
ZGV2dG9vbHMvbWtsaWJzL21rbGlicy1uYXRpdmVfMC4xLjQzLmJiOmRvX3BvcHVsYXRlX3N5c3Jv
b3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS9yZWNpcGVzLWtlcm5lbC9k
dGMvZHRjXzEuNC40LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hv
bWUvdmVtL3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL2NyZWF0ZXJlcG8tYy9jcmVhdGVyZXBv
LWNfZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvdmVt
L3Bva3kvbWV0YS9yZWNpcGVzLWRldnRvb2xzL210b29scy9tdG9vbHNfNC4wLjE4LmJiOmRvX3Bv
cHVsYXRlX3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS9yZWNp
cGVzLWRldnRvb2xzL3JwbS9ycG1fZ2l0LmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAndmlydHVh
bDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL2JjL2JjXzEuMDYu
YmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMtY29y
ZS9nbGliYy9sZGNvbmZpZy1uYXRpdmVfMi4xMi4xLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
dmlydHVhbDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS10cS9yZWNpcGVzLWJzcC9zd2FwLWZp
bGUtZW5kaWFuZXNzL3N3YXAtZmlsZS1lbmRpYW5lc3MuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcs
ICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHJl
bGluay9wcmVsaW5rX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL3ZlbS9wb2t5
L21ldGEvcmVjaXBlcy1kZXZ0b29scy9nY2MvZ2NjLXJ1bnRpbWVfNy4zLmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS9yZWNpcGVzLWRl
dnRvb2xzL29wa2cvb3BrZ18wLjMuNS5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL3Zl
bS9wb2t5L21ldGEvcmVjaXBlcy1rZXJuZWwva21vZC9rbW9kLW5hdGl2ZV9naXQuYmI6ZG9fcG9w
dWxhdGVfc3lzcm9vdCcsICcvaG9tZS92ZW0vcG9reS9tZXRhL3JlY2lwZXMta2VybmVsL2ttb2Qv
ZGVwbW9kd3JhcHBlci1jcm9zc18xLjAuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICcvaG9tZS92
ZW0vcG9reS9tZXRhL3JlY2lwZXMtY29yZS9nbGliYy9nbGliY18yLjI2LmJiOmRvX3BvcHVsYXRl
X3N5c3Jvb3QnLCAndmlydHVhbDpuYXRpdmU6L2hvbWUvdmVtL3Bva3kvbWV0YS9yZWNpcGVzLWV4
dGVuZGVkL3BpZ3ovcGlnel8yLjMuNC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL3Zl
bS9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0b29scy9xdWlsdC9xdWlsdC1uYXRpdmVfMC42NS5iYjpk
b19wb3B1bGF0ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL3ZlbS9wb2t5L21ldGEv
cmVjaXBlcy1zdXBwb3J0L2x6b3AvbHpvcF8xLjAzLmJiOmRvX3BvcHVsYXRlX3N5c3Jvb3QnLCAn
L2hvbWUvdmVtL3Bva3kvbWV0YS10cS9yZWNpcGVzLWJzcC91LWJvb3QvdS1ib290LXRxXzIwMTcu
MTEuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92ZW0vcG9r
eS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvcHNldWRvL3BzZXVkb18xLjguMi5iYjpkb19wb3B1bGF0
ZV9zeXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL3ZlbS9wb2t5L21ldGEvcmVjaXBlcy1k
ZXZ0b29scy9tYWtlZGV2cy9tYWtlZGV2c18xLjAuMS5iYjpkb19wb3B1bGF0ZV9zeXNyb290Jywg
J3ZpcnR1YWw6bmF0aXZlOi9ob21lL3ZlbS9wb2t5L21ldGEvcmVjaXBlcy1leHRlbmRlZC9wYXJ0
ZWQvcGFydGVkXzMuMi5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9ob21lL3ZlbS9wb2t5L21l
dGEvcmVjaXBlcy1kZXZ0b29scy9iaW51dGlscy9iaW51dGlscy1jcm9zc18yLjI5LjEuYmI6ZG9f
cG9wdWxhdGVfc3lzcm9vdCcsICd2aXJ0dWFsOm5hdGl2ZTovaG9tZS92ZW0vcG9reS9tZXRhL3Jl
Y2lwZXMtZGV2dG9vbHMvZG9zZnN0b29scy9kb3Nmc3Rvb2xzXzQuMS5iYjpkb19wb3B1bGF0ZV9z
eXNyb290JywgJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL3ZlbS9wb2t5L21ldGEvcmVjaXBlcy1kZXZ0
b29scy90Y2x0ay90Y2xfOC42LjcuYmI6ZG9fcG9wdWxhdGVfc3lzcm9vdCddCk5PVEU6IEluc3Rh
bGxlZCBpbnRvIHN5c3Jvb3Q6IFtdCk5PVEU6IFNraXBwaW5nIGFzIGFscmVhZHkgZXhpc3RzIGlu
IHN5c3Jvb3Q6IFsnZ2NjLWNyb3NzLWFybScsICdvcGVuc3NsLW5hdGl2ZScsICdkbmYtbmF0aXZl
JywgJ29wa2ctdXRpbHMtbmF0aXZlJywgJ3FlbXV3cmFwcGVyLWNyb3NzJywgJ2dwdGZkaXNrLW5h
dGl2ZScsICdsaW51eC10cScsICd1cGRhdGUtcmMuZC1uYXRpdmUnLCAnbWtsaWJzLW5hdGl2ZScs
ICdkdGMtbmF0aXZlJywgJ2NyZWF0ZXJlcG8tYy1uYXRpdmUnLCAnbXRvb2xzLW5hdGl2ZScsICdy
cG0tbmF0aXZlJywgJ2JjLW5hdGl2ZScsICdsZGNvbmZpZy1uYXRpdmUnLCAnc3dhcC1maWxlLWVu
ZGlhbmVzcy1uYXRpdmUnLCAncHJlbGluay1uYXRpdmUnLCAnZ2NjLXJ1bnRpbWUnLCAnb3BrZy1u
YXRpdmUnLCAna21vZC1uYXRpdmUnLCAnZGVwbW9kd3JhcHBlci1jcm9zcycsICdnbGliYycsICdw
aWd6LW5hdGl2ZScsICdxdWlsdC1uYXRpdmUnLCAnbHpvcC1uYXRpdmUnLCAndS1ib290LXRxJywg
J3BzZXVkby1uYXRpdmUnLCAnbWFrZWRldnMtbmF0aXZlJywgJ3BhcnRlZC1uYXRpdmUnLCAnYmlu
dXRpbHMtY3Jvc3MtYXJtJywgJ2Rvc2ZzdG9vbHMtbmF0aXZlJywgJ3RjbC1uYXRpdmUnLCAneHot
bmF0aXZlJywgJ2xpYnRvb2wtbmF0aXZlJywgJ2dtcC1uYXRpdmUnLCAnYXV0b21ha2UtbmF0aXZl
JywgJ3psaWItbmF0aXZlJywgJ3RleGluZm8tZHVtbXktbmF0aXZlJywgJ2F1dG9jb25mLW5hdGl2
ZScsICdsaW51eC1saWJjLWhlYWRlcnMnLCAnbXBmci1uYXRpdmUnLCAnZ251LWNvbmZpZy1uYXRp
dmUnLCAnbGlibXBjLW5hdGl2ZScsICdtYWtlZGVwZW5kLW5hdGl2ZScsICdjcnlwdG9kZXYtbGlu
dXgtbmF0aXZlJywgJ3BrZ2NvbmZpZy1uYXRpdmUnLCAncHl0aG9uMy1pbmlwYXJzZS1uYXRpdmUn
LCAnbGliY29tcHMtbmF0aXZlJywgJ2xpYnJlcG8tbmF0aXZlJywgJ3B5dGhvbjMtbmF0aXZlJywg
J2xpYmRuZi1uYXRpdmUnLCAnZ2V0dGV4dC1taW5pbWFsLW5hdGl2ZScsICdjbWFrZS1uYXRpdmUn
LCAncWVtdS1uYXRpdmUnLCAnbmN1cnNlcy1uYXRpdmUnLCAndXRpbC1saW51eC1uYXRpdmUnLCAn
cG9wdC1uYXRpdmUnLCAnYmlzb24tbmF0aXZlJywgJ2ZsZXgtbmF0aXZlJywgJ3NxbGl0ZTMtbmF0
aXZlJywgJ2V4cGF0LW5hdGl2ZScsICdjdXJsLW5hdGl2ZScsICdsaWJ4bWwyLW5hdGl2ZScsICdn
bGliLTIuMC1uYXRpdmUnLCAnZmlsZS1uYXRpdmUnLCAnYnppcDItbmF0aXZlJywgJ2RidXMtbmF0
aXZlJywgJ2VsZnV0aWxzLW5hdGl2ZScsICduc3MtbmF0aXZlJywgJ2RiLW5hdGl2ZScsICdsaWJh
cmNoaXZlLW5hdGl2ZScsICdiaW51dGlscy1uYXRpdmUnLCAnbGliZ2NjJywgJ2xpYnNvbHYtbmF0
aXZlJywgJ2d0ay1kb2MtbmF0aXZlJywgJ3NoYWRvdy1uYXRpdmUnLCAnbHpvLW5hdGl2ZScsICdy
ZWFkbGluZS1uYXRpdmUnLCAnZGViaWFudXRpbHMtbmF0aXZlJywgJ200LW5hdGl2ZScsICd4cHJv
dG8tbmF0aXZlJywgJ3V0aWwtbWFjcm9zLW5hdGl2ZScsICdweXRob24zLXNpeC1uYXRpdmUnLCAn
bGliY2hlY2stbmF0aXZlJywgJ2F0dHItbmF0aXZlJywgJ2dwZ21lLW5hdGl2ZScsICdnb2JqZWN0
LWludHJvc3BlY3Rpb24tbmF0aXZlJywgJ2Fsc2EtbGliLW5hdGl2ZScsICdwaXhtYW4tbmF0aXZl
JywgJ2xpYnNkbC1uYXRpdmUnLCAnZ2V0dGV4dC1uYXRpdmUnLCAnbGliZmZpLW5hdGl2ZScsICds
aWJwY3JlLW5hdGl2ZScsICduc3ByLW5hdGl2ZScsICdlMmZzcHJvZ3MtbmF0aXZlJywgJ3B5dGhv
bjMtc2V0dXB0b29scy1uYXRpdmUnLCAnbGliYXNzdWFuLW5hdGl2ZScsICdsaWJncGctZXJyb3It
bmF0aXZlJywgJ3N3aWctbmF0aXZlJywgJ2xpYnBuZy1uYXRpdmUnLCAnbGlieHJhbmRyLW5hdGl2
ZScsICdsaWJ4ZXh0LW5hdGl2ZScsICdsaWJ4MTEtbmF0aXZlJywgJ2xpYnhyZW5kZXItbmF0aXZl
JywgJ3VuemlwLW5hdGl2ZScsICdyYW5kcnByb3RvLW5hdGl2ZScsICd4ZXh0cHJvdG8tbmF0aXZl
JywgJ2xpYnhjYi1uYXRpdmUnLCAnaW5wdXRwcm90by1uYXRpdmUnLCAneHRyYW5zLW5hdGl2ZScs
ICdrYnByb3RvLW5hdGl2ZScsICdyZW5kZXJwcm90by1uYXRpdmUnLCAnbGlieGRtY3AtbmF0aXZl
JywgJ2xpYnhhdS1uYXRpdmUnLCAneGNiLXByb3RvLW5hdGl2ZScsICdsaWJwdGhyZWFkLXN0dWJz
LW5hdGl2ZSddCkRFQlVHOiBQeXRob24gZnVuY3Rpb24gZXh0ZW5kX3JlY2lwZV9zeXNyb290IGZp
bmlzaGVkCkRFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9faW1hZ2Vfd2ljCklORk86
IENyZWF0aW5nIGltYWdlKHMpLi4uCgpXQVJOSU5HOiBvdmVyaGVhZC1mYWN0b3Igd2FzIHNwZWNp
ZmllZCwgYnV0IHNpemUgd2FzIG5vdCwgc28gYml0YmFrZSB2YXJpYWJsZXMgd2lsbCBiZSB1c2Vk
IGZvciB0aGUgc2l6ZS4gSW4gdGhpcyBjYXNlIGJvdGggSU1BR0VfT1ZFUkhFQURfRkFDVE9SIGFu
ZCAtLW92ZXJoZWFkLWZhY3RvciB3aWxsIGJlIGFwcGxpZWQKV0FSTklORzogb3ZlcmhlYWQtZmFj
dG9yIHdhcyBzcGVjaWZpZWQsIGJ1dCBzaXplIHdhcyBub3QsIHNvIGJpdGJha2UgdmFyaWFibGVz
IHdpbGwgYmUgdXNlZCBmb3IgdGhlIHNpemUuIEluIHRoaXMgY2FzZSBib3RoIElNQUdFX09WRVJI
RUFEX0ZBQ1RPUiBhbmQgLS1vdmVyaGVhZC1mYWN0b3Igd2lsbCBiZSBhcHBsaWVkCkVSUk9SOiBB
Y3R1YWwgcm9vdGZzIHNpemUgKDI4NDI2MCBrQikgaXMgbGFyZ2VyIHRoYW4gYWxsb3dlZCBzaXpl
IDI2MjE0NCBrQgoKV0FSTklORzogL2hvbWUvdmVtL3Bva3kvYnVpbGQvdG1wL3dvcmsvdHFtbHMx
MDJ4YV9tYmxzMTAyeGEtcG9reS1saW51eC1nbnVlYWJpL2NvcmUtaW1hZ2UtbWluaW1hbC1kZXYv
MS4wLXIwL3RlbXAvcnVuLmRvX2ltYWdlX3dpYy40MzUxOjEgZXhpdCAxIGZyb20gJ0JVSUxERElS
PSIvaG9tZS92ZW0vcG9reS9idWlsZCIgd2ljIGNyZWF0ZSAiJHdrcyIgLS12YXJzICIvaG9tZS92
ZW0vcG9reS9idWlsZC90bXAvc3lzcm9vdHMvdHFtbHMxMDJ4YS1tYmxzMTAyeGEvaW1nZGF0YS8i
IC1lICJjb3JlLWltYWdlLW1pbmltYWwtZGV2IiAtbyAiJG91dC8iJwpFUlJPUjogRnVuY3Rpb24g
ZmFpbGVkOiBkb19pbWFnZV93aWMgKGxvZyBmaWxlIGlzIGxvY2F0ZWQgYXQgL2hvbWUvdmVtL3Bv
a3kvYnVpbGQvdG1wL3dvcmsvdHFtbHMxMDJ4YV9tYmxzMTAyeGEtcG9reS1saW51eC1nbnVlYWJp
L2NvcmUtaW1hZ2UtbWluaW1hbC1kZXYvMS4wLXIwL3RlbXAvbG9nLmRvX2ltYWdlX3dpYy40MzUx
KQo=

--_004_AM0PR09MB4066402C6F9DCEC298A30B89D7CB0AM0PR09MB4066eurp_--
