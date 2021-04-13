Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3548.1618280965740528178
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Apr 2021 19:29:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=piV0I9St;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2046.outbound.protection.outlook.com [40.107.223.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6F87138C07CE
	for <yocto@yoctoproject.org>; Tue, 13 Apr 2021 02:29:25 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mnTIr6M5JFx+paSrBUOVmL7ztsbokfkHhlyhHz+sC06BIdaDM8uTa1odWavMg/e0fGw8Q2GXxlLxvmye1sUnz7O+CX7FqDHYRrhbQE4pWWzIWIIsXvSVHBh1J0gyZGftWW/uBCe7ehFHW0nQSTRhKSYVrLWr5s/HRmROhB/jRlIXJ7XDIYEN+O26NQQ5hMklxdcn7DEP/yomcPYEO1pwx4puSriKfTbsPpRnptH76W9xNTOtrt9hLbmf7lKkbva19mvJJLQ6jT65tl5w/Qodb3olzrXgw7eNYlUma1pvSRxEic7uNJluaqA6NaDoxlTWnOMRKgfDjnh4hp9jZHjdhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbNMXjNU9oESdBWYA2jXjX5AJRJFsXELLIiYIVpHRd8=;
 b=PlacCjbzJdZD6K7i/vaRaemT434MOovPKuXqF5axXfkbQcCW6zJ9QpKsI5AlCXEF/FuTMp3SMVfkMqPGx3d016NO0ANPwjjB7v1aYjVYBZhnkRwfDu6GWQIGvw+JqnQGdE+aiCAsEPYohDznvc7ocHSJWm9nqXDg00Hb0574U51go9EDOSEjR4LhFTqqRAyAZknql9ZZAb2K+p78muK8bcUFwtVxgCMxG59L5s8ZH8EKcLNGbRXPM2f4LfxxrtC6kYN89hHI//z52Inpvxnth8Kne/DJ0wuKwuXI4EXO+LpioAui6qgote/z5yat6JTwXZONNkr9McqTfV3G+7q04w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cbNMXjNU9oESdBWYA2jXjX5AJRJFsXELLIiYIVpHRd8=;
 b=piV0I9StZ0md9FuusIzD3FK6IEgZQlIaP43fc4nSzW5D31Rn0xR3o9RlWERlB/KWpodki6jFiIOY5QBiefhJge8AbXgMM6AvlSJ5TmK2tdx3GK5kLMwhy2Si4hC4pxEeEMQvRus799TKhbOg6s8/Bpe87gpGLEglXmQTs+RJCNM=
Authentication-Results: linux.com; dkim=none (message not signed)
 header.d=none;linux.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM4PR11MB5280.namprd11.prod.outlook.com (2603:10b6:5:38b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.21; Tue, 13 Apr
 2021 02:29:23 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.4020.022; Tue, 13 Apr 2021
 02:29:23 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] pacemaker: upgrade 2.0.3 -> 2.0.5
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org,
 jpuhlman@mvista.com
Cc: Yi Zhao <yi.zhao@windriver.com>, Adrian Dudau <Adrian.Dudau@enea.com>,
 alexandru.vaduva@linux.com
References: <20201209060111.97275-1-yi.zhao@windriver.com>
 <ad06fdcd-04b0-ae06-0fc2-67eb6c6389af@windriver.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <99b93a31-dfd4-3129-6897-ff10ef9ea8fb@windriver.com>
Date: Mon, 12 Apr 2021 22:29:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <ad06fdcd-04b0-ae06-0fc2-67eb6c6389af@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0135.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::20) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0135.namprd03.prod.outlook.com (2603:10b6:a03:33c::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend Transport; Tue, 13 Apr 2021 02:29:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ecc0ae90-f937-421c-abb6-08d8fe23f359
X-MS-TrafficTypeDiagnostic: DM4PR11MB5280:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR11MB5280528B7314E44852AFF982F84F9@DM4PR11MB5280.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/5kmjpQ/F4vhMV1gQU958KgrLR77phs4NV91L5Nql76kIIXHTk+dE3Ex7T588/u6J5stbrxnrCIw+azoTZSybNLUscGqLLtAYsjmLMspy3oc8rUK69xdz7ffPNSuoRYEwU0Nly8d9E0wse8NbXL8ltqr+z3c3ApmBmsBVxc4qeiH3eohU608kYG0+JWwoLRlVD4nbb4Ox9OuGK7+S9nFTXTzfKvHMwAiZt7WFfdxLJt0zH6I5oqjbi+C44rM4nztiOqlFDkrYy72sECshJ3rsH5ywqQrrVVvvvCuhorUqU3k/hu55QzpLU1F1+321cfXatUZGje1MJTn5W0lsb5qfFfO0EMNnxPEya4Bk6C038PoC/7NwskY4lVNMiD8GGrGMWcH8fJXnaNlz6DyAM+OY4knB6KIxeVmga8pJc/VKn4B6NG1G0Ho0Zzni/VrJFXjeNQtLTASyTD4lqDmXgWNyildQSAY3rJJSPU5NW1qaPh/V6/k5K7s9BXvZUdPxueEEG346fCz3ZBp3SEMU5JATsUgK3JRMkFN2jUU0HKfpYRf2/w/64aqA31YKoZYobXa2pORKclXDHoVNuCdUu8pFKx8nHHY5yxWZJq8GLwAQEZoGhXCS6br9IeDk4qrp0zrJ9+6PO+lMxU0jW6pXZPnhZ8iMl3ZkUUZXlD6UYdGp0iFhENIKdvhad0f+VK9bNZdW2Wadi4vyJYgv332/XoT3wXk+fxLMUeKLVQCW+p/ySPsu1//t+uVnUsoEAiY4B0Pza4pkqGAeCMsPllCF4a7Qz8/w/X6VSq+kD0kq/pT3Ks=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(396003)(376002)(39850400004)(136003)(31686004)(53546011)(83380400001)(4326008)(8676002)(478600001)(26005)(36756003)(8936002)(52116002)(186003)(16576012)(6486002)(66476007)(66946007)(66556008)(30864003)(16526019)(54906003)(316002)(6666004)(31696002)(38350700002)(966005)(38100700002)(2906002)(86362001)(5660300002)(2616005)(956004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?enZxejJ3OGtzM2U3M2xuWmYvM1A2N3Fia20yTWJUMDJ4RUxFU01PcUZ6K1Nz?=
 =?utf-8?B?YjdaZzhicDVaejB4Z1d6WFA0OWEvZlZPTS9aZ25qU1gyN015MEFwbFJGWlVr?=
 =?utf-8?B?NjVaVmp2ak9vRFBLaFBaQkZHNWJwS0FXZmJYdDNhZ01BY3NtekhXZC9neWEv?=
 =?utf-8?B?cUNIdUxMM3BEeXJRQjAxL1JLdmh1bXBKc08raWtLRXNWamY2aDBHWEpURzc4?=
 =?utf-8?B?YWZJaGVPNnlZK0JERkFsVk12QlFQdjEyanRRVUpVTWtpYjNCbFhyZk0wNzdo?=
 =?utf-8?B?OWpyNkZMUFQ1SUpzNDJsNFB2TU9DdjMrNWlpcDdxM1pPN2FKSm9aVEtqUk1U?=
 =?utf-8?B?TlYwSHZ5cUZGUDJvQnFwWFcxQmkzRkZEa0xrWFhCeFIvd2pJaWVkREZ5TS84?=
 =?utf-8?B?cTdCd0xLTURHS1VETmhQbk5BWnFFODdtMVgxSlBHczM1YXcrODNGa1JZYWh5?=
 =?utf-8?B?dGUrU3BsdUkvTEJicWFNTHpjVERsQ3RLcklha0RiR2F3OGRBYU1HRHlkVnhE?=
 =?utf-8?B?M0VUNjM0bGdBRThOY3FmOS9oQ0tibEROK1UvZ2t0dUZVQ0JaZnVtNWtWc1Rl?=
 =?utf-8?B?RWZENUp0T2RuL3U4dFk3WGtMQlU3SmF6RVRrNE1GVkFsTm16SUlHWk82S21J?=
 =?utf-8?B?eEoya3FRaWtCaU12eUlVNVJhejRDczNISC9vT3B4NW13bXAxRWF1dTRJTVVQ?=
 =?utf-8?B?ZlJQVmg4OWpkdC9KVnNyc3B2RWZoOG5yeksxNkUwN1ZTeGNRd1lsc3V1endR?=
 =?utf-8?B?MEJqNVdYbEwwQTEzcGh3OWpFZDEvaVkxckxRM21OaEdUNERaZFdYWEdrKy9G?=
 =?utf-8?B?bzVqTFdKQVZoQWZ6c3dxU2NURitKUlVQS2twbXZZc3lkOWVPMVQybFN4UExu?=
 =?utf-8?B?L3VMWjdJNDJlbmswdzhNYi9wSExFdzZ1NjdGaTRwaWtvc1FPSHFPWVBadkI0?=
 =?utf-8?B?bFh0eFpkVFBsU0VUaWd5bFFEWFJyeEpoTjNpYXFSMlMvK1JzeS9na3l4L1Jl?=
 =?utf-8?B?MkpQUW5aRkQ1SngzaGVLWGJnU3d5d2x0TzNTUDBjSjVNa0ZHam9qSjV0SkNF?=
 =?utf-8?B?dTYwMHh0N0Qwb2xsTnBGS0hSNVRrRTNhNnBuQWthNGRscmEwb1dYZzlpN2Jh?=
 =?utf-8?B?Wnlpc3kyZ014Ukw5VFhydlJmWmtubmt3NXdGN1NNcFlpemd0UU84RGtjajVu?=
 =?utf-8?B?NEJyUmZRaFhmK25VUUFTYkUwbmdrVEtNVC9kUUM3QmhSeVg0d2lMZks2VUdF?=
 =?utf-8?B?STd5QzBjOE1wQ1VkbUk1eWNOUzdwUUNpY0JyQnBjcnFaQmJzM3FJZFZidlpE?=
 =?utf-8?B?RDYwTkRGNGN3UDAweUhjWWNOaFdic1hIR1JxUkE0MkVBT1NXRks1OW1ZWk9l?=
 =?utf-8?B?NDJaaXYyUnI4Y1ZNWHpiSit5RUVlUHdQa1pUSkdsZkk1NW8xYTBDaW9ocXJT?=
 =?utf-8?B?Umg0Z0dGcmQ0cUxGYkQxbDM1akpQaG8xQ3NUS0xrbkdwakJ4MUFKOUxkcVk3?=
 =?utf-8?B?MWtkdWhyNVpFbktMWTRsdS9RTUNoejhiS1Vvdnp2VXZuaGJLaUZiNTRncjFn?=
 =?utf-8?B?eHpaZEpzMXgyd2lkblA1R0RDSEppV0VwaUd6RlFQbXJPU1lWb3didlY4aFN4?=
 =?utf-8?B?STVQVlI0K1pSTlRlV21JRTJ2a1lXbGNRWkhqZWhaMDE0R1VpM3ltMXpPR25m?=
 =?utf-8?B?MWRnSUFrR202VlIvbERNSFdKRmVLakVsVlkyWjMySVR3Vk5lc1ZxMHUxT1Yy?=
 =?utf-8?Q?0V0lM3GlMAeCIMeJSu6rgAd7PkbXc06xGRY2q9q?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc0ae90-f937-421c-abb6-08d8fe23f359
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2021 02:29:23.5104
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kC46bLa/cTqFRuF7J+kTAAdlfyZrBKQ4N4hopd5QANJ8txWwF6VT7GntnUrINDPesGynw6BjQfLWM4VDAnPsejIvhAfVd/9//2s/7zkmJQk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5280
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-03-05 1:28 a.m., Changqing Li wrote:
> ping

Is this layer alive? :)

../Randy
> 
> On 12/9/20 2:01 PM, Yi Zhao wrote:
>> Drop backported patches:
>> 0001-Mark-declaration-with-extern.patch
>> 0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>>
>> Rebase patches:
>> 0001-Fix-python3-usage.patch
>> 0001-pacemaker-fix-compile-error-of-musl-libc.patch
>>
>> Remove /var/log directory in do_install and create /var/log/pacemaker
>> directory in volatile file.
>>
>> Signed-off-by: Yi Zhao<yi.zhao@windriver.com>
>> ---
>>   .../recipes-cgl/pacemaker/files/tmpfiles      |  3 +-
>>   .../recipes-cgl/pacemaker/files/volatiles     |  1 +
>>   .../pacemaker/0001-Fix-python3-usage.patch    | 34 ++++----------
>>   .../0001-Mark-declaration-with-extern.patch   | 46 -------------------
>>   ...maker-fix-compile-error-of-musl-libc.patch | 39 +++-------------
>>   ...definition-of-curses_indented_printf.patch | 30 ------------
>>   ...{pacemaker_2.0.3.bb => pacemaker_2.0.5.bb} |  5 +-
>>   7 files changed, 21 insertions(+), 137 deletions(-)
>>   mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>>   mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>>   delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
>>   delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>>   rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb => pacemaker_2.0.5.bb} (96%)
>>
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>> old mode 100755
>> new mode 100644
>> index 979db47..765ee0d
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>> @@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient -
>>   d /var/lib/pacemaker/cores 0750 hacluster haclient -
>>   d /var/lib/pacemaker/pengine 0750 hacluster haclient -
>>   d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
>> -d /var/run/crm 0750 hacluster haclient -
>> +d /run/crm 0750 hacluster haclient -
>> +d /var/log/pacemaker 0750 hacluster haclient -
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>> old mode 100755
>> new mode 100644
>> index 1700a69..eca3002
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>> @@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/cores none
>>   d hacluster haclient 0750 /var/lib/pacemaker/pengine none
>>   d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
>>   d hacluster haclient 0750 /var/run/crm none
>> +d hacluster haclient 0750 /var/log/pacemaker none
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
>> index 05d7a76..2095227 100644
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
>> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
>> @@ -1,4 +1,4 @@
>> -From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
>> +From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:00 2001
>>   From: Jeremy Puhlman<jpuhlman@mvista.com>
>>   Date: Sun, 15 Mar 2020 21:09:33 +0000
>>   Subject: [PATCH] Fix python3 usage
>> @@ -18,12 +18,11 @@ Upstream-Status: Pending
>>    cts/pacemaker-cts-dummyd.in                   | 2 +-
>>    daemons/fenced/fence_legacy.in                | 2 +-
>>    doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
>> - doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
>>    tools/pcmk_simtimes.in                        | 2 +-
>> - 14 files changed, 14 insertions(+), 14 deletions(-)
>> + 13 files changed, 13 insertions(+), 13 deletions(-)
>>   
>>   diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
>> -index f4ae60dc1..55a0d4ecf 100644
>> +index 4bae93515..f09f71c66 100644
>>   --- a/cts/CTSlab.py.in
>>   +++ b/cts/CTSlab.py.in
>>   @@ -1,4 +1,4 @@
>> @@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
>>    '''OCF IPaddr/IPaddr2 Resource Agent Test'''
>>    
>>   diff --git a/cts/cluster_test.in b/cts/cluster_test.in
>> -index e0d28509d..f982be05a 100755
>> +index 38f941d3e..5a289e3fc 100755
>>   --- a/cts/cluster_test.in
>>   +++ b/cts/cluster_test.in
>> -@@ -171,4 +171,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_numtests"
>> +@@ -172,4 +172,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_numtests"
>>        || echo "+ To use a different configuration, remove ~/.cts and re-run cts (or edit it manually)."
>>    
>>    echo Now paste the following command into this shell:
>> @@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
>>    """
>>    
>>   diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
>> -index 2d9999ca0..8e3fb7203 100644
>> +index 444402438..0270c99ce 100644
>>   --- a/cts/cts-fencing.in
>>   +++ b/cts/cts-fencing.in
>>   @@ -1,4 +1,4 @@
>> @@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
>>    
>>    Reads a specified number of lines from the supplied offset
>>   diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
>> -index 8fa16fb69..d4306b02b 100644
>> +index 23e6a919f..09058ce22 100644
>>   --- a/cts/cts-scheduler.in
>>   +++ b/cts/cts-scheduler.in
>>   @@ -1,4 +1,4 @@
>> @@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
>>    """
>>    
>>   diff --git a/cts/environment.py b/cts/environment.py
>> -index db9d3db16..9d103fda9 100644
>> +index 6a97b1289..39e89fa6f 100644
>>   --- a/cts/environment.py
>>   +++ b/cts/environment.py
>>   @@ -639,7 +639,7 @@ class Environment(object):
>> @@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
>>    
>>            sys.exit(status)
>>   diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
>> -index a2692b1e0..f1d111205 100644
>> +index 8b0dd5165..9e8624bd9 100644
>>   --- a/cts/fence_dummy.in
>>   +++ b/cts/fence_dummy.in
>>   @@ -1,4 +1,4 @@
>> @@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
>>    ----
>>    ====
>>    which will be replaced with the appropriate python executable when Pacemaker is
>> -diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/Pacemaker_Development/pot/Ch-Python.pot
>> -index ed71331ce..27c7e22e5 100644
>> ---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
>> -+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
>> -@@ -39,7 +39,7 @@ msgstr ""
>> -
>> - #. Tag: screen
>> - #, no-c-format
>> --msgid "#!@PYTHON@"
>> -+msgid "#!/usr/bin/env python3"
>> - msgstr ""
>> -
>> - #. Tag: para
>>   diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
>>   index 6e362243b..28009f499 100644
>>   --- a/tools/pcmk_simtimes.in
>> @@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
>>    """
>>    
>>   --
>> -2.23.0
>> +2.17.1
>>   
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
>> deleted file mode 100644
>> index 5729447..0000000
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
>> +++ /dev/null
>> @@ -1,46 +0,0 @@
>> -From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
>> -From: Mingli Yu<mingli.yu@windriver.com>
>> -Date: Thu, 3 Sep 2020 04:44:09 +0000
>> -Subject: [PATCH] Mark declaration with extern
>> -
>> -Fixes build with gcc 10+
>> -
>> -Upstream-Status: Pending
>> -
>> -Signed-off-by: Mingli Yu<mingli.yu@windriver.com>
>> ----
>> - daemons/attrd/pacemaker-attrd.h | 4 ++--
>> - daemons/execd/pacemaker-execd.h | 2 +-
>> - 2 files changed, 3 insertions(+), 3 deletions(-)
>> -
>> -diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-attrd.h
>> -index cc8e29ee1..76778915e 100644
>> ---- a/daemons/attrd/pacemaker-attrd.h
>> -+++ b/daemons/attrd/pacemaker-attrd.h
>> -@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
>> -         gboolean seen;
>> - } attribute_value_t;
>> -
>> --crm_cluster_t *attrd_cluster;
>> --GHashTable *attributes;
>> -+extern crm_cluster_t *attrd_cluster;
>> -+extern GHashTable *attributes;
>> -
>> - #define attrd_send_ack(client, id, flags) \
>> -     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__, __LINE__)
>> -diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-execd.h
>> -index 4a52d9183..dab3ccdbe 100644
>> ---- a/daemons/execd/pacemaker-execd.h
>> -+++ b/daemons/execd/pacemaker-execd.h
>> -@@ -20,7 +20,7 @@
>> - #    include <gnutls/gnutls.h>
>> - #  endif
>> -
>> --GHashTable *rsc_list;
>> -+extern GHashTable *rsc_list;
>> -
>> - typedef struct lrmd_rsc_s {
>> -     char *rsc_id;
>> ---
>> -2.26.2
>> -
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
>> index f8cbb7e..a10e8cd 100644
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
>> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
>> @@ -1,4 +1,4 @@
>> -From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
>> +From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:00 2001
>>   From: Changqing Li<changqing.li@windriver.com>
>>   Date: Fri, 10 Aug 2018 15:08:31 +0800
>>   Subject: [PATCH] pacemaker: fix compile error of musl libc
>> @@ -7,28 +7,14 @@ Upstream-Status: Pending
>>   
>>   Signed-off-by: Changqing Li<changqing.li@windriver.com>
>>   ---
>> - include/crm/stonith-ng.h | 1 +
>> - lib/cib/cib_remote.c     | 3 ---
>> - tools/crm_mon.c          | 2 +-
>> - 3 files changed, 2 insertions(+), 4 deletions(-)
>> + lib/cib/cib_remote.c | 3 ---
>> + 1 file changed, 3 deletions(-)
>>   
>> -diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
>> -index 56c1ec7..a637b47 100644
>> ---- a/include/crm/stonith-ng.h
>> -+++ b/include/crm/stonith-ng.h
>> -@@ -28,6 +28,7 @@
>> - #  include <dlfcn.h>
>> - #  include <errno.h>
>> - #  include <stdbool.h>
>> -+#  include <time.h>
>> -
>> - /* TO-DO: Work out how to drop this requirement */
>> - #  include <libxml/tree.h>
>>   diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
>> -index 4d7b93b..8be8ecc 100644
>> +index 4de0a0f7b..7686637db 100644
>>   --- a/lib/cib/cib_remote.c
>>   +++ b/lib/cib/cib_remote.c
>> -@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
>> +@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
>>    #endif
>>    
>>    #include <arpa/inet.h>
>> @@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
>>    
>>    #define DH_BITS 1024
>>    
>> -diff --git a/tools/crm_mon.c b/tools/crm_mon.c
>> -index 7c63803..1ae6c21 100644
>> ---- a/tools/crm_mon.c
>> -+++ b/tools/crm_mon.c
>> -@@ -553,7 +553,7 @@ main(int argc, char **argv)
>> -
>> - #if !defined (ON_DARWIN) && !defined (ON_BSD)
>> -     /* prevent zombies */
>> --    signal(SIGCLD, SIG_IGN);
>> -+    signal(SIGCHLD, SIG_IGN);
>> - #endif
>> -
>> -     if (crm_ends_with_ext(argv[0], ".cgi") == TRUE) {
>>   --
>> -2.7.4
>> +2.17.1
>>   
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>> deleted file mode 100644
>> index f5e1829..0000000
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>> +++ /dev/null
>> @@ -1,30 +0,0 @@
>> -From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
>> -From: Chris Lumens<clumens@redhat.com>
>> -Date: Thu, 2 Jan 2020 15:08:58 -0500
>> -Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_printf.
>> -
>> -The placeholder version that is built if curses is not enabled does not
>> -have a type that matches the header file.  Correct that.
>> -
>> -Signed-off-by: Jeremy A. Puhlman<jpuhlman@mvista.com>
>> -Upstream-Status: Backport[git]
>> ----
>> - tools/crm_mon_curses.c | 2 +-
>> - 1 file changed, 1 insertion(+), 1 deletion(-)
>> -
>> -diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
>> -index c0dbedbf0..ecd0584fe 100644
>> ---- a/tools/crm_mon_curses.c
>> -+++ b/tools/crm_mon_curses.c
>> -@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const char *format, va_list args) {
>> -
>> - G_GNUC_PRINTF(2, 3)
>> - void
>> --curses_indented_printf(pcmk__output_t *out, const char *format, va_list args) {
>> -+curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
>> -     return;
>> - }
>> -
>> ---
>> -2.23.0
>> -
>> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>> similarity index 96%
>> rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
>> rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>> index 8576f18..6cfa057 100644
>> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
>> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
>> @@ -14,9 +14,7 @@ LIC_FILES_CHKSUM ="file://COPYING;md5=000212f361a81b100d9d0f0435040663"
>>   DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
>>   
>>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
>> -file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch  \
>>              file://0001-Fix-python3-usage.patch  \
>> -file://0001-Mark-declaration-with-extern.patch  \
>>              file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch  \
>>              file://volatiles  \
>>              file://tmpfiles  \
>> @@ -26,7 +24,7 @@ CFLAGS += "-I${STAGING_INCDIR}/heartbeat"
>>   CPPFLAGS +="-I${STAGING_INCDIR}/heartbeat"
>>   SRC_URI_append_libc-musl ="file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
>>   
>> -SRCREV = "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
>> +SRCREV = "ba59be71228fed04f78ab374dfac748d314d0e89"
>>   
>>   inherit autotools-brokensep pkgconfig systemd python3native python3-dir useradd
>>   
>> @@ -78,6 +76,7 @@ do_install_append() {
>>   
>>       rm -rf ${D}${localstatedir}/lib/heartbeat
>>       rm -rf ${D}${localstatedir}/run
>> +    rm -rf ${D}${localstatedir}/log
>>   
>>       # remove buildpath
>>       tempdirs=$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F: '{print $1}' | uniq)
>>
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
