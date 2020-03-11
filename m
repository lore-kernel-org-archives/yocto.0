Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.6491.1583886552914932426
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 17:29:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@msn.com header.s=selector1 header.b=H2YXUIom;
 spf=softfail (domain: msn.com, ip: 140.211.169.56, mailfrom: cashtrevor@msn.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73817E0181A; Tue, 10 Mar 2020 17:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_IMAGE_ONLY_32,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (cashtrevor[at]msn.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.92.22.86 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of words
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12olkn2086.outbound.protection.outlook.com [40.92.22.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 969E4E01818
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 17:29:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nL06Naum+vgySnWpXZUcJ1H5iRPU6npY05cb6ZeRvqTaAAAzqOXZKeGQ+S+UbfFpQ/Mhy7txQaFQ693VObJXAJ5+NXlPzgPAAe/5skpuHexrJeayGjovqk2K0/CKa10uMuo1AqBtD02eZqw5LbL1RUxpT/AXcZXcDjFzPdMCsGr1SteGHKOUbAfSY3Z/v6V9eQTkQacjajKoadRJAZx2krU5RBsh2eT9fsIFneNdRDiGjYeVzxXGIaM5q8NNtQMMGoQlARVf2th8lw7SjK+Opo/aHMBkvcuzyEHF3lkPzdIdcDCVlhcn+WMtlnXHlaDbidVj0GoCLymgkHHgSMH44g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1o0LmjsIFl4w4aDwIY/zn7IbHo1r/5CFyqSl7yVZQlI=;
 b=GY+eom678zIlEpXZjoD+DFkrao775GnTw/XNlcpwe8hpwBgRhh4z3++736t7gy2o2eKmsehTHgR4vhNGOB7NLuQ8ZpiDaODa7CK1VjleTpwZ4BuI56imuzindyPVKfm7o4chBUbzd313x4IhF6Z8i5XOsnk1Y+Fg3qg/el95gAr4pZI+sjeOuEeBYmVdn9XsD+uTZF07esZp2OBsGqJQETGtJebTuC9ZaS7VZvgv03nVx2wZgqOat/Gi2LrRxGvo8IE6Z83/3Y+y90B7eearGgiiks/tbMRiM/EotLqrrXowbSliMpb8fWHFW74ZWqil/gPP8eLMGK6rMiISzjE6dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1o0LmjsIFl4w4aDwIY/zn7IbHo1r/5CFyqSl7yVZQlI=;
 b=H2YXUIomwx38z098GIQppkz7KPmCNfP+CWwLjDFBEoLRobqA2IwTUXV9Ro4+j26rjzLnH+kCMJEpd4l9WewzjM6J/gjL5uM/zaZO4wgKY67iF/jScH8Cl2AWmCYcAyL1IoAXNuVCmSv510Yn3z/+AV5NFjSouYHWxeCi0QgIxMC1t/1ogzAjBvDHoA25OXyX+n6uFD+xCUWjwUE/KK0GGb54A6qdKng+8p49EXryffyR8QkZam31fvHnvWabPxmFVEFvXB7pYPbXqRXKXaAa9KhDkmzuBr8D+67KOvhIFYtb5YCVI784t14cTGO7+BW9L1xqS0kyX7BCpz9HFhj9sQ==
Received: from BN8NAM12FT022.eop-nam12.prod.protection.outlook.com
 (2a01:111:e400:fc66::3b) by
 BN8NAM12HT258.eop-nam12.prod.protection.outlook.com (2a01:111:e400:fc66::93)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.6; Wed, 11 Mar
 2020 00:29:08 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com (10.13.182.57) by
 BN8NAM12FT022.mail.protection.outlook.com (10.13.183.82) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.6 via Frontend Transport; Wed, 11 Mar 2020 00:29:08 +0000
Received: from CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8]) by CH2PR13MB3368.namprd13.prod.outlook.com
 ([fe80::55a5:5dab:67de:b5d8%5]) with mapi id 15.20.2814.007; Wed, 11 Mar 2020
 00:29:08 +0000
From: "Trevor" <cashtrevor@msn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: uboot netboot
Thread-Topic: uboot netboot
Thread-Index: AQHV9zu7Fh9uAKm6SEO68PQgyLFGiw==
Date: Wed, 11 Mar 2020 00:29:08 +0000
Message-ID: 
 <CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: 
 OriginalChecksum:FC24666A68194BBAC943FBDC5C6C1D2B17BC787CBA5C1E1767F291D757C5BB59;UpperCasedChecksum:F1758BFB340E852F39FE209FA704F12CD35D168061EA566DB4472C8A2B9AB6F0;SizeAsReceived:6776;Count:42
x-tmn: [zxTK7qH/IRTdpaGloUNQg6r6aZKg7znHDAuHXCKROK8/DkkUpXEqQZYi25fVczIs]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 1b0c8b07-e56a-43d7-13ee-08d7c5533699
x-ms-traffictypediagnostic: BN8NAM12HT258:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QluH4mr4qfsQohIEfdMjnRDLjlykn0RtZFdihNmwO+VFn+rKBMGGTW5NQfwffA2OxwjGbj7edD4Ti9DrKSlJPhOvlW8FGPHR1WT/uPGXcMlu74DpThmErfgETUop63iPfVU/PIaGy5E/CRvz7gE95wv9YjSSU1YsUvdFcAPpaBWzkrws60psj6NtCG1UPsqq
x-ms-exchange-antispam-messagedata: 
 N3Qt9iCNyFLlDwGoQkTXtwe0H/xf1sKJ7XsnyW83rGetl/g8Y7sr628C79Sj61qrgQTgVo5Ml0PDsLl6nlQ7ADQXi6vcBG9rxUPRkpl+foT61OgyTMS93C83l/GK0v0atoywkTOC2op8GYkEK5SVCf93yR8hXrrEnyONI6wJzlYVV0oYEAQpK1HFsAagJgyRf0c+hr3s0uVTL9AIB5ttEQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b0c8b07-e56a-43d7-13ee-08d7c5533699
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2020 00:29:08.4853
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM12HT258
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0CH2PR13MB3368namp_"

--_000_CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0CH2PR13MB3368namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Yocto Project,

I am working with a IMX8 based board from TechNexion.

I am having troubles getting the board to boot using netboot from within ub=
oot.

I have the tftp server setup as well as the NFS server setup on the host ma=
chine.

Initially seems things to mount ok and the kernel starts to work with the r=
emote filesystem.  then I get the following message in the kernel boot:







Trevor

[X]

--_000_CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0CH2PR13MB3368namp_
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
Hello Yocto Project,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am working with a IMX8 based board from TechNexion.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I am having troubles getting the board to boot using netboot from within ub=
oot.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
I have the tftp server setup as well as the NFS server setup on the host ma=
chine.&nbsp;&nbsp;</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Initially seems things to mount ok and the kernel starts to work with the r=
emote filesystem.&nbsp; then I get the following message in the kernel boot=
:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<div></div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols,EmojiFont,&quot;Apple =
Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI =
Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0px; margin-bottom:0px">Trevor</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><img><br>
</p>
</div>
</div>
</div>
</body>
</html>

--_000_CH2PR13MB3368BAA668F15A3D8A43EB77D4FC0CH2PR13MB3368namp_--
