Return-Path: <krzysztof.taborski@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 857EDE00D53; Tue, 23 Jul 2019 14:33:53 -0700 (PDT)
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
	*      [40.107.15.111 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-eopbgr150111.outbound.protection.outlook.com [40.107.15.111])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1D4AE00B8F
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2019 14:33:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=nOd80OWjWWngtpwmlYhFV5ueAennBPpgOyyJgI3IVKPJYuEwTIkj2CfHAqiSUY4T0NIauQpulzjKzE+kA+f9/5Rik4JPshjwjdWT9H8OccBheYSIk3CG6ayZJcO/wa4mSv8ecUON0sbFhEK1Ma5cVzn3CqhB9MhoO0XwX+nAqjT8JCM7Ws45782hSHPtgG7XaEAAMxgbsyqNRFqTEwtl/HkeBxphuCm+DPB71kffbo0Xr79eqyMVkml0/i2MGYZOdWmZebFBtXUmFXzeIm0ck6yj9DXYdi4VBK93LazW6HknfrMkLu8vo1dHjfOkESyGDGRqX4F/gW1WV0BiHc65Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=3P3TsL1d1jjdnD9tPT3XrgZDbqOML+PQax9POnTkeyM=;
	b=cGo+yRCEix41UDutLhNEgkweMoXcmBhmHPm6HMC/okQ4yQH2xeY5FpQOYOYgoF95rm8zdNxWA9Pts0bYEviP4G6SvF8cMO2SMFzSN4OlYWjggkD2qI3kbYXda/H2BV7nzuH0FBtxpeHx0UZbdHQ57FeGlL6l2a3hjdGt8XwOiDHlH7CV1MlSl4DHSWPzxI0f7SEffyWfrE/971FR//AxJGNdswsiL8bDa3hq4jOihjowTodTijCzIbqrxWrLZLf1yW26YvqdGfQKUBEZ3gUiFf9W7GKDzTbEpYQ7E5EX1dCBugZlX9e1hwescZwpIwTFYkw/ax9Dmnpz0+WztMulBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
	smtp.mailfrom=nokia.com;dmarc=pass action=none
	header.from=nokia.com;dkim=pass header.d=nokia.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=3P3TsL1d1jjdnD9tPT3XrgZDbqOML+PQax9POnTkeyM=;
	b=GrmpNNW0gV0S5iTwhPGU5UxS2AqiSWLPB3pX2Ts0KRtRSumKHkLCTO7RCTC/I1Lv4DHxRdx/qCZ8vSeTBlpoR40w4iTwExdULH645CIF8o15zneFP2XhfTGOygj2byzyzu4Lw3xE4BWaXRKEB0FateCaflGDFkS+OtgnTK+/vVY=
Received: from AM6PR07MB4868.eurprd07.prod.outlook.com (20.177.119.90) by
	AM6PR07MB5160.eurprd07.prod.outlook.com (20.177.198.14) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2115.10; Tue, 23 Jul 2019 21:33:50 +0000
Received: from AM6PR07MB4868.eurprd07.prod.outlook.com
	([fe80::ac57:f113:5f8d:87ed]) by
	AM6PR07MB4868.eurprd07.prod.outlook.com
	([fe80::ac57:f113:5f8d:87ed%6]) with mapi id 15.20.2115.005;
	Tue, 23 Jul 2019 21:33:50 +0000
From: "Taborski, Krzysztof (Nokia - PL/Wroclaw)" <krzysztof.taborski@nokia.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Recipes for gcc-native
Thread-Index: AQHVPkjh6Fk1aqmrF0SLX7ETrz/INKbXGcKAgAGkqag=
Date: Tue, 23 Jul 2019 21:33:50 +0000
Message-ID: <AM6PR07MB486827168C8F96D68E43C19F8CC70@AM6PR07MB4868.eurprd07.prod.outlook.com>
References: <AM6PR07MB48681013AFE59E28FAC8E5F38CCB0@AM6PR07MB4868.eurprd07.prod.outlook.com>,
	<CAMKF1spu+sTqG=_hMBg5rNqHVkRythDijbPf33ivW3Yaz6Z7_A@mail.gmail.com>
In-Reply-To: <CAMKF1spu+sTqG=_hMBg5rNqHVkRythDijbPf33ivW3Yaz6Z7_A@mail.gmail.com>
Accept-Language: pl-PL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=krzysztof.taborski@nokia.com; 
x-originating-ip: [2a02:a317:e240:4e80:ab8d:5bf7:45:10e8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a0f458b2-a6d8-4e22-3138-08d70fb573bf
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:AM6PR07MB5160; 
x-ms-traffictypediagnostic: AM6PR07MB5160:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR07MB51601A6C47DBC7ABD26EF9E28CC70@AM6PR07MB5160.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0107098B6C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(136003)(366004)(376002)(346002)(39860400002)(396003)(199004)(189003)(316002)(256004)(476003)(6436002)(11346002)(55016002)(2906002)(53546011)(6116002)(7696005)(7736002)(46003)(74316002)(52536014)(25786009)(5660300002)(19627405001)(68736007)(33656002)(105004)(76176011)(8936002)(86362001)(6506007)(966005)(81166006)(81156014)(4326008)(478600001)(186003)(606006)(14454004)(66946007)(486006)(54896002)(102836004)(6916009)(71190400001)(66556008)(64756008)(71200400001)(53936002)(66446008)(66476007)(8676002)(6306002)(236005)(9686003)(446003)(76116006)(99286004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM6PR07MB5160;
	H:AM6PR07MB4868.eurprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: H62tnm7n1nYUb4dDyGI4Rxx0wco+j6HcvfrhqyUpcKZcsoF5UC8qRQ5UTSFCDpIw3aebeBVoZI8360v6KZqkCpDKKBwCq/skFWhxkb47niFCv3TiXoJgkRu6ggNEhKeeY2D+k2MpEC6qY/bIP3GdTWCSmdgiqfsr9PppUMA4THc65GSP2l5E3YusCH37To53WAXO+1Ti8Daj7RaFyXusJSqVDcDwOv6JF031+LZhNOTOx5+XlfGx0wdZbaDJslIVWlcaqmxJjfprj5vFyLLjJeGeS14RGVY49dvHITM0Ck2QkVxLXdiX1Unjp9KYsHPEHzo3WRxM09jG470vorIB8/n7UKax7+ZJOqU9vXSiS1fOhNIy17JqnFFYIt7ot2qOsaL4UW02mGmCAoUAeuFnPJ88vKR+XCsAqtWzQ1Z86Dc=
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0f458b2-a6d8-4e22-3138-08d70fb573bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2019 21:33:50.0602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: krzysztof.taborski@nokia.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR07MB5160
X-Mailman-Approved-At: Mon, 29 Jul 2019 02:14:49 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: ODP: Recipes for gcc-native
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
X-List-Received-Date: Tue, 23 Jul 2019 21:33:53 -0000
Content-Language: pl-PL
Content-Type: multipart/alternative;
	boundary="_000_AM6PR07MB486827168C8F96D68E43C19F8CC70AM6PR07MB4868eurp_"

--_000_AM6PR07MB486827168C8F96D68E43C19F8CC70AM6PR07MB4868eurp_
Content-Type: text/plain; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

It's fully understandable for me, that gcc handling is more complex and har=
der to maintain, than other -native recipes.
Nevertheless I am feeling inconsistency, because all native tools can be de=
livered in container and native recipes would be not needed at all.


Best regards,

Krzysztof Taborski

________________________________
Od: Khem Raj <raj.khem@gmail.com>
Wys=B3ane: poniedzia=B3ek, 22 lipca 2019 22:22
Do: Taborski, Krzysztof (Nokia - PL/Wroclaw) <krzysztof.taborski@nokia.com>
DW: yocto@yoctoproject.org <yocto@yoctoproject.org>
Temat: Re: [yocto] Recipes for gcc-native



On Mon, Jul 22, 2019 at 1:14 PM Taborski, Krzysztof (Nokia - PL/Wroclaw) <k=
rzysztof.taborski@nokia.com<mailto:krzysztof.taborski@nokia.com>> wrote:
Hello,
I am wondering, if there is any reason, that yocto project does not deliver=
s recipes for gcc-native ( in similar way as python-native for example)?

It would allow to build native recipes with different/higher version of gcc=
, than this, which user has on my build servers.


This would not solve the problem fully and yet create more maintainer burde=
n since the supporting libraries are still coming from distribution underne=
ath and this would create yet another combination for variable

I think container approach would solve this for us in a nicer way

Most supported distribution do support newer compiler packages and that=92s=
 a better option since they would have tested it on that distribution to so=
me extent


Best regards,

Krzysztof Taborski

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto

--_000_AM6PR07MB486827168C8F96D68E43C19F8CC70AM6PR07MB4868eurp_
Content-Type: text/html; charset="windows-1250"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dwindows-1=
250">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
It's fully understandable for me, that gcc handling is more complex and har=
der to maintain, than other -native recipes.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Nevertheless I am feeling inconsistency, because all native tools can be de=
livered in container and native recipes would be not needed at all.&nbsp;</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; ba=
ckground-color:#FFFFFF; font-family:Calibri,Arial,Helvetica,sans-serif">
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Best regards,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Krzysztof Taborski</p>
</div>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>Od:</b> Khem Raj &lt;raj.khem@g=
mail.com&gt;<br>
<b>Wys=B3ane:</b> poniedzia=B3ek, 22 lipca 2019 22:22<br>
<b>Do:</b> Taborski, Krzysztof (Nokia - PL/Wroclaw) &lt;krzysztof.taborski@=
nokia.com&gt;<br>
<b>DW:</b> yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Temat:</b> Re: [yocto] Recipes for gcc-native</font>
<div>&nbsp;</div>
</div>
<div>
<div><br>
</div>
<div><br>
<div class=3D"x_gmail_quote">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Mon, Jul 22, 2019 at 1:14 PM Tab=
orski, Krzysztof (Nokia - PL/Wroclaw) &lt;<a href=3D"mailto:krzysztof.tabor=
ski@nokia.com">krzysztof.taborski@nokia.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
Hello,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
I am wondering, if there is any reason, that yocto project does not deliver=
s recipes for gcc-native ( in similar way as python-native for example)?</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
It would allow to build native recipes with different/higher version of gcc=
, than this, which user has on my build servers.</div>
</div>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">This would not solve the problem fully and yet create mor=
e maintainer burden since the supporting libraries are still coming from di=
stribution underneath and this would create yet another combination for var=
iable&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">I think container approach would solve this for us in a n=
icer way&nbsp;</div>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Most supported distribution do support newer compiler pac=
kages and that=92s a better option since they would have tested it on that =
distribution to some extent&nbsp;</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12p=
t; color:rgb(0,0,0)">
<br>
</div>
<div id=3D"x_m_1326624300113729320Signature">
<div id=3D"x_m_1326624300113729320divtagdefaultwrapper" style=3D"font-size:=
12pt; color:#000000; background-color:#ffffff; font-family:Calibri,Arial,He=
lvetica,sans-serif">
<p style=3D"margin-top:0px; margin-bottom:0px">Best regards,</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Krzysztof Taborski</p>
</div>
</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_m_1326624300113729320Signature">
<div id=3D"x_m_1326624300113729320divtagdefaultwrapper" style=3D"font-size:=
12pt; color:#000000; background-color:#ffffff; font-family:Calibri,Arial,He=
lvetica,sans-serif">
</div>
</div>
</div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
</div>
</div>
</div>
</body>
</html>

--_000_AM6PR07MB486827168C8F96D68E43C19F8CC70AM6PR07MB4868eurp_--
