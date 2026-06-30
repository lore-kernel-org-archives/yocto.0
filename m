Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3DFE8C43458
	for <webhook@archiver.kernel.org>; Tue, 30 Jun 2026 06:42:30 +0000 (UTC)
Received: from PA4PR04CU001.outbound.protection.outlook.com (PA4PR04CU001.outbound.protection.outlook.com [40.107.162.70])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15587.1782801743436972537
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jun 2026 23:42:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=iY01Fdqp;
 spf=pass (domain: siemens.com, ip: 40.107.162.70, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VuyZ/VXxVoujUdQf+MFm5KKpRXvPWciTmYTF5IqSdQdB3bQaAXsdD8p+oZY2T4I7DRFWnsTvYdVBS16eryK42HTsUw/HT+XOae/RlaIOmaR0HO6NaG74OphaqMZQCrbZ46/7KbhJWoTH7YFZ/vvMFvyghJIv59BQatK36/JoYzuFtVc7he2iboeq4oTensZnEaey0RqtpmwX8W1wYCniKNnrIAKRnkeATSD+gvv+bzbbSNCZU+de02LZZhxaKtLmuJDk3zcpseYw9nzdLOUP/rxR8KbN5uwC2j3N+MoHZbmqw2qjnzybusxLFfXcSW5EYmVzpbs32zJ2/RUwH+QOWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AnzDiv5grW002NB/3Lur1nMXFC2k4N7XO0zoafZlbAA=;
 b=p5opcxxHtuE7WCS9zl7KFXLFH4KF4M/r9Ppz/ghVZgZhZZCY1mpJcYSrRjsq/dRREjRiI4lAljEtf+b1eOsO3yD/DafAFmdGg4tb6Id1Z+XZs7xPM4pEr8Z1JBuoXDrmcN/eMC9nm1eW4Ny2ffCN7xwjes1TkLpVg9CWxWXRztqTNujZQwAhWDi0Lu5GDUbJpZBHs/Ok9+bCaOzlH29bJ3bU5BvRgSe2snWxl0NZ+A1BdLdQNPN1Z8vwtodb3F1y5P8tRycaJg70/QKDn8qVDT1ZvGlT/ujCkrie2lB1As7PVumZ62A1lKIPxNAhudQ2CHWW8tpXuXfLLVf/bsygtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AnzDiv5grW002NB/3Lur1nMXFC2k4N7XO0zoafZlbAA=;
 b=iY01FdqpSTQzQkgA9Xjh1JjR8eGTmapy0MpWP9N4L6jBmELVFU2untZYJEbYcp4dtVcJ4BYQ+7F5noOYEFmnnseKPwR3otWWanTxAtde1nxhKEP2pK/B4lIKQL9GWX9d7q9BVkmgNGVLobRXwDLWPyipTeH0WNfUWq4kYQx1IzHne8NY/VH7/TZNJV1SM2SHtfDSypkEVrWDVh8DVDrvdOeO4fgGtVR2iRqdPctyKZ/t59vHb2h+s5wgxgKI6babkXXAvnP0+8vlLk5783dlkO2G6I0PA2rCEC3kcaCE2VBqWjl5pTVnkLXqmj/A9T1xBDwTtP/Rzo0SQjYulyeM1w==
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:420::16)
 by PR3PR10MB3756.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:4a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Tue, 30 Jun
 2026 06:42:19 +0000
Received: from AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008]) by AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a905:57e5:8858:d008%4]) with mapi id 15.21.0181.008; Tue, 30 Jun 2026
 06:42:19 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"joerg.sommer@navimatix.de" <joerg.sommer@navimatix.de>
Subject: RE: [yocto] Add redirect git.y.o/git/... -> /...
Thread-Topic: [yocto] Add redirect git.y.o/git/... -> /...
Thread-Index: AQHdCFoJ5+vwNIyIMU+dmpCv0eMrQLZWpLYw
Date: Tue, 30 Jun 2026 06:42:19 +0000
Message-ID: 
 <AS8PR10MB507327F59E051A8A15B76FD5FDF72@AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM>
References: <akNglndfCzY7BdSw@navimatix.de>
In-Reply-To: <akNglndfCzY7BdSw@navimatix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=d0854448-91ba-4500-9e0c-e1dc6aff001b;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-06-30T06:35:57Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR10MB5073:EE_|PR3PR10MB3756:EE_
x-ms-office365-filtering-correlation-id: dfbbe49f-b036-4475-f275-08ded672bb8e
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|23010399003|1800799024|366016|13003099007|55112099003|22082099003|18002099003|38070700021|5023799004|11063799006|56012099006;
x-microsoft-antispam-message-info: 
 V51odEzwYXh/9IkH7rIVqCUBuemQCXaBOVdyLSFJr9OWWDqJXC70dFNNIv5pIK+Mrcfr1nMhMVu/cumtMGrJAibLNWCXtlGIzqF/VoKgkwgggAZjgqpKtND74J/kHL5mTkIXaVTcOs+NYjhsib2lggMVnD7JqQ7nUzg9adN35hkvuUpGby7DHkmQwYVM1PmWEywwC9efXk4OBM54QZ3pHVXzuS6T/oXZkMrJgJRzIWjR83RjxBA5RWFUaK3lphImUHpEm1PZDSrcRU8wPyxl+rmoyqUMYclNfYp8gy5032fcP21oHVeEM7Xi4eUvuWdIfC+0j2JCNZWPkZfWW7muG15wIqgF8LBKjUgr5DK8ZuQ2xO/MAn1YLxXqCoiZmPBMtHzmjo6kJglEUY5sxkVMKJCmQHAuJLPPcaWr2oyFUlp5rLDSpEh/BvPb1PaeKwQMHawIt8PPUGJOyoZiGbmqhedvSf7BYtZy5mv8NF1qFYTjlEG6P6ZeEE24puNiot374ISsXXOiPoLMDmP6W5rKAC7ajFENvStUhw9Z4fyV7mwEqaj7Us5zKtabdjJuTxg4zATsdk4M9NJJ5P0Mym555jMd9JHKOl9UtpTxe3gtWkPWDJvO0Kmi0u6wmqru0xAaKDj1XnltQotkbrH4DRiu9V3Jn4va+sGqbJeKS4z6R9g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(13003099007)(55112099003)(22082099003)(18002099003)(38070700021)(5023799004)(11063799006)(56012099006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?dyfKP25VWyPMM89ATHzxWsSVbGrWrfamhL0NDmf04tF5V4lpn54jlUqcgw?=
 =?iso-8859-1?Q?kBvTrKVJcZPbq6XMK5UR9YOLmcdW8q0G8M/yubclJam6ohV05bxM3V5Wd6?=
 =?iso-8859-1?Q?2Ga2OkIrs9kS8/6p0wcjH6MdH4U+fLACi2FPIeSYP3DKh0nlrmaVu1zEz+?=
 =?iso-8859-1?Q?Mi8v0mYmtsJ6wORo9H8rvWanP4GfiT03qXYkC2xM88L1u1cP56R29gCRQ4?=
 =?iso-8859-1?Q?gDFpofnohrU2oAGAP8nODbVf+VwWL1AC0YgiE/2QHBFHYo/r6VYXyN+HuG?=
 =?iso-8859-1?Q?4Pu1wAIJMJYPMyPLsBzFrk6Rs6DZ2ivh3pxc4ykqW1/3WNoP3EW1IZ03C/?=
 =?iso-8859-1?Q?vv2B7JEyHuwkCpeAHAIt+4HfC6MvHfVv8bE5OzbDS+6LT2vTJM2A4fiZPJ?=
 =?iso-8859-1?Q?Iay/d0NuqV4hXsI9utfS8YKCyKoKPf9rIff4f8uD8DF39nHPtA4+FEWanS?=
 =?iso-8859-1?Q?suCzamNQ0yxnbPXxnJ62VjLQwhVWLiaO2296bVe76kl6ggANWJaWRwQJqb?=
 =?iso-8859-1?Q?eF6TJljFOU0SshvRzww6ACUE/nJAalSYSUEbWbgIReoJrwPmqbKfBvA4x8?=
 =?iso-8859-1?Q?VcUDK9YOOfBt8g7AYt4XgXG3mk1mOytE3wdaZbLDkUy66CIieWj3Hbvxs3?=
 =?iso-8859-1?Q?KJnp/R6ttiNZuWeFMumrnt1VjgqCG4ajoOnfpPEXAMrgHNoFRiwuF8ULea?=
 =?iso-8859-1?Q?oA0LcJAZFcPitRTW3JPzbA9KkrI3zodtiMWjWReR3wiPOWPBBklZGe2Yu6?=
 =?iso-8859-1?Q?LZxbhF1XP7T0GrZkohHc6esxkh5i7pkVEI7oClCx31TTrRW0JYFbCenaxJ?=
 =?iso-8859-1?Q?/I6tj4JbCiWGYMAP+3oLZB03CsUHEJQgFUQwpfDEPD1cw3R/770sbDPH8x?=
 =?iso-8859-1?Q?Z4GWHSRXCB+4NqRPAEAt+VVBxz8I4XacNXevKZRBBapvaMKtKS8VeSs51h?=
 =?iso-8859-1?Q?OKw72ZGtpau8lzQNLNZgT0u2/CEO5fvgmSaZQcFXEmZQKbYb03poGcx8PR?=
 =?iso-8859-1?Q?NNWAwZ4PXV4H4xvJ3WxyY76v+A4sGjI16NAHoDdwjGsm/CeXj7ys09wF7U?=
 =?iso-8859-1?Q?tFTZNCJ8sBubmSl8nQKgzEWi79aG9hZml7FdEHo314YBLNo5HB/i6xecYE?=
 =?iso-8859-1?Q?M5pi0qgUoGhD+ZZyc4PzBPdGM78sRkVeqS2orjb0QQOd42yoZ3sU7RpdRA?=
 =?iso-8859-1?Q?oV1fjLzSW7reVsyyLP7NkLc687Q90M1PjzKmcPzlOc6HWU4aRsI7TdSUQJ?=
 =?iso-8859-1?Q?ImtTgM2YC5tjLpgsTzRMZoz+OU7l/CRKMcvfUzt0+sgaK3SLwgKOPlSxYp?=
 =?iso-8859-1?Q?2cVFNT6oL83wae3kBb4p8X+LLyIw0ET+sTXaNBV8SBnRXNmIjXpkgnyFyo?=
 =?iso-8859-1?Q?nS5BU7bWoA0hvH/RJsu5X4PP85fjaUZrMeWPgBdMUh64HLu1vtOs5g7QQV?=
 =?iso-8859-1?Q?N5WZP5dg+nyN5PNBgUjfB7ZtJX8pMqb8oxURFQiBUfje+6DLPnWQVbCiKy?=
 =?iso-8859-1?Q?9Kmw2XfwqoT966sPayZJwv5xot8+346dUhZ7RuJUphAtC7KCY8K2qYndbI?=
 =?iso-8859-1?Q?2UqdxXSumgQgpfmksOhYptpMePmELN/qv3PFqk761OyEW0L3iCGH6gVT9F?=
 =?iso-8859-1?Q?alxNnG7uwUJunl2jeNM3ikA93iyyAqjMwN7Z0nqnM9v6go/83UXYOq/Q17?=
 =?iso-8859-1?Q?L/TyRJU94uhrKco739aZ9rqpHEbnFDNezkH+U+lmtcmi97T5/aAB3tI+Ai?=
 =?iso-8859-1?Q?EHv8ujpoDBHno6klJtNQ/pw33Ps0b0TP/Himo4naQMjx4RoWtwSYwhnsiD?=
 =?iso-8859-1?Q?h56R0Ps1Hg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR10MB5073.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: dfbbe49f-b036-4475-f275-08ded672bb8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2026 06:42:19.4282
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3IOLNomgi81sIWnhRe/sOy6yhBD9jEM14t/Wp3GxcfpsGp+UaKmTzpcfJF4RcjiOcFp1d7diJ101ksoHkqIDfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR10MB3756
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jun 2026 06:42:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66618

You could possibly locally use git feature insteadOf to overcome this.

Something like (untested):
git config --global url."https://git.yoctoproject.org/".insteadOf "https://=
git.yoctoproject.org/git/"

Peter

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of
> J=F6rg Sommer via lists.yoctoproject.org
> Sent: Tuesday, June 30, 2026 8:31 AM
> To: yocto@lists.yoctoproject.org
> Subject: [yocto] Add redirect git.y.o/git/... -> /...
>=20
> Hi,
>=20
> would it be possible to set up a permanent redirect from
> https://git.yoctoproject.org/git/(.*) to https://git.yoctoproject.org/$1?=
 We
> have some older releases that can no longer be built because the /git/
> repositories can no longer be found. It would be great if such a redirect
> could be set up.
>=20
>=20
> Best regards, J=F6rg
>=20
> --
> Navimatix GmbH           T: 03641 - 327 99 0
> Tatzendpromenade 2       F: 03641 - 526 306
> 07745 Jena               www.navimatix.de
>=20
> Gesch=E4ftsf=FChrer: Steffen Sp=E4the, Jan Rommeley
> Registergericht: Amtsgericht Jena, HRB 501480

