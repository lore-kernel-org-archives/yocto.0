Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C4F8E00E19; Fri, 17 Jun 2016 03:05:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.55.234.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0109.outbound.protection.outlook.com [157.55.234.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B543FE00DC8
	for <yocto@yoctoproject.org>; Fri, 17 Jun 2016 03:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=RXFcNHKyhBZmkle7D87Eo2rhanpDpcI/Im45yThc9aM=;
	b=b1LW4Jq2tnnHOCOWMYjAEjx3ir+jfBe7LNZjy3KaP6ypal0mak2DGUz1MxEDHYfSNAk9HGt+kiodMiqoDNaVgQJiZZxDhx3i2V+jHw9NCXonWDRkwafl284+ZBKjEfTcmV8sFhrxP+k+s/Q/5YRl75zztn+UmREMl9cuusLdJW4=
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com (10.161.111.145) by
	VI1PR07MB1056.eurprd07.prod.outlook.com (10.161.111.148) with Microsoft
	SMTP Server (TLS) id 15.1.523.12; Fri, 17 Jun 2016 10:04:25 +0000
Received: from VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) by
	VI1PR07MB1053.eurprd07.prod.outlook.com ([10.161.111.145]) with mapi id
	15.01.0511.017; Fri, 17 Jun 2016 10:04:25 +0000
From: "Woronicz, Bartosz (Nokia - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Is there repository for Yocto documentation ?
Thread-Index: AdHIf5K4NJ7lcXftRXWSAA/vk5mNag==
Date: Fri, 17 Jun 2016 10:04:25 +0000
Message-ID: <VI1PR07MB1053399DA94761E52AD7FD7481570@VI1PR07MB1053.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bartosz.woronicz@nokia.com; 
x-originating-ip: [131.228.2.19]
x-ms-office365-filtering-correlation-id: 6c2fd3de-803e-49c8-7134-08d39696c37d
x-microsoft-exchange-diagnostics: 1; VI1PR07MB1056;
	6:BINxWXUeRESdfj98IqxDSHjRqtpqEa7L1vS98VLPWTCSygXVrUWifwLDSlV+t2PJa5hJbtbMQSJQr/Qkel8O+qdhmYz2T97qZQOYTq5rEOVDoMyV+gZNibBrWXrkAmySbsUvbC0yD6kacrPBbTGvcFyrQZxnsngncQLv2gSbKkcOLvMEVFnn2pyyKyXi7XQEVQ0ImjnVRsMph0JT8IOtOiKTgyhNhaQ4wxJ/vQFktdZ9zB4jDH2m8dNEmPBCbppM3OuzdxRxLfJlSm6howyvVQvMrQFSoRoR6jt4ZXSp/FE=;
	5:Rw2f8jNbHqvcRolQttCWqCZ+cbtqmg0obIacqDb5+1i7rtqimgIAgM1H4ZEPDt2HFkU4gFSZPyBjzMis3XGFRzuWVAJqBDy9dE2SoA9GCWVdU1h+9PlVTVVuKf/nTVt8/nfZX1ittOk5RljeSJIsSA==;
	24:34NwuTZkizSYlprqceAhiukAFmoatRfqCoIHqRU7erUCzGcGJEQ34v7a3tCYQjoNXOSa0b6kCO8HK7sf7ndFHF/1osO7yYVyAwiU4ajn6uU=;
	7:BAZGWmIgaYWMtBwwIFxufj+yYody8uR916H0vKLQW/RHq8v7zkwz8bFZMeciy8FIgdWb5nVVdgHWpif/s8si+uRX0MJ2+J4EgaTKT9sZNiMJ4RNFPyumH+pMgdONW0y2syXXYKjXuLWMZY0atazhMpDGKGrc8TwbJr0NEYOHPe/JaF2JBrqBtWMlggPgRaePSHL0hUFTdm09l3UsbJ7EOlZv0+T3Vh1f/oJf85aNj7ElP0hnzQZJUqC5HaAM9F00
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:VI1PR07MB1056;
x-microsoft-antispam-prvs: <VI1PR07MB1056A759DB8851C24B82027681570@VI1PR07MB1056.eurprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(21748063052155);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:VI1PR07MB1056; BCL:0; PCL:0; RULEID:; SRVR:VI1PR07MB1056; 
x-forefront-prvs: 09760A0505
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(71364002)(199003)(189002)(229853001)(2351001)(54356999)(50986999)(5004730100002)(106356001)(92566002)(19580395003)(101416001)(74316001)(5003600100002)(105586002)(33656002)(5002640100001)(86362001)(10400500002)(66066001)(87936001)(3280700002)(3846002)(102836003)(2501003)(5008740100001)(2900100001)(2906002)(76576001)(8936002)(81156014)(8676002)(15975445007)(450100001)(9686002)(586003)(189998001)(1730700003)(77096005)(81166006)(3660700001)(5640700001)(6116002)(68736007)(122556002)(107886002)(110136002)(11100500001)(97736004);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR07MB1056;
	H:VI1PR07MB1053.eurprd07.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: nokia.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2016 10:04:25.6535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5d471751-9675-428d-917b-70f44f9630b0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB1056
Subject: Is there repository for Yocto documentation ?
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
X-List-Received-Date: Fri, 17 Jun 2016 10:05:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR07MB1053399DA94761E52AD7FD7481570VI1PR07MB1053eurp_"

--_000_VI1PR07MB1053399DA94761E52AD7FD7481570VI1PR07MB1053eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I would like to push some fixes to docs how can I do it ?

Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw




--_000_VI1PR07MB1053399DA94761E52AD7FD7481570VI1PR07MB1053eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from rtf -->
<style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left:=
 #800000 2px solid; } --></style>
</head>
<body>
<font face=3D"Calibri" size=3D"2"><span style=3D"font-size:11pt;">
<div>I would like to push some fixes to docs how can I do it ?</div>
<div>&nbsp;</div>
<div>Kind regards,</div>
<div>Bartosz Woronicz</div>
<div>Engineer, Software Configuration (SCM)</div>
<div>Nokia Networks - PL/Wroclaw</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
</span></font>
</body>
</html>

--_000_VI1PR07MB1053399DA94761E52AD7FD7481570VI1PR07MB1053eurp_--
