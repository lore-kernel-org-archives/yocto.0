Return-Path: <kbeal@eclipticenterprises.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51BD5C021A0
	for <webhook@archiver.kernel.org>; Wed, 12 Feb 2025 14:00:07 +0000 (UTC)
Received: from USG02-BN3-obe.outbound.protection.office365.us (USG02-BN3-obe.outbound.protection.office365.us [23.103.208.66])
 by mx.groups.io with SMTP id smtpd.web10.16246.1739368802139242847
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Feb 2025 06:00:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eclipticenterprises.com header.s=selector2 header.b=RDd1LjqD;
 spf=pass (domain: eclipticenterprises.com, ip: 23.103.208.66, mailfrom: kbeal@eclipticenterprises.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=Au2r8/y/qPqKApcyzkfahwbTgiaZG5MiSn6PQy9O+Q3P53HMuDl+8Ldice0W+2EEaxYiDxeS/Gp2/JsSlWkY6/eo5DoFisq2Bo2WXHsp5q17xFhD8+j458lCua/4gpdE0OrluRuLq7aAnbDwHJhEflHkrjO/3p5EtiOJrpO0P7GZsXetuMy2kCI/J0qKTEim7wVxjgZj+YbZe2I6mGHVlOw8EMiCtFMAvXgv+Sk+x7HjpRt6J5n6/fRIvZb7wDsa1OgO2C1VCPzsWCQ3KGgYmr76vcbgMkSVq7O/ERypUdZ+oAKLQSRCrX9osThTIsaPCo3N5sWudO/2sD2V4Vrg4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d0lk2+NvNj4LlyDmWZVsB9HKJYpILT9sGyP7AicEAC0=;
 b=VkI2SgVQ062KYr/2essXSMc8QmWS975YfXnZ7h4BUuOprEz4qhmBnbHYiIN4aA3JGCT1ULKlLvY7jbnYBnIr1HpmBPb37xzaVsoCq5bcodltYneb8qz/Y1RCgAyAFcR8DLzfwkGY3fkCzFLBo5tt9haaVDweyBo6F2T8lSYUcG4QZoMMmGsyuI8EIsraKG/sZ8V6F3xqMmfO0+bFNHEW9w5kwE0hfwv0E2gED2zhQcTZ6QfAU3/K8hIJs+TAvsJfaudKgrtQf8ktl2ITDe2HXzf244nhjShbKujdbjG+XCZSn4brS85LeEg7b4Wg0nLD838MOm1G9gjiF1WMmUWsDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eclipticenterprises.com; dmarc=pass action=none
 header.from=eclipticenterprises.com; dkim=pass
 header.d=eclipticenterprises.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eclipticenterprises.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d0lk2+NvNj4LlyDmWZVsB9HKJYpILT9sGyP7AicEAC0=;
 b=RDd1LjqDoYpPb2J76Qme+tf/GO1JeUNFSWhkQMq7Ujb027Io2/Tv2rKtAcCx843oSL231JvlCABR+qeBDXcvMY+nF/DA3qVmVF9ENw4N+cMVzeJzBHM70OqMlrP1vUb6Uz6YUH3jznsujMcJls8X9w376vwX2UPvK3MqTBTeUjRye3DZrPw3yNltEd1F4BR0BhH9xxIXeoGCZWzDTGAG8AvjTYKThw/LMTElbIfSvJLwFUpWReS90Eu/1fWIh+a1MiowOZFCAFm6kaSEma55jswz+yPHQgUFPKGPyiwSWwQLasuVlbLDmvxY3iEqddTOZMV0amslA0nNoXBOzAgjHw==
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a2::22)
 by BN0P110MB1707.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:187::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.21; Wed, 12 Feb
 2025 13:59:56 +0000
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac]) by BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac%5]) with mapi id 15.20.8422.021; Wed, 12 Feb 2025
 13:59:56 +0000
From: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"skandigraun@gmail.com" <skandigraun@gmail.com>, "r@cmss.com" <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files
Thread-Topic: [yocto] Installing pre-built DEB files
Thread-Index: 
 AQHbfJ+oxNGF4EpkyUqbW6Grw/LpGrNCVQ8AgAAG3QCAABSFT4AAAcQAgAAq2eyAACfRWYAAoUSAgABILUg=
Date: Wed, 12 Feb 2025 13:59:56 +0000
Message-ID: 
 <BN0P110MB19153BB74BE7DB45F10B3910BFFCA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
 <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_Wpqc=DTEOa=3930F=Rn5fqUR4WWpgjpW_EkMfhyCkgQ@mail.gmail.com>
 <1823446B2C0840A9.9264@lists.yoctoproject.org>
 <BN0P110MB1915DADB5511579F063D9DA2BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
 <CANNYZj_m9sY7Zy_Oz_c77tdCiibQt+MDSwss-speiY0MdZotMQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_m9sY7Zy_Oz_c77tdCiibQt+MDSwss-speiY0MdZotMQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eclipticenterprises.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1915:EE_|BN0P110MB1707:EE_
x-ms-office365-filtering-correlation-id: b1828b6d-4f74-4030-ef96-08dd4b6d8861
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|41320700013|366016|8096899003|7053199007|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?1N8KBjUGQzSRMfORqFDx+vHW4DUHe7pPunQ5Nd9RBulYil9WeNyAJfZK?=
 =?Windows-1252?Q?B53c2D1/u74kjc2JHjY+zKupV+ewNF11/EQtbXXKWmY6iONbsM7d3suG?=
 =?Windows-1252?Q?frijJfpIS4MbwLZYaRLM6YhIGhcXY/5rVPMS9y1AEnJvlV/KV7rbODtT?=
 =?Windows-1252?Q?u/vkJ7C4pCB6TtJ2n6Gb80Mg6HZlJAR1yqzlKey1CASmgK0eRVDyLD7d?=
 =?Windows-1252?Q?o4eWBC9zfGfUzjQi1v35C93GSr7P0+hGCLNi9w9DyR9DISWb7fVtIviU?=
 =?Windows-1252?Q?x4BPZng17ZUNyzQZiqDntyClnSmDL6LOe/XYk0zj6mYuPP2tMusLU8zg?=
 =?Windows-1252?Q?Ft2E1337bGJ0TaAs1Qy66LxOWCAtjL1QMYm4Xtbup+qkDs1IiKsEeBsV?=
 =?Windows-1252?Q?cjDa8VkOst22ETQQez3l2dDrnUiY47FzrQRlLqXni+83ymF9BPUvN+7r?=
 =?Windows-1252?Q?k3kfzBmZ9mvFAynIsLsNHceE6eL/S3nkyqk1sJPn5zcBNYcGeLzmP0JS?=
 =?Windows-1252?Q?EMwIJ+lrPfviFp6vWtdKavyLT34NnpFLtKZ4E8FQJamDQUScD0hg0T0P?=
 =?Windows-1252?Q?ASxyZ3XlVyGxzS8O/hpszcSQ2oLNojVow5UXRyg28MeOFcFWwHgb5XOa?=
 =?Windows-1252?Q?mHuVyD76dHYiqgi22P4WiWOHTaDy4mQ+LOrmABxrz0HR+/og8hVMdc62?=
 =?Windows-1252?Q?nlzAmJRGN9MfE6aU6mj+EXRGpaYNmEv76uuAfJbTzFyZ0EV2eK8M/k3S?=
 =?Windows-1252?Q?KVwHu4BFjjD+hxPopknZXJwgYzUKakxx10vpLL0DNBOrEi97EOP/Gelg?=
 =?Windows-1252?Q?Wno9rB020JlZFC6C1v/LeDJZXkWaDy5MiudnQcXl4yc4sZYn8+kEYnLO?=
 =?Windows-1252?Q?2OWfedN5KKXl8b85mrY6ZWvzcBlP8jkDpDrOocik20AqeZApJTTTmGhJ?=
 =?Windows-1252?Q?34s5qf4SXXwvDrk1Gz1QkjGTR3PzvGo1euBSeiIV+d/ahP9axWJ587b1?=
 =?Windows-1252?Q?y4Pe/75W8nsbc4kp0dY3Y8LctWq0tXRhyThtHT1sbF+BPUNDbbTOTZiK?=
 =?Windows-1252?Q?jqEe53wEHVyrJNlm9DgCju4cx2ac+A0z0gVCQheIjLgvroA6jpAE+Gyh?=
 =?Windows-1252?Q?0AXQbcBlf9N1ZIozQQ7x7bP++Vt4BWA/IrsjximYMlWi1Yx4+SoIGWEt?=
 =?Windows-1252?Q?ozQ6ITpJksGj9f54emPgCvPi8fwSFCAtU0Z4e9P25bDTXVqB9dnasfis?=
 =?Windows-1252?Q?G/V2+Gwvl/+yy3Luql11xCB/sWH7K5Cq+kL1NtzlZlAUaOmC7OB3iyFa?=
 =?Windows-1252?Q?V6nJ2X6suaKYkqzbqrj4PM2F+DFLO/PpkvGrYHVQhEIyZykQ4tdCCiLJ?=
 =?Windows-1252?Q?ZusE1HFp/9INolNcYyCYZAQuB1NA17JlxXez1f0e8p9+M/bc1LZWJahN?=
 =?Windows-1252?Q?huYi3vQTIRierXNTwh7g6HKad+JsUnaXm0UFb6aHbV9j6f1bVdjalyZf?=
 =?Windows-1252?Q?2eEWxGEs?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(41320700013)(366016)(8096899003)(7053199007)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?7hLw3TkQiohLAwK0CgCAOjMkpiok0XH0+piPSsq4/mCfHvJCwiMEw05a?=
 =?Windows-1252?Q?WbvdcxFIgkgOSQjAV1rWUHXvhDdlwwZzQ9EjqAx4D+n7J4lGFFIvRhXI?=
 =?Windows-1252?Q?iNMNLEtMK3VX4jugxczGlfYrUDcxfqtMZBPxx9E+P7v/AgQR3V8Yu3F6?=
 =?Windows-1252?Q?OPgT0W/HYrVq2OfGeOrzIcDKuDhVrWREck3U2+deCoZmc8WnUwA332rU?=
 =?Windows-1252?Q?dFwOZaT9ArkGxDrZJoYxyRrXeXYjmubibcCl9W47TRM9bIbJ4UDUm5wA?=
 =?Windows-1252?Q?itK+uJ9iCFxmtpha5qNtoeTGOzX1+3qKNarvaWW75hrrXJR7km2F3Bow?=
 =?Windows-1252?Q?CuayTVNkiykYxHvCmDZojvnHnHITZbLRlClSGpySaHVaetpJ9FQQWRrs?=
 =?Windows-1252?Q?k0LbKRoc0O1GkQLxFM+iAPBKoyGF5wSbBBu4tV8cdlU9ubGh/U0Vox1d?=
 =?Windows-1252?Q?FWQx3kLV/hmfI4UhtwyCLSNqBb43gzHnMsRrh8YnJEzVNZ1bHtU1S2I3?=
 =?Windows-1252?Q?Mf1rTkeWQ3BdyKhKSOP01SNNQg2MC3d/thJulJoyrldHQZt4Q7D8hTQE?=
 =?Windows-1252?Q?7Hx+/iw4mFPqfo7VQ84xBk6EClcbnqPpzh/CVzpl8Zcj3wt7ESLyyRTo?=
 =?Windows-1252?Q?QJSjD44YWK4IBsv8q2XmCszvYtSHbgq/fn4VN8kuTo9CpSgS2WqzFMMt?=
 =?Windows-1252?Q?mWZIHPxHw22qCc/iBejiQmz/BE2Ek/4v04l6Yp8EMBONFvJIjjtJkS2h?=
 =?Windows-1252?Q?Pkv+5YzXigLAJG9q6m5+q2AYURThI0jvciCbKm/G2+9twc4lJtpgx7Bb?=
 =?Windows-1252?Q?ghy+AcBHK3V8zWF7h+7TDvC9m6QGr9DL5niIU/MKMKCKsqtm+NreauXX?=
 =?Windows-1252?Q?KgtlB2Qtk7aeNIIyN8gRhTq/yo1NpuawiekJRsWrLRGcg6JGlMjgDjKF?=
 =?Windows-1252?Q?cTcg5eE805X6A3xOW/UZKPkYrYHH+0EQ++B0WdzK3iPJ0ztZve9boRuX?=
 =?Windows-1252?Q?wlTfNE2wSJdkj7cfuFeKhM5vdQX0iI8CYI26TuHEN8OCi2voMFKWJFNg?=
 =?Windows-1252?Q?rlKaTVfH3FXGjIiuMnpJrIjNaa+95XF2/0LtxK1Djh93jVB3XDPNYKOH?=
 =?Windows-1252?Q?1bB7xaBKPlvQUy5dAnlQrwb1msbXoELMc9oQqnMAmKsYkKfMqI3LekOG?=
 =?Windows-1252?Q?GS/H65zBPKK7mOWcXcdLq2FTcA8KODatALQKX05uqsHpL9HNciGWQexQ?=
 =?Windows-1252?Q?b/pIK7S/xexsShJkddDYtorQnUL68MKEEimiDuwimpq1JX+yRbDx+gcF?=
 =?Windows-1252?Q?FrdLkwA4t34SwkhIVuwo5Ur2giZTZYywYge5YIVOgUHW/r7cUa0LqMiQ?=
 =?Windows-1252?Q?ME2ECvKZDo7+3l59z9hcSXdt7YuXnYLpE1oJW2q8H9eFUlIs+745ZxwU?=
 =?Windows-1252?Q?wpbot9BgVt80f++MlNmsQesLKDEN40CyO+RVjtj+Bef87d7QlcKBwr3q?=
 =?Windows-1252?Q?ycE9rUrCVLevNA0Y+5Qyi2cYpddqGMs7OLSGpsFwRqZhW8UuzZ6PZleC?=
 =?Windows-1252?Q?dec37oh9INBZ4Yvzox3W3kt8n9qqYqKetRmemWtICoq1QivxCzhrhncv?=
 =?Windows-1252?Q?ZbwbzzOnwrpLtPVBocYpo4P2?=
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB19153BB74BE7DB45F10B3910BFFCABN0P110MB1915NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: eclipticenterprises.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b1828b6d-4f74-4030-ef96-08dd4b6d8861
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Feb 2025 13:59:56.7840
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4f66761-c9e2-4856-9874-b1c6d40ccfea
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1707
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Feb 2025 14:00:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64784

--_000_BN0P110MB19153BB74BE7DB45F10B3910BFFCABN0P110MB1915NAMP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Alex,

First, let me say thanks for the help.

I did include it...

IMAGE_INSTALL_append =3D "sudo file parted parted-dev"

Note the bitbake 1.5 syntax.
There are also other packages but not shown for simplicity.

As I said in my original post, we are using the NXP LAYERSCAPE SDK.
I wonder if the issue is with the keirstone branch.

When I added parted-dev, I got all the libraries in my image but not the he=
aders.

Keith
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Wednesday, February 12, 2025 1:22 AM
To: Keith Beal [US] <kbeal@eclipticenterprises.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; skandigrau=
n@gmail.com <skandigraun@gmail.com>; r@cmss.com <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files


[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

I already told you. Headers and pkg-config files are in parted-dev package =
produced by parted recipe.

Please build the recipe and see what you get out of it.

Alex

On Wed, 12 Feb 2025 at 00:48, Keith Beal [US] <kbeal@eclipticenterprises.co=
m<mailto:kbeal@eclipticenterprises.com>> wrote:
Alex,

These are the headers I am talking about...

$ dpkg -c libparted-dev_3.6-4+b1_arm64.deb
drwxr-xr-x root/root         0 2024-11-01 19:02 ./
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/include/parted/
-rw-r--r-- root/root      2774 2024-11-01 19:02 ./usr/include/parted/constr=
aint.h
-rw-r--r-- root/root      2478 2024-11-01 19:02 ./usr/include/parted/debug.=
h
-rw-r--r-- root/root      6241 2024-11-01 19:02 ./usr/include/parted/device=
.h
-rw-r--r-- root/root     18288 2024-11-01 19:02 ./usr/include/parted/disk.h
-rw-r--r-- root/root      4177 2024-11-01 19:02 ./usr/include/parted/except=
ion.h
-rw-r--r-- root/root      3466 2024-11-01 19:02 ./usr/include/parted/filesy=
s.h
-rw-r--r-- root/root      3588 2024-11-01 19:02 ./usr/include/parted/geom.h
-rw-r--r-- root/root      4196 2024-11-01 19:02 ./usr/include/parted/natmat=
h.h
-rw-r--r-- root/root      1705 2024-11-01 19:02 ./usr/include/parted/parted=
.h
-rw-r--r-- root/root      2167 2024-11-01 19:02 ./usr/include/parted/timer.=
h
-rw-r--r-- root/root      2927 2024-11-01 19:02 ./usr/include/parted/unit.h
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/
-rw-r--r-- root/root    202576 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted-fs-resize.a
-rw-r--r-- root/root    807836 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted.a
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/
-rw-r--r-- root/root       264 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/libparted-fs-resize.pc
-rw-r--r-- root/root       244 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/pkgconfig/libparted.pc
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/
drwxr-xr-x root/root         0 2024-11-01 19:02 ./usr/share/doc/
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted-fs-resize.so -> libparted-fs-resize.so.0
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/lib/aarch64-linux-gnu=
/libparted.so -> libparted.so.2
lrwxrwxrwx root/root         0 2024-11-01 19:02 ./usr/share/doc/libparted-d=
ev -> libparted2t64

Keith
________________________________
From: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yo=
cto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>> on behalf =
of Keith Beal [US] via lists.yoctoproject.org<http://lists.yoctoproject.org=
/> <kbeal=3Declipticenterprises.com@lists.yoctoproject.org<mailto:ecliptice=
nterprises.com@lists.yoctoproject.org>>
Sent: Tuesday, February 11, 2025 1:25 PM
To: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.com=
>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>; skandigraun=
@gmail.com<mailto:skandigraun@gmail.com> <skandigraun@gmail.com<mailto:skan=
digraun@gmail.com>>; r@cmss.com<mailto:r@cmss.com> <r@cmss.com<mailto:r@cms=
s.com>>
Subject: Re: [yocto] Installing pre-built DEB files

You don't often get email from kbeal=3Declipticenterprises.com@lists.yoctop=
roject.org<mailto:eclipticenterprises.com@lists.yoctoproject.org>. Learn wh=
y this is important<https://aka.ms/LearnAboutSenderIdentification>

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

Alex,

Thank you very much.
I should have figured I wasn't the only one who needs those in Yocto.
The Debian libparted-dev package has header files, how do I get those insta=
lled?

Keith
________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com<mailto:alex.kanavin@gmail.c=
om>>
Sent: Tuesday, February 11, 2025 10:49 AM
To: Keith Beal [US] <kbeal@eclipticenterprises.com<mailto:kbeal@eclipticent=
erprises.com>>
Cc: yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org> <yoct=
o@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>; skandigraun=
@gmail.com<mailto:skandigraun@gmail.com> <skandigraun@gmail.com<mailto:skan=
digraun@gmail.com>>; r@cmss.com<mailto:r@cmss.com> <r@cmss.com<mailto:r@cms=
s.com>>
Subject: Re: [yocto] Installing pre-built DEB files

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]
<kbeal@eclipticenterprises.com<mailto:kbeal@eclipticenterprises.com>> wrote=
:
>
> I know there is a parted recipe.
> I need the equivalent of the Ubuntu package libprated-dev.
> This is the library and header files for using the functions used by part=
ed.

The parted recipe builds and packages libparted as well, it's just all
placed together into one package with the executables (also called
parted). Headers and pkgconfig files are in parted-dev package.

So you can simply use those packages and ignore that they also come
with executables.

Alex


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam=99
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com<http://www.eclipticenterprises.com/>

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam=99
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com<http://www.eclipticenterprises.com/>

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam=99
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you

--_000_BN0P110MB19153BB74BE7DB45F10B3910BFFCABN0P110MB1915NAMP_
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
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Alex,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
First, let me say thanks for the help.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I did include it...</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
IMAGE_INSTALL_append =3D &quot;sudo file parted parted-dev&quot;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Note the bitbake 1.5 syntax.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
There are also other packages but not shown for simplicity.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
As I said in my original post, we are using the NXP LAYERSCAPE SDK.<br>
I wonder if the issue is with the keirstone branch.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
When I added parted-dev, I got all the libraries in my image but not the he=
aders.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Keith</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alexander Kanavin &lt=
;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, February 12, 2025 1:22 AM<br>
<b>To:</b> Keith Beal [US] &lt;kbeal@eclipticenterprises.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; skandigraun@gmail.com &lt;skandigraun@gmail.com&gt;; r@cmss.com &lt;r@cm=
ss.com&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div>
<p style=3D"border:1px; border-style:solid; border-color:#FFCACA; backgroun=
d-color:#FFCACA; padding:1em">
<span style=3D"font-size:12.0pt; color:black"><b>[EXTERNAL EMAIL]</span></b=
> <span style=3D"font-size:10.0pt; color:black">
DO NOT CLICK links or attachments unless you recognize the sender and know =
the content is safe.</span></p>
<div>
<div dir=3D"ltr">
<div>I already told you. Headers and pkg-config files are in parted-dev pac=
kage produced by parted recipe.</div>
<div><br>
</div>
<div>Please build the recipe and see what you get out of it.</div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<br>
<div class=3D"x_gmail_quote x_gmail_quote_container">
<div dir=3D"ltr" class=3D"x_gmail_attr">On Wed, 12 Feb 2025 at 00:48, Keith=
 Beal [US] &lt;<a href=3D"mailto:kbeal@eclipticenterprises.com">kbeal@eclip=
ticenterprises.com</a>&gt; wrote:<br>
</div>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; bord=
er-left:1px solid rgb(204,204,204); padding-left:1ex">
<div class=3D"x_msg711976476879235233">
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Alex,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
These are the headers I am talking about...<br>
<br>
<span style=3D"font-family:Consolas,Courier,monospace">$ dpkg -c libparted-=
dev_3.6-4+b1_arm64.deb</span></div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./</div=
>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/<=
/div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/i=
nclude/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/i=
nclude/parted/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;2774 2024-11-01 19:02 ./usr/include/parted/constraint.h</span=
></div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;2478 2024-11-01 19:02 ./usr/include/parted/debug.h</span></di=
v>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;6241 2024-11-01 19:02 ./usr/include/parted/device.h</span></d=
iv>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; 18288 2024-11-01 19:02 ./usr/include/parted/disk.h</span></div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;4177 2024-11-01 19:02 ./usr/include/parted/exception.h</span>=
</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;3466 2024-11-01 19:02 ./usr/include/parted/filesys.h</span></=
div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;3588 2024-11-01 19:02 ./usr/include/parted/geom.h</span></div=
>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;4196 2024-11-01 19:02 ./usr/include/parted/natmath.h</span></=
div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;1705 2024-11-01 19:02 ./usr/include/parted/parted.h</span></d=
iv>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;2167 2024-11-01 19:02 ./usr/include/parted/timer.h</span></di=
v>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
<span style=3D"background-color:rgb(255,255,0)">-rw-r--r-- root/root &nbsp;=
 &nbsp; &nbsp;2927 2024-11-01 19:02 ./usr/include/parted/unit.h</span></div=
>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
-rw-r--r-- root/root &nbsp; &nbsp;202576 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted-fs-resize.a</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
-rw-r--r-- root/root &nbsp; &nbsp;807836 2024-11-01 19:02 ./usr/lib/aarch64=
-linux-gnu/libparted.a</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/pkgconfig/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
-rw-r--r-- root/root &nbsp; &nbsp; &nbsp; 264 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted-fs-resize.pc</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
-rw-r--r-- root/root &nbsp; &nbsp; &nbsp; 244 2024-11-01 19:02 ./usr/lib/aa=
rch64-linux-gnu/pkgconfig/libparted.pc</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
drwxr-xr-x root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/doc/</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted-fs-resize.so -&gt; libparted-fs-resize.so.0<=
/div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/l=
ib/aarch64-linux-gnu/libparted.so -&gt; libparted.so.2</div>
<div style=3D"font-family:Consolas,Courier,monospace; font-size:12pt; color=
:rgb(0,0,0)">
lrwxrwxrwx root/root &nbsp; &nbsp; &nbsp; &nbsp; 0 2024-11-01 19:02 ./usr/s=
hare/doc/libparted-dev -&gt; libparted2t64</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:12pt; color:rgb(0,0,0)">
Keith</div>
<div id=3D"x_m_1660197857412109570appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_1660197857412109570divRplyFwdMsg" dir=3D"ltr"><font face=3D"=
Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</b=
>
<a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto@lis=
ts.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.org"=
 target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of Keith =
Beal [US] via
<a href=3D"http://lists.yoctoproject.org/" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;kbeal=3D<a href=3D"mailto:eclipticenterprises.com@lists.yo=
ctoproject.org" target=3D"_blank">eclipticenterprises.com@lists.yoctoprojec=
t.org</a>&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 1:25 PM<br>
<b>To:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" =
target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;;
<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmai=
l.com</a> &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">sk=
andigraun@gmail.com</a>&gt;;
<a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a> &lt;<a href=
=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"background:revert; color:revert; direction:revert; font=
-size:revert; height:revert; letter-spacing:revert; line-height:revert; mar=
gin:revert; opacity:revert; outline:revert; overflow:revert; padding:revert=
; text-align:revert; text-indent:revert; text-orientation:revert; text-over=
flow:revert; text-transform:revert; vertical-align:revert; white-space:reve=
rt; word-break:revert; word-spacing:revert; writing-mode:revert; zoom:rever=
t; border:0px; display:table; width:100%; table-layout:fixed; float:none; b=
order-spacing:0px">
<tbody style=3D"background:revert; border:revert; color:revert; direction:r=
evert; font-size:revert; height:revert; letter-spacing:revert; line-height:=
revert; margin:revert; opacity:revert; outline:revert; overflow:revert; pad=
ding:revert; table-layout:revert; text-align:revert; text-indent:revert; te=
xt-orientation:revert; text-overflow:revert; text-transform:revert; vertica=
l-align:revert; white-space:revert; width:revert; word-break:revert; word-s=
pacing:revert; writing-mode:revert; zoom:revert; display:block">
<tr style=3D"background:revert; border:revert; color:revert; direction:reve=
rt; display:revert; font-size:revert; height:revert; letter-spacing:revert;=
 line-height:revert; margin:revert; opacity:revert; outline:revert; overflo=
w:revert; padding:revert; table-layout:revert; text-align:revert; text-inde=
nt:revert; text-orientation:revert; text-overflow:revert; text-transform:re=
vert; vertical-align:revert; white-space:revert; width:revert; word-break:r=
evert; word-spacing:revert; writing-mode:revert; zoom:revert">
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"background-position:revert; background-repeat:revert;=
 background-image:revert; background-size:revert; background-origin:revert;=
 background-clip:revert; border:revert; color:revert; direction:revert; dis=
play:revert; font-size:revert; height:revert; letter-spacing:revert; line-h=
eight:revert; margin:revert; opacity:revert; outline:revert; overflow:rever=
t; table-layout:revert; text-align:revert; text-indent:revert; text-orienta=
tion:revert; text-overflow:revert; text-transform:revert; vertical-align:re=
vert; white-space:revert; word-break:revert; word-spacing:revert; writing-m=
ode:revert; zoom:revert; padding:7px 2px; background-color:rgb(166,166,166)=
; width:0px">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"background-position:revert; backg=
round-repeat:revert; background-image:revert; background-size:revert; backg=
round-origin:revert; background-clip:revert; border:revert; direction:rever=
t; display:revert; height:revert; letter-spacing:revert; line-height:revert=
; margin:revert; opacity:revert; outline:revert; overflow:revert; table-lay=
out:revert; text-indent:revert; text-orientation:revert; text-overflow:reve=
rt; text-transform:revert; vertical-align:revert; white-space:revert; word-=
break:revert; word-spacing:revert; writing-mode:revert; zoom:revert; width:=
100%; background-color:rgb(234,234,234); padding:7px 5px 7px 15px; font-fam=
ily:wf_segoe-ui_normal,Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font-size=
:12px; font-weight:normal; color:rgb(33,33,33); text-align:left">
<div style=3D"background:revert; border:revert; color:revert; direction:rev=
ert; display:revert; font-size:revert; height:revert; letter-spacing:revert=
; line-height:revert; margin:revert; opacity:revert; outline:revert; overfl=
ow:revert; padding:revert; table-layout:revert; text-align:revert; text-ind=
ent:revert; text-orientation:revert; text-overflow:revert; text-transform:r=
evert; vertical-align:revert; white-space:revert; width:revert; word-break:=
revert; word-spacing:revert; writing-mode:revert; zoom:revert">
You don't often get email from kbeal=3D<a href=3D"mailto:eclipticenterprise=
s.com@lists.yoctoproject.org" target=3D"_blank">eclipticenterprises.com@lis=
ts.yoctoproject.org</a>.
<a href=3D"https://aka.ms/LearnAboutSenderIdentification" target=3D"_blank"=
 style=3D"background:revert; color:revert; direction:revert; display:revert=
; font-size:revert; opacity:revert">
Learn why this is important</a> </div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"background-position=
:revert; background-repeat:revert; background-image:revert; background-size=
:revert; background-origin:revert; background-clip:revert; border:revert; d=
irection:revert; display:revert; height:revert; letter-spacing:revert; line=
-height:revert; margin:revert; opacity:revert; outline:revert; overflow:rev=
ert; table-layout:revert; text-indent:revert; text-orientation:revert; text=
-overflow:revert; text-transform:revert; vertical-align:revert; white-space=
:revert; word-break:revert; word-spacing:revert; writing-mode:revert; zoom:=
revert; width:75px; background-color:rgb(234,234,234); padding:7px 5px; fon=
t-family:wf_segoe-ui_normal,Segoe UI,Segoe WP,Tahoma,Arial,sans-serif; font=
-size:12px; font-weight:normal; color:rgb(33,33,33); text-align:left">
</td>
</tr>
</tbody>
</table>
<div>
<p style=3D"border:1px solid rgb(255,202,202); background-color:rgb(255,202=
,202); padding:1em">
<span style=3D"font-size:12pt; color:black"><b>[EXTERNAL EMAIL]</b></span> =
<span style=3D"font-size:10pt; color:black">
DO NOT CLICK links or attachments unless you recognize the sender and know =
the content is safe.</span></p>
<div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Alex,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Thank you very much.<br>
I should have figured I wasn't the only one who needs those in Yocto.<br>
The Debian libparted-dev package has header files, how do I get those insta=
lled?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif; font-size:11pt; color:rgb(0,0,0)">
Keith</div>
<div id=3D"x_m_1660197857412109570x_appendonsend"></div>
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_1660197857412109570x_divRplyFwdMsg" dir=3D"ltr"><font face=
=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From=
:</b> Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" targe=
t=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 10:49 AM<br>
<b>To:</b> Keith Beal [US] &lt;<a href=3D"mailto:kbeal@eclipticenterprises.=
com" target=3D"_blank">kbeal@eclipticenterprises.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;;
<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">skandigraun@gmai=
l.com</a> &lt;<a href=3D"mailto:skandigraun@gmail.com" target=3D"_blank">sk=
andigraun@gmail.com</a>&gt;;
<a href=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a> &lt;<a href=
=3D"mailto:r@cmss.com" target=3D"_blank">r@cmss.com</a>&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div><font size=3D"2"><span style=3D"font-size:11pt">
<div>[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recogniz=
e the sender and know the content is safe.<br>
<br>
On Tue, 11 Feb 2025 at 19:44, Keith Beal [US]<br>
&lt;<a href=3D"mailto:kbeal@eclipticenterprises.com" target=3D"_blank">kbea=
l@eclipticenterprises.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I know there is a parted recipe.<br>
&gt; I need the equivalent of the Ubuntu package libprated-dev.<br>
&gt; This is the library and header files for using the functions used by p=
arted.<br>
<br>
The parted recipe builds and packages libparted as well, it's just all<br>
placed together into one package with the executables (also called<br>
parted). Headers and pkgconfig files are in parted-dev package.<br>
<br>
So you can simply use those packages and ignore that they also come<br>
with executables.<br>
<br>
Alex<br>
</div>
</span></font></div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=99 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
<a href=3D"http://www.eclipticenterprises.com/" target=3D"_blank">www.Eclip=
ticEnterprises.com</a>
<br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>
</div>
</div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=99 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
<a href=3D"http://www.eclipticenterprises.com/" target=3D"_blank">www.Eclip=
ticEnterprises.com</a>
<br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</div>
</div>
</blockquote>
</div>
</div>
</div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam=99 <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
www.EclipticEnterprises.com <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</body>
</html>

--_000_BN0P110MB19153BB74BE7DB45F10B3910BFFCABN0P110MB1915NAMP_--

