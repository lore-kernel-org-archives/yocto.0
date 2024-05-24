Return-Path: <sancelot@numalliance.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6C9DC25B74
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 12:05:50 +0000 (UTC)
Received: from PR0P264CU014.outbound.protection.outlook.com (PR0P264CU014.outbound.protection.outlook.com [52.101.167.18])
 by mx.groups.io with SMTP id smtpd.web11.14144.1716552343985679524
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 05:05:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@numadesk.onmicrosoft.com header.s=selector1-numadesk-onmicrosoft-com header.b=uvucmLXW;
 spf=pass (domain: numalliance.com, ip: 52.101.167.18, mailfrom: sancelot@numalliance.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cH606aEhE5ZI69FB+a58vtNAFY9TRr9osiS9cz6sI99FMMTBKb8CdgchebxhkuV85yOyhmbReUA85e4NnMcKUoxsZFVaoi0+LC+RB+0vBf25yWnbBbjs0kIZL1qNRnDWKWs7uF6Nhbyu0ihwRUN4Sa62TUEjGlbREf+3PRJZWxHTJmMQB0kfC0VqTNtBM/1VYHB+073FIsPZM8ao5PFxl8rO/ZT50rJslZjp+SiK/BPrqTWfUFN8JsuGMUaSMkcyM5mQ8EgHmj9JiLTuyGnYFnmC8o16WDzHyd9Mb3b/Zw/x0qt2Zkwz3SgRYi7TS6fzm+3ZB1psRTNitiunHS6ZGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jQvyA1qDlUaLbTd2qmm5o7fFjGSUmkf8UsG80RO2SEo=;
 b=mYpFEzkAYKgd2v91OhlzjfYv8xDxcgjYyiSd9QYVqWniOsgLN/cuxXkxIaSTb8yB9pWkgDHPq/xthxdSPFc+ERD4FuINTRA6YHOjOXf/DG9pkSFeIFNDRr3kXpsBZyDYsmfca6rLaPYW9TX+ccsprZ08CgpMHzJszp9jbFkXhxQkiI+ve/QpVOxmckv6ugikaarzQImhyPno5e/lq9nANpWOeXX7J1/rmhz+LK4OrnldZz2U3gdKJa/bSJJZ5avZ5jBFAyFi+eb7PBAEJJ18fe/HYfKJs6XSi8mb9nkhWoAtAWcBmp+gmfiL2riYPAVdwJrqRPmn+O4sVC84iq6qmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=numalliance.com; dmarc=pass action=none
 header.from=numalliance.com; dkim=pass header.d=numalliance.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=numadesk.onmicrosoft.com; s=selector1-numadesk-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQvyA1qDlUaLbTd2qmm5o7fFjGSUmkf8UsG80RO2SEo=;
 b=uvucmLXWMzMNqzJshJi5+HktjvjY9Zr7vSP56K+pdU2Oph+vYG3Qo1tBzqO0fUKKDYqIVC2MDuFsjvC5EbwYPi823MJdTwqyi8fCg83+hifUByJtsJNAcskR4fEAmS49G2N2cgGKnDPKCozfzycrotSqINSSzzJTWGv+qsLq7hAIwIf5eOTajGS4d7JrZ6b+7tqhjQZ4MWwrz4lanQSqNDwLM04+VjWMTp5/x9+QSX3tsbOVp2iq0NE3BJoLlO05UTQDBNCANHwpI1c91J6OxwQy5lmSvAHIM8JD6ahivsh8rghEJkFLUO9h9MySrW4TeZLghjxNtjPgcPLhYM6LNQ==
Received: from PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:256::22)
 by MR0P264MB4717.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:62::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Fri, 24 May
 2024 12:05:40 +0000
Received: from PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a349:4d59:6c8a:760f]) by PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a349:4d59:6c8a:760f%4]) with mapi id 15.20.7611.016; Fri, 24 May 2024
 12:05:40 +0000
From: Stephane ANCELOT <sancelot@numalliance.com>
To: Marco Cavallini <koansoftware@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] booting intel baytrail image fails
Thread-Topic: [yocto] booting intel baytrail image fails
Thread-Index: AQHarPtIsg9MxvkP0kulSH5ybb+8JbGmL5kAgAAYvjk=
Date: Fri, 24 May 2024 12:05:40 +0000
Message-ID: 
 <PR1P264MB4215721476C6039F0BDBB075CFF52@PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM>
References: 
 <PR1P264MB4215BA3397B10396336412C7CFF42@PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM>
 <19429.1716546364350243158@lists.yoctoproject.org>
In-Reply-To: <19429.1716546364350243158@lists.yoctoproject.org>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=numalliance.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR1P264MB4215:EE_|MR0P264MB4717:EE_
x-ms-office365-filtering-correlation-id: c7be2509-af78-4f8d-6d41-08dc7be9d485
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?O3au+tIpqvXVWK8WIGNHEzke9UvX5FtatF7flc1PLPnSYVTP5J59lAQh?=
 =?Windows-1252?Q?QUjnzGzxMpKC9mgNLqYB6Z9po+9GMQUJTtHBu6bNeWZ/n+sJtgikYbXn?=
 =?Windows-1252?Q?0qKWkXS1GN7/qO0FggD26/tm35K9A1/OPSAPKv+0VKVEZmxGeIco5zuw?=
 =?Windows-1252?Q?B8bqSyRxUvbJydQWznuYbqmCHD2mxCGfYcVQtvMRuekRxiw3i1bnTFan?=
 =?Windows-1252?Q?dg5GvAEmq+T1FDbag8844dbSh67aV4fsGEiz6bwOYzZlSWS76njSQl/r?=
 =?Windows-1252?Q?uQoYd2h1qu+VA2uouswa/evC7Zft/jvY263CvBdFyuTCyJHcVGEbKjBD?=
 =?Windows-1252?Q?856RWGzCkovx00U3OqIcGc1nHieW7ghtqq0AXumfY8ieKG8mlD6yE1TK?=
 =?Windows-1252?Q?wbo6aU34N3sJZ+4+IUWmICBfhZFSiRaFoMmTnSYbSr4PWpxaT/77fn8a?=
 =?Windows-1252?Q?8sql1jwyA7BsS0ugmKeszqzAceHSoVgb/c7MvvSPJ5ot/if+az08Gn3W?=
 =?Windows-1252?Q?fumF7b2VgHfURkkRyS6fvDaAt0kLeDQQRs6DeDavLE/g6HfLKJMWdw6C?=
 =?Windows-1252?Q?wP5J8CqpTGRYWpysDvRBlHZrfgDWnvIX8ndXNuJE2CR7VZzUQcAL2Rqo?=
 =?Windows-1252?Q?h3A/CgBfvBv60nVyOMlY9y5jglhOXX1SrhHMXjXSG6MOEHrABmSYPqeP?=
 =?Windows-1252?Q?7u3IctlvykG1OG5iwu9e6ypZX/mTUM6NTnOPEOJi/Cx+eFcuutc4QFch?=
 =?Windows-1252?Q?Y05be7gMgYBbbEm7nCarsKTVzRyp46BSMtLpPqebakC+arMY3/ZoO9HG?=
 =?Windows-1252?Q?jwAwI3YZE4qnFKuJW3fD/0vlNpfa7jQilC8Q/Of8SXb8lEjbk9kFdeue?=
 =?Windows-1252?Q?V5FZ5o4A0ULMzz6vUprkDsXAh4hv+3Rr7AZoMZHBn9cfotEduaffqcfU?=
 =?Windows-1252?Q?FTGaggVkb47RuJ+K5DB+Qngqp8kV6gqpjYyg2V8vUXUh8+HPqgiG/AaZ?=
 =?Windows-1252?Q?lJNsUNcWA6y9LF8sb23ErQSzgdmtFM6VMA5K3gTPc+8XhECCCBW3Qeo0?=
 =?Windows-1252?Q?XnNAd4IBKDxqy/hQ+1TG3upbZbhTvBqWXt/ik96Kr3Fe8UsN//vs1qVG?=
 =?Windows-1252?Q?yy4UVeHUcuSmK0Ysw+DwslBRMxbCfyZltcck8wXhUfw449380Kfe+pvp?=
 =?Windows-1252?Q?ZGu01/1sh5FmWb7yHhGyeFRL1RsN2iMi8Wrzu9884JWLGm+5uFC6V4T+?=
 =?Windows-1252?Q?N1hHRt0yPr7kdecFAP5ChC4gegr+/Uz92CFMBwaf3TlomZTBx3+ilxTG?=
 =?Windows-1252?Q?k3I+G8Izb209cpalM8AulrfpW908+HOc5anLZYwJaoBRTlvTKCU/iC/k?=
 =?Windows-1252?Q?XBWBYrcac2Wp+w=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?kqZRBE1aVCAobfQseOeN43XpQGtk8GWHAiEPQPO7dO8y/nwUjQvuP8cn?=
 =?Windows-1252?Q?3QB6AU8PC2eAgJZ4w82JSCXw/dXlUuJxco+QqZzBUh5+Yf5/+gwRQNJn?=
 =?Windows-1252?Q?myewe6U5l7AFoU+tp0B7uxwd/IWMDOvsDnE/JuVdp/USx6KWLRR1L1AF?=
 =?Windows-1252?Q?evqMNMFW+g+xYY6G9MucI4JGvtrSYr3Ebel/AiaEEHt74KP3YwZ0f40N?=
 =?Windows-1252?Q?VV2hmp7lHj28HdcQgXFmUx479NxMizIDNf4S63FZTDxGMF1sV0w2ga4k?=
 =?Windows-1252?Q?h7zhAga1P9DrO6uscwCKT8BQrBK+lourOmiuds6uQsXIoHaKI9lXg8gq?=
 =?Windows-1252?Q?9kUrGHQ4lWzi2zGAZkS0V1tY87KMqkiVTFFBGJtF91uUUceyntxhtuFn?=
 =?Windows-1252?Q?VQMUl+ppc9E7M7EeDEPFik/mpapTrDvy4RVk7L4OBYGfXJAbj0oPT47o?=
 =?Windows-1252?Q?kV7wo3Z+C20QXuzeUUCZXh+4u7BH+9w0PZy5Lf/LTqNCPEtlV8gjS4Ob?=
 =?Windows-1252?Q?vy2rOCAGMw/3w1BctiRRr+hHdA6i49ew8PC/oHuV7chCgs6Dq6ta1GdI?=
 =?Windows-1252?Q?tKo+FLanDl2pVrxN8DqW0/73n7Fkc+fq/9tYylBa+sgCq1ulzlQtaWUE?=
 =?Windows-1252?Q?ANizPUDaLGFF1nYP7D1Lx1LajQhiN3QqvQQZMLK6BVL1ERhZze6CThjo?=
 =?Windows-1252?Q?8MW45MLX0qDXRtHNuruLadg7Mp/h7ZLeoW4iyxWoxmnMXj5xz/hTr4+O?=
 =?Windows-1252?Q?W7mJHvRiVEGJ7nSjjnonW0u6+GDIqgEf88eiDCLm6tH9OLGXG7pbIgzl?=
 =?Windows-1252?Q?FihJrBBzOzhQ9KK4kXsU/Z8w4hD+bmXzHTApBLiV/sTDkqoGncD7DjL6?=
 =?Windows-1252?Q?kgllsOp3FvkYJ+aUqj/jczQBXHT8tXb4DqI3B8ci0U9sB2TJJV8wzVRE?=
 =?Windows-1252?Q?5sn4EWL0icg3lRiPwNgtfrFXZFyXkFD+tI66dAfcyz1PCubJkiI/ew9J?=
 =?Windows-1252?Q?ya6PVWhorr+On7WfWKih5uzIfm3D7TsaVyV4G8i7ch/u21VCyQczDVV+?=
 =?Windows-1252?Q?nvQtUObpNUJSkwg+qKL9H/lAxoULVSKo35LbS17eJdk34r8AuHSlSppc?=
 =?Windows-1252?Q?IymbJK0ImaQOQnPfjbREhitBOyV0uJAS+Ib6txP3D9AJE8PcHtRgTTBC?=
 =?Windows-1252?Q?DPOjZQuFZ37ixrvh/lF1Wn4YpcWMtYGgeWR0Pz66p8ASEgMuUfwyIEtV?=
 =?Windows-1252?Q?QbXcdLd+peSUBWj2nzeyifvRqV0vGZQe+ak7SZLaXr90oi4AzRT0bH/I?=
 =?Windows-1252?Q?gP168nFyAIdE/ug6/CryVFZqqgduq0fQISZ/3cjltdii+iOTJrBA9Hbs?=
 =?Windows-1252?Q?w//z5twAdgOC/OBY8LpB8h8jUw0JsKBjumM2reVsNfcFgAfvlCY2TLxi?=
 =?Windows-1252?Q?Tbq6Nvg/Xlfppc+tkSLIU5Z8B4AZPfrDD9rfWFNtiCqzbZJsqNo69usI?=
 =?Windows-1252?Q?8ua9WEwAWuFbK7bxo1To6oRFnPCOYuggSiLSSiTIBBVtgGY9+/VYKqM7?=
 =?Windows-1252?Q?IL35L+Qj1Bq8t31QAn5qH6mxWxjP9/SR5pDOcGhsIcS9VHhfbE0NPgYO?=
 =?Windows-1252?Q?urfyq4Yj436BIZf/Yt/+Ax62K5Sr5U4k0p1y4X7w5BHBT7hxjploJTtm?=
 =?Windows-1252?Q?FZNtUIaw4o/I8wdxyxeJHHZQ4gTV6gZZ?=
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: numalliance.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: c7be2509-af78-4f8d-6d41-08dc7be9d485
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 May 2024 12:05:40.2296
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1312b0f2-6ca8-425a-b2f8-24eac9852610
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ysvKKzkFCe7dueL8G1zp3ycsg+DsJ52GpR5sbybvFZpL6KJHpMNQEXMcNF0IxZK2riX6c/uCnNn+i65T15Hyt+2cfDi/oCV1qALS+xrOJU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR0P264MB4717
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 12:05:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63195

hi,=0A=
=0A=
That is a customised=A0 image inherited from core-image using systemd=0A=
=0A=
It finally finishes booting after almost 3 minutes ...=0A=
=0A=
=0A=
partitioning is like this :=0A=
Num     Start        End          Size      Fstype=0A=
 1       1048576     38832127     37783552  fat16=0A=
 2      39845888   3281281023   3241435136  ext4=0A=
 3    3281281024   3327418367     46137344  linux-swap(v1)=0A=
=0A=
=0A=
DISTRO_NAME =3D "kiosk-distro"=0A=
DISTRO_VERSION =3D "1.0"=0A=
# Chromium requires OpenGL and X11.=0A=
# I like to use systemd, but you don't have to.=0A=
=0A=
DISTRO_FEATURES:append =3D " opengl x11 systemd usrmerge"=0A=
# This disables audio. Feel free to enable it if your device supports it.=
=0A=
DISTRO_FEATURES:remove =3D "pulseaudio"=0A=
=0A=
# Set systemd as init system=0A=
VIRTUAL-RUNTIME_init_manager =3D "systemd"=0A=
VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"=0A=
=0A=
# Build Chromium with kiosk mode enabled.=0A=
PACKAGECONFIG:append:pn-chromium-x11 =3D " kiosk-mode"=0A=
=0A=
=0A=
Regards,=0A=
=0A=
=0A=
St=E9phane=0A=
ANCELOT=0A=
=0A=
D=E9veloppeur R&D=0A=
=0A=
sancelot@numalliance.com=0A=
=0A=
+33 (0)3 29 58 46 54=0A=
=0A=
Parc d=92activit=E9s - 88470 Saint Michel sur Meurthe - France=0A=
=0A=
www.numalliance.com=0A=
=0A=
=A0=0A=
=A0=0A=
=0A=
________________________________________=0A=
De :=A0Marco Cavallini <koansoftware@gmail.com>=0A=
Envoy=E9 :=A0vendredi 24 mai 2024 12:26=0A=
=C0 :=A0Stephane ANCELOT <sancelot@numalliance.com>; yocto@lists.yoctoproje=
ct.org <yocto@lists.yoctoproject.org>=0A=
Objet :=A0Re: [yocto] booting intel baytrail image fails=0A=
=A0=0A=
=0A=
Which image you built and how you programmed the USB disk?=0A=
--=0A=
Marco=

