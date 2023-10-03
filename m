Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C512BE75445
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:29:58 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.89])
 by mx.groups.io with SMTP id smtpd.web10.105216.1696328994814079732
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:29:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=amr927kK;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.89, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KTOr42N5VR9FBH94QBmR4qhXMT/sVHxmphzZtW+YJti7T65DR25Lyy3kLUktPHaW+E8ZwkT3UoJWyujytY0iT4kLJ7Qt8bze0sRkP/fw3QXFrLnhkIIsY9DhwF6zejYuWQQI6UbNHkrY7TKc4d6Q9IK5+FKxMnn5SZmvkgMWkcV9mjRyiwlPRlot0HuTM9ZlpU2jIYRyDMTguCL6dCm5FS16usb7aAiYbHzmtGcsNdGtqKtGPB9ZqaYPM2Ohm7YlC0ba7ZQLirx4j85EazwK5UFSqTKA28CbUjuKcVvm0K7t+7oINgry4GkgDD8rI4VIoLwV2WfS75CiMq2PaRPurg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k2+RHeS70wtegPCHkM7eMshafRk5q9ov6E2PSfemoHQ=;
 b=YnZkE9Qt3JzFYgAVlvjEQwj2nvRu8prkMeiPkJF4LWyK4LrCazps9U9scxek5uemK17MyKr2xfpc6wMl+rlV86GuBGAviRCsL87yYMhspTERdcQbQ3G0BwTEfE6zWTikAVO3xtF1QUYVHxlx2ylZSwfwI586hjIGkUpRm/KXZdVUL7v3ELk3V+bvtlhJX+k3madpNdcSBtccH9O1vBQyV2/L1SsHHLpkUHlroEjlsf44v7rxW6453UbTPcYKqIDw2P6inDBVfeNZTVcj74S7y8lztDPbK/q+kedLwYj5ueM2acHPSCCHhFcttdppzFkaVN2KwH7G+ZZS3KtauqPXKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k2+RHeS70wtegPCHkM7eMshafRk5q9ov6E2PSfemoHQ=;
 b=amr927kKkns4Wg8ithE1mWFtcGvQy8AHaFmBSAgNv+1qjrWE0icrIuininsGvAZEHNNA2Pv9qDCk2+QRCn+y+RT/kgtKmO9K9T9+PzJ4v7tHy0UJ2RDhx1wasgA1ya6cBgNYHMtzfwnhVixV8NzTkkM4e2svJbCdg1DKLkBpRFSfLnsYv2Nz9xewlG9ETnVzBhS97Etdap6wKkQuDAfdXKgcanLOx+AUbkZ/1nRBCrXZHcAEMr30VsCzXo82D14HzdAE763yb/trXwavxe3lkqCLNNkmcN9FObG/j3YKS0FqjXDTESmnB06Z8NDAsNC+zc5jAQBVEcE5ghwYIj5+uw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB9404.eurprd04.prod.outlook.com (2603:10a6:10:368::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 10:29:51 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:29:51 +0000
Message-ID: <69c65b40-f068-a712-be50-a6ad06b46e62@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:29:49 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip] [PATCH] machine include files use weak
 defaults
Content-Language: en-US
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20231003023429.195167-1-anthony.t.davies@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003023429.195167-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0004.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::9) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB9404:EE_
X-MS-Office365-Filtering-Correlation-Id: 20a1a63e-fce5-4c03-df7d-08dbc3fbad03
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0z37sUtE4jRnBQU9JM/SOSMELYRsHQMwMYlvC1lBfndH+Da8NCc3u1PRduNubrliTQAMoufouo1qe2piUFh8EI6xAwn7I+GZOctSlIOGx1RYYnSeSn2M1CjaX86n0gy6drGwEWVe6ci1DEUq54ZIXYO/irdssDgUXtnSv797bxUoC/SvBX98a2T65Gt0BgsCsnkYUo49ytLU/DOIqnK4ZwG87c6huifZNp1O34rDMbkoXneKINa5zSeol7mi//4yzwpyCD8OefHZh9St8WgTGe0wRM+vkwAWArh6RYoU9IjwskkKeC9rk9orOtThwQQ91ls8JXebPBVPvoc3ecrfefxRBMYO5Li0/etQ7tKJDYBBeRVtc+DpelR1y690Lot21jjdApkqIdZLBjoWM8DuT7ChpAiUFbCfgH39/1dyArhivpFTIvMR4MR6sHhNZJF4RewLB4DyK5l2MIGuIBxKDrA9wfOWj1fg+Rw9udiRmJOHnVZXAP+CETI2FQ9J83l5k9LUqLNq8MffiC3QyPVsD1/JE7ZdsFIdyQ9GksSETKIkqF7gntEy1vNjf4uImLgZX29TqtQ3nlwxZ1GKuXpU1fwr5cNr+rf3hdm+6BDz5QdYQj3G1Wh9TKTPW/lt/tOVqCClmroli4LhgquZfyJ0xQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(376002)(366004)(346002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(8936002)(2906002)(31686004)(44832011)(5660300002)(4326008)(316002)(8676002)(2616005)(36756003)(41300700001)(66556008)(66946007)(66476007)(478600001)(6486002)(966005)(53546011)(31696002)(38100700002)(6506007)(6512007)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NUFwOUVQb3d0MHVLdmp1b3JWb2Q0QWRxTTFkWE1EcStmNmN5N1BaS3VDUjIy?=
 =?utf-8?B?elRjWHVMMFFoS1hSSllKNVJZQTcwdDRxTkREN2JTd1J3SDFaTHd2Tng1Y29V?=
 =?utf-8?B?V01RcXByZUN1bnZsZ1ZBaEVEbXd4UDFuaU53c1RqOWRrVFhEbktLM0pMU3VN?=
 =?utf-8?B?Mmx5K1BrSlgrU3Q1Y0M3eS9iZkhMZlZidkNXZytpbDBHemVac0tFbDNoZnVl?=
 =?utf-8?B?UVlIYnVJbDQ0K1VlRENRdUhJbjN0bXk3WkFhdDNMT25jTVZtLzJiZi9LbEFX?=
 =?utf-8?B?MzU5V1BPSWo5R3dGWnpvbHdCbnpOcHVwZzFWV3F3eGlaUU1ldHRlQ2lnMDhl?=
 =?utf-8?B?SWYzYnhweDQzTVA3cGcrQ1RqOEphZzRvMVF3Tm1DR3IxTmlNNUtKNE1ybFEw?=
 =?utf-8?B?NFc1R0NqalM0M2FhM3JjUlV4NnVBeDdnbllPc29INTE2dC8wYlVkZ2Ezc1lw?=
 =?utf-8?B?TlNMT1VLK1FyUmhYQno3UWxiby9iZG0ycEN0UHVxVFgvZ0tzNDMrUVFLd3VH?=
 =?utf-8?B?RUplUEd5cjNFdHRaUDdubndTU3ZwRFRBV1dQZ0ZvYldrOFJTNWllM2FiL0x0?=
 =?utf-8?B?ZWlNZW9EYnhIMW02ZVhKQzRVSjdmUkVaVkpSWDJhcXdkQlRTU2VPTW8yWXkx?=
 =?utf-8?B?RHQzVHpVcWhiZllxamJZUlY2eTVCdldkMXlqY295THJ3cVp0aGlUWmxxdDRE?=
 =?utf-8?B?SGFkTHlPL2dzMmJhTVNCenJTYnUzc1NzRWUweEhBMmROUUU2eVZQbmxSeGVH?=
 =?utf-8?B?QTd4L0lyQ29IdDRsUTkwOWFlSU1hdjIzSFFlMlB6anF6ekRFSXZNVGRGQVZk?=
 =?utf-8?B?blI4VzlGWjdBVjVCYkdlcWxxM3RJR1lIVUg5cXUrU2Y3L0diMmRqSkR4RkxB?=
 =?utf-8?B?V3VlWTZPTHhpTDJzeVpkTkFpaFhidWVmQ0YvNHhZVlpQemVEdzJzcUNEd3Bu?=
 =?utf-8?B?WW1RaGVVMDZvWFEwREFzM1VDNVRmODdnWGFCSG5sZCtNYXJaK3dRY1JUanhW?=
 =?utf-8?B?UG91aFh0T3hmZGlsMDVTN1FYWkJEMVp1eklTOE5lNnovbmRJcVY1dXlXZUN6?=
 =?utf-8?B?YXNmNVI1QkNJZkpyVlBUYkhQeEVETTlmZTRUWWsxMmVDZzNnZWozeCt2Y0F3?=
 =?utf-8?B?ZjFhU2FocFVLRFpjRmZpY0l0K0xlaHpkOFpIQVZkMGNiT3BBdkVFVWpENkIz?=
 =?utf-8?B?aExvQmZFbVJHMCtFd1MyL2tGa05LNGdraThGZVMvVzVIbWRpUUhVK2l6NEhN?=
 =?utf-8?B?R1AveURDUndwMGpnSkxqMnBXYzU0ZCs2ZG1TNXVuRWJqOVN1Vy9WVVJrbDVy?=
 =?utf-8?B?ZzdMM1BSeGpxUlRaOVpURDVTUkNEQWN1eURJRDJtY0Z0STFjWE5ZeDZweTlV?=
 =?utf-8?B?SHE4OWVTa1l4UVhVcjhJWFIwWUpHMUhjcWdsdWthOFVvYXVPRUk2VXViTm4x?=
 =?utf-8?B?U1Z6UUdYVTdZcHoxNmhJU3JGUHEyRVcreXdXMHQ1b0xLN2I4TThxeXpVc0dD?=
 =?utf-8?B?ZGphN3FoMTVvR0duVUl6Q24vcEV5K1NHcU83K0RadWNLUE1WTHFjamgzblBM?=
 =?utf-8?B?VytiT29Da0FXVHRxZWdzZ09VN25kci84dk9LK3lCd0Z1UGpzRkoybi9iN3N1?=
 =?utf-8?B?c21BV1B5Ym9veVhoN04wcnZEaGVsZUlaaW5ZZ0NhaTI5VkJvNzc3aWZrb1ow?=
 =?utf-8?B?Ym53WklvRU5JTlhLdTVNOG94RmZwNUNGZ3ZCQWlGMmY0VUcrbUNlVFgzMHdS?=
 =?utf-8?B?Z0hCclpGWTNrdFhiaHhrZkdIcUxwUzJmbGtPL3htSWxqSjFKTmhkK21BTUhL?=
 =?utf-8?B?aUl6Wk9KcHpFdmlNQTJieFY3cjE2WlFTSFVwb0h4clhmRkk5WXVnV044V2NI?=
 =?utf-8?B?bXFCNmJXcDF5WU5uV3pQb3BBQkRyclhyOHNmL0xZekR5RSt3RXVEZG9pbnVm?=
 =?utf-8?B?cTFjTFYxcnpCQUNTMGdpekh6SVMvS2RldzA5OUlkWmxneEhWb0FwaDh3UGRh?=
 =?utf-8?B?KzRha1k2T2xXay8rZmVrVUR2VWRScTBEV05UdEpQS0hQUWphVW1tUEovbXdt?=
 =?utf-8?B?NElmbUYzR0ptbVZIVW9rcHZRK1hvYXVyR0xMNjYxeVFNNUQ3M05VMkNiTEdN?=
 =?utf-8?B?SXZNYjFFa2NTbmRMamJQdXdMeHNiQVVmZVdCOFd3TitaV01FbDNvbGsyT21U?=
 =?utf-8?B?L0RIUDVtSGZUNC8zK1pNeDBnMkpxanVSeTRZdDdKcStrclNCUXpPMTY1aEtT?=
 =?utf-8?B?R0luMWEyV0lTb2tsMitwMjZxT3FRPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20a1a63e-fce5-4c03-df7d-08dbc3fbad03
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:29:51.1262
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vpfqS6kBly0F/pCbPADHB5Q90AWsJyZPVWj9PRVJhZQ00WctOjnTw71w8T4Bt4bFBvhezKlJ4/x4qW7RuJ9QC2NbTyZ/pxXEiyZXcQPQp5RXRaybW3R3dMbqJFKUdCpq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9404
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:29:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61215

Hi Anthony,

On 10/3/23 04:34, Anthony Davies via lists.yoctoproject.org wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> This allows defaults to be set per machine.conf but also allows
> overrides in local.conf.
> 

NACK to the whole patch.

??= has a very different behavior than ?= and is weaker than ?=. c.f. 
https://elinux.org/images/3/33/YPS2022.05_d1s02_overrides.pdf slides 15 
to 20.

DEFAULTTUNE is already weakly set in the tune include files so this 
would basically result in a no-op.

I don't understand what your needs are frankly.

local.conf shouldn't be used for changing those things except for 
debugging purposes. What I recommend if you need to change those is to 
create your own machine configuration file in your own layer which 
require the "base" SoC configuration file from meta-rockchip.

e.g.
my-rk3588-device.conf
"""
DEFAULTTUNE = "cortexa76-cortexa55"

require conf/machine/include/rk3588.inc
"""

If you want to reuse an existing machine conf file but only override a 
few things, you can also do the same trick:

my-rock-5b-device.conf
"""
DEFAULTTUNE = "cortexa76-cortexa55"

require conf/machine/rock-5b.conf
"""

Finally, if you REALLY have to change it from local.conf, you can use 
OVERRIDES, e.g.:

DEFAULTTUNE:rk3588 = "cortexa76-cortexa55"

But I would really recommend against using this.

Can you tell us more about your needs?

Cheers,
Quentin

