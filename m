Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CC8C43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 11:09:31 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.88])
 by mx.groups.io with SMTP id smtpd.web11.40245.1669892965006156738
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 03:09:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=0UMyORQt;
 spf=pass (domain: arm.com, ip: 40.107.6.88, mailfrom: ross.burton@arm.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y2cUNTnUnE+WQKQRU29HQYg7FKHM54NJv4fk+9TOLsDSHf25s3LnRqiRjGmaYCIXziik+PoHKp+Wv60MzJFFW3udR0qVoqofzzWsMSNSoH/xhho20kNIlLgI+yCcESzAZyRt7ujdrQX/f0wCXPeABWa6cKXp49+8QUsAKpDsVYQAc9Ai6VSnkeWInRWQxELFWlJ4ETBkLpzdPjrFkXGa4Qk/1Jxa3WWf8uc/5ls9XU6cAff/+BW59GU3cVc9twNAe9ixEWfqav0BSjTDLGZI4564ZOlJbsoBpYeC46X3KDcqqgyDoyjMXn5n1IzV1FgEQTeLQg+ac/jxA5GNHw+63A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1q8IX/pW+Tjy7W7cHGMsp7L0XM9WgfYNqEGo6y87pg=;
 b=oTfzLudr2kTB5gkPHxHedJ3zR3HRWfKaG57f22bfj59ft+OD9EHqaFo/yoNOy3QgeIbUSoU4+LokGgxBsMdmBirxdxpw/M8c1+sFaCxWnVqVFg9ZHoa1b2CjUVIOQlvh/Rz3jnRw9TqfC+ad0QQbyPUtANsPi7SMZq8Ros33l3JbKde4dIJC4OtTFM9tn1Aj6Gq2XKxXloovMs7/pWwgKVGOGpLRDbD7nWtK4XAa5jE/eJKYrEqfzueKYo+poiXufOJ4R0AqQMadHKdhwVwtW++8d8+w7MDXH3otOcYvD5i0DPnMVXAMK46Q6brrY9xETjvMDzUThy3wOx+7shs13Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b1q8IX/pW+Tjy7W7cHGMsp7L0XM9WgfYNqEGo6y87pg=;
 b=0UMyORQt2j5L+LNIu9tRIapWiVibbQEyN4w0aHoDLOR9OyOz8ZzE8cXxfqXCUkgha659C5vcehw7OdtTRgUYL6FXmqqmys+m82jSTlRMUn01g7Pb63ir90mWXK/6w8AdoPVkBqNzC8PhFd2au2O6oHQ9hqAebpd4zZSfjUQ2uSg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8503.eurprd08.prod.outlook.com (2603:10a6:20b:55e::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Thu, 1 Dec
 2022 11:09:17 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119%9]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 11:09:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "zoran.stojsavljevic@gmail.com" <zoran.stojsavljevic@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
Thread-Topic: [yocto] LAYERSERIES_COMPAT_ variable in the layer's recipe
Thread-Index: AQHZBT09JI+LdYMW/U6Bg3CZ3F/Jca5Y4CyA
Date: Thu, 1 Dec 2022 11:09:17 +0000
Message-ID: <9D944DA0-C890-4E71-A82A-3E30892E8684@arm.com>
References: 
 <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LyT_nRAAK8WHPQwGDRjiQfaHHNUKPCfW=PJJ83FuWK1=w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.200.110.1.12)
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR08MB7411:EE_|AS2PR08MB8503:EE_
x-ms-office365-filtering-correlation-id: 938c1b0d-015f-4c3f-73c7-08dad38c7cf1
nodisclaimer: true
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 UeIGnW08SKBmjoCx7Q0Kz3RQf3D6fowKzZ8v8fdnukq8tlUHBpBk4TUrg4JHMBL+Csy/eKEfZJoLupdlTORa/xJrKQ/W9lvS1uEt3UmzKf7xhp5pl03TqaS/cfnSuynbOXG3Zl13UqEX8nlynw9Go8n2Jp3GB0Q5pHo5etJIPoGYgSFMMdhRHlux6uYsnSXUACJ9VEWXfgedG6+pB/qrsM2PeVyXRonwJI1Ot6dwn8E9Y5GsVpZXivez6EKlA3/GY0IDA49R0rJ2Ogk2MWWFH5W6XWxpM5vMHnadZYMllV662wVrKsx7p2ArzhmHRJbmMSIPwocrYHO4RKu0ZPfJshleNmqjx0pKthJnRWaXZhx88VjaHTW67qg4gAGCuKMYFo8eTZIIuYyw2EWF34J3mMO0MyNHaTTk0OJZjRsEpXbaWYrhydwdqfeoSmCxZ2Mt1ZEbEFakF9a195mjMYRNxlIk6cZMGc2px0JxtivP/V+1ur8BcsnJjF94snNWl6nCqxJ8rm8Al/iyUwE8LYKWeKTESEwlMqiWkyhresKGF6bKe64NupA1DSXmuMxtyTtU3k9z1dTL3ZbL/FiYskOV6G0zK51bBJLTE+KmVPiaVqm1oQaEOgS7v9VQpX5UWD3UoBqSO7FXA+70HTQoSc6jyPjNbgVi8FBc9tcK+qT1RiPnpgtgKjOuZtKPj3/+oyp3ymGMGQk41ILLSddtou33TGD3uII77+AfPjl0qC+C74M=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199015)(53546011)(2906002)(186003)(6486002)(26005)(36756003)(71200400001)(6506007)(122000001)(38100700002)(2616005)(33656002)(38070700005)(86362001)(478600001)(6512007)(41300700001)(91956017)(66446008)(66556008)(66476007)(64756008)(8676002)(4744005)(76116006)(66946007)(5660300002)(8936002)(6916009)(316002)(4326008)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?0E08TecXYDVRcrHLNd0HQMXGHq9kKYkJ/YQVn6cRq73BwgpHBRszggndt88h?=
 =?us-ascii?Q?zA/F0zEdZ2YRf5rsVtUWVNz0vemA7ARGlgH/wrXk7EXW15ni3EjuN6PGXor1?=
 =?us-ascii?Q?YyZvSwoedecPS3SvQy4IN3RD7G2yA7HAY9/KWmFMMbzA2iE4YwccERrTghuH?=
 =?us-ascii?Q?6EPKzo9v8UtIJpZS3Jva2p+eFicovHDgc3c4uW/EbnD+pRECsszGGfNQpAz1?=
 =?us-ascii?Q?50Q6HcsfykFq1nN/BaSapBpBGMni6tQYRp/2FeatEWGSs24vJUYAxT14QEq8?=
 =?us-ascii?Q?qnbv+O/Mejw+VnsZDtcHoYTilxqQ7LdEsAT8Xc35fCVFS3Zo5tOpfENiO5ky?=
 =?us-ascii?Q?URi81ZKw7o+153f3SRI4ShPjZwMfSsvrnXgt/WMRlKJFCIBL7B/QX0nqeo7l?=
 =?us-ascii?Q?4TYr+cEGExHfEGd2n/EEL81ns3EeiqXcRSkX9yM2FqGFTAHBO4BiyFeUO241?=
 =?us-ascii?Q?V5lZylwe4NZ3HPU/KxOBUIVDcwd+zsz27Nn/lRpypZs0hX8yLxXtgAP4Dgo6?=
 =?us-ascii?Q?XihpYos0EbdlUAE7G5u8Gn5KwGzaAKlsOIjuxOMDZv4D/+e6QEz2OEe7re3D?=
 =?us-ascii?Q?QQ159vmyRHHDMMrTDugMmbJwP7uPwlVYBAqYmEzZn5WCvuaEAAJYI01ayr88?=
 =?us-ascii?Q?8BzTQ0bvP2ozmMtKTgyU0Yv701HNCV6ER9RQL2ZJwdo3GIfqG3NoVUKX6qbN?=
 =?us-ascii?Q?UZAFC1xoeqhMg6LRfVPUQO3NPnN5V22ly05iOzMcIBv5Oi0ndRzi2+MYtZlk?=
 =?us-ascii?Q?n9zvf0AnHlI+7aU6I52AvlstGdYP2+ryoXZYEl2RDTjImC+xMfbRHowU8cr+?=
 =?us-ascii?Q?GD/wOYHekBTA+Vd5NyDdpEbF/xyNTFtjo55s8ffAn8FUPDViJW32l+mvq1ax?=
 =?us-ascii?Q?pev4IEJf48ZaANKUgXqfTCR47IHflqa7V8AxBuG5mnf5EENE1GCV/gYT32ap?=
 =?us-ascii?Q?5WOwgx0hr+IYzMRSmdfARNYmPhA2aWEQZX5/QqHWEKLnviRMpY53dcKNz4t/?=
 =?us-ascii?Q?ahNDEneQ1+oBDoG0w+WIKZtq9vwpVqe4TcZagaueoHYonSYapNJ6je3WYp6u?=
 =?us-ascii?Q?bgLTQK+m+UGPgg6hfbI4jd18RVii+9GY8Se+OU6Oujsxa5ZKG4ee+ymXDIH0?=
 =?us-ascii?Q?FngxnyRPYCEsY3stNe+rSPzo/aOj1yJAa1EiNtlMJucDyMroZJmcmojL8ptD?=
 =?us-ascii?Q?C0uPDoM2Okg0t3ffy1UK+D8OVvz559d5CiaG+qqZHz2YuSR9D4pG+8LAbvhE?=
 =?us-ascii?Q?Jx2au/+qeg12ynom7/qTmWcQOguNJoFj2ocpEiLkyHC2+H38GpEwK/Yn5wSQ?=
 =?us-ascii?Q?+HzqKVBLYrzEC9t3VxKvctejXM0LQb/6NhiLWb0U2zq2sjhkzZFT5VqQWTxP?=
 =?us-ascii?Q?Kpfgx2qajR4PjCd5klyAFeKmlgQvT6a1Etia19zfEVr6M2z6yiI8aCCmxhRP?=
 =?us-ascii?Q?45bS3zkfp/ISKAUghteESJtVKN2HEn3hSF9YV15f6XGRyTcx51JPE0y64KjU?=
 =?us-ascii?Q?a+Rta4pKiAi+CxafXUzr+tKSBEYf0QtZ6ucD1cUrHlExevjqgqLXuqbMwOvj?=
 =?us-ascii?Q?enjSzRX5tBU2M5MDrPbRFB6n8CeCNRTjfCRb5ZYJ?=
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1F7A25F938D13543B317FF83B4B3A91D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938c1b0d-015f-4c3f-73c7-08dad38c7cf1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 11:09:17.0958
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RnJ0IiMkfahPL716LPMJ5ZgocQKfWNFEXmTFWKNdOCh3ziOk/kSDzhSMrR14/bdf39wvk38WQ+dVK18bm97xVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8503
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 11:09:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58699

On 1 Dec 2022, at 04:27, Zoran via lists.yoctoproject.org <zoran.stojsavlje=
vic=3Dgmail.com@lists.yoctoproject.org> wrote:
> I do not understand why we need to explicitly name releases for such
> simple generic layers?!

The compatibility is because over time things change: override syntax has c=
hanged, classes get added or removed, functionality may appear in bitbake. =
 Sometimes the breakage is subtle, and a layer may parse and appear to buil=
d fine, but be broken.

Your meta-socketcan layer is broken in honister onwards despite claiming co=
mpatibility, for example.

Ross=

