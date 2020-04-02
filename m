Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.132])
 by mx.groups.io with SMTP id smtpd.web11.1229.1585810765899966954
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Apr 2020 23:59:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bynet1.onmicrosoft.com header.s=selector2-bynet1-onmicrosoft-com header.b=Ak/SzvJV;
 spf=pass (domain: bynet.co.il, ip: 40.107.22.132, mailfrom: assaf.katz@bynet.co.il)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CWXMpGy1xn5hg2SLcV/W1z/YEge/sJdQVkRBWnhwThRicgmroe4zQ30vphDSfdRPKxIQ3OJiKfls6yFa6U7Id2re1CHMkMSMjm3wbwY6LYC0RJqYGSqhXr1YDwYgTBaSxA8Iv+8rBysQWmaoJo56SM9sNO2Ynj1U8q3l7zHJlPDHDca9hJZ7mI62K6d2K9Y/EssVdlkqNJlEaACM7OEWWVaJ9zM6XQdr46KfawWV9icGsYBFOvPh8f5r54PhQP7JD1TGIS2I+g+/YXQqWqI0GdRNYEvkddkh0m0GfpFzpwRQYv9qEeu5Aks8GXMFINP0kKwgh+UCEYNCpiRm5KForQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=257CSWo5Kyh+GVjjX1BkX985evexzMlG+a+FUpMQa0I=;
 b=bovf87jnflyUcmvPNHricp2U0WTgWNdSvRT1wxzA08SpZTF7imRwTtUJdglrHX1dhYLYj9rceWYq1dA+snGfhAFJ2GrCA3aic4GIr7P+AZPLPudf70VBoUxILjNg1oy409LLfjPYN8KeW5ce+lne7HZUEpDli6v1DMnyCor4YfqCDWnOR8CAmXsF2+SR43Y2QQfgzuXVt0pvuFFxIDyiFpibv4G4S8wk+A7wWD6eocidzMjs1svcrVdgucFHPK01o2Op9Xg9pd1gFfutnE8BQ2mGElT4zihAMc/6iuaUXFKp8X+S2nUtc6ULCQdw5m2ja6fmUldShUYa0QZSjKwv8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 191.237.4.149) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=bynet.co.il; dmarc=fail (p=none sp=none pct=100) action=none
 header.from=bynet.co.il; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bynet1.onmicrosoft.com; s=selector2-bynet1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=257CSWo5Kyh+GVjjX1BkX985evexzMlG+a+FUpMQa0I=;
 b=Ak/SzvJVdhggM3P9QF7Kun8VTmpyIZ5pOVmlbncfnulW+JZwAR7Cmj/6Z+b/JltXXJ9dD+UcSnrxX4+P2vqcF+qff+PeMj/fo2+G9jceX8vPsQtBpjyRdGpddnfJKy4yuJxQqx1o4Xfp+sjA02gf+NrMDXyKWEb9e8VsFu6R5Gs=
Received: from AM6PR02CA0007.eurprd02.prod.outlook.com (2603:10a6:20b:6e::20)
 by VI1P189MB0336.EURP189.PROD.OUTLOOK.COM (2603:10a6:802:37::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.20; Thu, 2 Apr
 2020 06:59:23 +0000
Received: from HE1EUR02FT064.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:20b:6e:cafe::72) by AM6PR02CA0007.outlook.office365.com
 (2603:10a6:20b:6e::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Thu, 2 Apr 2020 06:59:23 +0000
Authentication-Results: spf=fail (sender IP is 191.237.4.149)
 smtp.mailfrom=bynet.co.il; lists.yoctoproject.org; dkim=none (message not
 signed) header.d=none;lists.yoctoproject.org; dmarc=fail action=none
 header.from=bynet.co.il;
Received-SPF: Fail (protection.outlook.com: domain of bynet.co.il does not
 designate 191.237.4.149 as permitted sender) receiver=protection.outlook.com;
 client-ip=191.237.4.149; helo=us1.smtp.exclaimer.net;
Received: from us1.smtp.exclaimer.net (191.237.4.149) by
 HE1EUR02FT064.mail.protection.outlook.com (10.152.11.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2878.15 via Frontend Transport; Thu, 2 Apr 2020 06:59:22 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com (104.47.5.50) by
	 us1.smtp.exclaimer.net (191.237.4.149) with Exclaimer Signature Manager
	 ESMTP Proxy us1.smtp.exclaimer.net (tlsversion=TLS12,
	 tlscipher=TLS_ECDHE_WITH_AES256_SHA384); Thu, 2 Apr 2020 06:59:22 +0000
X-ExclaimerHostedSignatures-MessageProcessed: true
X-ExclaimerProxyLatency: 16385295
X-ExclaimerImprintLatency: 1740662
X-ExclaimerImprintAction: 8c9aa80116d44a0f8de5269c855af3f1
Received: from AM5P189MB0324.EURP189.PROD.OUTLOOK.COM (10.161.62.155) by
 AM5P189MB0530.EURP189.PROD.OUTLOOK.COM (10.161.89.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Thu, 2 Apr 2020 06:59:19 +0000
Received: from AM5P189MB0324.EURP189.PROD.OUTLOOK.COM
 ([fe80::11dd:7664:67d8:5f84]) by AM5P189MB0324.EURP189.PROD.OUTLOOK.COM
 ([fe80::11dd:7664:67d8:5f84%7]) with mapi id 15.20.2878.017; Thu, 2 Apr 2020
 06:59:19 +0000
From: assaf.katz@bynet.co.il
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Using CROPS inside Kubernetes
Thread-Topic: Using CROPS inside Kubernetes
Thread-Index: AQHWCLtmJhSln1p700+vy0ghQVXHpA==
Date: Thu, 2 Apr 2020 06:59:19 +0000
Message-ID: 
 <AM5P189MB03241BA92FA7D3017F7268DEDBF90@AM5P189MB0324.EURP189.PROD.OUTLOOK.COM>
Accept-Language: en-IL, he-IL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Assaf.Katz@bynet.co.il; 
x-originating-ip: [87.70.148.161]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 3ea878a7-a5e0-44a3-631f-08d7d6d35ff1
x-ms-traffictypediagnostic: AM5P189MB0530:|VI1P189MB0336:
X-Microsoft-Antispam-PRVS: 
	<VI1P189MB03362D1B3775DB6F168C6605DBC60@VI1P189MB0336.EURP189.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7219;OLM:7219;
x-forefront-prvs: 0361212EA8
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM5P189MB0324.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(346002)(376002)(366004)(39850400004)(396003)(136003)(66476007)(478600001)(186003)(33656002)(26005)(2906002)(15188445003)(8676002)(81156014)(316002)(8936002)(3480700007)(86362001)(81166006)(9686003)(7696005)(66556008)(5660300002)(66946007)(55016002)(66446008)(76116006)(4744005)(6506007)(71200400001)(6916009)(64756008)(52536014);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: bynet.co.il does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 y2ZpQuMIJjvpimieHr49iV2wt3omzjSGMc6292VnIz2llXE6rZ3z1f6kG+6mNsxaS8o1tWF9QmWrfzMgfvHCreCDdGg2xFZW8NJcV2mOsVDIsGtGyog/cPAB1C7fwqerYoAaLqfL0h0YW1EQrFnUAWaStHiypgInmdQfKHUE5SX6bVC/70JdH/iNHxxyx+chF0Y+SIOhwv12imLBr4dMgR4x/BEHZbkwfMpmIW0gvsEcm9Z9j4YvPs9wMzDs99JFftErpRslXlAc+Gu9IjLppAHtp5pKh43Uuq7fiMncE48LnSxhJvqYkdKXQs0nJ+cF+EoeIA4A1cDv9ML/wPyABqe1a48U9YlLhGKF1MzntC4/lw17jP7QqG7vcWtEjrFsZEKxeVJwU4NHlS2XUeXCWXzqtYD8FG+cwWaAtJHyfMb5ozF4kWaNPZ/ln/RD83iQ+rTcdRK1tM1AbbTLXSZx70LyJdUDlThS7eroY8sMWgIFEqOFCGMAWc8xwWck7oE2dp8tSV9dD6XSYQN5fDPx0g==
x-ms-exchange-antispam-messagedata: 
 7T9fhFjNm04L5EblRsFzhGydliYugMb6XzzmCwnvC1ioIM5DXxm7bgqNY7yLGB2YugeKFAuHOMQqtBXo+qy9McNf1tsv0eIIazF6RKtnT3pwZi1Xw6RDO9DlSVgd3tm8JWtYIIkdfCfqUCVyYOEuGg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5P189MB0530
Return-Path: Assaf.Katz@bynet.co.il
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR02FT064.eop-EUR02.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:191.237.4.149;CTRY:US;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:us1.smtp.exclaimer.net;PTR:us1.smtp.exclaimer.net;CAT:NONE;SFTY:;SFS:(10019020)(136003)(346002)(396003)(39850400004)(376002)(1110001)(339900001)(249900001)(46966005)(9686003)(3480700007)(356004)(2906002)(52536014)(33656002)(70206006)(66616009)(5660300002)(70586007)(246002)(8676002)(8936002)(33964004)(7636002)(55016002)(336012)(7596002)(316002)(26826003)(186003)(15188445003)(478600001)(47076004)(6506007)(82740400003)(86362001)(6916009)(7696005)(26005);DIR:OUT;SFP:1102;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f1382418-62d6-46bd-0e1d-08d7d6d35df1
X-Forefront-PRVS: 0361212EA8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZRTnbAMEja5HL8BsDFJ7EMgJUEID2uD2JyjYPuLLSiOR/EQC/hW4Z81f2RmIDyolu5e75CVuV4dCK3qz2cwhhMsGRDhKLAWyYYvAT6RM0WOVQku9vzbnCIoM/sumC7sU/+4BUoN75VHIcHlzj+AISTHEuEcdWm5sbFmapsYJ6PMOxojPUaHUsxJoEtw9DfcbWO23XzwHweL8MNogKIzv7WTGQ6fQE01PZcgkrM/jMIOtwHHf02ihx1w3xWRpMrk9X3wVq+JlGPlPvTjfXqbeEK2dJfFcmP7W/Ge2vEYEUvD4Aya+ubF1m+mfCAWfzUVedPihEdqFbTAQ/plyUMX9k6FNUfjIX1FsPR3uWvlLMN4sZ5UqgUWeH9DmxgFxlXyZ/iyVT+LyKy966irRr2kAlcAcCS0AXvhhVCNP2RbH+kqO/Z0RoJFzb+KcE+ftIXvvlyvOda3dkgsZRzlFpDakw7MlqLUexZ+os/uTCcGw0GJQuhARH8+YNFIPZ2JaLAoBCuoys2yEP1+SW0HCGRR74QgtXXOblz8b8jDdvA46fKcNiHA2WRPvuSrmXQBDvn7ICr81Xs5/TrRP3Esd7ZNoVg==
X-OriginatorOrg: bynet.co.il
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2020 06:59:22.5986
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ea878a7-a5e0-44a3-631f-08d7d6d35ff1
X-MS-Exchange-CrossTenant-Id: b5f3202f-73b3-40a8-a61e-596ab18836ea
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=b5f3202f-73b3-40a8-a61e-596ab18836ea;Ip=[191.237.4.149];Helo=[us1.smtp.exclaimer.net]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P189MB0336
X-Groupsio-MsgNum: 49023
Content-Type: multipart/related;
	boundary="----_=_NextPart_98ce7dee-5165-4070-a687-d823cbc9dbf5"

------_=_NextPart_98ce7dee-5165-4070-a687-d823cbc9dbf5
Content-Type: multipart/alternative;
	boundary="----_=_NextPart_4eaa47ad-22ae-45eb-a83a-a6e85f36faa6"

------_=_NextPart_4eaa47ad-22ae-45eb-a83a-a6e85f36faa6
Content-Language: aa
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,=0ACurrently we have VMs that are created on demand and are used for bui=
ld of versions of our distribution by Yocto. We want to use docker images (=
based on CROPS) inside Kubernetes. I found out that that buildbot supports =
Kubernetes (http://docs.buildbot.net/current/relnotes/1.x.html?highlight=
=3Dkubernetes#features). But it isn't clear how to use it for building dist=
ribution by Yocoto. Is anyone try to do such configuration? We want to use =
OpenShift (Kubernetes), with full build system will be configured inside so=
 any information will be useful :-)=0AThanks,=0AAssaf Katz=0A

------_=_NextPart_4eaa47ad-22ae-45eb-a83a-a6e85f36faa6
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dutf-8" /></head><body><div>Hi,=0ACurrently we have VMs that are created =
on demand and are used for build of versions of our distribution by Yocto. =
We want to use docker images (based on CROPS) inside Kubernetes. I found ou=
t that that buildbot supports Kubernetes (http://docs.buildbot.net/current/=
relnotes/1.x.html?highlight=3Dkubernetes#features). But it isn&#39;t clear =
how to use it for building distribution by Yocoto. Is anyone try to do such=
 configuration? We want to use OpenShift (Kubernetes), with full build syst=
em will be configured inside so any information will be useful :-)=0AThanks=
,=0AAssaf Katz=0A</div><div style=3D"mso-line-height-rule:exactly;-webkit-t=
ext-size-adjust:100%;"><table cellpadding=3D"0" cellspacing=3D"0" border=
=3D"0" style=3D"width:100%;line-height:normal;"><tr style=3D"font-size:0;">=
<td align=3D"left" style=3D"vertical-align:top;"><a href=3D"https://lp.vp4.=
me/kwcm" target=3D"_blank" id=3D"LPlnk689713" style=3D"text-decoration:none=
;"><img src=3D"cid:image938848.jpg@C2265A0B.2E454DA8" border=3D"0" alt=3D""=
 style=3D"font-size:0;" /></a></td></tr></table></div><span style=3D"font-f=
amily:remialcxesans;">&nbsp;</span></body></html>

------_=_NextPart_4eaa47ad-22ae-45eb-a83a-a6e85f36faa6--

------_=_NextPart_98ce7dee-5165-4070-a687-d823cbc9dbf5
Content-Type: image/jpeg;
	name="image938848.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image938848.jpg@C2265A0B.2E454DA8>
Content-Description: image938848.jpg
Content-Disposition: inline;
	creation-date="Thu, 02 Apr 2020 06:59:22 +0000";
	filename=image938848.jpg;
	modification-date="Thu, 02 Apr 2020 06:59:22 +0000";
	size=17372

/9j/4AAQSkZJRgABAQEBLAEsAAD/4QCCRXhpZgAATU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAA
BJADAAIAAAAUAAAAUJAEAAIAAAAUAAAAZJKRAAIAAAADMDAAAJKSAAIAAAADMDAAAAAAAAAyMDIw
OjAxOjA1IDEyOjMyOjIyADIwMjA6MDE6MDUgMTI6MzI6MjIAAAD/4QGcaHR0cDovL25zLmFkb2Jl
LmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49J++7vycgaWQ9J1c1TTBNcENlaGlIenJlU3pO
VGN6a2M5ZCc/Pg0KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyI+PHJkZjpSREYg
eG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj48
cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0idXVpZDpmYWY1YmRkNS1iYTNkLTExZGEtYWQzMS1k
MzNkNzUxODJmMWIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyI+PHht
cDpDcmVhdGVEYXRlPjIwMjAtMDEtMDVUMTI6MzI6MjI8L3htcDpDcmVhdGVEYXRlPjwvcmRmOkRl
c2NyaXB0aW9uPjwvcmRmOlJERj48L3g6eG1wbWV0YT4NCjw/eHBhY2tldCBlbmQ9J3cnPz7/2wBD
AAYEBQYFBAYGBQYHBwYIChAKCgkJChQODwwQFxQYGBcUFhYaHSUfGhsjHBYWICwgIyYnKSopGR8t
MC0oMCUoKSj/2wBDAQcHBwoIChMKChMoGhYaKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgoKCgo
KCgoKCgoKCgoKCgoKCgoKCgoKCj/wAARCACkAewDASIAAhEBAxEB/8QAHQAAAQQDAQEAAAAAAAAA
AAAAAAMEBQYBAgcICf/EAFYQAAEDAwICBQYHCQwIBwEBAAECAwQABREGIRIxEyJBUWEHFDJxgZEI
FUJSobGzIzY3YnJ0ssHRFiQzNDVDVnN1gpLCFxhTVZOUovAlVGOD0uHxRMP/xAAbAQACAwEBAQAA
AAAAAAAAAAAAAgEDBAUGB//EADYRAAIBAgQDBAgFBQEAAAAAAAABAgMRBBIhMRNBUQUiMjNCYXGB
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
vH3lN5+ePrq3UUVGE2YTCiiitZWf/9k=

------_=_NextPart_98ce7dee-5165-4070-a687-d823cbc9dbf5--
