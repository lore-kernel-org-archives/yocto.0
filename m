Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AF3CD4F24
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 16:05:44 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.74])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.79124.1778601933758908384
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 09:05:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=qx6pM+jx;
 spf=pass (domain: kempower.com, ip: 52.101.65.74, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rz/qMYUkjlWUlTX8RVk45+Ku7Dfg6DGYJCDQBKwTKQqF1/HawbJWO3OBg10DD7EOT92DZ+1Z2WTG1/cGxHcLEbWek74mqfqw4X32u5N45vrCz1Z+BXYMZDT5bI8NB4tAyfQJbO8Dvu9cxSdxf8Njx6YVj9dXfz3gCgssgYbi/SjMbFOu4CYgwGoKtj/PBR/HfyD0EDKlEE3S38mOC7ZL691UFsC3OIIQ2qbOXWHhpANLbGxupLetwacbS6DduYutiKRw3w9D0qcVMFfIl4opM/H2zgGcF9owXFlmKqlshkQpR5lLfJQVPlZj+ox3w6wj44jJRTSheMtPC55pFRg2fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=la/Mdm/2acsBMJCM/rnnVaaoHiRAc3vst/TjQFA3bEA=;
 b=fkyN42VsO76eZZwV0v4A1lDwmtqSArJjxu78ASyKYaNGutrWQnimtcjz9EPKwHbpV+KM7mbj5fEdJ3mR4/6GIwXr1xlkqPOP2UA7GxX3GU4OGS+4Lzz4vqZ94dYzYewD1R3B731Vo7JbWuJwsAv+EATQ5acti12IOMb9BX/w6Sxk2yStFAvNF8Jfwn+5PlRQiXTK0TwgahU3ZfOUqI/DCvgQgqHK8TzXFzZpr/95ljIeMxrvVv7VwQlPLA9wYqnnn/0ZMP9pT5/YIgzagrQxw44G7DyK6fBu7Xp2UzceOVr+ApbVt6rPtF55z58CRIaqtazgWNUX9qOepc/4FFgywQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=la/Mdm/2acsBMJCM/rnnVaaoHiRAc3vst/TjQFA3bEA=;
 b=qx6pM+jxGZF0DU1oD+uOwR5NCA09RE0vhZpbbyvaqPNp8kKpbZVZCpvXNecp7L5jPteZNUjCT6o2x6DmdDC53neodxV/eNGbyQCiS1Oz889+htD/hMcHeuyqrz2pxGgepKpvneJIm4JaHh4ovVVUxuhd0NpHQz7xCV2PV0qVjEFoFQgoqglhNN+DtvzdVm9pzg9+KzLP7DLxZuMoSJ8oc/el/N+li0rXF+hi+7iebJPomiYzztj79IsHUoxb8cf3F5T2gxd2tA1X8btWdr1oUB/Xg4t4WjkF9mklpiV8CfFPWMX6UUz0rvZKcZqyjS1j9aimmgzSs0KlqleXawGFRA==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by DB9PR08MB6667.eurprd08.prod.outlook.com (2603:10a6:10:2af::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 16:05:29 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 16:05:29 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWQ=
Date: Tue, 12 May 2026 16:05:29 +0000
Message-ID: 
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|DB9PR08MB6667:EE_
x-ms-office365-filtering-correlation-id: f6856f3c-f0b1-4a08-01bf-08deb04049dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|11063799003|56012099003|22082099003|18002099003|8096899003;
x-microsoft-antispam-message-info: 
 R9dlekqeiNBt73NEDur8/oSVMbMjBVy0VvP4Ng824tfSD6JX/Ad1qQ5DQ3ZsmztsM9YhzpM0MtTxZG2dvXdOLFqS+q1jhVkRo7LgQXnNpBFkxiav/Z+/TEgOWTPKZQ7M+scAc6xj2npbgvDINP/n1P0yGBSgXmsrBq2zzLx/KdA69SboyaZtd8ogYCFxQfYY3uuf4jdOmFYJui0yFnjRwIZwmnv1aVLMBYnhZ2wH3hASbTy4FqoLuNwJToamPYo2cCgKAQg9KI9CGSKAjgDnkeK25rrd01Efn4VZo9znAbBBnGhs7QoUNfMaNQfJdIITOXSVGQ3BpSZiwOwGVyaD9VD2LV0FHd/z7xyPNmb0PY0A/J4nj7gZnartlRShyAwqrdcUX6roOdMNC016gwHm5JpEFziTuTzMwcFBvtj6PsI7/2OBzeYHQeZAUyhlna93bX+t6g83bZvUxdszCXzcTGC7ofumJDtRV0XCBC2qcn9izZyw7Dvav/x+hcqJz3pghA9h7An70O+aGlDaphVl/smN1kC8dl15dpm5U9yKe3RMdgOLbWl9gJEPEKAecwyzfPqrjcDQV1h5dxv+h6QpFoHq+7wrWbnIuMsx5T6DFXyXsBCeizWWbSxRFZdfAxgVLf7UZ+M4kgCvCflYP2HkCD/9n97aArEeY5lD5rfCdDrR6WFkNVYvNif4ZS9E8IotkUAldRSzteOE/rG7et8DGeSPSSn42zVmlo9UJ5064nXVZy/zT27XGYllbgTY0dIN
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(11063799003)(56012099003)(22082099003)(18002099003)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?IZpxkiL1tGfcekuAtO6+iH2of1bTMdXDlLEh9oXMtY7bS5cjPhDTMYj4X0?=
 =?iso-8859-1?Q?qxqw1duJZnLFKlbncn9xxJKloif3Q8wXeyuB0sc+iF+nSt+UXVjjwRRaYx?=
 =?iso-8859-1?Q?UcFj9LoivdZUYoDwFmZPXtzJR9GfTk7WngYwD3DKTRfUHNUWTF+aCA85+0?=
 =?iso-8859-1?Q?cbYKo3Oy6XCx70k3IBE7+m7A9fk43KaFYXJkXYTxms/ZRLZvcrUHoiUbvE?=
 =?iso-8859-1?Q?ICCdmjNUFsy94M6WdR4g0KNAY2sTqp3tFZn1N/lqZqmvCNqORqsqN1SO5K?=
 =?iso-8859-1?Q?ECK2VRKrknsLKu6FgKsguli1BPuvaxpp9yRiKfQngeECgks25Ef3sr58xR?=
 =?iso-8859-1?Q?q0YO6q0L1ucqusswLsl+Z2d6JmoLW7HklDoveDsjT5SfXG/JxmKDkLwp6S?=
 =?iso-8859-1?Q?kqvWv4vEiFjANHbq2am6ELqW2dcNgb9WQhIL5Vgjymh30ppNRMRRolvFq/?=
 =?iso-8859-1?Q?9C5WPAg6Q7ZL5ZsJThPjq0wb4CtMTisRXrIuBI2GmZKwpsVskYcUXR1tfm?=
 =?iso-8859-1?Q?HrxxDXLSuTgJKx9qYAjyFy6lY1RlAyE7oTUNyDfC+rDd4eAKNT0bcU1kyj?=
 =?iso-8859-1?Q?dVnKqk+jJsznBz3yIciZm3akwu6yXRNdCsCvYPoOdTgpWHcaXTvN0MAz2M?=
 =?iso-8859-1?Q?aB2MNRbTadIj4VBKjMQv6diGgcfh3Llqhx3VNJ19YzK3+4dVZpRlcKATqo?=
 =?iso-8859-1?Q?rzPafaEbkNckvkMDRDkyEL4dqIWJWZUkuNnFqmQVmO7UjdtOwyc3kgDPaX?=
 =?iso-8859-1?Q?WRb7KZjlNbhB1DDoNp20Ur5l5M+PiULd+h/5GjzsadeFbULKq0fU3+z2x5?=
 =?iso-8859-1?Q?r52XFdsppP9WNts9b4PruS1XGvmncpyK3k+VpzT9jRGg043GaUEGGMunM6?=
 =?iso-8859-1?Q?YIopSIl4we3BwXci7EsSq/MICb2ocgizUQ2Pbai6M+OcpWxOrn1wEJMWjK?=
 =?iso-8859-1?Q?7UNI1QHnhz2GPAgpweGVKocOZb8akv1bF0R5Abgk0QN2iji0XSs2zSAWuP?=
 =?iso-8859-1?Q?YBEQufjgl3AWfHGonhi1Glb61056AShXRUE+hGtKkcpwfqoc9wbjnvEvZc?=
 =?iso-8859-1?Q?JQVemY++OyCVzuTj8edlgOhS6NeOvvri9EGECrbv5HfyabIkUvgy6eknlK?=
 =?iso-8859-1?Q?nWu4puAKZm+S7mJZ1PCpwZsseEtadxK9LHNkpbokUge8GQi5twKVnDz3ux?=
 =?iso-8859-1?Q?g+Sftf71qvj5w13JXBZjP7rMVZgdQhc3tGpMCz9wM3dZXWnIuo9h8ol/Qs?=
 =?iso-8859-1?Q?pecLIaw8TmvmQxHPbFyDBHH9ce5RvtMl3W9rYjC7yCYyscWE4KqYjV/6yE?=
 =?iso-8859-1?Q?VhqQxotTHZ5HtH1Mv/1y8pc26rXsHsKmA/HvtL4uvwAIHhZXolYKPtsX2f?=
 =?iso-8859-1?Q?sBtZNvi6Z3gD4fyh7/i40n4Dvau9cdnTFXBv4jjzz7Mwy1EFa3RJElu45g?=
 =?iso-8859-1?Q?hxNSjJFcWJ/kZHmAfigkLnEFi1HqBLqTpNC4rrCcQpSTDAZY8Wn8ychPMt?=
 =?iso-8859-1?Q?YQi2LQ4IoXTf4rN7K89uKklrZxDLt8EFQr3Exp3GiLzuTZYNEa6Pvvnk2o?=
 =?iso-8859-1?Q?DbLh9Kpp1M8X+zCh69VuTmnjzKsQzYW951HYvWJNzSQGcHv+8VOzpLpo5c?=
 =?iso-8859-1?Q?pQa+C2NKsk3Pm5DhtaqqN5G46ZYXNDqoD/hXZme1gDscg/rS5ScAs4njxe?=
 =?iso-8859-1?Q?oBZaGPBzeRaHJW7l9965wdQydgFjl9iED1vmNMHhM4/ONPC+CPIhz7iTxX?=
 =?iso-8859-1?Q?YOMGiKO2038OlUfH9JScmKjNCDVwXwD2nMdsCwlzIPvDeMpDUDoZF2M7/9?=
 =?iso-8859-1?Q?51vtfBXYyFBNJja9oEhGujldcWlhubI=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB7251242FD5DCEDE2DFA4374FD5392AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6856f3c-f0b1-4a08-01bf-08deb04049dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 16:05:29.6437
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h8roudQpu2dmky1IP39gz/b1j88nc4uHx27RZyKKhDbfN00HHM4wOW1NLqN+8yDfTDoGkAmw9/l79vMFyo8UVo8pPXmEYXKRkOaFALo+5PA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6667
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 16:05:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66541

--_000_AS8PR08MB7251242FD5DCEDE2DFA4374FD5392AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Please explain the problem first, before presenting the various
solution attempts. What do you need to modify in SRC_URI and why?
Maybe there's a completely different approach to the actual issue.

I want to add a tag parameter to one of the URIs under certain conditions s=
o that bitbake can check that the commit matching the rev parameter has tha=
t tag. The tag check is already there in bitbake.


BR,
Antti G=E4rding

--_000_AS8PR08MB7251242FD5DCEDE2DFA4374FD5392AS8PR08MB7251eurp_
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
&gt; Please explain the problem first, before presenting the various<br>
solution attempts. What do you need to modify in SRC_URI and why?<br>
Maybe there's a completely different approach to the actual issue.<br>
<br>
I want to add a tag parameter to one of the URIs under certain conditions s=
o that bitbake can check that the commit matching the rev parameter has tha=
t tag. The tag check is already there in bitbake.</div>
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
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
BR,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Antti G=E4rding</div>
</body>
</html>

--_000_AS8PR08MB7251242FD5DCEDE2DFA4374FD5392AS8PR08MB7251eurp_--

