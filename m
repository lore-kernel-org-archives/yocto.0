Return-Path: <n1gp@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A23B8E00E18; Wed,  9 May 2018 21:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (n1gp[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.2.91 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10773 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 May 2018 21:37:46 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092002091.outbound.protection.outlook.com [40.92.2.91])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8771E00DFE
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 21:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=76apMedVDYFZbG8QwHj0ltECKjkrlm6B0FuV4V/OF3w=;
	b=kkjEWI+iRtbd1WO7SoZwqG1VKaknicWYsHNlElPYvc5ODfWHff5caepxhxEbPBPGeIJvV8lUilbNoWUSgm00z+iXl0Vl+6+3ncxiFP/eI0YftKj3z9ibf+wfEgMiUBAcSgpOvHtq3NQlYFgB0Iv2reby2Mo9e1RmalV2BkCJjO48CrWE6/xDkKs9RXsI/a6MM/GL2KJ/v5wtouNfWeecgrr6PI8iPiNSPbaM+DAgKYF+d/JSd9Xmot2rGwiXw4XyBRuZEcCF9rfCnM26pV4FLoztC0tUHgntm9yitKjfCUMmzNiQ2LdhMEQAWFeD0zZxrrOoN7oLrI4PY8AvOCH+mw==
Received: from SN1NAM01FT053.eop-nam01.prod.protection.outlook.com
	(10.152.64.60) by SN1NAM01HT208.eop-nam01.prod.protection.outlook.com
	(10.152.64.143) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.715.13;
	Wed, 9 May 2018 20:03:27 +0000
Received: from BLUPR17MB0291.namprd17.prod.outlook.com (10.152.64.53) by
	SN1NAM01FT053.mail.protection.outlook.com (10.152.65.227) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.715.13 via Frontend Transport; Wed, 9 May 2018 20:03:27 +0000
Received: from BLUPR17MB0291.namprd17.prod.outlook.com
	([fe80::8f9:1618:4377:5c90]) by BLUPR17MB0291.namprd17.prod.outlook.com
	([fe80::8f9:1618:4377:5c90%6]) with mapi id 15.20.0735.021;
	Wed, 9 May 2018 20:03:27 +0000
From: Richard Koch <n1gp@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Looking at using Yocto, have General Adoption questions
Thread-Index: AQHT5t3yjSlk7RQ8s0Sm7eQQd1L+Xg==
Date: Wed, 9 May 2018 20:03:27 +0000
Message-ID: <BLUPR17MB0291DB7172500C2ECE762453879A0@BLUPR17MB0291.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2070745F7D8116F17B58DFBB9B8AAE02D6126B787BF02C22A2208DBE1351EC51;
	UpperCasedChecksum:353BD5B27334FF3FFAB7F9DC4DB07F27E077A1F04A88BB6484FED115478C9E53;
	SizeAsReceived:6894; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [zTfLce39AYclPLwTJu2wNbtPZWMHpsoW]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM01HT208;
	7:VdxH776VwDfUzN3/TjrcqtQcBgi4ZC3K44Jde8sy4qLzGRkzHbbB6TeXwp8E76WOfZQkZ2/NXNDnWZ+/ZS+yj6MU3ZiPmcRPBLrBIYx4R4xHJOW+RXiXolDlCyc/PgWBOnJwNGZ3YYbu12eLvT8AUswykjU83I0IiZLVc52J+qDn6le1iWSb/pvb3pjgmmCncMQj8o7JbaSW8gpmainUvnO3hyo+WrCSGaVhDzJPzDmtH/TmZ/UqvQhJ02jKPOOG
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125420)(1603101448)(1701031045);
	SRVR:SN1NAM01HT208; 
x-ms-traffictypediagnostic: SN1NAM01HT208:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM01HT208; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM01HT208; 
x-forefront-prvs: 0667289FF8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(189003)(199004)(174874002)(74316002)(5640700003)(55016002)(19627405001)(3660700001)(2351001)(73972006)(3280700002)(486006)(6346003)(54896002)(26005)(68736007)(86362001)(25786009)(476003)(1730700003)(81156014)(6506007)(20460500001)(83332001)(6436002)(7696005)(87572001)(33656002)(8936002)(59450400001)(102836004)(97736004)(105586002)(2900100001)(9686003)(104016004)(6606003)(5660300001)(106356001)(82202002)(6916009)(14454004)(8676002)(2501003)(5250100002)(99286004)(15852004)(88722002)(42262002);
	DIR:OUT; SFP:1901; SCL:1; SRVR:SN1NAM01HT208;
	H:BLUPR17MB0291.namprd17.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=n1gp@hotmail.com; 
x-microsoft-antispam-message-info: JgWM5x6jdGb2qC5XlEwM0K9eKc+qnPrECf1If/rLWECxmt9xQGY8HlfS4rn13WlZPijW+dQRWXiHKz+ct3brIzjZnN9SQ2HSZo+9ZZzFxDPal7varM98prEz/cubCsNvWLyxnB9las4GD061YWD4II1ENHZml8Fr+fRriWGSNOqJYascIB0BfSMnK8G08hNy
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 0d8a4fd8-e63b-41b9-2c5f-08d5b5e7eda2
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d8a4fd8-e63b-41b9-2c5f-08d5b5e7eda2
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: c001924d-3e68-4f40-89c2-901a49278da7
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2018 20:03:27.0903 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM01HT208
Subject: Looking at using Yocto, have General Adoption questions
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
X-List-Received-Date: Thu, 10 May 2018 04:37:47 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR17MB0291DB7172500C2ECE762453879A0BLUPR17MB0291namp_"

--_000_BLUPR17MB0291DB7172500C2ECE762453879A0BLUPR17MB0291namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello list.

I'm looking for some general use cases for how a firmware development team =
such as ourselves has adopted Yocto in to their non-Yocto based environment=
.

We have a group of firmware developers that currently develop for various i=
MX6 based
controller boards. For those boards we have not been using Yocto but utiliz=
e a patched kernel and u-boot from the SOM mfr.
We then modified those and developed our own rootfs (manually).

Our build is source controlled through SVN. We use Linaro based ARM cross c=
ompilers to
build u-boot/kernel and our applications. This is packaged up in to a .deb =
file and installed
as an upgrade on to an SDCard that already contains a baseline u-boot/kerne=
l/rootfs.

We have requirements for a new design that we would like to base off of the=
 NXP MCIMX7D-SABRE eval board.
For this eval board there is a suggested BSP that to use which is Yocto bas=
ed.

I have followed NXP's Yocto guide to download, configure, and build an SDCa=
rd image which boots
successfully on this eval board.

The Yocto build consumed ~26GB of disk space and took most of the day to bu=
ild on an i7 Quad 32GB Ubuntu 16.04 PC.

So I am wondering how to introduce this to our current build environment an=
d development team.
I understand the concept is to take the imx7dsabresd recipe/meta-layer/? an=
d port that to our own design.

After successfully porting the eval BSP to our own design;

How does a team of developers such as ourselves:

Control the source code changes?
Do we check/convert the whole Yocto git repo in to our SVN or is there a su=
ggested way to trim down to a manageable subset?
How do we update our new recipe/meta-layer/? when the NXP recipe/meta-layer=
/? we derived it from changes upstream due to security/bug fixes?

Appreciate any advice,

-Rick



--_000_BLUPR17MB0291DB7172500C2ECE762453879A0BLUPR17MB0291namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, EmojiFont, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;">
<p style=3D"margin-top:0; margin-bottom:0"></p>
<div>Hello list.</div>
<div><br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
I'm looking for some general use cases for how a firmware development team =
such as ourselves has adopted Yocto in to their non-Yocto based environment=
.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
<span style=3D"font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif, EmojiFont, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">
<span style=3D"font-size: 12pt;">We have a group of firmware developers tha=
t currently develop for various iMX6 based</span><br>
</div>
</div>
<div>controller boards. For those boards&nbsp;we have not been using Yocto =
but utilize&nbsp;a patched kernel and u-boot from the SOM mfr.</div>
<div>We then modified those and developed our own rootfs (manually).</div>
<div><br>
</div>
<div>Our build is source controlled through SVN. We use Linaro based ARM cr=
oss compilers to</div>
<div>build u-boot/kernel and our applications. This is packaged up in to a =
.deb file and installed</div>
<div>as an upgrade on to an SDCard that already contains a baseline u-boot/=
kernel/rootfs.</div>
<div><br>
</div>
<div>We have requirements for a new design that we would like to base off o=
f the NXP MCIMX7D-SABRE eval board.</div>
<div>For this eval board there is a suggested BSP that to use which is Yoct=
o based.</div>
<div><br>
</div>
<div>I have followed NXP's Yocto guide to download, configure, and build an=
 SDCard image which boots</div>
<div>successfully on this eval board.</div>
<div><br>
</div>
<div>The Yocto build consumed ~26GB of disk space and took most of the day =
to build on an i7 Quad 32GB Ubuntu 16.04 PC.</div>
<div><br>
</div>
<div>So I am wondering how to introduce this to our current build environme=
nt and development team.</div>
<div>I understand the concept is to take the imx7dsabresd recipe/meta-layer=
/? and port that to our own design.</div>
<div><br>
</div>
<div>After successfully porting the eval BSP to our own design;</div>
<div><br>
</div>
<div>How does a team of developers such as ourselves:</div>
<div><br>
</div>
<div>Control the source code changes?</div>
<div>Do we check/convert the whole Yocto git repo in to our SVN or is there=
 a suggested way to trim down to a manageable subset?&nbsp;</div>
<div>How do we update our new recipe/meta-layer/? when the NXP recipe/meta-=
layer/? we derived it from changes upstream due to security/bug fixes?</div=
>
<div><br>
</div>
<div><span style=3D"font-size: 12pt;">Appreciate any advice,</span><br>
</div>
<div><br>
</div>
<div>-Rick</div>
<div><br>
</div>
<p></p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"></p>
</div>
</body>
</html>

--_000_BLUPR17MB0291DB7172500C2ECE762453879A0BLUPR17MB0291namp_--
