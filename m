Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E15D1C433EF
	for <webhook@archiver.kernel.org>; Fri, 22 Jul 2022 08:22:04 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.75])
 by mx.groups.io with SMTP id smtpd.web12.5506.1658478115583045302
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Jul 2022 01:21:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=q7rF3wX8;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.75,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/lAJ3JKvtccorgM8QBnUU3VbxiUqFp/yY3qlpjVVz1rAinnY0rQWxW8WCsMOelxK2jSYSygJSzCnmKYNM4wfMtkakxqk2ohWrEQFszoBFyIwAGWDzc5Q0EhjibryTOcCYFGue7fcTbONfDXUxA6jmySfm1qUYa5uZQi8s9jAG5aGEq55r0Rwru6Nmj0cR3Q4+hb9tQWskp/3z2fJr8VYvoUBwyJsO1q9Ut56wHbXKsaeuubMkcWd8XxGoVLOdYJU0HsqGF0AdkOi7DZeAkaVQ+5I3puZfyO4E/3kfUqXsbvYteRJ4LyL78NkMjmQKOztu0DKDA10CnJv671SHHpzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2GMnPsIKpuR89WH/IbwbOFlgSCYj/AFl9493xbTYQlg=;
 b=ZA93DfpzJTXwtmeJZWCkFVCtu9zAMdeuRpgq/dj+7cA14JazVsy9ZKWsangRmOjxCbgQTdDsYeOrdPOZv+460wUGQLJ0C3z4zcND3curgaiRYtRu96FBxTBcxqvBO+SEyPOWoMJJjXJRq51KGzC+z6E72BhS1W+qTUYqcixvD5CP458fJ7OP/vzgkzRCHwa3be/yXzIW8xKl4os68M+Gt3xmHceYgig2bHUoW3xZSWYNj86kVgl7kIcXpUDp4wQWOKQy7VMqOcQK9lBHScUmhMuNxs9x6Ppp8wW4fL9YamMMLVkFrYXnImLSsZctxQNm4qoGhzODD3Rj+3U+Ex3yog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2GMnPsIKpuR89WH/IbwbOFlgSCYj/AFl9493xbTYQlg=;
 b=q7rF3wX82hU59HQ+xDDEU8sMiYg2a9wv/cbszly/wtzN9aUd7BfKbEOXHIinQepX3SzihcQnH8DgSdqG1gWGWtf+VO5Hq8a4d87lVsohEAn2obr1leJxzSWxmx1cq/LHBpug4Q9HG+jOeecyv6yiYtpXzzDbanMz4S8/XwOQUhE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by VI1PR0401MB2496.eurprd04.prod.outlook.com (2603:10a6:800:56::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Fri, 22 Jul
 2022 08:21:48 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%9]) with mapi id 15.20.5458.019; Fri, 22 Jul 2022
 08:21:48 +0000
Message-ID: <6d1c618a-5aba-3b57-0fe7-1554acfbc42a@theobroma-systems.com>
Date: Fri, 22 Jul 2022 10:21:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Using custom python modules in classes and functions
Content-Language: en-US
To: Marek S?omiany <marekslomiany@gmail.com>, yocto@lists.yoctoproject.org
References: 
 <CAJCDnYaubUajjanOwDFCB9r_f2QViqzLu5kfujuBSLpydyEd+A@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAJCDnYaubUajjanOwDFCB9r_f2QViqzLu5kfujuBSLpydyEd+A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0167.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a0::6) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 70dbf285-8f74-4596-c748-08da6bbb38a9
X-MS-TrafficTypeDiagnostic: VI1PR0401MB2496:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b6V8uKopvgk9TUsLqQbshMLynqnXYplIvtWFqInqDbwGIuNQqOA9uVBfa659o1XuzH84EDP2b+58uKCsAlzRnzdx6Cn8kPb2k/X+gE6aIHwXjJGzf/1LUWDIhsDsF5nyQZHeCRFWIhEgBiUaHZWWWCDiulRw3bVLq3v4eQAnq/AMwmf9TJnVQTJexY2zNtJ/6ZYzZ6ywk+Do8/JlDU0vUTiVlw0RXvM2ZWL1Fw7n8JNGwbV6rHq2gNBY5NVTZy7Vpl2MjKYqze6wx9ZGM0h+hmiCyQm5mVuomL4F0sOmOBijFa1cOtYdwEBBp7mHKK3nFyelvtbgVtKKY3WLQxQiYsCMf2tjXp8L0K3MGmTtC795GlEAwvlso7QW43idaXTjvjuHUFkTv4E9Y/qTzWIcmH0UDuZm6yzNddPZmXmJXZ5uWIqkw9VIgZwOyL74MaH89l9cY3qTxGcQzmGvfh+iIYf5CUpqzoMWP11POTeGWnmC7g8d9hh2fw1jl6Jo10uINMmCeR1N4a4vQwrlUoG7hofIqmIFGd5kaHyH12Nh/tdQwBkfKPchgdYBoqitVKsj7vxD+XOY+whBFH3wDdnhj9Q+EuVS0MgoghyP+fMOwYEZazF8JPVrGqPHI/YxUTxvBfhk/SdyrMpOkunWbZRAWalH4vj0pV4NJtlM/rqoNLAtx0aqZ84oMmduVYMayxdFVtoJt/3k4QIO69B+KYZv+R7CYfha8bJGl73tAhUVxhkt9q9SQHF6m+Zcm0MWYtAb6ihd9pKgZInPdCj0Wf6VIcYkwNDtxDvgV9T2W9ihA+s0KEWYFmGkE36lNMSrvEfSPefXx3MSSF1uYqU7sBdjyg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(366004)(39850400004)(346002)(396003)(136003)(84040400005)(316002)(6506007)(38100700002)(53546011)(26005)(8936002)(31696002)(5660300002)(6512007)(86362001)(6486002)(478600001)(41300700001)(2616005)(2906002)(66946007)(66556008)(66476007)(8676002)(31686004)(83380400001)(44832011)(186003)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RG1aSVdlWWh2OFVCdW92aytoTGtsMDNWYlIrWlIwSGMxUWlHK0VtMUNTaGl6?=
 =?utf-8?B?UFJpeUgzM0ZFbUJYREM2U1k3WnpqcUE3WG4wQkdjRTJpWWFQb0FWZFVQeUs5?=
 =?utf-8?B?ZjJhZ3hDR2wvOUFGUzQ5eklueEFNM2I5WEwvVXdDTWFqa3BaSml3TDM1Y1Bk?=
 =?utf-8?B?b3BXOGZRVm5VRTFyM1lQT2ZPKzJzdVF0VXdNcU9KckpmOWdiRGx0dUg3VVNW?=
 =?utf-8?B?eXM5Wmh4aDU1MVJnOE5WUG9OdGFLOWFFTjlaZGZiOXhIMXl6TzZRUTNPMmFQ?=
 =?utf-8?B?dk1LN2VBa1lhSlZsdis3K3BJUy8xNmxnbFhIZTM0cCs1UjQ3S2g4aDdTVXl4?=
 =?utf-8?B?Y3V5SzhncW1jbzRPaHVnbFdibHFXQmxhYmtjMWpYcVRDMGY5ck8yMFhueXpR?=
 =?utf-8?B?b2R6VnhLN0FjZ1pwR3MvdlVNTXcvUThuT2xBdDBqbko2U3RIWHNKYVhiOHJp?=
 =?utf-8?B?b0xIc0ZVcnZ1S1BTZ2svUTZCL3lKaDJGeDQ0ZlBwbTFVQnZTYk15MElidVVW?=
 =?utf-8?B?RG81VUdyZ2I3MEx0c2haMWZBcXM5a2hDNW94a1RHUmV5SmwyM2FQdzZlb0o0?=
 =?utf-8?B?YlNjTTlSMk1vLzd5R0x5SmxSK015eThtUG9CZnlVcGJNWUtZYlpFMG02SkdU?=
 =?utf-8?B?ZGRwUHVLQm5CaGlMa3ZlNHJkVDRBT1NUeW50SWdva283Ui91blJ1VFZMTXFu?=
 =?utf-8?B?bkR4L3ZVcGR3b2ZRUHlWdEpzaEg0OGNJNkRSdmZYbGtpZDFCTGQwVDE5dzZ0?=
 =?utf-8?B?RFpRTmFWUVZFRGJtMS9jaVRpT29tWDM4d1g3UUFxbHhDT1pWUFNndUU5UUd0?=
 =?utf-8?B?aWk2NUQvMXFkbENYeHVWUG9LKzRyTzk3NlNyMWhiZkJFaUNRaG12a1JyN3RO?=
 =?utf-8?B?OExRVVdWQm1Wb0ZHdmw2VnJKL1U3Q25rOVByMlFFWEVnK1luVDBNRURPUGFD?=
 =?utf-8?B?WEROV3JwR3M0RVBwVDVkd3czM041RGllUmVrVURiRUhyZVNXS2xESndwajc2?=
 =?utf-8?B?MCtxVml0a0M2ZzkyaDBtZnBueFJtbS9qV0hlY1NQYWNUeS9KUnZyM1BsbW9Z?=
 =?utf-8?B?TWxQaUFmNm9oQTB6ZmxOaEFRdkxLV1lnOXRubkJ2N0l2aUV5MnVoOFJQY2Uw?=
 =?utf-8?B?YnVwWUROMlVMSFlqMTBOTXRJckNLOUFUVzFDMGtQMkUxSUJmUjlXZFJNVEdk?=
 =?utf-8?B?NGRMZzlqNGt4emJYTzRnWjBVUDZnZlhTV3htSFJrbjduNWQrYWpwOGUrelZo?=
 =?utf-8?B?VFlNMVovenYwOVJocjFFN1JDSm01YkxFTDdPRTcwWWpSRno5MUJzeXU0QXlX?=
 =?utf-8?B?SndCeFh0Q2hZOFdZdkcwL2RWVTdmeHEvUVNSOTc1MnJENUZseWFvQm01cm5Q?=
 =?utf-8?B?VFlTZC9aV3BmNStmd2RZN2NhRTVBTHZsRTN3bXhaY0w0bUFUZzVKQTlKOWRU?=
 =?utf-8?B?WDg0cjhuT281elo5SzkxQkhnTW9vaTRSRWNpb3pTQWpGOFJQVlR6TFoyb1VN?=
 =?utf-8?B?YzZadUlvL1lXbFRFeWVSL1E2dG4wK2RBVTNVaWVSZ29BaENJMjZmSXhtV0Uv?=
 =?utf-8?B?Vnp3WHU2Y3lFT0NaSll2OFdwNnp6MnRmd2x5T2l6c0hTeStscTh6WXhaaThL?=
 =?utf-8?B?RTFZcXlqRlRVOFkzNWdtNGhwVXNhOStzaUlIYU1xOEphTC9ORlozSmRJSFdN?=
 =?utf-8?B?K2RXS1lEbHE2eXAwckJnZWNqVk9XNWdHWjQxdnh0K1NCOWpjMFVwQkxYUTIw?=
 =?utf-8?B?d0lLOGFFRy95RkF1ak1pMVVLTERYRWFnNFBiemYwL3U4YnduRU1GNFcxMkRt?=
 =?utf-8?B?WVJMQkdTZ0prL2Y3MHpEY1VaMTh4ZE9oQ1NBK1B0RllQbEwwUW42R2dxSVZn?=
 =?utf-8?B?NmNwVmprd0ZsZzRuUmtLS2NiaGJQdU8rL0JaQUU0cTVSS1g5SlFzbVZIakc1?=
 =?utf-8?B?WXVweEhIVTB4UWZ5QkdaRzNkb3NnQlZlM1o0RTIzSFpTMksyZkJ5dmdoYnhx?=
 =?utf-8?B?OEw0UU9jSnNXMXFtZzVmNWpXUVQwVGhIWDNqeDJMNU5NS1VzVVNDeHVzdlZi?=
 =?utf-8?B?cGdKVDUwanNZcTlSVkhzTUJRNXliYTl4MUwreTJkazUxZUI2UFFZS1pERGJC?=
 =?utf-8?B?dmk5RGwvb1kxdzVpS2tCRUhXYUdNVnpNajZaa0ZZaFZ4OGEzaGxrRGVFY2Iz?=
 =?utf-8?Q?8S5+9t6d2ZvrUZngl6VATME=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 70dbf285-8f74-4596-c748-08da6bbb38a9
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2022 08:21:48.1459
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 arJBCJZiRxgI+VWPJwIcrgeOnFprg21AGs4lQAZqnBOewl2mbaxRAKPFJi9ljaQPWOglc2NswQW+ULoem96HCMfH8gjXrj/fOq+tIQaSANDln5yqa2w4Ooan6UtAOwIw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2496
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Jul 2022 08:22:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57619

Hi Marek,

On 7/22/22 08:53, Marek S?omiany wrote:
> Hello everyone,
> 
> I am working on creating a custom class (basically own image signing) that
> will be using a client's python module, but to simplify I'll use as an
> example a python3 module Magic as it behaves in exactly the same way. I'm
> working on dunfell.
> 
> So basically in recipe I am using depends to add the module and it works in
> example like that:
> 
> inherit python3native
> DEPENDS += "python3-magic-native"
> do_sometask(){
>          python3 ${S}/testapp.py
> }
> 
> and in testapp.py importing magic works fine, but when I'm trying to import
> magic in python function, bitbake-style python functions or in anonymous
> python functions it fails to find the module.
> as an example that do NOT work:
> def foo(d):
>      import magic
>      mime = magic.Magic(mime=True)
>      return "foo"
> 
> python do_bar () {
>      bb.warn(foo(d))
> }
> 
> Neither it works in do_bar nor in foo as shown above. Always ends up with:
> Exception: ModuleNotFoundError: No module named 'magic'
> 
> I have also tried to set variable:
> PYTHON_SITEPACKAGES_DIR =
> "${WORKDIR}/recipe-sysroot/usr/lib/python3.8/site-packages"
> but it does nothing in my case.
> 
> Can you help me with this?
> 

Anonymous functions are run during parsing before anything is built. 
Therefore, I don't think it'll be possible to use a python module from a 
recipe in an anonymous function.

In order to use native binaries from recipes in another recipe, the 
binaries need to be in the recipe sysroot-native directory. This is what 
DEPENDS does behind the scenes, it adds a dependency for one task of 
your recipe on the population of sysroot-native from all dependencies 
(DEPENDS). Therefore, your DEPENDS will be enough if it happens in any 
task running after the do_prepare_recipe_sysroot task of your recipe.

Don't forget that a task is run only if it's in the path of a task 
requested by the user or another recipe as a dependency. Usually it 
needs to be in the path of the do_build task. e.g. addtask my_task after 
do_prepare_recipe_sysroot is not enough if you want my_task to always 
run during a normal build because nothing has a dependency ON my_task. 
addtask my_task after do_prepare_recipe_sysroot before do_configure for 
example, will work, because when do_configure will need to be run, it'll 
ask my_task to be run too by bitbake.

Cheers,
Quentin

