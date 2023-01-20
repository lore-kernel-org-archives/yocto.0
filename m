Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CF16C27C7C
	for <webhook@archiver.kernel.org>; Fri, 20 Jan 2023 13:35:08 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.64])
 by mx.groups.io with SMTP id smtpd.web11.74099.1674221703520637087
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Jan 2023 05:35:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=d0pVfucg;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.64, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UWHmYKnC5sUYStSVRTz9QhzO7Qrnf+oQsfszyLxB4lPtUMrZuTL0T/KQj4GqqtLfP++3DHrTl06kYYyU25Hg3puWS+JFSrF6Eh322+X9WV5Zz3oo+zexyWVpz6vVH+EDVQqAhITCTXtWpT7Jdl+ZtqzSgm4OmSqDWQiOcoKY5JzbHjvP9XsLCGzTrCfH2+noO47R7gBIO+4OuOTH5OlCg518J8w2A1+ruoYjMUSCIFnNL3d7AHdNfjcAvSOcvzAZq0KcJcaRTR9GO39gbYTw0tzi8NxyEI+D1eLW1jJd3iXkg/MwajfU6PtnnAac2Wk655VMjPVCss5fwsJKinblRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O1SFdb34bG444BPXKifgxP+j7HxXrXa8JhR3q5V6V/s=;
 b=Mz+82EZSP69SXPrlOkUM8Eti4TIEiKcKE5/DQ7vAUpYrRb8dAdci09lfiLn9FGhxrxB3LggVwCWsXnJLR6wbcn4jP+m7YywCutcbYfYCN56mhO69FH66Taav4Io4tTLg9+OC8/ZP9R5MfSweP1fZdA4rQx6xU+6JdekVSvZpqcCoqNhUJPdQBp+M3PzN4ltIv7Vu1LqzCuc+gsv/XP2atSVkqGB9hujUXhMfxo4HaWvQVIeMkurKnE8ilswL2QdiLnkVHFcSB7zLr3BoxpZD/OQeYZfHN3/zR/cv/QVewOIeAAUDTy0ez2gden/RcRf2pW88iGztA5BVaC0zZcgQsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O1SFdb34bG444BPXKifgxP+j7HxXrXa8JhR3q5V6V/s=;
 b=d0pVfucgOz0R/MJWvkQXYHvRI5Vh8koCz0jwD0xMDZO6WAhGpNuXYOW7He0AD3Pn4yRnGW/I7iljscSjR3tDDb5lQ8htHgms0/mGAPkwJ7qBJsFOhsGSN85RpaWsAQAWuMesUF6f/BiDF5cSHUVgUwJ+LrACkKSxWTo0WrHu4Gc4RHKGCrZ4keyEqrCgIL7m833JFOsvZJeKOdkQZoc3wp5Vs2EJc73CQi88rvXtBeDWR+ZGTOaCzA3JvYRdPUr+ye3c1x/GdcZgKEojCBYgET57uOSs5YF+hVOkxnTzCw4pnzrwkwUxTfxfHfSnQFC/aMv+xr+qc4oW//ew182FUA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM9PR04MB8488.eurprd04.prod.outlook.com (2603:10a6:20b:41b::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 13:34:58 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::24d3:14a5:eeda:6cdd%4]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 13:34:58 +0000
Message-ID: <8e1a8e09-1dfb-c78a-6220-141a4058fe5b@theobroma-systems.com>
Date: Fri, 20 Jan 2023 14:34:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [yocto] SSTATE_DIR by MACHINE target?
Content-Language: en-US
To: mattwood2000@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
References: <CADjezmbVGxzeob6BGbsOUW2VMfUMjVogH85nL16zcSdncc7QqQ@mail.gmail.com>
 <8c58b088-391e-f150-9def-ec996c2a2f3a@theobroma-systems.com>
 <CADjezmb8JMq10_buR67F2y=Qpzfk91Nk1ankYH_9mJJ2-9WSqg@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CADjezmb8JMq10_buR67F2y=Qpzfk91Nk1ankYH_9mJJ2-9WSqg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MM0P280CA0031.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:190:b::19) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM9PR04MB8488:EE_
X-MS-Office365-Filtering-Correlation-Id: 076d98a1-d882-4638-696e-08dafaeb1f7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vWXPyVQd5OTfxqvePOJzPxAHW91rEh6U+iKvdpT9XhNbypwBWmYwMJK7kKOHswWUAIsdPsyFiZMsD9nakd9OnQMlzKGbSmaUXbS5XUb3UFZOLMgm6ucy436t40sBguHgo6CDhdAG8zcjgPTx/pRL8h6dIOv7gqurwtRhOyQ7PXFJwIsBMUGUz8mSQ38NND0NM1eR3gkaNbk/gJh8I8T37/p9ShZH/fPiea769uKasp3C4KID84k+CNx5seGHs58XE+J9mUDPUMQLjcVWq0KdplBkVWg4CLsjMcBQlpoZHoPBsbwjyQmxJ/sCIOx08zy9hn4nrJWazVHmW95Pur78yhM5VHKkqmsGPlHOpSO4qVNFKz9fJc4olSv/7ON1qnvJpcYsWCXqd0p+XSj47V5K2Ug3MmyBblg6jQCkxDK/jv5FYbmBwZN/+zuZSma9xpBohNGEX5OH9FAy/ZDuI3UxdMawsAVrAk6WX0vwiAZ9rlwT1pohhmjnMhVYRoxolGa7wz8gwuN0nMqJ9yFi+ztTmzqsAKzGPr+AuwW1UPHsi+Aqp7aTHOnTbnbNrQ8hRz/ZNdep++eOKZXHUXHecMQRNxSc1laOuj9kP2Hue65gPcWEJ0wh5e+zqdcOJjWLGBpCD6PkGLPm49sVZrLrjsTAMUOUNFyQARqUNuCxfdWLmWORWuOm6z9r1Wm2SrY672mygxHTqp5VNXp8AQkcPsNduQfPr0Tzcq9oI7Kxm/M0A9Y=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39850400004)(136003)(366004)(376002)(396003)(346002)(451199015)(6506007)(478600001)(53546011)(6486002)(31686004)(8676002)(66946007)(6916009)(316002)(66476007)(6512007)(26005)(186003)(66556008)(4326008)(8936002)(5660300002)(2616005)(36756003)(41300700001)(2906002)(44832011)(86362001)(38100700002)(31696002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?M0poUmRYZnZnVU9uRDVVVUUxbGVXMFNYdFVHWXk2MjArYjlNL3ZZQlpISlBT?=
 =?utf-8?B?VitsUkFVYi9JMXFrSkVzWVBhdzN4SEpYdmtSaWdtNXFBNldSaGZUcHlwVzk3?=
 =?utf-8?B?TytjSS9WS2wrZGhaT2h3MnRqcUo3SzBYUFpWWmtQS3puVVhGV0lEMmpkOXI2?=
 =?utf-8?B?OFBsMytoTXV6aGJySkhRdktKL1BiMjVXZFBFVDA5SUI1cXYvYXJkRWhwY0Vq?=
 =?utf-8?B?NnpSQUhzd0lNOTB4dCtURTBVSXY3TDE4TVRma0E4OVFvRmsvbWtBZGdPUW9r?=
 =?utf-8?B?VDloSktYbmt5SThscW45N0EwK2hWdStyVkV6YU1XYUs2MzVJUU8zd0h6UXky?=
 =?utf-8?B?UDl6NXdUQXdRL2pNakJ1ZCtTUUl4LzZMZGxlclRSOFYwL01tbTlGOXUzUmhk?=
 =?utf-8?B?QUJTUHpKZ3dvSStPa2hDWS9mZkVkR3VlbTJYeW03dUdaeXlMbVFhMjFXY1da?=
 =?utf-8?B?TGlqaDBDd1JFbnRqMHFQQnZMcTRFMFRlWUFXdkZXUTVXa3NhRUQrRHlObi9E?=
 =?utf-8?B?M2tGb09McFgrZW5oUkVKQ2NObE8wbTZtNXZqeDJKQlFZTFVrUTZnSmFiT1Aw?=
 =?utf-8?B?MjZ3dEV2WFk5S0RuWU0zQ0dwbktFdjRXS0ZQajdWSU00YW90c05IQzIrRzg5?=
 =?utf-8?B?SDJ2em54NFU2S0NrQWdGakNRRElNZUhqTjJSOTJLaVJEbm05c0FPOFRoNzBr?=
 =?utf-8?B?Tmd6T09MM0RrWk93V3poOGFDMjdRa3Y4NlNmZ0RWMlFHVzhqcjArZUU3S2VV?=
 =?utf-8?B?ZG0wRDZ2cEc0VndCbXdlcytvbUdRS1lOakFzZk1jV2FSeVJxMG1xSVprUDEr?=
 =?utf-8?B?b3ZyNjFIL1gzK1VGbEttVUROT1RJQWN6TW80UkNzYml2NEhnQ1VRRmtaclFv?=
 =?utf-8?B?NS84RFZpbXFqUHBFRUhBb0FRTU9BU1h5Y3AxR1FjQ0JkUWV5VUxLTnU4d0hy?=
 =?utf-8?B?TlRLNjNhYTgyaGJBMGQ4SlMrOTBOY2VPeW9Bc0c2eWZwKzUwWldweC93ZFRw?=
 =?utf-8?B?dkU2enRrZ0wxMUxsRVFLVXVjNkVtOThMemxxdUFMSk81WjZmREl1bXo1T1pp?=
 =?utf-8?B?RUZqdTBYQWk4NTEzWEFJOGhleGZiaUFMd3luQzlHUlNxczVmR0k5cDFTMzhK?=
 =?utf-8?B?ckFoVDcyTDcrSS9NSmRSc20wM0MzZDZuK0k0TVduK3d6OUtxNjZhcEs5UTF1?=
 =?utf-8?B?RXhCUUZNQjZvLytoUlY2Q2pqS1dma3ZqTkt5Rm8wRzJnOFpobll4MXpOZDlu?=
 =?utf-8?B?NXhaQ3B3aWRRanFsMFc5am9ld094LzY4ckFPYTIyNktxdjFpVElPK21Ua0xG?=
 =?utf-8?B?RWNwRlZQdEtlMCsxNS8vZzcrSy8zL1FNdjF5eEpLRWh0VjdSVWFUaW5DQTVl?=
 =?utf-8?B?YVZuUTllWDRzSFBPT0w5a011VGxyWS8rT09idXhqc3F3MytCaXdFWGZobW5x?=
 =?utf-8?B?aWVhZjVXeDRBbEk0S2ZSbTJ3ZzMyOG1wdTdyRWxlNDhnTHNXZjZ4RDVubjht?=
 =?utf-8?B?N1RaUWN2Qi9wOXY0V2srcDJYdEo2aWxYVFB2bjVkZFFPalNGbjViN1BaVTdz?=
 =?utf-8?B?ajBxUk9UY0tFUG9KK0tOSU50VUlBZHRZNkdyVjA3UDJLWElXbDNpazRVTGtM?=
 =?utf-8?B?TU4wbTlPSFlZOUJGcUw0SnE5TDFWMGNlTEdnRDV0OXlyMVlnbWZaWUZXZG44?=
 =?utf-8?B?U0xZd2M2eFFsQUJFdFE5YXBXUnY1c0FPM2RhbmxGTmVRNDZTcWVsdnlid3RE?=
 =?utf-8?B?MzBHelU3aERkbUgxMW5JNGEwbXh0aFFUL1JwN0prclo4TmhTU0FneDhQZ3Z6?=
 =?utf-8?B?Rk1HSnNNZVRsaHR0eExCMlloY1NDeEZVWlNrcTkwSGtXUmtFUzBzSXVSSmlx?=
 =?utf-8?B?WGtPWjlyaEMrOUVHRFZoa1JHK2hHM2EwSUhxeU5XaWpwRGpCTTJCa2h2am1x?=
 =?utf-8?B?c3A3a3hjYVMvWXUvWGZianV1ejI2anN4UTdZOGpwMGVoa3VmbDAvdThpMmRL?=
 =?utf-8?B?dkdUUmtCeFFEVjBQTXUwNWRvYzluWGtyUUYyQmwwbHNuVDNMMHE3emx6OW5Q?=
 =?utf-8?B?VWhLbWU0eEZBeTJhaElsKzZESzl2blNlUnpwelFhdUxpNC96cjdJQVptMGdx?=
 =?utf-8?B?cjhDaS85UzhpOHZOTk9HYU5iQUF4cHFiQTR6N3p3RGxvZ3dIMEZOVnJNNitE?=
 =?utf-8?Q?rPL3vVK8lg/tL9g12EfhFe4=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 076d98a1-d882-4638-696e-08dafaeb1f7a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 13:34:58.0127
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KxTTpeUhwDZRc206Hd31tJEaRGrsgbnEhUey81XhG53R/xRvYBRPKMJttVspwATiuHZx4vrYr/X+nC2VeRmirfhAvtlRck408Zt4X8UXpGXUbnb1B6v9x9UFX6LSL6Vs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8488
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Jan 2023 13:35:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59027

Hi Matt,

On 1/20/23 14:23, mattwood2000@gmail.com wrote:
> Hi Quentin,
> 
> I work with many different hardware platforms and architectures.  I keep my
> SSTATE cache on a NAS drive and I was hoping to set up a site.conf that
> would organize the full build  SSTATE cache by architecture.  It sounds
> like this isn't exactly possible.
> 

Except because of a personal preference of having things spatially 
separated, it doesn't make much sense to me. When you're building for 
multiple machines, some sstate-cache is shared. Such is the case of 
native recipes, but also some target architecture-specific recipes (e.g. 
something that is built for cortex-a55 cpu, will be reused for all 
machines based on this cpu). So it actually makes a lot of sense to 
share as much as possible between all your machines so that your builds 
are faster, feeding from other machines' builds, and you even save some 
space on your NAS.

> I tried it and the SSTATE directory is still created in the default
> location in the build directory instead of on my mount point.  I guess this
> is the native SSTATE you are referring to.
> 

You could have a .conf file specific to each machine and use it. Or also 
have this SSTATE_DIR variable directly in your machine.conf file. But 
again, I don't think there's much benefit in doing that :/

Cheers,
Quentin

