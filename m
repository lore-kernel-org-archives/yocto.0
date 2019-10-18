Return-Path: <abhiarora4@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2DC9AE00DA9; Fri, 18 Oct 2019 00:49:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (abhiarora4[at]live.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.255.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255053.outbound.protection.outlook.com [40.92.255.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04C4DE00DA4
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 00:49:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=oGIR1OdZNLR6tIF4V2XXW6AMyxq/JrgbdR0JDL286yvXfyvgbSrxwcFIubJ6BanNms45pm3BoHwM9zBK8IJbCq+WPQTKUl7VN7iu88EzaPhlH+nxDC92eCw0GlXU9ES9GLf62kdtCuEy/tcRP+Qapd2hatzdYFc1u14qzjVmKjhcQtaO/hvRsSq/CyTa404dnXjBmVulu+u43P5lLKBSQayLAy4/7XG6ZiYVxICLg3BbIlF/w7IGJXHlD+0Med728dKjRvR52CiP3KTfGO4qrvhOyxMxFYxokH1WWkkuEWwqIMEZ37ptETuvbYpGMw95LyMKDevGkS55XPxrpI3ydg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LOAxUxgDrHOuL/ZYSvs7K//B15Y1OQ8UaGFHLXyy/7g=;
	b=feAsEsKDx/hoZeJbTv1LUdazkww2iKDJfZgKaEpS4IeI/d3oeGadaKSZRIpCUoCZJx6GRJGwXFSFxUgGekWzYCK+rJ3rixC+nJgbTJ1y3a8lJgSGarUJg4AHLFYGakP/GQLSYOOif/1mgX7M6hqlfqZUVHq5nn6mijIeLwap30O3k/LJ+ioV2hkgNpgO4M5RtkRiq4lcIDkUXkHyHZqnyHxeaFfE+rPGoaTKHqQjzw9wtIzBU8dpUkgq9u611XHNjj6VJWRS2rJGLDptOUPYOVz1VcMfZngMYs2tJt3tWA/SIOKxuy0PD3ajNwOW2kh+rCmPz9X5IqHgHuJLWCErcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=LOAxUxgDrHOuL/ZYSvs7K//B15Y1OQ8UaGFHLXyy/7g=;
	b=cSSGu55e3/cNPQEkEZqlgrO0TGuQQHWFdTYGzn8kJ0USav0hbGbxKZYJNpFxuGmU1WzGdjV6yuYK/v4Vf7VS5IewuNrb76R3R4RTj5r52DVq7Z0XOWOv4bVBD5yzgG87zLor1ejW+O/SIXyWWfKcHf8PYqHcuMKVkzCsYVfAhiIStXk4IhZ8n2PUtby1eRAToAEsCYw7EuQf3nZaz9JCnrkWO5a5MOTtKRZC+27WsIl6zlj+mtvo/7tWWZpnt43OkZJyIYRORZtROtF1WsLr7iEDJDQ3G0GzEFz2U3fzPxPGsgwIsaBQQBGfNYGpkbMH7gU3wNowVPgrGAGoh2A61A==
Received: from PU1APC01FT036.eop-APC01.prod.protection.outlook.com
	(10.152.252.60) by PU1APC01HT015.eop-APC01.prod.protection.outlook.com
	(10.152.253.145) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.14;
	Fri, 18 Oct 2019 07:49:05 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM (10.152.252.54) by
	PU1APC01FT036.mail.protection.outlook.com (10.152.252.207) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.2367.14 via Frontend Transport; Fri, 18 Oct 2019 07:49:05 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c]) by
	MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c%6]) with mapi id 15.20.2347.024;
	Fri, 18 Oct 2019 07:49:05 +0000
From: Abhi Arora <abhiarora4@live.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFPw==
Date: Fri, 18 Oct 2019 07:49:04 +0000
Message-ID: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2518BB410F6112C06CDD712C10A9DCBF7E56472B3761BDE1B0400F863AD540F9;
	UpperCasedChecksum:04155B2936C8C176C2C48D97DFE190FC64553860153D3EB002276D4B24CA8490;
	SizeAsReceived:6679; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [0y+cgNyiFKYjPR9sXKsB6s2+HURLYXNa]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: PU1APC01HT015:
x-ms-exchange-purlcount: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: br4TAgu6LaQFsFe9FXRRZupZVoK+zOOmit3Hs/YD2lsQf1MtYSxxcu0R4BNdWE8aHaz59dh+oE6VZwaxvsQcG7zyJhc0ZSSAODVj4LZvz5pcYb+PS3pX+Nt9SEEEcuCFGIT7VfRuOfLPj3SP5AQzxy1ftFJOZ3HI0ZFufVJUd2CxTk0Z0DLDy67Zup24C0nW1saoUtOQSVyCk9ofRahWL/xHT/DZ+cZMASMKvqVgI08=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 46791661-e94d-4d55-cb0c-08d7539fa63d
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Oct 2019 07:49:04.9208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PU1APC01HT015
Subject: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Fri, 18 Oct 2019 07:49:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB220688520F47DEEC5D530BD9FA6C0MAXPR01MB2206INDP_"

--_000_MAXPR01MB220688520F47DEEC5D530BD9FA6C0MAXPR01MB2206INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,
I am having an embedded system. We have bsp with python 3.5 but we want to =
reduce its size further. I am planning to have only oyc files but not sure =
how it can be achieved in recipes. Also, I want to know if there is a other=
 way to reduce the footprint.

Please help.

Get Outlook for Android<https://aka.ms/ghei36>


--_000_MAXPR01MB220688520F47DEEC5D530BD9FA6C0MAXPR01MB2206INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Hello,<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
I am having an embedded system. We have bsp with python 3.5 but we want to =
reduce its size further. I am planning to have only oyc files but not sure =
how it can be achieved in recipes. Also, I want to know if there is a other=
 way to reduce the footprint.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Please help.<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
<span id=3D"OutlookSignature">
<div dir=3D"auto" style=3D"direction: ltr; margin: 0; padding: 0; font-fami=
ly: sans-serif; font-size: 11pt; color: black; ">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
</span><br>
</div>
</body>
</html>

--_000_MAXPR01MB220688520F47DEEC5D530BD9FA6C0MAXPR01MB2206INDP_--
