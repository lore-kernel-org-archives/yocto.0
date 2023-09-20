Return-Path: <dave.hitchman@kymati.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B223CE79CC
	for <webhook@archiver.kernel.org>; Wed, 20 Sep 2023 11:05:08 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.47])
 by mx.groups.io with SMTP id smtpd.web11.35479.1695207904294828099
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Sep 2023 04:05:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kymati.onmicrosoft.com header.s=selector2-kymati-onmicrosoft-com header.b=ojySBUlA;
 spf=pass (domain: kymati.com, ip: 40.107.7.47, mailfrom: dave.hitchman@kymati.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fYeBk1A3Btrtn+bSCsQ3pRRNblGfLhHUiguJzDJhFla/mvxz2CexmB6xgIhu98TWQh8Sl+ytMtUZlyKVgOUODtZW2sgrI8YmHSaWBFGjr/WS6Ep+9Njlew72/C7AgJ94QAK8y/yk6uDc3QqxZDj0tInN260fOuf0+R3cG9D26ZraOph0AndwcPE0mb8Qj8kbAd/Q5m2YHTBAyOktr/PRAEmToiCBZ0rMYQ9sHS4MwmxmtG3hoVpta5olQ+nxMrGY33apM+lpwYw7b59HhcPG2rYchILIQWaQ5eahrjNbqu6QaXiAH2adjXf+Ggfi/uNuhkzUIRIAlnpQ8jpU5WnAeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/0yclNGGDSfL3pRZY9u2vokgXAjZAZL/8qvir/KEYCU=;
 b=UBkYDTQB4mjRPSkGAIuN0nNJIvfEyygdlMO9gWm3y1fjqxSz4u2a5siRRZSJPgrFwIpeaHy5Cufq0ICKN1A5bkYOAFqxT8L76V5iAaFm6s5zBipDUtHJw6+at/Ym0Ab0+obaCBUXDib/TzEgljUFMqDA7xx2Hb/UpKgcGMozNdRfyEM+4Wu2aEi9OEnkngxNezwl4on9mrKOcpI9yQ94EQ08DOPlb+A5SJxU4zYcG9PDW2iZh1ceau1GYNJ4ZUN9If3KPwA6nYwQVigxVu2OVD8sg395ukxxEbAj9PspwCeivJpoXOjg5vukv3h3QpmQH5KclB8gytKqcWbtd5BqbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kymati.com; dmarc=pass action=none header.from=kymati.com;
 dkim=pass header.d=kymati.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kymati.onmicrosoft.com; s=selector2-kymati-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/0yclNGGDSfL3pRZY9u2vokgXAjZAZL/8qvir/KEYCU=;
 b=ojySBUlAUJ1Pd5/a6pSwL1+95JCZE2irX15fEw4O6OvXOalvKTSeLT1UlVcWi41iy4tWhlP69dRShDaWfzeloxSjPt/yhNFSs937q8MV5JYNZ8GvxlTcyP4UN4zIL8YZ5BgIAk4ziGl8sCf/QjKC9kVpT6u3EwN7KY6Uo6bvMQg=
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com (2603:10a6:20b:2d4::7)
 by AS8PR03MB6984.eurprd03.prod.outlook.com (2603:10a6:20b:29e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 20 Sep
 2023 11:05:00 +0000
Received: from AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf]) by AM9PR03MB7012.eurprd03.prod.outlook.com
 ([fe80::2f9a:1999:e82f:efcf%2]) with mapi id 15.20.6813.018; Wed, 20 Sep 2023
 11:05:00 +0000
From: Dave Hitchman <dave.hitchman@kymati.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: following from bitbake virtual/kernel -c menuconfig
Thread-Topic: following from bitbake virtual/kernel -c menuconfig
Thread-Index: AQHZ67FV0jlqD8u+l0y8oWEb+VfoAA==
Date: Wed, 20 Sep 2023 11:05:00 +0000
Message-ID: 
 <AM9PR03MB70124AD0AE23ACB9C3DA351692F9A@AM9PR03MB7012.eurprd03.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kymati.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9PR03MB7012:EE_|AS8PR03MB6984:EE_
x-ms-office365-filtering-correlation-id: a2c5351a-2fa0-4e05-fdc6-08dbb9c96f20
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 biqiPYXdnJdmktG3XnblgekTH/+5I3ZW556iot4tIHHnqlbNPnud26LIWN6NhQYrdRr491m74MlM1wdm9KJnZo7zWJJk9otRonQzY9LWZnpiN/OkG2a66ZTAt557t0l20mqzq/U0nW3jJVuM5YPzLMKPoo77LTCmMtTQKMm5Fro7K4P/YtnbpNHL2rNUmHyJzBCH8znJyyG6sgRbX5BrP/8+aZj93GFhSdcPmcRH71hdKxR6U5o8GCTdTn8CMIP7iRlqH5dBy6uombk/vG5rqeVrNAqDs1JHJjmWAmQ53li83kn6EY6lahr3y3B6OXHrfsjLZW4qZtl8CCILrBT4FGbELdlFn3MQdyzr0y3TEXfz7DZveCKyePa+UxzqjO8EG3rivtKBOs5dEd8lVpt6DruxcjQa3FP+pzYm6sXAEO/AUG1nv9vNjMDY3rCGHTMBIn5+zYFWk+24pEkm4TebQq2uWdaSy/7kzOqAbi84+seGey6faSd0Jqx/qNBWKI+Jbpy/Uzs7zNQzE9LFhWyw3yaSKzNptTZkiylHOn4dIwVnnblfVQ1x+y2xFNUd8/cGSVdwaC1TbGu58YauhzCxitAjYNh82esHpJ2NHeLIvjtRCUTVx4dyJRg6GNYx13zb
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR03MB7012.eurprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39830400003)(376002)(136003)(366004)(396003)(346002)(451199024)(1800799009)(186009)(38070700005)(19627405001)(6506007)(478600001)(7696005)(55016003)(33656002)(86362001)(122000001)(38100700002)(2906002)(66574015)(9686003)(71200400001)(83380400001)(52536014)(5660300002)(8676002)(91956017)(8936002)(41300700001)(6916009)(44832011)(76116006)(316002)(66446008)(64756008)(66556008)(66476007)(66946007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?lO1FEfnN0/oKsZU392uUcM597N2+bfEk/vdvN1cxcQCJThUTAKcEajghNl?=
 =?iso-8859-1?Q?vlo2g3IskCcLyIr72BL7+Vcr2cE2TmQMrYzBxRe16R+3ZzfSOLTQgx1AzR?=
 =?iso-8859-1?Q?XA5w7yfmsS7dPD+x3HOUMC1+Lo5ncJlRE3ssUl1B37bUGm+r3D+Qtxq2PK?=
 =?iso-8859-1?Q?Dat2Bc8vBRzzwPVfco3202fOPWLm19I3ZunV5nW83BvR4qbIKWKV8aDRNr?=
 =?iso-8859-1?Q?vLwh5YMhHpmJd6/oKRZhtG/y+4yOx5MUt14L2rRV0Yu+j01qtE+udXfUXv?=
 =?iso-8859-1?Q?17aP4/h9i9Phum5NhxB2e4OrPgZfAe8FQ3K77pDZS9nbjAmSpdyaekx7pe?=
 =?iso-8859-1?Q?0sJ5RNuNiMG3vOmL3szwbxjg3RH+Z42tr6H7IEl1R+PgEYVEtkLhoBxfBe?=
 =?iso-8859-1?Q?BcrGLGV7uu4aAFtgfJRLcsTepzl7vjMVxUxQwZD8OD9vyqpWyIR0MhY7Q9?=
 =?iso-8859-1?Q?4eTRA/Ye6YFB/myEz8vT8O0eXuFt/nfEDyG8IghiePIG/+lFMsH+9Uk4qr?=
 =?iso-8859-1?Q?C6Ed5Tzff9niFeyTG731k9trL2ywdt3C0Ll21iFVNo/vJMj8EtiUyYA0VS?=
 =?iso-8859-1?Q?gGI7pTTD7P9FHKTboz5IjpesQwj3Y4V7wLUSYUTEkh5Glu5bXOhIBq5VP4?=
 =?iso-8859-1?Q?IyjgP1qaPbXHoWqAKblj4Y6eGjINM+DwWqnj1MNVfzKn8k06A0VZ+UhE5L?=
 =?iso-8859-1?Q?/lV8hDmCqtYKHu6oYSB3lGd1eStDK6v6Dj+CUHw16MOyLtMNt1E8tAHCO+?=
 =?iso-8859-1?Q?vWsiHlASByNXTHRwe2b+hlTwmY0RZIoT2dLjmSSP1M5DYkRu/kEhaw9WLu?=
 =?iso-8859-1?Q?cRlGrbTTRraP21Eg9rrXrrjYKxL3uLuCXKTxwrHbJTov9doviFK60Rp5pR?=
 =?iso-8859-1?Q?+PA2kVysTfsMksVIBJBaH1vm3v5Adg+OyMady+RPMlEnywedUpFQ79bp6L?=
 =?iso-8859-1?Q?cEZvHufwkQ1/5buWFcQarbg1p+yAOIeCGn4RynnUl+7xV0ewtdhltGP1eH?=
 =?iso-8859-1?Q?O3n9u76cqN5qmPOW09FFhEpF495HFag+MEkj25vkXxHLIcNPi+zkq7c+mS?=
 =?iso-8859-1?Q?H5v+abA93PeSZ37GJlLY/3nkkFTxXFG/0LVbdQajyQN8KBjr6mIAgYcz8K?=
 =?iso-8859-1?Q?UPE65/Weghxp2sSDmoLfw6yUk/LuYSAqbawFNYguaIKyXmuCVToUMNWM3D?=
 =?iso-8859-1?Q?YKM6jPWlErKFlC0cnqFt3GJhku/Mum97RQJ6LoK0W1ZnKHvxeSc9pcYGq5?=
 =?iso-8859-1?Q?OR3IFUykRjNW4l/FVbQ23QikYuThtQWoYhQWMsrVNeLCEJBoBrs5FG8/DH?=
 =?iso-8859-1?Q?Um7iOOxWuyOGxJxVO/4OL9ytxpkSqsdzIb+nTJRHwoqsUzURFvwk51scaa?=
 =?iso-8859-1?Q?x1BY3M77Jm+PkbZyn/SAS1OECxJKQ3riL3a6iOcYJ72LGqQ6cE6EQmNtpt?=
 =?iso-8859-1?Q?vHGrxDv9YZJj2ae/rpH+X1oEtiZAXOiyRuFB3N9dmTpU/KByQWqxAMpZPS?=
 =?iso-8859-1?Q?AOJTP6vMYZL8h8zB+Iz5RBJz7LD7rlg/fz2i9uvyaeysXPoxuULCLRO5sE?=
 =?iso-8859-1?Q?/SRY0n6EDzm5LbWktstW6W3CIOGda7nNrRm4dBkOTrK3AWNZczfa7Dnrb8?=
 =?iso-8859-1?Q?5GY1vsmT58ecs9E++wQlJu2ZvpCKZAKUmOmi1zwfiF10qb1YC/LPQdig?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM9PR03MB70124AD0AE23ACB9C3DA351692F9AAM9PR03MB7012eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kymati.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9PR03MB7012.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2c5351a-2fa0-4e05-fdc6-08dbb9c96f20
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2023 11:05:00.6784
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f445f429-656f-441c-a343-dbb97855be01
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tGNGrvpZdHrpzVfOCGQjwlp6KTQINc/kP/idJRfluKm+4Exhd4zv3nwgEYKWNw/okkztDeMDI2FECW8jCcKC1mhn8xbwYxxeS7REgcYGR1w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR03MB6984
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Sep 2023 11:05:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61049

--_000_AM9PR03MB70124AD0AE23ACB9C3DA351692F9AAM9PR03MB7012eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi folk
I did a bitbake virtual/kernel -c menuconfig in order to try and get the fi=
rewall stuff, particularly ip_tables, present.

At the end it asked me about a filename to save the changes to and I  gave =
it a new one (custom-mpet.config)
It seems this file is stored yocto/build/tmp/work/phyboard_pollux_imx8mp_2-=
phytec-linux/linux-imx/5.10.72-r0.0/build, not 100% sure thats right but th=
ats where I found it.

Now the simple question is how do I get it to build with this new config an=
d check that it indeed has?

I found on the internet the command bitbake virtual/kernel -c compile -f; b=
itbake virtual/kernel which does at least appear to do something, just not =
sure if it really is building what I expect.
Certainly on the finished build I get
root@phyboard-pollux-imx8mp-2:~# modprobe ip_tables
modprobe: FATAL: Module ip_tables not found in directory /lib/modules/5.10.=
72-bsp-yocto-nxp-i.mx8mp-pd22.1.1
root@phyboard-pollux-imx8mp-2:~#


which doesnt look too encouraging. I am sure there is documentation somewhe=
re but google hasnt found anything particularly helpful at the moment. I am=
 still new to yocto but finding the right documentation works but there is =
a lot of other documentation out there :0 (same as most things to be honest=
)

BR
Dave



--_000_AM9PR03MB70124AD0AE23ACB9C3DA351692F9AAM9PR03MB7012eurp_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hi folk</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
I did a&nbsp;bitbake virtual/kernel -c menuconfig in order to try and get t=
he firewall stuff, particularly ip_tables, present.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
At the end it asked me about a filename to save the changes to and I&nbsp; =
gave it a new one (custom-mpet.config)&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
It seems this file is stored&nbsp;yocto/build/tmp/work/phyboard_pollux_imx8=
mp_2-phytec-linux/linux-imx/5.10.72-r0.0/build, not 100% sure thats right b=
ut thats where I found it.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted2">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
Now the simple question is how do I get it to build with this new config an=
d check that it indeed has?&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1">
I found on the internet the command&nbsp;bitbake virtual/kernel -c compile =
-f; bitbake virtual/kernel which does at least appear to do something, just=
 not sure if it really is building what I expect.&nbsp;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1">
Certainly on the finished build I get</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
root@phyboard-pollux-imx8mp-2:~# modprobe ip_tables
<div class=3D"ContentPasted3">modprobe: FATAL: Module ip_tables not found i=
n directory /lib/modules/5.10.72-bsp-yocto-nxp-i.mx8mp-pd22.1.1</div>
<div class=3D"ContentPasted3">root@phyboard-pollux-imx8mp-2:~# </div>
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
which doesnt look too encouraging. I am sure there is documentation somewhe=
re but google hasnt found anything particularly helpful at the moment. I am=
 still new to yocto but finding the right documentation works but there is =
a lot of other documentation out
 there :0 (same as most things to be honest)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
BR</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
Dave</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1 ContentPasted3">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof ContentPasted0 ContentPasted1">
<br>
</div>
</body>
</html>

--_000_AM9PR03MB70124AD0AE23ACB9C3DA351692F9AAM9PR03MB7012eurp_--

