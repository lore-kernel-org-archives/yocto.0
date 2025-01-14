Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F82E77188
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 10:20:34 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.68])
 by mx.groups.io with SMTP id smtpd.web10.41196.1736850029575281294
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 02:20:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@cherry.de header.s=selector1 header.b=O/BY1qXS;
 spf=pass (domain: cherry.de, ip: 40.107.22.68, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pdUUazgY4e+uj+8+ONLDCtVBfaLWHGX7DTSTjbICGDTA7ykku894jNeSIL6bJfR45FH5tCk0276xFx3HuvrCXsaVqSzqn+KbQcni9xFjvuAggJ3qjtjRGPEZds2Stdm6pYIsG7FXpA3a6oNWiBu9mtJFmALlrxrj0eEiRiwKwj2Xy8eKd8STzEGayeGc50XT6vEyM0dmExZZuwOyAqjtCAxia0wXoU1bZLhXfcFx5/oDTBYJXWnsmyGJSVFnpTUeOj+Mp2vGotVfe3IKH/EUKjx4BsuhBQ1or+qcYrobPF4A3Rh6sJb6TSv74zu5eYyXzzFNX8ge9Fd9kkN9E+LgVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iPjB21W81GqzXHGeGRjWx4Dtaoptoj/HzdeZo4PVpeM=;
 b=uLeLxz+HKVNNdRq6jmSpHMizViNl9Q8IttmRkT1z38N+5LpbcTqD6b34Frhb1M/IDbveh7tZHB4ipOTBke7SuUg/JDQI3VJTYKUs3qaCRMJp1TMSpjZJ5Y0sSdTR0o5TwjsatQ6pqBVsvLkxmZjQJ2qEVQMsEtQaYBC7vnse/8IHlIQI9P6cf5Pd3y1H/5Mh0LSkvMu1WTJr4UHKHlsEvVJDbf7W5nkLRuSfDSTRbiuQ/H2YhPuax+bcOvnYzVngw70k6CaWcNWroFpkUeIS/f1gKQfGvAW+dxu5mOv0xLR6ByltYro3X0uj+sK41YIjlxPPkurAt95sxS3iaE9e1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iPjB21W81GqzXHGeGRjWx4Dtaoptoj/HzdeZo4PVpeM=;
 b=O/BY1qXSJvLydFE/j7MQrwPaBCuzLBRw/ccesE9mhemOeHMFGgkEqpp3j81LXI8jJANTTewgQqktuCO7HSj59CQ7HA8u53WTh7Z4mhcbVpVsc1JJrQLKS6ODyEzNGxd0eFfGjAKMLZYFz/km81v2ngZntp/7LNDcQX+UqXtZecI=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DB8PR04MB7130.eurprd04.prod.outlook.com (2603:10a6:10:123::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.18; Tue, 14 Jan
 2025 10:20:25 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8335.015; Tue, 14 Jan 2025
 10:20:25 +0000
Message-ID: <71f5fede-76d7-478c-b205-27ea803e2e6f@cherry.de>
Date: Tue, 14 Jan 2025 11:20:25 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Strange shell behavior in conjunction with ANSI colors
To: yocto@lists.yoctoproject.org, matthias.klein@optimeas.de
References: <PAXPR10MB5277125A34E148DC166EA5FA99182@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <PAXPR10MB5277125A34E148DC166EA5FA99182@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: FR5P281CA0041.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f3::19) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DB8PR04MB7130:EE_
X-MS-Office365-Filtering-Correlation-Id: 87c7b98b-1ac6-41c4-acc0-08dd34850fdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?Dgs9mDww/gosiCISBXIjgJMDHE/wB9QEpl5leSvWLbllAeurGQuDbPEY4nv2?=
 =?us-ascii?Q?4Ul19fHxep/y3cCN9BgaBPXOyoh85XSux5MyNWLgMLb8cTGSZbLh+KDt2ekT?=
 =?us-ascii?Q?fDi5IQmy/aMuc/bQoVkoKlB4sCD8EbD7ePpV0AbaeCQ7joQDqRIfDKTJw/sZ?=
 =?us-ascii?Q?MPdX8nJl6Trb8/BSVYAWBQLEgSkezUWDB0X0FvIfeQ04/siElFU0W3bI/w9R?=
 =?us-ascii?Q?/P5YvTtv6r/egIgOxt6PMLNjf3MzlQS8x2lVTJ5TAhodk7y06HvwkCt7vUwG?=
 =?us-ascii?Q?TxAtCebkfNWyugWCujfHeEwfCXhx2+5sEGIyciUEqGvmZsaziqOzq1lfrQTk?=
 =?us-ascii?Q?tKn0e2/+4SEFkgOIMWxU4dFABcmfsMLCk4Aw+8iWVnd0j5iUt0NKSVODiHXz?=
 =?us-ascii?Q?HQZtlLie5XQmi0kkB8rfmNwyNRdcMUZ6qhrtLTKMlbNu2GSmJ9JnhPDjf48u?=
 =?us-ascii?Q?5SAsSFrkxWMzv350xYCa9eJJkXV2y6nCgL2Rh9miyDIIefeqT5L2QaJSitK9?=
 =?us-ascii?Q?3v3PhUuMy6Oj+GmfamoXt+b6TZj/deXdkv5pcmfZmJJ+d3SOjfD84ABCtEI4?=
 =?us-ascii?Q?gljUp7jvhOAJtx9M95LffhRJJt0dM0OICvwd4NhUfem0c6iA50GJWh+0Ih8l?=
 =?us-ascii?Q?x5HV3ghEz60uApcNdYCZ/mKTKr3gNLpAq8MO66UuWlrMmK+c5lMLa4sjxIEe?=
 =?us-ascii?Q?76g8b02SQNOqSKmR0WMrBrZ7hrBJxcq6o/Afla00AdL27S6GAJr5howOoLFF?=
 =?us-ascii?Q?Ge7zMaoU6hX0lFJ/5HqM3V9vqahl6i5uFqAQRfq4kDibV8ltsAnL0s4zR3lb?=
 =?us-ascii?Q?/+Xku5+m2Nx3u0dA6r7Z/7vVs+sWS9G3aPbwgsuuR3itsmvsseuSf+xICo1/?=
 =?us-ascii?Q?FQinJW4rC9nx1SgJ9d6I3j2oceZ3xc243cGAAFB2JyRAR6+TABMllc6ooiDM?=
 =?us-ascii?Q?WJlXfjMo6bmp42ilI/U3PXuAuLv2kId/sE3F/g7oDrOPwrSOb9iRoee7uXTk?=
 =?us-ascii?Q?vTG/lKkQkvAmsgJFzsmWKUJJVT2LEoXd2IykSd+cB/ND2a25jwn2O+wjRGTL?=
 =?us-ascii?Q?PSYJFCBWlJfQc4Tkuo2uly07Q+RTT2eeGMmoyqjj/P8TIj/vCO1bRi5EyGKP?=
 =?us-ascii?Q?3GEShMwtjTPjiG2owsWNd0CfxFZc+MczhV92J3qowUT5o0p6KPySrhKnIwxO?=
 =?us-ascii?Q?elnLFmnMJdqiqXUjJvY4Kda75OFuzmA7AA06sbcRj+eXY2qNHwtwnhd8LoOw?=
 =?us-ascii?Q?iL+jUa1dXzGTgw+yAVP0G2yTCFsr07aVbPpSppDhMgN3Fet224L4ntp0F6Ek?=
 =?us-ascii?Q?ME1KkKdXVaJHkZrLMHsKIJ2UwHdmuifVBvq/9O1ZC9Y58w=3D=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?zHQjoX5sAYSGgQW8q4sP1UTschJwpxqkkm/t6dRqbp/EUbYxV+w2YP8jS/s+?=
 =?us-ascii?Q?DUGlxmfhQXTtocWnWZsgjTX/DaypWh4NmdtkTMmnkZReep3bAZacvM2QOxId?=
 =?us-ascii?Q?GSvOFMY6fXYSAc9HRHZoErlt6V2TrQ7NAvKYn6vG8xrtWP1JuphbxgSpr5kI?=
 =?us-ascii?Q?3zn6Y9hbA8+MiYzm1h2Ax9qzKaWiYVX83ghfLpvnSJpOblwDPdUpjG+eMVwQ?=
 =?us-ascii?Q?zG2CsKtgqaJg5rSQ1S6032NZfwzBYRxT2N5KlwVPW6NNU8cY0uD/pBqLTCaM?=
 =?us-ascii?Q?RjOeCSj+Wyeq5qoyRaJbwObZmda1f7c9pifI/PmQO/3Ktww85LTgZAGzx+MH?=
 =?us-ascii?Q?KUdQ1CL95SatwceYRU2sEMy0bXveELpRNAAwuMG/Dd1AcaLfuLX9eLcKZurE?=
 =?us-ascii?Q?TBv0/SZLmsd+oLrlzfAr1AQz8rgmCfwsLc4rr0lM/xfYYAxZ6Q8CpwwwFo9C?=
 =?us-ascii?Q?5EB+UDVklzwil0UN22LDBIW0QfbR7gGL7fLEhgE2aKUCyJFooUon2Ruuq3B0?=
 =?us-ascii?Q?znrIZJy2u4+qviwSBKnYCdYGjRkAp2ksUV7zLueCCDsc3FbJcaPrOTcRCyhU?=
 =?us-ascii?Q?dwHS7DXWEsGKrFaAI1zuU3xH/seU3TWr2naMnseR7mtbsgPIyFxPer/RMD9g?=
 =?us-ascii?Q?9WpIdA9toUJ6vWQNRSoLpPMQ/9E/nOQ4sKXvw2SQ3m0bsFuhnZRAkH6Y2nOj?=
 =?us-ascii?Q?kJnHbVIluUBCU11BkTn5ac5jjAybA2jLGi0ljvIrlIk99EXD28g2zot1e5e5?=
 =?us-ascii?Q?PdG++b4HBRbYymXYptwm7SMrvg3UxHog6rrmklhZn4RzwtHD/uigQ6Cgm9WI?=
 =?us-ascii?Q?fbA3YID7MmtreJvrK9eOkMXCkm1Q3hzhQbSXfy63eSTXmGXJTH0al75eEqHY?=
 =?us-ascii?Q?I9VA75atoPTgfPTd1EvUQYCs8S4VMieJed9JEQdNdYDS6/OkcL7Sj889/YBR?=
 =?us-ascii?Q?meCPP5nNLdWyXsKOGwV5GHFUUEuyDznkMtgPQVObPKKHZu8OR49bAAY+ocW6?=
 =?us-ascii?Q?NTZqR/MvUTUUnzwt2MsZ97huwczxdbsFfUDmQxGfyMJCunyozGc597WFzw9i?=
 =?us-ascii?Q?Au/Nf9Qm+BeGPo9KqjrObvaBDW26JQ8VbIA4EcE5jvvEH4vc4gPPrAK2nOby?=
 =?us-ascii?Q?AooLzFPt0nq/+NgFmVgRBFfc/oB4tHYjH3mLWWyv8NVxPhzu2/Wxmgbvt+pL?=
 =?us-ascii?Q?bKhdVeLn7Tu8uAd1FoWzdOaY16wB6y09ZLF3Za/IDE+eNCpH6tR+4hgYmWyR?=
 =?us-ascii?Q?PoIsFme5cufhq2V/hdAKCzWBYHT8wzBoc4CkBuxnW7ivqc3PLtw/3jVAnqfX?=
 =?us-ascii?Q?8xtPu2GMED5ILBgaojOAOmypIaDTpeG0gg3+7tqQXOt6vDd7bZN7TQTSbGgS?=
 =?us-ascii?Q?ofSeiRRxeJYXa1Gcu+g5ACAATfGi064L7c4YKmLZMHt/NF7+7a0C5Ar7Rjmn?=
 =?us-ascii?Q?ZjaDDFAzOfjSmpcRYHxGqrGNXHgo63BDHvl2wn+WDoJqX1CFiV1JnhDlUN0D?=
 =?us-ascii?Q?g8pLz6aEfzBsx+oiFOq+uxIq8OTwAb9UHVhkicf295YrwVXiT/Km6tHs142/?=
 =?us-ascii?Q?hIbTnZKULJ3P00aIg/Ca+OTRYBBkDX5wSgnZ0Uzc5Tnfel2NtM3eG8qZy72c?=
 =?us-ascii?Q?yA=3D=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c7b98b-1ac6-41c4-acc0-08dd34850fdb
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 10:20:25.8997
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q/FI8vzm/eSdcLj/JNUYRLZfE0nJA6NRtzxPQ6heHoig6vwnWDijr1YxH9QwwrelwP3pmDUAzA+GC9PCQZJ/xXL/oHipWIn1uq1LxILGFTo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB7130
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 10:20:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64546

Hi Matthias,

On 1/14/25 9:21 AM, Matthias Klein via lists.yoctoproject.org wrote:
> [You don't often get email from matthias.klein=3Doptimeas.de@lists.yoctop=
roject.org. Learn why this is important at https://aka.ms/LearnAboutSenderI=
dentification ]
>=20
> Hello,
>=20
> I have the problem that in the serial console and the SSH shell escape se=
quences are displayed instead of colors.
> This is not nice, but much worse is that I have to end every command like=
 =E2=80=9Cnmcli con show=E2=80=9D with =E2=80=9Cq=E2=80=9D to get back into=
 the shell.
> Similar to if I had started it with =E2=80=9C| less=E2=80=9D. See the scr=
eenshot in the appendix
>=20
> However, if I start the command with =E2=80=9CNO_COLOR=3Dtrue nmcli con s=
how=E2=80=9D, the output appears correctly without the =E2=80=9Cless mode=
=E2=80=9D.
>=20
> I have already tried various terminal settings in the SSH client.
> But I think the problem is in the Yocto image itself, and not on the clie=
nt side.
> The environment variable TERM is set to =E2=80=9Cxterm=E2=80=9D. But I al=
so tried =E2=80=9Cxterm-color=E2=80=9D, which did not change anything.
>=20
> Does anyone have an idea what the problem could be, or what I could look =
for?
>=20

I assume you are running busybox?

We had the same issue and fixed it by adding this patch to busybox:

https://git.embedded.cherry.de/yocto-layers/meta-cherry-es.git/tree/meta-ex=
tended/recipes-core/busybox/busybox/less_raw.cfg

Does that work for you?

I unfortunately didn't take the time to look into how to contribute this=20
to OE-Core so other people benefit from it. I assumed we may not want to=20
have it always enabled but maybe that's fine. I thought maybe we want=20
this behind a DISTRO_FEATURES such as NO_COLOR but haven't really put=20
much effort in looking for a solution.

Cheers,
Quentin

