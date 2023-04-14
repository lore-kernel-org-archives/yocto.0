Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E27FC77B70
	for <webhook@archiver.kernel.org>; Fri, 14 Apr 2023 08:13:10 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (NAM04-DM6-obe.outbound.protection.outlook.com [40.92.45.44])
 by mx.groups.io with SMTP id smtpd.web11.4268.1681459988433251330
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 01:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=J+/iWmRc;
 spf=pass (domain: hotmail.com, ip: 40.92.45.44, mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dUCNu13GhMhD4yxReDHqBLqzwCr/2JS8olz/zHQj36HFooR+3XWi3jUkeflHZG5AoODd+39Oec4ujtAHDIsjbWpoArMcwzvt56QBU5/W3AeMR8O/np03sWcbkpXLNNI5/+h9U5ykvUTjHRZ3l6xCx0RU6kaIscpQ1ysVHQGTQU8mTjb4ZOayJ+OyvTP/c7sLy6BkkNbpEj9jg8mr1ghN7P3jQVE7fagefbPIhLFmJNc8PEu102i5AmUDC/WMm95n7pzVNwnT0+NLLCKzuxZsbNY40aBL7+jRP8uMXXyyFYJx7a7HbKjC79hHLg3O9aAQ8OyHR6KL70PFlNcfEU1qlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNBWpobCuQl9+7oRpzPt9u2aj87i/FCTLVqZUAPf48I=;
 b=a6L4ClBtdPe+ths33r83Rt46WwrskiwDidTfb86qW6LVfuk12r8DrUH6e31CjsEpgVzy2VMnEwzKcb11OrGYlDrOl2H1f7qR1nS/sGeiIgWiK8bmRr7r69Ae6OhlY6E1MvZ5o4W3hV1Yjs7AsBVYxMJXN+FvlguQTiGTifSr3tkwSQiuQfrwLlcYHr+2YAl8Y/Ic+LVdn5ut27RdxF7nWBRIMp1gwA+rroSwgr8U4mUDqmwiqrehNXmYOyXyTISHOgte85kdHxGkh7Q8yHnqXU+hYpKzg5OiQfBH80V/iR3gmsrmsDp0pGROd8ny07i+RE55FtB+SWLBErx1KXdusA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MNBWpobCuQl9+7oRpzPt9u2aj87i/FCTLVqZUAPf48I=;
 b=J+/iWmRcSMUYbfdDZSupBFNAug3hDBuaCtIM8IzUU4jBTSqkpOX7mfeOxeGrNdFHBpNDibfLVdSTw9EX4LXzAiNqB04pFo1FouHIROH5dvEMlf5tDBYJvQH5kRkxbAKQJmg/3ocwTkqPRxy4TiqpyOwk932sNjviCGntWxGWrC1aHg823EErbDzA8WxOotV55s6J7rPGh1Rj9losnGdPwdZP6yD4FI8T1GEPtIoUlUYtbY02oVvjjyUILFxQD9z1y/IMCuK4guTXubAdgnCkgnbKKZJopizULLSR4alVn1PqxEfeRqTKBlp8gvUdAcQZK4cBZO3Mbx/11Y7d363H/Q==
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:162::16)
 by SJ0PR84MB1579.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:431::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Fri, 14 Apr
 2023 08:13:06 +0000
Received: from PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::cbc8:911d:d6c3:d34f]) by PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::cbc8:911d:d6c3:d34f%5]) with mapi id 15.20.6254.030; Fri, 14 Apr 2023
 08:13:06 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Another attempt at Aarch64
Thread-Topic: Another attempt at Aarch64
Thread-Index: AQHZbqgEKk1UF+5L0UaUFFGtV3ESnw==
Date: Fri, 14 Apr 2023 08:13:06 +0000
Message-ID: 
 <PH0PR84MB1835A3726E7627AA1DC10A59C7999@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [Kt/vW3pmtD4a2uSQCpsF9HOtlbC+/7ZS]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR84MB1835:EE_|SJ0PR84MB1579:EE_
x-ms-office365-filtering-correlation-id: 9d87d174-8b64-467a-aba4-08db3cc013ce
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 oX+n8qNxawxcgxT4AVN6Jf5/eBnIcKJnO4kF7h5/i5wygLqybmq0uEszxfiWVzJBd1oR4gW42n0pJGaIvVDub9MJaEFET1evK//8vE8nmHoX79hiKAnOLz6RKEiNEIrYrXJ6dXEClif/P+n2ZRKyF9tv2RtYI1e+SYI7a0lm4N218jfDtSyK0+qbV8EfZJT/6j36mtILZgvduO7dP9IqLKz6Pa1iXQMuF15uyWKIhuF/qzdBIc24PwhX5UAA0ZitqpNIGoh3VLxjT+kMbp4arFxxvKme7G/9J1kAUEQs5sQRgQFewWLFEOmW9CDf3NALG6iE/HE5HF+4qUkW8ixvkoDNIHqRARn1idRaUr3rDqt+UDGZ6UbJKOb8K/bIvos8a1UtsAiMKDxwMhFI9llbXiWVAuqEtZinHOswj6izhKauahTzxhNuCMDTuuZGOZBcSRNR8M2u4LGCr+qKNEpnXYwCARJPGe5v6pS5lCb/djFoHk5VbIaApqzc/0Wup+H2KqkSC2Nx+AJ/rN3OHVe220I7PpO/7DczSPF+55HMalywWwMM3isC9k3qPnoh/l0V
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?AfXgZTX62tibDNlqtrDclFYYI10+LdMt+M8Uuu5u+jhY/v1LSQ4G8mNG2h?=
 =?iso-8859-1?Q?ua/EpZPNdIpPVj3KWwp83Rjjgz/+J1+U7GFO/djOwzyOgIDoyBPdB7x85G?=
 =?iso-8859-1?Q?rHoC8XNIthy5GtmfyiEi96am4nlfNOFUfz6lbedIJ49DKKx0P/L5S54agJ?=
 =?iso-8859-1?Q?Mqp/x5BtBArCYWgRET7XHNiDju8HUvtgMOwiD3QZ3DNI6JzTRj8NCIYfU+?=
 =?iso-8859-1?Q?7dpAFJHBTou10ru82c8Shu1RIYqyDlnyBU6fcUcyJpgcaOnfWRpUXpomLU?=
 =?iso-8859-1?Q?gfQUQLtbUjCKVl+81fQw3XF+Nir4TvmI6qbAL9aYDhHQMF6ZjX1ecLIddF?=
 =?iso-8859-1?Q?PJN/3JwCXxiEy+iHaAM3sBQYO8tSrq012J482jZAMLDpzXsUbUw1EBPbTo?=
 =?iso-8859-1?Q?NakyHVlRnQlI/ApBbn66CYv8W1cWlR2jR7njA4CWQBlqpJaX9ernOvafxk?=
 =?iso-8859-1?Q?KPlRlHih3IJO5bel7CWIGS/p5tp6OZQXgHgLc5b6drzUigLEYpYO1JX5oP?=
 =?iso-8859-1?Q?V2f9P0gON/2C7LtrpQNV6oApiRJWn+0AcY8i2ptwkYwrQ46J4Y39meENx/?=
 =?iso-8859-1?Q?/Fp+eRcNXUpTL14203JqjFo4gqFCuYqBh7AlXDkSkSYr5OYP+dYbQ0hst4?=
 =?iso-8859-1?Q?y5q6TbbwJJ3ODjU0Q0Rb6FGQrxjgWZnm/PAg6mwTEJPIXe36e9Erim+NfS?=
 =?iso-8859-1?Q?cqjtgpfW3b83b8E9knwuq36NYcu+qwpJX4xlFhl9rOOKh2g0eX4knVBujB?=
 =?iso-8859-1?Q?IeFT9nvcubtUHfi1mugNSGToD1jPP1EWrv0RrdwT/+5ghNA1qAdqZAFdfU?=
 =?iso-8859-1?Q?Kz3g7a5BS4paM0GL6f9rYDS5ZwqGcvm81sgXfvq4YxLxtadXy7RgGq6Ruv?=
 =?iso-8859-1?Q?cEfyi2PQBoew0t3+AnivbSB6VydF9SkuvTKfeN43hYa5gvhIQCUq6cYHf0?=
 =?iso-8859-1?Q?36Gm0FxhJDITCBeBAcwSGZhH7yT4ThDyJE3R3ou5A1Ko2oj005lGy0M5id?=
 =?iso-8859-1?Q?nNyrSBNCJzOmS5zRu//NQV7r1wN4VpAntx6z0EZEqsqxiCvNJ/pKp7syAp?=
 =?iso-8859-1?Q?2Av+HOWBtYvDWVAMFyVWGjgksRGKOY04eOCWT/wN/hF8tZdhfIGH21MTJM?=
 =?iso-8859-1?Q?QCaHiqWF3idU6/56ZoDTFMcqMzbI88HpSRQf/bURk2VdwR6HMtxRWNtuGY?=
 =?iso-8859-1?Q?XpVbGRpOaPG5xzP6Or7xSgMi2LyJOX2PQROlQIv441oukXE6rDEF4IHUMn?=
 =?iso-8859-1?Q?gYXyRahbPy6iyIeOiM7g=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR84MB1835A3726E7627AA1DC10A59C7999PH0PR84MB1835NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d87d174-8b64-467a-aba4-08db3cc013ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 08:13:06.6177
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR84MB1579
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 08:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59714

--_000_PH0PR84MB1835A3726E7627AA1DC10A59C7999PH0PR84MB1835NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I try to enable Vulkan on Aarch64 client another time. I added " vulkan" to=
 DISTRO_FEATURES:append in local.conf and I try to add the venus-experiment=
al=3Dtrue flag to virglrenderer's bb file. But compiling virglrenderer does=
n't work, it spits a linker error agains libvulkan. When I add "vulkan" in =
REQUIRED_DISTRO_FEATURES it claims 'vulkan' was not in DISTRO_FEATURES.

Any ideas?

Regards

--_000_PH0PR84MB1835A3726E7627AA1DC10A59C7999PH0PR84MB1835NAMP_
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
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Greetings,</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
I try to enable Vulkan on Aarch64 client another time. I added &quot; vulka=
n&quot; to DISTRO_FEATURES:append in local.conf and I try to add the venus-=
experimental=3Dtrue flag to virglrenderer's bb file. But compiling virglren=
derer doesn't work, it spits a linker error
 agains libvulkan. When I add &quot;vulkan&quot; in REQUIRED_DISTRO_FEATURE=
S it claims 'vulkan' was not in DISTRO_FEATURES.</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Any ideas?</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
Regards</div>
</body>
</html>

--_000_PH0PR84MB1835A3726E7627AA1DC10A59C7999PH0PR84MB1835NAMP_--

