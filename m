Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3F9FC43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 10:29:55 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.74])
 by mx.groups.io with SMTP id smtpd.web08.52264.1658312991826880286
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 03:29:52 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=kVpRtAKV;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.74,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+jrlRhCGuMHcPlxJyVdPK0oKaOsnVawozZUuO1itxGMhDZGpZpYrgXZtpCFnnsiUup7ujhgUkAkhZL02ZxThgAM5khlt/mHkHeKu7q1WJOulPKX9+GJ638TrV8rRjoGBBGK9reb100gRJdkWalI8hnnazGkUjJd+UZ3GQd2nbI1xqzz/tvSJSvg8dT6uOjVZUQPKkSh7jeyghsfkC9DIyjDBuHzYX3mqo2BTmXgZ4F16AWRBqDf/pz8Vsbk75JlLxHhZ64lTMbZtOmMvbwnGrzQjk+1IXDi6qzGsKlgnTi4aSu/P7Q9AChXFpMcinSZrYmtS9OaBbkD6qanm6tjXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6kVsRgkxHtKfFlg+n4tDtl4KoqBdiG3UDkjJTt+N8A=;
 b=nLQiHGjUne29cKAJAB55n4qm64TR1lJw7I0KEe1cGPmMNuLciqrMl2b/aVGD7oeba6oNkM/s6iBsBtyZb0FvUvOFLssAiEiYegOFuYiGy8mR4DDAfMDlSXoGc6sJnZkVfV7mkP8B1SnsYa4nL7WOcRUkJiKv8HracRbBS56F5RL04yMx2yAHNdQwZEPA3j/FGgl7fUt3H6UgFZQkqmkZ2V/qkfrpUuuYiblPKUL+RXgeXms5Y55UqWTyi3rCgy3MW3r9DZlLR4IuFj5AUKCbfdew94sOuX5XRZN8IPl2FvCaAkIJZkR9NKckZn5H7QiI0vLgJweDy9sitBwbbFCESw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u6kVsRgkxHtKfFlg+n4tDtl4KoqBdiG3UDkjJTt+N8A=;
 b=kVpRtAKVkQpHvyvEO4ZFMeA91kCvDusgLMn/iISgr15iezs6IUXouu8hwkK+Fi4pX+j6FcEghM59NQreLPq/KKIQI89lzvO/rfzNMi+1BDaXz138uv72ceE8edNK6rgYWYgT6hhiAAG5OG8IvOk8bys8XbluBQPfCZiNwk5KWX8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR04MB4016.eurprd04.prod.outlook.com (2603:10a6:803:4a::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.18; Wed, 20 Jul
 2022 10:29:46 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%8]) with mapi id 15.20.5438.023; Wed, 20 Jul 2022
 10:29:46 +0000
Message-ID: <af4bad94-c2f8-2e7d-b839-de79e0bfd289@theobroma-systems.com>
Date: Wed, 20 Jul 2022 12:29:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Providing Read/Write permission to "etc" in Read only
 Rootfile system #zeus #yocto #zeus
Content-Language: en-US
To: poornesh.g@mindteck.com, yocto@lists.yoctoproject.org
References: <r8dI.1658312244795452078.mtgZ@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <r8dI.1658312244795452078.mtgZ@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AM3PR05CA0108.eurprd05.prod.outlook.com
 (2603:10a6:207:1::34) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: caae583b-1c86-4403-1b4f-08da6a3ac4a6
X-MS-TrafficTypeDiagnostic: VI1PR04MB4016:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	75K4jxpSGQCpVWtrFi0v9HV7+GJz1ZdLNOweJQ/Y13Yca6S83KKK8drNQnszcx5kGiHNGoIDTqOjwZXtpYWVtCJBEG9vM/daJRz1p4eWHdHM36rYrC3MBOsPxpHIy0ftGZhXtBWs2s3T5x0xOV1ovr0YsaFcoc+XaZN0MO4P+UZBNGMoNMQmXURswG7dyrOcq3TdeKKccLmJOGIm0LR8UyT2T//22IyLSDBJ01PGG5sn0BOfCHx4I7GnHL3pnqVckLJrw1tL2zTr4aBXi6TM0VnO8FXanHrzpjrdQ85oRxQA/lMW0x0h4yWakR0tTOcBaooivrFr6H4mLRhC8hzuc3WvjYsVDJxcK6sr4SZoCa3v5ZjutfIgDbVydza+1giK5RDVVgRyv33zLn+nZUGSCNWVBzupSt9+/Lci3neK4wFJJU8fUhhj8cOKTiwHqCskVRDvJSZCn2vXrvFrH1cVd4bDVJKJIBez4wsRx1f3QlworIJwTQBgiBnKlp9I9fXEiBs6gcLDYojRBpOysZBZOD18MB1R3d8nEk/J+0oRmXlqhojXFfYw4HUCCSUUHZ+dRby/rX1Zpu+iookBLhI2tjTFAkmiynRSRCEzzmR9EsDwIRoMgOy88J+LZG8eKEZNlb84hOrnJWoVbzuEtwCiu8R3BMdGcvJbMIuZ8avjiU42PE10/+2vlo7ZA3TSUbQa94jVRnydNdyadis1lKFnDrkGMkK/F3jP9Q8HTK8+pqx9ZbwkHQT5sbUtgVh/mbgETLx/pvQGs6ENeAe3WidA+v2Ckd5UwIy3TC6Qdefrl0dCEhgRTiuhRyWi+55sLLn5UZmjGtrhfPekGFRkcAHC1UC/4eNH9m/XEDM6moIZyhU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(39840400004)(136003)(396003)(346002)(376002)(366004)(186003)(2616005)(31686004)(6512007)(26005)(53546011)(6506007)(86362001)(31696002)(38100700002)(66556008)(66476007)(2906002)(8936002)(8676002)(66946007)(41300700001)(478600001)(316002)(36756003)(5660300002)(44832011)(6486002)(966005)(4744005)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?4Kts+6rga7CRCu9jvGEfXpQMZgK+/m3eT53FOPr4iId/mQypXkhKgRmlRWpa?=
 =?us-ascii?Q?buanJ3BRQQ/thrmjm0gRAsQRhNwAXdJJpCbek06twsyRfjeQo37bZid59IBQ?=
 =?us-ascii?Q?bvpraHMJvir5fw/r0UN+gg9OOhA5h4JOuas5bLLG5IJm739awTby6PJLcawW?=
 =?us-ascii?Q?LsM/i87PoLGSt50TvqOpXSTDpnUMZ5itH+QggE29ULxR3OoiXsaFIpcegqL5?=
 =?us-ascii?Q?tdjtR98X8hQjjZsRa17X9ErUrbqKPr1C8dA5RemlviCVroOf3fF8sL17ms0/?=
 =?us-ascii?Q?N9GEc6F5YEqPRXjJVY7KCK1upU546+VUEzgjndiZJc8XSHM8U8Q7/gQHt0C3?=
 =?us-ascii?Q?n1IV23wGdwuaAySyuQMtn4ASvfnwrLnQllnWrtefrvDhe3H6mv1a5fbZCSBM?=
 =?us-ascii?Q?sWdqfcRZKLQQvAmKP2u6ihNBbqQSMaBbRPeLNOidCuAl3kcd/xqR8rtrk4QX?=
 =?us-ascii?Q?S6XI2rnv4/1BTGrIBQchqlN1Ii8k/mmGv2l1JH+XSa839NAAlqk3aY49YXpr?=
 =?us-ascii?Q?aFvtnJ4jrOed39GbMQt7wy+YsbwbOa6VehKrxrtIkUwjg2mq3XBE32jPmBci?=
 =?us-ascii?Q?Z2H2bU79UIu2HnDrkF+pl43jJfgqqq73Zc3jQF0lqSfYqYYZmHg5hs6ohJL2?=
 =?us-ascii?Q?RoZw86PnvHCFytv1EvmI3zn/yc0cWYegKCLf2SdG2XFO+K72evQxrdw9Abfr?=
 =?us-ascii?Q?kxsxlOTvsc3k0Z1xSdYOZrFUHslPeiKny9JB4ER+9Cl4TOso5nIh1Scop0MT?=
 =?us-ascii?Q?ma+8LKbHdTR/33ITR90Tr0FN5Y8ZJxMvXCruwSTw4ylAedXl+mKFpmkI2Qjf?=
 =?us-ascii?Q?kF4tNz23wUcOMg6MgcCFa9ZlXsSBC5CFn/zFv+RB0fBOJzJu81J2HGVn4etl?=
 =?us-ascii?Q?6BIy2jEq+PcnH3evnMk0wtPu6vVgRA1mn9167pRUcqTTYJunXCp587aV2siK?=
 =?us-ascii?Q?Ni66PQJhSC3lE+RNW7QpzN6ZPgfSgXxQpDXc+q9xNSEB/PLU5esg4t/pJK5S?=
 =?us-ascii?Q?JZaTHzPx1cC3L2J4rCjR7+eFh3PcDjKzqYxrV7rx4aZyTgfNEJ8ocP4PqnOv?=
 =?us-ascii?Q?bA2WgnlQIO126oriS/FF0WV8vjJL9T4H88/XFaQ8aH6hheQV0qK3vFgY3dZq?=
 =?us-ascii?Q?3EL1/o/8bbfkLckIdOKHyr36x4jASNhe/Q2Y6WDbx2SLpsK/40wIMvW9f3JX?=
 =?us-ascii?Q?JZtNr+CjtIkWdwU7jqmuwh3EVVDPjcj8NoBxsKuafFkvmxa6+aKTHr8V1VI1?=
 =?us-ascii?Q?RtC/bONvBqC66WHBPVALFpJgJ/vs7HYuuNPYGAo6BWI+VdnVHdXnuuTtgyji?=
 =?us-ascii?Q?uUSy4uZh1e31fn4c0cLUf1s4K3KN2d3WQ4Xy6TikeOgo9v4wF8ZsFZP4QnKL?=
 =?us-ascii?Q?jFlrjq0vdDy4dQPFPx9GgkxRRH3up4nI+dljKyTN5xAbgZNTGQEKQmXDbhAb?=
 =?us-ascii?Q?NU3dyLLYtgOkdA6XV85ZF+20S4X90frf4h5JIh/NSveDY05ceHRjHJORwfDK?=
 =?us-ascii?Q?IFFbHc9tlR7uHxlBd2Yl3NrKaCguj3rbZsU3P+E2A0rqCqP5Aq8PCw5zHvE7?=
 =?us-ascii?Q?ljf4udmVtwRUYVb0TA9FIvfmRfYAiWPNE/VskG4LpTtoVxajssep5mv7mOdj?=
 =?us-ascii?Q?AoMoWjSWNcULcjZrYLkGs24=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 caae583b-1c86-4403-1b4f-08da6a3ac4a6
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2022 10:29:46.7320
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ze6Ja0L+iq++9RnjtVGh9KMNmCrTt+x5FAX78TvA/puWjcD/j+hEcCX5aML0KwO3fIk06X2ImQiEZT8VkfAa4UZ0+T1riLkdDOY/iY+YQihyg8gI0jv9jDrVJ9LNAWVX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4016
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 10:29:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57594

Hi,

On 7/20/22 12:17, poornesh.g@mindteck.com wrote:
> Greetings !
>=20
> I am working on NXP's i.MX6UL SoC and I have successfully built a Read-on=
ly Rootfile system through Yocto.
> Now I am having a requirement of making only "/etc" as Read & Writable .
> So , Can any one suggest me the procedure for making only "/etc" director=
y as Read & Writable and by keeping rest (/usr , /lib , /bin , ..) as Read-=
only=C2=A0 through Yocto .
>=20

This seems like a good use for overlayfs-etc IMAGE_FEATURES? c.f.=20
https://docs.yoctoproject.org/ref-manual/features.html#image-features
See=20
https://docs.yoctoproject.org/ref-manual/classes.html#overlayfs-etc-bbclass=
=20
on how to configure it.

This seems to have been added in Kirkstone (4.0) release.

Cheers,
Quentin

