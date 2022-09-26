Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA359C07E9D
	for <webhook@archiver.kernel.org>; Mon, 26 Sep 2022 08:14:35 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.83])
 by mx.groups.io with SMTP id smtpd.web10.25870.1664180074388041318
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Sep 2022 01:14:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@theobroma-systems.com
 header.s=selector1 header.b=dkkB53a6;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.83,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=du2Ybz2yaYNbY0w7l0x9dzDYuspxYvvCkm5rBm3PaAGIucXuKClqXsYOh8cK0xDZmqrjmZSCHuRN5HKxTraqFjHyoVbXYV9HBolABavyz23srOkXRQ616SlIR9E/xJ0QVw5Jw742UYchTs8B09KopIH9ROypFsL7xNbqnQRpRpt/EsfhxWox+cP+geCURUCCVc5xCUarPwrrGkNSd7TnQC3TrpOitHhT1ywnlunILPVHtq+FElfP8TcA+/PvFd3EPDlNq2Ise4HWbzQ+JhTnxBFalWfqypSElZVelmfcyrHbGCgj3eKD7GxCfUowGWpDOzMY8bgtif0rCVIPvaMHfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xX/+PYPMSmLbxGW5W3h8pBMJ2tufkXKoUwB/9zSq7yA=;
 b=SkpQ5t6Gp1vBNGDvRFW8wkPeYkfDJopDdYaFGCQeVwpBPBEUQY8KQ4OWmUL9PYTUagJbaBCMHSCN1cAichajpd/P4QUkUxsGt2zF/l2jIs3ktjdBgO2/TEydS7Y31NPxr4bC/QA0dkHwgrYbWm0kg1DW5DuR2BnhOudhLyoI3xTbglJyvWIhE248524fJq7xdD9180Bo6WeGx105KmPVnbO3fYUr+gm5BtcpCOGh9fIN/oWnQdtqTaEwhRW7GKsG2flfLs477QX+QmwgNz4V/z3EkqgGZlldQ1H4tbguU6UWQb6OEnneIZBBsOvHFsswvS9+jYriiHRNWFotv1IGTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xX/+PYPMSmLbxGW5W3h8pBMJ2tufkXKoUwB/9zSq7yA=;
 b=dkkB53a6spXlKk5m5HGS+oU0+U16Zk9FhS9riFVIpbrD0pT57NYfTgue3XdGVjMl9Hg9A0E6PUQLQ8MMWm5KPZkZP/9ePopEgEhVSUU0BQv+dAJUnOjAoYeaYxO/ZExtSRHtwUy8sbFokKqSM9OIlvVVVpz2nPtsI8qSgQ6OTtv318FlQXV50bd4npggqsJYRsODPntfzPr6TWswvbY987uIQYDfw1Io8aFiJ9iZmdDRSOW2VdVRcRY4bvSehECPfEiNTJshOFaTBenbq8wZqL3Ba70Juy0eKee9ACWNh9iIVUxiHaNzuSs+dIoVnkwSWoS7VaK1n8bLGIOg5yOEkQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8993.eurprd04.prod.outlook.com (2603:10a6:20b:42c::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.24; Mon, 26 Sep
 2022 08:14:30 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5654.025; Mon, 26 Sep 2022
 08:14:30 +0000
Message-ID: <0e5478f0-8c37-bfdf-9f8f-ad652fbcf580@theobroma-systems.com>
Date: Mon, 26 Sep 2022 10:14:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [yocto] meta-swupdate integration with the custom Yocto image
 #dunfell
Content-Language: en-US
To: Mahendra Sondagar <mahendrasondagar08@gmail.com>,
 yocto@lists.yoctoproject.org
References: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <j7Ra.1664127515524437911.bdfX@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR0P281CA0096.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a9::9) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8993:EE_
X-MS-Office365-Filtering-Correlation-Id: 50d8f17b-ee0f-4ac7-e1d5-08da9f972336
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LNxO7RNtMEJdVsWA523dWNWp8n1yYJsy83HSwfkL11Ms4JhUKeSAXRCOg/u9VSJeYPQtg20CwethDvXPuUQPnb0bRqz1OOmn2yt/1oi9aRuppJ9y6kijbbp2DVd+ULUR4EiXZzJeKF6XSpT99S+PWKXt5ejtlNp8XZ+ZdedtciW2AwW18TDtcIe99O9HpUqNchMv4o9KQ8EhONwJi5CNCOUhVRDmEAwMTvQJ/OYV9HncO1Il7KtQugrSk96aAdClYjKaUm0rye7HPIeC2iG/p7u+qbBbhoqLZkUkG807FVR7i+rRbrFj2yGAYtt1fhx5qMHIrGT6iN3XKT4S7ANmRuLIEAbc0oEPTp3ytuc694KtK7kw48ie79zRpOy2tH3bIVgrGiDZNvLxzHNHXLSMmAB49mrWPsGHOw2zI5IPk5MKk2nvks6zs6qfuJBnN70PDfZ3cPwt9m/pPsYZ9OivfNLnpPTW717UQWPOh0dw8h3ydFDfRvXjwynzGe+bMJ6cxYUuyrJCfyAYPsit8ToPv5r6i5gsPpGTluOq/pignYbzyI7e6SL3UaV+ui4SelUtuOyVTLNFtVIljYcirjfAuU1+mnCH2Bm+4iaoTBi26C+QLiI5jy0z52H13zLCMnqUjxBT8NTLPHp1lkckqwKCFzzI3F5UMjFwz8J6F1EtBc44jHZaavo81uppCGKiWA2O9sUfskx5pa8YVDaOAzP0n19rHo1jNUEfJ2NHwmOTjVbsWRPdgW6x99kDRE/D/6GzZ2vRsB43p42dYYh/UWVFe8ySez/I7VwbVNJ+z/bzKorWyn7m2W3NSfCpIQcPe/oq
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39850400004)(396003)(346002)(376002)(366004)(451199015)(66899012)(38100700002)(26005)(6512007)(41300700001)(53546011)(6506007)(31686004)(83380400001)(186003)(2616005)(8676002)(6486002)(478600001)(316002)(66946007)(86362001)(66556008)(966005)(66476007)(8936002)(31696002)(5660300002)(44832011)(36756003)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?GwCAKta5oEj/ZeoONHb8DLMMr2SYY8yY5OKheNuqv5C0laWSYvyM+mlkVZUR?=
 =?us-ascii?Q?v96iGOsX3SrR68Wl1kP4U57UjmpEKM6u0FOD1eD/PR23BuEdBrgfGdC3LfD8?=
 =?us-ascii?Q?cFPpcQc9veA2MCBj+esn3gP0V/LUKQu/A4hffm6AWcehOLEIOhP26/TFenit?=
 =?us-ascii?Q?wntsuktU6fXsp986ixYwjxdOhVdzok5G/vRaNu2EdKGQgHSIEp1ob8uHG0yV?=
 =?us-ascii?Q?RKzOlUwBc9BV/meQqsj9VdAF5o+Z49rBhFCavzvqv5q+pWWqsZKr3D2Us/L3?=
 =?us-ascii?Q?46W36bLctFHld6Tw9jnLjnZw1JwjGGdjDrgSzo0fD7hQqAuNr1+CpfhLziwH?=
 =?us-ascii?Q?SBDrT0HJIFukLjZieYbFL9UzOzYMD5XtlHDW2GxmaZikLx/K72Nw+rMYK6iH?=
 =?us-ascii?Q?G7ABVrtybS0Y9+K+fnk+GTTUr+CQfLzLQsLstoo9uqMKoDirKu1se/UIkN+Q?=
 =?us-ascii?Q?CmQfG3vZUUza/+Ir1wS625p+NPFxtz0H6ZuGGVACbAy0FS6ljrh2r9WQm+JV?=
 =?us-ascii?Q?batjZVN3Ul+RENnyyAwcc4wKw8ukt6MvKoKTT5g70Ei9VFj84cHlunMfmQb3?=
 =?us-ascii?Q?XQnNJUNwQuX1Xl85XEFfPwS5r/loJ6YuRTOPpxbJ/t6Orf0GZk60vkVvp7Mh?=
 =?us-ascii?Q?Hgzgt7awMiWbBWNhnBoCyhgRhHcY54TmQcsRpG6Lf+hsnYZqVTdNsL1XG/mV?=
 =?us-ascii?Q?UBuPLozX+lja9tds2XOPANkWLk95XyOzozuVC2k1XYm5crCeweqTJrRTVhch?=
 =?us-ascii?Q?+E1Zyb8HJ3E4WphmJbM4MFy9ZLZcpSYV4pdch2U5RFl1Soc0Ouihcwh9NwVA?=
 =?us-ascii?Q?rlHYsqPUp+wRi7/H7OktKWOjsFzwC7G7y77fElEUK/YQP8428jbJqV0q5p9i?=
 =?us-ascii?Q?Oh6JJ2LMu53gPKtAr5aWWMmZFHxxFaaXCoiiQkXB+WahZCOTm6mumBRjm4PI?=
 =?us-ascii?Q?mkPERer03wUch958P5zFIXUScg2Oq9OvdfQhtGGON5XRV3Xmw9JbG+OOzfjg?=
 =?us-ascii?Q?+0Mv/eq2ZPaDLCFU55OJTCwPk1+apILr1tkycC0YqruHc65t7iZQU5vqj860?=
 =?us-ascii?Q?YEITzRkAKRDxZETqXt/l619ZiNyeh7z8Y/m10lAx6iYYcXcqmciTb9AdZVrR?=
 =?us-ascii?Q?giW8dejgvZjSP/fRgb1gDzh5tzzOrSN0aLhLLXbjjtnJKu1BpgJyoLtW8EFn?=
 =?us-ascii?Q?aeFRwPz1aWqXpMxcVAeWU90eVhSxJ+GBVnnBrkBRoP2mfoRo4VUgG/Fdapwb?=
 =?us-ascii?Q?BrKikS7L2r496TP9Gv4wKzMxNSFDNm2UpcHdzgoidtcNGnFIOwkRJOIV0Te/?=
 =?us-ascii?Q?6eABo6cuBRz4vMgQcUWKOTQ9jzNkxXRwjBO1JU1jAz0y/0j8DbAtVJsaAvzv?=
 =?us-ascii?Q?hDlcj/HL/VQT0aXjW55iGLr8wkLvsofWsnPUGhv0SptyKkFLWIiasvNGLnL5?=
 =?us-ascii?Q?UFzOdaB6RPM+nHmUxYHP5BaBiVJ4kIAs8rX23vH9QgB1XPN3Qm8M1jF6PuJl?=
 =?us-ascii?Q?5JSAI+noxuUsGVEQF0HjLLiRbOjC6T0nwDq1YQArWIWhSAYDBiyJnFU/5uPN?=
 =?us-ascii?Q?ivG8vQ8otaPZ6ZbH5tkjWE4Vf0zt3NpzWux5Aho0M+23X9zx6y/sJHbQHDiS?=
 =?us-ascii?Q?24rZtLADiZzEnWzAY4YH/xs=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 50d8f17b-ee0f-4ac7-e1d5-08da9f972336
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2022 08:14:30.7117
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 KWPJLIXVBXPOe6t7HWxzKJpLnW619lHVlya5VIa2tkDaRC1muxIk8dozaFoQMiwW2Jx6POHrE9FEbU5Lzx7BrHJzAV12o16aQXx8NbkDC4SvK1T5CprVaNih4FGF8YWs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8993
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Sep 2022 08:14:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58158

Hi Mahendra Sondagar,

On 9/25/22 19:38, Mahendra Sondagar wrote:
> Hey.. There
> Hope all are doing well
>=20
> I'm dealing with the swupdate with the my custom Yocto image created for =
STM32MP1 dk1 board
> The intend is, to update the rootfs remotely
>=20
> I have successfully integrated meta-swupdate layer with the custom Yocto =
image by adding the layers in to bblayer.conf file
> The both layers meta-swupdate & meta-custom are parallel to each-others
>=20
> To change the flags and setting with the swupdate, i have created the r *=
ecipes-myswupdate* file inside the meta-custom layers
> The content of the recipes-myswupdate are as follows
> .
> =E2=94=94=E2=94=80=E2=94=80 swupdate
> =E2=94=9C=E2=94=80=E2=94=80 stm32mp1
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 defconfig
> =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 sw-description
> =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
> =E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend
>=20

Considering you're using SRC_URI unconditionally, I suggest you use:
.
=E2=94=9C=E2=94=80=E2=94=80 swupdate
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 09-swupdate-args
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 defconfig
=E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 sw-description
=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 swupdate.cfg
=E2=94=94=E2=94=80=E2=94=80 swupdate_%.bbappend

> The content of the *swupdate_%.bbappend* are as follows
>=20
> -------------------------------------------------------------------------=
-------------
>=20
> DESCRIPTION =3D "Example recipe generating SWU image"
> SECTION =3D ""
>=20
> LICENSE =3D ""
>=20
> # Add all local files to be added to the SWU
> # sw-description must always be in the list.
> # You can extend with scripts or wahtever you need
> SRC_URI +=3D " \
> file://sw-description \
> file://09-swupdate-args \
> file://swupdate.cfg \
> "
>=20
> # images to build before building swupdate image
> IMAGE_DEPENDS =3D "core-image-full-cmdline virtual/kernel"
>=20
> # images and files that will be included in the .swu image
> SWUPDATE_IMAGES =3D "core-image-full-cmdline uImage"
>=20
> # a deployable image can have multiple format, choose one
> SWUPDATE_IMAGES_FSTYPES[core-image-full-cmdline] =3D ".ubifs"
> SWUPDATE_IMAGES_FSTYPES[uImage] =3D ".bin"
>=20
> inherit swupdate
>=20

I'm pretty sure you're not appending to the correct recipe, swupdate=20
recipe is the SWUpdate recipe for building the SWUpdate update mechanism=20
SW, it's not for building an image that is making use of SWUpdate mechanism=
.

I think you want to append to swupdate-image recipe or create your own=20
inheriting swupdate-image?

Or probably both actually, one for adding your configuration files to=20
the SWUpdate SW and the=20
IMAGE_DEPENDS/SWUPDATE_IMAGES/SWUIPDATE_IMAGE_FSTYPES to the image recipe.

In any case, you're missing:
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
in your bbappend for adding files. c.f.=20
https://docs.yoctoproject.org/ref-manual/variables.html#term-FILESEXTRAPATH=
S

Cheers,
Quentin

