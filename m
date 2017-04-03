Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8EC3E006CD; Tue,  4 Apr 2017 21:48:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natalia_th92[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.66.15 listed in list.dnswl.org]
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
X-Greylist: delayed 39253 seconds by postgrey-1.32 at yocto-www;
	Tue, 04 Apr 2017 21:48:44 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092066015.outbound.protection.outlook.com [40.92.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3ECDE00546
	for <yocto@yoctoproject.org>; Tue,  4 Apr 2017 21:48:44 -0700 (PDT)
Received: from HE1EUR01HT075.eop-EUR01.prod.protection.outlook.com
	(10.152.1.46) by VE1EUR01HT076.eop-EUR01.prod.protection.outlook.com
	(10.152.3.119) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1005.5;
	Wed, 5 Apr 2017 02:17:39 +0000
Received: from DB5EUR01HT078.eop-EUR01.prod.protection.outlook.com
	(10.152.5.51) by HE1EUR01HT075.eop-EUR01.prod.protection.outlook.com
	(10.152.1.46) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.977.7;
	Tue, 4 Apr 2017 05:21:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=lxmQpSf2aD9Pk3NYrDhuAwmVWIAww5na7AdciwdyKWQ=;
	b=V3P79Dn4Qq3Y3Zc6mG3F/zkO+26oVODYRrSj9MLfeTlEXHSqP1+VMNMMH7SZe/3wbgFs2fbOXIRt+1MCop0yqDIb4WI2Bmd7oA29xMJTu1HdSW9KPUdL6egVshObCzkD/3BGqOgjf7eIhE4xIQLDJuH8sxjVafHPyw+SP69CnAD6q/yLmfVWpB+l8odQH7J3JwEfftTN9WcUgavUo6w8Iay0W1WH3ls5ZRqmvHaoOqPCENTiIQPsq3m1MuRRmhp4UPAwM5ZI9gB4qlYdUKMFQsSlv8hWCoSN4fc/y33/IbY7XT+ZHAPfPAUhLxdYBVlLmteOt6zlNkvm6Fjj34t7HQ==
Received: from DB5EUR01FT059.eop-EUR01.prod.protection.outlook.com
	(10.152.4.60) by DB5EUR01HT078.eop-EUR01.prod.protection.outlook.com
	(10.152.5.51) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.977.7;
	Mon, 3 Apr 2017 17:10:33 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com (10.152.4.53) by
	DB5EUR01FT059.mail.protection.outlook.com (10.152.4.164) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.5 via Frontend Transport; Mon, 3 Apr 2017 17:10:32 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) by
	VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) with mapi id
	15.01.1005.017; Mon, 3 Apr 2017 17:10:32 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: IoTivity on Yocto project
Thread-Index: AQHSrJywCQv1M+1egEC+hDdsDbBmuA==
Date: Mon, 3 Apr 2017 17:10:32 +0000
Message-ID: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:5BD20AC9EA11EC5C2F60B1FC6560512A84F64FEA414B0C61EED747C74332720D;
	UpperCasedChecksum:F58736E562E8AE0F16009D73B21FA67E641BA814EE3373F667C12638EA0E8F8C;
	SizeAsReceived:7916; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [7vOytctJHLpSs+fTF9nwnPtu4aEBP6wG]
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT078;
	5:LjkIeZ32jYH76WdzO3dkBuZxcs8WRvcU//G0IwSN5KDEhCsO7xGGwI7yOqtHyrkozA52xhYiEJZt4dx6uy/lNCwRs92gAYLn4ENxqht2B0/FlACyTPg3dk7FFJdYZFsqZzrrdnN9r/boANbVrtyQCA==;
	24:w5goiP3KF8zj0+0iOUHfb4d8EyBjQgIzpjY7WvmZXRKiL+S0Utnusv1B4Ljz9FGvNsXAA1jlocs+Izr7gI9l+fKB8PlVnz+bosykwMYtdvU=;
	7:GfkkzwYUhvNKc7SrO1vkUy4zJziCWl0C4mya/WWqOnFsszQfLavwunDmfx0mtoCHyLZC5KWEy5bO2suF/Yn+fdKqCeC8y8mrR7wKp6L8d4f6fxn7lL+reAP+M9WNlzcb04Jak0Ktgb9X+zGJqZkkwi++PZLqYTwFx3nA5YLRzgak2iwjly9snk1bPSIct+aj2wmY0rakAXTGNSD/a5XtvLTK0kmYHa5Hw/afYrfDwx9cSDPE/uuzpMErSOED1YtwAa4HvJeBub4uOHti//tnnmZVOgxm52mDijs7MW/UbXMe+sD1A6mAX4kfJKbB/pSs
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR01HT078;
	H:VI1PR05MB3376.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 866fdd01-c287-44ad-b4d1-08d47ab45620
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322274)(2017031324274)(2017031323274)(1601125374)(1603101448)(1701031045);
	SRVR:DB5EUR01HT078; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DB5EUR01HT078; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT078; 
x-forefront-prvs: 0266491E90
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2017 17:10:32.3299 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT078
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR01HT075;
	23:om4/gzBld+G5ibDnmzYrw8Vcgx4Tj5FPecCiZCawFwgHWBpPsd7jkieZ177hSw/JRabMPHp6SaOxktGH448jfRClYEHUkGj1qQ/Lnt1zmPYLwY2k/2CF4S1LRUprXbT6OS6Hi9XH7r95cein8fLiiA==
X-Microsoft-Exchange-Diagnostics: 1; VE1EUR01HT076;
	23:OY8UPh7cTyTjGbCf5ZpXt5duGaVgv+wL3b8n9JrQZW2gnBnpdnWztojsH2T0PmZzee9PJwLDEOFiK063HhirTXI1IeAc5ssr6zMDxv7pVltAo2jwmd3/8J8/t2WJJtBbZHhlj1Vp83YhexnPQlEbPQ==
X-OriginatorOrg: hotmail.com
Subject: IoTivity on Yocto project
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
X-List-Received-Date: Wed, 05 Apr 2017 04:48:48 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR05MB33768D6A8AB4303963AD7074F9080VI1PR05MB3376eurp_"

--_000_VI1PR05MB33768D6A8AB4303963AD7074F9080VI1PR05MB3376eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I need a help here.

Is it possible to add to an existing image created with Yocto project the I=
oTivity? Maybe bitbake the IoTivity layer to rpm?

Is it necessary to make an image including IoTivity?


Please if anyone knows I would like a help.

Thanks in advance.


Natalia

--_000_VI1PR05MB33768D6A8AB4303963AD7074F9080VI1PR05MB3376eurp_
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
<p>Hello,</p>
<p><br>
</p>
<p>I need a help here.</p>
<p>Is it possible to add to an existing image created with Yocto project th=
e IoTivity? Maybe bitbake the IoTivity layer to rpm?</p>
<p>Is it necessary to make an image including IoTivity?</p>
<p><br>
</p>
<p>Please if anyone knows I would like a help.</p>
<p>Thanks in advance.</p>
<p><br>
</p>
<p>Natalia</p>
</div>
</body>
</html>

--_000_VI1PR05MB33768D6A8AB4303963AD7074F9080VI1PR05MB3376eurp_--
