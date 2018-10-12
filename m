Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 913D5E00BA2; Fri, 12 Oct 2018 22:24:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.1.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 39456 seconds by postgrey-1.32 at yocto-www;
	Fri, 12 Oct 2018 22:24:15 PDT
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-oln040092001020.outbound.protection.outlook.com [40.92.1.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44127E00A0C
	for <yocto@yoctoproject.org>; Fri, 12 Oct 2018 22:24:15 -0700 (PDT)
Received: from BN3NAM01HT079.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e41::429) by
	SN1NAM01HT102.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e40::344) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1228.17;
	Fri, 12 Oct 2018 15:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=4fmle2NF5WHo/q+B5HiA5PvIJjUSQHC6Giva8fr9peY=;
	b=Ya/TIAFqYQSwBdS/oKECya/GtgjejwEYd1g38n0z3kTMfpB3ERYuHckNf1w+XSXVAkojHyLSrg3vTjEmBNfSKzfdZ/nTRUbgV0jL0hqizsb7BuIQUppbr2xXo9UGwTjOMCRsMELIbL+1nUINbowN0nhYWjnIh4h8ubu+FM5etL6LH93i2nT4LCGlYjbUP7MAMM7RF0T2yL+R5cfxs1oEkzYXnE+t9OraeQZ9yJbCnsVWhrFezy7G3SF5/T6x70bQ5qs0sN+D4D0N9MovGY7npRxcxHvNQEzi6JcOQZMhiXOoyp29CKh/72Yo2JIf+2xbIX0Ypkpe920WwIH817es4g==
Received: from BN3NAM01FT045.eop-nam01.prod.protection.outlook.com
	(10.152.66.58) by BN3NAM01HT079.eop-nam01.prod.protection.outlook.com
	(10.152.67.173) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.1228.17;
	Fri, 12 Oct 2018 03:29:44 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com (10.152.66.54) by
	BN3NAM01FT045.mail.protection.outlook.com (10.152.66.101) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.1228.17 via Frontend Transport; Fri, 12 Oct 2018 03:29:44 +0000
Received: from CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::c4cd:5f6f:9f8:5fa7]) by CY4PR19MB1093.namprd19.prod.outlook.com
	([fe80::c4cd:5f6f:9f8:5fa7%8]) with mapi id 15.20.1228.020;
	Fri, 12 Oct 2018 03:29:44 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Force rebuild to regenerate .ko
Thread-Index: AQHUYdvR5gAR/XyIlkKR803FN/gS0w==
Date: Fri, 12 Oct 2018 03:29:44 +0000
Message-ID: <CY4PR19MB1093B99F41A1F2F97E1427A3C5E20@CY4PR19MB1093.namprd19.prod.outlook.com>
References: <mailman.9.1539284401.19322.yocto@yoctoproject.org>
In-Reply-To: <mailman.9.1539284401.19322.yocto@yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2E446E72BC7F4C5F282DCFB7F197EC56B0F5351F9F718021B0BEA17913DD9769;
	UpperCasedChecksum:A4A692465A314A514FC1F24AA8E3EAF10A79045612A625930A5BD771CA0F60E0;
	SizeAsReceived:7110; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nEEKw5GpPCdCe5z7CW9z7dGVPiOMc8uhqWyzup/ynLd1WZCegnHUaWuL3jNUNsa8]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN3NAM01HT079;
	6:CjekjHUXr9X3TcCUWk/KJRwJS5KohQlvWOF788hl/uyevmW4ex/gMXdEDHeNrPt5CLVvaYfQzmCCrbS34CK2OvHNsa+9Fvf8r0DtqZAzRO3QgWcog4xrKx2MkBJkjeKaP5lpqq/Gak/zC6biN4Gu5wECWz6uX8AQ2gCYN56TYDSX3RvD2/kpcmRgPFdBjsthWC2Op6QOc8mgCg4BODmzV7jlldo05p+WKVg8Da22ERHT+lyPuOuzUcZh87ebHnpmPghVCFGPj/qBgXsvkP1kaU4fdebM9Y4WUVx04Rx80dYS28QqUUGqh1Z7nckxsi3OYO3WIOtHrEBPX2MxmMPYPxmf0FA3sP0A3PPB+VHK3sArOHAKEvfVt008ucZi2QyRUdaXr+N8y42lSUwvm3wtQ+5zMa1eS9GeBfuf3SHxyV8EjUeJcd3/fp2X4JkmwV/Vdvj3Q6i+6UmhZbmRf3xzuA==;
	5:BbclQU9gb0nS8O7P2zvbyTO5VqCNbeY65q9vULGa0VPuMBfsR4dTCz4D80CL6t/SXMpqhN64DWEGa92M6exeZAMbOXup4gmzkk4KDdRx+VbaMZM+CuRucofku7mbReNCgtjBpCi3Yc/IiSSqidp0mMiPGpSQmS6CSB4YHeGLpO8=;
	7:WhV5wAnr9sXuDWEpBZfQSrz0NLQHQJdKey/g5pmNnw27uQTjO6Z0lovu3veDc8K6LRQevKZd9kZyOKN+RE5jldovatv81+bXDLb6HR7zOBgagMT6DM5GjYSN7faSJcUz7TNjGxNZhcStDShNEsHCE6hZ8xmhQ+tLG+vQy3G+3XVs2BHi/zsHqHtcnGM7jLoDt8Yxi3Q2VDfFmb8ohFFNRPcYIXcHsLYiyZZDfdqzvH1cF76WBgZ4oV3k2OonFohw
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:BN3NAM01HT079; 
X-MS-TrafficTypeDiagnostic: BN3NAM01HT079:|BN3NAM01HT079:|SN1NAM01HT102:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:BN3NAM01HT079; BCL:0; PCL:0; RULEID:; SRVR:BN3NAM01HT079; 
x-microsoft-antispam-message-info: yXwSqGT8TxG/4HeCE9tnKqD/dEej2s9hwsbzQylcEN7u21RzeCjoDmPfm61JTOgQ
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 1aafe33f-267e-438a-1469-08d62ff2f413
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Oct 2018 03:29:44.2405 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM01HT079
X-OriginatorOrg: hotmail.com
Subject: Force rebuild to regenerate .ko
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
X-List-Received-Date: Sat, 13 Oct 2018 05:24:16 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CY4PR19MB1093B99F41A1F2F97E1427A3C5E20CY4PR19MB1093namp_"

--_000_CY4PR19MB1093B99F41A1F2F97E1427A3C5E20CY4PR19MB1093namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I've a Intel Ethernet driver, ixgbe.ko.  I made some changes (debug logs) t=
o the source file.  How do I force the .ko to be regenerated within yocto e=
nvironment, without rebuilding the entire yocto code base?

I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done.  This is even after I'd removed the cache and ss=
tate directories.

Thanks,
Raymond

--_000_CY4PR19MB1093B99F41A1F2F97E1427A3C5E20CY4PR19MB1093namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I've a Intel Ethernet driver, ixgbe.ko. &nbsp;I made some changes (debug lo=
gs) to the source file. &nbsp;How do I force the .ko to be regenerated with=
in yocto environment, without rebuilding the entire yocto code base?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I tried to do bitbake of the image name earlier, but bitbake decides that t=
here's nothing to be done. &nbsp;This is even after I'd removed the cache a=
nd sstate directories.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Thanks,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Raymond</div>
</body>
</html>

--_000_CY4PR19MB1093B99F41A1F2F97E1427A3C5E20CY4PR19MB1093namp_--
