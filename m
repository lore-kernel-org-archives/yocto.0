Return-Path: <avishay@magosys.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B3FE00D6A; Tue,  6 Mar 2018 03:05:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.98 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 50255 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 Mar 2018 03:05:34 PST
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0098.outbound.protection.outlook.com [104.47.2.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D89E00833
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 03:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=magosys.onmicrosoft.com; s=selector1-magosys-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=pC/XM/cGz1kCJ59M6+ia2cPy0csXO5S0zuouoSILMmY=;
	b=a517xFR2Zw27KYhh6ONC71X/0xGuE0IdXgvhY/jstkkUVutGJoFC3QFmF8LADnbVoEZD1/GSCPgEhe46a3R30JW47+CnGvwetijMDCBFX+hZ4LYQXQpX2Q1wlPKYseCofos53NSO6fN7jjGpQw2SHkJUSQqPq369fw/72rqscWs=
Received: from AM4PR0401MB2052.eurprd04.prod.outlook.com (10.166.131.138) by
	AM4PR0401MB1940.eurprd04.prod.outlook.com (10.166.130.154) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.548.13;
	Mon, 5 Mar 2018 15:37:06 +0000
Received: from AM4PR0401MB2052.eurprd04.prod.outlook.com
	([fe80::8040:b34a:6de2:49f2]) by
	AM4PR0401MB2052.eurprd04.prod.outlook.com
	([fe80::8040:b34a:6de2:49f2%13]) with mapi id 15.20.0548.016;
	Mon, 5 Mar 2018 15:37:06 +0000
From: Avishay Orpaz <avishay@magosys.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: SDK without qemu
Thread-Index: AQHTtJfLOktxPrhwPkq5vA70MC8WpQ==
Date: Mon, 5 Mar 2018 15:37:06 +0000
Message-ID: <AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0@AM4PR0401MB2052.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=avishay@magosys.com; 
x-originating-ip: [94.159.139.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM4PR0401MB1940;
	7:Q7dK90/pKY8m1iw5CORn8s3Oj/+M3fmtJONrI/Nf4BSpPU+65WXX6ImsrtoP6QxaaJveraq26osvfUzO93KdJ16z4P6q4ugt9FSsDAeK/opcSkujoqG7L/eOhchYpCjaNuW5O/1tJhCDLKFork5X+qrT+j/uHZUeTOjIprGl3ZsQfASsuF/SpdV6LlifsLxmd7DL88qGQHyT1+dLkqGYotjsPpzmCl61EAy53Wg58n/nqWhooiQiwj2yKXZIfoa+
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: bd98022e-6d12-4695-aa1f-08d582aef373
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(7021125)(5600026)(4604075)(3008032)(4534165)(7022125)(4603075)(4627221)(201702281549075)(7048125)(7024125)(7027125)(7028125)(7023125)(2017052603307)(7153060)(7193020);
	SRVR:AM4PR0401MB1940; 
x-ms-traffictypediagnostic: AM4PR0401MB1940:
x-microsoft-antispam-prvs: <AM4PR0401MB1940EB4AAEC3A35211714634B5DA0@AM4PR0401MB1940.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040501)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(10201501046)(3231220)(944501244)(52105095)(6041288)(20161123564045)(20161123562045)(20161123558120)(20161123560045)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:AM4PR0401MB1940; BCL:0; PCL:0; RULEID:;
	SRVR:AM4PR0401MB1940; 
x-forefront-prvs: 06022AA85F
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(346002)(376002)(366004)(39380400002)(39830400003)(396003)(189003)(199004)(558084003)(106356001)(99286004)(19627405001)(105586002)(14454004)(7696005)(316002)(6436002)(97736004)(66066001)(2351001)(4270600006)(9686003)(53936002)(54896002)(55016002)(5640700003)(68736007)(6606003)(6916009)(81166006)(81156014)(2906002)(8936002)(7116003)(3660700001)(74316002)(8676002)(86362001)(5250100002)(25786009)(3480700004)(3846002)(6116002)(7736002)(5660300001)(2900100001)(6506007)(1730700003)(2501003)(478600001)(26005)(102836004)(186003)(33656002)(3280700002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM4PR0401MB1940;
	H:AM4PR0401MB2052.eurprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: magosys.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: qAxpeUwknG5uOZ/OdrAl7XwHi2UAJ3GYUBg7nJHIESl8+uKZgRgSk4C6O5lZad/bQEkVnCWGW9274qGJPZmZRUY+MYA03yDEyMAEZk0+viQnvf7m6Eb0+XKxyvh6g54yJBZBi4j5dOc4RXjgFFMQczBZ5sOjuK4rMGPETL2G1pqlZTXHFwXuJi0XjFTazGWl9V2IYEw1kpJ1NNLSDyxBaP77lNUk6OvLOh8Dvz6s7nAVpmNkq7jtO8hhs78VU0SS+ZQMW/EC8EX+YtbFFUlJONJjoQ9HXDAI9Er77MNRwm1J9I/20ND6xy9jZANTKfuBTPyx0lkwDuWnfDDwC8d/nw==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: magosys.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bd98022e-6d12-4695-aa1f-08d582aef373
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Mar 2018 15:37:06.1750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 30681796-2d60-4e11-a7b7-84f050998428
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0401MB1940
Subject: SDK without qemu
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
X-List-Received-Date: Tue, 06 Mar 2018 11:05:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0AM4PR0401MB2052_"

--_000_AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0AM4PR0401MB2052_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a way to build an SDK without qemu?


Avishay



--_000_AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0AM4PR0401MB2052_
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
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Is there a way to build an SDK wi=
thout qemu?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Avishay</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
</div>
</body>
</html>

--_000_AM4PR0401MB20524F7CABC4D3C44ECC6513B5DA0AM4PR0401MB2052_--
