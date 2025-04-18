Return-Path: <sbarthelemy@aldebaran.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A00D6C369CF
	for <webhook@archiver.kernel.org>; Fri, 18 Apr 2025 08:19:25 +0000 (UTC)
Received: from PR0P264CU014.outbound.protection.outlook.com (PR0P264CU014.outbound.protection.outlook.com [40.107.161.102])
 by mx.groups.io with SMTP id smtpd.web11.7776.1744964357924617180
 for <yocto@lists.yoctoproject.org>;
 Fri, 18 Apr 2025 01:19:18 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: aldebaran.com, ip: 40.107.161.102, mailfrom: sbarthelemy@aldebaran.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=igO+y0o/tWzySKFznTqBZ83ekJKhyc6cv1Kx3TQCyKO3Q/iqgRBtspCB3VxfgD4mK5/otOvR6mocaglSWRu50y1LUx0Hk2FhU7bQk0L5mOeEcwUYpMK64sttSCBFfgZcxG6LQSj2vR0Q5fwoVBjcE0ORc3UmsWoah6cX+wvyVZx6c5m3WuN+AAdueSalAJ6ZJHnLaMd+PAwqrPgGI9J0pSCanYiuMPVx3m13qrllfbh7QYt4nevGIM36rhkv5XetpuoPOfgOYg8UNfjI1lGX5WhqI8fyE07uEYStPBsgiao0R8dPZp5biqGiX6nKjFka7THBZKVsCO/Dwb49hEE4aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJDiauWai4SGPmpU4b0QYfg23BJ7V6qkNkdlvFiB95M=;
 b=ZKFTfspjOOfdm8JrHTzMZEi9YTBkCBRR/jqCKksz90VEMyNKNvsqQEUmj8vmH2xBXvU2awAvx14RXHfxVBHIaKgE6fGJT4i21WYI7nbJvQM6KkUHaON42vwckPgoc+vLQ7KjTyMiPTj7lHsHgvwwqnmNJlQ9VOszdcZWMwK4Ypdhjoxd/mXWFNsuAdkAlDFZqzoyYomBfMcL15pstJ8pVkeAopzRi2WJjODuMdCQWvS2gE/lnHWZp1wcf9WpnxYEMFtogHlsrxm+RycFaT5eyIa2Qjw9dmqW7ixTMyBTpGVoEFF+kdRw7qltx9UInSOB7oy+Vz7YAp/CHh3hrLk6NA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aldebaran.com; dmarc=pass action=none
 header.from=aldebaran.com; dkim=pass header.d=aldebaran.com; arc=none
Received: from MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:d::24) by
 MR1P264MB2754.FRAP264.PROD.OUTLOOK.COM (2603:10a6:501:37::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.26; Fri, 18 Apr 2025 08:19:13 +0000
Received: from MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d7bf:9ad7:b035:d61c]) by MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
 ([fe80::d7bf:9ad7:b035:d61c%5]) with mapi id 15.20.8655.027; Fri, 18 Apr 2025
 08:19:13 +0000
From: Sebastien BARTHELEMY | Aldebaran <sbarthelemy@aldebaran.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: sharing shared-state cache between OEBasicHash/OEEquivHash users
Thread-Topic: sharing shared-state cache between OEBasicHash/OEEquivHash users
Thread-Index: AQHbsC/9ecRAlC7ETUmxaWH/2DrT+Q==
Date: Fri, 18 Apr 2025 08:19:13 +0000
Message-ID: 
 <MRZP264MB2072F57ED0D5A64361708F5DA1BF2@MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=aldebaran.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MRZP264MB2072:EE_|MR1P264MB2754:EE_
x-ms-office365-filtering-correlation-id: 22f64050-1f1a-4e44-a58f-08dd7e51b41f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|8096899003|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?zynaKFRa/yBTP0qj1dx9Rgl3X9VgS7KK7dS00nEhvNXNsW+6LCWhbMF/fu?=
 =?iso-8859-1?Q?QIGZWR54NrZ6EBak1uZ+AzwS94eFGa02JF9jJ/eMvZarQLNz+cKISXoVbY?=
 =?iso-8859-1?Q?amkXKNdqr8qhRT359Mo5HpdoPiSE5ONNSFF1P7I6utRPneASMHfAaQnpVk?=
 =?iso-8859-1?Q?3rC6/kmFhmNSfjrYB7gAlAPUbrW98mtl+Ja4GE4r1WHg7UgsLMSbpLa6e9?=
 =?iso-8859-1?Q?lFz0/Dy9PzHs7CGrkxTiOr7RF59lLKG3hc9/ZL7hztOiGf1zTGiK8TalWu?=
 =?iso-8859-1?Q?GuLYrpfERMdvu1Wn3w21f5u/KgpjUFyxynq3ImifuGRHKWqjM3VPnDgD2O?=
 =?iso-8859-1?Q?h7hyFOwPMB9Ux+f3eEbczNcm8/+ST/9YvvvPJ3bWoIAukY0AQVLEBq01M2?=
 =?iso-8859-1?Q?HYYHkQxGSUjuzyXioYzviEEDB7hqG9fQL7TIfhRBNYMWmIieKKEHf5FEHQ?=
 =?iso-8859-1?Q?j6e6/OtbLqPWkT3e/1lC2ARxP8V06csCSQh/l1y3WPP8zLE+H95aRA3lL6?=
 =?iso-8859-1?Q?zrCfmSjdX93p/xF7cR0yaeYxU3hNiy0Jp489t1bqd1qRcZIMAckLuhm8gc?=
 =?iso-8859-1?Q?5JXlSJDTxvgpV/14Apu3dxsWiC3+CxLMt/y5HGjbXBXq04MklGB39muLdY?=
 =?iso-8859-1?Q?vjSTkWF52JpJHMp4aUuTPB8yT8+gXZetaBV2FGtBV6+orauzeJgoKg7uET?=
 =?iso-8859-1?Q?A8/CjQ2nQgP+pVHtwrRaSW6c42OINEdtBKZBPb+KaY0QZNsRz1fnN2QB4x?=
 =?iso-8859-1?Q?2tZiS351/mfws6w4PfkmMeWEnO+tNHrTWqcGsPD5Ja5yK8Oxh1c0OETvyU?=
 =?iso-8859-1?Q?KODqgO87rvKu0SUT2GLK+115r/pwQiHkt71qIGiI91Otbno2YuizwvhnmJ?=
 =?iso-8859-1?Q?NvEjyv5WIOxn7ifvjpInaQfZBs1Ey397DngWjbB4PB5b9S8t1RPeHKRz4j?=
 =?iso-8859-1?Q?mV5+/RZm2VownH/3XiR+mChukf9X2h3h04M33WX9ofmTb2ICYCN3i727ub?=
 =?iso-8859-1?Q?Gz/CNDYGp29goGSvQn9AyTaSBdmdeNkx+Xd+SwiAG9OkTM7DK+tkVCjsMS?=
 =?iso-8859-1?Q?XXKpVtFuYPi1UDHCNV8+2/leaBO7V848pKPuMlwPAAKn5Eaf79LORBmiJF?=
 =?iso-8859-1?Q?uhfjsAa/+2o4YJjP1tUFoRRt2//tPPzMsGZ/NeiCK3xgKMLMgmDuFfHe19?=
 =?iso-8859-1?Q?A+cBxC06wqrj5ddGIxQ+utC/2MS1aBD+MqNx0yvMUkdMIBz3xCdYTL/6+g?=
 =?iso-8859-1?Q?hunbhu4doV1lkhMgYyN4LCKOvWHWHmu5ZufM+zESwqraQRado9Gtw9DaBa?=
 =?iso-8859-1?Q?ul1DYMkx9iOEueV+bOBxz8wMaYfGhQYK/6aCal7iHwUHIAq7CNGuy9cOGU?=
 =?iso-8859-1?Q?4dt0rnY1Bsf90VgyQyWH8TYrme2GnU7hbnUuWr9Llv+ky1i5w2XtkdpQpC?=
 =?iso-8859-1?Q?aholrDAT/pEp2c5lKnv8lx88tvHZzCZEGUMAr3z/H1AjWlmQ/6r55+n1sC?=
 =?iso-8859-1?Q?A=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(8096899003)(13003099007)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ALqZmsISRrhJxsBDhnfdcsckRbnFvKPmUIBOzSCsVYbDoO+jY3B86hquOj?=
 =?iso-8859-1?Q?kPcE4tIpjsN3HTdCPHbRGdkfZjUwOtuGnM90ZuogodDZM4J27WW8+4tqN+?=
 =?iso-8859-1?Q?oIrgT4GpvA2rP4WXJMe4JW7XnSgVpPa+dfntWLEFmnE+qoYmZDRnMGyseB?=
 =?iso-8859-1?Q?H1mYoruBhaK23M6f0HLo9LzqjgNEmVTCqo1dynD0YM2PSHDmjRw9cDqpFu?=
 =?iso-8859-1?Q?gU/bCN1aDlDkryM5kr2T5ZdKS4EIxaFW/ACE8F+h3jwJ+bovQicVsJgIkP?=
 =?iso-8859-1?Q?jWomwS0QBFg58vTMas5gHas/QBgqhtN2dQy1tQaP4ev9szK1r+7dE5NWa2?=
 =?iso-8859-1?Q?NetTULmHcPH+Bft1kWq08V+a2spmkn5NAvjHeS+mBBi15gWwX8XhG9NK/g?=
 =?iso-8859-1?Q?a0fbGJtofEfW4CnnWHRbD/zf5SzbWc7Gak09FCse72fW8eKBiREIg/4m5u?=
 =?iso-8859-1?Q?T/dRpn9tE2Cn1lNFWXofwZLmyds/GYbPl9jNrpPNr/c2YxXyX+B+HIn5ni?=
 =?iso-8859-1?Q?wfSQ+vm7m3RYMj0qp+sQ1h9G0va9GLHzmkUBzXnsgL6ZlgPKs9mzDALbgZ?=
 =?iso-8859-1?Q?5sKY8LO8v1FKDeIm4hhTunZn9k9+zb0gac0142vS5M2EsoSWEqWGWObNCh?=
 =?iso-8859-1?Q?cBXLG1lUNiJ3ZOp2gnfiaIqKZiLIzJXsSLnm4VcwfOlNGYt7aezB31uObt?=
 =?iso-8859-1?Q?+zuL+zbS1BsWd6gwk0hk0F2GuIwb5w6VPo8uV1ozVHwnnPqiWz85YI+5nC?=
 =?iso-8859-1?Q?WxaKJrYPlzFX3vPZvI0pVkX6Xk+Oy5gp76IOFvzgd+Eu2xb76jc3eWGvZv?=
 =?iso-8859-1?Q?/IPmE+hgwYp52Mzqi9N/KLp9i7pXTdy77gxqSZmYOd0Lzo0n9r5DX1KOJl?=
 =?iso-8859-1?Q?TEHWafJcBddZAnRGpweyJNreAu6RqK96Qc8uMgRUVQSR5pTNTgqV31ilsr?=
 =?iso-8859-1?Q?SdAHRCcyeOGYyRdGwvfH9nNgdptTphxqt2Gt5Z9muK3PG7vJSGRr6NtCvZ?=
 =?iso-8859-1?Q?kH2+rXmSPbPoOO5GKqUbchJMi/teC2IWQya5kcYqkDw6USMxhK8OnKpLoj?=
 =?iso-8859-1?Q?SmlOipuFj3vJuILDFUF7oHy7bxVTBygCqtmrwhnZiAErV2cqFXPdUZDQn2?=
 =?iso-8859-1?Q?TBnDyyFP2ZWwTsJwv+Uolq6h8ldoSamTEMSHSjiMjXz24+EH33fpIdQVUt?=
 =?iso-8859-1?Q?mTf0D2Abwy4JUmTK9jkRq0c2tzlFXaBvbgd19pSzz2mYcM7O6tVkpvmxNs?=
 =?iso-8859-1?Q?ABhc/DaMaDZYeZL4utVkRfnAQpaKs67LCCgUZeDomrB5MqAPiE0WZEiNIj?=
 =?iso-8859-1?Q?m/zON6XIbmjYq7BvP0iIIHRpTcJqd8xwYiB1fBVo965TRfJgIH1VZWcGOv?=
 =?iso-8859-1?Q?n/WmUKGS8039pTerfkM/ocrqn99FbfVbDggCGHwtvTUZdRyj82c2ec9Jiq?=
 =?iso-8859-1?Q?XJcJSIxmCZuOHk+NfPHFzzoicVAxodGpBQa8/j4t64ilZJQi+rNJHEh2Q8?=
 =?iso-8859-1?Q?brQr/oJuHSPhbpnildFAXHVWkBAHwOuKL4HhwA07NbfASGC/77GJKXsisS?=
 =?iso-8859-1?Q?SNnc/RwRSehaeEm2felh6+wxbGeZqYXmD9X/i7lrMa3HnRcNqK8H/pSzVI?=
 =?iso-8859-1?Q?C9ElxIrN2t1gvfU3Q4YODX+pf62jp8Fra0?=
Content-Type: multipart/alternative;
	boundary="_000_MRZP264MB2072F57ED0D5A64361708F5DA1BF2MRZP264MB2072FRAP_"
MIME-Version: 1.0
X-OriginatorOrg: aldebaran.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MRZP264MB2072.FRAP264.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 22f64050-1f1a-4e44-a58f-08dd7e51b41f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Apr 2025 08:19:13.5678
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d82c76c3-c488-42ad-b6b7-cdbcb7613c9f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x6f2E9LQalQ10xIUodZ5GtoigS0VEFghPrBrKGtECaUGAVTTJgDESRq7fKoQhtTYw1EVzyVjbXDrUW9DDpF15Sg5DwLo8NQ90Ep539gfAno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MR1P264MB2754
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 18 Apr 2025 08:19:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65202

--_000_MRZP264MB2072F57ED0D5A64361708F5DA1BF2MRZP264MB2072FRAP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

we are experimenting with sharing the shared-state cache  over S3.
We would like to have
* several gitlab runners invoking bitbake, reading from, then uploading to =
the S3 bucket (concurrently)
* several devs invoking bitbake, reading from the bucket, but not writing t=
o it.

Setting up a hash server and keeping it in sync with the bucket seems compl=
ex, so the runners have the following configuration:

SSTATE_MIRRORS =3D "file://.* https://mybucket.s3.amazonaws.com/PATH;downlo=
adfilename=3DPATH"
BB_HASHSERVE =3D ""
BB_SIGNATURE_HANDLER =3D "OEBasicHash"

after running bitbake the do
s5cmd cp --no-clobber --exclude '*.lock' $SSTATE_DIR/ s3://mybucket
which uploads the whole local cacheto the bucket, skipping files which alre=
ady exist in the bucket.

It seems to work, even with concurrent writes, thanks to the way files are =
named in the cache.

I wonder if the devs (who do not push to the mirror) are required to use th=
e OEBasicHash signature handler too, or if they can keep using the default

BB_HASHSERVE =3D "auto"
BB_SIGNATURE_HANDLER =3D "OEEquivHash"
with
SSTATE_MIRRORS =3D "file://.* https://mybucket.s3.amazonaws.com/PATH;downlo=
adfilename=3DPATH"

Put another way (and if understand the whole thing correctly), I wonder if =
OEEquivHash and OEBasicHash share the same task hash as a key to name sstat=
e object files.

bitbake warns against using BB_HASHSERVE =3D "auto" with a SSTATE_MIRRORS:

WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside the sstate mirror.

but I suspect it is overcautious.

Thank you.

--_000_MRZP264MB2072F57ED0D5A64361708F5DA1BF2MRZP264MB2072FRAP_
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
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Hello,<br>
<br>
we are experimenting with sharing the shared-state cache &nbsp;over S3.</di=
v>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
We would like to have</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
*&nbsp;several gitlab runners invoking bitbake, reading from, then uploadin=
g to the S3 bucket (concurrently)</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
*&nbsp;several devs invoking bitbake, reading from the bucket, but not writ=
ing to it.</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Setting up a hash server and keeping it in sync with the bucket seems compl=
ex, so the runners have the following configuration:</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
SSTATE_MIRRORS =3D &quot;file://.* https://mybucket.s3.amazonaws.com/PATH;d=
ownloadfilename=3DPATH&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
BB_HASHSERVE =3D &quot;&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
BB_SIGNATURE_HANDLER =3D &quot;OEBasicHash&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
after running bitbake the do</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
s5cmd cp --no-clobber --exclude '*.lock' $SSTATE_DIR/ s3://mybucket</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
which uploads the whole local cacheto the bucket, skipping files which alre=
ady exist in the bucket.</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
It seems to work, even with concurrent writes, thanks to the way files are =
named in the cache.&nbsp;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
I wonder if the devs (who do not push to the mirror) are required to use th=
e OEBasicHash&nbsp;signature handler too, or if they can keep using the def=
ault</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
BB_HASHSERVE =3D &quot;auto&quot;</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
BB_SIGNATURE_HANDLER =3D &quot;OEEquivHash&quot;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
line-height: 19px; margin: 0px; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; color: r=
gb(0, 0, 0);">
with<br>
SSTATE_MIRRORS =3D &quot;file://.* https://mybucket.s3.amazonaws.com/PATH;d=
ownloadfilename=3DPATH&quot;</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
Put another way (and if understand&nbsp;the whole thing&nbsp;correctly), I =
wonder if OEEquivHash and OEBasicHash&nbsp;share the same task hash as a ke=
y to name sstate object files.</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
bitbake warns against using BB_HASHSERVE =3D &quot;auto&quot; with a SSTATE=
_MIRRORS:<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
WARNING: You are using a local hash equivalence server but have configured =
an sstate mirror. This will likely mean no sstate will match from the mirro=
r. You may wish to disable the hash equivalence use (BB_HASHSERVE), or use =
a hash equivalence server alongside
 the sstate mirror.</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"line-height: 19px; font-family: Apto=
s, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif;=
 font-size: 12pt; color: rgb(0, 0, 0);">
but I suspect it is overcautious.<br>
<br>
Thank you.</div>
</body>
</html>

--_000_MRZP264MB2072F57ED0D5A64361708F5DA1BF2MRZP264MB2072FRAP_--

