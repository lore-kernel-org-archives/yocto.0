Received: from APC01-SG2-obe.outbound.protection.outlook.com (APC01-SG2-obe.outbound.protection.outlook.com [40.107.131.107])
 by mx.groups.io with SMTP id smtpd.web10.5613.1585401936732279137
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Mar 2020 06:25:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hcl.com header.s=selector2 header.b=JW557SYD;
 spf=pass (domain: hcl.com, ip: 40.107.131.107, mailfrom: ajama@hcl.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5o7NHnrBOGlmi53BKdwpGWqdQHNn/uyw9HJg5Y6Uuw=;
 b=JW557SYDsN3C/INYW5QqSHrcvn9nVY+1RMYzgjVo3is2u77FKXuYw5XDMzxgsjLkvA/Q6VSXENx7jWoRMjjrGslIX7pWcB2q0MWrWCgZoEM1CEtf9elxBwejh6RjBL9rRXmvOdao9UIfbPqZK/6n9358dUnC9sIdNumX+djVrOs=
Received: from SG2PR02CA0085.apcprd02.prod.outlook.com (2603:1096:4:90::25) by
 PS1PR04MB2774.apcprd04.prod.outlook.com (2603:1096:803:47::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15; Sat, 28 Mar 2020 13:25:33 +0000
Received: from HK2APC01FT015.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:90:cafe::18) by SG2PR02CA0085.outlook.office365.com
 (2603:1096:4:90::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20 via Frontend
 Transport; Sat, 28 Mar 2020 13:25:32 +0000
Authentication-Results: spf=pass (sender IP is 192.8.195.57)
 smtp.mailfrom=hcl.com; lists.yoctoproject.org; dkim=pass (signature was
 verified) header.d=HCL.COM;lists.yoctoproject.org; dmarc=pass action=none
 header.from=hcl.com;
Received-SPF: Pass (protection.outlook.com: domain of hcl.com designates
 192.8.195.57 as permitted sender) receiver=protection.outlook.com;
 client-ip=192.8.195.57; helo=APC01-PU1-obe.outbound.protection.outlook.com;
Received: from APC01-PU1-obe.outbound.protection.outlook.com (192.8.195.57) by
 HK2APC01FT015.mail.protection.outlook.com (10.152.248.167) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.17 via Frontend Transport; Sat, 28 Mar 2020 13:25:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wz3gr+ad+Sw9bRJq8OE2zsZzypoJKKwBrbGqP/ZwnlsguQSkpcb7rMt+jWT/n0DUtmnSxC0Fx59BrmYOX9Z//AaM4vICAmwAmXdmkFQTa3cJlziRaqZDUR9qszjJujLZ+IJrzugHSwB7fMlZlo9g3GAXyUAaucGSBFRJllZxdWqBcjkU99PoydozJF26qLt1KIDWF6bw5bZXmKp96snhcZ8e6BiaJK7pAPIdgSd/oBh9tlYzpERMsOnPzF42wkFKtMWwavo25uFMj5FrIjYoql61itxZwhaMi/QOQBURlQOoQk3IlIm02x1x1h8i7IcCUFPxD5Q0N9/yRWkXrKvZOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5o7NHnrBOGlmi53BKdwpGWqdQHNn/uyw9HJg5Y6Uuw=;
 b=hQxDfKDmVuTcAjN6ZIoKxo6MUd0dHPTrKDMoVt1SbQ4ejulpMMwnieuypt/zCZwMMisQhDiEwEWOVVMkQ/u6jENzy+O3KMqNO/BBDBXFajrFdM6X2a2sS/ZXFhAleS16hKuUBBNwkL9rTz4iaaqG/FteGGqRJKJlgy3Er2/ydeiex32AdjsjORf0qZVSDkQ1qMvh1TMJ15iYViodFsS78eR/Tq7KX/oMM9yO3HsvGl1/1+E7GEegUtTK3A4zXuubJZLdJL9Ty5sAm5dWCExevCg5JxnIK21ytNQdMu+/evr8VShkpXYAJqvgPgAg070+f7zsmWtsZVdExt/t7OARyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hcl.com; dmarc=pass action=none header.from=hcl.com; dkim=pass
 header.d=hcl.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HCL.COM; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=P5o7NHnrBOGlmi53BKdwpGWqdQHNn/uyw9HJg5Y6Uuw=;
 b=JW557SYDsN3C/INYW5QqSHrcvn9nVY+1RMYzgjVo3is2u77FKXuYw5XDMzxgsjLkvA/Q6VSXENx7jWoRMjjrGslIX7pWcB2q0MWrWCgZoEM1CEtf9elxBwejh6RjBL9rRXmvOdao9UIfbPqZK/6n9358dUnC9sIdNumX+djVrOs=
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com (20.177.25.76) by
 HK0PR04MB2979.apcprd04.prod.outlook.com (20.177.24.86) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Sat, 28 Mar 2020 13:25:27 +0000
Received: from HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44]) by HK0PR04MB2914.apcprd04.prod.outlook.com
 ([fe80::d30:6434:8250:2d44%5]) with mapi id 15.20.2856.019; Sat, 28 Mar 2020
 13:25:27 +0000
From: ajama@hcl.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Fw: Reducing rootfs size in yocto
Thread-Topic: Reducing rootfs size in yocto
Thread-Index: AQHWBQOpsr5y8icioEWpKGlX+EE4S6hd/pa9
Date: Sat, 28 Mar 2020 13:25:26 +0000
Message-ID: 
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
References: 
 <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
In-Reply-To: 
 <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=AjamA@hcl.com; 
x-originating-ip: [106.206.57.232]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 08f3e827-acd4-4dc8-8239-08d7d31b7d65
x-ms-traffictypediagnostic: HK0PR04MB2979:|PS1PR04MB2774:
X-Microsoft-Antispam-PRVS: 
	<PS1PR04MB2774DA9B2882E5A92789A490B4CD0@PS1PR04MB2774.apcprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:5516;
x-forefront-prvs: 03569407CC
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:HK0PR04MB2914.apcprd04.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(136003)(346002)(396003)(376002)(366004)(39860400002)(2906002)(26005)(71200400001)(81156014)(33656002)(2940100002)(186003)(81166006)(9686003)(66476007)(66446008)(66556008)(64756008)(55016002)(66946007)(316002)(8676002)(86362001)(52536014)(8936002)(19627405001)(7696005)(478600001)(91956017)(76116006)(6506007)(6916009)(5660300002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hcl.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 4ACo0x8OAmM4cr6i90IlzMro5kX9YXwigmu9x7wgULkvaGeFI4jfaQ84fWQ0//oOJHBUHqGqidbXuXnJ/j6PKLkxcD9o4KqbwXak3zt0+I2wanF7opft+sReYPbnadw07KQgRyaLFqCrfn5LVB5Wx4mzpMtkiWS9bS2+o9x0ZENkqL9xRdpIAwwY+RolWRti+bnEeukalRybnE/d8B3JbWBE97Uhx7Aa9wrlXa5zOJ2iyG7Ec8FjXOfAa/Nz2TwDIMZyrTSBkVWt0ugzocYZojnPeH3+iEoPEIHu6qfaj6PwdT0WwvvhdoTdIR6HJPmeit7MLySrydUTlad9R9AXVwfKb8ivL+FDQqA2pmyN4l7XSeORHWT6lSxDKtLXhuARBSCd2g2V4Vw6+moa1Hr7H3yU9vT6/RqTe9a0k8itvRbJkF0E78BNMC2aE1GucmNh
x-ms-exchange-antispam-messagedata: 
 NsrIRorEXQN9PnjNrdrOpShP/C12Divk5nS5MlHABDqiEG9VNl3lQh74Zl5cCDA2y7EB8FrSU1kfNjvN5Ob2vUtdGWp2N5ul5NB92soUiHkRcAzpKdJYICbYM6Cr/PAN9esosaakcALq8gCD7gABqg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK0PR04MB2979
X-DLP: MSGProcess
Return-Path: AjamA@hcl.com
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HK2APC01FT015.eop-APC01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:192.8.195.57;CTRY:IN;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:APC01-PU1-obe.outbound.protection.outlook.com;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(10019020)(4636009)(39860400002)(346002)(376002)(396003)(136003)(46966005)(8936002)(6916009)(2906002)(86362001)(19627405001)(47076004)(356004)(33656002)(336012)(478600001)(36906005)(186003)(55016002)(2940100002)(52536014)(81156014)(81166006)(70206006)(8676002)(9686003)(82740400003)(5660300002)(6506007)(26005)(316002)(7696005)(70586007);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d83681ee-d8a3-4f21-4630-08d7d31b7a9f
X-Forefront-PRVS: 03569407CC
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WOV30B8stTCFVGnUmGf0lapJO+phyoYlFWuW/KUgaCdWDCXdpeqCqJ9Smo70PevF7BOaae+KPKONRrSMHVPlLKMRJNYnzGSw3KIBuct9wnRCvGn2e7p2AGZgAbqzZHtAezN/4A5aG0a4Kx4svr8MMLTHoBqPkJ08yX9ly6R+glOA2v1rhs0Qx0sIWKr4E9WLht1eLgHMDPJsonDzKZC/YRzI2wWWBA6MCh8k7Yi4e8SwWy1dVVQsIV2pWLTvALS4MhxS/I4/UhmNUsv+ddVFkFjMIFbQmHowsCTNKcHY+uH086GPOJrPFzSKdhFtsxjbuKtaQt14/YeWgMN1/zBAyye9eJ9Lymi6vbKWLl8z1JXEp6Ytfdl5eb/tefHbO6GnoRNtHeMjB5KcmdfbnLxymmlyl+E5bkTz3qoLCv3/mGnQN+80mpB63feVNkjHnHEgmdPdEh/Vhl4gfugcFrbNpegOAjEvcud0uxFR/tN6TZ1xNl3QBTbpPWaWFBXfCv0/wDAXZrB7EnMFaVoVBDto8w==
X-OriginatorOrg: HCL.COM
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Mar 2020 13:25:30.8975
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 08f3e827-acd4-4dc8-8239-08d7d31b7d65
X-MS-Exchange-CrossTenant-Id: 189de737-c93a-4f5a-8b68-6f4ca9941912
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=189de737-c93a-4f5a-8b68-6f4ca9941912;Ip=[192.8.195.57];Helo=[APC01-PU1-obe.outbound.protection.outlook.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PS1PR04MB2774
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_HK0PR04MB291491325C57709CD3461BB9B4CD0HK0PR04MB2914apcp_"

--_000_HK0PR04MB291491325C57709CD3461BB9B4CD0HK0PR04MB2914apcp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



________________________________

Hi All,

I am trying to reduce the image size.


how can i  reduce the size of following packages so that i could get a smal=
l image size after integrating these packages in yocto?


1) boost-dev 2) docker 3) containerd-opencontainers 4) nodejs 5) nodejs-npm=
 6) python3-numpy 7) cpp 8) postgresql



Thanks in advance,

Ajam Ali

::DISCLAIMER::
________________________________
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or incomplete, or may contain viruses in tran=
smission. The e mail and its contents (with or without referred errors) sha=
ll therefore not attach any liability on the originator or HCL or its affil=
iates. Views or opinions, if any, presented in this email are solely those =
of the author and may not necessarily reflect the views or opinions of HCL =
or its affiliates. Any form of reproduction, dissemination, copying, disclo=
sure, modification, distribution and / or publication of this message witho=
ut the prior written consent of authorized representative of HCL is strictl=
y prohibited. If you have received this email in error please delete it and=
 notify the sender immediately. Before opening any email and/or attachments=
, please check them for viruses and other defects.
________________________________

--_000_HK0PR04MB291491325C57709CD3461BB9B4CD0HK0PR04MB2914apcp_
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"appendonsend"></div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr">
<div>&nbsp;</div>
</div>
<div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
Hi All,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
I am trying to reduce the image size.<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">
<p style=3D"margin-top: 0px; margin-bottom: 0px;">how can i&nbsp; reduce th=
e size of following packages so that i could get a small image size after i=
ntegrating these packages in yocto?</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">1) boost-dev 2) docker 3)=
 containerd-opencontainers 4) nodejs 5) nodejs-npm 6) python3-numpy 7) cpp =
8) postgresql</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;"><br>
</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Thanks in advance,</p>
<p style=3D"margin-top: 0px; margin-bottom: 0px;">Ajam Ali<br>
</p>
<br>
</div>
</div>
</div>
<font face=3D"Arial" color=3D"Gray" size=3D"1">::DISCLAIMER::<br>
<hr>
The contents of this e-mail and any attachment(s) are confidential and inte=
nded for the named recipient(s) only. E-mail transmission is not guaranteed=
 to be secure or error-free as information could be intercepted, corrupted,=
 lost, destroyed, arrive late or
 incomplete, or may contain viruses in transmission. The e mail and its con=
tents (with or without referred errors) shall therefore not attach any liab=
ility on the originator or HCL or its affiliates. Views or opinions, if any=
, presented in this email are solely
 those of the author and may not necessarily reflect the views or opinions =
of HCL or its affiliates. Any form of reproduction, dissemination, copying,=
 disclosure, modification, distribution and / or publication of this messag=
e without the prior written consent
 of authorized representative of HCL is strictly prohibited. If you have re=
ceived this email in error please delete it and notify the sender immediate=
ly. Before opening any email and/or attachments, please check them for viru=
ses and other defects.<br>
<hr>
</font>
</body>
</html>

--_000_HK0PR04MB291491325C57709CD3461BB9B4CD0HK0PR04MB2914apcp_--
