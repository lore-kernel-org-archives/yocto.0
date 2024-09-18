Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3FE2CDD543
	for <webhook@archiver.kernel.org>; Wed, 18 Sep 2024 15:43:48 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.50])
 by mx.groups.io with SMTP id smtpd.web10.18665.1726674218697403136
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Sep 2024 08:43:39 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=SCzx29ez;
 spf=pass (domain: cherry.de, ip: 40.107.247.50, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cQsYj56hy0S3M2XLZGRm7GMutPaY3ihZ1tIYX1HMPVhVP3w4nZgmCkHHSu8/c6NiXpxl46wWdblxXqQT5YjR5BPK58U8OpIik2ZF2yrrWFN49UhwlxHtrgE1sUJECwX8n7roDeNfL47QivdwygChwvesvbT/UEHDGuK1RtVNcw53uzwDt78kGOTYKjY/H7PweRTfxEYS/vxCvlQ3L9aG9jIrW2MH3LOTrwdkK5gxmr5qWhL3JUm+S/V0exftMMH4ZWTNbxoc0fhwTwSB1X+N/rSYbgsoWKJZIOe0omHTbswvM8eJuqlUPfYrI1P8pJnZFcR+sDvzU82lRe+hWmLDpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U6dMwFwIyPAD1DnXEvXWidDephuYPC28i2jPUOakjXs=;
 b=LP4JO7isVd1tgw/8JOnAPIRdgckHpgsiZZbdx5AM7p2mqr32linuU9h67Oop3ISFCfNY0NVNztCru9UmXVv9ZYCQy+DfCZHW47DEgM0XFidwyG6bBBy1vpleF9Zb+fw+Sj5qyMt7UV8pGIUcSeCwPUdFDRFhEMRNoT7Yu15qPQgfIo2NbUcbwPRLsCFut5eMvamDeOQy0zDoIKkN7zLWeJKUE95ufG0MNa6dvcyHE+RttCGosg0yHYySud72PL73USxasnT8eYgcOtjlXxFP3eldI7pzWZmTIcZiBugxJ/JKhHE577FpwZnyLK8k1Cj0i/LsLJaXh8i3H76pyssxJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U6dMwFwIyPAD1DnXEvXWidDephuYPC28i2jPUOakjXs=;
 b=SCzx29ez/pvGm8hI/EofaGCXrbwUERpuyhZtoqPWTwelYLM0y07bHB5o6yYHDxGX4GJr4ShqP65hajud8+aeXrOBAgcmE5vSCvUE6Zx9srfSgM18wcL61Rgq8Vihzt+CSi5Ov5cjTHs8D3xTqbQcvcxxvAxg/I/PMv9wqyfZyd0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB8PR04MB6842.eurprd04.prod.outlook.com (2603:10a6:10:11c::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.16; Wed, 18 Sep
 2024 15:43:34 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.7918.024; Wed, 18 Sep 2024
 15:43:34 +0000
Message-ID: <9bbfb06a-1b0d-4cb1-8082-9e54bab2fef6@cherry.de>
Date: Wed, 18 Sep 2024 17:43:33 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] kexec-tools dependency on makedumpfile
To: yocto@lists.yoctoproject.org, ecordonnier@snap.com
References: <CAHUKmYZ5UqqB7VAjTL9fZ3D3rdvohq-084SxF_6g9+MUxccV9w@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CAHUKmYZ5UqqB7VAjTL9fZ3D3rdvohq-084SxF_6g9+MUxccV9w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0168.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::17) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB8PR04MB6842:EE_
X-MS-Office365-Filtering-Correlation-Id: ad6b5272-b303-48db-b4e9-08dcd7f8a7a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?dQCOIoEWDggKpnABu0c62/Qmx+7KZ68avhvM9ZzGTE76X9rgBkEwvR56Qmpc?=
 =?us-ascii?Q?Q2UnLzP8eC4MsmZxOXrxBw7knfuxE4TJyuzOQBhvxdentt13CZ/8d5wme36W?=
 =?us-ascii?Q?TP5daBSq5ZnEuXlcV/RW7+70oK8ABoFv3PYQ61vgikcx8DmL2o3VFzkt1sBm?=
 =?us-ascii?Q?JaIzwsRNJp7+A9iZ9wDtqov4IinsNhakE16udmamJ7l10FRc5vafBwnFbreO?=
 =?us-ascii?Q?uGKkJbZxFuYc28SOY3eE/E/fqYn7pM5KDerivGdLz8+bXAhBMIZURN9oH4OQ?=
 =?us-ascii?Q?d8r3kJCwsQKXe7ibBm6gWPxuRNX0ocq/4UoEVU5jQ1A+foNZn1l+EJcgw6hQ?=
 =?us-ascii?Q?Kiblmmc4NvVDReIzYtJzVBLMrZdc5amfX5HX6FxEdkLZqYrhoHOr//Yp9SF7?=
 =?us-ascii?Q?vCJSMwM9sN2JzT2D0nHSdwb19XO7ZSqrMT1N8eOu9o9YGRzhlRDDpLcq5iSi?=
 =?us-ascii?Q?dzlyJGDI89TWf35DKQvgV1HfgUDEP+pBeYCY3PAkGOH8Y8FM/2pyIhoqxM2I?=
 =?us-ascii?Q?bNcXh5WgSfoCyDLwN3WymdbrzuBYUffNyUE1T45K9cvAnzJ5p/6I/5opkjNY?=
 =?us-ascii?Q?N4Dil3ER/oA1uVr3l0pEprRWy96ITBeNqa13x++jDmSUYmrm9m6fLYp4pjU/?=
 =?us-ascii?Q?4yL+qkSdOIrCHyxdtH7/d87vcGFpgWwfVX9T9mU+aq9I42X7CQDLpNEYPizy?=
 =?us-ascii?Q?H2jXwwbejtzR81bNMKfoN7ymg+kVrjcYGbY2QIllqAXkEvlx7mEhH4UuXOzd?=
 =?us-ascii?Q?McwRHh739b6Ivg5kYnIxhRwYBg5KLxyDiTbJyUp5XP4Dh6ym2DnFe6dUM+XO?=
 =?us-ascii?Q?XKCgP007OKN9anaEXZ2DAoJJ/jF1guxLjJmYmQXBoOwG4Z8jW6/F/32O+kQD?=
 =?us-ascii?Q?cWfsC+ujVJjtpnuC1Rg64uxiRl08yjubTdiGKyDrHzIlANwtKJlCpVGZkxHM?=
 =?us-ascii?Q?MlMCHbg0YTXK1/e8lXou8SFyz/ULR4ROYuwFBjZ7GbcIrvLyUriAd6M3Reyz?=
 =?us-ascii?Q?yJpP14/dtZ9SHuSlZkaVm9ttkY+JrKIQ/kphlyatdKxs3IhmBu8WB13cPa5s?=
 =?us-ascii?Q?yb10zQ/4mxB9HnbKN1iQ3BcHCRRv2/SaEhVTNh/FOK9pMjrOcA7A6IAT1VZc?=
 =?us-ascii?Q?GTUqdn3ylZ79mlqMkuuK1NJcaQn4koWL6iDctppObFeCL0ZcOkBBzNTv+Y23?=
 =?us-ascii?Q?Ovu2yRoAgIAbDeEWTS2dIatcL0awIkbgsbfQ4PRAeOluqzavYJZQWMgpvL/U?=
 =?us-ascii?Q?Lw25Msgj6eAesc8jWlFrp/+BcWVcptCm7MNTBfkY3xnFoA6Xx40yzTljLxNz?=
 =?us-ascii?Q?q7REANnQcAg+x+TL13Q6anxUAayow2ThiOnmsqGmDQa/SCPKU5/VJiAk3DDl?=
 =?us-ascii?Q?9WUaMPE=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?NpHGLIeLufq6PjNzjAcKVLZQ7nV0iQVbBLY4VKdtuX5P38Fy5SFbWVdbamzx?=
 =?us-ascii?Q?FHi2B3aihB3qGFbCsORagjCVzLuOCR9Mhm/28BH2kFpQCyyVFO86TUa/DzVk?=
 =?us-ascii?Q?OFLFfuYysvMQ+vryFQQGRkT/qoMvWZMZ+fn5OkwlKs/iI+duJ0XJfHbu4uVW?=
 =?us-ascii?Q?65gpNHMkQ+wLCTPlnnb/YTgSMpguhIWJSBQaXtWnbhCx5PuU8Gdp0VixjVXn?=
 =?us-ascii?Q?OpZubjxNnwQR2zUsN43kUg9He+YFx/SQ5VYdFDkapsb7VASEBf+0SNYEAqnc?=
 =?us-ascii?Q?DLRjYqgZ7j5Fpp7Pf2rPT5Yy/SnHdLFUOWUAp8m50q0W8YHy8erZGrr2nJ43?=
 =?us-ascii?Q?8AbkmF1yHDqkKRKbUDrRvu5utPRyAROikSqzpRnoKWS3D3HVNJVRn67H2ojz?=
 =?us-ascii?Q?q0zRttkqB/LlWFj4nXn3mqjqJr3W6JCOTBoUmd9Xm0ZGJQP8xW1oQLyAfc/J?=
 =?us-ascii?Q?zirihs8Fxa1wk/ph2k3PJ4fCngr7/BlFc96lSHoGlTXWBNbNjK7LqtWcNbjF?=
 =?us-ascii?Q?wLvgjIgE4eQ3+QhcDUAQL/rJd9xMxcyA+3Fh+eloej0MOaNwVMBCMbs8ZW6X?=
 =?us-ascii?Q?xbLrGvB6jVEhQreEUqOTGmcKPjvdQlWRKhOwQtRU184D7PaZqGfTaWb88lIt?=
 =?us-ascii?Q?ZoixbWihUqvnkmuPXCsqhY1nyZfEho4bb8S0dXKGQtnzFxSxu7yVUU9W9HMd?=
 =?us-ascii?Q?TPBAG3UlglpajOnlAwoj3uevWqWznQYIM+DU6XcZYHcddTgTKTI3x2l9LA5v?=
 =?us-ascii?Q?GcEEcw2vB/730V4/NiOFMixceBUOuBU7758ig2qH4WFulshqZf1fxth+7ded?=
 =?us-ascii?Q?gwv26+f+HdOjUmdVsz2frKfpJqZu4L9b1taHMSvNY9HPnh7F3Uw3PPuWBcLv?=
 =?us-ascii?Q?6O8iva/Q+1s052AafNMAxDzoVL5ZH21EBlNnbu/PMcZH9MZZZIGHuGrIyLNB?=
 =?us-ascii?Q?L2Fbh0JI96qpKMeIZesKUwrghs0h3gJvRhM0afj8fs0HdotTWG7ua7/7UitH?=
 =?us-ascii?Q?goaJTBKV7ntoFE/i5yWFbHE3JgdvMVEFApaZu/GMUORPmGDCxsvIIjja/dBc?=
 =?us-ascii?Q?/bTkUJZk3HHDIlYEibrNnJ7i/QMN6P9c6r7hxXwBvAXwoLWl4v1B+v2fnegR?=
 =?us-ascii?Q?kM29XCVpoTk+U20tCoQ97JwK1iIz0IpZgPIuMq8XU67QhNjZ+rWlQ4EKh0up?=
 =?us-ascii?Q?HPAMxv2OVifBPIcfOYhWhauRPjq0vtcpGQSxOo3vAlpczJwj6yDzMT1lYy6t?=
 =?us-ascii?Q?Xo7Pe3Gh6bP9Bjy5lWRy1wnrDrAM11CoAC3RmpI9IV9Ehbr7Hkm+6aSZj70b?=
 =?us-ascii?Q?lOChrrzVW+g1U7IXKjJN7Jt6DSAg6QmvwajACZcxhouIxGO28/3g9YFss6di?=
 =?us-ascii?Q?rzl7wKY0FAjCtG4ttDe72vQQKM05DpLJjELJ/Yot7fmom/d6/F8PNYgtsxn+?=
 =?us-ascii?Q?Raxahpv/kqVtj1cbKfficVNGKbJHegv4kgcNT/BDU+uJl3RqyRDRxLMsu8Ti?=
 =?us-ascii?Q?z/1a/FtkNboPNgR6QPbkE09AMWtm5P3pYqo9Zjvct9eVCe/wUQa9stH/dGKq?=
 =?us-ascii?Q?MErXoGdznVRwJiXFeAP/6UCI5+A1cw1+8rOE1nCcE2ApRqlqwsP7xNTGa8wc?=
 =?us-ascii?Q?tCOY37gUt7ikuxQL89n80N0=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ad6b5272-b303-48db-b4e9-08dcd7f8a7a3
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 15:43:34.5720
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jaNMBq7oYAgz4wFZ0FPlUfT2ccdSQ2XouP1f6vjEd7ssumS1Shi/t2HUl9vp7ybTPq21QnUcwMSLXLFAgTNIXua3QK1U800C5a2dhRgvrek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6842
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Sep 2024 15:43:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63861

Hi =C3=89tienne,

On 9/16/24 9:10 PM, Etienne Cordonnier via lists.yoctoproject.org wrote:
> Hi,
> the recipe kexec-tools (meta/recipes-kernel/kexec/kexec-tools) requires
> makedumpfile since the kdump script was added in 2015.
> makedumpfile is available in meta-openembedded (
> https://github.com/openembedded/meta-openembedded/tree/master/meta-oe/rec=
ipes-kernel/makedumpfile
> ).
>=20
> Also, the failure caused by the missing binary is non-trivial since it
> happens while running the kdump capture kernel, and immediately reboots
> after the error, leaving no logs of the error.
>=20
> What would be the proper fix? Add a RDEPENDS to makedumpfile even though =
it
> is not part of poky? Move makedumpfile from meta-openembedded to poky?
>=20

Maybe this is something we can bring up during the Yocto Dev Day=20
tomorrow in Vienna.

The RDEPENDS would be required since you are saying it is a hard runtime=20
dependency for this SW to work.

As far as I know, the only scenario in which we accept RDEPENDS for=20
packages that aren't in poky/OE-Core is when it is expressed in=20
PACKAGECONFIG **AND** this PACKAGECONFIG option isn't selected by=20
default. This would be fine. So iff kdump can be built with this=20
requirement excluded, putting this RDEPENDS behind a PACKAGECONFIG would=20
be appropriate. Or, if kexec-tools can be compiled with kdump excluded=20
entirely and the rest of the tools don't depend on makedumpfile, then we=20
could make kdump RDEPENDS on makedumpfile but not build kdump by default=20
(via PACKAGECONFIG).

Otherwise we have two options. Moving makedumpfile to poky or moving=20
kexec-tools to another layer (e.g. one in meta-openembedded).

Cheers,
Quentin

