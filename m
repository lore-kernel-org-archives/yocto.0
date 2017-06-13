Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A62B2E00B53; Tue, 13 Jun 2017 23:22:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.81 listed in list.dnswl.org]
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
X-Greylist: delayed 40895 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Jun 2017 23:22:48 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065081.outbound.protection.outlook.com [40.92.65.81])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0F6FE00B18
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 23:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=MWMbm59gpg7MnL95q/yS7SvgYmfktPp7bXx3V3Ypue4=;
	b=LK531kiK87AmdTQeRWMrHX1cKa9m47Je1wOeAVp62Drl0ljbWeihGJCfl3Rk9Nr+fB9vF1GOp6mmNVp6vSSUxSICcNEpz1xAN9f5qAmIRNAqH9GiHp7Sy5dg2l9tEZ1S2n9SWfyC21EPMBNF8nHWY9fw9QgIalMT5ilARayKpo68r8pRNBlLcWN9DEGMuBk51Ujc6LiDOEJNTZ3nVNQlVaWMQ/mD5nx3AnG4EAKyoJEqOSSkLwJRrB6SQtQmYvIr5P/kr97VlwYMXB87s6EUfLGDWOS3EBleb0goiqmLfpAmpBhOTz9ZoTPHTrRIu5BEgPrZ//kGsgm1lMHghZQKlQ==
Received: from VE1EUR01FT003.eop-EUR01.prod.protection.outlook.com
	(10.152.2.52) by VE1EUR01HT122.eop-EUR01.prod.protection.outlook.com
	(10.152.3.102) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1143.11;
	Tue, 13 Jun 2017 15:29:40 +0000
Received: from VI1PR0101MB2093.eurprd01.prod.exchangelabs.com (10.152.2.56) by
	VE1EUR01FT003.mail.protection.outlook.com (10.152.2.118) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1157.12 via Frontend Transport; Tue, 13 Jun 2017 15:29:40 +0000
Received: from VI1PR0101MB2093.eurprd01.prod.exchangelabs.com
	([fe80::6576:fc84:4acc:1bef]) by
	VI1PR0101MB2093.eurprd01.prod.exchangelabs.com
	([fe80::6576:fc84:4acc:1bef%14]) with mapi id 15.01.1157.017;
	Tue, 13 Jun 2017 15:29:40 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] How to figure out that a recipe is executed
	during the populatye_sdk task ?
Thread-Index: AQHS5FnfH2xUtAO/mkStnRi4dO/Kag==
Date: Tue, 13 Jun 2017 15:29:40 +0000
Message-ID: <VI1PR0101MB209366B9797722B392E0BD1C92C20@VI1PR0101MB2093.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:A345A28FD206BFC54F5A21A453508BB1AF5EBC77EBA2042A501D02166942497D;
	UpperCasedChecksum:2FBB1B73D625F64129F565AAA87556C6E0C6AFD6D477C7B50C5C552B8B1BCCBC;
	SizeAsReceived:7284; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Dn3lOZzH1g6ThfFUxp8YQsnbqAm+Nc6ZFinRuDJcTkNZrIm4ClSA7g==]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT122;
	24:0k+wHGZ/wSDxahdh+4OzxQpYuSD2689AQpuVqChyEVxHeY04mfKTVdHGAg28n4nWA0ARpse3SlSFiZvkRwNP2+IPHOPCa+SS7RzqdgqkOII=;
	7:vvXC2k4qNWIifdOGC2oNW19l5wppLYn8P6fu80S5wNW1MrhB4ayeryF4gWZvLquNVcPHH2qrMXyam6miWebHtW8fZPOBL70fJ319ySbWxC3ZVuKb1plwMtZCdt88C7v0WSf5ti/NnXQxUYxmXnOmBCWOb8jBTQ/Ud9dBleRRh0ioaFwx2f6oDt2PWLu5GhdjWgC1rMuJTQ3S+tbiREFKLOy6ht/38W6pGfiCTu6YGB1Xglhia5iLawpPhWP0Cg8FxGuFVDOlsZuscOOu9ifjRl+tQTXzskvqYlPz+ulPwtwUgm5ZKvRq2G/Z0yfPA4uw;
	23:LJSJc24KbMkG9QFTViGBgIycLgpwoLXrI2eRjqrmfIRmiVyv+c00+pIuHR8nJ1ReXCtWJ0PelMcz5YTEeM9Nd941l0yoWOCNsa2PYr2TmdHL38hRfl/7wD2LC+/jEHUiPvrV4HhOEyk9f565adQQDw==
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR01HT122;
	H:VI1PR0101MB2093.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-traffictypediagnostic: VE1EUR01HT122:
x-ms-office365-filtering-correlation-id: 616d7408-665c-41d1-0b3b-08d4b2710240
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:VE1EUR01HT122; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:VE1EUR01HT122; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VE1EUR01HT122; 
x-forefront-prvs: 0337AFFE9A
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jun 2017 15:29:40.3788 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT122
X-OriginatorOrg: hotmail.com
Subject: [bitbake] How to figure out that a recipe is executed during the populatye_sdk task ?
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
X-List-Received-Date: Wed, 14 Jun 2017 06:22:51 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0101MB209366B9797722B392E0BD1C92C20VI1PR0101MB2093_"

--_000_VI1PR0101MB209366B9797722B392E0BD1C92C20VI1PR0101MB2093_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I wrote a recipe for our ARM board linux that compiles a bunch of sources a=
nd produces some binary executables for the target board.


Everything is done properly with do_compile, do_install etc.

The binary executables that need to be deployed on the target board are ins=
talled in do_install handler.



Now, as we build the related SDK of our image (using bitbake -k my-image -c=
 populate_sdk) we need to install more binaries  from the recipe above.


Is there a flag in Yocto that indicates us that the recipe is called during=
 a populate_sdk task ?


What's the right proper way to achieve it, knowing that we are obliged by t=
he board vendor to use poky Dora.


Thanks.


Best Regards,


K

--_000_VI1PR0101MB209366B9797722B392E0BD1C92C20VI1PR0101MB2093_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>I wrote a recipe for our ARM board linux that compiles a bunch of source=
s and produces some binary executables for the target board.</p>
<p><br>
</p>
<p>Everything is done properly with do_compile, do_install etc.</p>
<p>The binary executables that need to be deployed on the target board are =
installed in do_install handler.</p>
<p><br>
</p>
<p><br>
</p>
<p>Now, as we build the related SDK of our image (using bitbake -k my-image=
 -c populate_sdk) we need to install more binaries &nbsp;from the recipe ab=
ove.</p>
<p><br>
</p>
<p>Is there a flag in Yocto that indicates us that the recipe is called dur=
ing a populate_sdk task ?</p>
<p><br>
</p>
<p>What's the right proper way to achieve it, <u>knowing that we are oblige=
d by the board vendor&nbsp;to use poky Dora</u>.</p>
<p><br>
</p>
<p>Thanks.</p>
<p><br>
</p>
<p>Best Regards,</p>
<p><br>
</p>
<p>K</p>
</div>
</body>
</html>

--_000_VI1PR0101MB209366B9797722B392E0BD1C92C20VI1PR0101MB2093_--
