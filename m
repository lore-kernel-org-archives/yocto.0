Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.42])
 by mx.groups.io with SMTP id smtpd.web12.494.1616538663267804822
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Mar 2021 15:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=mBjw45dM;
 spf=pass (domain: windriver.com, ip: 40.107.236.42, mailfrom: yifan.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=az6Y4mSYyYPX7pIrc3HMOlXz0JBBd9fTcpq/cMrWH1mEl0C3mHfG/MuyPRp3kfMkJlaxR0j0h5nIul4TGTj0fwH3QhZnYsUdvtia+qSbEFkw57NKo8D/vtsvxLNIuBE49UMyOc0bilJeQizKt56V/9fmBQ9GCl9HusYSAqe2rt1j8njn1YiK4lsaFSBqh4QBk9pi3yYEOlZZpLGQvPyVxZXzvUQm74BZrel4RSP04iBaRMhGV6QwX/79MoOgOLYngFqvj805qxeWBmATYomAfxmWYG5F4dbxsJPN1/D5OQ8oR6tKYejkfBO8K1foQVvMVvc6zk49DjEcelpOJHVabg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lo7FbahgVqjRkKQpW0xOe17j5dM0pA9A3sbP7kM6mfA=;
 b=T9wJUOC6wDZtbkEIx6tasB1DrcjXdC1VOZiPexIsEor55/EXd0+FKs4phqElebLfPhjfInlmIt/ksauj2x7XKGHtotyeOu/LNwcZ5tIhBk15NiRWBNkg76kBYNj1koWphLJ5jwx1OyWl0kYrzGqCJE6In/4T1FCyjyivldyqsJt25xSLb1xKjSlcYMKD0x+9XH+gDinIaBXbQAoXYhFF+M2YfUllSQHuu8U4ubP9sC7iRh84IRfFKLTPo5go8a6fCokw45NmB06C1K2tIc57rdVTIUTn+LEqIPpjD7Do9W3BhQ2PPXgZLE6Uf0RQkeiIhrTFU1pdVcmM36SqolHGGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lo7FbahgVqjRkKQpW0xOe17j5dM0pA9A3sbP7kM6mfA=;
 b=mBjw45dMHL+GNFsFdyIdL3X/+6lxh7SWM0iMvceh8l7BG/2Kxz8++OMEGsUQjMwmMTHogV/zEWN6D1G/ShXQ+0tIHXcz5YeKqGKCuEpSeP6pEWtPMqaDcSWVXoJcG7IEDJmMuEvlRcDnONUnV+BUbdn8wkPjmU7vSrqIAF5vAXA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SA0PR11MB4719.namprd11.prod.outlook.com (2603:10b6:806:95::17)
 by SA2PR11MB4988.namprd11.prod.outlook.com (2603:10b6:806:f8::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Tue, 23 Mar
 2021 22:31:00 +0000
Received: from SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f]) by SA0PR11MB4719.namprd11.prod.outlook.com
 ([fe80::24e6:c5dd:a024:807f%9]) with mapi id 15.20.3955.027; Tue, 23 Mar 2021
 22:31:00 +0000
Subject: Re: [yocto] [error-report-web] [PATCH] Post/parser: Use bleach to sanitse XSS input
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 yocto@lists.yoctoproject.org
References: <20210322175626.307889-1-richard.purdie@linuxfoundation.org>
From: "Yi Fan Yu" <yifan.yu@windriver.com>
Message-ID: <682f1b6d-7c7e-8025-c28a-51ee6efbfa40@windriver.com>
Date: Tue, 23 Mar 2021 18:30:56 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210322175626.307889-1-richard.purdie@linuxfoundation.org>
X-Originating-IP: [135.0.247.71]
X-ClientProxiedBy: BY3PR05CA0034.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::9) To SA0PR11MB4719.namprd11.prod.outlook.com
 (2603:10b6:806:95::17)
Return-Path: yifan.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.42] (135.0.247.71) by BY3PR05CA0034.namprd05.prod.outlook.com (2603:10b6:a03:39b::9) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.9 via Frontend Transport; Tue, 23 Mar 2021 22:30:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1a7f76a-d3aa-41c7-09b3-08d8ee4b55f0
X-MS-TrafficTypeDiagnostic: SA2PR11MB4988:
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB4988CF1FB94DCB9B1C63401980649@SA2PR11MB4988.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wWAgTCjrpXFl7guO1R/rKV6GQpi5VqXaQqmMXJ/pQ7yCMjxslg5i4Ag3xnw3QzvofcsE4GkGhM51YtAjV9wl1z6+amKKTxoo5FikSDLRUqCz9VGWTX+ivE1DMq6ynKcKRGmt0c6okPeqCw69nzpPFp4xUjHyzkJtJMuH4IzmzoecaCuLBb5vlNohnCFP9NMn2dvfaUnmc6nRjLI3gXQUQhVVBjSXtYVssR8/Cm+jj7TrOuOwjfAUjoGXYgmupysj7IuK66HD4SxKCJbQcyUiql6DcdeSnEAKQlphQ/4qYCIZcyms/MGwJjlCbXe/2w0MVCmyYMDEHX1MvM4JvRblLwYUKL0F2Uzb9F7P/iZRwLVMtcADcuaD9dEtCVJrGVgP5MQ3pSKLGoqE+ERLaB/DzesvUYWojErltTAVywZ71+Bm4dKxp3Y96dZpgy6UeOnRDfxgSLVaMtUf+tnd9y61GdyCnhzJXxBWXL2rf8D9VZ96B2EujNAyRvy889wu1lQarH+Dm6NUbD6fuemQAy3J9Wa3CpkDzLHmkf0u0lFeZGu78NJHj5URD5RP9h9c59k1zxkHiWc65c1Q9sal5z7gnWjE/culTJWjdu1y/oIo/WH+8qbtd2e13J81le9kBLZ65pu6TmXm0N5ZyXnqSvhkUx50hGge2fANzWUFNSb9SdC11B6q6AmsGjUtJuxXklAYEsPJqxQxbZtG4yj6qL+QeFZjwszTbZC1iBZscZgHGNNKc9L4oqn9LKPLPaNWInLP4sULhFTcKuMWsmnsRA7MzketX99EVZqgpcSJIIF7HYA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA0PR11MB4719.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(39850400004)(136003)(366004)(396003)(956004)(31696002)(8936002)(66946007)(2616005)(66556008)(966005)(6486002)(478600001)(53546011)(66476007)(52116002)(6666004)(26005)(31686004)(5660300002)(83380400001)(2906002)(186003)(86362001)(16526019)(316002)(16576012)(8676002)(38100700001)(36756003)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aGNFUVAwZnNjVXdmVjdDOWxjeklwUWtCSU13MmlEbkpzOVE3aVRsTk1YSGtL?=
 =?utf-8?B?Vk1qY0JJVkVINTlRcncwQUdFNURrNmpDRDRRUURDbEkwbTBhcDNUN254bENI?=
 =?utf-8?B?ZFhGVlVIdk1FZ3JtaG9GYTlOdHA1ZkErOEx5ck5LL1VBQjdML25tbmVyRGNL?=
 =?utf-8?B?aWRkYkNFUllDSTlzaHBTVDVYVHJ6OGxsKzlZWk5KSitoMVpkZkVTWWlXWXkv?=
 =?utf-8?B?RElYYXIxU3U0R3JneTNNaWZIeDYxMmRxVSsyUDN5WjJmQWlIVDJPS1VaVTRu?=
 =?utf-8?B?L3ZHYVZZYkRheVE5eFJoNTdhZmtrZ0lCeDUzMG5UQjYxNFk3elhsRUthK05C?=
 =?utf-8?B?dzFEZVIxbzhNOUVhQmhndWFhZmtiL3pOSmlRcjA0L0JQNzVhckhwWGFGUG9K?=
 =?utf-8?B?Q3hkNVZwRjIvWEhRd0J3U1NUcEVjNWZVV3J2Y3BucUlNK21qNS9jcmR5Z3Jz?=
 =?utf-8?B?VTZBejQ1V2Z3SExibWRkNVFjOUU4K0dQekc4RENMSHhHWkc2VTJSa2xjc2py?=
 =?utf-8?B?M2NjQ3ZPWXU0OXI0M0lBV2MvMVBNTkFiZU80WmoybVpuUE15NGU2RUd1UVFp?=
 =?utf-8?B?QlFVVGRwbDIycjBMYTd2MHI2SnA1cW5PRlNoalVBMnZwbVJlV2FtbFIvT3R3?=
 =?utf-8?B?OVRwSUprQmpTa3dqaFZTMUJSUzYzVmhDZ3E3V0licjBGMnkwYmxuSHp2UUU3?=
 =?utf-8?B?SlM3VWJDZ0VWbFNSV3dwelArUGJWbFBuOGRoeVJXT05hR2hCYXRYTFNkMVFu?=
 =?utf-8?B?eHNqTnlxVjJDUWk3VHdLaEhoTkZ3L0x0VENGdkVMQ0dycjJsYUhjZktVTURG?=
 =?utf-8?B?NHhTR1kwUzZFMVdmQ0MzbzNLN0FDL3lvRTVBWk80NHJHRU1WQ2RrbW9rQnVp?=
 =?utf-8?B?b2FTcFNycWp5ZDV1cDFwLzFJbnJwcmhhREVMdFNLdnMwQVJQenRxRHlPVzlj?=
 =?utf-8?B?UDZWSExHNnRjRTNHY2ZoNUsrWStIUXQ5SVU2ZmR4U01tVi9LOUJGblVOUnRB?=
 =?utf-8?B?NEZDZTlYTk1HemNHbDV2ZXVEK2xpUDhkRjFQRmwrNEM4TWFJR1R3M0tVVXVS?=
 =?utf-8?B?TmsxY2J3cXl2dzgycnVXWjNPM0RCN0RZbWQvZ1hNTStpM0kwc3lIa25aZGhw?=
 =?utf-8?B?V0tiSit6c2RoVGVmWUhFbVhPMTF4NHIwRnlCODQwS1gyeFNnN0VXdHU4ZDZl?=
 =?utf-8?B?enROTmZtU3VUamo5WlN2Mlk5Q1ROQitWb29OS1paSlNVMXB0WHhqL2FncEdm?=
 =?utf-8?B?UjdBMWRiTnRKU3pkaFRKZlpUbEU0Qjk0VUlUa1hQaWo0Rnd5Y3BWWUFsWkRx?=
 =?utf-8?B?NlpuaWRUTGhxaWZSbDA5cmpOa3lVTTViSFk4V29MQjRkNnVVdGZRUVl5bUNK?=
 =?utf-8?B?R3pRQzJXQnlwamFjbTY1VjJuMUpsdWxjU0JqQmxqMGtEWkdKV0dWMnJ6MXRW?=
 =?utf-8?B?ejdMM2MrUTJuSEZDaktoWG9oZnhqM3lmRjZ0Z3hteldsRWczOWpoVnhzVk56?=
 =?utf-8?B?RnpiZ2JmdzZaa2FwNVlSaFR3dlY5Y2pFZEJnVm5mdGdRbTBYelM2ODBDM01w?=
 =?utf-8?B?NTBuZHRES1NSdUV5WjRiSEZkcU1HMWZncWsrOVR1bjFlNldYVXFwczNIZzBU?=
 =?utf-8?B?Q2k0TE1YODd2K0dJYW5ka1ZuL2ljRmNDRlp1d3ZjbkF6enQxMnVueXI1Z2VC?=
 =?utf-8?B?aHlVb3pxSTRnNEF2OXZudG11NEs4YnRqbzJUanhmclJqNVlJMEpMcTFmcXNF?=
 =?utf-8?Q?JyLo0Jo18y8iDU8G/SbkmAvvVLgdQsPSmDJ0ikJ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a7f76a-d3aa-41c7-09b3-08d8ee4b55f0
X-MS-Exchange-CrossTenant-AuthSource: SA0PR11MB4719.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2021 22:31:00.5991
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nAktis2tyQVESql4Jghk5qkvXvQ7MCHLtGk9vhpaTF0ZItcHBDjnA0a2y/nismN1Ao4uDXzqAOzeDD563BLbbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4988
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/22/21 1:56 PM, Richard Purdie wrote:
> [Please note: This e-mail is from an EXTERNAL e-mail address]
> 
> Instead of searching for "<", use bleach to sanity input to avoid
> any XSS issues.
> 
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>   Post/parser.py | 26 +++++++++-----------------
>   1 file changed, 9 insertions(+), 17 deletions(-)
> 
> diff --git a/Post/parser.py b/Post/parser.py
> index f411e02..536e872 100644
> --- a/Post/parser.py
> +++ b/Post/parser.py
> @@ -9,6 +9,7 @@
>   # Licensed under the MIT license, see COPYING.MIT for details
> 
>   import json, re
> +import bleach

would need to add that to `requirements.txt`
i tested it quickly and it gave me bleach not found

>   from Post.models import Build, BuildFailure, ErrorType
>   from django.conf import settings
>   from django.utils import timezone
> @@ -19,21 +20,6 @@ class Parser:
>       def __init__(self, data):
>           self.data = data.decode('utf-8')
> 
> -    # returns true if the values contain '<' char
> -    # Ignore the failures field (which is an array anyway)
> -    # Ignore any non-str fields too [YOCTO #14208]
> -    def contains_tags (self, data):
> -        for key,val in data.items():
> -            if key == 'failures':
> -                continue
> -
> -            if not isinstance(val, str):
> -                continue
> -
> -            if '<' in val:
> -                return True
> -        return False
> -
>       def parse(self, request):
>           build_fails_logged = []
> 
> @@ -42,8 +28,14 @@ class Parser:
>           except:
>                return  { 'error' : 'Invalid json' }
> 
> -        if self.contains_tags(jsondata) == True:
> -            return  { 'error' : 'Invalid characters in json' }
> +        # Bleach data going directly into the database so that
> +        # displaying in any of the graphing doesn't introduce XSS
> +        for key,val in jsondata.items():
> +            if key == 'failures':
> +                continue
> +            if not isinstance(val, str):
> +                continue
> +            jsondata[key] = bleach.clean(val)
> 
would it make more sense to bleach/sanitize the raw data before it got 
parsed into a json object so even 'failures' wouldn't contain any injection

>           b = Build.objects.create()
>           try:
> --
> 2.30.2
> 
> 
> 
> 
> 
