Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02FD3CA0EE0
	for <webhook@archiver.kernel.org>; Fri, 15 Aug 2025 07:59:59 +0000 (UTC)
Received: from AM0PR83CU005.outbound.protection.outlook.com (AM0PR83CU005.outbound.protection.outlook.com [52.101.69.111])
 by mx.groups.io with SMTP id smtpd.web11.7012.1755244792636931508
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Aug 2025 00:59:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=PdZHatHz;
 spf=pass (domain: optimeas.de, ip: 52.101.69.111, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kKhQ1zD4NKMHWQl8ebHgKjEverzZy00Rk7PqpiYWbdES5g+d1KmfMPHsH1QoPDYz412tl+NF2ulffF2/3tRYGkn7lyMRsjg3d1TcQpwGYRbbpDqDyPWPiDXy3rmancUDTbp0yr5qlZ6/2auw0aUVerAOZImq20mrZFDTNb+GZSoLajnIx8aNgAyyqVeSA4D4NWASFxJtVcR4h9Spwi1JLhonTZGcNxRzd3GpQjOIaORVYcHVy/CIP103Ps572k50BmYCZsbnL9iDY8A3SXHULhf7Cxmw1CcSuYwb9sbKUCaE9btnrETLceEjo+9K0P4q3KAYTlHHVGf26n4ZB80d8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mMBUs5En6vtr5VyAq2iajDccA8e4+XZNsEoxZfnh094=;
 b=mbrtF7OaN0UFAjNHEOFy3dcJmm2bxHdkIZER74c4Xxwr8AhHuw7o5Woi0rVb3ar3QS2nIzV9tLhVYWI6bF0EoNX6XMKi5L1xrt5gJMfNkTBhjueKL3+kH97PFvmVMJBLp5HnY1feJOn5g/k3mK3CVTGMfdvMJgz9eQOzweaugOzZLBN9+9EBR1omjq3tJuVg3hXb4LgWfIsgaDEY4bwxl9r6LhKQhprr0lOxBO+yymYYAgXdKcwZFn6/+ztybRUWlnrhAiKRSXjNLbV2PccAS1ctdLGDStLehiSopDk8fvCktb5FE6uCpyRNKaWRhLEU9k97L/usTnLe/o2y2P2rJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mMBUs5En6vtr5VyAq2iajDccA8e4+XZNsEoxZfnh094=;
 b=PdZHatHzjgYOze/Qzb2eeun5MGQTm7OSiVJS38FGArSKMna4a7mpDMVYaJTOKkYMIL4LomHEViXlon0a5mgFF4JdTH8gjUa4Kr20/FWV7dEb/0Y0Xg3nSra1CzcnOpE7FlrGC9fHZSOwhWts8+5YMdgcJ/U9Joy/DCRaxYercwE=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by AS8PR10MB5951.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:52e::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Fri, 15 Aug
 2025 07:59:47 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%6]) with mapi id 15.20.9031.014; Fri, 15 Aug 2025
 07:59:46 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Topic: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Index: AQHcDbnP+Qi0OND9TU64Fs2L1UPxpw==
Date: Fri, 15 Aug 2025 07:59:46 +0000
Message-ID: 
 <PAXPR10MB5277E6AD0475060232E056449934A@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|AS8PR10MB5951:EE_
x-ms-office365-filtering-correlation-id: 58d9abde-82d7-4025-917f-08dddbd1b3d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|38070700018|8096899003;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?Q0OEz6kjo15LKWaa0sC7HZfD6G1p+Gs5H2WqvcSWoHw0Y5002wPWkHKOiS?=
 =?iso-8859-1?Q?S/pTkOBQZaV58KNYnAx52swd+0X1OFJ3a3vJNstspzQ6WA8CUUBstYmPVO?=
 =?iso-8859-1?Q?uBhH/ge834gqdJDrOMovbVGn0wXNmqkH5JvUTmLuQnYdaJtioUZXqB/IuB?=
 =?iso-8859-1?Q?5dyxuQ3TPKvX7LTaIGl4jVR8Jle9VOXHQji6BPAh6Ef+J4NLLuK08mOTAc?=
 =?iso-8859-1?Q?94ZuzGBrAY0CO4G2/QVf78gtRK4IBtniQQbKc0UtBDQ6ud0C7T6T2oPn45?=
 =?iso-8859-1?Q?BRr5+3To6y1dXBGhymChdsDQmjSLHgm+FT1VzVPCw4glBAi9jo8RvvFFjv?=
 =?iso-8859-1?Q?jgjnCsKYtoDtKsHf/jBUUdOIF1Y3c+wdxnaZQ0nPPaBBQvMWyndn9lH+rf?=
 =?iso-8859-1?Q?y98HCgDNpaatD3rbl+oG92Wv8XcPhFmNzLTQJaH9quxcndPUDDpHvrBn9q?=
 =?iso-8859-1?Q?wFCKO0nGdZvXkI3RRnjpshU4Z5glhrGTdQXJ6P5LtztBSiG2jXt681ZV3F?=
 =?iso-8859-1?Q?M0AdcjaiKzR9oo77lOLxfRuBFf4h6EfQsWL32w9yyr7TjYcsFxuQDmpBdA?=
 =?iso-8859-1?Q?t7q+Y3DK3XKVojCdgU9Eyp23WFv/pZJRW/ws6eCLurHeGTbhE1qqTX6lDH?=
 =?iso-8859-1?Q?q80pGXV2H1EiGRU6xLLG6gs+ej3l45KB0gP9UUMsiBvn74ncLMKkZtp4JI?=
 =?iso-8859-1?Q?r9cpFFJoExanI2IyQrWBrVEeILDSxdxKi9fSLy6N/A5YXkyQuFEJ4w6Sh6?=
 =?iso-8859-1?Q?XRYKrj+2P2+AYwhZ+AT4ZSQsbAr4DSbFMdjWG6kIlUqlZnZs4ErYLbwjz7?=
 =?iso-8859-1?Q?QimSlU/Cgjv6GzLG0PUGZsE91pDinF/w7WO6uZv6kbQn8tS32u3K5Izge4?=
 =?iso-8859-1?Q?pBZHTLbmuY0Mxs6c/BL/JI3CdQPAICgozlKrRww0OoeSrUCvMhLw0L3ipE?=
 =?iso-8859-1?Q?HyVtFxIaLZj/N3GYQlQUdTwoiyy669oaYiErdOEpNllFDR3UI8jdEWzmfx?=
 =?iso-8859-1?Q?E0bgiw+OGQYfRlcAmxVbHKLxYGqSCqDZIsB3Fh5JA2NwYLmAPGEP+yZJl6?=
 =?iso-8859-1?Q?OC0g6etuA9Ozqepg72qXnZLZXYdS26m+lC6IAYmI9yJj59SPhplc/0KchD?=
 =?iso-8859-1?Q?/W4mIb7xE7lkeD5ehyyKAkgcl01OvEXeTBJ3uSmwOrrDaQFiPDpaWszeub?=
 =?iso-8859-1?Q?bJqsBXucGTTMCUZJ0bw05Utv3mpkQCbgSGTakBFZu0CYXfb2uYfgBSg0xW?=
 =?iso-8859-1?Q?sh3tbmKDX/9+Z20YB+BM8TBErPX2nDNJR6ZBs/FhVtT4MTNO/stzmCqLu5?=
 =?iso-8859-1?Q?gUpix+iu+94QkgX5waS2J5m3Rcm1EauhgXO4JtgNuFYbxUCpYBLvPsTgaz?=
 =?iso-8859-1?Q?Rmmsp4AF4GhNwhMbzIbRd9sUzdOM4Efad9xa7lG9FK8TKpaMxInB/dNXWm?=
 =?iso-8859-1?Q?JGkoch0qQmon/HJJckrOKt5oTkwPYPl1SStP4UVjDIUHjYqXo2L5XeLD28?=
 =?iso-8859-1?Q?A9xPBf+2kpWTGNz77ygq/qWB1wiu5gMyU7SP98GZH1MA=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700018)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?NnYwLfqmMJEWrVMoKMgSojB6tHJb+G7WzxJYD7wpayqrqC2TEdZah/3W5x?=
 =?iso-8859-1?Q?deuxzOZSROjBkAu+vZE3zGmN88DSfAGcU0Nvf90Xgclx3XXEOd8uszUW+X?=
 =?iso-8859-1?Q?dmHmx0aSL8G37hASFXlB8Ie1a6Fl6aUQAOAHgIz6emLHYXDQYxybZ+VUgi?=
 =?iso-8859-1?Q?gMzBBAcmeQvI1dCt9mC+icPMxxSaK8g4nayUUmB53FrbXyh8eqDaLIP0o5?=
 =?iso-8859-1?Q?5xt/YmbpQPzwG3UVcGkMtoqYkIO73lajf/rSrM8U4Qo9rIygKaKu6rxRqX?=
 =?iso-8859-1?Q?cjqdVshDBtHoW44OKEAWNthXXVoTQNUsD1rCYqng9EA8K132povT3HgQr5?=
 =?iso-8859-1?Q?6a9l6dYZdm5rzK0wuX9jaZl8F11lbDaRXUQNHH0bhQxrbkNrrW8a9ESYwU?=
 =?iso-8859-1?Q?T9GV0oGN1lqYplgfGdtJP7TlBpApT2iUduvxNwNXxUKSGhfQTkd/o9tDLU?=
 =?iso-8859-1?Q?NCEAQjhP/AyCzWDhq2YS02XqTT6hrfb+WWh1F6m/dUKg55TmxWPsj+YJdz?=
 =?iso-8859-1?Q?COy4nLWRlXqMCz2TMPU5TSHnPXGQfjwTETP3NKBuVQIZv0ocEcYIY80LNy?=
 =?iso-8859-1?Q?jksN35nPyMtK1XIDR4hFIkSX9xhSRkxcZmcrt2YVakjJpZXiOBnJAbkStF?=
 =?iso-8859-1?Q?akITH5s8GMfcPohdKA2uF7oNpnuo5oJlUMyOY7XcJsOIqtOIkFcDztn3qz?=
 =?iso-8859-1?Q?ydtMccQ6q/IY22NIU3L2XE2903eKijsCuIBTmZvNFF3hhKpDVzre5NXQHf?=
 =?iso-8859-1?Q?NlG0NsNyvzZ/AnWYOVQ7MWt9S3p0flB0Evf1/HeMoT/Esix/N4WH/LAtJt?=
 =?iso-8859-1?Q?pqufnB27Jd9Dk1xe9+Cxq8q1rgoQCf192lm1/0UIHf9QQ8/ErqW9p6ayh5?=
 =?iso-8859-1?Q?79Oo1klP8vt48XYkQZ5ibL0NIPUFHoTpNGwV90MgxR6IkYUy2dhNhGC/+W?=
 =?iso-8859-1?Q?hMRYPz/ap71p2kDz6/ql2ePP3G3N+b2LoEBgK7T0EmhZg5/PGoXPOqnXns?=
 =?iso-8859-1?Q?qSI6cOgU+VF1YzGBOgDBoU+iOWn3ADVQTj8oKC+M5XWOPzBWpq6Wpgh9dL?=
 =?iso-8859-1?Q?vacI6i/nVqJEvrAcFnNNz1DV50iDVchx7/hi0UIpt2FXvioShHpYMfh4qH?=
 =?iso-8859-1?Q?8QmeXo7TGplu9MbxkuCjezLPBS4L38xia/LizYPfYgpwhYlADtYAdLPmOr?=
 =?iso-8859-1?Q?Tmkm7D3VpqDQOVH/AD7zuZELgYuKu+QUG30jpMH3sQ+I4365DK5VP6MI7z?=
 =?iso-8859-1?Q?VxTQXQPxz3SS1l3+L3FNcLnvesZuCaA4bzb1YJgrV8c79qR/WWEOSQqZtu?=
 =?iso-8859-1?Q?Aj0DvR/F5w/YJnI35J6a704NzIZWLppk8IR4rypcn9rs80+7Wmxl8d3frO?=
 =?iso-8859-1?Q?XdWuAZgULT0UxmXVgjr4Yxw4CdzNGBWl1ooEry0/L0ekS8B8hY8yL2tIsd?=
 =?iso-8859-1?Q?1ZkH8hcbPjfucaeMjrkeR50//BS8GBByrhmWuJ0QQH1GMCAFE3Vtcbwnch?=
 =?iso-8859-1?Q?gSo93VBZ6xjJKu/Df02atJNXq2WuxhUqEoIwd+Kjhsqf9p4Hsyzfj3Aopi?=
 =?iso-8859-1?Q?O/3Q0K5XsrDZyNMS2wi8Ue1MivGc1tQCqo0X7SuBpbnCJqp3Z5tt7y/Qkz?=
 =?iso-8859-1?Q?ueRZNbcu+AlLquF+PN87o40aulP18dR/RozVSmHT679aaEHoW0moHhentA?=
 =?iso-8859-1?Q?uIXwjC4kCEpDj4OSxFmVf2W7p7k5O1FkMXozOT1d?=
Content-Type: multipart/alternative;
	boundary="_000_PAXPR10MB5277E6AD0475060232E056449934APAXPR10MB5277EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d9abde-82d7-4025-917f-08dddbd1b3d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2025 07:59:46.7453
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e5+yf05c1wo1Ejd4rztcStC2GlRDVdVpKkqV7Kr3B4kN/Hzay4YALiWZ/uZ/bFLjbVU0J1JUgnLrhZgRz1EP/IKwYo7To72a6zEuHyrr4rU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR10MB5951
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Aug 2025 07:59:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65756

--_000_PAXPR10MB5277E6AD0475060232E056449934APAXPR10MB5277EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everyone,

since yesterday evening, all of our Yocto builds have been failing with the=
 following message:

Loading cache: 100% |                                                      =
                                                                           =
                                                                           =
                                         | ETA:  --:--:--
Loaded 0 entries from dependency cache.
WARNING: .../yocto/meta-openembedded/meta-networking/recipes-connectivity/m=
bedtls/mbedtls_3.6.4.bb: Exception during build_dependencies for fetcher_ha=
shes_dummyfunc                                                             =
                | ETA:  0:00:10
WARNING: .../yocto/meta-openembedded/meta-networking/recipes-connectivity/m=
bedtls/mbedtls_3.6.4.bb: Error during finalise of .../yocto/meta-openembedd=
ed/meta-networking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb
ERROR: ExpansionError during parsing .../yocto/meta-openembedded/meta-netwo=
rking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb
bb.data_smart.ExpansionError: Failure expanding variable fetcher_hashes_dum=
myfunc[vardepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which tri=
ggered exception FetchError: Fetcher failure: Conflicting revisions (c765c8=
31e5c2a0971410692f92f7a81d6ec65ec2 from SRCREV and v3.6.4 from the url) fou=
nd, please specify one valid value
The variable dependency chain for the failure is: fetcher_hashes_dummyfunc[=
vardepvalue]

(I replaced the absolute paths in the output with three dots.)


Does anyone have any idea what the cause might be?

Best regards,
Matthias


--_000_PAXPR10MB5277E6AD0475060232E056449934APAXPR10MB5277EURP_
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
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Hello everyone,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
since yesterday evening, all of our Yocto builds have been failing with the=
 following message:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Loading cache: 100% | &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;
 &nbsp; &nbsp; &nbsp; &nbsp; | ETA: &nbsp;--:--:--</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Loaded 0 entries from dependency cache.</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
WARNING: .../yocto/meta-openembedded/meta-networking/recipes-connectivity/m=
bedtls/mbedtls_3.6.4.bb: Exception during build_dependencies for fetcher_ha=
shes_dummyfunc &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | ETA: &nbsp;0:00:1=
0</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
WARNING: .../yocto/meta-openembedded/meta-networking/recipes-connectivity/m=
bedtls/mbedtls_3.6.4.bb: Error during finalise of .../yocto/meta-openembedd=
ed/meta-networking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
ERROR: ExpansionError during parsing .../yocto/meta-openembedded/meta-netwo=
rking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
bb.data_smart.ExpansionError: Failure expanding variable fetcher_hashes_dum=
myfunc[vardepvalue], expression was ${@bb.fetch.get_hashvalue(d)} which tri=
ggered exception FetchError: Fetcher failure: Conflicting revisions (c765c8=
31e5c2a0971410692f92f7a81d6ec65ec2
 from SRCREV and v3.6.4 from the url) found, please specify one valid value=
</div>
<div style=3D"font-family: &quot;Courier New&quot;, monospace; font-size: 1=
1pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The variable dependency chain for the failure is: fetcher_hashes_dummyfunc[=
vardepvalue]</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
(I replaced the absolute paths in the output with three dots.)</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Does anyone have any idea what the cause might be?</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Best regards,</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Matthias</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_PAXPR10MB5277E6AD0475060232E056449934APAXPR10MB5277EURP_--

