Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83675C433FE
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 12:56:20 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.92.18.63])
 by mx.groups.io with SMTP id smtpd.web11.5018.1646830579937945789
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 04:56:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=Ac405UMO;
 spf=pass (domain: hotmail.com, ip: 40.92.18.63,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gm+ptyAUQBbDVF13Rk8dLInarLrwbc3v3SwKwksBUb/8irUst6e7qlpLd4Zj322mLl9snVjqeYOBCmX+Z+Ao+bVVQ8doiQ24n8CrwPFKObou1nY9mf2VlxUfOnj2wznKqilWkF3M7h2cMv74lvpAhJc/N/5DtfOSe7oB4MLYb3QO/4UyfYCq2tSOIYs/3C4S9LVuRTPavMVLeS1lYYOaswKFBOgYAl2K3mW7N3cI138ZII7vEh0C0jp6GvhunnY1kwFPW+qBj5KlueX1gMI4KepnTCcR3Se/mfxeNc5KvnVBucD060np7L6WX6VPMUR5d3SDSwtsfZ1eQ8NEW+VxKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwbgcr1y5UOjNA8wL7FjeZrW/GtJ0pFmZATW5V4nByI=;
 b=C/M1weTbt6I8kkmDviqlhFw8LtCS9BO7gy58DzLoAErtEzBP1Fi1ZRphVtdwqUA3bPUjHi71h8RLbQdN0bGuIHmZhoNeWUuOI7LAjQkBmIu3/hhQgmwUSnMaZJ4cIFuqIyc0P4EDN23GlN+gYlM1VWQ19/8muP86aGgACw4MKfipN7fZ7XvwD4k3V2c41bBJox8RBP6ozzShBOhdzTnH84/M1sxQ+pm/g4YniL6aAjl0ya+mjsjWG865lF/k20ebymA3e6peOthW5i1+P5kPdqNBhYH3o4ZGtjM8TF+L9NoBen1aewzltP6hmfK4HnppClmm/HMXNe2RpRDJeN0kLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kwbgcr1y5UOjNA8wL7FjeZrW/GtJ0pFmZATW5V4nByI=;
 b=Ac405UMOjDXaU25EON5agy9P3Gf1iUoDAv0uSI75VtS9dsCYMWC5AREMK/oLKxPg0NfXWmMkc2X7zF07pe/J42Nmvr5bW3CLBsY/XfI43qcnm6hXPOPblKx7KBjc+eIQ2Omj0FpTPb9OpzUIq9Egm44L+UpHvqpxBe1F+PMv/fsAMDFmK3apT/NW6qyghsrKgB9Cql0JTkG2RmfYMqEbxWo5zz3Uhorn1i1JCTNSBcC2Jqlax+LVkEwrtV/K9sdCp408geyPITVrpmcMnQVhGjWnRgiyGH71O8wxQoM3uPjbdZFdLzztVXCr+yYenchiKMmyoLm56J+wLoak3qUcZg==
Received: from BN0PR16MB4365.namprd16.prod.outlook.com (2603:10b6:408:160::10)
 by DM6PR16MB3514.namprd16.prod.outlook.com (2603:10b6:5:1cb::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 12:56:18 +0000
Received: from BN0PR16MB4365.namprd16.prod.outlook.com
 ([fe80::d081:8fa7:b568:9ab7]) by BN0PR16MB4365.namprd16.prod.outlook.com
 ([fe80::d081:8fa7:b568:9ab7%6]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 12:56:18 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Activate ivi shell on core-image-weston
Thread-Topic: Activate ivi shell on core-image-weston
Thread-Index: AQHYM7UDznmNds8BC0qpIOL/KNSLwA==
Date: Wed, 9 Mar 2022 12:56:18 +0000
Message-ID: 
 <BN0PR16MB43657E28848FA9708232423BC70A9@BN0PR16MB4365.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [rBJJxJkC9SjBcgzFSQ3KyS+FXnG9Iq2J]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06dc59fe-e1ad-47b0-5881-08da01cc33d9
x-ms-traffictypediagnostic: DM6PR16MB3514:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 n4jlMGdg8t2VUnFA/bm2JE0NfbNWv4wQoXwGWBCsoK5GReCf3K4hnCaXyPAo7zRIgbN5WE7cFo26gc4LHOEHLDpVXZITnQU5iEYauJXib6Jatjv39ZaEB41jLmD76dTvHL4QuToxa4ZpGZk9ZmF07F5x9hlJPgMpYtcXfPnGEgX+TgkUMbsH+lYxLGXAoCHFxq0Xsyb21VtG3MuOzMf5Kqc6v4Q+CTKlRdpYo6byTljUsRxMSTCsFWS9+uXrKN+lG9fRO6wpMI7Fm+PEnBSep24MvYVwlKxUlcMUzXvYDdLSIN/DLwGtjw6wicCbiA7Cn3mC4iFdxsZH0t7EmM+p26PktPGIzjgNRBpBpl0gyPyq490aLaa9JjSpiAGKp8Pw9JO/msg6kHAGiOUfjhmjMeHGpKJOb0BL2iyRvGhWoHFnjTRZmkoJoc/9TlqOssdVE6CxpJvtbo1w41M9WnHrmSdgw8zChsM+MBn0N7jQcatz5JPlybhrHFV7YLzH7g0hWgzsfkVa4gi4/lJjlWJ+FAw+mUCwjrf0mNAiSL76gtMg01xmY62q7lJT3TF2YenGF9u8ZnaSHXBiVNSH3nMVmw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 sgdjWaETqxO2W5ORKZMz91Jwe+66NQWHo62VPhzpCCRNlEfsKVhROfc3ZF6pQWqnn1OXVWtRX/IADSS4xKQ4XcRecjAAlTDHwY8gvVH8UeF0Y3TxIdYxo4RgGh1emdkG/cosBGqkF74SG/T8j6d6/+Y/t6ujdS559lykb+eZ4UMruTydOCVSBOYD+cyQooSDw/vXBfjggLhCsex0VysESyiuBVen33lioNtyqr/dtBSIPiHJzWIyKcu+7iJBrvdZlnE1kIOQBRRLrP7HoiMzHoisKt5ZuNPqYojYvVIJDOzp9PeyFsa4Xo9FwNFHC1sBHQFOOML4ADjybY54nWhb59XhP4j0/HZblY6po3d+imljxTb1G61fhS9DHbMGOf2GMpi8TY3zXIqVXMAovzMxdLjgTRptUlI8wO4s/9kJeISrwptrhCW9Px98I8rwQw9+6R44jGbtCPMOz60qlZ8PZAS6D4xJEw5VWI/+ogFdMgrPFpeYeGPwb4H5VChXhCHrcNehDIN3qpbmszZ1cxpryyi+Lw2hwLWrhvyvc0JQvSwoS7aPLUAe7BHVNbyaw2gtrKEXbRzl0k0U+Uk4a6j+yVq9s3NiAXHreie8dcVFjtBsAR49TFSPdfEmZclbqgCQigwi/KQ1aQKUltyBIrYGuydwQTI8eBhU/Tmrl1EMtV+KmMcN+UnQUDt5pplrHN7lU63+064K98GdkfQWxlCt3IbKo1JyDtxLf1XNJzCInBbgMRZzlDjpulm93AvH6YX0ORlasWPOUuUGBzCQB7gVITqwjByVOBK1hbZISRjQhHwfAYigQ0CGro/HVyuPwLWQ8smPkpJ+FqSsdpjYFB2UzRCSAAfMV9npN/mK94dkhC7UYTPkTBbOXBQDKu4VSujVJ0xtf8PmFSMvOgJ+5aoYgpFE77i6jp/5N7yiC8VLp9iSyh0/SKNBMiv0m1c9woXI
Content-Type: multipart/alternative;
	boundary="_000_BN0PR16MB43657E28848FA9708232423BC70A9BN0PR16MB4365namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR16MB4365.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 06dc59fe-e1ad-47b0-5881-08da01cc33d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 12:56:18.0247
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR16MB3514
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 12:56:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56407

--_000_BN0PR16MB43657E28848FA9708232423BC70A9BN0PR16MB4365namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

can someone tell me if and how it is possible to activate the ivi shell as =
default shell in core-image-weston ?

Regards

--_000_BN0PR16MB43657E28848FA9708232423BC70A9BN0PR16MB4365namp_
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
Greetings,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
can someone tell me if and how it is possible to activate the ivi shell as =
default shell in core-image-weston ?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
Regards<br>
</div>
</body>
</html>

--_000_BN0PR16MB43657E28848FA9708232423BC70A9BN0PR16MB4365namp_--

