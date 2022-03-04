Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62438C433EF
	for <webhook@archiver.kernel.org>; Fri,  4 Mar 2022 11:30:54 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.95])
 by mx.groups.io with SMTP id smtpd.web10.5845.1646393452767066912
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Mar 2022 03:30:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=bYwg3Whb;
 spf=pass (domain: hotmail.com, ip: 40.92.42.95,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcG3OY64iuHtV8B/InsNGLeb53ZPzhgNaKVg7ZAdoF4FuDijI47/tOvN4CiqKL5V33EfCIv992mjsDOjLlAZvOUS9yTL6DCoQgTBS7eSGC2z6O8b/LWvVIRTztORKKc4fH9yOT3qx2u/MsD7eTbAsus11KnsclgORDoKTwM9RMdq1R3r3yXqS0Q1O5v+WP8pHmxN5mByBtqEkAzS4Laiwe8Vc6z0v1LWagesOJLj8jjV2eWAWcny6VUmEHFP/7K1v3mcJ434su1zVpcqcD9npQ1qJpZ7HqTkKqYwPxQ7xU4+1bR/h3/IVg/i+ZeDfTtfwTXuBEfVIafmVmIeqSSeqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S5BCV4ePnSTEdKt8YeqI5xvFCiAIG5sD/A1oEhs8Fq0=;
 b=DSn53Vj9b5n+KcCGep5rcHm45/0SUopg1wvS2mpsTFLe0HDwAhzTsrZ7gUJ37n8f/plMfPpfYbYFxiOGYBh06k0jdVIgbatdFfjLgX4FpFQ9gA8nLF/1RP7aO6GZ1eotnVAe1g2nTkIiPHbF2P1q7frP8ZoIZLT5eTD9YXxLQtz1jD3swgtg50V78otQD52iYZRCbPvQdSPIx5nkquW8ujesrJah5a1vwhc+ZDBRV/2LSqeJy5kF01sTxVT99JJs+TmjAXcneE5a3pjQj4Wa4Bi4VW6gfUrWI+rl+oYg0F2idmrKjm2C2DvLNiEzzV5fXBOOXwqJp/UjR6ZNnRyxkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S5BCV4ePnSTEdKt8YeqI5xvFCiAIG5sD/A1oEhs8Fq0=;
 b=bYwg3WhbupqyzJfp+pWZZp70SKLlpkKmOyd026PtNVaEZqdy9XGzxHws0kf/kStwcEgGKFR939VGsjuSs9AIDjOuDEK+HrVq2dnoJPjdBRAAS/8SVj5hV9ugP+BcKQivqT2ckCrXwyaOM6mFuueoZlMum7OIt/q7LB0uCY87fktXacXniwip1eaUDuJWJH/jYba+Q4p/LMBJWRYGxHB8mfEA4Sj9asvCWbksf1dgCF5uQQ6FarorYrFtB37Z4PBkzf9iN/OjardSyoVJcBuTZetLt5/rgi0InrIYEiQrJjUPXeAGUvt8zAkys1+TfyOHlj4BWm4xrviaTcgbBzCBoA==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 MWHPR16MB1823.namprd16.prod.outlook.com (2603:10b6:301:1a::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.15; Fri, 4 Mar 2022 11:30:50 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::9d33:2d:d69b:9a05]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::9d33:2d:d69b:9a05%7]) with mapi id 15.20.5038.017; Fri, 4 Mar 2022
 11:30:50 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Changing keyboard layout in core-image-clutter / qemuarm64
Thread-Topic: Changing keyboard layout in core-image-clutter / qemuarm64
Thread-Index: AQHYL7tAdhU3DAzwmUG5eIR8/Ub1Pw==
Date: Fri, 4 Mar 2022 11:30:50 +0000
Message-ID: 
 <DM8PR16MB4357A0DB82ADE3C733CD5D15C7059@DM8PR16MB4357.namprd16.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-tmn: [fxyoYRqhby6NaPzbJTVVoNidGEDJePxS]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9d0c3b40-4277-46ba-a42b-08d9fdd26f50
x-ms-traffictypediagnostic: MWHPR16MB1823:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 5bnogiEZgQhpCb4BpAljhGLNinaO+Fk5oAmGjFyBXeDwCqa1GDUry/BYHbMc02+S0oa9n3vyu5ZCU3VGs1m/5kfHAbEixss9kG6RsUgcJ+dH31FY8Yvf6l+to+n7LfaWV+m5oq8+/V9/7oAL+UF9iBptTuKkogL4VZJWFG9N3wLRwlL93eBLfXfYBMxr/Zl5JFMpyIBjgCTlSDEAExgYYN4nIGHkVL7y23hoRo4b4G1Pdl20JBMrJNWNHfVWM5sh6BKeXe1tZITDjQvWcJIEtU8A5Dju/ZtsO79kCf9TN+uwmWynxt4PpXTWebXuna7xKqHjeTF4O+KERp/nLnyftthBWusMumP4LaeP6mJLrReoVQDvCxpciWNc3bnyDmQ798g0w95RXNPYgEKXbSYrYWUcUkErTgt/Ic2QV629sUK3pQ33f2k+js8FrZ8dYc4JFQzcoARczzoFlHtAQ40r8+MVGclSxR6+CYJkKpM1kP0MU3FJtL3ovetMSmJLOUJIdUJIya9rUZ+eL+mT46KL281umurcDjOPjdU/PWiCTLDsAvMBYy8dTR5VDxe1mUEvmQlOHysMXzl95h2DRBhMNw==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 PuuDPikaRQiiDoamD2oCt2x7S8p3vqNxC8a0qFxrtqjGtmVqB/3t8wuh01yg/KoUDtLVJXOizUafnaf2Bki10rWNjVw4p8I4EUxEUftFHt/yafdPYtZwUX9PPLUpLNKK3XlP1nPYF8zw+IEeTktfDgi6khI1iIpUEKnFrguhNFWz5sagahEfayMZ3WclxRzoDTqPy0pqsEFvTqArwDu3RxwtSq6kxpXzuRBPZLhYGZiSpk0Nr5bcROMYh2P9TZlwpMVqcSgWfnzs4SOkFH3CW3Qqm+ugocLsk0xlPgX8uGe26s5ICAhshZlD0FuLtpXht3kRVF32pUuEWA3tVuK6A4gWE8FJ+klxMHaDsEytl4cGAx6Iepfk9RRvjVee69k59ecjqKo0hDJCSxzPkKnlBlX0EbpI2kqaKgQ4MtWbyHrIxvDeiAF6wy8/3Hq8Eu79VNuGMlvNHZSsBTNOW5oowmndCn9BrxTMlrHaYL5Ub7qNk5lMvjTLEn5OZqZAecAWCBRzqhrbNLI/f8WJK3hv97mSbkcpJp+OUjgiKYYICCbP7p6OLL0Pppd89XXW2VRGxpo7+L8b1nuCZV2WCP3p4sE6ZQ19wLFRx+tn80Xac9MBw35H5R56o55EA9gLkwfR1ivswvEhd9X/YYV9dF3XMPVCttgYY/ZKH9vCYjL3SpWO0UTKOPrCBHx16ayfpjr0KLNJa/fw2NQEo0zYLPuU9kztiQ7fKA0pcZyfR4LT79UkEQZthG30LAE6Fe1C85GI+6L8e+KP4qATbJ4eg3LoQxHanpuyFFMKJ34ZHLEfclr14kmp++Wr+oOBQT1H9h5+4oO2v5vFy21xaf23TKg17CFaU4269webRK0kvnWMhJXWXcHEUfw/rQfXcdow0wgZWXNLaJ/Qp+b5LLEGKIIHOr86Tbelhm+GY7UooTxrdAa9oNBHznOKtVAzbO9xPA+A
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB4357A0DB82ADE3C733CD5D15C7059DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9d0c3b40-4277-46ba-a42b-08d9fdd26f50
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2022 11:30:50.1526
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR16MB1823
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Mar 2022 11:30:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56366

--_000_DM8PR16MB4357A0DB82ADE3C733CD5D15C7059DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I successfully built and ran core-image-clutter under qemuarm64. However, t=
he default keyboard layout is a qwerty although I need german qwertz.
I already tried loadkeys de to no avail. I suspect the reason might be that=
 core-image-clutter uses x11 but I don't know how I should configure this f=
or Yocto.

Can someone give me a hint? Having this baked into the recipes would probab=
ly be most helpful.

Regards

--_000_DM8PR16MB4357A0DB82ADE3C733CD5D15C7059DM8PR16MB4357namp_
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
<span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">Greetings,</span>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I successfully built and ran core-image-clutter under qemuarm64. However, t=
he default keyboard layout is a qwerty although I need german qwertz.</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
I already tried loadkeys de to no avail. I suspect the reason might be that=
 core-image-clutter uses x11 but I don't know how I should configure this f=
or Yocto.
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
Can someone give me a hint? Having this baked into the recipes would probab=
ly be most helpful.<br>
</div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;color=
:rgb(0,0,0)">
<br>
</div>
<span style=3D"font-family:Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">Regards</span><br>
</div>
</body>
</html>

--_000_DM8PR16MB4357A0DB82ADE3C733CD5D15C7059DM8PR16MB4357namp_--

