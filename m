Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD03C77B6E
	for <webhook@archiver.kernel.org>; Wed, 12 Apr 2023 17:31:29 +0000 (UTC)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.92.20.10])
 by mx.groups.io with SMTP id smtpd.web10.50423.1681320683768811339
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Apr 2023 10:31:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=PChq4xba;
 spf=pass (domain: hotmail.com, ip: 40.92.20.10, mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iRerp9CnW0Dlky0yno+L4Lchh8Iqqyz+cl1liWNq3bdXS5AHsGi45zefmMJX7z/NxxpVYx3WDPDAOi6rxOzRnu+vmPHKUYIR+mSHsL6fQEu6rrXwp7F7wNqzbVKgnNheki+tcnWEIqagHRsz5w08+NixTir4wcMPCFSfTQqh81Q9A6AQLGxnnCgpmKEjPvio3atNRzI8XpiUClX4dWraZ4r6cnFQ6PWSq1H9oYGKPunOWw/H9iNP0TESTOxuo+/Ux6VLh+HS6BfZi5uXib3nvqAEraltXxeXu+5+jlHLDpf2FN8OHw8iYKXuSrQruFmtrHJv9QdB+bruNzISgAvntQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQZH1N6jjLgfySucJM84E03m9vLwGTAeQQzxR9YHXQw=;
 b=cLFCnMz4WQErOKCu2hAPAqDAm+1NAkfKo6J0VraNtigoDY4PgMT5NW0iCZNGQPmYqrRd/AvbkhanzRqRuuGXwY7pX1YGMVfMEk085eJq/DqORYw74zyHt7fXh+HU92cCz2rtkkdkUZq11eFMZX04ONFUk+qdsb2Togn3U8tcGMc5avfHSvxoI6ZA8RaZzX0Sh7D6HKzfV86We++MH0PtcWlHNh4vsDvxKUmYQU37bUB9jfNcDXJUb8zoMNVJ1yJ/lqc8BWxz1KnUNkuSw2Opxr7uC5UAQOk2WMHUWX/HUPcapnoSA1+kIFwYNXc8Zm0+blnVdGDPYHEBPWkx90358g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KQZH1N6jjLgfySucJM84E03m9vLwGTAeQQzxR9YHXQw=;
 b=PChq4xbaYNiwLD8H6N+A57bsA9KtVvKzDXHfOpz29sSq9zxvodpiGyZhCjPC5xF4DqEUfmGR1v4xEF22413m46ex4LXPBuxDufCr76hk4vMCQmEbMV4ALpbzCMqJ8mOFnYM5QIiJwHHJLcfIP9cmShhPz1lG6dtlBct5b4pNdJmYFBKlsr4r9hPToxJOcCRmWLTGdu5+zINKPOIX1U3LaSK6FUrTDqDutEGkK6enu/flQu06TtanCyLLXihjXo0YHWiAhCuPaciT0J0NB4Z2jShHcVLPDNeXc7qc6jCqRIMXQEImWiy8q7k4igy52pW0Ui/Vm6VuIYAu2hchEpAf/A==
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:a03:434::22)
 by PH0PR84MB1526.NAMPRD84.PROD.OUTLOOK.COM (2603:10b6:510:171::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.35; Wed, 12 Apr
 2023 17:31:21 +0000
Received: from SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::bfdd:644c:4e25:e009]) by SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::bfdd:644c:4e25:e009%5]) with mapi id 15.20.6298.030; Wed, 12 Apr 2023
 17:31:21 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Adding SSH access to runqemu script
Thread-Topic: Adding SSH access to runqemu script
Thread-Index: AQHZbWQ1GlBwpHyQjk+WASVkHw2kcg==
Date: Wed, 12 Apr 2023 17:31:21 +0000
Message-ID: 
 <SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9@SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [ivLqnu6kfxI1E0IOGACUj8ZPHYKnPVGg]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR84MB1846:EE_|PH0PR84MB1526:EE_
x-ms-office365-filtering-correlation-id: 39ed039d-a581-4761-a0d5-08db3b7bbb8f
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 YNEHbhvW2ksqUe/kL3+TTz0t+NMWZTyvateAcGhEM7n7fFai0E2Q/hal3Ra5QdY4xfX8LB+MtFoEQb22zusgP0LjSEbSHUR+uJq+7/b/n3uE3HKhF/BwjMyXRyjQdEm2N6BBbZ7X1xD+6trpfbT2ZQBdD5HXQBZXIO/u1iOC0pnI1/TXeipVA19eAbxs/cAP9rFhY9mvXEBYwj2L5yxF/VRHN2ojMF35UzAlkUcXycnFDIN2SesffZ9CpvwUya9BpxYaYoe0b6l2HNBXTVWFWsq4jtqbcVD1pBSFIlIlps6cbN2HWN3BtM34VHi1VtS7ZMivoXNYpeaoN1pdc7kx9HD7gPHUoC98ph6bnY6QgyVKmAuxxbEykVcl1/An1fpUEpSr5CeePmn2S5eWq6HsZOYlSAO7y8r52OyyOLwo3C0vejKLZfLXJ4QnS8ASJjPVrRB8QpoYot9N5NDDWnnNnrGB3714K9nBafv71XrJlnEwjBXcvzQDfj9v6W3zIOcbSHkUOkj2BX8mgptpGzX5n/wJ2GtxdKMFxQ7GMNnHQdcSmBjCBy5qyfBj4tAD/a43
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?v1i5uhski7rUn/tKCDs0T3xEtBAlkK+5RSFdnZuoKpFqKhAT4HxwVCDYkN?=
 =?iso-8859-1?Q?7cCUnrcF6NRkQmZgUrfUai0KM9GTGXBJ+CSk2ROimyEXx7xhE2FcjWIj27?=
 =?iso-8859-1?Q?J7F/Fw8aOYbpPsVFmo1306v0okO+wZbyzEQJcOrGp1Vvp4UxwwchrKP8sU?=
 =?iso-8859-1?Q?QY3uJFzwNVmYL5uHVZmJ2Q7MvsYOf7sVn8GOyClYXPIa4uhbLb1raT5oWX?=
 =?iso-8859-1?Q?9F+kggwdaxyi2S7k/4sfhPfPBCdT5bNdJ3YVywqyXKBnFPFotKKNMH51pc?=
 =?iso-8859-1?Q?dK4E6ZFXiONifBzikhchblLUi9soXvn9+y5x9ru7HX2mnvDbiqnb4Lmuh8?=
 =?iso-8859-1?Q?TzzgLYJlLXvK4wML3hvMv4K37Ks9k3qhHx0MPqJmGDJvdIrWsFC356GgeC?=
 =?iso-8859-1?Q?+FyvU0xkTJ1EbQzSavd2L7NM+OYbQpwVDNxxp1H92gCEbfnkS6nrFGVUQl?=
 =?iso-8859-1?Q?ds6+VpGU1euDIhC7gtHuy666h0ebO0X+vjEJal+XKvbiR5iPWMlunY9kAW?=
 =?iso-8859-1?Q?G8+e4Xm5jheBYFeiWXL2eodO3a0zYfO8CR5lRYfcFhvjfPaay5BhFXij27?=
 =?iso-8859-1?Q?HUpjM1K6r+slNSBRQ9j6qEXkvjZHWIjP4h9B5jang+N0tvtcYd9TUAfLMO?=
 =?iso-8859-1?Q?SRTFZ/kcwCBiXd6iRp+Ne5iqQV5wE6fc+n6FU7VeeNnSJ6TAC6kwJL5iSC?=
 =?iso-8859-1?Q?aG0CJVmlB7WGxfjYN4f+kdeSQN7i8kt31XlD+bGrBqz8xIz+cUBgIJlZv1?=
 =?iso-8859-1?Q?YkvBc3FhA1HrBN63pBaUfwbgJGUzwbvobQjoFcphpne+k/EaLdMR+gMdVs?=
 =?iso-8859-1?Q?7XBdY7QVM80ub9HCQuFbY1mwJtpaosuu4niN38Wry9r4JkNmNPYBGwaOZp?=
 =?iso-8859-1?Q?iKDgYxa1eeAuhfu21pqqkAFv93vvd0IHcwpS0uXZyiTiWgi7pjReAr4jSk?=
 =?iso-8859-1?Q?a1o9kfcUqTg2RRh958XO2UGFUaPyVsUB6GvOlxiLbL8ew91KXlDOTEZazB?=
 =?iso-8859-1?Q?/1bzc9xIyvuCAT0phEEpM5G4U6jGVVVbse4KioG2tXEaP9WQp+aDIv02xq?=
 =?iso-8859-1?Q?dUOAzqfzo/eY8FV8Pfssbwtqhm7rGw1pK54T+bmXz5B4ExtqbxXo25C/6Y?=
 =?iso-8859-1?Q?+Ym5RL0Rdrn6G9bGE5caGydUZsrFMo761a1mIlo6t36reZALx27J0OHUdI?=
 =?iso-8859-1?Q?ZRpXjpJUW3FMWMQonW/AdwIfPqErlYOz/pHlVqbDNzv+UJip0z6/nLpqe4?=
 =?iso-8859-1?Q?/WKcX+qUzY0vC10MigLg=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9SJ0PR84MB1846NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-3ea80.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR84MB1846.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 39ed039d-a581-4761-a0d5-08db3b7bbb8f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Apr 2023 17:31:21.6388
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR84MB1526
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Apr 2023 17:31:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59695

--_000_SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9SJ0PR84MB1846NAMP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Greetings,

I built an Aarch64 client image with core-image-weston from master. Now I w=
ant to access the running machine via ssh. Usually, I would do this by addi=
ng the following to the qemu call when not using the runqemu script:

-device virtio-net-device,netdev=3Duser0 -netdev user,id=3Duser0,hostfwd=3D=
tcp::2222-:22

Is it possible to add this to the runqemu script via local.conf or so?

Regards

--_000_SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9SJ0PR84MB1846NAMP_
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
I built an Aarch64 client image with core-image-weston from master. Now I w=
ant to access the running machine via ssh. Usually, I would do this by addi=
ng the following to the qemu call when not using the runqemu script:</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<code class=3D"java plain ContentPasted0" style=3D"text-decoration:none">-d=
evice virtio-net-device,netdev=3Duser0 -netdev user,id=3Duser0,hostfwd=3Dtc=
p::</code><code class=3D"java value ContentPasted0" style=3D"text-decoratio=
n:none">2222</code><code class=3D"java plain ContentPasted0" style=3D"text-=
decoration:none">-:</code><code class=3D"java value ContentPasted0" style=
=3D"text-decoration:none">22</code><br>
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<code class=3D"java value ContentPasted0" style=3D"text-decoration:none"><b=
r>
</code></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<code class=3D"java value ContentPasted0" style=3D"text-decoration:none">Is=
 it possible to add this to the runqemu script via local.conf or so?</code>=
</div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<code class=3D"java value ContentPasted0" style=3D"text-decoration:none"><b=
r>
</code></div>
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);" class=3D"eleme=
ntToProof">
<code class=3D"java value ContentPasted0" style=3D"text-decoration:none">Re=
gards</code></div>
</body>
</html>

--_000_SJ0PR84MB1846CF5F1017E05C6D481EA5C79B9SJ0PR84MB1846NAMP_--

