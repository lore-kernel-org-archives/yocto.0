Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.1683.1619725071223555121
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 12:37:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=NuuRCtnK;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2083.outbound.protection.outlook.com [40.107.237.83])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6E18D38C0891
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 19:37:50 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=isVZ1SWxiaPcAw7UIARLzTwFGNBrDRVLxD7BuEXfP55H8vm/2l+vyY/RnkrP96bpF/5S9gAQZwnXKtb9polLlXVDKrQkBwnlzH5hE7FZn/gY7fQxH5JnzPDulLW/okNQujLfvmKs2+6fdSVJ8CdPhB9+4jrSx5iahSLYVSBYtbA/Br/j/Cg5ao1zXQGRereP7ubabqqN/bY1dU2SzmylN7gNpHRWK/bS2nSY85m9Vu2RGI3HJQKHsKc6c+8ZY5poq5t9Q7mV1keiWZnvaFwcFXs/HVD7LddHfm/BPsko2DaB9yNmxudffvGcCK3D5bubFQs9WGWVq3gQ3UXljMFWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UhTZRyE/Gu2suL9gF9Z6i02N4+jU3xLnmtbKoiu4otI=;
 b=UR81nI3hRyRb61fyPC4zm51+EOR8aO6cplS7Aes0eQbCf3dLYaXKVHx1v+dLT0GY0QUzK8WeTHB9WoSyNUzisDbmsWiPpFK7A0o7MwbQBrjBn5ZbBD2AonOsGVvRt0wMWEyMdhG6LoHND+/2/2zGJYcUmsU/0jTaMeDTQ77VJXJ9Ks9kDO/o1Sh8PPnwKho3f0X0DekkwC20P95wNMubPDxz1ye5M+IFRtmK7C4DGEZR570EReOZIOT8h3976NQ5l2zhfLpv0aAu2TXzSqe7BondtUyT/JEoZYj9z15MUAavas7/qpbNO1Rq6wkqnzlRVAGz0nIFExweaDlJZZDgew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UhTZRyE/Gu2suL9gF9Z6i02N4+jU3xLnmtbKoiu4otI=;
 b=NuuRCtnKcuZv4AbiBUjO5oMNSUYci/9EbmynnDdNtBrXSPqLhR7mttnJ5JAWvsFVf/Puu89vzwPsxFM6NB+Tqnl7v1ns5fdrbq2ItMh35g++W0hRvkHIm0GSx6BveBHlSrRSXHSxiJuLc+Di/Rz58DIViylugvNACE9D7/f+u84=
Authentication-Results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2267.namprd11.prod.outlook.com (2603:10b6:4:52::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 29 Apr
 2021 19:37:48 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Thu, 29 Apr 2021
 19:37:48 +0000
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>,
 Armin Kuster <akuster808@gmail.com>,
 Richard Purdie <richard.purdie@linuxfoundation.org>,
 Michael Halstead <mhalstead@linuxfoundation.org>,
 "Wold, Saul" <saul.wold@windriver.com>, Joshua Watt <JPEWhacker@gmail.com>,
 Jia Zhang <zhang.jia@linux.alibaba.com>,
 =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@gmail.com>,
 Derek Straka <derek@asterius.io>, Kang Kai <kai.kang@windriver.com>,
 "jpuhlman@mvista.com" <jpuhlman@mvista.com>,
 "steve@sakoman.com" <steve@sakoman.com>
References: <3a55fddd-700a-41f2-5de9-f35dd46059d0@windriver.com>
 <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <413f6d51-50a3-c38e-325f-6493059976cb@windriver.com>
Date: Thu, 29 Apr 2021 15:37:43 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <CAMKF1so0T4HodY2fcEQ7_pc8Rign9ADMaWxLNM_JSs-xtP9XbQ@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR20CA0025.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::38) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR20CA0025.namprd20.prod.outlook.com (2603:10b6:a03:1f4::38) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27 via Frontend Transport; Thu, 29 Apr 2021 19:37:45 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 88fb93ca-09bd-42e1-4872-08d90b4644ec
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2267:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB22675EC0F4FABAE74C656CEEF85F9@DM5PR1101MB2267.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/cD2Q0dUPXo8Q2lKRGVZ7jzm4SilLNF9+pF8VIgfhR51snc6rW52DH2TKS0Zqffwtdpr+rh3HcIxEt47OVmIjjfgnEoFZwk9SF6k7kVPVhqorLkk7lb/V5IE03DnhGE0qNGsXSjHE/Cpi22sforubedJaxcq4dnqvj+aIVs6zfpsS6sczArWF1GYwsxRfyIibL5bQu+z8C3oeVVA3THvmOTmnwHFk95rcYJrRcUI3V8+RUsE39f0CDHigCAG8f+fyi+dWFgmhqEzblXposuTk4GIjJfbNIypAxFwPIhOYuWdaVDB1Q3x8ltYC7qlAzcQXtvIHyaw2JohkoV+LtTL1XGxS6NEoU/XFwhwNbz36PceKxABh/ApI51rJWkzRRb9nl82K07rc8s3BAj9aUDp8FGiH2pXa9FodjctEW72Qr5LOUpTqr5KZxsgLENCDabn55xnAosUnxg8EQ7QeoXpc9vdaAjH8BT8NSfJJrBoYnX0azW6FpeqMDSvXZ6IshJKBdNfFylO73aXxPF7T1AwkN1ZV3CkByGQMgDCajgEUnX5VQxvjQG2QpisSgrGnwsEXUajREUvaoCPouNeo9Udb/veQhw9Jjr77PCzUBb/6IpxmePlVRBCGhd+MDBI6TZaYEoCemdO8otdt23I8ZitSB3u8RLBWN1Ps73iBRpGfDLaOvYG+aXhjN+QH6dRlQEpGHr9X8zRQpWt8oE9Gb8goJB/GsHw3b0G+IhqCBCZ0noVGOwRODueoUR/GFNwfIUiH8TJrjCe2LqMyeFkUKeBKuUwfj/pyHSLs/Ksg9m4VAQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(366004)(346002)(136003)(39830400003)(66946007)(6916009)(16576012)(316002)(31686004)(16526019)(66476007)(26005)(54906003)(83380400001)(38350700002)(66556008)(7416002)(38100700002)(31696002)(53546011)(478600001)(2906002)(6486002)(8936002)(956004)(8676002)(36756003)(966005)(5660300002)(2616005)(186003)(4326008)(52116002)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?c2p0enZ5UVNuVjFDYkZMQ2RRYlUzL0QvQ2hLWUN6YkxHVDl3WVIxWkZIKzRU?=
 =?utf-8?B?VTFrNFRSYTZneTk3Si94T1VaS0d3bHMzK1Z5MzY4M296alhqK05UbWNhbysy?=
 =?utf-8?B?WlBRWk4rRCtITE9hazQ3SGViNTN4RXhSaUpoczFJUGwvNlBoSVEreU9ZemJm?=
 =?utf-8?B?T1ZKZFFZRjdpaUhPTEtvbU9CM1JjS2p6YXQ0RjNySmdLY25MSHoxMGVQaGta?=
 =?utf-8?B?akozZCsydjJXeWJ6QjNmQ3l6WXI2a05ObFR2b3NPOXBOWGllT1gyL3h2VEhq?=
 =?utf-8?B?ZzNDVFprTzZ1UFdQTVg2ZVhNM1FGYWpPQ0RubkhlSm8vbDBWMGE4ankrV0Qw?=
 =?utf-8?B?OXJmaFJPcEV6dmtuc1AwTVh1MDRYeHdOaWpOSUJNTGY2VWtNVWx2Und2ajBs?=
 =?utf-8?B?YmFBakJTSHFCdzZwS1pPTVU0bWRPcGFrd21xMTE2QnFURUlUMEZ0REJzMU5z?=
 =?utf-8?B?VENhSFAzNzF5NEg1czlkQ2VTdHovaSt2bE1GY0g4cXFVQTBzVXBCSkVYMVdV?=
 =?utf-8?B?eE1MYS9IVXBDME8zQ1pxU1k3dlM4OEJsN3k5b3Zud0YwRU9SNFljbnE1YVJy?=
 =?utf-8?B?ZTFDNVpBbWM1c0tSQVpKYjZBVVpWWWZ4bndCaDI3MmptcGJGQW1jbVJPVW9a?=
 =?utf-8?B?OHBoTWxMakcrVzEvT3g1a0xtcVlrK1IyV0VwRkRQemk1ZUlCNkhCRmJMTmZI?=
 =?utf-8?B?YjhoeVl6emFwTzZ0NFAyaFRTOHRENVRYRDhJT2hSTzlTNmtYcEo5V0tPZ3Rk?=
 =?utf-8?B?M203WmFaK0RzaVc4Rmh3OE9EUkRuSFZ5dmtLb29FaGhrejZ3YmZGNjByKzlk?=
 =?utf-8?B?OXAwMHhRK3ZUNlYvS1Niak5BcndaTTc2RWQ5cjBvSUNaVTdjV29RT1J3WlFw?=
 =?utf-8?B?NDFMSUhuSCtVb0VQTWxFOExxQk5uWlR1Q01ZQ05iVkpWemhDTHl2RjRyMUZD?=
 =?utf-8?B?Y2FjVy8yZzVaYWZtT09TMkE3WUtTNkhTTWdjUllyWDNickZCVlNJN3NUVmty?=
 =?utf-8?B?azZhT2xDWlNpS2pHT2xUSmduNzhFWTJ4UjExaHljNmlqb0lOUkV6SDVJcndV?=
 =?utf-8?B?UTljS000SWJTdWsyUHN0bEQxVnlkNlBYbzlQbWVUQWxZTmQwZkJOdWpRWmFX?=
 =?utf-8?B?TmY4MzRSbTh3SzZBbDkzUXpmT1ZqcExkaHFGTFQ3bW1wTHFmMnNlUnhhVWlz?=
 =?utf-8?B?NGxnMlM2K1FiOElqODVmbGdmMXl6ZnRibG8rUjAyMFlBNUM0MnlweWl3c3lV?=
 =?utf-8?B?NWM2OHhUUFpSZkk5U0ltNUhybUZIUkVpQWhhV2M3eXpsMmVlN1QxaDhkQ2xW?=
 =?utf-8?B?VURZSWpJeGtjOXhVWVlDRlEySGprZzd6WlF3eDNoTVV5M09ZZ0g4ZUQrekxI?=
 =?utf-8?B?ckMvQW84VVhYbUNVK3VEQjNkanczVmVhWHkwMktMTnJwNWFhRC9sbk9vWFhw?=
 =?utf-8?B?WlNpWlcvZ3FhQWd6MUpONWoyVG12d0JKOHB2cWF6QW8vSVJvMXhRc0FCRGdx?=
 =?utf-8?B?ZHpkaEtPV0RlaGsxaHVlOHhNNmgvcEZ4enF2cWMzdllTNkZvRERscjNMTXJW?=
 =?utf-8?B?WWU1aEtUQnFhWUFDbDQvUTFWWHg4a2pDZ0llNjcwVWVveUwwbEkrT0NZdTNj?=
 =?utf-8?B?YXh0SjhQM3cySkh0QndlM3pQWnFKaFptZjJiRkN6Z2tYUlFSUFJQbGdVa0FV?=
 =?utf-8?B?ZWJOanl2cERUMlBzdFVLelFLVThFaFBXRUVzNERqbjBXUXBuZ0dYU3d5eTJv?=
 =?utf-8?Q?w1/cO6+hXYaxAgja9vcoMs2wUCEeVa/FwAs/JFr?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88fb93ca-09bd-42e1-4872-08d90b4644ec
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2021 19:37:48.2897
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8C6Thh5ktvHGxdL/C2AxvT6SG9L9zqqP14aqSO9VgoD/V3fS136YhFZaULypyEIQ4NmbKDSvM8SikypyNVmgag98l7YLywirimGBKINU4WU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2267
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-CA

On 2021-04-27 1:06 p.m., Khem Raj wrote:
> On Tue, Apr 27, 2021 at 9:48 AM Randy MacLeod
> <randy.macleod@windriver.com> wrote:
>> Hi,
>>
>>
>> I've CCed some of the maintainers of more widely used Yocto layers
>> to get comments on about tagging. Please add in people who I may
>> have missed.
>>
>>
>> For a while now, oe-core has had a yocto-X.Y tag in addition to the
>> release branch name. This helps users easily find the exact commit
>> that corresponds to the say 3.3 GA release. There have been some
>> omissions in tagging but Michael and Richard are adjusting the
>> release process so that tagging will happen more consistently.
>>
>> Most yocto layers have not adopted the tagging perhaps because they
>> weren't aware of it so that's why I'm writing this email. Tagging
>> will make it easy to find the first commit for a specific release
>> independent of what the branching policy of a layer is. Layer
>> maintainers sometimes create the release branch in advance of
>> when oe-core is released and by adding the tag, it would make it
>> clear when the layer considers content to be officially released.
>> Of course it's up to users to decide if they are going to follow
>> the HEAD of a branch or, for some reason, stick with a tagged commit
>> or private branch off that commit.
>>
> I think this could be a good thing, although it does put the burden on
> release maintainers. mostly they
> test against the tip of the release branch,  So if yocto project
> testing is including these layers for wider
> testing and can then recommend a validated commit then perhaps this
> could be made viable.


How about:

https://git.openembedded.org/meta-openembedded/commit/?id=71b546ed8595b14d29efc1e8b951f8c845ad10c4

../Randy

>
>> Are there any concerns about attempting to do this for yocto-3.3
>> and later?
>>
>> Should we make it a requirement for yocto compliance?
>> Should it be a feature tested by the yocto compliance script?
>>
>>
>>
>> Here's what's in oe-core and bitbake now:
>> $ cd .../oe-core.git
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.1.7
>> yocto-3.2
>> yocto-3.2.1
>> yocto-3.3
>>
>> $ cd bitbake/
>> $ git tag -l | grep yocto-3
>> yocto-3.0
>> yocto-3.1
>> yocto-3.2
>>
>> --
>> # Randy MacLeod
>> # Wind River Linux


-- 
# Randy MacLeod
# Wind River Linux

