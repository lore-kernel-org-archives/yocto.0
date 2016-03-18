Return-Path: <fatalfeel@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 724E4E00C71; Fri, 18 Mar 2016 09:41:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_05,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (fatalfeel[at]hotmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0352]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.27 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Mar 2016 09:41:36 PDT
Received: from BAY004-OMC1S16.hotmail.com (bay004-omc1s16.hotmail.com
	[65.54.190.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 189ACE00C2E
	for <yocto@yoctoproject.org>; Fri, 18 Mar 2016 09:41:36 -0700 (PDT)
Received: from APC01-SG2-obe.outbound.protection.outlook.com ([65.54.190.60])
	by BAY004-OMC1S16.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 18 Mar 2016 09:40:35 -0700
Received: from SG2APC01FT009.eop-APC01.prod.protection.outlook.com
	(10.152.250.54) by SG2APC01HT003.eop-APC01.prod.protection.outlook.com
	(10.152.250.76) with Microsoft SMTP Server (TLS) id 15.1.434.11;
	Fri, 18 Mar 2016 16:40:33 +0000
Received: from KL1PR0601MB1429.apcprd06.prod.outlook.com (10.152.250.57) by
	SG2APC01FT009.mail.protection.outlook.com (10.152.250.158) with
	Microsoft SMTP Server (TLS) id 15.1.434.11 via Frontend Transport;
	Fri, 18 Mar 2016 16:40:32 +0000
Received: from KL1PR0601MB1429.apcprd06.prod.outlook.com ([10.169.69.19]) by
	KL1PR0601MB1429.apcprd06.prod.outlook.com ([10.169.69.19]) with mapi id
	15.01.0434.021; Fri, 18 Mar 2016 16:40:32 +0000
From: jesse stone <fatalfeel@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: debug question
Thread-Index: AQHRgTTO2uk8Rftm0EKPil6CUytkjw==
Date: Fri, 18 Mar 2016 16:40:31 +0000
Message-ID: <KL1PR0601MB14291BD3A54FC5AE200B92F6BB8C0@KL1PR0601MB1429.apcprd06.prod.outlook.com>
Accept-Language: zh-TW, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 25.152.250.57)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 25.152.250.57 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [5g0H3rpXGImfPnPfUcOwJv+oVk9Wzr9Q]
x-eopattributedmessage: 0
x-forefront-antispam-report: CIP:25.152.250.57; IPV:NLI; CTRY:GB; EFV:NLI;
	SFV:NSPM; SFS:(10019020)(98900003); DIR:OUT; SFP:1102; SCL:1;
	SRVR:SG2APC01HT003; H:KL1PR0601MB1429.apcprd06.prod.outlook.com;
	FPR:; SPF:SoftFail; MLV:ovrnspm; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: 5bd3ccbc-9b4c-402e-e681-08d34f4c05ac
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(5061506196)(5061507196);
	SRVR:SG2APC01HT003; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:SG2APC01HT003; BCL:0; PCL:0; RULEID:; SRVR:SG2APC01HT003; 
x-forefront-prvs: 088552DE73
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2016 16:40:31.3666 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT003
X-OriginalArrivalTime: 18 Mar 2016 16:40:35.0086 (UTC)
	FILETIME=[E50222E0:01D18134]
Subject: debug question
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
X-List-Received-Date: Fri, 18 Mar 2016 16:41:38 -0000
Content-Language: zh-TW
Content-Type: multipart/alternative;
	boundary="_000_KL1PR0601MB14291BD3A54FC5AE200B92F6BB8C0KL1PR0601MB1429_"

--_000_KL1PR0601MB14291BD3A54FC5AE200B92F6BB8C0KL1PR0601MB1429_
Content-Type: text/plain; charset="big5"
Content-Transfer-Encoding: base64

YWZ0ZXIgaW5zdGFsbCBZb2N0byBhbmQgbWV0YS10b29sY2hhaW4tcXQ1DQoNCg0KMS4NCg0KaWYg
bCB1c2UgUXQtY3JlYXRvciB0byBkZWJ1ZyBteSBhcHBsaWNhdGlvbg0KDQp0aGUgZGVwbG95IGFu
ZCBkZWJ1ZyBhZGFwdGVyIHVzZSB1c2Igb3Igcmo0NSBjb25uZWN0b3I/DQoNCg0KDQoyLg0KDQpp
ZiBJIHVzZSBZb2N0byBBRFQgdG8gZGVidWcgbXkgYXBwbGljYXRpb24NCg0KdGhlIGRlcGxveSBh
bmQgZGVidWcgYWRhcHRlciB1c2UgdXNiIG9yIHJqNDUgY29ubmVjdG9yPw0KDQoNCg0KMy4NCg0K
QW55IHdheSB1c2UgUXQtY3JlYXRvciBvciBZb2N0byBBRFQgYW5kIGRlYnVnIG9ubHkgdXNlIFVT
QiBsaWtlIGFuZHJvaWQgam5pDQoNCkNhbiBvbmUgVXNiIHBvcnQgZG8gZGVwbG95IGFuZCBkZWJ1
Zz8NCg0KDQp0aGFua3Mgfg0KDQoNCg==

--_000_KL1PR0601MB14291BD3A54FC5AE200B92F6BB8C0KL1PR0601MB1429_
Content-Type: text/html; charset="big5"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dbig5">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p></p>
<div class=3D"jive-rendered-content">
<p>after install Yocto and meta-toolchain-qt5</p>
<p><br>
</p>
<p>1.</p>
<p>if l use Qt-creator to debug my application</p>
<p>the deploy and debug adapter use usb or rj45 connector?</p>
<p style=3D"min-height: 8pt; padding: 0px;">&nbsp;</p>
<p>2.</p>
<p>if I use Yocto ADT to debug my application</p>
<p>the deploy and debug adapter use usb or rj45 connector?</p>
<p style=3D"min-height: 8pt; padding: 0px;">&nbsp;</p>
<p>3.</p>
<p>Any way use Qt-creator or Yocto ADT and debug only use USB like android =
jni<br>
</p>
<p>Can one Usb port do deploy and debug?</p>
<p><br>
</p>
<p>thanks ~<br>
</p>
<p><br>
</p>
</div>
<br>
<p></p>
</div>
</body>
</html>

--_000_KL1PR0601MB14291BD3A54FC5AE200B92F6BB8C0KL1PR0601MB1429_--
