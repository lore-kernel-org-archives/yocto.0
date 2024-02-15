Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F814C4829E
	for <webhook@archiver.kernel.org>; Thu, 15 Feb 2024 19:08:42 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.83])
 by mx.groups.io with SMTP id smtpd.web10.1003.1708024120709636582
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Feb 2024 11:08:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@siemens.com header.s=selector2 header.b=LQiNIHSu;
 spf=pass (domain: siemens.com, ip: 40.107.6.83, mailfrom: peter.marko@siemens.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UguEDGtQ4F+bgw0+ZoJoR3bnIgldYE+GhJpQS6j4gI7+OCX+WwC7twCkMvNdAkiztmf0DNe8srI3uEwjJ+KspC7KhSDq7c+lRriY/yrzIUylahnE8rXisOXUjXH0xV5W2hPC7snK4rGZmQeeiodmBQkqYHCgEDPYYixMUwyXeWqbIKmFNeHorMeFTrGZfp5hUjxssR2JDLU8wwUHH33awmYK/CHYURmjEV1/GO3vqunT20Qiw5J0WIxykSh5cBcC8KrKogsYV8RQHx6l2RVx+0nJ7Kh87fAUzM6af3ATsHnn8ObhQHZGJN1KExllkd6+ko5R/XqGV/tpuzjRfdM6Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ta3qizuAb2vRdNkGqG7DbZX1eIrcuyj9A47MPepz7bw=;
 b=CYm+QxlXSi6aD9zE1usObSma8MIe97ifclvcwPiBL/vQhLzgtOrz5gyFg5SxjmDYKgwgP/IB2UZyWAjVCJLTD4PZNq+HysxPKvtRf4SklehdvnOvAHr+LSZCwOYuIaCWEtT7GDRH1RMWfG6+2ZisgyJgSjrw/yct+Wg50IWkWGtd6shBy+Bqt6oBJKfeoswghlrvqT554GYotn7Og2c8YuOKqAQcAZonAAse39KhPbNMn4o3fvvz+e6Ot0CAKC1LizY9ojhOdU4atS6EzAdCJ3wFAyMmEQ79wnFtnen0R6nSbmukwhLFLhZ5ebqqHKc2z/TbYsht63bYNJAPPTKWKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=siemens.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ta3qizuAb2vRdNkGqG7DbZX1eIrcuyj9A47MPepz7bw=;
 b=LQiNIHSuNA5Bwc8bMCe++gIuxFzWAPrkGSd7A2CbGk/TpOeCOXLf7++jl8WDsW7wmpXaauGclaBUXzTksvXjIxWba4+AEgeBLdDk/WFsla3D8eSlpY6316grTuVn0Tt7YtEtxib33IdSTn91wM7i7f7Y1GcYybjYVGKJkurF2JUK9nPcz/qTDs3vz4IGaQ2bNa/XBF8sKsoSE779vY6CqcHsrWKj6UdKUOohanwwsmXSNoAdRzgpjEM7zIb+ygyUNFwD+xWjZoRjeUaiD4jtGGY8NeqXgsqUbRA8ZV1NspQ+uIBruPtwUlJINOe96y6cqjITlYQkBO2tR3hLO1FtUw==
Received: from PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:266::11)
 by AM0PR10MB3652.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.29; Thu, 15 Feb
 2024 19:08:38 +0000
Received: from PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a856:76a6:96de:4c7f]) by PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::a856:76a6:96de:4c7f%4]) with mapi id 15.20.7270.036; Thu, 15 Feb 2024
 19:08:38 +0000
From: "Marko, Peter" <Peter.Marko@siemens.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [meta-virtualization][PATCH v2] netavark: correct PV
Thread-Topic: [meta-virtualization][PATCH v2] netavark: correct PV
Thread-Index: AQHaTwk3rfYARsNZq0SlKQ0clv97crEL5nLQ
Date: Thu, 15 Feb 2024 19:08:38 +0000
Message-ID: 
 <PA4PR10MB5707939B0ED8B0BF25829AABFD4D2@PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM>
References: <20240124210545.20070-1-peter.marko@siemens.com>
In-Reply-To: <20240124210545.20070-1-peter.marko@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=27d3c526-1c92-4286-96d5-6dde5065d09d;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2024-02-15T19:07:45Z;MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR10MB5707:EE_|AM0PR10MB3652:EE_
x-ms-office365-filtering-correlation-id: 3dc63e85-2a8f-406a-9b5a-08dc2e59841e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 iviiT/exiPI4q1SlFyDgo0dtaK7rNwHzyBwD8VcS3F7I7zOcQsaJc4/iLUR9dMzCc+G9JGGltJIb3TGvYNEKgnZAhwjwRdoWZN2lVAcbxCx9Lr4LG2r0Lj98hDybwVUXJt+he01Qh6REmrvKPM2pYl/wjO8YKYMHB8TE/Htdh8lU92bsAHHg3cqAFr1iYVrZuKoPK409+JZfCMMD5WvbOAMl47t/tLy8jdkf7VlgbzkGVxV/O7eEL3LoqHS3qljdlOh2UqOwhZi7c8J1JBznXTnC+NYdvLtcb0HA2tyQfNYK8xDXxjgXDyq71D2tpsmiSGOQypJiApGIYwTRWGwXLWLPc3G4mR6dVhOvfM3EvZ2OiWiMb2xzOkGTUgl+VfHfmWEBgOgqIG1z1Vo0mLYySkikvgeTojWMqto98jhIfh09gmVgFcZv2tncK4IPDt0OXb5XFOw/ElZnp23+0ksHhRttRiovtUox44sWO5mZPfSe+iqO+SQqv5DHOWp8HoA5QsgkRg8KG4/0Ah12bgpJ305W2bhBm3lm9lIDiJMScho8rS0AK0FZnLAfxdIMRp6qa57EOx6y6uttegRWE0V6/bxtYIY+5ycnN/YJxBXPatdld5Gg15HQQjOFEP7clX9f
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(39860400002)(346002)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(5660300002)(76116006)(6916009)(8936002)(8676002)(66556008)(52536014)(66476007)(66946007)(64756008)(66446008)(2906002)(83380400001)(38100700002)(7696005)(38070700009)(26005)(82960400001)(122000001)(86362001)(33656002)(6506007)(71200400001)(316002)(9686003)(53546011)(478600001)(55016003)(41300700001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?8xzT0Vfi6fx8utgFYpnY1orctbhyKt2/SnEKvzL1x+ctOm9+KFeaRepxrYSr?=
 =?us-ascii?Q?AcOazPA3CjPXkPEfbs4m1TMwzpCOGLzkpVP+eAUHgi/c/iwYzKFhsfAAL0mx?=
 =?us-ascii?Q?2/fnBmske+fdbT/ux7ZsgP34aTV0Q+Yji0GAAr4ggggSeLeyS2SUBZZ9IC3d?=
 =?us-ascii?Q?PkKli60TNsfg3jIqqTJTk3U3AdFOc0czTKVxlrSpH2ozUWDWYjcx1/RbBU+Q?=
 =?us-ascii?Q?g45ia9jyrV83RmEfKaelsiCSxxZvqYJTG+srrgUVJjjW1jhkGVNj4qw4o7ab?=
 =?us-ascii?Q?qM27Tog0iUAXRyuak0AB5WNoVgs3GfmhALYdZJ55rwECLv8ffSGXUy2W9XyL?=
 =?us-ascii?Q?pRVGSWIhn146at4bWt51V54NKXn5BneRABMszRbUcEnIA5tKv1M2I325TMI7?=
 =?us-ascii?Q?zm9xDnjsPdGYv02Ji42REo1YCWGP7PXW+V7qrwrbDCxMVHslG+dzI9dkk3yV?=
 =?us-ascii?Q?dNHuwx8fsYsMmY5xtWnBK2404ISaxufS3pWQiA7R3XMduKQ2xD9XOSSh12fb?=
 =?us-ascii?Q?wguS+C75kPBb2j6H68PaMlUpqRU6nOtKzbblEfwlCeHnel76JAtKt9jIrQ/c?=
 =?us-ascii?Q?8NN8TFk6fDkkYD3jA4IQcjYEgXAf2eWXqXmTLtuU9DIPsQC339GuG3mpL7A+?=
 =?us-ascii?Q?QZFlOdcK+DsUNcn6Iq6K5/TosRVHrSdxUJm8OXrBSH4IfWppZSZszjlBt5rp?=
 =?us-ascii?Q?Z3pYYlwcklxlV9ge5CgiOVcD/dGkhuf29nSiNc+psqayHuBzZfK7dp69qlbY?=
 =?us-ascii?Q?6Scgog3eR/8qX/QPlEaSeLp96YdoEp8InkwqRMQTeu1Ia+jQdLfbGgwrVE/m?=
 =?us-ascii?Q?mJWVapxqw1WIKiPIAKSOldTR2WuQpf/fkYzrGtCL0RmaG/17/czYaHT+C0t7?=
 =?us-ascii?Q?J3KxPaEZXTGqjuYf30OKiUw4rwMA7D8lMu4aQvxErBnXcyFZj85TSMamlqMr?=
 =?us-ascii?Q?I+QbHmcWNZwcJditny4jlB7Zu6cR5zHzjkP0n9qOQ7E/UCuaZ0FKc3yl1UTj?=
 =?us-ascii?Q?++s0hlSQOzcnIep+5gmLfKH0hGIjjF6YkcHirDXJ5d1L+E1PaVHtuRE7GhX7?=
 =?us-ascii?Q?u7cM9OhTXHa0HaRr9+8X2S/GtiBFB1dBNsjUzgNAweG8xWuXbPLoScgU4Jf/?=
 =?us-ascii?Q?tYC7xF0/05DKwRQ77OeFgrj9Qpk8vJLu5nYaQhKTo79LCEpUxFvt52IhtWx9?=
 =?us-ascii?Q?jzv8rs04pqzeOIASpkSdD3GSCYT8NPATBOnMFcmoGC/jAv43pBpTrw/z4F3u?=
 =?us-ascii?Q?uuUjh2Dw8oudubKy4Mhkyh1d2nA2jc4pq0SBjAaBBrMqGxuYiK03A4I84SY1?=
 =?us-ascii?Q?AoN8fSpxPtL77Ktw5LMEKJrgcWTjKx1BrGHzn4wyvVEo2bKy+YfhGewZO/x0?=
 =?us-ascii?Q?DSfomz5NKw+Dqo4Vj2tI1RuTHEY//5wg7Ij/RnScFHrnxCNCzhyNwqgH9D+o?=
 =?us-ascii?Q?JoPEHLimW0S8tOX9F5SEWmhyFUY9YC1sYnNqAF7+kW8R5zq4eqNNXNXO3tTs?=
 =?us-ascii?Q?TvObojp7BdrOqwSFmhz0LhJlPj4NxSz1XL2bwDCZFqaZgbipcmCOjsQRad21?=
 =?us-ascii?Q?8sLoLEcaMRF5jnuhobpezVxMmKXSomtPCmXPDytm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PA4PR10MB5707.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc63e85-2a8f-406a-9b5a-08dc2e59841e
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2024 19:08:38.2864
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7hsHklJ8ema9XqjnGUZI1Q1OIVTZ31G26FymiA3rJbPue4PWqms4pyYPE5eVHDVX6MfW2F4NBMCU+L2vZKLOog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3652
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 15 Feb 2024 19:08:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62502

Gentle ping

-----Original Message-----
From: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>=20
Sent: Wednesday, January 24, 2024 22:06
To: yocto@lists.yoctoproject.org
Cc: Marko, Peter (ADV D EU SK BFS1) <Peter.Marko@siemens.com>
Subject: [meta-virtualization][PATCH v2] netavark: correct PV

> From: Peter Marko <peter.marko@siemens.com>
>
> Current hash is 20 commits after tag, so add +git to PV.
>
> Signed-off-by: Peter Marko <peter.marko@siemens.com>
> ---
>  .../netavark/{netavark_1.9.0.bb =3D> netavark_git.bb}              | 1 +
>  1 file changed, 1 insertion(+)
>  rename recipes-containers/netavark/{netavark_1.9.0.bb =3D> netavark_git.=
bb} (99%)
>
> diff --git a/recipes-containers/netavark/netavark_1.9.0.bb b/recipes-cont=
ainers/netavark/netavark_git.bb
> similarity index 99%
> rename from recipes-containers/netavark/netavark_1.9.0.bb
> rename to recipes-containers/netavark/netavark_git.bb
> index 5249acee..9d3a1172 100644
> --- a/recipes-containers/netavark/netavark_1.9.0.bb
> +++ b/recipes-containers/netavark/netavark_git.bb
> @@ -5,6 +5,7 @@ LICENSE =3D "Apache-2.0"
>  LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D86d3f3a95c324c9479bd8986968f4=
327"
> =20
>  SRCREV =3D "167e2e4f167cadc635bbacb5331674b67787d08e"
> +PV =3D "1.9.0+git"
> =20
>  # It is possible to fetch the source using the crate fetcher instead:
>  #SRC_URI =3D "crate://crates.io/${BPN}/${PV}"
> --=20
> 2.30.2


