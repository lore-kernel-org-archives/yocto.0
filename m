Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43352CD4F24
	for <webhook@archiver.kernel.org>; Tue, 12 May 2026 14:47:43 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.91])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.77598.1778597259758345196
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 May 2026 07:47:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=Sk1uaS+K;
 spf=pass (domain: kempower.com, ip: 40.107.159.91, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SV1tSEDMaCCwsshR7/GAwXxN1YUY4BWC4q5KryHWaKrYqnL8rMtBImiMmuLYm6uchGqdwp8Z0CLOY5C5NdoDgvLFKR/Y+QYfuvCUIzjC8+A6NiYYFaFRmpyeajsnXpMWXcrTMcOfSP+uDPDFUUPh0pebHxG7xh7uiRiQiqW1deph3vklrEj+pW+LG1zxTVaEvPnldDx0SZIlaxUWgWMuz3sVLy6YLttLWBA5dI3YjlN86z/97n6/k9hChhpN6iT15xK2ZOXmOWBQDSiAA0P5RGSMDo9nFXk9+3/QzYhgC14niANPD1xV92CR6+5AKheiHEH+IE6oZ4EQDBRp6u33TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5DQh7a1QIs5LssTZa8+bHYCO2fNGQz+q1aHLT/QsO2w=;
 b=ZXKqTFEZPsP4gCLbuVZcLcNVpmGaabl/5XDc5IFPvm1cBaVCdlCxzG2GTkR75tVPMwSva25+62G3iFoRBpw767tR9YQGxcR56OXFIHAGkeF/qAUrsh628A1rDYyPGY1wJAbpWge7iMUPzW9koXNfWVPAYAoX9Ysc642cccA2G3NvG3toz+Nr4N1QDFn7As8plxmShRORBCOrBBK2MVmGApKz5LqeDhIp248QoV6qKqRgQ5F1j36NAyF6gaGGvukFIgq7OSU+GMIPma/Hj8oW2mz8MsgDpAfmt9HjHYz/e1T/E7ntP1SdXhKt9KQufav2Q08egu+YPu6jQIQoa94Uvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5DQh7a1QIs5LssTZa8+bHYCO2fNGQz+q1aHLT/QsO2w=;
 b=Sk1uaS+KgHJpIT908obKT0gKVKheAl162oTtGAbTZKZUVROljEtKr1HtXY/RRzW4iX1cr+sJWUk5ebG7fP+fzlt8DAvk3DLkEHEMlZiSCN0CEXQ8Et1/2vLZhgWnRjGBtdeBPKee+9FvMTYEhogSWAYCBSoCWs/QHAYtx/nqbyHalA9snHJ/NYD+MbINpk6zUn/+faL/ssjCGqUrsaWFbQwipjVW77s1DvCHSbI8jOSU2MWJFz3MdBS+6jbK1ToLmYOBVzAKYat93tTxF9/YFjjMgMN8f9WrEAftdlMspRxxhVKheCqoQUvqyphaVcUznF5IiRIx/SqHJvk1lzn8iw==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by GV2PR08MB11520.eurprd08.prod.outlook.com (2603:10a6:150:2b0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Tue, 12 May
 2026 14:47:32 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Tue, 12 May 2026
 14:47:32 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: AQHc4hww6A85r090PEm7Pqr9xvkthA==
Date: Tue, 12 May 2026 14:47:32 +0000
Message-ID: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|GV2PR08MB11520:EE_
x-ms-office365-filtering-correlation-id: 5d7301e2-0b33-469b-153a-08deb035662d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|11063799003|56012099003|3023799003|8096899003|18002099003;
x-microsoft-antispam-message-info: 
 Lzd0BKq/Anz7sEusQbdcJhbCg0OpQT0VssvO4smNfmMMsZKA5afFUA4TYjcdJ1mUb4vrf3BQotfUNIafMzsn0KhrMLkhwXN122Tt+qLDudZJXFpz/ttPc8GKJ8rcEoLLl+23Wh2sL26m23DWI+I2GKPVwju8c9x3B9MmZLcYLWX84rtSzSwS1FDET01IJ/14DpmSbsvcrz6eWvcD1r0OyF7kjsRbnK6jOM2n9qtpJMji0rGo0TGDFa9Vn4ykPn72f1FNo36SWC3KRcGpH8q4lorRKlqITq+f2OKAPN7M+7CI8Z0daID2a7nuB71MsCJbEs8W3d8spkwfdzttNEso6883ipaTqjbE0MJThIhGe7RajYFQutXJPDqPoFp3vnHfhW9KMjP+lNBae1yKWAv6srkKU8VhxPXG3MiCtzeLcRk+8V/cfMkGe0q3Clx8OR6isV8jOn03HtU8akTUocvfvx+INDU6tDbaignBgjOcL51UZQcmMCXqvcXMfHZc4dZYH1CQGBy8VYVEtvD/5aEG2RaBSNxRxbc9+qn6wQ57kIOPmU9eGSpmQ7vLcKQNan5rS7BeOAX4XgrzO/UXEKgIVxHjMc7FZ8ZdE59V69Qj22ngQQy0lPbB1tETt+waNYheHTDYEw2itotOnPmM2jobEenr8EB11DNOb9kpDgTEzLjWCCYmTgfVIzLsrJ9/9mjtaSdl72bOJqfYpzgXgYyb6k6wjWxuw5v2/fB8duE2wuTTk7RGAtMyd3wo8RTcORS+
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(11063799003)(56012099003)(3023799003)(8096899003)(18002099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?d08arQOmFZ9dyt4U1Ppkw+nrgLMPQvwlz/SRojnqEXf8FiefmtsLJAFcA6?=
 =?iso-8859-1?Q?zz/uvNEdITOGoqCVoOJRFp3//8EIVkHmG1wphTGUqwJAtAt3Or7YzT/SZ7?=
 =?iso-8859-1?Q?lavtHsygEVoQQeHJ+iGrNA1IiZMRgn06QaLttueqskpBbVTdU1AHpjqXmB?=
 =?iso-8859-1?Q?KIds4C0WLp8HO6vOydvtyKiMPzSObSXGIqoMo1RLEbdekwbMajg7avRkx7?=
 =?iso-8859-1?Q?9DAGTXpLshhOgywAgGaaKjffB5loGc6Y6v+VEsM5SlgFsIVyd8SduM2Pft?=
 =?iso-8859-1?Q?O1uTsbm2V/mA5iA07+0GC5rvl8i7ghuJRGwWewjgRZwOOcGXGWUqE2jjos?=
 =?iso-8859-1?Q?9pFlaGU1iePMYD6dBS130y9tx/FEHGPGoJzr93d2GbCkW8smUdj4vAgf7I?=
 =?iso-8859-1?Q?n8Lz9qI3QRWkva7MqAnaXdwEhIaVX02CDSukD/H15R8ZVdxtj7i/ENy1XZ?=
 =?iso-8859-1?Q?F2EGrRHGIa8tortc0aa2dNwpF0Yx/uVAX3o/Cx0SxSiBS6SVXSB1i9ZYYJ?=
 =?iso-8859-1?Q?2hziXdNC5TAfMnXs6DuT/7yH/st3ejkgFgwAxJIi4oTqYwtsAKOowx5o/E?=
 =?iso-8859-1?Q?IGOharz8YDCpq6+DAaJftNAgTRxxLpVzXj+l+NNyXjP6fDg3Qr0pfCDJjs?=
 =?iso-8859-1?Q?A2Ar1BCRoOYknnQVGu1bBp1a0ICs/SP5ImOV2jIWeP9H3YQnYvoirtYFUq?=
 =?iso-8859-1?Q?WnpRAvLunlFCnL5dNcLAOsVFfXmYg214f/7k8cfe8z5MoOYNXsq7dlVwU6?=
 =?iso-8859-1?Q?j+PRmOr2TXEzu8tE3JW4sOWEDK8965BOycPd54ZlmpFqNtvXkxFhfhGusd?=
 =?iso-8859-1?Q?krQ5GJOSflzonLr9ig23P4+5E9/DnjMlecMqSJsI+MXXl73o7mJNnrvZfA?=
 =?iso-8859-1?Q?t3JyUIaeC6Ia9jouUO/zQXYX4Xhbo87K2ifDDPxNDBr3vgd/bkNLxhdXsE?=
 =?iso-8859-1?Q?EAebCWRYYmajkGM9M5j5Zf7/j7z+3bkaTVTvbVaIhl8VNIZY8y3cGR/dmr?=
 =?iso-8859-1?Q?47F1lV5mQyVO7OKmLzh42A6x6vFrIu1fWJ7RMY80vz3lEPY24lafvW+Hzt?=
 =?iso-8859-1?Q?8lLeVKHEXr0f2waChoiN9TVyR6XvoA7ngIzOXaRePj43PahsZ6e4jKH/iV?=
 =?iso-8859-1?Q?pFduJK7PCPdmBQiZzxyKg/zqsGWy05OUlnfsE5m6ZGVVDmp0FE9PtalSON?=
 =?iso-8859-1?Q?A53ODElu9YljDYFGovl5mNbV9hRsU+VXBILxbO3re6crXNGMSP7jUZ07Vi?=
 =?iso-8859-1?Q?zrwWWzU/zT2ooeqJ0q5A+KxYdgYi7cQ450m7a2NAdhoubU9hCXV9tgb9oz?=
 =?iso-8859-1?Q?OZtVBXlTvjdTdGnfXsHtJdXXQTCZTnwacO76oceeMIopzQUMWgk84p3hHT?=
 =?iso-8859-1?Q?NuF8jxsj6L0NSqwzY4H/Dx3tieQNBw0M2PEEiD+LneIwgXc4dn3FNKAuot?=
 =?iso-8859-1?Q?8AjlUMjZ05qcmpSeUdhKoIBCDGZk+z7bwSsPPl6BnCwFG1d0UieiMUN1LH?=
 =?iso-8859-1?Q?x75uuEw5fH02BRJVj3tbdApyTstzFQSDkik9zAF/TC/t1fx5LGaqecqOEy?=
 =?iso-8859-1?Q?rvGO0lHqbupslKGBjfbqq3u+Ka10Ljdk+jio7bFoBVcBjnejdDem3akgNT?=
 =?iso-8859-1?Q?DAsOM7U/mLDI8wspHuuh13lgyvaaX/9VzyqqLf64S55tO97ZXvQsSBJp0e?=
 =?iso-8859-1?Q?UtwK62ImJ6DOhKz9/3CpxOnOfP8fJvfaND53ReIBO6c9bzTussV6nJ5Avb?=
 =?iso-8859-1?Q?jHHucYUQv9s+5hpr8l8uAoxH8eY8RZLAoyAGz2acEikvuzaIM+Fgz1nuVr?=
 =?iso-8859-1?Q?qrTP9rHhlw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB72519491BFB65260C510C104D5392AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d7301e2-0b33-469b-153a-08deb035662d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2026 14:47:32.6965
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EizJS4c/+xT/psAXIQE9C9xGKOheHIpFVlpknKT4yttqN1jnlmYsOMxLZUuuUVnKDLvDY/4Y+QpmodA0Q4RH6Q+itTtG3Fym5rtxg2LohjQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB11520
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 May 2026 14:47:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66538

--_000_AS8PR08MB72519491BFB65260C510C104D5392AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am developing a .bbclass file that modifies SRC_URI of the inheriting rec=
ipe before bitbake (in this case, the git fetcher) initializes its internal=
 data structures with that data. Prepended to any task or as a dedicated ta=
sk before any other tasks is too late, but a Python function declared __ano=
nymous seems to be invoked right after parsing the recipe, which is early e=
nough.

My log prints, however, revealed that such function is invoked not only at =
that point but also multiple times when building the recipe. I didn't inspe=
ct it thoroughly enough to be sure, but I got the impression that it might =
be invoked once during each task. That is not a critical issue right now, b=
ut it makes the logs look weird and requires extra care to make sure that r=
unning the function multiple times doesn't have any unwanted side-effects.

Is there any way to have code executed only right after parsing the recipe?=
 In this case, the initialization of the internal data structures which it =
must precede seems to happen in urldata_init() of class Git in poky/bitbake=
/lib/bb/fetch2/git.py.

I discovered that there is variable BB_CURRENTTASK which is None on the ver=
y first run and contains the name of the current task on other runs. I trie=
d making my function check it and act only when it is None, but that result=
ed in errors about basehash value having changed and bitbake thus consideri=
ng the metadata non-deterministic.

Could BB_CURRENTTASK be somehow utilized to achieve what I am trying?


BR,
Antti G=E4rding

--_000_AS8PR08MB72519491BFB65260C510C104D5392AS8PR08MB7251eurp_
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
Hi,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I am developing a .bbclass file that modifies SRC_URI of the inheriting rec=
ipe before bitbake (in this case, the git fetcher) initializes its internal=
 data structures with that data. Prepended to any task or as a dedicated ta=
sk before any other tasks is too
 late, but a Python function declared __anonymous seems to be invoked right=
 after parsing the recipe, which is early enough.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
My log prints, however, revealed that such function is invoked not only at =
that point but also multiple times when building the recipe. I didn't inspe=
ct it thoroughly enough to be sure, but I got the impression that it might =
be invoked once during each task.
 That is not a critical issue right now, but it makes the logs look weird a=
nd requires extra care to make sure that running the function multiple time=
s doesn't have any unwanted side-effects.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Is there any way to have code executed only right after parsing the recipe?=
 In this case, the initialization of the internal data structures which it =
must precede seems to happen in urldata_init() of class Git in poky/bitbake=
/lib/bb/fetch2/git.py.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I discovered that there is variable BB_CURRENTTASK which is None on the ver=
y first run and contains the name of the current task on other runs. I trie=
d making my function check it and act only when it is None, but that result=
ed in errors about basehash value
 having changed and bitbake thus considering the metadata non-deterministic=
.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Could BB_CURRENTTASK be somehow utilized to achieve what I am trying?</div>
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

--_000_AS8PR08MB72519491BFB65260C510C104D5392AS8PR08MB7251eurp_--

