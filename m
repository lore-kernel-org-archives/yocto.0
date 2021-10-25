Return-Path: <kweihmann@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E621DC433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 08:11:20 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.56])
 by mx.groups.io with SMTP id smtpd.web11.29198.1635149477641990496
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 01:11:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=oMut6/o2;
 spf=pass (domain: outlook.com, ip: 40.92.91.56,
 mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OEcdz//227BES7AmM8ATaHtI999IzXs+wGkft7fQ6LRMZ+nkC9Y1sYxfd2rE9MlScZydlmROrkkynAZ6WpxLKnGds3w4MCtsX7s1xjl5kt5EXS1jghQ9Y2OHCEi0f1wt7hlPSJpZkyNxHT9V1+yhmsnMsV2kkerzMoGzhwVLxlY6Cex0flKBl7HUPMX7svRe1A1Ogpa4ilQFPZeFqyUjxY7YbyEUTyhPxnPxuf99NUU30zGd9eJvmZWxEI7MODugTnczbtG5QiSYnyfi5O9IsB7S1o8AS7WLNG2UDnWCQUIK6VTsQlIB3oXOvsSUJ5wIQQp2cHZMQw0qMHJCXyoX9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=efhfDQnuDiTR2VrmvxQVet4lIEZGsv1fp9YbOfH1F8k=;
 b=EBiu3NMBiQVCAIgeLDQtziSgqGRcCOp+otKSjftP1kquC5n3x+iCssaky1E1q9n3OqLvwOz35NmbfqMtq2942yzgjo59sIg4HiJpXKw+ow26TghrZhDPxLlMN6aOlLVkaxZcszoUjDulp24SuBMt+jxWRn00BtuiRw5wtQKc3qRTOqDxxrMPyyqOUdCCGGFgg3JhDBkrUSM+U+Kkj6hwpcxMoo+X3uFSxTMGbLc/0TrceX1t3Xj5jj6F+O9emyHx/TxvDjSUi0G5bErxLuaPiv+n08FPD8PwLWKjFsNaT54n2V1mGvu4eisTOCUbnntxF2CF6Q4v5I3HoSvC+Mo5vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=efhfDQnuDiTR2VrmvxQVet4lIEZGsv1fp9YbOfH1F8k=;
 b=oMut6/o2mFgyUfKXuUB3a4Cxtku8JoJeg9RJSn36r8a7kkQH9gqkiERfBp7foSQtsG4KXKT9uNCHDvazxMq/Y9d8esT3zd89EXzKp/dGtvl05mYyJTwcPDt4J/2JsioYpJeryuZv7ieuMRdoLlEKJzu4rFrxpsaQ3ag/IoAoMTqKrkcs5d1B55S8pZnCoLcYbGtOk93iESc48QGtEmIpGd5O+aZWfxdc0b5XZXLO7prjvTkTCbP38ll3ox8F4odA2NSqgPpEbyZPreeyV6JcbOvlY3mpC7JfLRllKSzO7kjlIGf0TrHoUFzdbENPeyuyS1uZVNwcbBRnotd2Ev5D9A==
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com (2603:10a6:20b:284::24)
 by AM0PR09MB2593.eurprd09.prod.outlook.com (2603:10a6:208:df::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Mon, 25 Oct
 2021 08:11:15 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::7c6f:9b99:3d00:f710%4]) with mapi id 15.20.4628.020; Mon, 25 Oct 2021
 08:11:15 +0000
Subject: Re: [yocto] Build Ubuntu Distro #ubuntu #distro
To: keyurthumar0402@gmail.com, yocto@lists.yoctoproject.org
References: <P54d.1635147697156004840.i2KM@lists.yoctoproject.org>
From: Konrad Weihmann <kweihmann@outlook.com>
Message-ID: 
 <AM9PR09MB46428B93DC71896AEF63A8E9A8839@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Mon, 25 Oct 2021 10:11:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <P54d.1635147697156004840.i2KM@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-TMN: [kd49xxnUmBorCirUoeYQYFUE72Q8BMM0aAy5M00mmgF66H1ddaTpecqYgAgMihtB]
X-ClientProxiedBy: AM4PR0701CA0040.eurprd07.prod.outlook.com
 (2603:10a6:200:42::50) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
X-Microsoft-Original-Message-ID: 
 <4068701b-f47f-5efa-52f8-543c9e9e580e@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2a02:3103:205c:200:bed3:df7f:f488:16a2]
 (2a02:3103:205c:200:bed3:df7f:f488:16a2) by
 AM4PR0701CA0040.eurprd07.prod.outlook.com (2603:10a6:200:42::50) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.10 via Frontend
 Transport; Mon, 25 Oct 2021 08:11:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb9ccf41-61da-4f15-e6b6-08d9978f03e1
X-MS-TrafficTypeDiagnostic: AM0PR09MB2593:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	v3cNn/qgeqT7IRNV2l7ENaMBOZyF0EXmHUVzCwMd31MnNKwR56g67ubTd3Tkst1MtUsW42PymbHo3Sp7TWNMyETwTDc6j3IarSaoVUCtvV8Z0733dXHlLikRof0J9DQKaziFOUTwgf+QaRVxxc3J4vWd1LyCd0wqgkxcN8RbrSGk7m/YQFje5uyfqM3zSW14CXk/mXG6tw/nR3PzfbX/ndrDTKruR1booq95ReMiMRpZpHTyC8dlAG5dVhjWMasOaUEmiu4Hd0Tl/+toDRAnJe8kXikj6MCS5PLyghpBYWRi3nczks3cd4ZISx265RagNHqwL66Zg9T1oNioKh+jE4WfC+KGANqXudCXcsV5lOdzhjRc7EQJPAJK5LsiZ2acnVxq+9IBOfHpIRYa9HrvBDKb4NebhezAAKYn8Tj4/RHEB8TKT8PsZPsDXYHWpCTRps7Q5vFADsee24ckqf8bDs3wemQmruVA7Vz4fAYZbCsa941ggndsX6/uGpPmwywIrqDDQn8XOswcdxxZbeeZo2NQZp6uzr7mk+C0ccKazgi1fX2J3I/t/UUO/r5Pa9HX1hRoMJ35vLfqO3hgRyePvA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	Mf0sQbEAsRZDmvJIJEkwLlF1m3eVHkPmGQ2ZP9cK3nLph+cpeCM0ssxCFKYtsZvXat1C7MMxyNhWs/dOGzQJEfgLysFKISUkgpqIO1PS3ztlFYd//M64fKsBQu+yePUvoSvFsypPdySzB7wyqVX4RKAloKXx6nBbCEznxUifNigAPT9n+oho6neBikdTQHOma+QeE/U/vFE2SMLXaXmbx8rKNHQp413GDVAemOo1aaaMxRaAxO2e7ZnY9JCtqlkuM325RRctEyKt9Y1PS7HIX/gxexKN9rbCjiHrSKNfxMPvQREeXZmnCks8SVgQGKUW24kkce2lYeWN8axxPrDvN2tq/Vi+fvVlIjG3v7OVIx1CEgv2kBf3VT7cTTzpH+zlopnrrGNQor3wjXOXtIjNq9DP5dcf1q8MwrY2b8h+tN0ZHzo/vDsrGUvhk5mW6+t9F1OvNFwyBoviGV3QxtHW+wfCygtfhsOhDZrgx5e/auij18x4haa93EwbwpwwVh7l/V9o8/9OJmbdkcgORQ6/av7YzVRfXHuupPij8C4MxxbaRM0MiadLjduypW/eN+XaDoqpfesY3O+j6IhOjs9GRdiYvqgWABcOZJKkMzEuJ2KOUeW9sPqe+a5Mu8V+XP48ZJ47V158lSp179HDdLXHKz6PpqC3TevTYqCpyTu7/Celb3o4t/CqjoEmzLYOrlhBv4S/OH5ooaHiaM4WVw+vJ4hY/dTaG1OL6VhjSFUzAl6wdx3FnbXwAJoTtRd3x4nYJwkHZAtDyviaYMPGvvGTQQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cb9ccf41-61da-4f15-e6b6-08d9978f03e1
X-MS-Exchange-CrossTenant-AuthSource: AM9PR09MB4642.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2021 08:11:15.3179
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR09MB2593
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 08:11:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55132

No there isn't - with the yocto project you can build your own 
distribution not mimic other already available distributions.

If you want to build Ubuntu you have to ask canonical.

On 25.10.21 09:41, keyurthumar0402@gmail.com wrote:
> I want to build ubuntu distro using yocto.
> 
> Is there a way for that ?
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55131): https://lists.yoctoproject.org/g/yocto/message/55131
> Mute This Topic: https://lists.yoctoproject.org/mt/86572273/3647476
> Mute #ubuntu:https://lists.yoctoproject.org/g/yocto/mutehashtag/ubuntu
> Mute #distro:https://lists.yoctoproject.org/g/yocto/mutehashtag/distro
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [kweihmann@outlook.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

