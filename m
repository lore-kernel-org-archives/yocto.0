Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1174DC3601E
	for <webhook@archiver.kernel.org>; Thu, 10 Apr 2025 10:30:20 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.85])
 by mx.groups.io with SMTP id smtpd.web10.30868.1744281015519153908
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Apr 2025 03:30:16 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=Y5zQG+wB;
 spf=pass (domain: cherry.de, ip: 40.107.247.85, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YyYd4drvx3h8/ENp3y1M1nxGZEHb5R8WkmdAN/MtS/HKnOKoWhWhUzKpvhPfSlGYHOjPMM/76wLKB1sMUHQUDqwqVAJH3mdNuWB3PdZ0q3UOdPh7yZ1cq2Qey8mE9AcBXvi/gJqxJXlKkOe+JK746xo4BPYEICBAR+m9ySM85GroLdk6M0Is+Q+SvrzkFobEWTrHNwrGCZ0fsiKPzdJi4NUStzyWCNYtnFxntDfxdNyaijU30xq2jEa+P0UVA2CmYOg9FdEnSJU6FqAVwoeFVOaG/U64eGra1S/1YU1fCEx8+P5MHfuIROHaoRo9M+/0m4reL1cmP9nVHvP/4CIvEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QmM/XycdB8f/ThDPKff9fg7jyfgMc3Oh8RQraj+AAoc=;
 b=Iy/ESEYppGr3QPrajdW4GmAzfMhsd13Zjmv74HNg3nkc1Dv+L9hX9YyHGr9ndd5snLPT/5W9ekA8MGrWm9VefThior9qO0SLfz7NnKL8WEtaaRss9VntOXNuj8uU7+VTEwE+w3+lySHFbSfgnlBr2myvGc/T7gtBQl9IX6yfP4g0K9jZZ4fjbGMjjssPT3LmR58I4FbbzMMAsTnOgBvtMglZnKA2cxU5tP52TdhW7gzZr26he7trK0qmkB5QY+8Q7MRWy4dc/RoGNQE5brYyRBzE2medSGg5YBc+zXJ8vyB7UQXrQGQ485B22jA4iCIpt1G86NE3xMuFBK8zYahG4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QmM/XycdB8f/ThDPKff9fg7jyfgMc3Oh8RQraj+AAoc=;
 b=Y5zQG+wBSJ23TDmi+UeIBaawDu93nJjfLXnkNpGUoiG7EV5rLsQrJ6+0A+cvU0K3eo/PADhuk2fc55hFYqWn6wQFDuOy9cO9+AmEo52jbVhiLNHpWzvZTLyp3Xa1fvn6plXKEcQPoTSoLmDZ3v9SDXfFUgxApuxx2pqs+sTxIo0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA2PR04MB10258.eurprd04.prod.outlook.com (2603:10a6:102:404::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Thu, 10 Apr
 2025 10:30:06 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8606.033; Thu, 10 Apr 2025
 10:30:06 +0000
Message-ID: <ac81e478-e372-4cb8-beea-fc1b3b666a59@cherry.de>
Date: Thu, 10 Apr 2025 12:30:05 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Sub meta-layer under meta-cloud-services seems
 non-compatible to scarthgap
To: yocto@lists.yoctoproject.org, emailaddress.ashish@gmail.com
References: <P4Kp.1744279446027998556.xE8o@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <P4Kp.1744279446027998556.xE8o@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR2P281CA0067.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9a::7) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA2PR04MB10258:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ad7aad3-c79c-4bd4-24e1-08dd781aa94f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?ubgBeyTNVWkRu3O/iZPENTNJWX+AtxZ91gEVMYH/IqQiTmzwe2wSX/6rw6R5?=
 =?us-ascii?Q?4D37C1+uVKp7QX0r3z9bXbc/U/gguu3fLVg9kVMlJHCbp2pbbnnnxe7YbjSk?=
 =?us-ascii?Q?7xO6xOEBLitFHtecnaAiRvpJ4+aW/v/41d4XImtMq8j0OJYDx2eFkA6UdR9W?=
 =?us-ascii?Q?hVw+e6sYPSoN53fw0g34Ydqu10HIZh7pQJ009hM1bUHqHeSMR+qs7Fhn4NUk?=
 =?us-ascii?Q?YY9jCKc5LWr7Hakn2CNlg1q/uXzGShpR2IiN9F5Ln/18CFJ/mUOm13Yf0uti?=
 =?us-ascii?Q?hCdfmlKId2N0CRQR9kD8bFHEmukPaWEvDKRJLy8GigCfSk4CME/L65v22WSu?=
 =?us-ascii?Q?SuJuYke7SaDlTkdlgf6kFdD2gX1mxIZcPURzmnJnruAGZYAqOwsavJHzBVzd?=
 =?us-ascii?Q?aH9jhQQIx9TEi3FSF5vyJz60IdGjWEs6y1ewH24PeP4oVdxMxXKywHm//BTp?=
 =?us-ascii?Q?aHWsDtLqiSbkx/uAwCXwtqlnnoZuxtFg7X9g3/gGbTQiyeDS3dKS4kWHjPLI?=
 =?us-ascii?Q?SzfR7Qb0I/oR4GTKUbL21ncwhzv368hXendt/LM7sukMocSpy/yAcd6gu55y?=
 =?us-ascii?Q?wuzyCWsQcij7tnL8iXJso2BRdXol4ntJrE+LgPpJ5suz6MpRBvkZyRz6H+HT?=
 =?us-ascii?Q?X82s4Hx1B1p0m+G8li7u6QV52DBOY6dl8GtnnuFx9JhKGKItVSCUy94MGLQ9?=
 =?us-ascii?Q?uNC7Iqil5mxe0GuzgKjx0JAoodn3UudYEshAy1CY1C12KVG8uC+EvpYh9alK?=
 =?us-ascii?Q?dyf0AUJOAq/u7zWXahCtZ4Tmc5bUwGC1soDRQfYlnhSrg/WVA409KPEe0k3g?=
 =?us-ascii?Q?Vjvb2kDmaFywYjt1hwynBKXiTXfJC5qxRjz/kx5aWO7e9UN36f+Fejr4nIjc?=
 =?us-ascii?Q?bMGNUjUwx8Yv+Vta8bb+yWw0BMkxLdXkZ+AfozD+AFDjsPEUd5LeSxm0vQPi?=
 =?us-ascii?Q?2PDp3pj69+wOCyNxHwLcxFrrBDqbD6fCJMOoVkY+OabsPEPZvLwVP4Q11B8M?=
 =?us-ascii?Q?f2EsZlDpxcKfZCwBlj8tq5iru7BNaTD9Ar0WTURjLYJopLXaO/xN3oXbHsDx?=
 =?us-ascii?Q?dC2E8BWbq63ud7v3jeX1geIIw2Ah1W+K3Zhprh6zZorm5EDRlEnp/8ONCoiH?=
 =?us-ascii?Q?SHH7eST5JFgazMYg97jT3UWxlePVIMDwPiG9tQaadFndm160zifgOslIqTI7?=
 =?us-ascii?Q?bkc1bHgJw+FJ0pXSkl+s8Zvh1dduZ6Z3fp1D/xbruUQZMpl3R/YQCa4+5MP6?=
 =?us-ascii?Q?zQMa7K2b43jYfBkDhZn4keHtZ/j+nLN2UexklasQbIlayz0bTDxYyhsM7/gT?=
 =?us-ascii?Q?aHtLus23t89HO4qOm0xt/WgckrHAPhszJWDrCc1ZtRsXTg=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?OBgbq2fO8ULduCiSYUNhGedOlG9N0tKGdful8lSiDvjDWSeHDrsRHDYbfd5C?=
 =?us-ascii?Q?BlD5qn9qu7BeN+YsG++684B9aPo1qQ7AiRthfNfQd2nPlWa0AAJvPLPUT+qw?=
 =?us-ascii?Q?5TwpfkSpRFGN+xzYw9cjyJqblTHrQ17hvCnzSx/Bq9PymMUfZ5GczL1pRRkO?=
 =?us-ascii?Q?7/aCN6sDjHbrjyv4wEmO/KcD5g2o8z/WRGb1ni7nKqRmSTcpJGmRYuMYF3v1?=
 =?us-ascii?Q?Q0dB+Xc+ObrRV3AuLsyIVoXWOv+yCrkA2dkuqNOHXr0H1G/2GhZjWtD1xG5f?=
 =?us-ascii?Q?bgFhpdTFsaHOaLAH0iLrsOpKsPDMrhxt3SCCTP33INaSrWxo5ogjv9XF6K5x?=
 =?us-ascii?Q?ArnqN2H/NScZZsa+Z5edMceGr/KtGGZHERBWSeX1KYzYs6JlUWYp21ANJv7U?=
 =?us-ascii?Q?LEd+50jIpJMtCXmGgNmO7yxVd3yAB0iR3EgVr2yQYlF7Apywt8hWne89Pe0W?=
 =?us-ascii?Q?cP1dA6JPWnf29RAXfeOx+ew7M3ANHtOoJOINoJgPyuBZYYmoYf7Ubl9HUM2U?=
 =?us-ascii?Q?PKr4Yrxdz347qjdeoN0WMSksNoG/0cUytC+XqsRkFNNNJrcboxeZ4j1rCeOG?=
 =?us-ascii?Q?T6isxoqZHwZDZE3JwXT6lowdFbyLP6ypFn0noI4tP22lBly3GHWTIgRfUEd7?=
 =?us-ascii?Q?WvqpBKovRzE3kFCg9nQw+krigil1MUjFkofqCYb4cw0iYNn/KkNAsW1DAp9h?=
 =?us-ascii?Q?MHI9Rlefh+9sk8BHtqMYyt+wusht9JK7cNIqwq7gIKyQ3NqHJKZophmgDOvW?=
 =?us-ascii?Q?sK3lUXoYgvGgSqugT+WRNXH0VjmCSJwV6cM9m+/Mcl2zn6aoktUe7pjQfjd+?=
 =?us-ascii?Q?yhWRAS5opn3ylMg3Yx1XWzTcMWDfrreRSqa3X5NVtqG/WHgAnhTVN5r1WFL8?=
 =?us-ascii?Q?5WjkXFQiIH8YoPPDULpdhhz5U3nCZFcLoHkqHdpaorMUdk47k5KN4BLEpfKt?=
 =?us-ascii?Q?IxTqMG26UIo7txKgKdBieOwr1WOn9zMPTt5g58Rkj0lWWy+ZzF6pbCWeXA43?=
 =?us-ascii?Q?BSoWpk4JA1FgTGUZxR7jFpxEQnyDIvlNIYVDrqE4Qmmcs86331wCiHM4vdDI?=
 =?us-ascii?Q?2t+c10ZGqwIyOvyKtQRDFkM4nOPoSpMt28VPiSTVM3gVcurAmsMr8yAD5QPd?=
 =?us-ascii?Q?IsY+5Wx4XYZ5hQhno+ojRNfVTrIuWW0kVzwqPBXIvAMlA7Nh827p7DL8Xfc3?=
 =?us-ascii?Q?iVKGGKWANy0eijsOMrmLMwbi/56kexoAGbN1YBft2WzHe2TOc00vtL5QqJaL?=
 =?us-ascii?Q?uc4vnwWXy1p+NCPguxXF1O/Jq3qAce5qH0z1TF3N9iY+cPOo2iyVjX7/zVGE?=
 =?us-ascii?Q?6HLf2wKOLxN/jzZcszF7bIWN32oT67VRZIF67rJlxhh6Q3i45oLl1Ggjqp/K?=
 =?us-ascii?Q?WPb3sOkFCEtSOERdcF6jNKjnS8tBHZQg5RElKcZ8CJYSr365NMaiqVBH97Ns?=
 =?us-ascii?Q?W/BDPUqUN8zNP0BRtv/DxHFxbkqMVQ2kTGUIbAukQ0/InsyrKdXjPXaQxOw3?=
 =?us-ascii?Q?9HpyiLAdZyAULjJMBXjHoGMN8ke+pgo8eaZXXgys8A31m5iAGwjviWNgionp?=
 =?us-ascii?Q?PJ/oIG9rBy/yJf3EUwwvH5avggYY0/xZRisGFGKO+eT7k8twKOQeSzuibNqM?=
 =?us-ascii?Q?Ng=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ad7aad3-c79c-4bd4-24e1-08dd781aa94f
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 10:30:06.2812
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zIcTF4gNLtzuoP+4l2G7sgEug/rwoRxyWEine09Qcq76iLLGkYAz3LX3l9HenHu6jqKx9oxz+2ZAdhAOOeVpR7yGYb9T9Pc68vFK4oi0NMo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10258
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Apr 2025 10:30:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65136

Hi Ashish,

On 4/10/25 12:04 PM, emailaddress.ashish via lists.yoctoproject.org wrote:
> Hi Members ,
>=20
> I was looking at the meta-clouse-services layer to try an test setup for =
openstack as i saw the recipe .
> But when following the README i faced non-compatible error on=C2=A0scarth=
gap
> This is because the sub-layer under meta-cloud-service seems compatible o=
nly to "thud warrior" only
> https://git.yoctoproject.org/meta-cloud-services/tree/meta-openstack-cont=
roller-deploy/conf/layer.conf?h=3Dscarthgap
>=20
> 1) Can senior members help me understand how are members able to get an b=
uild for scarthgap
> as there are some recent patches being pushed on scarthgap

To the "root" layer yes, but most meta-* sublayers in that repo haven't=20
seen work done in a while (and most only did the transition to the new=20
syntax, see=20
https://git.yoctoproject.org/meta-cloud-services/commit/?id=3D0cffcd09a44b2=
a58452a5bb13714bfc47d6546bf=20
which is the last commit for some of those sublayers). Even worse, some=20
sublayers aren't even patched yet for the "new" syntax (which was=20
changed 3 and half years ago).

> 2) Since the sub-layer are not supported for scarthgap , can i conclude t=
hat yocto openstack is only tested till thud / warrior.
>=20

There's a styhead branch as well, so I would say that people are working=20
on it. The sublayers are a different story as they are not automatically=20
added to your layers whenever the root meta-cloud-services layer is.

> Generally my understanding is that any recipe which is present in the lay=
er (branch) is tested.

Not necessarily. It's usually true that recipes from OE-Core are built=20
and somewhat tested via ptest if I remember correctly. I don't know=20
which other layers have a world build one by the project, I assume=20
potentially meta-openembedded but not guaranteed.

Generally, you can only expect it worked at some point. It may break if=20
the people who were using the recipes don't anymore (or don't keep track=20
with the changes made in the layer or in Yocto in general).

So, feel free to send patches to the meta-cloud-services to fix things=20
up. I assume you'll at the very least need to switch to the new syntax,=20
see=20
https://docs.yoctoproject.org/migration-guides/migration-3.4.html#override-=
syntax-changes=20
for pointers.

Looking forward to seeing patches on the mailing list for that.

Cheers,
Quentin

