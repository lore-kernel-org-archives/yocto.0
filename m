Return-Path: <sancelot@numalliance.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11A2C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 10:31:00 +0000 (UTC)
Received: from MRZP264CU002.outbound.protection.outlook.com (MRZP264CU002.outbound.protection.outlook.com [52.101.165.2])
 by mx.groups.io with SMTP id smtpd.web11.13713.1716460255045062557
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 03:30:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@numadesk.onmicrosoft.com header.s=selector1-numadesk-onmicrosoft-com header.b=El0bu3hx;
 spf=pass (domain: numalliance.com, ip: 52.101.165.2, mailfrom: sancelot@numalliance.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wme7GDdVcpWvTeqC1ke2QqeZI+NIfISq9Luoa30hY1YDOfFGFRoeLWA+ytTbGUJx0wr/xghK5o75VnHZrMgGAOYny9i5ZO4wg64AwfhaY0mQ1xGaP4OL4sYFA3sAZ/tV0EEl0F4bh9I8ddQyxi4Q8VMV8y3sdm7Q30flMqAyLMhXg9+umy8Xm1W6BHTBBHL/EqSVspR8jNgqGwbOpuP4dIal2T1iPECqZvWVpd77teBM4y6NDRPfNf3iPTfmdM6+KXesY+PKO7wc2+A12Lhvay2t+qAdirERH1D/Sr6nrpQPypjCzHVqynByfkrsKRiTyaD/eWyfhPF9yaljIQnxDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ogE/SIf+cXmiXxj0qRkO6YGqOyTIlxTr+DgJBu3DYFs=;
 b=Fn/3zLFaqTK9hviBdHQoervnHTUigNy4AwRm6Yl5yVr7Kgm2xN4mgRjg3Fm8rphK2hd5KoAHt+HXmTM3bVci18Dq+lSqWjrrOGHOdZ0RmHIbwE6ij4g65D+O73v3MRc1vTa3m3iIt2T8rNrrID5ycXqrqKX273HW+Of2kWP1JbhbEADcQdFhxH2q/9LN75V9OM48/KBLO437muhgXlsyYoFFpyE5pBrs1lT3PtDsFEL3aPmNwq0YJBNU3eK3mnz+FeqS68MUUepFtuMWkOqvoVibksS5Adk3IQg+JbxBCMKufV87WwtxXDNg1JgAopWtLl4QX72yqyokX1wZXcCxAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=numalliance.com; dmarc=pass action=none
 header.from=numalliance.com; dkim=pass header.d=numalliance.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=numadesk.onmicrosoft.com; s=selector1-numadesk-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ogE/SIf+cXmiXxj0qRkO6YGqOyTIlxTr+DgJBu3DYFs=;
 b=El0bu3hxA/Tl2J6Y2p5lPPS2EZjZ/nUnIN5022/e1isZ3yYScv6+2h8BunCg9ppuS6IiMSoHlCqFeBUYYSXE+B4/ik9iab/i47oRMKzrTp2NsS8B75JtLBkJdvuG+QOb0myacqx7E2lmfaX8KIsXZhbULu42wccO0CteSV0qwXiu8TAWHhXLV632C1kGmf4hSd8lbu0mYtb5eFfyjbGYn+TmxMJcgiDhuSlQ2yg4xeKuxCCeMCUdjckgQ/4CEb9vHr3WtIPHxLcotmZJ4/I9OVEPWKZJfuJLmOJVTHX+e65h4KmvQtsOPgaOZkYHUKf5Flhn9+/JstbzErzgafy8tA==
Received: from PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM (2603:10a6:102:256::22)
 by MRZP264MB2332.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:30::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.22; Thu, 23 May
 2024 10:30:51 +0000
Received: from PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a349:4d59:6c8a:760f]) by PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a349:4d59:6c8a:760f%4]) with mapi id 15.20.7611.016; Thu, 23 May 2024
 10:30:51 +0000
From: Stephane ANCELOT <sancelot@numalliance.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: booting intel baytrail image fails
Thread-Topic: booting intel baytrail image fails
Thread-Index: AQHarPtIsg9MxvkP0kulSH5ybb+8JQ==
Date: Thu, 23 May 2024 10:30:51 +0000
Message-ID: 
 <PR1P264MB4215BA3397B10396336412C7CFF42@PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
Content-Language: fr-FR
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=numalliance.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PR1P264MB4215:EE_|MRZP264MB2332:EE_
x-ms-office365-filtering-correlation-id: dcdedded-f409-42da-76e5-08dc7b136b68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230031|366007|1800799015|376005|38070700009;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?2OzfgaObUra3WY9FzJVG2SSTUor3HODKK8Ca+ZMmKVnPD43J7VhwAKkX?=
 =?Windows-1252?Q?Z9C2Y836aT+qUFDNE1/PHEHwxYERZp9Grt8VwF92FEjueDU0TrZ/4jwP?=
 =?Windows-1252?Q?pQLovgcwe8MM896QnJeK71G7BRjkh2V4AKMHznYeFMZrJwS/sbL4xmVn?=
 =?Windows-1252?Q?mNMdMaRmngGHQLMvKA/oKFSbdAQ35TN8II6rIYYI/uRuAF9vvQZSmlys?=
 =?Windows-1252?Q?JRm7zhQdaFYUuQWTk7P305dd1/M55Kx8HjTNqXF6P14jHEVxcEsP3MrH?=
 =?Windows-1252?Q?FRpLt8Ng976qztgpAF7bulRXN75/nBTpuWsYW7dXS2GjttvA29JlHZCx?=
 =?Windows-1252?Q?NRDb9wtS2ZSOFvtzMU0F7l6p5dnnOfxmqzG6LxpRY64pZhJ2uhWLiYoK?=
 =?Windows-1252?Q?GVspm9ypi3eMxPhe52bQYd9BVckagC0d6yvy24iSQLHTu/zeeuRPsvmv?=
 =?Windows-1252?Q?oX0yqUAdUYvFZ2fC+bA4ZROIBOvXz/bm3PPyU6QVgBQ144b4qBbmLUas?=
 =?Windows-1252?Q?B2mQvEP2tLa4p/bqq7XGkFYGCx77h8bukk4g4cPWPtRJAV0LJiUfYL+I?=
 =?Windows-1252?Q?tV5GtMYADcb0M4SK8w6UHdo5ljD6Lxzz55PwBWSqF410Ce4IPmXg+o6z?=
 =?Windows-1252?Q?gS9EuUPxDzuIyXQB+F+a2e5b1Ull6Q3T3yQZ0d9etSX/Gv7r99CeVE5n?=
 =?Windows-1252?Q?39HWe453OSisiee3zym8j/xnGgHwktQf8gm4aBOT2KMcF8P5ypzYcCBS?=
 =?Windows-1252?Q?Y6hViGP/kjCfLWlfs4WMRr206lbTs784Qfl3gSUfEvlg1ulI13e40rPQ?=
 =?Windows-1252?Q?CCHGbKFFUEET3ailtlacdvOCOn1Jwfzx14iZuatkV83dcpPHQDuSTZj4?=
 =?Windows-1252?Q?eMw0t/EBk2dtypGIQw2sPKmDCxAIBcKiWdDExbaNL1DPxBmWq8Dyw0fY?=
 =?Windows-1252?Q?zo7BPNXPKk2OoVIbRlCrHHLzuXZmyifbMrb9npcuvNHd3zC77hDHDNuN?=
 =?Windows-1252?Q?M2N+w8uFCYI/RFxHtmHDjpafk/OWTSHThKGRPyaCxmOXxhBCxXW+z5UB?=
 =?Windows-1252?Q?fza+/Tgh3t0gz+ShdzULzr8NlGUeYx2w8P05n3OTYffLALxV9Li+lH12?=
 =?Windows-1252?Q?YuGl+enp78m9fArS770LRJ8/dFJfj+WGcUYYhfrM9KhEWPhLhaczx1ZK?=
 =?Windows-1252?Q?wgLuCgHaMZBcguKeydcmj4SZnZ50yLxAf3t+7CmthPyLQpd3rQ8fOS8d?=
 =?Windows-1252?Q?l8Ol2gipzE48mX5EfL0TGJBrPsoeC3ugarxAvRc0x5cJp/xI7+FFTFUz?=
 =?Windows-1252?Q?WbfkeeGzjuYhePDXbW+on2+Sg4WD/lmqL7dH7NV3LLIVtMOJztayoEck?=
 =?Windows-1252?Q?/tJqK3mD0Tl/Zw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(38070700009);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?mtCGYSiz1iVfKdzfyvPW+HZ+OYUuT451MbCC29+T6v10+Mkac3QemAK5?=
 =?Windows-1252?Q?Cdz82pnv4kom5Ec2SuReo5klE1y+02MSffdaYMQqPWch+94TVVfo1xUb?=
 =?Windows-1252?Q?oWNvQjRLsgh5vAh33TuYGgABXHxwT4I1vvbno7hssMCNs0vu0TXdKFBN?=
 =?Windows-1252?Q?je+tPAQZtu8+MWB6yQgEYoFEYu2rYNbX+c4icjQZ7St8ZsYDG5ADYJfI?=
 =?Windows-1252?Q?H/3F6kxGKHEGcA6+T5lSY7gGnSUaiMT4fMkX/OwVajbU4E8oXBVN5IsP?=
 =?Windows-1252?Q?vmUinnBY2S3ycE1yHIRho0eL39eMPyXS8chSzEbhA5xMCThFZlQFlL5a?=
 =?Windows-1252?Q?N3ol0k4cxocjOJclkrIEMWPBY2naGCnw8OoPaC161MH87iEIKssSFBrX?=
 =?Windows-1252?Q?GhqTHt/E5Yudkrmp6HjUN7DA7fxI9JYaQibXQ0EQxcGh3+niW2RWR+jk?=
 =?Windows-1252?Q?80kryoWRGU0HThj2J3gFFaFbKVrJciFDINHO/ak73ocoqBMP0u2bpnAx?=
 =?Windows-1252?Q?e+//AzmT54iySdiOzNTPHnHvgp9r1gau0HSN/8uZI8KtO+Gsd1MVmDom?=
 =?Windows-1252?Q?ofo8vCLw312u0Ar5ty8uSsiJH+NXpWWQfdwe/lfCSdze+OHDVeLS0kHu?=
 =?Windows-1252?Q?QTaWA8U3ZqhSe/cmrxODAp3N9tS36f8Du8YiJe6DQQOWmPmpZzjgyS8v?=
 =?Windows-1252?Q?0wfjlmuQdZBpvB1GXetZuseITQ8Q9wHUvlfKL+0aq5Nb2gIsc1rhj4kW?=
 =?Windows-1252?Q?5NpkdfRXzriFPaqtWZ1zuuPKDrKD9G8/gQwDILUCzi1KzNDzBs/ekPMG?=
 =?Windows-1252?Q?ViP2/g07w7m2NR2jDNy1ghD9NfqiQRkhk9fAAQthgRSWuNnYwFs121mJ?=
 =?Windows-1252?Q?Fc5ObibMXlpOVa2UB9cmVJWVcudxtIhNI9W+l6x0ouhOaIwdT/78QF9i?=
 =?Windows-1252?Q?O4MyqNHk0sqqgVHfrQqeEwfYsaTW4yE0Rw+B4M7kQIjqjY1znIhqv7sy?=
 =?Windows-1252?Q?qqlzb8xYMaUVquRdI0YPtuhj4I2qoDcPxVaw3t8pl+du0BUaCjKUHV3p?=
 =?Windows-1252?Q?5hlX/qftm1WAH0enYOi/t0ZwHZ/VFfuj8ITXfqDZheU/Of+m0ff0w70A?=
 =?Windows-1252?Q?MboNdhomulEJmsXFCa4KCUKqQymiXnbSiWCr/ddFsVXjRS8sIH7ju06r?=
 =?Windows-1252?Q?/OJp6FE3b5ZpqKfyCRhh9LuSw9bJlJz1icUDoZ35kiaYJYtR59ywOtbC?=
 =?Windows-1252?Q?xoLW5uuKxlsFK0y1FvsT7hNpBiJV17onT64qeAky4z6mBsnrf7QOXu7s?=
 =?Windows-1252?Q?s/hy1spD8LdW0TvRVv26woHW3vvBkVyG8ouhBmyptGhAZuXjAdzZTWg/?=
 =?Windows-1252?Q?ZkRGW6ff3gWmj0YHpL3fhcPldU1OfiiLhPuDY436a+ToT+NPPTjAS/Fh?=
 =?Windows-1252?Q?2qtGQDzX1OkhWukoIWXb8YMXtniN6LTrw844ZsYRni0CYzGTr/v18g5e?=
 =?Windows-1252?Q?DtMhFcyRGeePn8vIpIHoWXAEdxEPR9EDugXLmAqh803ysxIWapcIi0iB?=
 =?Windows-1252?Q?H9t02Cn6QbAOxrWkhb2FL/6mrsGcQu9qDKuXW5jJ2ox52onxQtoemIzz?=
 =?Windows-1252?Q?eSCet2uZWB5wow6Vxbz6jT9bno3ccysCZ3+MNP24GL+2NHCEKlfLku28?=
 =?Windows-1252?Q?FycdxccgVTM1bDXl5W4zpva5aY1qeKP0?=
Content-Type: multipart/related;
	boundary="_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_";
	type="multipart/alternative"
MIME-Version: 1.0
X-OriginatorOrg: numalliance.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PR1P264MB4215.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dcdedded-f409-42da-76e5-08dc7b136b68
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2024 10:30:51.6174
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1312b0f2-6ca8-425a-b2f8-24eac9852610
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sJ4/BpqVGXNEwqA3R1LiJGsrJGEPeb7DvhNY8PfYoaOtFoyqhEs42PyJdy5qX+4LXcEhHLUzNEfiUZKbkdCwMT8JwZqo8vmpBWat4fBFYQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MRZP264MB2332
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 10:31:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63181

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: multipart/alternative;
	boundary="_000_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_"

--_000_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I have few questions to achieve booting my image

I made a qemu system image that boots fine.

Now I wanted to create an image for my system, so I used intel-corei7-64 MA=
CHINE. and meta-intel layer

I copied the wic deploy image  in a usb disk, however it does not seem to b=
oot fine.
it provides a boot menu, and then displays  EFI stub: Loaded initrd from LI=
NUX_EFI_INITRD_MEDIA_GUID device path<https://forums.debian.net/viewtopic.p=
hp?p=3D792138#p792138>
if I remove the disk i can sea kernel trap messages , very slowly scrolling=
.

I tried to use wic to generate some custom boot images but it fails like :
ERROR: _exec_cmd: cd ./tmp.wic.5bch25mx/INITRD && find . | cpio -o -H newc =
-R root:root >./tmp.wic.5bch25mx/initrd.cpio  returned '2' instead of 0
output: /bin/sh: 1: cannot create ./tmp.wic.5bch25mx/initrd.cpio: Directory=
 nonexistent


From there, I don't know what to do ?


Regards,



[Une image contenant texte  Description g=E9n=E9r=E9e automatiquement]<http=
://www.numalliance.com/>

St=E9phane ANCELOT
D=E9veloppeur R&D
sancelot@numalliance.com<mailto:sancelot@numalliance.com>
+33 (0)3 29 58 46 54
Parc d=92activit=E9s - 88470 Saint Michel sur Meurthe - France
www.numalliance.com<http://www.numalliance.com/>

[cid:34fbbd94-edd8-462e-9f5e-b22439698d1c]<https://www.linkedin.com/company=
/numalliance/>

[cid:72d81e55-15e1-484a-a63f-cdb9e9a7f4ae]<https://www.youtube.com/user/NUM=
ALLIANCE>

[cid:08c09d90-fc26-4971-b9b7-fd2d5541ccd5]<https://www.facebook.com/people/=
Numalliance/100065461542685/>





--_000_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hi,<br>
<br>
I have few questions to achieve booting my image</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I made a qemu system image that boots fine.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Now I wanted to create an image for my system, so I used intel-corei7-64 MA=
CHINE. and meta-intel layer</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I copied the wic deploy image&nbsp; in a usb disk, however it does not seem=
 to boot fine.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
it provides a boot menu, and then displays <span style=3D"color: rgb(16, 82=
, 137);">
<b><a href=3D"https://forums.debian.net/viewtopic.php?p=3D792138#p792138" i=
d=3D"OWA4e55e783-a3dd-3f01-407a-ba4cb336a4fc" class=3D"OWAAutoLink" data-lo=
opstyle=3D"linkonly" style=3D"color: rgb(16, 82, 137); text-decoration: non=
e; display: inline-block;">&nbsp;EFI stub: Loaded
 initrd from LINUX_EFI_INITRD_MEDIA_GUID device path</a></b></span></div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
if I remove the disk i can sea kernel trap messages , very slowly scrolling=
.</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
I tried to use wic to generate some custom boot images but it fails like :<=
/div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
ERROR: _exec_cmd: cd ./tmp.wic.5bch25mx/INITRD &amp;&amp; find . | cpio -o =
-H newc -R root:root &gt;./tmp.wic.5bch25mx/initrd.cpio &nbsp;returned '2' =
instead of 0<br>
output: /bin/sh: 1: cannot create ./tmp.wic.5bch25mx/initrd.cpio: Directory=
 nonexistent</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
From there, I don't know what to do ?</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 21.25px; margin: 0px 180px 0.3em 0px; padding-top: 2px; font-f=
amily: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, =
sans-serif; font-size: 11pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div id=3D"Signature">
<p><span style=3D"color: rgb(0, 0, 0);"><a href=3D"http://www.numalliance.c=
om/" id=3D"OWAe57ffa73-903e-eaa7-676f-720065fdde5c" class=3D"OWAAutoLink" s=
tyle=3D"color: rgb(0, 0, 0); margin-top: 0px; margin-bottom: 0px;"><img alt=
=3D"Une image contenant texte=0A=
=0A=
Description g=E9n=E9r=E9e automatiquement" width=3D"225" height=3D"54" styl=
e=3D"width: 2.354in; height: 0.572in; margin-top: 0px; margin-bottom: 0px;"=
 data-outlook-trace=3D"F:1|T:1" src=3D"cid:302f2b5a-45bf-4a28-87ef-4c405b7a=
d85a"></a></span></p>
<p style=3D"margin-left: 34pt;"><span style=3D"color: rgb(1, 79, 126);"><b>=
St=E9phane ANCELOT</b><br>
D=E9veloppeur R&amp;D<br>
</span><a href=3D"mailto:sancelot@numalliance.com" id=3D"OWA3cbbc3d6-26c7-8=
5d7-7704-d4da03a1b46c" class=3D"OWAAutoLink" style=3D"margin-top: 0px; marg=
in-bottom: 0px;">sancelot@numalliance.com</a><span style=3D"color: rgb(1, 7=
9, 126);"><br>
+33 (0)3 29 58 46 54<br>
Parc d=92activit=E9s - 88470 Saint Michel sur Meurthe - France<br>
</span><span style=3D"color: rgb(0, 51, 204);"><a href=3D"http://www.numall=
iance.com/" id=3D"OWA548800a5-38e3-282b-fb21-3e05f9993f0f" class=3D"OWAAuto=
Link" style=3D"color: rgb(0, 51, 204); margin-top: 0px; margin-bottom: 0px;=
">www.numalliance.com</a></span></p>
<table style=3D"margin-left: 1cm; border-collapse: collapse; border-spacing=
: 0px; box-sizing: border-box;">
<tbody>
<tr>
<td style=3D"padding: 0cm 5.4pt; width: 30.7pt; height: 19.1pt;">
<p align=3D"center" style=3D"margin-left: 2.5pt;"><span style=3D"font-famil=
y: Consolas; color: rgb(1, 79, 126);"><a href=3D"https://www.linkedin.com/c=
ompany/numalliance/" style=3D"color: rgb(1, 79, 126); margin-top: 0px; marg=
in-bottom: 0px;" id=3D"OWAceca6460-18bd-876a-8549-92778a052d1f" class=3D"OW=
AAutoLink"><img width=3D"21" height=3D"22" style=3D"width: 0.229in; height:=
 0.239in; margin-top: 0px; margin-bottom: 0px;" data-outlook-trace=3D"F:1|T=
:1" src=3D"cid:34fbbd94-edd8-462e-9f5e-b22439698d1c"></a></span></p>
</td>
<td style=3D"padding: 0cm 5.4pt; width: 30.7pt; height: 19.1pt;">
<p align=3D"center" style=3D"margin-left: 2.5pt;"><span style=3D"font-famil=
y: Consolas; color: rgb(1, 79, 126);"><a href=3D"https://www.youtube.com/us=
er/NUMALLIANCE" style=3D"color: rgb(1, 79, 126); margin-top: 0px; margin-bo=
ttom: 0px;" id=3D"OWA47fe0e2f-b325-b7e8-72c1-8c17d7fe7eff" class=3D"OWAAuto=
Link"><img width=3D"21" height=3D"22" style=3D"width: 0.229in; height: 0.23=
9in; margin-top: 0px; margin-bottom: 0px;" data-outlook-trace=3D"F:1|T:1" s=
rc=3D"cid:72d81e55-15e1-484a-a63f-cdb9e9a7f4ae"></a></span></p>
</td>
<td style=3D"padding: 0cm 5.4pt; width: 30.75pt; height: 19.1pt;">
<p align=3D"center" style=3D"margin-left: 2.5pt;"><span style=3D"font-famil=
y: Consolas; color: rgb(1, 79, 126);"><a href=3D"https://www.facebook.com/p=
eople/Numalliance/100065461542685/" style=3D"color: rgb(1, 79, 126); margin=
-top: 0px; margin-bottom: 0px;" id=3D"OWAfc25e171-2a7c-465c-34f4-13d47042ec=
99" class=3D"OWAAutoLink"><img width=3D"21" height=3D"22" style=3D"width: 0=
.229in; height: 0.239in; margin-top: 0px; margin-bottom: 0px;" data-outlook=
-trace=3D"F:1|T:1" src=3D"cid:08c09d90-fc26-4971-b9b7-fd2d5541ccd5"></a></s=
pan></p>
</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
</body>
</html>

--_000_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_--

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: image/png; name="Outlook-Une image .png"
Content-Description: Outlook-Une image .png
Content-Disposition: inline; filename="Outlook-Une image .png"; size=8364;
	creation-date="Thu, 23 May 2024 10:30:51 GMT";
	modification-date="Thu, 23 May 2024 10:30:51 GMT"
Content-ID: <302f2b5a-45bf-4a28-87ef-4c405b7ad85a>
Content-Transfer-Encoding: base64

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

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: image/png; name="Outlook-jge0e4pe.png"
Content-Description: Outlook-jge0e4pe.png
Content-Disposition: inline; filename="Outlook-jge0e4pe.png"; size=1273;
	creation-date="Thu, 23 May 2024 10:30:51 GMT";
	modification-date="Thu, 23 May 2024 10:30:51 GMT"
Content-ID: <34fbbd94-edd8-462e-9f5e-b22439698d1c>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAJEAAACUCAMAAACkyzuiAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAEhQTFRF7nUm////97qT8phc7340/vbx+9zJ9rqS9Kl4/OXW86Bq8IZB
/e7k+93J9bKF+MKg8Y9P+tS7+cut+cuu9bGF9Kl3+MOg////kI7lhQAAABh0Uk5T////////////
//////////////////8AzRMu6gAABCNJREFUeNrs3NlyrCAQBuBGFkUdt1ny/m96kpNlHEUalO4h
qflvM1X5SpEd4C23wEv0Er1Ev0NkzFTeMxr7RJHpK6lgnUZ2k2UXmU6CN0r2lk2kpxqCoqqRQxTK
+UYZWlHbKYhN02sykalgV1TXkoiMhP2p2uSi9ojnI51OKtIVHI4qE4omBSnSmESiwy8s7tXhol5B
ugQ8Jkyka0ib8qDINpA6Uh8RTQrSp7H7RR2QRE17RRVQZdol0hLo0u0Q6QEoU0WLiEEeEjwJtE3a
ENVAnz5GVAFHpnBRDzyxoaLRUaldRy2EHq9JK3HVhons+r/W75zPpG15Bx0icnxmZzHLmfiDg4DG
rBAPuaUkjbjIrLsPYhFJWpSWIr0uRKelqE3aXcJE65poEKsMlLUSYO9sWYo+UiStArRX5OjEjmvR
SNnAAVpZn9aiE2XVDUix5hDJbVHp+r2jHN3SisBsiZyPCOq1KHVfRW6JSvfv9RKkk4+ZjFu09Y8K
0o9/9ZAAfUTv38IjyBL0lIxTtDmgVg8kSzHOrVwiT7WnZjXAiQL0XlgdIu8HVH+Z7JV8GPAjwhp0
JS8X2QBVmrWIq7ePNiU/ouHJom4pap8Mur82yOSl3V8bMA6rw762b1HyebS6OH3mXMigKkw+iozv
DReL3P+BWvzl+0nLRcfTXgJQj6LS80tPS1s4u3KDo5OnC9RkHkQyocjRxftvwoZ55YNIJROps9gK
0gLVc5G3NooSKSvETlIzF5lkorPwZQgo2oAW7CjRzQtCxudmJuoSibRAUuDzJIB+ajEiNN5BQzkT
DVwib+HuZiJgE1m0HeEWCRUk0owiTydjuIsMo+iGVUgUIn2rP95Nc2lF3LwKlejeyjvbOH7RdXMm
HC3aNKJiMckoIuaeSUTLluvydNFl2cVAf0EtapCpHm9jS1FDtv5VHr9ooGhFTkdm6EjatRs+sRom
StYbKfCVpyKoNyKzEJUEvdpjopGg539MZAhGR8dEFCPIQ6KGYpR9SFRTzEQcEpUUszWHRCZ4RotL
FD7rxySS4TOjTKI+fPaYSWTDZ9h5RE3EKgSPqItYqeER2YjVLBZRE7PixyLqY1ZFWUQ6ZuWYQ1RF
ra5ziEyqHQipRDJulwaDyETtZGEQybjdPgwiE7cjil4kI3eN0Yts5M46clEVu/uQWoTsPnTtFb9u
z9vV+Pz5gM2xjfG7WGmD7mJ9G3lBSu/ZDU2ZgN3QHAczNr+zjV31LV9RGvafPCAqRIEnDzI8nZHh
CZYMT/lkeBIqv9NiGZ6oy/DUYYYnM3M8vZrhCd8MT0FneFI8w9P0Od44kK6AD6luZUh1c0X/t2/3
yPEGlBxvicnxJp3PYUHkbUPR9zL9gRuZvopUid1aVTPeWvWjyupmr5kro9vPiPISvUQp8k+AAQCf
vYv0pgGyGwAAAABJRU5ErkJggg==

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: image/png; name="Outlook-www3s4hl.png"
Content-Description: Outlook-www3s4hl.png
Content-Disposition: inline; filename="Outlook-www3s4hl.png"; size=1106;
	creation-date="Thu, 23 May 2024 10:30:51 GMT";
	modification-date="Thu, 23 May 2024 10:30:51 GMT"
Content-ID: <72d81e55-15e1-484a-a63f-cdb9e9a7f4ae>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAJEAAACUCAMAAACkyzuiAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAEhQTFRF7nUm////97qT8phc/vbx7340+9zJ9rqS8IZB+93J/e7k9Kl4
/OXW8Y9P+tS786Bq9bKF+MKg+cut9Kl39bGF+MOg+cuu////7zfCewAAABh0Uk5T////////////
//////////////////8AzRMu6gAAA3xJREFUeNrsnOl24yAMha/NYrwvSafv/6aTznRJWowxBnLT
k/s7J/kCEmKRhFc24Un0JHoS2aT1Un1p0N0difTcCoWfMmJauuxEehJwSom5y0YklxFeUu2Qg8gX
5wNKpyVqJoW9MrNMRqRbBElNTRIiLRCutolO1BzhedMkoxLJFoelqohEi0IMGR2J6PCE7Zu6baJZ
IZ48hmmLSI6Iq+ogUWcQW0IeIVoU4st04UQTkkgtoUQtUmkJIpIC6TQFEMkeKdXuJkoM5EDCnYDW
kVaIRqTXvIeoRQ4t/kQz8qjzJRoyAUE1fkSdykWEXvoQZXAzp8MhVzBb0bBNpLMCWUzpO5FUeYkg
toha5NbiJtLZgaCkk8jkJ/rub7jLYu1aunFXs7YZ9w1R5bdzF28aS7f+fUj4/UW9RuQaojeCuq6L
ADV1PVwIe89BgscQ9S9NEUPd2XgMEjaHyAxFPJVqc5CwNUSjLGJq5ZCsrUTWz45FZEmzsSbBvU8z
MjZR0VkHSVqIrJv9uoiv0n0M+CRqrBaXAKiwepD5SWQNIH9SEBUnZyj5JLIuYDIJ0eC8CYBr0vok
QIWEa9rgmrRTGqLCuKYNLk8rExEJl7d9ECGX76/6v7glsu9mu0REL9ZfuyWyx7REQEXtim3vRIKA
qLohUqHOL6O5P8ZrogahMaQ8hezm4FiR4DBsLyKoUsYhwjWR3bDPno5sdoe/3mHacNyHlN5Li+gi
LJHv9yRwuFq5Y7E7yeNE1RVRf5joYk6HiaYrIhwnuphTfZBIbBINe0OUaI4Etmsi+4rlFWi/ffdZ
HiDqv4h0NCKol3AiJCG6/NOajegSoBo2oouXyifRY80am2VH8n6+FTJ7FDkHxrW9kXaIGGn5diN8
Oza+XS3fzp/vdMR3guQ7ZRPeRPDd1vDdaPHd+hHejPLdHvPdsPO9QhC+1PC9ZvG9+BG+ivK9HK/E
NnHH13W+DAS+LA2fTJaQKTyQycKX7UOYEcWXNUaYWUeYfXiHDM3h4bJY86WL2+fsIbKhCTPGX5uM
WfWPWnlAWJ1BWMFCWOVDWAnFVy1GWFFHWHVIWJnJWL1KWOFLWAVNWClOWE3P2HEgnoH3sboyxOpc
Mf/u7h6MHVAYu8QwdtL5fyzY2W1od1+mX9CR6d2kqq2uVWPGrlWfVFSdva64iLqfJdKT6En0O4n+
CjAA+SSTeppM/YwAAAAASUVORK5CYII=

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_
Content-Type: image/png; name="Outlook-uxbc3d1y.png"
Content-Description: Outlook-uxbc3d1y.png
Content-Disposition: inline; filename="Outlook-uxbc3d1y.png"; size=1332;
	creation-date="Thu, 23 May 2024 10:30:51 GMT";
	modification-date="Thu, 23 May 2024 10:30:51 GMT"
Content-ID: <08c09d90-fc26-4971-b9b7-fd2d5541ccd5>
Content-Transfer-Encoding: base64

iVBORw0KGgoAAAANSUhEUgAAAJEAAACUCAMAAACkyzuiAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJ
bWFnZVJlYWR5ccllPAAAAEhQTFRF7nUm////97qT8phc7340/vbx+9zJ9Kl4/e7k8IZB9rqS+cut
8Y9P/OXW+tS7+93J9bKF86Bq+MKg9bGF+cuu+MOg9Kl3////+WchdgAAABh0Uk5T////////////
//////////////////8AzRMu6gAABF5JREFUeNrs3OmSoyAQAOBGQC7vzGTe/013t7aSqBFtGhB3
K/17xvqicko3/Fwt4CP6iD6if0Ek685axR9h7VS3xUTtpDhshuG2kyeL2smDmbEUUUUQtYMBXIxO
5hdpNOeByityHIJDDDqXSDoDtFB1DpG0AujB6+Qi8v153iedVFQ3EB9WJhNJBUnCdIlEnYBUMcoE
IjlCwhBdtKg1kDaGSNEEyaPRMSIFGUK0ZJFsIE84okjnAgFMJFErIF8ogigraI8EZUA7JCgE8pO2
RTI/6PfIGyCSDZwRDi/icE7UWNFwEgiExom62GkQ57eqqm5/FrlHYxxKpCPeajF+92wZuu9+4wR+
JvAuor/V/Iv5ovL9T3cssuT5oWYsXCTkkailvjw9YxQRjEci4jO7S0YUvT03SPLMvhkji9bPDVK0
sy8WIVq3N0gwi61YlAi0X1TTGhmLFHG/iDSeCRkrWo5vEH2LOhYt4j4R6RZxFi9a3CSIvUV9ChHf
FpEammEpRPPm9hLpPH0jTqS2RLTuWqcRzTrul4i0CdKwNKLZnBviZo773XX/jPvhT3sXqcQtrb+H
3XT9JqKNsb7+ug3u26a1iDjd94HCf1+zFtEemqfDJk1q9EpkUopIw5FbiojT620R7WLjUkTcAd1u
/DfaWm8pUilFxNVDuxCZlKK4rZK/IgkXEA1zUX0FEZ+L7BVEMBcNlxDpmYhfQlTPROYSIjcTwSVE
9nKi4SWqryHiH9FHVEZk+Cq2N9f4W+DmJyJcVDFiVLgffKLoluupkUX8ciJxOVFwW2szi/qQ9VHQ
SEsVfWUb+6usjX8havKKkEeYuvBZbZW18S9mtTaviLAWcVlFyF1gQ1hBVlkb/2IF+ZNV9B3S1B6i
JqfoFtLUHqIhpwjZ1ORC1OUU4danzXJHS+YUBW3WPHdGm3yiPug1eopQfSSvVrG95b/6o3tI//gS
0fZXE65FxrevEKawyL2JhsIi+SbSZUVq44tfU1TUbYhcSZHZ/JYtCoqmTZEtJ5qf+JmJZDnR4Dml
oYqJtEekS4mU97TPUEa0PDoKUUeO04jszqkxW0K0Olq3OutnCojc7unD+nwRPzihOZ4uag9EYS93
ApE9POnbnStqEKehhzNFG6fYISrtIFrkUKfqA86hxIoUMvOgO0vUoLMzpnNERuJzatQZIk9mHUQl
98WIfKl+vtysJrvIBWaLySazyAVn1KFIdJEjZB1icp+pIlHTckVVLtFu/ipE5ffSRPs5vhCVJE4S
HaSLH2RBt01ykY3MFN9/v8NF4rA8w3F+/96TCxYhEvwRFQd2MvwDRQJTBAFVJ6IzSUQKVSgCV7nC
V9ojRIQt8IGt7qFVnMigq8Xga7JsmbAiE1C9JqRujVaCJOJB1XTCKunIyQSLgorWUOoftYMIEPHw
CkiUGlH1swbSvmh0mnB1Yh0t7ZTZFXFb064cU2tM1nb7a5Z1MfXG4uuxrTjR1/vUrPuI/k/RLwEG
APGdiFcmXphFAAAAAElFTkSuQmCC

--_007_PR1P264MB4215BA3397B10396336412C7CFF42PR1P264MB4215FRAP_--

