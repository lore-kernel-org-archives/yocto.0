Return-Path: <karim_atiki@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A65C021AD
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 20:26:57 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.49])
 by mx.groups.io with SMTP id smtpd.web11.6165.1739910411591959456
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Feb 2025 12:26:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=eIZ5MFjg;
 spf=pass (domain: hotmail.com, ip: 40.92.91.49, mailfrom: karim_atiki@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FGwlWdu0r4kHvDyk20pQYFnZum7G8pLBE33n4lftOMHuIqufvodgz7gIhLH2wlvxRMEIlB7BW0xLgwEnb8iNHtioSUW48WWZ+mnqealNZuhNKLx7msV3Tn4dH2tX+SrlM1kHF2ikZJTADwuhA3NZaj/VCxCBjzwC1YoaW6I2FcXerDSfmgjaEtJ2H7jolZhCcpmEZfHFRlRxDuaVhsZBE9moz8egeBCCCzZyrwslehrqbnXYHBCsttPvAbyFpLajAGPjOvKcTjGbZrs1FE2jeFp8qhhB2YGHtH/W+mQDBw7vuU6OWsXMNgC6KkaUSu51Kvsbc2sVUEyCrxmA6oeGtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bR1vtkv5A53N1RHmTrz6sZDcOVrffB1FOIK2Rd/lCEI=;
 b=l/QNRmRf7vkd3gopYXMJ1PwZqBWf2dgk4izz9t1aNPpmY94uCQVH9pPDaozgtoIZIcMgqSjP8fp22DCMPgpNZugk4zh+AYlvdIP5JLxymGmm4JEViuA1YsHAMYdsbFQcRHSFH1h8tPrY8YncH1QyFVOoq4RW9KiLgGwd1UokjocKRWw4gNwefREVufqTodMM01ifNyhTvvWmNht+lTQwG+RWFFdfRRBisf9icI6gE5MYfJokHoVnjbmg1vbI/aPC/etTwBrjdaolgQQ8Onm20tKpSKFCLnziNUJpzpOgK37aFGScQQvL4Lo1nf5achQf/1ccpJsw5weYnh1ijt8tMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bR1vtkv5A53N1RHmTrz6sZDcOVrffB1FOIK2Rd/lCEI=;
 b=eIZ5MFjgYmCZoTsxJGzLURlAsiiH6XD/aiAukYYfTKmNPtDAwceqGPalEipgZIlPRSnJV/CETZzLDxmleEh9xNlTjXIXdjymK0TEvS9qNSHXfk+JCJwy0F05T1nCeE+s0gDYn9lePz10VLuQ9xzU+kw+Mfb/H6ixJE1LJuwlQPFHtzba613q3sEabjrnV5SosuVv4e9Av4+SYhzKVNuVi/U+qFIheTP3n/x7qFCHS6i+GWrf9x8fzBgp/7CAk6tPI4CUB2abH4b/9R3SIQ/2F1kuz9iATwN6ZtC7bXRHSB1CZCVa+URfV8O4ACTe1msJDVoYQfiVhiKnAf0qnn/5/A==
Received: from AM9P251MB0224.EURP251.PROD.OUTLOOK.COM (2603:10a6:20b:3dd::13)
 by GV1P251MB0842.EURP251.PROD.OUTLOOK.COM (2603:10a6:150:55::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.19; Tue, 18 Feb
 2025 20:26:48 +0000
Received: from AM9P251MB0224.EURP251.PROD.OUTLOOK.COM
 ([fe80::7cc5:bd74:b92d:3ba8]) by AM9P251MB0224.EURP251.PROD.OUTLOOK.COM
 ([fe80::7cc5:bd74:b92d:3ba8%3]) with mapi id 15.20.8445.017; Tue, 18 Feb 2025
 20:26:48 +0000
From: K A <karim_atiki@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Failed to deploy gstreamer1.0-plugins-base plugins
Thread-Topic: Failed to deploy gstreamer1.0-plugins-base plugins
Thread-Index: AQHbgkK+fHTxrQtFQUON5tz/snYGLA==
Date: Tue, 18 Feb 2025 20:26:48 +0000
Message-ID: 
 <AM9P251MB022479123123C30D1631B4DC92FA2@AM9P251MB0224.EURP251.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AM9P251MB0224:EE_|GV1P251MB0842:EE_
x-ms-office365-filtering-correlation-id: 71c72251-ddab-4041-d20b-08dd505a91f4
x-microsoft-antispam: 
 BCL:0;ARA:14566002|8060799006|15080799006|15030799003|461199028|7092599003|8062599003|19110799003|56899033|440099028|102099032|3412199025;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Exq0j+XMdubBdkJfamYTBFTPcyiZV+yynGNtfshSYvDOcGeVNdCgztc4ox?=
 =?iso-8859-1?Q?pQyPRQr0higruIlvPH9sZNYUgXtxTYW0DWqtyPcBDccHfaZ5HfSIuehPxW?=
 =?iso-8859-1?Q?M7vTzipUo/7gHu8qBETfbKXsALJtS21mi96nb1QCKG5mpN0MIFHAbfhThL?=
 =?iso-8859-1?Q?A0nXSCCgZ8++x9HM5Tq6KK2BDiaCCPYVJZcUlGnLFLMJW+2D78SU6xAgFP?=
 =?iso-8859-1?Q?fvfDDpL+GRc7tKh9fHxtmxqzfBg+z7FdU2T4RoqGBPvFiGMGKxfSrsEG3L?=
 =?iso-8859-1?Q?FFA9x70vHkrPjKXk7xbFGmosKPcX+4m7qN7o65qWjpkkaXVT7RIB/VWQEB?=
 =?iso-8859-1?Q?LBvaKOVeBlQcDMPaXZIZpgc6mJ4anvtO68wS8L6LU+ZpSDBCDA3K+4ECG3?=
 =?iso-8859-1?Q?1YjeqH5+XdIOLHjiifX6k+4devbFXpdxXeZNlAf7NVFW2bYrOSCK29wluh?=
 =?iso-8859-1?Q?vqpZ1xQAoUx/o6HSqFA8Xt/uPD7h4Pt0VO/E4N1hdQEZA8qwTYIcxhZShr?=
 =?iso-8859-1?Q?9yz3lnlnIF8avAqXWAfyLBMM+l2Wxi7XO/+AP4xEMzw6w6OEMT3OOBgWKk?=
 =?iso-8859-1?Q?Dw2v7hdik2ianulRV8djdy8e0G8fG6cZvjDJ0IEWTWTrFRk13zViZclhj0?=
 =?iso-8859-1?Q?WVr5dx7MtnPZhJAEE1mZxVnvXrHXG9bThnO9n51CnVbx64eJh1SYhwjEEp?=
 =?iso-8859-1?Q?dhKxHOw9w3RuXfNhRmv9V6TvDKcE/6OiEHMarOCrKKYv/lgt6Btg7pO1ta?=
 =?iso-8859-1?Q?cwANwWksYgFqRMqxH/SyIu+axXweRugGaeYA6/vucUxWYXliyUKISfLJaR?=
 =?iso-8859-1?Q?yYdTGAuOi492Lnn1gYr4w1zEyWc5NEGqR2BtIC56g6ieUJjKpn6eMbbmiH?=
 =?iso-8859-1?Q?7LCI7NK38DDtZz2xTxh1aCIAiyFOeKfYsVoHrnWDjCE7f2yieKmaZKMM/r?=
 =?iso-8859-1?Q?mhPgBMFCR/J5t+KYl6264WXcHrtMp99qkVJWr8mlABKVPwMFv1NJ1dY8iK?=
 =?iso-8859-1?Q?yVlAMD7plFaaRfOuXSoZz3IVP7d3UIH86qAZGz/W+AYESxeqiHBXRz70Ds?=
 =?iso-8859-1?Q?OmVp7TGmgTM/DRBz3cjseLd9VZ2jmFpN/kGwTe+o5d2+GkM3QWtXbeJIOD?=
 =?iso-8859-1?Q?LUqzyh1zsIPp//9Cw3aRzl7MybHx0=3D?=
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?VHeVXNMIduc2vOmJzcerZAI9fKUFlaW6xIEBpoZxKAS7NZjboOPQJqMB/q?=
 =?iso-8859-1?Q?S4/TJhxpix2q6QJZQQQTlpjF8BH2rb9zQwPt+kGeAzhMkGLjeHEcZFsoVr?=
 =?iso-8859-1?Q?7Z9dJiVd08MEvc6iUjPOLBj4Af61LLww196S7ICM/KaRSujPMFxPP4PzwJ?=
 =?iso-8859-1?Q?qDfTTeV7sC96QWvmTZT9L2Rk4IAC4aF2MOZ5N6+rkJ2oNXRPOZsNgIAGud?=
 =?iso-8859-1?Q?QWYotcJlFXAnMddKZxAA2dk5B3ESu4Lo9uOuKfVxFtD8tCrBSKGqtFrn0k?=
 =?iso-8859-1?Q?ctTNmWvI7tc2gCfGDJJZfyQ0BRZ3X8G2YobQFT/uXOf9Dx4uNNqeZ0DcBd?=
 =?iso-8859-1?Q?mZ65qKFBBrZQ/L4lzFQGDcFSNjzZ0W8AKt2zkOU2QxABo+OCWMLbAzcBbo?=
 =?iso-8859-1?Q?79XEwWoXzWQcFA7jReqs98QjEa6wPwc7UXiEUumwt1tKL+ERASjFc/7adD?=
 =?iso-8859-1?Q?JNVyqdPrVziq35PRtWeUaN4jVSRk3RaYCcUjL16bYCLZ9kH1RrtcJhuOp2?=
 =?iso-8859-1?Q?2wN3LLZ2jdaGmjZ+Tg5HMAOWX9/iF+5aOqhevl6pFxiHQewwNMagafKeFv?=
 =?iso-8859-1?Q?rc/trlgjK2KJLujarB5EvuxkTEwoTjoGEzKH9YgMmIrmpVfoqfpjEyBkbn?=
 =?iso-8859-1?Q?PJjviXkwchl3oDnQySoo9AITnjBLPsJdYhsGhZQO6CFeGXMN71EGsmY8Be?=
 =?iso-8859-1?Q?GcgMk0iwkkZglWjEyEVEC/I5C8TpqbIBIdGy8Hc1vXwtOyQjsgylehRL8R?=
 =?iso-8859-1?Q?n6n6rQBbwvdnNE68d9qsdvY+QyslRus/zVwUmQ/XSSV5wfWsFrIwFnOz/D?=
 =?iso-8859-1?Q?+NKElF2ixlAhfQknaY/OhuDY99av73F5AIX0mi5HWFyiTjXC+R2T8KVL4L?=
 =?iso-8859-1?Q?ptgtZkeNonELQqfjfN17Y/9XJOgB5F2xnMVvs+sUxrHtcZwGZSKVNsRPHM?=
 =?iso-8859-1?Q?exyQkDY+OxWCqOsJFGweFnlfUDN6dy5XjdY3Xzvlp1W+6MeF3w+Q/APS4z?=
 =?iso-8859-1?Q?+p9SfIGEObEq6hxBLvkr5HwvGrU/6cO2DqocqX9IQJ4N518+PNHhMPJbUS?=
 =?iso-8859-1?Q?3SCI9o2tyU3qxsRuIFVikD7coKUshDXNDLN8RL96WAMWQSwph6wQDJ6um9?=
 =?iso-8859-1?Q?o7Hvxn3iMRPVITBwAQYRbtyz1JUmBvulzpF8rk2wZDg3BWendVR31QbNJB?=
 =?iso-8859-1?Q?Gj9vu5gKGxn+0SkR+OJPRvrWi6xxYw1aYCmcSFFOG5E9pJzc7Fc7APh98O?=
 =?iso-8859-1?Q?WGhuZhRxAx+LlE71PqkD2w7xE6EkGXjfyAiy7oHj5YkVRDdaygmLXkcInh?=
 =?iso-8859-1?Q?F0blgFQXGXdMuCkI03I8ATTt2kHpNQayTU78i0m27WOAIqI=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AM9P251MB022479123123C30D1631B4DC92FA2AM9P251MB0224EURP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-00b75.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM9P251MB0224.EURP251.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 71c72251-ddab-4041-d20b-08dd505a91f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2025 20:26:48.2130
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1P251MB0842
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 20:26:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64837

--_000_AM9P251MB022479123123C30D1631B4DC92FA2AM9P251MB0224EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm experiencing an issue that's driving me mad with Yocto Scarthgap

I'm trying to deploy:
  gstreamer1.0
 gstreamer1.0-plugins-base
 gstreamer1.0-plugins-good

I've added the recipes in IMAGE_INSTALL.

The packages are correctly compiled.
They come with a Qt5 compilation.

But at the end, the installed plugins:

./usr/lib/gstreamer-1.0/libgstcoreelements.so
/usr/lib/libgstallocators-1.0.so.0 -> libgstallocators-1.0.so.0.2211.0
./usr/lib/libgstallocators-1.0.so.0.2211.0
./usr/lib/libgstapp-1.0.so.0 -> libgstapp-1.0.so.0.2211.0
./usr/lib/libgstapp-1.0.so.0.2211.0
 ./usr/lib/libgstaudio-1.0.so.0 -> libgstaudio-1.0.so.0.2211.0
 ./usr/lib/libgstaudio-1.0.so.0.2211.0
./usr/lib/libgstbase-1.0.so.0 -> libgstbase-1.0.so.0.2211.0
 ./usr/lib/libgstbase-1.0.so.0.2211.0
./usr/lib/libgstcheck-1.0.so.0 -> libgstcheck-1.0.so.0.2211.0
./usr/lib/libgstcheck-1.0.so.0.2211.0
./usr/lib/libgstcontroller-1.0.so.0 -> libgstcontroller-1.0.so.0.2211.0
./usr/lib/libgstcontroller-1.0.so.0.2211.0
./usr/lib/libgstgl-1.0.so.0 -> libgstgl-1.0.so.0.2211.0
./usr/lib/libgstgl-1.0.so.0.2211.0
./usr/lib/libgstnet-1.0.so.0 -> libgstnet-1.0.so.0.2211.0
./usr/lib/libgstnet-1.0.so.0.2211.0
./usr/lib/libgstpbutils-1.0.so.0 -> libgstpbutils-1.0.so.0.2211.0
./usr/lib/libgstpbutils-1.0.so.0.2211.0
./usr/lib/libgstphotography-1.0.so.0 -> libgstphotography-1.0.so.0.2211.0
/usr/lib/libgstphotography-1.0.so.0.2211.0
./usr/lib/libgstreamer-1.0.so.0 -> libgstreamer-1.0.so.0.2211.0
./usr/lib/libgstreamer-1.0.so.0.2211.0
./usr/lib/libgsttag-1.0.so.0 -> libgsttag-1.0.so.0.2211.0
./usr/lib/libgsttag-1.0.so.0.2211.0
./usr/lib/libgstvideo-1.0.so.0 -> libgstvideo-1.0.so.0.2211.0
./usr/lib/libgstvideo-1.0.so.0.2211.0
./usr/lib/plugins/mediaservice/libgstaudiodecoder.so
./usr/lib/plugins/mediaservice/libgstcamerabin.so
./usr/lib/plugins/mediaservice/libgstmediacapture.so
./usr/lib/plugins/mediaservice/libgstmediaplayer.so

Every plugins of base and good are missing, and I just can't figure out why=
.

Any suggestion is welcome.

Karim

--_000_AM9P251MB022479123123C30D1631B4DC92FA2AM9P251MB0224EURP_
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
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I'm experiencing an issue that's driving me mad with Yocto Scarthgap</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I'm trying to deploy:</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp; gstreamer1.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;gstreamer1.0-plugins-base&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;gstreamer1.0-plugins-good</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I've added the recipes in IMAGE_INSTALL.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
The packages are correctly compiled.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
They come with a Qt5 compilation.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
But at the end, the installed plugins:</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/gstreamer-1.0/libgstcoreelements.so</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
/usr/lib/libgstallocators-1.0.so.0 -&gt; libgstallocators-1.0.so.0.2211.0</=
div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstallocators-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstapp-1.0.so.0 -&gt; libgstapp-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstapp-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;./usr/lib/libgstaudio-1.0.so.0 -&gt; libgstaudio-1.0.so.0.2211.0</div=
>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;./usr/lib/libgstaudio-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstbase-1.0.so.0 -&gt; libgstbase-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
&nbsp;./usr/lib/libgstbase-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstcheck-1.0.so.0 -&gt; libgstcheck-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstcheck-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstcontroller-1.0.so.0 -&gt; libgstcontroller-1.0.so.0.2211.0<=
/div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstcontroller-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstgl-1.0.so.0 -&gt; libgstgl-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstgl-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstnet-1.0.so.0 -&gt; libgstnet-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstnet-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstpbutils-1.0.so.0 -&gt; libgstpbutils-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstpbutils-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstphotography-1.0.so.0 -&gt; libgstphotography-1.0.so.0.2211.=
0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
/usr/lib/libgstphotography-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstreamer-1.0.so.0 -&gt; libgstreamer-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstreamer-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgsttag-1.0.so.0 -&gt; libgsttag-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgsttag-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstvideo-1.0.so.0 -&gt; libgstvideo-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/libgstvideo-1.0.so.0.2211.0</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/plugins/mediaservice/libgstaudiodecoder.so</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/plugins/mediaservice/libgstcamerabin.so</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/plugins/mediaservice/libgstmediacapture.so</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
./usr/lib/plugins/mediaservice/libgstmediaplayer.so</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Every plugins of base and good are missing, and I just can't figure out why=
.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Any suggestion is welcome.</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Helvetica, san=
s-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Karim</div>
</body>
</html>

--_000_AM9P251MB022479123123C30D1631B4DC92FA2AM9P251MB0224EURP_--

