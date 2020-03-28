Received: from APC01-HK2-obe.outbound.protection.outlook.com (APC01-HK2-obe.outbound.protection.outlook.com [40.107.130.90])
 by mx.groups.io with SMTP id smtpd.web10.12338.1585420579781171275
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 11:36:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=o8297R56;
 spf=pass (domain: hcl.com, ip: 40.107.130.90, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgbXEgHqtXh5PZengL70uBS9WgguDA25KYfNzCC2vUI=;
 b=o8297R56F5wKShEdlkyeAoLo02KMFkdKXHxvTNh9/krIwxFsAfjvlsimbW4oZTQNa5ZUIk5XyAusx6vXoUipMKMIwCH0PyrGrMcVMh3fqq4P69YmeJB0m5+Py9wg5jeDzQkTPReGZmrxc+SqxWs7UeJmOVTb7l6YkaDVKN8zJ4M=
Received: from SG2PR04CA0188.apcprd04.prod.outlook.com (2603:1096:4:14::26) by
 TY2PR04MB3934.apcprd04.prod.outlook.com (2603:1096:404:8005::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Sat, 28 Mar
 2020 18:36:15 +0000
Received: from HK2APC01FT005.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:14:cafe::5b) by SG2PR04CA0188.outlook.office365.com
 (2603:1096:4:14::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Sat, 28 Mar 2020 18:36:15 +0000
Authentication-Results: spf=pass (sender IP is 192.8.245.52)
 smtp.mailfrom=hcl.com; outlook.com; dkim=pass (signature was verified)
 header.d=HCL.COM;outlook.com; dmarc=pass action=none header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.245.52 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.245.52; helo=APC01-SG2-obe.outbound.protection.outlook.com;
Received: from APC01-SG2-obe.outbound.protection.outlook.com (192.8.245.52) by
 HK2APC01FT005.mail.protection.outlook.com (10.152.248.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 18:36:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g690/W341s/xseeBF7beNLrzCXmeSmR871MOA6r5ohNhaIuEhAaaPP8dleJ7yqZxtjpefDTZFEVmjQPHGBNDh3gXYzxBNxmSuQYgL6PXfqQaBeo1uO4uSbymH1VqhVDLMHTYYgVZV1iO/lO3JX2haK3itSbHjOM0jVraznYVuHciGXAFW6BIqs0wLgrK/EsqTQq4gn9igB7DZSAMmME4XN6LN/FXnaXs53W06cPGyLd0np0KxI91C3Gk8zUeJSjolJXSAKeN0HFYUThwFLBz1R5yHZZEnmnGuiWH/GwcoUmZv2IgwtwAeivEza/Ywrzexxp2q4yxVqsYhQ4t5z7vOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgbXEgHqtXh5PZengL70uBS9WgguDA25KYfNzCC2vUI=;
 b=blo05KNpNoeoDnRTV6mHwDbN4HRuV+yykEnGmGE4Jcc4hqhSZTWzcVZEVjW5ovMh+FqXvVz0XKJ/bEphuLELbVe7Z5z5xFaXSKA5uP/Eg077txGPD9BNIapA7wTBvVsvVwdPl08pwHmk1FBT7L6fic7StckOtgTwPxJhf/QwPxOeecc2xcpXQSfqxEK6SA9pWhDffg+WTp2M/exp9Zx1dgOGsoRKlrYlAz3bR3Qmyz2Nd/XVLfuffujk57PDvsSQvjj+TGfog5lATvHxCvgnnlJtC7s81e8Sda4U7hX5fG62fsTrNdXqXU3PmhgVirwoAltP8ojc30QTqnRIrbF7Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UgbXEgHqtXh5PZengL70uBS9WgguDA25KYfNzCC2vUI=;
 b=o8297R56F5wKShEdlkyeAoLo02KMFkdKXHxvTNh9/krIwxFsAfjvlsimbW4oZTQNa5ZUIk5XyAusx6vXoUipMKMIwCH0PyrGrMcVMh3fqq4P69YmeJB0m5+Py9wg5jeDzQkTPReGZmrxc+SqxWs7UeJmOVTb7l6YkaDVKN8zJ4M=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2659.apcprd04.prod.outlook.com (20.177.29.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Sat, 28 Mar 2020 18:36:12 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 18:36:11 +0000
From: "Ajam Ali" <ajama@hcl.com>
To: Konrad Weihmann <kweihmann@outlook.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
Thread-Topic: [yocto] Fw: Reducing rootfs size in yocto
Thread-Index: AQHWBQOpsr5y8icioEWpKGlX+EE4S6hd/pa9gAAMD4CAAEjOCg==
Date: Sat, 28 Mar 2020 18:36:11 +0000
Message-ID: 
 <HK0PR04MB2914C357A6A0A484356ED66BB4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>,<VI1PR05MB4286DCEF29A234000881D0F9A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
In-Reply-To: 
 <VI1PR05MB4286DCEF29A234000881D0F9A8CD0@VI1PR05MB4286.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.57.232]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 312bc07d-a742-4b19-9d3e-08d7d346e5f8
x-ms-traffictypediagnostic: HK0PR04MB2659:|TY2PR04MB3934:
X-Microsoft-Antispam-PRVS: 
	<TY2PR04MB39343C454F22DA4F9F9BA0B0B4CD0@TY2PR04MB3934.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;OLM:5797;
x-forefront-prvs: 03569407CC
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(136003)(366004)(346002)(376002)(396003)(39860400002)(9686003)(45080400002)(86362001)(4326008)(33656002)(81166006)(81156014)(52536014)(8676002)(55016002)(19627405001)(6506007)(478600001)(2906002)(7696005)(53546011)(966005)(6916009)(316002)(71200400001)(76116006)(91956017)(66946007)(5660300002)(186003)(8936002)(66556008)(66446008)(64756008)(66476007)(26005);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 PjEGVpxBLO6NeMuYtLmCJ7nOS8sP15J7fnt3VaWf95mogFQGhBzDM3GLcici1wmFYzyKBdxKU4tBkqgRYu13laSH3wmW9r8FFf+G/FGxDx/NcKsBB4BWJkVYxXnktNsAcFrXiSgJQy+xX2+JNzJ2iE7mny1GEqwxNANgAfiV4X0UQhgLAZjJkonYLTnhUlpAenzcPIE14nPtN1iRQafkmehSCpKRoQQfECCKv273gx2rOw+6RnhDZK3Ovate85SvbCVNPRnrZwXLdZvobJcsypFXM3D0OunRWSuhde3vnvEP7YNMkZB5y86gPeh8S8iY7BrZEbe1HTk0zRSSaf/4u8e4XzxOPqG04fE77ZMH7d0y1ytzfi37LtSM8UMR19XqEVjd8QARPA444O2Z3JShe5R/Uuo+S8TTvqHFEk4ABiOcZVTB6x+T15C8PgZeXG2bdLcpnXPN5VIsL3jf6lCqULIuxioh2djrYCjPF462liVigBOpUmSvVdae7ynyynfACk60Aqf1OZ3iit2Eu3FYJQ==
x-ms-exchange-antispam-messagedata: 
 tKKGAt7bDSR18GYECnyKdSieD1iTDioNxjcmNGbw18ixnXIdbcWceHq1iyEWj6mKtaFiPUaVnUiY4rmnAT/SFDtJSD1EhjDcsyZSLUUTdQfx4AEam71sLF3RwTYPOx6nqFhbNRAVfnQr9mA57vTmIA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2659
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT005.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.245.52;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-SG2-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(81156014)(26005)(45080400002)(316002)(336012)(8676002)(7696005)(2906002)(53546011)(19627405001)(82740400003)(86362001)(55016002)(9686003)(6916009)(8936002)(32650700001)(81166006)(356004)(6506007)(70586007)(70206006)(966005)(36906005)(33656002)(5660300002)(4326008)(478600001)(186003)(52536014);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	777d78a4-215a-407f-93d2-08d7d346e3ad
X-Forefront-PRVS: 03569407CC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lRkRQSHuVmMH2lRTrz7ctki/d2A8kZdmoN+Iw4BBxNd8ENTtHGk8c6PQ2oPtGBYcDYJN1JKW7o5bdRuOc/p11YiB2BIsFLryzecouDVVLSIQea+sL/0gqDhQi9TN+HTkN3F938t6V/vSkOyV/+4D8KpV8tWPP+sBUROSLbmBcx7uJ5i49F7JJb7wBdYtQ9KkLX1urzemwnUvnTJyHMZgENcW5P4voLFuJQ5Iw4oowFQAokJu7jbT73x/+WT3D3dXrl7uJtyuFTLiEtRiNIf0nKZUQ9rnt9pFs8zC1gNUQi5xnHyEnc0uABrD0zBgwpM+J3SBjybxX3FTQwcclN++bB/6dAnPgujXVEtBJwEgO3ja+998jr5/Mqhj1NiIoaWMW1jMwSGeqfO5c92ht1zn1wq9B888Svpw73FxhMKZI+/MbBTzmxu1RXPxDmCHHuZmXloK8KLbeArtjmkBRYNgcQQ7arOR8U7P+nnPmoqGGthnNzklhchNFnjbljYI6fGLohVlRoJjPfK0RsC6b5TmljvOrFyJZxvnxQ2+/1zTnPfREDSs7GJZ+SDMDIHBfKwTgyyxwEAza1y4y83Dl5L9cA==
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 18:36:15.0534
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 312bc07d-a742-4b19-9d3e-08d7d346e5f8
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.245.52];Helo=[APC01-SG2-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TY2PR04MB3934
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB2914C357A6A0A484356ED66BB4CD0HK0PR04MB2914apcp_"

--_000_HK0PR04MB2914C357A6A0A484356ED66BB4CD0HK0PR04MB2914apcp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Konrad,

Actually my current image size is 3.9GB because of heavy size packages req=
uired by my project and without project required packages my image size in =
Yocto is 800MB.

I want to reduce the image size as maximum as possible.


Thanks a lot in advance,
Ajam Ali
________________________________
From: Konrad Weihmann <kweihmann@outlook.com>
Sent: Saturday, March 28, 2020 7:38 PM
To: Ajam Ali <AjamA@hcl.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto


[CAUTION: This Email is from outside the Organization. Do not click links =
or open attachments unless you trust the sender.]

Pretty general questions, but I try to answer your question.


I don't know what the purpose of your image is, but installing development=
 tools like boost-dev or gcc (I guess that is what you mean with cpp) makes=
 your image automatically a lot bigger, I would suggest to put devtools int=
o a SDK, which could be shipped separately.


Next thing you can do is to analyze the what is actually so big in your im=
age, e.g. by creating a tar.gz of the image, unpacking it and browsing by '=
du -sh *'.
You can get the package/recipe to a file by using 'oe-pkgdata-util find-pa=
th <path>'.


In the identified recipe you can look for PACKAGECONFIG or OE_EXTRACONF sw=
itches that you don't need and disable them.


As said, I don't know what the purpose/environment of your image will be l=
ike, but you could also consider to use a different fs-format like squash.


In general if you want small images preferring musl over glibc and systemV=
 over systemd is something that you could consider as well.


TL;DR


1) move to SDK

2) check PACKAGECONFIG switches

3) same as 2 or consider something "smaller" like lxc

4) same as 2

5) same as 2

6) same as 2

7) move to SDK

8) same as 2


On 28.03.20 14:25, Ajam Ali wrote:


________________________________

Hi All,

I am trying to reduce the image size.


how can i  reduce the size of following packages so that i could get a sma=
ll image size after integrating these packages in yocto?


1) boost-dev 2) docker 3) containerd-opencontainers 4) nodejs 5) nodejs-np=
m 6) python3-numpy 7) cpp 8) postgresql



Thanks in advance,

Ajam Ali

::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and int=
ended for the named recipient(s) only. E-mail transmission is not guarantee=
d to be secure or error-free as information could be intercepted, corrupted=
, lost, destroyed, arrive late or incomplete, or may contain viruses in tra=
nsmission. The e mail and its contents (with or without referred errors) sh=
all therefore not attach any liability on the originator or HCL or its affi=
liates. Views or opinions, if any, presented in this email are solely those=
 of the author and may not necessarily reflect the views or opinions of HCL=
 or its affiliates. Any form of reproduction, dissemination, copying, discl=
osure, modification, distribution and / or publication of this message with=
out the prior written consent of authorized representative of HCL is strict=
ly prohibited. If you have received this email in error please delete it an=
d notify the sender immediately. Before opening any email and/or attachment=
s, please check them for viruses and other defects.
________________________________






--_000_HK0PR04MB2914C357A6A0A484356ED66BB4CD0HK0PR04MB2914apcp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii=
">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-b=
ottom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi Konrad,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Actually my current image size is 3.9GB because of heavy size packages req=
uired by my project and without project required packages my image size in =
Yocto is 800MB.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I want to reduce the image size as maximum as possible.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Thanks a lot in advance,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-siz=
e: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Ajam Ali<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" s=
tyle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Konrad Weihmann &lt;=
kweihmann@outlook.com&gt;<br>
<b>Sent:</b> Saturday, March 28, 2020 7:38 PM<br>
<b>To:</b> Ajam Ali &lt;AjamA@hcl.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&g=
t;<br>
<b>Subject:</b> Re: [yocto] Fw: Reducing rootfs size in yocto</font>
<div>&nbsp;</div>
</div>
<div>
<p></p>
<p class=3D"x_MsoNormal" style=3D"line-height:12.0pt; background:#FFEB9C">=
<b><span style=3D"font-size:10.0pt; color:#9C6501"></span></b><span style=
=3D"font-size:10.0pt; color:red">[CAUTION: This Email is from outside the =
Organization. Do not click links or open attachments
 unless you trust the sender.]</span></p>
<div>
<p>Pretty general questions, but I try to answer your question.</p>
<p><br>
</p>
<p>I don't know what the purpose of your image is, but installing developm=
ent tools like boost-dev or gcc (I guess that is what you mean with cpp) ma=
kes your image automatically a lot bigger, I would suggest to put devtools =
into a SDK, which could be shipped
 separately.</p>
<p><br>
</p>
<p>Next thing you can do is to analyze the what is actually so big in your=
 image, e.g. by creating a tar.gz of the image, unpacking it and browsing b=
y 'du -sh *'.<br>
You can get the package/recipe to a file by using 'oe-pkgdata-util find-pa=
th &lt;path&gt;'.</p>
<p><br>
</p>
<p>In the identified recipe you can look for PACKAGECONFIG or OE_EXTRACONF=
 switches that you don't need and disable them.</p>
<p><br>
</p>
<p>As said, I don't know what the purpose/environment of your image will b=
e like, but you could also consider to use a different fs-format like squas=
h.</p>
<p><br>
</p>
<p>In general if you want small images preferring musl over glibc and syst=
emV over systemd is something that you could consider as well.</p>
<p><br>
</p>
<p>TL;DR</p>
<p><br>
</p>
<p>1) move to SDK</p>
<p>2) check PACKAGECONFIG switches</p>
<p>3) same as 2 or consider something &quot;smaller&quot; like lxc<br>
</p>
<p>4) same as 2</p>
<p>5) same as 2</p>
<p>6) same as 2</p>
<p>7) move to SDK</p>
<p>8) same as 2<br>
</p>
<p><br>
</p>
<div class=3D"x_moz-cite-prefix">On 28.03.20 14:25, Ajam Ali wrote:<br>
</div>
<blockquote type=3D"cite"><style type=3D"text/css" style=3D"display:none">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr">
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
Hi All,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
I am trying to reduce the image size.<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:12=
pt; color:rgb(0,0,0); background-color:rgb(255,255,255)">
<p style=3D"margin-top:0px; margin-bottom:0px">how can i&nbsp; reduce the =
size of following packages so that i could get a small image size after int=
egrating these packages in yocto?</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">1) boost-dev 2) docker 3) c=
ontainerd-opencontainers 4) nodejs 5) nodejs-npm 6) python3-numpy 7) cpp 8)=
 postgresql</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px"><br>
</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Thanks in advance,</p>
<p style=3D"margin-top:0px; margin-bottom:0px">Ajam Ali<br>
</p>
<br>
</div>
</div>
</div>
<font size=3D"1" face=3D"Arial" color=3D"Gray">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and int=
ended for the named recipient(s) only. E-mail transmission is not guarantee=
d to be secure or error-free as information could be intercepted, corrupted=
, lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its co=
ntents (with or without referred errors) shall therefore not attach any lia=
bility on the originator or HCL or its affiliates. Views or opinions, if an=
y, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions=
 of HCL or its affiliates. Any form of reproduction, dissemination, copying=
, disclosure, modification, distribution and / or publication of this messa=
ge without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have r=
eceived this email in error please delete it and notify the sender immediat=
ely. Before opening any email and/or attachments, please check them for vir=
uses and other defects.<br>
<hr>
</font><br>
<fieldset class=3D"x_mimeAttachmentHeader"></fieldset>
<pre class=3D"x_moz-quote-pre">
</pre>
</blockquote>
</div>
</div>
</body>
</html>

--_000_HK0PR04MB2914C357A6A0A484356ED66BB4CD0HK0PR04MB2914apcp_--
