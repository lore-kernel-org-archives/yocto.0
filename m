Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D2E1C4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 13:41:38 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.48])
 by mx.groups.io with SMTP id smtpd.web11.31042.1698932493849456212
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 06:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=g6moIhnY;
 spf=pass (domain: navimatix.de, ip: 40.107.6.48, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J5lilDG/0XUvfn6yhVC4IzVlfB/qwbWZDYPhTxiOdjaD6f18/Efv7QIfm2lw+FSdF+7fOxUcawxJ+akXlIzl3HEeQqtAanWquL3/4n1XpPJexY8aINv3uAzpxDbfpu1sr3OQFB3HIy1wBUV9LtVT4JHl950EQJlr+IckIvN7Q006nT+mhtHoZ670OC8D3yh++puHchoHoZE+o6oceNwM+FvjaY3QRkAICxllk/LlSnqWjuQ/5hb9Q2hP6Xo+5vyy/d4wTbU1OqbiIgKPVbeCnOihCY00qU4bBUr/QmuGsgub+FrGP4/27cjAKQ0DFb2lzx8bOYtvcwqT80V25CqLPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GyhAFOA1lFFXm9S70NGHSyuzFJv0By463mb+gr8/Cb0=;
 b=oYpxAibmGqIfWxbppDj0uYD8gf7m4BGCZMhTdi21ATU7AlhmKAhEe0rtk5qJ7ujQhZbQ+JPnXP+xcLwOTiuEP0Q5XVrtiVDpAXHUNTb5b2GM+i65FCqOQDc/FpFM+VdSyI9hNqiygPegi4vK268ULSQnawNGMmSgjiS5sGh+TjweYNMMW1VoveDudLvi5IiHEvd+WXCjZH8J/sbwQJnRujB0WfijeGIB2v/cZoGuiytsRhQZRwWLqqzT51W2QVUk3nE0iwFKj90K3MgxZlN+/R+sm+ojp+BcDLelotQE97eoQ+OTTsDEajws65ZUrwRHmoO8w9xmc2bZhI5RH51ZTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GyhAFOA1lFFXm9S70NGHSyuzFJv0By463mb+gr8/Cb0=;
 b=g6moIhnYChm6GEeQd+hF5/F6pZDb/UhdG2Nos7DZnOac3fBDM9rJ2NTvGM7I8A//VGX1UH8p79y2xsIPxZB9BwhCHXhLYozB3xY3ftxulL/r2ZG/lWLkm0zF9rVznA6EgV9fr5AL+M/8yDZ1mP7yP0CwDMPVR8xhRw+FGdYLDW0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26) by PR3PR01MB6873.eurprd01.prod.exchangelabs.com
 (2603:10a6:102:70::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.29; Thu, 2 Nov
 2023 13:41:30 +0000
Received: from VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::7242:3e9c:3c24:bd10]) by
 VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 ([fe80::7242:3e9c:3c24:bd10%6]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 13:41:30 +0000
Message-ID: <febe1d82-6b1b-4e44-a8ff-cd6ae92e7cd3@navimatix.de>
Date: Thu, 2 Nov 2023 14:41:27 +0100
User-Agent: Mozilla Thunderbird
To: yocto@lists.yoctoproject.org
Content-Language: en-US, de-DE
From: =?UTF-8?Q?J=C3=B6rg_Sommer?= <joerg.sommer@navimatix.de>
Subject: Call bitbake while bitbake is running
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0285.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:84::10) To VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:5::26)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR0102MB3136:EE_|PR3PR01MB6873:EE_
X-MS-Office365-Filtering-Correlation-Id: dd2e0451-00ca-4e6c-c058-08dbdba96b2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	y2PymidBEQNcQbnEFfJviss6O87QECdJ/yAg2jDY1ndiNPsfT16NkEG+0Yk/w58gvCFV+dcWs7PlljFClgwcnJp4LMQYaTLtAoGPZl1EAcYzDwRi7zHnx6FyxrFj+/JhT2ZJMA/wk0A8LS8+LOBa9sh3r+bz4kjQfty7uUY4M+GjSIXE+4s03RPubJrlsmqwpqdHVqKFH8MRlascaCGZ1CiDsOMuUscCmN7SNZKnzXZJ7iORMyAbXyMFV2iOCdxBYSegZEVRv8/sCb9zXl+A8wzkG+dWPwl34C5p0WcIgju0IVKrInzF6Po026R411/FODg47L1h0rownLhitQFTk39Uh0zDqI0SE3tyYAzbRKVfhGdTn8sS7jRBZxta+XVxO5HPCpln595voTiWvAyR94Y7B4IW7BXMQK/VlJ4hHDzijCakUN/QDmZ0cvfkeRzi2oavIvtiTO3RvduY3kNUaHhNguWAMKOnqWDh7J9TxVr+9bSSLznRRzxeeJqqdyHCuFyjzfg/xrTaAVS6NZRUOirqy73MPik/CUhO9kCKzTuMuuc/fZfal0eeM/2WaG0Tg5tA2nxtKIZaeYvGXiJwqdyMoJ66opjUml0GfACBJc03zLywBVqM+WSqWHlGi1Ss
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0102MB3136.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(366004)(346002)(376002)(39840400004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6666004)(478600001)(6486002)(36756003)(2616005)(31696002)(86362001)(38100700002)(6512007)(26005)(6506007)(66556008)(66476007)(316002)(41300700001)(6916009)(66946007)(5660300002)(8676002)(8936002)(31686004)(4744005)(2906002)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?+6UZCkrojw5Jm3Gv1f7XcSpx7a8MP/O94AHGwMYVtMx7GADFNs8RpCkVzb9s?=
 =?us-ascii?Q?HkgnIOtzHMXFjBhl9m5XYPQA6f4zJxAeufhikAqZjoVZv1s80/RqZr06L0ls?=
 =?us-ascii?Q?5TP7ZRvPEwQj91Cmo4komEj3D9L47StZnvf4LDc69yS3MXW4kaSt4sZzZ7Jf?=
 =?us-ascii?Q?Eng13O2hRp0/2BooId65qIx/XOlVlYXDIAifEE8kc//bGKNE1vla4R/WEvUs?=
 =?us-ascii?Q?uVZpPOTafoMOM0VhYazY2ZkZGVkjxbnYEOH1GqoN0dZ7rS2HZbGDV6jPAuW7?=
 =?us-ascii?Q?H4f3BjizElk0PXRNvUMxowNAGBBnWUu+xnRm85jo1hebG2ajnOfAeQyAM2Pd?=
 =?us-ascii?Q?zdDzWOkqV8lrjBRAtHpi/vrROmpvSwSz0b1haycfnFoP5c9BfQeHF0xaCV5u?=
 =?us-ascii?Q?ucwYuMCoVo/WO94SmGU9fAEvi6UZgvno/SiAbAToUAnt3K650MFNSbKEHBsS?=
 =?us-ascii?Q?APn0GfUg0m3O26wGm5yJDcmvrLy3RCD4LIpsh8+RRV+8TqHen0cgtLOzyWzQ?=
 =?us-ascii?Q?6cRXIPdHkiIuiZY1JfQ3tPU/3LVNLUbKKrg8ux/YpYjPFzmNgIMfhtjnttzs?=
 =?us-ascii?Q?ClN3VfbfWAbPw92vuRtbjQt+MD3ycBeEiRxNQiSg8Yi7915Io2LkTZvMWd8K?=
 =?us-ascii?Q?irxxQkHO16V95Pwxy3pr76uPUeGv6V1G9zzPJFVuUTXXu2az9JPT0soPSmxb?=
 =?us-ascii?Q?1XzhcUCz/DUDsC9eJuPnv4KP4nwQ1YsTm3cZgOOKcBI/1S+4xQt9mYXM7d71?=
 =?us-ascii?Q?eKSPoSgkc4jUP1kYxIu5eCtgLI6cIAQFHAsj32FIY2UUeR8M/jKskRzaJhHR?=
 =?us-ascii?Q?9TgCKe1PBIF//RwWUfpFcD//lRw7vKXho6633fX+KGMjPlFt2s1La3PLGEp6?=
 =?us-ascii?Q?BcVdaAytsWmY1rijx6MgVMWy03MFUMnFPpvS0SGgzK2X8E9J16+sOhtO9TvF?=
 =?us-ascii?Q?PXcPT1w24NZVUnP6R3rLRK7PT9AgOB7u0P7a0fxgo/dayLcW6SuPe64TOhFn?=
 =?us-ascii?Q?eyh65xUYCB8SqQNjZACgDsk9CPC1M12LBcXQwJXKjplOt38MgmUFW9sD9eRH?=
 =?us-ascii?Q?23+K4AuBdH5lnokx0QZugcCoC0P4D/kqqEAPIZrsvKQpitF9vCtCAcQRbdN/?=
 =?us-ascii?Q?pWMfahna08+CAYK8xm3uosipGqD5m/zv9eHNtnwBMb4+iiNvGgQkSc5pwfhS?=
 =?us-ascii?Q?VjHHvUteZzJWTrycquGa5vn8ZWCMITLnYsz0WO2cN92DM6/oiGfEJmlcxdtc?=
 =?us-ascii?Q?LxhaTR7AJj8Z3aHEiZvwWd+luiBgIhlZVZNNk7AP06H2zMAjZQrNlOelgdNR?=
 =?us-ascii?Q?650KK92q5iESS7lK4eWebBIGoGROqjJjgXkJcQRaVb12mFy4tFJRY5Jl608G?=
 =?us-ascii?Q?7auvRNqhHNDOonCAQydWfHFIT1u9KJDLaPQgm39/hmN5BQLlcEFNxa3OefNM?=
 =?us-ascii?Q?V9K7cjUc15TdLTxSz3ABbUDL8iQQPu1VNvAHijBHyxqqQvtZIORe9gwVHNXt?=
 =?us-ascii?Q?LWoloyAd7VfX1okDArn7JoeJ5FYx1pc7EFkqwYWqJPM9YtFAizmWhGEKTOSh?=
 =?us-ascii?Q?i9iQ1x/lIT0MURSqYgCuGLrVqlN5U/QHSGRRvbn/06mQZTW1n82g+mTxEnyN?=
 =?us-ascii?Q?iA=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: dd2e0451-00ca-4e6c-c058-08dbdba96b2a
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0102MB3136.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 13:41:30.0662
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nNcsvOcVlPwaSekmw0UDd2i3a13T1qFfujA16QUOJugsWJgqgvS2xiPucyLj4n5JJ6YT0LUpa2qtmoOGUEqqrurZwZZrBMttxFxp5qK99Ek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR01MB6873
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 13:41:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61577

Hi,

is it possible to run bitbake while bitbake is running? I'm starting
`bitbake -c menuconfig virtual/kernel` and would like to call
`diffconfig` while I'm doing configuration. The best would be from the
other window of tmux. Is this possible?

Kind regards

J=C3=B6rg Sommer
--=20
Navimatix GmbH
Tatzendpromenade 2
D-07745 Jena
Gesch=C3=A4ftsf=C3=BChrer: Steffen Sp=C3=A4the, Jan Rommeley
Registergericht: Amtsgericht Jena, HRB 501480

