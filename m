Return-Path: <gemad@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF51FE00944; Wed, 12 Jul 2017 15:31:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gemad[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.31 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 10814 seconds by postgrey-1.32 at yocto-www;
	Wed, 12 Jul 2017 15:31:23 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067031.outbound.protection.outlook.com [40.92.67.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 341C7E008FF;
	Wed, 12 Jul 2017 15:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=qW2SlwVUK4JOkl2RyMsso2OjVSjK6lSkTP7Bi6QtUxU=;
	b=jxqkCL8pMnoQvJsogvCvb0mCZ3iK0im5KXXQKTkODwiPQqbwoL+W9PUlnY836xm70YKjVjJ14/79jDcspGh7G/qB14ujCg7mGyjZZZcRHZi8v/+5P8n4oqIEC6aT2uwNpSUNItGYX/EHYP4mjznQtcGdlaI5RUwOo0z9W8wZZqznPkcn6tscqjq2/HC8pWFCuj+qavL4ovumeMDoXI682LPApsAwOfRPtyoG7Y7+1prExWjrPVGSJSVjJQSLMVrVIy7RVusS1ppoQ6Jtbm50ur3ixYf1LCCn8SobXB5oPIxgLEVhLpJJ8VMWAVfrY0exNxaIZem55GkV6PTsUbxnCQ==
Received: from HE1EUR02FT009.eop-EUR02.prod.protection.outlook.com
	(10.152.10.52) by HE1EUR02HT199.eop-EUR02.prod.protection.outlook.com
	(10.152.11.91) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1240.9;
	Wed, 12 Jul 2017 10:55:52 +0000
Received: from AM4P191MB0163.EURP191.PROD.OUTLOOK.COM (10.152.10.60) by
	HE1EUR02FT009.mail.protection.outlook.com (10.152.10.103) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1240.9 via Frontend Transport; Wed, 12 Jul 2017 10:55:52 +0000
Received: from AM4P191MB0163.EURP191.PROD.OUTLOOK.COM
	([fe80::d162:3159:9b6e:c2da]) by AM4P191MB0163.EURP191.PROD.OUTLOOK.COM
	([fe80::d162:3159:9b6e:c2da%17]) with mapi id 15.01.1261.015;
	Wed, 12 Jul 2017 10:55:52 +0000
From: george emad <gemad@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"linux-yocto@yoctoproject.org" <linux-yocto@yoctoproject.org>
Thread-Topic: [yocto] [ARM][Renesas Salvator x Board R-car] PERF events
	support 
Thread-Index: AQHS+v0WO28pMI8yJEWgE1kZWRwzkQ==
Date: Wed, 12 Jul 2017 10:55:52 +0000
Message-ID: <AM4P191MB0163121FBFB93578DB662A8BB6AF0@AM4P191MB0163.EURP191.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=outlook.com;
x-incomingtopheadermarker: OriginalChecksum:BE5B3044E12B63C3D4C4E6257B743C53AD57274C845DDD0764AC2F5EB7CBAC48;
	UpperCasedChecksum:B01BB99C8EF84C395F67B48A0B8C1D15F05508CD17DB300225BA0F5A3B6D058D;
	SizeAsReceived:7183; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [9ljogAdYiLqn8QvruYuhZDNJCQ5/N4b5]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT199;
	7:nCVDLk1Wqb+mE8NO0BYTETQDGjNmq+JeT0/5W4RJ9q01b0BQQKVms3qek9gsUta2gtL4LD81mKX6+N4YXa4lgBZS8KtTCiSYb3lyVbO6oMt9LoSmNFF6R6FU/K2wfAyjq7T6Tad19jc90L6j0fyyIHpjzAW4eFejRIXtACwW1M8zDOtuwzXCmnS579f4kJnwdigrPVcPh8U2ppB60y8/Lp47PsLVf2/2p/gYNEq4wlfDDpsOd0uQF1AXfGAoqzuS8RHCEexoGcgdt72fMXV57kZtA68z0WIFXc/ldBrDdW5dge/xos0wxNlqf1ajT5qpZ7PQKXAl6r4Go0ldywVroXzTq/6Xm1WWdEGKmvDw92ENOlbLjGIgknQZsdEb4r4Hb0vnriKFdQ0pywTJ3EMiuAP1/VOjafD6PD+7elShT7JI6767mDP5K3MOBLPspy+NdV2/3UuGuadi9lm2LIvCWJZcEsSC5YUtO/ICqzYcLRVsGS54MMN9tx3SW8ezpemNLKaR1kc4KkRLfXaPXyMzgSL8bRkzuR15FcojbyonaYjnmRwsRS+/uxozeH1IX80Fg0idEznBhT3QuW5Nyju7jDNkSFYwQ2UWZDs8uxzPSmOHUmeIde6R5u6qJtWgzcHPF+EA4PI4wvHKvRoQaH32kIZDrEGza2Fn+SX/M0Wb2YRl0u1OQcxoQE0QhxwAvMjvKRYQXV80FOc/PTHRF5NMW4D517Ge/HvbmTavPDntEJqukxYQmK5xJobu84CXkzAAeEOVNx7R3xanDJ9cUsdTwQ==
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR02HT199;
	H:AM4P191MB0163.EURP191.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 25dab563-3397-49dd-b3c0-08d4c9149092
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1EUR02HT199; 
x-ms-traffictypediagnostic: HE1EUR02HT199:
x-exchange-antispam-report-test: UriScan:(133145235818549)(236129657087228)(209349559609743); 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HE1EUR02HT199; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1EUR02HT199; 
x-forefront-prvs: 036614DD9C
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jul 2017 10:55:52.7519 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT199
Subject: [ARM][Renesas Salvator x Board R-car] PERF events support
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
X-List-Received-Date: Wed, 12 Jul 2017 22:31:31 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AM4P191MB0163121FBFB93578DB662A8BB6AF0AM4P191MB0163EURP_"

--_000_AM4P191MB0163121FBFB93578DB662A8BB6AF0AM4P191MB0163EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All ,

I want to ask if anyone managed to Run the PERF tool utilities that depends=
 on the "perf events" as i have problem
finding the path "/sys/kernel/debug/tracing/events" in my build even after =
configuring all the necessary options and recipes and many tries.


some information about my system :
- salvator x board M3
-Renesas Yocto Version tested 2.9 And 2.16



Thank you in Advance

Best Regards,

George Eamd

--_000_AM4P191MB0163121FBFB93578DB662A8BB6AF0AM4P191MB0163EURP_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"">
<p style=3D""><span style=3D"font-size: 12pt;">Hello All ,&nbsp;</span><br>
<br>
<span style=3D"font-size: 12pt;">I want to ask if anyone managed to Run the=
 PERF tool utilities that depends on the &quot;perf events</span><span styl=
e=3D"font-size: 12pt;">&quot; as i have problem&nbsp;</span><br>
<span style=3D"font-size: 12pt;">finding the path &quot;/sys/kernel/debug/t=
racing/events&quot; in my build even after
</span><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Helvetica,=
 sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji=
&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&qu=
ot;, EmojiSymbols; font-size: 12pt;">configuring&nbsp;</span><span style=3D=
"font-size: 12pt;">all
 the n</span><span style=3D"color: rgb(0, 0, 0); font-family: Calibri, Helv=
etica, sans-serif, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI=
 Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Em=
oji&quot;, EmojiSymbols; font-size: 12pt;">ecessary&nbsp;</span><span style=
=3D"font-size: 12pt;">options
 and </span>recipes and many tries.<span style=3D"font-size: 12pt;">&nbsp;&=
nbsp;</span></p>
<p style=3D"color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-seri=
f, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, No=
toColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emoji=
Symbols; font-size: 12pt;">
<span><br>
</span></p>
<p style=3D"color: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-seri=
f, EmojiFont, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, No=
toColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, Emoji=
Symbols; font-size: 12pt;">
<span>some information about my system :&nbsp;<br>
-&nbsp;salvator x board M3&nbsp;<br>
</span>-Renesas Yocto Version tested 2.9 And 2.16<br>
<br>
<br>
<br>
Thank you in Advance&nbsp;<br>
<br>
Best Regards,&nbsp;<br>
<br>
George Eamd&nbsp; </p>
</div>
</body>
</html>

--_000_AM4P191MB0163121FBFB93578DB662A8BB6AF0AM4P191MB0163EURP_--
