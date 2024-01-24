Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26A42C46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 17:56:10 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.49])
 by mx.groups.io with SMTP id smtpd.web11.29846.1706118968110697859
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Jan 2024 09:56:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=YA2FlBj6;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.49, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bUCarGsjQItd8EgINrHPbZOJuOGJMk4wy5by7nyvcvk3VzihKdYcCutscLxmkINqwqxzfNA75mF2dpSLVuVWKMWLGnyYHY+YUI/8db/1fck1KAY0J3xO3/iHNF7egY9jHppm9Cjyd9qJQUIulk9LjUwUIHGD6lwq1C1pjkfPEE+3XPP5+/NnZAPviRLnVQ0Ep/OIxtiCImRneMJodfa0pr+NkSS07lva0aUdJShOEj4hM7kfEMkAhrqUF2msk3+wurLzCmLIOswSN+MYq2+A6dLmknCRrwt1CCDKJ0cM+1R0u4qBpwc4P6g/dm32LGeA4fdboG9u1/4QABTJiLCbxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8+CUmJbba77eMV1wRZjDsPHat9t2zez5tzmCLPkCDAA=;
 b=TOf/AiSkYSt2Itw3wnd88PTndWidM9zf6p1K4vi66Ub+QVi/iq0tGqQHUMwlOqgAHfrr8iuHNoz8DBwfWG2Zl8oNcJTILi2WBgEfEMDIWU79Olc7ukEMYsP3gywCmD8kQHSsWZOkautazFUHTzv7qxTi5DgCpl7JVn7cwOblN5wc62PljLNacNJZnyZjM+tAzv7Cyup2b+7UQfApj04zyNQMQFEo807tGlrvgD4ZQGVVGhJoYI7zAlx0j1KXguoKhcDCvLizG5UNZ4ryl5NNZtf07aw6XrE+CjMOVgHfk9iRnqH/tSfXB4RlI3b56m8+0Xj24jr/1MfNwWkS6hov6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8+CUmJbba77eMV1wRZjDsPHat9t2zez5tzmCLPkCDAA=;
 b=YA2FlBj6gegQ4qUJHhsin960YcO3R/nCOF7wpbSW/bpYQU+tPBvR4EWT1rWA+vP+lYGvhhVkN2lLEnCDB7SbHqR8M2GStRQI8nzaMnyqrN15k8PKx813ul/Fs6o/rhgk6Rd/QF1jsYkYwjzy69NTOYgj/AiTAfZJ1ZGEehtFYETLJxZg0m8KKQbVm7KVNpZhjjVa//dGWsO9fPJ1CeCRPStErGtqNJqVNBkg+HXoEd0SodOxg9VXGz4dzxYA4ZXQsaahNLIOuBx3jrggQsRh+5giIYxcZcja364DaLGPoJG5sgNJEgDhYle77gcE1h9uuiWoLwTQpSjGg7JNjM+rCQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB8069.eurprd04.prod.outlook.com (2603:10a6:20b:3f5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 17:56:04 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%4]) with mapi id 15.20.7228.022; Wed, 24 Jan 2024
 17:56:03 +0000
Message-ID: <c1918525-5ebc-4df6-9bf7-5ca09c553f91@theobroma-systems.com>
Date: Wed, 24 Jan 2024 18:56:01 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH] u-boot: make rock-pi-e patches
 only for rock-pi-e
Content-Language: en-US
To: yocto@lists.yoctoproject.org, twoerner@gmail.com
References: <20240124175113.559-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240124175113.559-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0046.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB8069:EE_
X-MS-Office365-Filtering-Correlation-Id: d3d5aea3-f91a-4080-b117-08dc1d05bb17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	lf5Xl2MQk4yRIXVT7gkE708ihDe+ncjI0HM2iOawE2FwntaLR/lYeNdcWYFYQyoGfz/6Jd0U0h9Jnq47v6aaVYfMQk6C9OtH/8SMg3zGxdjMW77wT3c5X2KFAfqfECwPC1BFXIAIGkcmdLUZEAAA1hXpNfHvlDBfquAfAmHRFf9MzM0HgkSpKuO0YYFOC+fgpaT1Ds1wPf6mCWwJG4NThrzkuRgWzp1x2r1/ABkDL1O5LgLCdGVpMbgP7kOwlaMsMyy3brmeUQa/DatmFl8+rwhgbOGJoStQG3m43CTeSYyLD8dqEo8bOugaEgfnJriS6XvPhWklxxWTrfA7anCqpmSiL1kYj25uoUgIaIKHbRPExlZF3bkXKIBpNZYRIj0XHwO8whyd/wOI8VoeIf9FhKFA6CbWaO16A+aL/YXEKhHWqUg1sB5YctUvYrooV2+aSjYXx7oPaWrT76VkHj4M7/AEke3z0X8y+rLnfac7z0571hQ0pNZv8aoxpaU3unvP8s+lB2SLENnbEu74/2lu9Gxa9IixgzpId+TU0br+fJi+hXEnatKdO3333zZef3thR+y+Lytp/4JDaZUsxv6VdPP9WLR8LbCqXUeoMbdCbUfEy89raULM0QMmmZcVYenv8WXVqx1rriRSnPkwzHZbuA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(346002)(396003)(136003)(366004)(376002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(36756003)(31696002)(41300700001)(86362001)(83380400001)(38100700002)(6486002)(8936002)(8676002)(478600001)(44832011)(6512007)(53546011)(6506007)(316002)(66946007)(31686004)(66556008)(66476007)(2616005)(5660300002)(2906002)(4744005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WHpNaTh3UzFMS3JLcDl3OXRxOGVjdS9ueExPZCtJdk03T0dxZVRDbkJhR3d0?=
 =?utf-8?B?ZTdlSGNBNGtBR1crOURRZVE5RFp2UHNLek1qZWpKRkFWQ2F6bFNvWVAzM0ZV?=
 =?utf-8?B?Rlp6YmpxRzlJTDVqYy9oY2lOSVJDZXZKekhYWWovVmRxcXhOY04xcEFoTHZR?=
 =?utf-8?B?QUlQM1hEVlFJaUcrU0hiSlBucVRVdmdLVXNaMWd1cEtWRDl3MFZYVWVoVm9s?=
 =?utf-8?B?TGIraVRMamJUYmptZW1mQlV3eTQvWEhSVXYzcGx3Yml0NUdPTmJTc25YeFZK?=
 =?utf-8?B?bExVNVdPTVQ3dElkakxyRngxRm1XQUpYcktzbnc4TjhBVTAwYngvMW12UG5o?=
 =?utf-8?B?N3JxNE1UNVk5WURiU2VYQ0k2N1hOSGJsdnN6Y0hjQTFNbnRYNTVGUjNTS0Zy?=
 =?utf-8?B?WXFGRDd4djlrQWZSSmVyWDJVL1YwZC9TZDg4c0ptTVBqbVI1bUJDRXdjQ3ZB?=
 =?utf-8?B?YUQ5elR4c3NzUHpiRUZLWmwrTE5zTDJheENKbnBFOW5wZTFONURFQS9WRXJm?=
 =?utf-8?B?Qm52Qk9WMWNNZXlSM0M0Z09sbmpGU0pxU3hsZ0QvN2cvVVFkTjIvMHhMeGpk?=
 =?utf-8?B?Wk4xQ0FEZjNpUjJKL1JsZUNFQ2tRMUZ1R3BOeUdQQUFjUG11b3FKNDBxbmQr?=
 =?utf-8?B?OUd5Ukd2L1pqM3pxMWJIakJEMThTbUFGeWpjNERkZlpxdzBxRDBsVHF0MDI3?=
 =?utf-8?B?RG4xcVlNdDJGM2FsRXpPellWZ0d3VldVOWsyaFBoakkwc2ZqUllXMk5RcnJ5?=
 =?utf-8?B?R0R6MU04YjhKSGVGVy9Pak1pQW5Lb2pCa01ic1pNcndWczlTSjNYeDFxOUxV?=
 =?utf-8?B?UmpCWGFLeFNLZk16bm9ZVUw0M1hJYmp1cThRSmVjUGJKL3FUR0ZwK0FZVnYw?=
 =?utf-8?B?VFJCTU5GVzhzL2lhYU5LK216NCt6MUZqZkNHcjNaK3JuT0hNT0VvcGRTTjJ1?=
 =?utf-8?B?ZDBRTG00bFJZdEtNVDY1dnZjWjVaRDB1NUlQZVFIOXZqRlNwcDZsSlo1MWx1?=
 =?utf-8?B?R1FhWVlXVldHU3lGVGlXcU5kY2dmNDUvcTZkcHRlZEhxVFN5akZiNGxuZk90?=
 =?utf-8?B?SVc0NDgwTWFaVGYzTWZQNkgxNWhhNytIb1VOZWZFNkkxMFNzSUw1dUg1UExR?=
 =?utf-8?B?RTFRT2hmT3pRWmt2djRVak4vaElqWGd6T20xTTdlZkJTMlBXWEVPMzQ3Qml4?=
 =?utf-8?B?Z2htanBrWk5EZUFZOCtyRk04aHJiMERFaWtmUjRHaVZaNTN6eStFdjBaSWhn?=
 =?utf-8?B?WmNaTGZKU29obnZCS1BzVlZ3UHNDY2wvaHViNEFzMVo5U1lWVnE3eW53dGla?=
 =?utf-8?B?TGszSkdiMk9oQjlSNmo1Y2lnS1FXSGRPWXRPUFZEei9JcnJIWEtRVHZZeDdU?=
 =?utf-8?B?VGVwYmdyMlp6N09hNEhpNG9zRlRUYTI4RjUyaElmT0x4cHM0Y2gwbGh5emZs?=
 =?utf-8?B?Mnh6em4za2hQNk94TU82bWNTa0hKdGMxVUNONjNuenFqb2ErL2lKaXJnMXFP?=
 =?utf-8?B?WThsUTQ5NzlmOTMrNUxyKzNPM05JcWpTUjg0eUdLeVh6SEFZK2YvUlBFZ1hX?=
 =?utf-8?B?Z2tGRG16QjBWdWYwSGo5dnRjOGFUUHJUQjZhaWVrZ1pMNkNBMUE2alBKaUVT?=
 =?utf-8?B?TmVIWHVaTUdzcUlRcDhuR21WRDFLWmRoUjVETUFNblNERWh0dE9mM1Qyb3FF?=
 =?utf-8?B?Ry9KSnZIMEdxNFJ4SmQ4OTE5VTYwTnVla0hlVlB3U3VGK2ZTNDJ1Mm14S0V6?=
 =?utf-8?B?RzI3Rnh6dC9MaWlKREtxMUE0cC9BYWhTamF1cXRjU0dKeUZmUmJqMFQ5TmpR?=
 =?utf-8?B?ZzgrTXdJWmRqZUxLSUdqT0pPTFh1TlY2ZkhzZkNNU0R6ejRudGVDelFhcGxt?=
 =?utf-8?B?NW4vZWVJUkV5ZmgvYzVMcXdkdTQ2NWxIY2JpZC9JdnhYdml4VGd0REw5K1Ez?=
 =?utf-8?B?UkNEZTJpYUU5QTFmcXRuaEMxUThmSXYxZ1FSR0w5QmxPVE4wdTBkV21iVW03?=
 =?utf-8?B?QnRiNXUyODRLdmpMOFd6SDJ5aVNiV1hINmhpMDMxcGNGcmtBYk9DLzBFdThR?=
 =?utf-8?B?dUExdWlXenN0M0lkSm1RbEppMnB4alIrczltbG4xYVVCZEY5cE1yTmpIUTVh?=
 =?utf-8?B?RGJsMEdDWHBWZTIrbmpaQkFtTG5LbUJQdTNaSVNXTnFBUEloeDgzVnllVEZk?=
 =?utf-8?B?YVhLT2lQN2FNWUVwWkI0dTh3NTd0Nyt0dUdwd2pJZmNRY3FQbE1qZGI2QnlH?=
 =?utf-8?B?YjgxVGFKb2s3ZTc5dzRrRkFkMWJnPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3d5aea3-f91a-4080-b117-08dc1d05bb17
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2024 17:56:03.7466
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tBAbv/BkYpxSGUndHilitDw/dIhk3MNv0txnuhHCoCSyS97ZacvnakTOCcb7XXZDdhtOcsVIHw6pgCDaFPYRYXflhcqu46/aDlKXs/1nQt2PXpOSb+QKcAkHDFS6Q2V1
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8069
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 17:56:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62261

Hi Trevor,

On 1/24/24 18:51, Trevor Woerner via lists.yoctoproject.org wrote:
> The U-Boot patches that were added recently are only for the rock-pi-e
> MACHINE, therefore only apply them when building for rock-pi-e.
> 
> Fixes: b5bba3a01197 ("rock-pi-e: apply upstream PHY fix")
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

Reviewed-by: Quentin Schulz <foss+yocto@0leil.net>

What a nice timing, got "bothered" by this a few hours ago but got 
sidetracked :)

I **think** this would make more sense in a u-boot_2024.01.bbappend 
though, since it'll likely only apply on top of that version :)

Cheers,
Quentin

