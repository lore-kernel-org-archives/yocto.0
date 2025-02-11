Return-Path: <kbeal@eclipticenterprises.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21E66C0219B
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 18:44:57 +0000 (UTC)
Received: from USG02-CY1-obe.outbound.protection.office365.us (USG02-CY1-obe.outbound.protection.office365.us [23.103.209.78])
 by mx.groups.io with SMTP id smtpd.web11.942.1739299488470150425
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2025 10:44:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@eclipticenterprises.com header.s=selector2 header.b=clwpydTO;
 spf=pass (domain: eclipticenterprises.com, ip: 23.103.209.78, mailfrom: kbeal@eclipticenterprises.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=MAiaXo/P4ofPXjQHXq5h3q01hEvJuVyyKYbHwOABu6p1AZxR8XHNiw/gG+ik0nHdUX+Facb0jUxAd1UAkc+bEX0K1WJnObzYfKJZ9w5WisEb0ztYutmvmDBDqNMPp5mu407Aq2i9LmJauZqseww1t7+IXZdq5b1qfYXZ53N/WOJ6IoFP8NAntMAUw6ttLcPv3mzwcoY5bfqdxVS/6RKUCGKh8gNkz/S2Qk1uJXlN6K9a6jRr8/a5ri3c/tkpInUpGcAxXDZBw3JzC9C/tZel2dSevjJ3zIqLliM16ibrL4+0CfmgZNfYCXelLCYwDuPf4Tnb1Xnou7nLfQ+1kxRrNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7OH4hkXVTvPmHgSeaNDIlYNIdwRPMwaf5HfqAXrAMnY=;
 b=QlMd1zk0mV5665YxV/NyagOxLQatw6P4QkVBMt4uaDqFg7Ht1HL6E5ybbbYlDyZySxGyiDK4/YfyJcWuztPc2QvXNJivkDaNUVh1M8OLClDrYi4YTKoldEStf75vClbh3mbW5/i29nRRVSdTrkvv7skIOocAdCILrVYogWh9rBIPdkTAfX1MNp123wpV6MwkpT1Aa6yO46WHBZDi0LTBNGLw/mKqAsUfqh29+fBXHZK2RNILIlwJdf7V/Yaqr8xjuTakfwMt/NZAvoetLz4DiWu6HyDj2lkIvj1EvBCXp/I6KX5SSFJJ4CxtUkOSZQ6/H+W9Cn4CUAfpYFX8dl+5wQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eclipticenterprises.com; dmarc=pass action=none
 header.from=eclipticenterprises.com; dkim=pass
 header.d=eclipticenterprises.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=eclipticenterprises.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7OH4hkXVTvPmHgSeaNDIlYNIdwRPMwaf5HfqAXrAMnY=;
 b=clwpydTOH/Sv5u7AYH+EarUwfzwv0iOXt3/A/YeiHHjm3yBm6tKVz9hhBVFlr79teYRstJL1F+MXfORY697k9al+06XM/BLW5M3MjJetV0wHjvgO1Rz5nj0a+AuNcIp+pP/bRQBLhjxjZoKEDZmC9VGrHziUoBmo8mbiZC9w6dptdFKeh+Jp0fwS6PRev14Rk8mSWo6SgwRBjVLPjkKjfVgBbvLBbEXw4cshEj8/iGg1LDeiv0jDH/AZemwXfaFoyicJ13iXu1BWBsNLDQC6W3wuPswRo2RhCHwy2U+HiVTS+T5uexn5+ko3AcrkmjZhtLW4ULUU+71oMTguSpVY6Q==
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:1a2::22)
 by BN0P110MB1627.NAMP110.PROD.OUTLOOK.COM (2001:489a:200:187::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 18:44:45 +0000
Received: from BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac]) by BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
 ([fe80::68f:3f99:c7fd:88ac%5]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 18:44:45 +0000
From: "Keith Beal [US]" <kbeal@eclipticenterprises.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"skandigraun@gmail.com" <skandigraun@gmail.com>, "alex.kanavin@gmail.com"
	<alex.kanavin@gmail.com>
CC: "r@cmss.com" <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files
Thread-Topic: [yocto] Installing pre-built DEB files
Thread-Index: AQHbfJ+oxNGF4EpkyUqbW6Grw/LpGrNCVQ8AgAAG3QCAABSFTw==
Date: Tue, 11 Feb 2025 18:44:45 +0000
Message-ID: 
 <BN0P110MB1915274A58DA1480641F1059BFFDA@BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM>
References: <leMn.1739290302619551038.wlRL@lists.yoctoproject.org>
 <3a8c9af1-8b3c-426d-8ddb-038981c5e561@gmail.com>
 <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8VvtKSDnCn0SVAj7LZeVzeOeKqh4y_2hcKti+TegnfSg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=eclipticenterprises.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0P110MB1915:EE_|BN0P110MB1627:EE_
x-ms-office365-filtering-correlation-id: 9ec8b262-73e7-4797-d589-08dd4acc2763
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: 
 BCL:0;ARA:13230040|1800799024|366016|41320700013|8096899003|7053199007|13003099007|38070700018;
x-microsoft-antispam-message-info: 
 =?us-ascii?Q?oLHbqefhvECOFtGpN7oBOwAdA3tEBhnxr1WCRX4PXFVGJCsvB9RhWar1Ewkz?=
 =?us-ascii?Q?lPMwgF6jq4YJ3JaDoHGcFVdQKEdP83MjH+ZV6Ppq3Y2oblzyXKqve0jWCbpV?=
 =?us-ascii?Q?/S0+x0xzYb68YNndVlpcqc732CoBVFDV8bZAzeoPIH0OTEqhWQ4Mhy9BqIuu?=
 =?us-ascii?Q?nU1HNaqxDTKKsTGE88YCRnslicv6EutaFEJTzAJuAd8HKwJAguWLx7/WRhjQ?=
 =?us-ascii?Q?GA8n//vCPtsuLqvXNdsTAlJAw4vE9hOQXlkCXISIiQhLXItXfw6ubuPt+NqX?=
 =?us-ascii?Q?E8tusf7a+HY/GyrZUR/008BnoNNlKiT/s346Kh+n0JtB2hpgIDHAsfx9Ut5E?=
 =?us-ascii?Q?VPOW3H7xypK9O/boP79OF1RtA9OZUfOtuZG/5mAfEqmX/IQ1HgXSEfaolwCz?=
 =?us-ascii?Q?yCNcJFs/juv3Ys05Zi1EYBOXxVavqDWIoecwBPCWrGpcz+iaDfAhJOW/GNT+?=
 =?us-ascii?Q?8UuigkzY0B08qWnUV4V40re8J9c9SA74+iRXigtnwX0/U/bD6msF8QooMVs2?=
 =?us-ascii?Q?jIzNidIl4ZACHGLkcbHg9G0TH4+V+oUoeQXsEfushjs1JGJSsD05xEMJSicD?=
 =?us-ascii?Q?ExVw5RKPGBgxlF2s77FLhGGDfkwXzz/GZdb6xvVzJPrR4MYzspnlSxeYLZtR?=
 =?us-ascii?Q?dOD/jeE2pAi09HcIlVmz6g6gCutaLFSBYMBNQq4ClABFTSJHDPFeZX7obSMn?=
 =?us-ascii?Q?U7v8xNnBnLg/bM0VSPuuLJyzuOWLnJrmjZM2r+tR/uRagxDmVmeTv8MO3zP1?=
 =?us-ascii?Q?BsxKRAWb2U8b44aLsrp96Pd61aLgHPb28QA7utJzQLapDZJpQpLQGKwFCojm?=
 =?us-ascii?Q?1Q5VR9KVyaOdUKzKkUBtTjtdu2BZypDuqY8Csn24qJDds5a3njf10Gj88G5X?=
 =?us-ascii?Q?kytGhQeqW0N3iFxbnH8ZLpyF2CQLww+OiT8ikYpVk6f4Wr/CmU3N+qbKMLvw?=
 =?us-ascii?Q?HbZCoTaaP0T0J+lMFldb0LBxuzdBHEE45lEquctS/6K0/UZvdL7sVK/6Farx?=
 =?us-ascii?Q?MOezP6ST3L8YSKl57qJVOg3n0Q02nbxTwFsC+cjxxWOsILd3rQbfyTLkDSZu?=
 =?us-ascii?Q?LsBhqZDENZMSFqgsiipRULBIBTxVe/PNZJaLSENEw4eddZfHaWhSaZi4jibo?=
 =?us-ascii?Q?SPeG/v5mMC/bR1IZVoDAhSQ43hYy70rhry+sPr0q7rLsZ/zveIjYtw5p/OpG?=
 =?us-ascii?Q?dcw8JTHQsK4GTuLu43lfmjH82z2AbyjiBWQAw7eco0k6lKdVGWy/GGr7awT0?=
 =?us-ascii?Q?D2CDN2WlMe51vq4zUkiRK7Mr51zA1lAkVxwx22han9f6PfnjxGru114zFANC?=
 =?us-ascii?Q?cLm8SAKtc1y/q2B8ePjNGZMR4da93yr4DLXfnNp6xdv6tlrC22IVhWLBCYs8?=
 =?us-ascii?Q?tCb98gUPl23MMvboGnnLebsorUOr?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(41320700013)(8096899003)(7053199007)(13003099007)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?TraQs0Odrm/DnVYcwMlwmCnCq2wFM1W8PvX5mT/B5D7MQpZkt/5qWHbOCEie?=
 =?us-ascii?Q?i1Wb1YEiqptGxPV1hAB+2pejBS6wwLVpsRvNvQ+gtU85oi508avknG2+LtUw?=
 =?us-ascii?Q?XdeIMmgne6qpXmJZEjw343R9b62azWqACYyK91GmX7iFh//lZdZyf2ztNwTu?=
 =?us-ascii?Q?xTP8aF/zX5arDFTL7IG/eBIvviTtOwALTM1nW5HqucT2d3qWMLClYMomK+se?=
 =?us-ascii?Q?cGeuaoIy16tAKw1PRSEFV5qztNUiVGlvVYT7uVWHWaOeRPcQ28ytKzTPReAT?=
 =?us-ascii?Q?PZVLtBl8QtOZekh4T9h17ggtO3ZnFoMJGpkcnjYOlutyYT/6n18DPnRZePnT?=
 =?us-ascii?Q?QWcaJYvA/EvJGkW4ZHHAaqcDWxR009CyvxUc+VnGwb3aehnRX+KW8rtJdFkV?=
 =?us-ascii?Q?4ARqvxjJF/emEcZ7lTXgECC1mvyrgBGrBS67k+b9NJ2jxvwGfMTfhHss1iKS?=
 =?us-ascii?Q?dTmAfCU1s1LjjDUpcIV2aHWz7QhgGraO2dR/EvScKDIhPP4LaxQqBluKtLfO?=
 =?us-ascii?Q?JKRXjrHlngrGLCVXdm+OjKOo5uIWAtUCa1KMbFzBatMYUlFdCeXrt/7yOzP6?=
 =?us-ascii?Q?V7I5RENZH4IIR5bMKx7iihHiXhW50zuSAz/77iTxlLqew88DvDtbm6hYZUiu?=
 =?us-ascii?Q?MxQweY+O4etHZ9lb1uW3Kt6k0XqeM8dXqVej1+7gaxNz0jJCn7g4rDLD7S8n?=
 =?us-ascii?Q?3gtabMnclX6Aht4uJNDqKkjjNXrbUVHDmFqtP3fnsFQfxFjqfxGg3VgK03ea?=
 =?us-ascii?Q?wdVIPo7Qposwe+nNBt9L1IxZ+zf+MEyZp706td9HqwJEkVPOEy6Rdai7ww6U?=
 =?us-ascii?Q?/G3IVXi78aqXfET3MD8O8qEHoez5hoFt4+pMtkpFq/KhDs7NWVM4XcIz+cXN?=
 =?us-ascii?Q?IWwMKfrqCwmGvfYE5b2yi12HolDQ39Z8sh+d97syFsrlK6W9MCodMpE9Zhm4?=
 =?us-ascii?Q?FYY+kLG+N1WBH4UoI4yn4rbL4fsCPdkoW166ube5qKeYeOu9erYIBYTpBLdG?=
 =?us-ascii?Q?I2UAkjgpuzszLfEmhOcgPtcim3hrYLd1bpwVeKKWcCHF8bGT2vXO2awUNM5B?=
 =?us-ascii?Q?dtpl1eudrbx7KPTReh5+racoWp+fIDjESR+LcDD2mMNZTXBQz+6PKfNr2ebq?=
 =?us-ascii?Q?4ga5LQYAWh9elMnUuuguqUAc2eSKtQbTKjKhml1NJ24jKayr5GfIUKxfnbxQ?=
 =?us-ascii?Q?WRhiu/xh8511ltacnzfNaP76BoqkE/dNufhDYp1/r8/iEqIoNO0uUbJ+s5jG?=
 =?us-ascii?Q?5aG9Mq+oBaVbAWbyqMn7LHv+pUiH/LWFc7qiQkzY06pXf2bFJz3zRRdZOqVA?=
 =?us-ascii?Q?0SXaz0ZtN+np1fDKZsPa9LFwEYc8IidShd2tT2hGczNS8Vc9nn6wA+Nm3E7P?=
 =?us-ascii?Q?YUc6Od0ACEtMsRyAu3uo/MNrrlWOmvCS2pEPmMipQHlzRku+sx00AKWpTgy+?=
 =?us-ascii?Q?YEWuNpN0aU/CHb8ILTffqrYcMwER6wSrAb8EaLvmrAyjFI9SIbwEZD8yGX1l?=
 =?us-ascii?Q?pbJcMWO+WIGLfg6t0ShxTPUpStaWN1EfbW4c?=
Content-Type: multipart/alternative;
	boundary="_000_BN0P110MB1915274A58DA1480641F1059BFFDABN0P110MB1915NAMP_"
MIME-Version: 1.0
X-OriginatorOrg: eclipticenterprises.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0P110MB1915.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec8b262-73e7-4797-d589-08dd4acc2763
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 18:44:45.0999
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b4f66761-c9e2-4856-9874-b1c6d40ccfea
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN0P110MB1627
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 18:44:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64772

--_000_BN0P110MB1915274A58DA1480641F1059BFFDABN0P110MB1915NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I know there is a parted recipe.
I need the equivalent of the Ubuntu package libprated-dev.
This is the library and header files for using the functions used by parted=
.

Keith
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Alexander Kanavin via lists.yoctoproject.org <alex.kanavin=3Dgmail.com@=
lists.yoctoproject.org>
Sent: Tuesday, February 11, 2025 9:30 AM
To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>; skandigrau=
n@gmail.com <skandigraun@gmail.com>
Cc: r@cmss.com <r@cmss.com>
Subject: Re: [yocto] Installing pre-built DEB files

[You don't often get email from alex.kanavin=3Dgmail.com@lists.yoctoproject=
.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentif=
ication ]

[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.

No. Do not do this. It's not going to work, especially when you take
binaries built for a different system. I do not have time to give a
lecture about why, you just need to trust me.

We have a recipe that builds parted from source:
https://usg02.safelinks.protection.office365.us/?url=3Dhttps%3A%2F%2Fgit.yo=
ctoproject.org%2Fpoky%2Ftree%2Fmeta%2Frecipes-extended%2Fparted&data=3D05%7=
C02%7Ckbeal%40eclipticenterprises.com%7C7f9423a3b52040ee575b08dd4ac1c17c%7C=
b4f66761c9e248569874b1c6d40ccfea%7C0%7C0%7C638748918218773595%7CUnknown%7CT=
WFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFO=
IjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3Do88PrC8sH1YTKqX5Y4%2BEQSX=
XOUnw0B5QtHiT7WjnVoU%3D&reserved=3D0<https://git.yoctoproject.org/poky/tree=
/meta/recipes-extended/parted>

Use it.

Alex

On Tue, 11 Feb 2025 at 18:05, Gyorgy Sarvari via
lists.yoctoproject.org <skandigraun=3Dgmail.com@lists.yoctoproject.org>
wrote:
>
> Your first destination should be the log.do_install file in the WORKDIR
> of the recipe, which should have the output of the dpkg commands. That
> should shed some light on this mystery, hopefully.
>
> Sidenote: DEB files are actually two compressed tar files in a single
> archive. If nothing else works, you can extract the tar files with "ar x
> $DEBFILE" - the data.tar.* file has the content that you can just copy
> to your rootfs (it also has the folder structure prepared). If you pass
> the tar.* files in the SRC_URI, even the extraction could be handled by
> bitbake. (Assuming that no post-install magic is done by the deb files,
> which would be at least unusual for libraries and -dev packages)
>
> On 11.02.25 17:11, R Keith Beal via lists.yoctoproject.org wrote:
> > I am working with NXP's Flex-Builder.
> > I need to add the libraries and headers for parted.
> > On Ubuntu there is a package called libprated-dev I am trying to
> > replicate.
> > The LAYERSCAPE SDK is using bitbake 1.5.
> > I know I probably shouldn't be installing DEBs directly, but, adding
> > recipes for libprated and all of its dependencies is beyond the scope
> > of the project.
> >
> > I came-up with this recipe, it reports no errors but the files are not
> > installed in the RFS.
> >
> >     SUMMARY =3D "Development libraries and headers for libparted"
> >     #SECTION =3D "console/tools"
> >     LICENSE=3D"CLOSED"
> >     LIC_FILES_CHKSUM=3D""
> >     SRC_URI =3D " \
> >         file://libdevmapper-event1.02.1_1.02.155-3_arm64.deb \
> >         file://libudev-dev_257.2-3_arm64.deb \
> >         file://libdevmapper-dev_1.02.201-1_arm64.deb \
> >         file://libparted-dev_3.6-4+b1_arm64.deb \
> >     "
> >     SRCREV =3D ""
> >     PV =3D "0.1.0"
> >     S =3D "${WORKDIR}/git"
> >     DEPENDS =3D "parted"
> >     # inherit pkgconfig
> >     # Install in this order
> >     # libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> >     # libudev-dev_257.2-3_arm64.deb
> >     # libdevmapper-dev_1.02.201-1_arm64.deb
> >     # libparted-dev_3.6-4+b1_arm64.deb
> >     do_install() {
> >         touch ${STAGING_DIR_NATIVE}/var/lib/dpkg/status
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> >         --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libdevmapper-event1.02.1_1.02.155-3_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> >         --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libudev-dev_257.2-3_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> >         --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libdevmapper-dev_1.02.201-1_arm64.deb
> >         ${STAGING_BINDIR_NATIVE}/dpkg --instdir=3D${D}/ \
> >         --admindir=3D${STAGING_DIR_NATIVE}/var/lib/dpkg/ \
> >          -i ${WORKDIR}/libparted-dev_3.6-4+b1_arm64.deb
> >     }
> >
> >
> >
> >
> >
> >
>
>
>


Ecliptic Enterprises Corporation
Space Avionics and Sensor Systems -- Home of RocketCam(tm)
398 W. Washington Blvd, Suite 100
Pasadena, CA 91103
Main number: (626) 798-2436
www.EclipticEnterprises.com

Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent responsible for delivering the message=
 to the intended recipient, you are hereby notified that any dissemination,=
 distribution or copying of this communication is strictly prohibited. This=
 communication may also contain data subject to U.S. export laws. If so, th=
at data is subject to the International Traffic in Arms Regulation (ITAR) a=
nd cannot be disseminated, distributed or copied to foreign nationals, resi=
ding in the U.S. or abroad, absent the express prior approval of the U.S. D=
epartment of State. If you have received this communication in error, pleas=
e notify the sender by reply e-mail and destroy the e-mail message and any =
physical copies made of the communication. Thank you

--_000_BN0P110MB1915274A58DA1480641F1059BFFDABN0P110MB1915NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
I know there is a parted recipe.<br>
I need the equivalent of the Ubuntu package libprated-dev.<br>
This is the library and header files for using the functions used by parted=
.</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, =
Calibri, Helvetica, sans-serif; font-size: 12pt; color: rgb(0, 0, 0);">
Keith</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Alexander Kanavin=
 via lists.yoctoproject.org &lt;alex.kanavin=3Dgmail.com@lists.yoctoproject=
.org&gt;<br>
<b>Sent:</b> Tuesday, February 11, 2025 9:30 AM<br>
<b>To:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;; skandigraun@gmail.com &lt;skandigraun@gmail.com&gt;<br>
<b>Cc:</b> r@cmss.com &lt;r@cmss.com&gt;<br>
<b>Subject:</b> Re: [yocto] Installing pre-built DEB files</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">[You don't often get email from alex.kanavin=3Dgma=
il.com@lists.yoctoproject.org. Learn why this is important at
<a href=3D"https://aka.ms/LearnAboutSenderIdentification">https://aka.ms/Le=
arnAboutSenderIdentification</a> ]<br>
<br>
[EXTERNAL EMAIL] DO NOT CLICK links or attachments unless you recognize the=
 sender and know the content is safe.<br>
<br>
No. Do not do this. It's not going to work, especially when you take<br>
binaries built for a different system. I do not have time to give a<br>
lecture about why, you just need to trust me.<br>
<br>
We have a recipe that builds parted from source:<br>
<a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-extended/par=
ted">https://usg02.safelinks.protection.office365.us/?url=3Dhttps%3A%2F%2Fg=
it.yoctoproject.org%2Fpoky%2Ftree%2Fmeta%2Frecipes-extended%2Fparted&amp;da=
ta=3D05%7C02%7Ckbeal%40eclipticenterprises.com%7C7f9423a3b52040ee575b08dd4a=
c1c17c%7Cb4f66761c9e248569874b1c6d40ccfea%7C0%7C0%7C638748918218773595%7CUn=
known%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4=
zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7C%7C%7C&amp;sdata=3Do88PrC8sH1YT=
KqX5Y4%2BEQSXXOUnw0B5QtHiT7WjnVoU%3D&amp;reserved=3D0</a><br>
<br>
Use it.<br>
<br>
Alex<br>
<br>
On Tue, 11 Feb 2025 at 18:05, Gyorgy Sarvari via<br>
lists.yoctoproject.org &lt;skandigraun=3Dgmail.com@lists.yoctoproject.org&g=
t;<br>
wrote:<br>
&gt;<br>
&gt; Your first destination should be the log.do_install file in the WORKDI=
R<br>
&gt; of the recipe, which should have the output of the dpkg commands. That=
<br>
&gt; should shed some light on this mystery, hopefully.<br>
&gt;<br>
&gt; Sidenote: DEB files are actually two compressed tar files in a single<=
br>
&gt; archive. If nothing else works, you can extract the tar files with &qu=
ot;ar x<br>
&gt; $DEBFILE&quot; - the data.tar.* file has the content that you can just=
 copy<br>
&gt; to your rootfs (it also has the folder structure prepared). If you pas=
s<br>
&gt; the tar.* files in the SRC_URI, even the extraction could be handled b=
y<br>
&gt; bitbake. (Assuming that no post-install magic is done by the deb files=
,<br>
&gt; which would be at least unusual for libraries and -dev packages)<br>
&gt;<br>
&gt; On 11.02.25 17:11, R Keith Beal via lists.yoctoproject.org wrote:<br>
&gt; &gt; I am working with NXP's Flex-Builder.<br>
&gt; &gt; I need to add the libraries and headers for parted.<br>
&gt; &gt; On Ubuntu there is a package called libprated-dev I am trying to<=
br>
&gt; &gt; replicate.<br>
&gt; &gt; The LAYERSCAPE SDK is using bitbake 1.5.<br>
&gt; &gt; I know I probably shouldn't be installing DEBs directly, but, add=
ing<br>
&gt; &gt; recipes for libprated and all of its dependencies is beyond the s=
cope<br>
&gt; &gt; of the project.<br>
&gt; &gt;<br>
&gt; &gt; I came-up with this recipe, it reports no errors but the files ar=
e not<br>
&gt; &gt; installed in the RFS.<br>
&gt; &gt;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; SUMMARY =3D &quot;Development libraries a=
nd headers for libparted&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; #SECTION =3D &quot;console/tools&quot;<br=
>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; LICENSE=3D&quot;CLOSED&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; LIC_FILES_CHKSUM=3D&quot;&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; SRC_URI =3D &quot; \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:/=
/libdevmapper-event1.02.1_1.02.155-3_arm64.deb">file://libdevmapper-event1.=
02.1_1.02.155-3_arm64.deb</a> \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:/=
/libudev-dev_257.2-3_arm64.deb">file://libudev-dev_257.2-3_arm64.deb</a> \<=
br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:/=
/libdevmapper-dev_1.02.201-1_arm64.deb">file://libdevmapper-dev_1.02.201-1_=
arm64.deb</a> \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"file:/=
/libparted-dev_3.6-4+b1_arm64.deb">file://libparted-dev_3.6-4+b1_arm64.deb<=
/a> \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; SRCREV =3D &quot;&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; PV =3D &quot;0.1.0&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; DEPENDS =3D &quot;parted&quot;<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # inherit pkgconfig<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # Install in this order<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # libdevmapper-event1.02.1_1.02.155-3_arm=
64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # libudev-dev_257.2-3_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # libdevmapper-dev_1.02.201-1_arm64.deb<b=
r>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; # libparted-dev_3.6-4+b1_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; do_install() {<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; touch ${STAGING_D=
IR_NATIVE}/var/lib/dpkg/status<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_=
NATIVE}/dpkg --instdir=3D${D}/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --admindir=3D${ST=
AGING_DIR_NATIVE}/var/lib/dpkg/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -i ${WORKDI=
R}/libdevmapper-event1.02.1_1.02.155-3_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_=
NATIVE}/dpkg --instdir=3D${D}/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --admindir=3D${ST=
AGING_DIR_NATIVE}/var/lib/dpkg/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -i ${WORKDI=
R}/libudev-dev_257.2-3_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_=
NATIVE}/dpkg --instdir=3D${D}/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --admindir=3D${ST=
AGING_DIR_NATIVE}/var/lib/dpkg/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -i ${WORKDI=
R}/libdevmapper-dev_1.02.201-1_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${STAGING_BINDIR_=
NATIVE}/dpkg --instdir=3D${D}/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --admindir=3D${ST=
AGING_DIR_NATIVE}/var/lib/dpkg/ \<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -i ${WORKDI=
R}/libparted-dev_3.6-4+b1_arm64.deb<br>
&gt; &gt;&nbsp;&nbsp;&nbsp;&nbsp; }<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div>
</span></font></div>
<br>
<br>
Ecliptic Enterprises Corporation <br>
Space Avionics and Sensor Systems -- Home of RocketCam&#8482; <br>
398 W. Washington Blvd, Suite 100 <br>
Pasadena, CA 91103 <br>
Main number: (626) 798-2436 <br>
www.EclipticEnterprises.com <br>
<br>
Notice: This e-mail is intended solely for use of the individual or entity =
to which it is addressed and may contain information that is proprietary, p=
rivileged and exempt from disclosure under applicable law. If the reader is=
 not the intended recipient or agent
 responsible for delivering the message to the intended recipient, you are =
hereby notified that any dissemination, distribution or copying of this com=
munication is strictly prohibited. This communication may also contain data=
 subject to U.S. export laws. If
 so, that data is subject to the International Traffic in Arms Regulation (=
ITAR) and cannot be disseminated, distributed or copied to foreign national=
s, residing in the U.S. or abroad, absent the express prior approval of the=
 U.S. Department of State. If you
 have received this communication in error, please notify the sender by rep=
ly e-mail and destroy the e-mail message and any physical copies made of th=
e communication. Thank you
</body>
</html>

--_000_BN0P110MB1915274A58DA1480641F1059BFFDABN0P110MB1915NAMP_--

