Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 202A2CA0EE4
	for <webhook@archiver.kernel.org>; Fri, 15 Aug 2025 08:29:49 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.74])
 by mx.groups.io with SMTP id smtpd.web10.7378.1755246583308230896
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Aug 2025 01:29:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=NukOwM1W;
 spf=pass (domain: optimeas.de, ip: 40.107.162.74, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=E06uh1syJMJ25MJCyavcseHX+kfi3qvIt9KSAqjpJkddZfrVRpmvAUnDJwWAhZ3pgyn61/isfj7i99JzkzrdWXxCvV9y+4elRKI9l823b7r6Rov5omBmxtb+DxchVa1xXnL5xKOEGzNyOUYWS15/4z7vW8neTSNdzrcMsyWN7X3vfQ8me4DgMRiGmDC8TpVy5+Ylw6VJsPRRFic2ps0nG3M+XMvCZuRCCCsAmOhHF6xQoDz9vtgxFf0FcNL+lT3ny9jfrdqgiVJafyIdPdXN+a6/t/MlqzzhMlDKTj8kPJWmoKXre0Prt70HSoHWK6utWv/W4z5E0E7ZWbk6uxn5xg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+/In0iS+oRIyfGXVIKBekJiOIfdwUub9B6g/HyM438M=;
 b=SGMxK3J02umRHRZPVL1znKoBpx1+ljL3Wanvpdv+Rc+/C6VIICVZSrYUxTTzgCrI5qFjjyRPrOtUWsH9pBdRdUlxjMNBk59fNN0wI/EsFthtZnpkHsYAgWZDoI2TB5uJz9vQ9HMut0Bm8Vz4H2klQpROSDKRtXBcK5uuewr3IwHz3249wiq9hKIzgkFioY4oUgApYwMK0O56opY8CxJhgWnaWXcrZGNnFVUDbYEMOmgYU7MHMeu7wM7ovq7cTFB57vsCeZyWFYTKIAlWvHbaLyA1bSSMzoY/W6XDUpYprW1/KHEM9C6oKws4HRgjop0U2KWfyGdEolTRji/YMVDTdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+/In0iS+oRIyfGXVIKBekJiOIfdwUub9B6g/HyM438M=;
 b=NukOwM1WzHy2G1Y+rn9uOf7mQAJNN4T70KhQQm6cozzP51V4dVmlQ1FbWcUd9QRW4r6HVc/pCvIRmARbJzobkQTtpfsbSNwT+s1ExstZT2K2wduUlMl1EbmF0NkenrLSi68WGFGWKwk9a8RaeKq0orJsmgjJMrioP03ylXBYVD0=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by PA1PR10MB8840.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:453::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Fri, 15 Aug
 2025 08:29:39 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%6]) with mapi id 15.20.9031.014; Fri, 15 Aug 2025
 08:29:39 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "Marko, Peter" <Peter.Marko@siemens.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: AW: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Topic: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Index: AQHcDbnP+Qi0OND9TU64Fs2L1UPxp7RjW3fAgAAGILw=
Date: Fri, 15 Aug 2025 08:29:39 +0000
Message-ID: 
 <PAXPR10MB5277D58A6BD07E8A62BB8FD69934A@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <PAXPR10MB5277E6AD0475060232E056449934A@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB569757B1132207A209188AF2FD34A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AS1PR10MB569757B1132207A209188AF2FD34A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|PA1PR10MB8840:EE_
x-ms-office365-filtering-correlation-id: f384f508-ca58-45df-435c-08dddbd5e03f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|10070799003|376014|8096899003|13003099007|38070700018|7053199007;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?LxOEHd8S9KsL6uQ5YpGbQ5q/52CN0TxYo+LXv8CJ2tJ+Ph8DFyASkWUIKA?=
 =?iso-8859-1?Q?8+6wWWnhtkAWKs9Zrlv/COCl+HGgoahQxDXxFSMPuIMA5bWy6Xmnih4Nuz?=
 =?iso-8859-1?Q?xty4x8/wqkaFuhllfoo0dhx/Z3nNrQttv1AtNhun8KQioPT1tWXQqENzWH?=
 =?iso-8859-1?Q?fm5V0qI8LE1S2VWGxmDl3rmprb+e0SbbzSimLBAqu1LapqSymHvx1jdi3s?=
 =?iso-8859-1?Q?vGYMIGXTe+n4wRmRUXGpG6nON4gHy0/eyJiSZmx1CWIJbAyUbFTSxKKorY?=
 =?iso-8859-1?Q?zoeFBkGaVvrBeHESJtsAgZJM46SQOPBHFeEZn9RzqPX0p1TC0t+qtsmJAM?=
 =?iso-8859-1?Q?JNc8BxL+eJ8DVRcaQKnUhmWa7RUw0mDBAPyN20PFRy2vTuwntErPJQ6N8M?=
 =?iso-8859-1?Q?vAZtzOT7X1s8ElR0AcaDMh+0vWGl8v5a2fd/pbEIDUaHp45qBr8G1dp4+M?=
 =?iso-8859-1?Q?6CuRmV75Nbwh1i7Amatv2IWhPcWZDLXhYVtb5CArr3+BqS4ujBtqg8f67R?=
 =?iso-8859-1?Q?QgukdzglzLVidGnx4uTXWdyQX3l7gHhO9+q+OR+HNmsaXwelHygUByLOUO?=
 =?iso-8859-1?Q?RmDbfzmdbd0/oTRc5fOpDXiEzIFd8f2/GJ3mcV0VIa1w5VH/27q5sho3Bt?=
 =?iso-8859-1?Q?9G7Wl2atrXqGLtZyjKIYpQfMwPFwJNJ/Il2iVJBNQdjBNoOGQqJXkYGy6n?=
 =?iso-8859-1?Q?ZkrjHYCtjJ5exE5OTOFI5PidLRuyCyWFhhM45S7Fk86/WwVaP+77qUa6/J?=
 =?iso-8859-1?Q?JyCx8OCcIFxBiyWSGJIQsjyp5LASVSM2tP3KAdLgxugM75ExtXjJfiM8KQ?=
 =?iso-8859-1?Q?d4xb5DZSXu6W4CHmtrtSX5ZXGG9BuOQCB+VISGrEAah0f+NknPZ7qSlCMZ?=
 =?iso-8859-1?Q?pdD5NnE/dkiiBNWzoJ/bb/xEM514c0mPwgQsAy7rkAJPeWe60etK23wMKO?=
 =?iso-8859-1?Q?xaXFziX+PRMA1Rxt6rnf1lwZKCgktkecgq+V0YaALWnTFYwoVYPzA+UG5t?=
 =?iso-8859-1?Q?l/q7sHGonLIXnAh3BCIBtA4pcR8CCWomT3+Q3tolbPaI9fB/Ffz/vS4XCR?=
 =?iso-8859-1?Q?n97LeP9/EuLJIqrOiOzS+A3xZdTZ3HUbQxZpjXCrhUHfc+v6wDT34dge51?=
 =?iso-8859-1?Q?BMQtdCyzDrt2ONmxef7pU7DxIaiIZ1h5dzFUu0w7zl7LrLfKZ6UXArOVO5?=
 =?iso-8859-1?Q?K2/ae9rxUGvtEJ3hoeEZWfFFM5L+Bc9Xzof2YhQMliWfJIWxgqD1neGi05?=
 =?iso-8859-1?Q?2LyYtAzQDdkUn027Vjz8veIGIOFL3XUfZiiV6sp0cv8sBQs/XbDlV4tjsI?=
 =?iso-8859-1?Q?9ihXRowYgFGjITypg2br4XHCVRP2+7Wj9LeKMMrehtdVP5SMVI0QbpjdDw?=
 =?iso-8859-1?Q?lWcZCjOKlh8cjsxGsRlRUFat9UKmUygmBfBYaCQpxZKnVzWyg/UVeXbqDm?=
 =?iso-8859-1?Q?WppD8dx6UuJHk5Vl6xXYzHl+JX1jOsDtv7nDdlioiIzaMOdQiphWKdyfAH?=
 =?iso-8859-1?Q?k=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(8096899003)(13003099007)(38070700018)(7053199007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?qaIMPutegf/tV3V3807Or5DGViOmfoyt9v+NZBuI2/OJ5RaySnpb4JIrgj?=
 =?iso-8859-1?Q?uivIQkxsbe1IHGbzpYPEqQWPfycyrnIgm+LBTkMkN13noStKWxPmHnvic+?=
 =?iso-8859-1?Q?JRbGLHkBtlffD4OrgKzNvAc1vRTz9VzU0cyEeYV0KOt/mjSC0/v/iLW8vd?=
 =?iso-8859-1?Q?BDGd5UCBGB60p5pB/CuqOrOxhfWT0SzTJACXhwh1c25PMDJ4l2bRCAjpsr?=
 =?iso-8859-1?Q?h+4CAEmGitTP252CRHUg4r1VFUR2hZ5uFH/rCN4hYlt7VbBF2qYR3eJqcd?=
 =?iso-8859-1?Q?yjUdgJ0lM3ppUEHs4b0rZ3Je3Vp7mqfuj128zsVP0v0mzafVXMOATy98VK?=
 =?iso-8859-1?Q?rAgzxjmaO7x9ZWt1ZovB3DtktjQSaOL9RdNItnnfht6rkFBDPe48/IttdM?=
 =?iso-8859-1?Q?HewVy+txjpKp0FuirVQEq/xIIkMElMqN4t5Jli4m4g+NSVhkE35NVE9qur?=
 =?iso-8859-1?Q?G5EYsURcqlaBuVSapAYwfQoDzG66sfuTLXKWyDcNbYgkmA5/CgpV4iAqqf?=
 =?iso-8859-1?Q?Ro/lUIYaxPxupSsF/58JK0GQpLSnSfUIbYwuEa0wAekojDpmzrB7Go2mrj?=
 =?iso-8859-1?Q?CfJ7v+jklxeWBXsWqAzwMgMHYOhc2VnY7D9apShj6C9abrubv6fSWRKZFX?=
 =?iso-8859-1?Q?z7kx1kUN8nbG/MVaz8ZBkyR507ewnh86c8u+PlaaaR2+d4KdYTfmZj2uLV?=
 =?iso-8859-1?Q?u4wBVnOgwwdk2odER2LCKBmNkEk7IG+ba9s6xD9w3pIGCZQGTCU8WtT/dy?=
 =?iso-8859-1?Q?DumY9JroxrFnIn1/wvTqn15k49MrZ5ISO3M/LPD9Yf4GmOBF6Sp05PMYdD?=
 =?iso-8859-1?Q?cNHQhAMORJ0sYd4RFWzDHam4jqh+adxf6zJhTWumvJGnMU+l8WGN5Kz+Ba?=
 =?iso-8859-1?Q?skQAu9h3skijk+LvHZDLVgV5koMEAa7wzibGwg19md0IJbS9dM6cByEGHq?=
 =?iso-8859-1?Q?sV/RQb8tGNjo0GJ6E+OfPhmA0Pl+7UyuqOPn5uASLZ71KtwbItRTuJrUVW?=
 =?iso-8859-1?Q?fz7+0Wzx8VDoCeHIpy0O6v6Be7o5Ox8r+AvJhN4GiOkGZ43LpnTEGxoTK4?=
 =?iso-8859-1?Q?PdujAKUpSo/oP5sQhHGWholaWimk/egYbMVpKbtvpPbvTHFiJU+lw3wP26?=
 =?iso-8859-1?Q?vMqol18p1dG0zGcLI/XzxD3Z0Z7L/bqBL56WJzM5JojeumxyxpAU2ksy5W?=
 =?iso-8859-1?Q?M+Y3+n0xL/2nqwgRUsc+K9jSd1p7CYMbERvcmRV/GxJmFzcmtTVSJ+pPHL?=
 =?iso-8859-1?Q?rvX5PPrZ65/DxGNGHgIBLymyvO5Ps93FUFShzNXKyjLafoRmPZ0LqsmWQF?=
 =?iso-8859-1?Q?HKS/OAB7Mnx6wniCwYdXDaXFF67U2zvHiYil7wlqk0bIrJwAhSTkBHMPLH?=
 =?iso-8859-1?Q?nNvuTu4qBHHhfZ+a3ZSbkARCFxA0Ueh9+L+yvqdiZ7k5IEk8hclMUJ/XpG?=
 =?iso-8859-1?Q?/pxfod2NdRWq4Lf02o2vMEl1Fpj8BDNSUD8RvRYorVoTiFvh1qLuQ2/+bf?=
 =?iso-8859-1?Q?oeh4CgRrxtmcomxvUsZdUAXijhUzIjqLqVsBhpeLRVD69WRY8gecl/UsFu?=
 =?iso-8859-1?Q?GwpNu0VoXnfB+fmlSlXubj3A+79216ZgL1kxWaJVChGiwFS+eDBj9SIJsf?=
 =?iso-8859-1?Q?bddMbgwjac/5C0XJ7Da0/xqOtdXg4tFTaqPwmRJBq9cDP6bDgfk50WgsQo?=
 =?iso-8859-1?Q?0P/uDVHMCfFjkIzptX9rJUaC2k5n0lYISaGOKpKy?=
Content-Type: multipart/alternative;
	boundary="_000_PAXPR10MB5277D58A6BD07E8A62BB8FD69934APAXPR10MB5277EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: f384f508-ca58-45df-435c-08dddbd5e03f
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2025 08:29:39.3204
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yRIFcYjaVyIY55lubWsRoszuSzFmKCTIwjqSZDimVWvRVXf4k3F9ly3hAtObYzq2sLSA3lQpHIsF4n69GIiPEmooKraKzA7CnKmYazzPmFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR10MB8840
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Aug 2025 08:29:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65758

--_000_PAXPR10MB5277D58A6BD07E8A62BB8FD69934APAXPR10MB5277EURP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

Thank you very much for the information!

The following bbappend works fine:

SRC_URI =3D "gitsm://github.com/Mbed-TLS/mbedtls.git;protocol=3Dhttps;branc=
h=3Dmbedtls-3.6;rev=3Dc765c831e5c2a0971410692f92f7a81d6ec65ec2 \
           file://run-ptest \
           "
SRCREV =3D ""

Best regards,
Matthias

________________________________
Von: Marko, Peter <Peter.Marko@siemens.com>
Gesendet: Freitag, 15. August 2025 10:07
Bis: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; Matthias =
Klein <matthias.klein@optimeas.de>
Betreff: RE: scarthgap: mbedtls: Fetcher failure: Conflicting revisions

Patch for this is already available  https://lists.openembedded.org/g/opene=
mbedded-devel/message/118954
However it will take maybe a month to apply with current cadence.
Meanwhile either don't update or add a bbappend to your layer to fix it.

Peter

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of
> Matthias Klein via lists.yoctoproject.org
> Sent: Friday, August 15, 2025 10:00
> To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
> Subject: [yocto] scarthgap: mbedtls: Fetcher failure: Conflicting revisio=
ns
>
> Hello everyone,
>
> since yesterday evening, all of our Yocto builds have been failing with t=
he
> following message:
>
> Loading cache: 100% |
> | ETA:  --:--:--
> Loaded 0 entries from dependency cache.
> WARNING: .../yocto/meta-openembedded/meta-networking/recipes-
> connectivity/mbedtls/mbedtls_3.6.4.bb: Exception during build_dependencie=
s for
> fetcher_hashes_dummyfunc                                                 =
                            |
> ETA:  0:00:10
> WARNING: .../yocto/meta-openembedded/meta-networking/recipes-
> connectivity/mbedtls/mbedtls_3.6.4.bb: Error during finalise of .../yocto=
/meta-
> openembedded/meta-networking/recipes-connectivity/mbedtls/mbedtls_3.6.4.b=
b
> ERROR: ExpansionError during parsing .../yocto/meta-openembedded/meta-
> networking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb
> bb.data_smart.ExpansionError: Failure expanding variable
> fetcher_hashes_dummyfunc[vardepvalue], expression was
> ${@bb.fetch.get_hashvalue(d)} which triggered exception FetchError: Fetch=
er
> failure: Conflicting revisions (c765c831e5c2a0971410692f92f7a81d6ec65ec2 =
from
> SRCREV and v3.6.4 from the url) found, please specify one valid value
> The variable dependency chain for the failure is:
> fetcher_hashes_dummyfunc[vardepvalue]
>
> (I replaced the absolute paths in the output with three dots.)
>
>
> Does anyone have any idea what the cause might be?
>
> Best regards,
> Matthias


--_000_PAXPR10MB5277D58A6BD07E8A62BB8FD69934APAXPR10MB5277EURP_
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
Hello Peter,<span style=3D"font-family: &quot;Courier New&quot;; font-size:=
 10pt;"><br>
</span></div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
Thank you very much for the information!</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
The following bbappend works fine:</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
SRC_URI =3D &quot;gitsm://github.com/Mbed-TLS/mbedtls.git;protocol=3Dhttps;=
branch=3Dmbedtls-3.6;rev=3Dc765c831e5c2a0971410692f92f7a81d6ec65ec2 \</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;file://run-ptest \</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&quot;</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb(0, 0, 0);" clas=
s=3D"elementToProof">
SRCREV =3D &quot;&quot;</div>
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
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<hr style=3D"display: inline-block; width: 98%;">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<b>Von:</b>&nbsp;Marko, Peter &lt;Peter.Marko@siemens.com&gt;<br>
<b>Gesendet:</b>&nbsp;Freitag, 15. August 2025 10:07<br>
<b>Bis:</b>&nbsp;yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.=
org&gt;; Matthias Klein &lt;matthias.klein@optimeas.de&gt;<br>
<b>Betreff:</b>&nbsp;RE: scarthgap: mbedtls: Fetcher failure: Conflicting r=
evisions </div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-size: 11pt;">Patch for this is already available&nbsp; <=
a data-auth=3D"NotApplicable" class=3D"OWAAutoLink" id=3D"OWA0c0eeb5e-08c4-=
5298-b253-6b5b0f32f90e" href=3D"https://lists.openembedded.org/g/openembedd=
ed-devel/message/118954">
https://lists.openembedded.org/g/openembedded-devel/message/118954</a><br>
However it will take maybe a month to apply with current cadence.<br>
Meanwhile either don't update or add a bbappend to your layer to fix it.<br=
>
<br>
Peter<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
; On Behalf Of<br>
&gt; Matthias Klein via lists.yoctoproject.org<br>
&gt; Sent: Friday, August 15, 2025 10:00<br>
&gt; To: Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
&gt; Subject: [yocto] scarthgap: mbedtls: Fetcher failure: Conflicting revi=
sions<br>
&gt;<br>
&gt; Hello everyone,<br>
&gt;<br>
&gt; since yesterday evening, all of our Yocto builds have been failing wit=
h the<br>
&gt; following message:<br>
&gt;<br>
&gt; Loading cache: 100% |<br>
&gt; | ETA:&nbsp; --:--:--<br>
&gt; Loaded 0 entries from dependency cache.<br>
&gt; WARNING: .../yocto/meta-openembedded/meta-networking/recipes-<br>
&gt; connectivity/mbedtls/mbedtls_3.6.4.bb: Exception during build_dependen=
cies for<br>
&gt; fetcher_hashes_dummyfunc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |<br>
&gt; ETA:&nbsp; 0:00:10<br>
&gt; WARNING: .../yocto/meta-openembedded/meta-networking/recipes-<br>
&gt; connectivity/mbedtls/mbedtls_3.6.4.bb: Error during finalise of .../yo=
cto/meta-<br>
&gt; openembedded/meta-networking/recipes-connectivity/mbedtls/mbedtls_3.6.=
4.bb<br>
&gt; ERROR: ExpansionError during parsing .../yocto/meta-openembedded/meta-=
<br>
&gt; networking/recipes-connectivity/mbedtls/mbedtls_3.6.4.bb<br>
&gt; bb.data_smart.ExpansionError: Failure expanding variable<br>
&gt; fetcher_hashes_dummyfunc[vardepvalue], expression was<br>
&gt; ${@bb.fetch.get_hashvalue(d)} which triggered exception FetchError: Fe=
tcher<br>
&gt; failure: Conflicting revisions (c765c831e5c2a0971410692f92f7a81d6ec65e=
c2 from<br>
&gt; SRCREV and v3.6.4 from the url) found, please specify one valid value<=
br>
&gt; The variable dependency chain for the failure is:<br>
&gt; fetcher_hashes_dummyfunc[vardepvalue]<br>
&gt;<br>
&gt; (I replaced the absolute paths in the output with three dots.)<br>
&gt;<br>
&gt;<br>
&gt; Does anyone have any idea what the cause might be?<br>
&gt;<br>
&gt; Best regards,<br>
&gt; Matthias<br>
<br>
</div>
</body>
</html>

--_000_PAXPR10MB5277D58A6BD07E8A62BB8FD69934APAXPR10MB5277EURP_--

