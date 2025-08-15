Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 033EBCA0ED1
	for <webhook@archiver.kernel.org>; Fri, 15 Aug 2025 08:07:39 +0000 (UTC)
Received: from MRWPR03CU001.outbound.protection.outlook.com (MRWPR03CU001.outbound.protection.outlook.com [40.107.130.9])
 by mx.groups.io with SMTP id smtpd.web10.7172.1755245258223701725
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Aug 2025 01:07:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=MagfknW5;
 spf=pass (domain: siemens.com, ip: 40.107.130.9, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KhVT+0gone4d+XpWtdTLMV35EIOk68bdOFMa0K3jRxS/VucGc52NZFQ8ObRTW8p4T6VLZQlE+HmWsSdGtXapkue5AojTpA2sp/UPYanDyRM+kKkD8Dy40MfkRemgqiAy2T3dz+UlU9zsc7SNLILsgMbhqEnM49QEST7yB9pGO/xzsDNw+i+fqTqC4kfOCBR+P5p5uOU0gZeHuZItXA/ZAadwYhNj955JoLApUw8CD0mTOyRWB01HzL68+78RqWF+/isHRyISSTCHRKijlhlNw/SaDjThKIsA4LFirOQPqoGtzc9iYNaCXtnyoWNBcD3itS9zmPskYvR0W1DLMMYjKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0wvNOMDjSaFqiFVq5IY5g+cunU/8MvtVuCf5fgDIABE=;
 b=nyr86nRHGIUrWXKt1HSMBXOEU1jdl4g6sW+bvAUxsgkMc/bTWlOsNdXa+j9NzZQE/nreZjnd/OA785lfJK211Pg00NrWdrIvUk1yU/25M174CkNiFWFYPTudYxLA1nIV0uFYwJlwHDvdcaRfYwzFRFhgtL095BJ+50VyjcVoM14hF9oDz2UcPrBa9ppyO51ywUfGdDGzbqqe9aWyhAOaSTtkmQwwbb/NS0YtjyfdxjT6tvw16ukpd42QXXSIpbzpnE2hIRCx/skbfyoS8G9KMg2PLbwXAD18iRNfILDNy9g8SJjb44M8O1E/I69Myuo4nDmggOPNakirsC4VPDFBew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0wvNOMDjSaFqiFVq5IY5g+cunU/8MvtVuCf5fgDIABE=;
 b=MagfknW5DzvKCafOpD9UsXv7qvvy8hhMfS7srf3sWzkN+0/tYWUyFay7McSBWlAB0Cp6uxUV9dKvUzKMEV0bN07gnBtT/4Er4qEEPklvnR5RwrgMQ9gtL4PkEPrhcLAv7jwu5/XAtBJqojLJl7CzSq37fqiTo4emg269t0I2oXb0P+szlqv5LaFY8oKgdgRhfCLSZZ/+ADh1qS2jIk6Borr7CwsgwgoQvxfX1Dr1/if7jvTPmvcJSucDzccJp1oWrM4GjcMPKe/CXZo8jdM+fE0S/DbVnP19hBV6MiQNJ2tx6Ci9AASGjlIxQ2mNs6bblrD2b6PkLAZGNmiwU0MOZQ==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by VI1PR10MB3629.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:800:13e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.18; Fri, 15 Aug
 2025 08:07:34 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::6c68:267b:6fd1:d3f2%7]) with mapi id 15.20.9009.018; Fri, 15 Aug 2025
 08:07:33 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"matthias.klein@optimeas.de" <matthias.klein@optimeas.de>
Subject: RE: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Topic: scarthgap: mbedtls: Fetcher failure: Conflicting revisions
Thread-Index: AQHcDbnP+Qi0OND9TU64Fs2L1UPxp7RjW3fA
Date: Fri, 15 Aug 2025 08:07:33 +0000
Message-ID: 
 <AS1PR10MB569757B1132207A209188AF2FD34A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <PAXPR10MB5277E6AD0475060232E056449934A@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PAXPR10MB5277E6AD0475060232E056449934A@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=30138b9e-2289-4de0-ab30-0dd00488cf1d;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-08-15T08:06:09Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10,
 3, 0, 1;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|VI1PR10MB3629:EE_
x-ms-office365-filtering-correlation-id: a32a6f72-52a3-4c27-0520-08dddbd2c9f5
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|366016|1800799024|376014|38070700018|7053199007;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?31CPlzOWIWaGFW5WL0tWFKO+L161ldx26VLa4ZovlDFY1cj2Yc2pNcsUjKXh?=
 =?us-ascii?Q?fB8lZXl6+ksGTLBPFiyTHCn6oXhMSNYi/Re3CDxICqCAPRfwvn2B6BMz4hyb?=
 =?us-ascii?Q?BQNQYOu5lFW85ftFx7ly28KMjCbBlklEzqp4SiUnQVKb8+SvwUaVHIZxS264?=
 =?us-ascii?Q?oBvCYeNHjOAUw1a01J4zPePWqdU0om0YIOA49w+6iN50X2vized9ie4ltPDw?=
 =?us-ascii?Q?YZ+62ZjnrL3qItBZ2zZpD4kE0SsvbNvvTYTTf1Wy0SzCqZqo07m7LxRwjjO5?=
 =?us-ascii?Q?t1hyX60gYaV+XrPoWSBU2iuee847uN2D45b6zfpuA85cTfAI0VkLZ5YiHqi/?=
 =?us-ascii?Q?12QK+4zJeQvXG5B+l6qfA0NERzBNVvCAbXWOdGHaGsC/56Jo0jErrD3ykwXo?=
 =?us-ascii?Q?x2cSR2k4FUKsWdJMk3LjfHb6LBLtZ0751di59wf0BTj2sI6ikGDdPF44ghhV?=
 =?us-ascii?Q?4k0eybe+503G6wwczsutDo8BU5R1dScIE+khWe0YGDuKsJytjc9qDOd/+W67?=
 =?us-ascii?Q?r1fdMfRA0cfLBCNtNRZQs7VXGdDDab4qHyhonFVX86K2MQ7CUKAwZSvT83bY?=
 =?us-ascii?Q?Y6Ohi8DdnTWUjdGe17rM5d48hNgYhOE2ilc6fifBTVvBWk/VXPmu0KMI4p24?=
 =?us-ascii?Q?Mz/DzleSAyiyACvobFXhGJAFFxsHb0dPg5NqaCM6caJwm0NY7lnzLy0/Tfy7?=
 =?us-ascii?Q?1QmA2FBHHocVPA3H76gbBaLQL76svsSrx1OUz0FxeUHviyUq109QSUpYWE35?=
 =?us-ascii?Q?ROc/4FOUqT4TdKBCXC0ziQYvCmYISGJ1WgGzIjNT2hHFA1P3aRZm5TL6gOh/?=
 =?us-ascii?Q?GEWi6PnC87g/kTojUtdQD3aFtslvi8TjU7GBSl9oCFriCXpQep40513trgf3?=
 =?us-ascii?Q?Zays0mAVe7f5G1J/EKxgavsRXF/gK+EX7EkL87S6Tr3d6Dj/lyV38unt0aLt?=
 =?us-ascii?Q?eEkpR92ZdqsOKrwb8BqSr7/Gvx4u1PB363OsgjGB4sQudC889Aby+mEHs9NB?=
 =?us-ascii?Q?pOu4ll+P7PbSAnc9k1xvUNEA1lK4a0skcdYDyX0tRlzP1DTw7Je7/tOJSKai?=
 =?us-ascii?Q?26c9UmxhAjrK9jqNz1YSGCJGTFjf1n1sN/k+AEThcidomcY61VStwaoqTaHB?=
 =?us-ascii?Q?hJPE+HLzfEtVZELby2FuHgS9wYP1kam++lIUHOajG+6mVB9/EtE6MfG9aiy7?=
 =?us-ascii?Q?KiyjXPf3yN6n9gnbBhggpGxfTMixPEmreurOujQBEhq6jJ7opbI+ETp9s0C1?=
 =?us-ascii?Q?JFL3u7EuJjsQ94vC90IOeF3UqSjDozItl1lyVVd/bUJLZVvGgv5T8QylQsRV?=
 =?us-ascii?Q?Cm+yzxutPDgbQV78c84w0nIdlmfVfHhuxzlnatZ78Ofx0G8A3YJ+dfzJDbFc?=
 =?us-ascii?Q?PObkWira4dUgsE72hdJ+10CLa6w8eNdvCO6/KvzPMtaBWC/5xAl+1FDhvEKp?=
 =?us-ascii?Q?Wh1SBSgdax0=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?gm+YOPXQBglFl30xqETwHmOc7hEbuzzaXuMLLWTwq65Llfr82lww51TCDtGf?=
 =?us-ascii?Q?76eAx+XLifTtcudT6s6m+acu6yfVq/4PZNUNI9Uagwjxr48iiRJGo2+ki1ts?=
 =?us-ascii?Q?PAV9EfPT9ay9WnKtoQPR0IeQCLGXwqdgbeSWBPC2Z+GfgTRPE19r8v+ikaon?=
 =?us-ascii?Q?8kYtVGCTtEBq2Z7NKcied+yGmSBvOwo9k6xVxbbNq4qF7YEppE9yeZ0Mzb5M?=
 =?us-ascii?Q?aUUhQlMv1Yw8ohuZ9Q23iqVfcdn8OTqp5yXdW9nm5BTYIcZ3ntLp7O4cAp6+?=
 =?us-ascii?Q?IW0MfFQlZB0qd0WJ1qpUS2nm7dRVKWH5cNRJXeyIFgSjtd3sWYLo11FSxbi6?=
 =?us-ascii?Q?RNltdJSmM7oyP/yy3YPVuOxvOCNzDpzZV+0Q3hHvM34RejU3xH+1QB0tcMi4?=
 =?us-ascii?Q?wtwTm2xJ3MwwUJ1MBvxz2aIrFRB540rzDAbZJSlT2k8cgJ95qCJSuhonx5QW?=
 =?us-ascii?Q?9pmYUw8LBW+7PyzVGvpgMkKAXyQabxdN7u0tuTxbVx1Xm86bnJ7KWYitYRQX?=
 =?us-ascii?Q?HDZb8uWK8uVjPwhrtN6+Mw5wjEK2guuAYzLcfktwk1JGW32m/x2CkiiLBQ8C?=
 =?us-ascii?Q?AkE00zgyVs/u9DYcSwOAeWzXVNoWW89KZhPkMIjmThsRA50IMil0NV0q040o?=
 =?us-ascii?Q?v7klF214MGhIWn6d42YFAc/5JnZFVJpHHX432VDUpikyt+hu0y7SQN3oMMpm?=
 =?us-ascii?Q?SkeW0t8snftkS+LMbIbcUPFfbHuKGTEmWq0EmxE0nSsKLMpunwBGdNMCYxDz?=
 =?us-ascii?Q?0tB+MaHik+LHqjGw2yjaZ1Ur9y34DwSyIXW+93oXlDbc4F85M4I4XJ9Jr8y/?=
 =?us-ascii?Q?IPVI22Prj1/trSXGOnEqP/N/AYppYWvNmFp3bbIpWBCmDfc2ZjLJT5J1OZOz?=
 =?us-ascii?Q?WDLvhASGf9zNF+5JCWfmHBUngWH5HXviS9edFo+q0pMEEV2SABkcG3XQStj+?=
 =?us-ascii?Q?MgxBKLdK1R3eCKtByktfwwfv/9Hjds8gCJAWaWR9dXQOFkYhPi1EVJV4E1DA?=
 =?us-ascii?Q?1dvkca57Y812hHCZLEE+X2FtXLHVulqS4mqDaHCuuI8Sl6v2WeSVG4TR9w6G?=
 =?us-ascii?Q?DfLIc+hFPs19cd4crrBsZFfSjtD+4CwgfUs7H1l1oxZo73ZJBNZKk3zgg32H?=
 =?us-ascii?Q?IySNZEMBuZ2vW/cfc0PCyMy1TkDurMBA9qhm2ng38n4Gabf+5blZ1FJy+woo?=
 =?us-ascii?Q?UVFQ66SxWAY16AjeCk75Z3myV7W6LizA1mjzGyUCirhFhAH1jUKjJ/ihcmQ4?=
 =?us-ascii?Q?4xlCbJp7XzopCQLyFHpjW4KePLkVrqOuiIsxH0/okOo47f2VWIPEo17nRUT/?=
 =?us-ascii?Q?OGlInoULK4JZ8G/wDZzxKmcAEZpkqCKO3qxMZeSXdiIQ3X3+vcwm6ZpPPA2G?=
 =?us-ascii?Q?wgmNjQd29FzgfDf4SWnd+RYTLgrHiBJGDH9L4Xr95M3wUWw15Qi9qjrBIR3G?=
 =?us-ascii?Q?AuDyLpR30R91BNeMwCOQ8sp/KzJ5XIkyqEXxWNYhYKEWo0+Xmi4haym8GR0T?=
 =?us-ascii?Q?lwvYFfsHoiSeOup1M2h7xxRngCqHu7NDRzhAOVuhoUfCGp6xMo3kj2kv0d12?=
 =?us-ascii?Q?hMBboMBw3I+DNiY9DwuUYaDXO/iluTB5dp0DNpkj?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: a32a6f72-52a3-4c27-0520-08dddbd2c9f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Aug 2025 08:07:33.4110
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lAp/3S1TmltOSFOEKe9itB6oggydJOLkUMw9xi758r1p9Fly9Q76bTxoNzABRx29gBVuUv3aqlWEnr/6smlEug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR10MB3629
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Aug 2025 08:07:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65757

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
>=20
> Hello everyone,
>=20
> since yesterday evening, all of our Yocto builds have been failing with t=
he
> following message:
>=20
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
>=20
> (I replaced the absolute paths in the output with three dots.)
>=20
>=20
> Does anyone have any idea what the cause might be?
>=20
> Best regards,
> Matthias


