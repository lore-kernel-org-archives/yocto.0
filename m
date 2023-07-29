Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 451B3C001DC
	for <webhook@archiver.kernel.org>; Sat, 29 Jul 2023 21:34:26 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.62])
 by mx.groups.io with SMTP id smtpd.web11.62721.1690666464464797741
 for <yocto@lists.yoctoproject.org>;
 Sat, 29 Jul 2023 14:34:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=ek1Hgav7;
 spf=pass (domain: siemens.com, ip: 40.107.20.62, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JCuXI59gCnSYXB77OSVjOXBIpoSbVt6FTrqMieA8zcQ2iaYcPDi51AGtOKj7JXco9XGZBwPMBCpqq8YSFeSEbvJ0KQjb4UdAXveRkBwtAgPTNAGDxG7Lg6A37C/UclspPi0UD3t/ngWZme0n/phtDZBldjWjkTTa//Od5S6NdICJgCPtWbZKc6hdjjO0f8ov7/OKpXvsVrzXzkhiNwsOqmdDIb6uInbGRm7mI5BwG7x6fAuEmd9Ei1H6GmeiCYvMukXptyqOekmSKkxFpk+Eqe5wn7rgDdDRPbY9h/cOrwRNrVtBgbj985k7xGKgcFXfNIBLx0yqytoBdrHVGrOENw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JAhm9XLKldQAK9Rf0J9LjGVBdsGzEX5POkpY+/Zdytw=;
 b=PzAvW9IW12fmKXGuiaP4Qv5X06mFzJBW/SLU/34YtIx/0AzsdVWHK8iSHOpN9g2yaI3S+i7MKC7Utverlpn77yIXoudJkwcEGijenspOeigd+h3zut+rwZl9oy/sZq2ZS/hAnGHompemkJNDAQ+d/yLWewMgAdYsAylZRpCgrQeBnafRjm0uP36s862EyBvDElw5y/sVmFOrl4Mpcsi/sZoCZsxtlWt3T+N8ImSHBxAOKIDBJS/kZrQCq9OVlvTcqvcO7SlOc7S0R4D6sBlp8vmC6RZcHsFVZR3mgj+6feJRTcbYTn+XyDghS6lseDZsTnB2pOyd4zsinyMjKtJwpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JAhm9XLKldQAK9Rf0J9LjGVBdsGzEX5POkpY+/Zdytw=;
 b=ek1Hgav7vceXawLhC/OMenPt7kkPADBP8Hq1/7lZvHQugp5s5MhBGLk3/Zrc7hL64Gny+QQunCh0tFK0NA8h/Vd6aIW2K2jT10is81xG5WWUzbYYkqLMYM9r+jYNAM5DYjNDSO1uWcpvIfCEP3kzFflTr2OuL45OhPXoOGnj8tcVimEXQrqDKNdNC/cVbWKPqS44BuEPeZ53BAOOG5uoGQz0sqq1AoD1c/0ZanEhFf6RWo7MUvH1n64ZiHu3ZsGBzvIBdtnPXYcZ4gNO1bObBerVZA732qVJtqqL58nTSQNacvNzrOT9kznFOHH+Xvack5FQzQ/eo2kLMFEF21eEEw==
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:479::20)
 by DB9PR10MB5211.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:33f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.39; Sat, 29 Jul
 2023 21:34:21 +0000
Received: from AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::252f:e0b5:470c:b374]) by AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::252f:e0b5:470c:b374%3]) with mapi id 15.20.6631.039; Sat, 29 Jul 2023
 21:34:21 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, akuster808
	<akuster808@gmail.com>
Subject: RE: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: ignore
 CVE-2023-22745
Thread-Topic: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: ignore
 CVE-2023-22745
Thread-Index: AQHZqtalO3aykHDfiEamT6xFInEqLa/Rct6Q
Date: Sat, 29 Jul 2023 21:34:21 +0000
Message-ID: 
 <AS1PR10MB5697B9C288B623749255AAE7FD07A@AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM>
References: <176D40CC2C1720E8.4592@lists.yoctoproject.org>
In-Reply-To: <176D40CC2C1720E8.4592@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2023-07-29T21:34:20Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=f79fa9b0-dd74-4029-a051-4870df2045f9;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0
document_confidentiality: Restricted
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5697:EE_|DB9PR10MB5211:EE_
x-ms-office365-filtering-correlation-id: 6073dab3-95db-4183-9d57-08db907b9234
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 rIm3R9k1vJtCmzuT2Jo/jh/3ewz7Q+5cQlnspUQMuQZuNucvRS8JNWOcHv9pby2HmJXfbitfKlHWqK34acGwLxzcMc+qJMF+5BXXwmkIuzeeSLHyATuivw/gZqT4IgjgKFTzV1/WLOKkwYL+SyVZYZG8wCU7dyJRe7i1SBe80CMggk8v3fZoJ5ezWByeXQgjfEk8oxAwZphh4HzTZyDyAMWeKZAsv74Vb51TbVLgqLHvC7gBM/hVFQ86tTlZFPYTFBOcvwujFt/ASdgxRriHlP6FpigbEfRiiiBtE6K5dNVEuwx6GgrHAXl0TfXRdeQNDDZt2Jk4m/TjYMyhd0jYHdsKJIWoVZWmIsNhPGX+Q+TYKyJAEfLpS3Whh3526VF7+31US82kFZmYg86ooiK8agO9rnj5v4tepq0+mhlYnDTHH5LJFfvdJ0oPWZpeIeMtOoE2xrfnltJbXGDVkPHHO6Jp5O6DIv5frJPhaE/XOibHPYBqW/8Q4HFgD0ae1rtTIeMc56zCLjhLZNpCVTO9qzqkEejQN2b9vlF82W11BcrpJjSYBSj2va5/jVw0mOu4I5jmWtOLy0YdTZ8CznO1hj6e67Ylui08tS2CfUpPcGBXxSlPbx88nnSeukBMj9eO
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(5660300002)(52536014)(6506007)(53546011)(55236004)(8936002)(8676002)(186003)(83380400001)(26005)(478600001)(316002)(76116006)(66946007)(110136005)(66556008)(66476007)(66446008)(64756008)(7696005)(71200400001)(9686003)(41300700001)(86362001)(33656002)(55016003)(38070700005)(15650500001)(2906002)(82960400001)(38100700002)(122000001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?EBJXlfWR4WeLGB7WpcaEBXwp8k3P354FiN0Xlpm8Oel78bknFlqYethCTcE4?=
 =?us-ascii?Q?ZxJwGHmRL9prRpm6xnZ/xo1GU7x/V42/+g6gD1txxgPW1JW+H//yMuoG1kUT?=
 =?us-ascii?Q?azAEOTTQqSpQXQ7qRcgzZtSkpzQoxD99tVCSexrHNudy2oz1iT8GZxdbfrmn?=
 =?us-ascii?Q?tSyHa5A8slDWHe34PKFH+KOJQ6PzMPMDTNKJOEuKV3e+NuWeJtAYT/B95FBL?=
 =?us-ascii?Q?d2I/3c55AYFVPzT9I9beQRdHI1pn5mf+ObRUPiqHWR2RchZWacZwkXZ+O/Iy?=
 =?us-ascii?Q?1sK0BOQT8cgjZFvNO07vmR2lpt+bWyXc5dkm0/f6PQP80d3zQKGNA2IODfP/?=
 =?us-ascii?Q?wskzyKL7fpDXCLNBRwDIlWC2jR9dXE5klwWWIihmt4cM9orBFiKv5Ub9kKop?=
 =?us-ascii?Q?LKfcThVmfLdC/9/PcTs6D6jiELfICNgsxiDD+jRWQC/TeL4jUwgUmzfQr/1n?=
 =?us-ascii?Q?bfK0zLDfnFfUY3iOrxomEu41Dzuc5uYg2+CFTxNv7hmSNU5s6rOqOokFrAmM?=
 =?us-ascii?Q?1zXyKhZ7p7+1OIai4O/+0QUJLbsxUyEZq8YSdvrMId9B7R2e+TSu1PU7MYXb?=
 =?us-ascii?Q?Dvfz+mHI6gFZzvTTuMV8rU8LwCMHRi1XKplp3A7RB3DR36PRB18MuKSGO1VA?=
 =?us-ascii?Q?ddcwjNJ1q2C2vJG5khcTacf4KWmW3tO2ilebEEX+e29aJ4bSTTtyXunWmpvg?=
 =?us-ascii?Q?bP7FRoiHY0MYBZM0rH5gIm57RqBcj0ihhM5NryeS3Zcd01Z5Qy+2Jm6yy7Ud?=
 =?us-ascii?Q?rK2yQqOct2OYiGpefWD3Lrx9a4Jd5AgH99BhnUjEiS2iMcouiasd6CWmNviw?=
 =?us-ascii?Q?yYPR+d4g4CQbD6gAUhOyakrl4WWm+Kjo1EfPW6lOisbuGYWkr5GJFoTehNIr?=
 =?us-ascii?Q?Nei8gSCxabgNffMKtIjPAXn4vyXyqhJP4ZLX0Iv4RUGb8MGZMJDIZygS8px1?=
 =?us-ascii?Q?UnNfvWMkFGsV227YUKS3C0QQltuekFGbMzio5LrROK3zLL2TvC/LenQriMxM?=
 =?us-ascii?Q?riFgYBy0oo4UmaZKs81yc+x1aHXyTUIs9dULaaQL36fAV+5n6y5rGpN8ehia?=
 =?us-ascii?Q?GXsg5suoXOkxNegg9r2buE2TyqRyENSOVXFJfO+G+R8WMcWn1hjfrSB6tb5j?=
 =?us-ascii?Q?dWLI2ckJtoduNg5PIvrVIR67M1VwPlqqo5EJaiSgI0jaSMuXzESjDpfHWXDq?=
 =?us-ascii?Q?5s8vZB8aJlK4v2OHmt1I+Pazxl5MfFjbeSBYsiXLoXQvQO3ekZ/A3gQhzHgo?=
 =?us-ascii?Q?1rG46UM0U9hd6TZ3kbIlqOp2C3iQqmD1w/eIvOPGMRqXbhOdKpmtu7mkYsyZ?=
 =?us-ascii?Q?R3jABSWxuMHdbnzs9pyRleAmUyKm7kIz1EJe7IzYk424I15olvdJp0dfJr1U?=
 =?us-ascii?Q?9mLi8cr0mhVf85pQa8/iyZBFg1ohgt+Hr10IXdrnvRBL3SChFaP0CC8KOTeg?=
 =?us-ascii?Q?d7sqDLImKKLGORoICV2Ch01pFO0YGa4xGrrFfOgfzq+GxYSNE/ko8uL2dpXI?=
 =?us-ascii?Q?dJ/QfYzkibojLp+GZTJpvFEb3KWxcSIHy0/4JMAWx4fRsdQk0UkHjbwm10VM?=
 =?us-ascii?Q?mrVlNNzUqqM3hxo+0MYPWdYJZn4rmupXgom8rT3+?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5697.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6073dab3-95db-4183-9d57-08db907b9234
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2023 21:34:21.0981
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B3kvebgdhaTGEIgJmajcWdbsm4fccDUvsX476s73v2CPFEz9okr/0hjNayP7b4eCI7ECde7pVKPK5tTVJKP2nQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR10MB5211
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 29 Jul 2023 21:34:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60680

Hi Armin,

Gentle ping to pick this commit to kirkstone.

Thanks,
  Peter

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf Of Peter Marko via lists.yoctoproject.org
> Sent: Friday, June 30, 2023 0:10
> To: yocto@lists.yoctoproject.org
> Cc: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
> Subject: [yocto] [meta-security][kirkstone][PATCH] tpm2-tss: ignore CVE-2=
023-22745
>
> From: Peter Marko <peter.marko@siemens.com>
>
> As already mentioned in upgrade commit, this CVE is fixed.
> But cve_check still reports it as NVD DB was not updated.
>
> Signed-off-by: Peter Marko <peter.marko@siemens.com>
> ---
>  meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb b/meta-tpm/=
recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> index 9b76c2f..4d2c911 100644
> --- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> +++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
> @@ -88,3 +88,6 @@ FILES:${PN} =3D "\
>      ${sysconfdir}/sysusers.d"
> =20
>  RDEPENDS:libtss2 =3D "libgcrypt"
> +
> +# This is patched in 3.2.2, NVD DB was not updated to reflect this backp=
ort
> +CVE_CHECK_IGNORE +=3D "CVE-2023-22745"
> --=20
> 2.30.2
>

