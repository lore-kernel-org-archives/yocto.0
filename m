Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C5ABE00BA1; Thu,  5 Apr 2018 21:41:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.4.108 listed in list.dnswl.org]
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
X-Greylist: delayed 74033 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Apr 2018 21:41:10 PDT
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-oln040092004108.outbound.protection.outlook.com [40.92.4.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D944E005A9
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 21:41:10 -0700 (PDT)
Received: from SN1NAM02HT148.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e44::80) by
	CY1NAM02HT022.eop-nam02.prod.protection.outlook.com
	(2a01:111:e400:7e45::114) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.653.8;
	Thu, 5 Apr 2018 21:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=oq/AMtTiSfl0Upf1MsjAJhNXQAqxp+tK4tSXSLUIB/0=;
	b=pgDlycMxb7Z2R2aVa2uoezerie98PJgytlVoa5gJV7gUqHGV9gTc6iCih8f5iDM5m9Iw465hvBz3ZS+iS3aKE0Ecu73WqNE8nDL4CX35gUto6BtoWNEsTVyNWXu5SNvQGaCyGH+sG/e/tXSs8muTmr+IUXU3yk3DZMaaQ5QJuDIoamhv7Kv4Wi26/U1+20J6le4hcoTOzMrc+TrIw3h9IsgHRrZo9xdU2ysAi9MPJfc9bEsMOH8Vi6CFSC2lEsInQ1wvu/+bYhBZxmV7FPa+rftpnMIn+WqaHKOyhZNPHp6IZhug2Q6j0BOQIGO1mshS02a3TrgZhYyvbsCwoH645g==
Received: from SN1NAM02FT023.eop-nam02.prod.protection.outlook.com
	(10.152.72.52) by SN1NAM02HT148.eop-nam02.prod.protection.outlook.com
	(10.152.72.80) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.631.7;
	Thu, 5 Apr 2018 07:33:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.72.52) by
	SN1NAM02FT023.mail.protection.outlook.com (10.152.72.156) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.653.8 via Frontend Transport; Thu, 5 Apr 2018 07:33:31 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::74e9:81a5:f67b:ae41%17]) with mapi id 15.20.0631.013;
	Thu, 5 Apr 2018 07:33:31 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Adding debug output in recipe
Thread-Index: AQHTzLAit2+6n2Xi7EWx49+fo7yXrg==
Date: Thu, 5 Apr 2018 07:33:31 +0000
Message-ID: <MWHPR19MB1183F00410877C3D80A2A59AC5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:51B6D5C7813F24AB38F108C09FA7260E25A4124AC35AEDE182FBF0B8DD3FCED9;
	UpperCasedChecksum:6CC078A5055D35A27746812C78A7A6157FAEB7AE52F47D513F58C7DC6B02BAC8;
	SizeAsReceived:6965; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [7rQNYOcbQZALlN1+bXwTGhAeJP74v15aI0dQoCxnjLKgmS1ezqs08yTqQ+o8o/qp]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM02HT148;
	7:NMAhu3E3Rih3AqEuv5oAxztojgCVaTiH8TH0KcCAbMbSShAIapIxvNPucG3Fv0mkUn2nI5tFjhI1eteQ4afwtiXVY70F9oBMTHlBvHxkWkPZs1en7UHrNj2oa/01G9zcfsha8z+Pl0dJxPmVMGeVvnOozwbQFPyYYc3XZIgP/S+Xfqh5+PvvSxqRqpMvIRWxdGEU1sq11VEWEt15DQoYcPOOIaCfNH46/nXpCTBNnJkVFZDtGNO4MFXFJTRmkVzL
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SN1NAM02HT148; 
X-MS-TrafficTypeDiagnostic: SN1NAM02HT148:|SN1NAM02HT148:|CY1NAM02HT022:|CY1NAM02HT022:
x-ms-office365-filtering-correlation-id: 573c8bd0-78d1-4050-a5d1-08d59ac78838
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM02HT148; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM02HT148; 
x-forefront-prvs: 06339BAE63
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM02HT148;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: YuPUhqtzCCDZw+ARiuCqTmHk9hYl1+n/Cr5OzUwwt/364aR0P4SkcrqBC0AJFJJa8css651RmpPYUfKbaNV8ca/iA4vgZPrZeG5xM9nP45uuIh08sX3/IZSdHD70KpASTXPCfMvZRjaTyGk7CUhOdrhXRZ49U1YwSp99+WJMnWBZjkvOFg5WrotZ4HqlO3Vh
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 573c8bd0-78d1-4050-a5d1-08d59ac78838
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2018 07:33:31.7063 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM02HT148
X-Microsoft-Exchange-Diagnostics: 1; CY1NAM02HT022;
	23:Gld0Fny4248ZUPVemn1FfZl8PvNRxumifXLp44pSskbTgK4OkxpZYbjogvgMjM9O09544I9MG6Q7iPgXcrr8PqW/CR5Bt11SS95MxDmuoQecmGS1WTzQnI0HSNWhAChnWR/6NEp8b+HnUt1rIZ5zwA==;
	23:feLqwUJQpUotUBxToPdjqM4J8lSQiM4rMVgARtZF6M5W7YldqRCsnUX2li8KgVxBnvpTUbLkJSKgny/tCXNHr6qwALkvCpf1dSq7gwoEu/YNRS4qmeGIXYj4FJk642PHgnOH0BADTZNJdE+AbNCSMQ==
X-OriginatorOrg: hotmail.com
Subject: Adding debug output in recipe
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
X-List-Received-Date: Fri, 06 Apr 2018 04:41:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183F00410877C3D80A2A59AC5BB0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183F00410877C3D80A2A59AC5BB0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Is there a way to add simple debug output (ideally don't need to control de=
bug level) to echo out values of variables?  I tried the bb.xxx variants, b=
ut couldn't get them to work.


Raymond

--_000_MWHPR19MB1183F00410877C3D80A2A59AC5BB0MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">Is there a way to add simple debu=
g output (ideally don't need to control debug level) to echo out values of =
variables? &nbsp;I tried the bb.xxx variants, but couldn't get them to work=
.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond</p>
</div>
</body>
</html>

--_000_MWHPR19MB1183F00410877C3D80A2A59AC5BB0MWHPR19MB1183namp_--
