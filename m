Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.4873.1615354241315895362
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Mar 2021 21:30:42 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=fumWdLWA;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2044.outbound.protection.outlook.com [40.107.236.44])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C15FA38C05B5
	for <yocto@yoctoproject.org>; Wed, 10 Mar 2021 05:30:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YILSeAIPE27AMKEhb+/JaGy0cCnOZh9yLH9wPwxneL4ABbc0CQvPRIMpip8uXDPZwaZ2yyfScPh7m5pKNIA3of3R5XozFXSa/F43lrjlLrm5cqQADO9HF81oU2+LakiVMTC0fcv/B3LMWDoPAcNQCY6jWzhivVmFUirHaIjYFngbzFvnXuH8S9fKLlKVlMY7VrfK74AH4EAZW13SefbONCRdoDbfjwpYDVmewHO2g3AkMkEiJIFplsC2AD5zGr7GDFDwvVO9vAJW79omiJ5+WD3AzanN4RBtsP16ZNoUwzCuQ2d//C732mHLPlkT5XDp1qjHmrSdAsW//wYYmnzS/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T8tKX2CSke3J76UiHdoGv83BGPBQc5B928cQi+nKKqw=;
 b=eD0FNhdA9416DDAYNTkFz8m3OGb3rvy4QWZyAU95Cm06QaNkQNIFDu0vsvqpBG/c1tmceZlXyCQNywQl7w03aREuADaUlnzb+xp5SRk3fgh7li7FG6bQBFqpd/7JDl+XI89bFV6cgh6YqPhlP/lPz6EMZZrgwxeBRf2VfqYYCBC/xARArp2rrh4v9wFRPGokF/tDXGDHUUDkvk4MXMfOkZLSntuGS/fsMeRHyx0fsl4hfJvUjZAx+Y2oMJ/yf5Rk1FxtJuriHydVV+ZXg76yw0ccuQgDvl6Ms2f0bZVZVG3IKftU7T4A00COIp9ybIa725ZQan3NIbeenxoZEmhU1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=T8tKX2CSke3J76UiHdoGv83BGPBQc5B928cQi+nKKqw=;
 b=fumWdLWAxw4j+/FHt87OgEueq66daatW5Exr1aWC47k3FgCB4BYp65bYHsfMuxn3U1vqjQWW7fF6FMcbaJ6uFPWC+dkyalKjt1Styw9OfpwmajOCTJYBLC167CCd4fT0960YbInopy/3x55c3IsjnqaaJXS92e5UgOk7xRbJmRk=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1536.namprd11.prod.outlook.com (2603:10b6:301:b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Wed, 10 Mar
 2021 05:30:38 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3912.029; Wed, 10 Mar 2021
 05:30:38 +0000
Subject: Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux-python: Fix build error due to missing target config
To: Joe MacDonald <joe@deserted.net>,
 Anatol Belski <anbelski@linux.microsoft.com>
Cc: yocto@yoctoproject.org
References: <20210309115511.7522-1-anbelski@linux.microsoft.com>
 <20210309130043.GA9162@deserted.net>
 <02b457c2-5719-ab43-8f23-e414aadff4d1@linux.microsoft.com>
 <20210309153208.GB9162@deserted.net>
From: "Yi Zhao" <yi.zhao@windriver.com>
Message-ID: <98f77c6a-8d89-fef4-0e5a-67ad67c28875@windriver.com>
Date: Wed, 10 Mar 2021 13:30:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210309153208.GB9162@deserted.net>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: SJ0PR03CA0359.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::34) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.174] (60.247.85.82) by SJ0PR03CA0359.namprd03.prod.outlook.com (2603:10b6:a03:39c::34) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend Transport; Wed, 10 Mar 2021 05:30:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6513c90b-a67a-48d7-3c9b-08d8e385a343
X-MS-TrafficTypeDiagnostic: MWHPR11MB1536:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB15365CA4510769BD9E7B6DB6F9919@MWHPR11MB1536.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GL6IVm8NWQOQmJRs2xACu6YhUh4g9jo5KHonvfFTNdeL36/nttCZ8C6GnUzjDvQMkhLViJ/jw9o5KGc+KZFCnt20C/PDRTfptrzaG5jdBkJkM0sNRmnmebcP1H4rX3zCGLmw2bGyq657wD8BpRz0Qyn8wD3yHvy4tLsIeMZDYWeBCAscLceEEcDpDUzkV/OFBm/YgZkYfexPsckXhs5Nh55sbGoMq0FxY8/VwdPy6LOHm0SYyfw9lSelMQts3DDrYoy26PirtoeCzKyQ/n23hX798pFavzcSqq69IcC3IO6vGl9Tyj1g4mpOWBbrRWlwRtyk5lmObG9tDWPzIQfYsdzM6IQ5NMLgpw16pPGjHVb6qNx6iu5rzWOwLNGBsrhVIWh/Sex0ZK05dYaUsbQpbcClmpaoQAuONoXa+JDfsAO8Z30UlDEWm4N4fciD28qF6ouB/5V7A5Vz/Pz10J/eL/ueYEyRbd4BeyuLuArFC8yIwN6Ldw4x/sUkz3wikyzsrjTu3MV1knlAw5vxhw84Eo7BPV0Ra7mFlb/3wc8JrDvmLW6yWNkPX2P4fU/ItghdsdoC68DHk5SAkWPmRXReXdViK/w6NsqHKyr3kExzk8yc0CCY4iYRHxtGgazsPsntD/zsgFId0Xj7EjlzUxGeJEZXpC+7CS4Ow4QZSWOGS/dR4cn2VkqV2A9YQQd8WfJVImwK2E4GknpLH3Gv4a8DBw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(136003)(39850400004)(396003)(366004)(2906002)(66476007)(5660300002)(66556008)(66946007)(6666004)(6486002)(26005)(186003)(4326008)(31696002)(53546011)(966005)(8676002)(478600001)(36756003)(8936002)(956004)(2616005)(16526019)(44832011)(52116002)(6706004)(86362001)(31686004)(16576012)(316002)(83380400001)(110136005)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?N1NVOTAwS0dLaGpGNjZiMm16REdqM09YVWRzM1JSMU9HY1dodW4rS2lFV0NI?=
 =?utf-8?B?UDZVbGZEVGtvS2Irenc3c2orSXQ0SXpxWE5xblMza25SS1JtNWIvbXZoRW1W?=
 =?utf-8?B?NzhOd0tKMG9QWUcrK3FmNHBzR2VqcDlFbm8yZElTNmNKcXZyaFYrUTN2Y3A0?=
 =?utf-8?B?SjNCQXR2aEt3QkxuNWxNc29kSU5oTGZHVEkxTy9qTlAvNCtiaFJIMEtpL3hx?=
 =?utf-8?B?QzgxcTl2UWtmOUhjQzEraktjOUFlSkcyZ2FGV1ZhOGQvSWl5cUtjai9tUEt3?=
 =?utf-8?B?TnozTWFNUFAxV3pHSnM0QWErTnRvcWxRdlcveUZ6RTlBRlFmYm55d0F6NkVC?=
 =?utf-8?B?V2pubjRXa0c0ZDBRWUtiaUFucmRsU2FSSjV1VmZNWWFkY0YwSFl1eFI0c2RB?=
 =?utf-8?B?QlhGSnBmWHMxTWlQcXhRdDVjMkhGcHJIcitiWHhzSlkwR09WZE5GVFB0Q3Jz?=
 =?utf-8?B?UmhHaUZqaUpaL2pDdUlCZzIyYVhBdno0RzNKd2pqQTl5OXo0V0hpM3BpTkxT?=
 =?utf-8?B?enp5OVBMMHhVdkxBM255STl1UkpVVEF4OVRKN09BQzdNdE4xL3EvNHNhNENF?=
 =?utf-8?B?VmdKenhaSTR4elNoNTRjMEVpcGtHcTJDaUpuQkNFQVUrR3o4V01Td2FQeERE?=
 =?utf-8?B?YTVBOGdXd08wUUFnN0FMcE1YMCtjVHVuemNSLzJ4UXBCdkRvb1dhRnFXci90?=
 =?utf-8?B?NW9TSmgybzNxaUhUcDJKQmF2dUlZUUIrWldtRVVtLzFCVmRUMTBydGdFdzRp?=
 =?utf-8?B?RnNRQkp5RERLVkE3T1lNMENwaTUySTY0WG40bEJqZjVZY3JLaXROQUdQZlNp?=
 =?utf-8?B?WW1hTzZYYUU5cmhGc25seEFERjZnR1NOcWNOSWZBNmxncmNPR1JtSWNESytF?=
 =?utf-8?B?SERrMVB2QW1PRk5kZlJ3bzlKTXk4Y1cyQUZqeGpJT01LV1JYRFhnQXdvVUxa?=
 =?utf-8?B?UEdvaDl4TEVya1QxcTlNUW5LYS9nZVNtSFNDYlNaYjJDbEFVUEhlKy9PWjRN?=
 =?utf-8?B?R2RMSFdiMW1wS0Z5SVM5bWJYdmFQbmtNbnNZZ21DL29ZcXlVTlFRSG9lZHk0?=
 =?utf-8?B?S3ZERFdmNCtUeGRCdlQxZHhEaWRzNmowVG9rUUVNR3VEOWptd2EreWZXL1NQ?=
 =?utf-8?B?VTZXUERjOTFQNHhseEZTU08xM1NBWWlhZm1ucDM1eWJsSVo1V1c2N0ZwWG9o?=
 =?utf-8?B?NE9xZUJPektwbzBBejBRQ0dRam1oL2h2T3BjUjBjOG43TVlmNDNYZTBrTFFr?=
 =?utf-8?B?VFc5a0FDQk1LSnlVOHN5T3lWblV0VWlnVDZiWVpBd2ZkUXA2cFJCREUvanVl?=
 =?utf-8?B?aEJXRDQ5bDFLcXM5eUFpWTN1OVpidHpSWTh2MUtTbFVMaWFZalR5Um4vNm40?=
 =?utf-8?B?V0ZmR0I5T0luZS8zeEFZTEFYNFNzYlZGRVlZeDJtcys4TytTcEg0eGk2dnN0?=
 =?utf-8?B?eUVTdFJ5dTVtWWhDQmNpbXB1TGVFcUt5WWUwM1pRSzVqekNQbGRHQXd2MHU2?=
 =?utf-8?B?UWl4eE1scjZlci9FZGo1d05tMzVJd3VzUGV2SHhuNXZHa1ZqNWZCeTdsVERD?=
 =?utf-8?B?T0pseUIvaTFRRWROdzVLQloxUzNkSDhTcFVZVHhHd3Z4VGxobXZaWHM1WWZU?=
 =?utf-8?B?OEtIcHJxUHAva1NkTEk0ZGpaSi9xVEdUS3lyRDBDMjdzalNuSDlBaitvZXZG?=
 =?utf-8?B?YTdYV0MrN3ErNmdMNWFBTW9tUkRvemR5akVlTVo5enpRUDVCRk1ZdnNaNzEz?=
 =?utf-8?Q?AFRJl/76MGWgI5BnbdvjA+VPYErUkBK6vLZpyVC?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6513c90b-a67a-48d7-3c9b-08d8e385a343
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2021 05:30:38.5508
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ob887T7Dq2G0DFvTeQFpSqxNjcC2R3Sxllv54FVQobAPDm32S2DGGJYpUZLwWESnkMIi8kIUOjOCo07ezBhnmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1536
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable


On 3/9/21 11:32 PM, Joe MacDonald wrote:
> [Re: [yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselin=
ux-python: Fix build error due to missing target config] On 21.03.09 (Tue 1=
4:53) Anatol Belski wrote:
>
>> Hi Joe,
>>
>> thanks for the quick check. The patch applies fine to dunfell and
>> gatesgarth, master has the changed recipe version in the bb name. I was
>> about to rebase to master but pulling shows already did it. I was too s=
low
>> :) thanks for the quick fix.
> No problem!  I assumed you were working on a just-slightly-out-of-date
> master branch and my work tree already had your patch half applied when
> the 'git am' failed, so I just finished that part up.


Hi Joe,


This patch doesn't need to be merged into master because I have fixed it=
=20
in commit fb15056ff44318d7886fd0f68e2f6dba716e9be4.


//Yi

>
> I'll get to the other branches in a bit.
>
> -Joe.
>
>> Regards
>>
>> Anatol
>>
>> On 3/9/2021 2:00 PM, Joe MacDonald wrote:
>>> Hi Anatol,
>>>
>>> I will confirm this against the other branches (dunfell and gatesgarth=
)
>>> but your patch doesn't appear to be against the current master branch =
(and
>>> it's unlikely one patch will apply to all branches).  Can you send out
>>> specific patches against the head of tree for each branch you care abo=
ut,
>>> please?  Then I can get them merged for you.
>>>
>>> Thanks,
>>> -Joe.
>>>
>>> [[yocto] [meta-selinux][dunfell][gatesgarth][master][PATCH] libselinux=
-python: Fix build error due to missing target config] On 21.03.09 (Tue 11:=
55) Anatol Belski wrote:
>>>
>>>> This fixes the error below:
>>>>
>>>> gcc: error: unrecognized command line option
>>>> =E2=80=98-fmacro-prefix-map=3D/path/to/build/libselinux-python/3.0-r0=
=
=3D/usr/src/debug/libselinux-python/3.0-r0=E2=80=99
>>>>
>>>> Without inheriting the config, supposedly a wrong compiler is used.
>>>>
>>>> Signed-off-by: Anatol Belski <anbelski@linux.microsoft.com>
>>>> ---
>>>>    recipes-security/selinux/libselinux-python_3.0.bb | 2 ++
>>>>    1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/recipes-security/selinux/libselinux-python_3.0.bb b/reci=
pes-security/selinux/libselinux-python_3.0.bb
>>>> index 2b5438d..3c03df1 100644
>>>> --- a/recipes-security/selinux/libselinux-python_3.0.bb
>>>> +++ b/recipes-security/selinux/libselinux-python_3.0.bb
>>>> @@ -4,6 +4,8 @@ SRC_URI =3D "https://github.com/SELinuxProject/selinu=
x/releases/download/${SELINUX
>>>>    require ${BPN}.inc
>>>> +inherit python3targetconfig
>>>> +
>>>>    LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e77=
5a270d0d0"
>>>>    SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
>>>> --=20
>>>> 2.17.1
>>>>
>>>>=20
>>>>
