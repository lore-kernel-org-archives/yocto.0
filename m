Return-Path: <pieter.cardoen@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9BEFE00D0B; Tue, 22 Aug 2017 03:24:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pieter.cardoen[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.96 listed in list.dnswl.org]
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
X-Greylist: delayed 36020 seconds by postgrey-1.32 at yocto-www;
	Tue, 22 Aug 2017 03:24:02 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067096.outbound.protection.outlook.com [40.92.67.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53AA6E00970
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 03:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ubbZodTlmemzKv8bg1R1ShZaohalkj9hFjqyl370nSw=;
	b=s4Y/Tolb2LNiUFd9dwMEiPq2uN08UiRU99OjHlbYHhWZkjlHvZ6BtP3FXPJnEO98JFmXoJ3QSEqpLkXrHLSKnLWFYte2IKbbdY2xy71evvva1jbwNn0o5Q0eAG4xL0Paoi2vUj6HBB13Evrj20qOfc3pZ3wsuukIR0uLuhJgKOluxoWHO0/Uco6xZXEUB6GyLjNuBx1oEafmmkqlzvl/HgtemU6OZaXybnf5OqAp2BjqMjKqJeVe5/4nCr8oqf3kBJWhNO+GB9iUl2gbuqedC94/mGU11GaOoc/4xYTdzAyzSjJtgDLrl/xVSSis09XhUls4Lf30A9tOt2lGFgdKhA==
Received: from HE1EUR02FT027.eop-EUR02.prod.protection.outlook.com
	(10.152.10.59) by HE1EUR02HT181.eop-EUR02.prod.protection.outlook.com
	(10.152.11.168) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1341.15;
	Mon, 21 Aug 2017 09:50:29 +0000
Received: from AM4PR08MB2899.eurprd08.prod.outlook.com (10.152.10.59) by
	HE1EUR02FT027.mail.protection.outlook.com (10.152.10.72) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1341.15 via Frontend Transport; Mon, 21 Aug 2017 09:50:29 +0000
Received: from AM4PR08MB2899.eurprd08.prod.outlook.com
	([fe80::2187:1717:695d:4287]) by
	AM4PR08MB2899.eurprd08.prod.outlook.com
	([fe80::2187:1717:695d:4287%13]) with mapi id 15.01.1362.019;
	Mon, 21 Aug 2017 09:50:28 +0000
From: Pieter Cardoen <pieter.cardoen@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: meta-raspberrypi: u-boot serial console on rpi 3 b
Thread-Index: AQHTGmK8/dVX8cmZE0mNmHlhnCpWOw==
Date: Mon, 21 Aug 2017 09:50:28 +0000
Message-ID: <AM4PR08MB28993716E41C0DD068249D208E870@AM4PR08MB2899.eurprd08.prod.outlook.com>
Accept-Language: nl-BE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:2D49DB4CCF0A90BF6F35587D2492BB19096D75F3DB0F92CE2A07A7FDBCDB4DFA;
	UpperCasedChecksum:F786A55EE7F9F8BB16B7DC5F22A088A3E6ACCBE1036C7088141D9C33BF7EFC5A;
	SizeAsReceived:6911; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [HCygsQ86LFXXvu9Uemq6xaKRAAnqo+Vs]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1EUR02HT181;
	6:sXQdBY0iAtTdDB5rAQpbTUW+UVZAnHKECLPSoSjJ3gPt5aabKfvmHqIeAV3hwHkagLzxs+1sBIlnpkMkq/y9ftwGaQOiHX3c64h7PnPpTJfZHYvbJGIQO8ZrzS6ftEg7MPYnctuG1NFoeH6yeFrYcCI6fk9e0bD5Y6de35WUDJKBowxFoHMk4qIvlZ3di021Q9ahUTZNW+FpK4tqX/11kQ8wn8WZSAJ4NBnEFbvxP2mmhgF+PKCcZTTtjLL06HLHRwN7yMpRqtfzrjeUXHxChFc6rGyuwZMxhStlBQPO57l5xo7uCWfcxTtm9Cuu6wZb3DHxBMROC14y2EemevMiTw==;
	5:/oBJejvA6DlfsDe1zJTD7jL4Gr/HtXe5TkQVqCaVpkS4RtdgS9bfY3/0Kp0xYIYM1vmFksRjYOf6jS6ReMvXRCoHoq7g0aOiG3SI5Gtib41o0U38NZDenIQOME6QqEifx/UoUeGRuqnj5H+ttoS4ng==;
	24:dYeMALLxJHlV92+fW5eQnzzBdfuYP5HWyfSfASAZ6DXv5WdDjrJItA1ku9aoPCN8eN3LWfQzA8ataC+NAskwmmMSpOFJnHl8+HTlrl6oLNE=;
	7:ZPipkUAFx1V4rKyeaGV7U0Kxx1Zvxz2+tZSV94ydLsxka0dIdG6UkuyOjvS6dL04FlCRFJJ1egmj6SvwT67R0Tj8sKWGBk/TIgiflYtXqxM1YMHhp8CCbUayHW+mvcRplrJOjn/I3SS1ImwECfqhbjdcnClhDaswP5Fl+Ngh71qjNPR+6RPy/1Vf1sozdLWClfjs8xDpbpwLRuVn4vb7nsnaB0xL3bL1+1++N7i2Arw=
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR02HT181;
	H:AM4PR08MB2899.eurprd08.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 1be32f5a-d359-4b52-3f35-08d4e87a0e24
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322377)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:HE1EUR02HT181; 
x-ms-traffictypediagnostic: HE1EUR02HT181:
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HE1EUR02HT181; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HE1EUR02HT181; 
x-forefront-prvs: 040655413E
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2017 09:50:28.6055 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT181
X-Mailman-Approved-At: Wed, 23 Aug 2017 15:14:16 -0700
Subject: meta-raspberrypi: u-boot serial console on rpi 3 b
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
X-List-Received-Date: Tue, 22 Aug 2017 10:24:04 -0000
Content-Language: nl-BE
Content-Type: multipart/alternative;
	boundary="_000_AM4PR08MB28993716E41C0DD068249D208E870AM4PR08MB2899eurp_"

--_000_AM4PR08MB28993716E41C0DD068249D208E870AM4PR08MB2899eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Dear


I noticed that the serial console is not working in u-boot on a raspberry p=
i 3 model B when I build an image using yocto morty branch.


Can anyone give me advice to solve this?


Thanks

Pieter

--_000_AM4PR08MB28993716E41C0DD068249D208E870AM4PR08MB2899eurp_
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
<p>Dear</p>
<p><br>
</p>
<p>I noticed that the serial console is not working in u-boot on a raspberr=
y pi 3 model B when I build an image using yocto morty branch.</p>
<p><br>
</p>
<p>Can anyone give me advice to solve this?</p>
<p><br>
</p>
<p>Thanks</p>
<p>Pieter<br>
</p>
</div>
</body>
</html>

--_000_AM4PR08MB28993716E41C0DD068249D208E870AM4PR08MB2899eurp_--
