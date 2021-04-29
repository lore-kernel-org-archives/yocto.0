Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.3598.1619733939488252389
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Apr 2021 15:05:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OZovm+mk;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2080.outbound.protection.outlook.com [40.107.244.80])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7AB1538C0881
	for <yocto@yoctoproject.org>; Thu, 29 Apr 2021 22:05:38 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YzLY67/0mfNeLZh0nv4pfdAy+L7yFlpf507/e8jIIe7IyIy2ZReAxt6+d8mnR7HimK9Z0Mfh0eicnJsZ+FuGrk7XxnwU3Q4OquJgn83Oe7YbZiKCJfP5e3yIahL4pzRMeN7WGUqJqo8sqNAfTH9EuD4yOVacXfQx+6pBg4RVhy3S06Tlu49fQ94gV4W6nciO0ZnI0iR9zkpkSZF4X066ZwUSmNUdkJJ91ZYDZ9WkRr04H9HwCrynwat+ICLCcgREhZQP4jFO+A3ReqKubxlgd+6Q/SLA65Pw+HQzyLlqPD2oP9qcV5aK+dHuo6n4M4ln/sK5GyNs4actnti7Ab3BGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d7fRKZZT2pQRfqrx1BKv2LV9WB5fbHU7OEcGYlY40SM=;
 b=dhqX+crVj5svedQjGvGYPgTOfnLgEP1Pi/MpxoPBArDjzt2NPUk62CFnClihxf51LcJptR76FO4iTUxhr2FLd5PkS4qGNGJDwh7cRW/OJhIZ3hR0a+JJH7fp+cQmLQpykzI96wvrSI4oSTgLeWggzcit4Fd5VZvAPvUbRA6xcDTq85Yd72hkMqYfphrybrh9SOgWyxhXwETBMI+vAetACno3FBvN9F+kbNec9/vFN+Cf/6aPJB0JCs+VOkh9ldTzjjp/7ttvjau9Z7LJuJLncZJq5Rz6vPfLlZunvN+j3LaXS+/zp1fN6IIJWn8P/WUFF2r0oUaXEWWJSulIAoQn0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d7fRKZZT2pQRfqrx1BKv2LV9WB5fbHU7OEcGYlY40SM=;
 b=OZovm+mk2pLwhoAtj8sWkMAxRN+quNKuN0EVlNGQWPQTSSl9ftNEN0qcVWtOigiOtMu6gYvCG94JGrbZvNY3M8YFr3Z+5yRILKYwap3L6WJGmuYPmxVumgiw5LIReZRkTzLHTK0bMJP5MpizmOuBmMRmnp4OlWv6wDwFXg2ZrjU=
Authentication-Results: sakoman.com; dkim=none (message not signed)
 header.d=none;sakoman.com; dmarc=none action=none header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3193.namprd11.prod.outlook.com (2603:10b6:5:57::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.23; Thu, 29 Apr
 2021 22:05:36 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.025; Thu, 29 Apr 2021
 22:05:35 +0000
Subject: Re: Can layer maintainers add yocto-X.Y tags for yocto-3.3 and later?
To: akuster808 <akuster808@gmail.com>, Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
 "Jia, Hongxu" <Hongxu.Jia@windriver.com>,
 "Mittal, Anuj" <anuj.mittal@intel.com>,
 Bruce Ashfield <bruce.ashfield@gmail.com>,
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
 <53e2d45c-f803-8dd4-02c4-961676f92b42@gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <3e00d517-0a3b-e0b8-cc09-aa87877650ab@windriver.com>
Date: Thu, 29 Apr 2021 18:05:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <53e2d45c-f803-8dd4-02c4-961676f92b42@gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR06CA0046.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::23) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR06CA0046.namprd06.prod.outlook.com (2603:10b6:a03:14b::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.25 via Frontend Transport; Thu, 29 Apr 2021 22:05:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15a7388e-2c1a-4f80-01fc-08d90b5aea58
X-MS-TrafficTypeDiagnostic: DM6PR11MB3193:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB31932727D4B8595F33781248F85F9@DM6PR11MB3193.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Cfnjo3N4m+brUWglW15iq7iUwU8dfz4SVtQOyanXbl52yX/H9GNmJpdAzEN3rSvtDpqx3wbDCi+DpFBAMUJmJebsHohORUip3+mY7kULzdWhS0gkxNcDgcbxzYDIzXhuganB5Q9ww1CmOIRpSDXiJVYsKN0n4l5/qvvdFndMj0juuWIrG1GWmbux+U9P+YuFSh5iJjUkPWpo5GIYf70o1bXAr1WlWJ/ri8PjCv/UMiXlxi+FEcDb2c3a5E/LUQtkKlOx6crMrSMtWVxN4z5obziiKiUMRpA+OzZuHvaMB/rrl8iuhkb7kePkZJa7Qk67goz/SX+owej4bL3eiDZyee7UtjtsyLLONLvl9cQf5fO1bRECvoH1dF6H9aHqJSpBH5wWIcYYWMIZe1G3RIWT+gwARZNi00Ep2/L8q2AMMeZ5ZUR3zXQLIXEEq4AjWJMPZCqxws/9l6AQvnGnqKjx/tYEq34HCn4nECET7D5eKAluqY97th4B+dXD0uXZGopBzbpyY5kYTcA6LuMBmpcHSWyXFrFNtk3x2QtahhzKKtCXwpwDzFm78QbI6Pftwcph6Olv0NuQlx94Mo6tqOQOftOZvqI6r3hSO3Wd/NT1OOdKCjbKP0ELOTF9LECMTx6ys6iV6c6QHpS2SMF0g97zB6Rn3FwuM/Uf1nezdNjxodqtPi6p8CHIF3wUDAOXQvUmAPRs3EHNK+nQWo0d7QuJeMdG1Kms3t9Siz8HbwbNx9s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(39840400004)(346002)(136003)(366004)(376002)(86362001)(36756003)(6486002)(38350700002)(83380400001)(53546011)(31696002)(38100700002)(52116002)(110136005)(186003)(16526019)(26005)(54906003)(66556008)(66946007)(66476007)(4326008)(5660300002)(2906002)(31686004)(7416002)(2616005)(8936002)(478600001)(956004)(316002)(16576012)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?YWUxckIxT1k2WmZpUkxCSVZMeVpCa05tb3FaMGhoWjlDdzdPL1pnMjMwM3oz?=
 =?utf-8?B?R3k4V1c1SU9MbXQxcmZEVDUvT2g4aFh3ekkzbnphWmtlWlRVQ3pyeVRhRHNY?=
 =?utf-8?B?QzNQNTVpeVVKQ052aEhEazRsWGhUUEJTUUk0TGVEenpEbGtpNXQ1c3ZYS0tY?=
 =?utf-8?B?VEp1UkZ6dVZCYXBmbU14TVVmZ2Z3eUpnbjBHNVRyWnl5aXBUSWVzSGk2eGZT?=
 =?utf-8?B?Nm80WkZnQ0I4MkQvSGw5RWNQVHkwL3ZXUjB0d2lmOTBSWTF0Vlpkc1dPQ255?=
 =?utf-8?B?c2VRQ0w2K2hmTEt6QVNsU2RNWHBzaGY0YnVudkRDcTBHR1JrSVlFdHB1SHlI?=
 =?utf-8?B?MlFDemNUaWpiLzBuUkRvMkFvWDVqUVRTK29TaXhBSzRyWDRaTmRuUHdWZGdn?=
 =?utf-8?B?YmxhcE1FeHVhOWN6NEFNc1RpMFpEb1ZsbkhmL28yVUcwZXhjUkQ3NEdSQTdF?=
 =?utf-8?B?TGk1RjZmZ3NkTU1XUitsUGlrVVk1SkthNlBCaHNHa01QT1RBMndOOEl2SEox?=
 =?utf-8?B?c1dQc0VCSVJuQWlWa21wZE5mUUdCNTZCRXU1UHdnZ1VueEhYZVQzSnFKeUFE?=
 =?utf-8?B?a2M2cHpxV0RYNjJyWmp6a3FnUGRIYWNIajNwa1pTMnZmWG54SHZ0ZHYveHpv?=
 =?utf-8?B?YlplRk10UUh0NHBYazhyZXlqOWNtcG82NlNpUDY0M3JrV3ZFYW9jb1NmelpH?=
 =?utf-8?B?eXBkSENkNk9QRC9ub2swZjBBUnpmcklrZDVQU3RsZVV5VGhOL1FsbWkyK05W?=
 =?utf-8?B?LzFKdUVNcmpvdXZpOGdaRUNTbmRjVTErdnZQSDE1bGJYcGhvS1NmdGI3M0Fv?=
 =?utf-8?B?Q1lFVFZJUld1NEk5Wm9NSzRWaXA1c1RGRHVodm9GUjZ4bmFLNHRUTk5CVzZo?=
 =?utf-8?B?M0lKNlFsMVA0d0hCbUVZZStGaVVqdWRVL3dEeURPakJoRldlVko3eElOTjlL?=
 =?utf-8?B?ZHZEWU54N240RVd1Szk3ZUJLU0l6SHczNS94d1h6bHRGNVY4azBDeDZRc3Jp?=
 =?utf-8?B?Ylo4dFIyRWNIUkV3WG55NTRwbjJOQzBoTFRwZWVqeGRDTkhpWEpHYzFSTFN2?=
 =?utf-8?B?S1NpSDlPZWlRbm5rZngvaVRsUDVzbU9GcmE1aUZFempoc1liWlhudmk1dW9t?=
 =?utf-8?B?WXk3NExjR1c4bHpzM0VWYVhWcS80NEFmSDkwbDZoNnJUL0ZEVk9ReWc0VlFY?=
 =?utf-8?B?SURabktqVmpjcEdYR0pGTHhWcmtMN0hjQ1BCTzR5M3FZSHAvOGh0UC9yR25P?=
 =?utf-8?B?bWtTR0Y4VTlJVXJTVEk1RDNtdCtkZ2lzd1V6Y1lTRUxVYmt3ZkFKZHIyTHor?=
 =?utf-8?B?WFI5WlBGK245eW9aNjhEK2FFVVBCWXBYSzF1WStiYS95OHNYeXJaODhaclFN?=
 =?utf-8?B?RmhTMU5xUHN1UW5VL05wa3JTQ1dlUmZWU3pYVEQwb2NCZGg4Zkl0SHE0REVr?=
 =?utf-8?B?K3hJWXBEUDNkRWlua3FZcVM1b21oRTYwWW5PR01LZXpGc0xvNktDVXF4NWhZ?=
 =?utf-8?B?b2F3Mzl6blh2b3ora0l1N1BXdmZabm5seDQ0T2Q2YnJlUWk3cDRxYWVhUVpt?=
 =?utf-8?B?R25GeUVmMWprQWtkdi9PRlRXS0VWZXI4RG5WandNc3FnNTFjbWpTSzhybStH?=
 =?utf-8?B?bWZITW1JKzBOOVFCSXNDLzF1cnMvZWF2SHRqbWhuUVp2T3FqSURpVmplczBB?=
 =?utf-8?B?VzZYUnFUR3BudlgyQXVvTXFtZEJqcFpyeE9sbzhFR2xWbXpxSmhPRjRSZWVH?=
 =?utf-8?Q?cxa0r+vdNpti5rDW6ylaZjLXtRHf4BoGp2NjYVU?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15a7388e-2c1a-4f80-01fc-08d90b5aea58
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2021 22:05:35.7903
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MUmsQtmGoeP9i0gyOfRna8H40B4XrAQ2jDf9/l0OvEABYGkWlQ6lR/YNUgk53RiiaIOC4fweAncbg7vl/ZQD19NOA+P/dy9h4Nr2+EeKxDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3193
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-04-29 5:22 p.m., akuster808 wrote:
> 
> 
> On 4/27/21 10:06 AM, Khem Raj wrote:
>> On Tue, Apr 27, 2021 at 9:48 AM Randy MacLeod
>> <randy.macleod@windriver.com> wrote:
>>> Hi,
>>>
>>>
>>> I've CCed some of the maintainers of more widely used Yocto layers
>>> to get comments on about tagging. Please add in people who I may
>>> have missed.
>>>
>>>
>>> For a while now, oe-core has had a yocto-X.Y tag in addition to the
>>> release branch name. This helps users easily find the exact commit
>>> that corresponds to the say 3.3 GA release. There have been some
>>> omissions in tagging but Michael and Richard are adjusting the
>>> release process so that tagging will happen more consistently.
>>>
>>> Most yocto layers have not adopted the tagging perhaps because they
>>> weren't aware of it so that's why I'm writing this email. Tagging
>>> will make it easy to find the first commit for a specific release
>>> independent of what the branching policy of a layer is. Layer
>>> maintainers sometimes create the release branch in advance of
>>> when oe-core is released and by adding the tag, it would make it
>>> clear when the layer considers content to be officially released.
>>> Of course it's up to users to decide if they are going to follow
>>> the HEAD of a branch or, for some reason, stick with a tagged commit
>>> or private branch off that commit.
>>>
>> I think this could be a good thing, although it does put the burden on
>> release maintainers. mostly they
>> test against the tip of the release branch,  So if yocto project
>> testing is including these layers for wider
>> testing and can then recommend a validated commit then perhaps this
>> could be made viable.
> 
> That could open up a can of worms as who will fix the QA test failures?

Hi Armin,

The community will fix bugs on HEAD just like before.
It's a tag indicating where the branch was at GA time.
There's no obligation for he maintainer do do anything in addition
to what they were doing if we didn't have a tag.

I guess that could be made clear in the README if needed.

../Randy

> 
> -armin
> 
> 
>>
>>> Are there any concerns about attempting to do this for yocto-3.3
>>> and later?
>>>
>>> Should we make it a requirement for yocto compliance?
>>> Should it be a feature tested by the yocto compliance script?
>>>
>>>
>>>
>>> Here's what's in oe-core and bitbake now:
>>> $ cd .../oe-core.git
>>> $ git tag -l | grep yocto-3
>>> yocto-3.0
>>> yocto-3.1
>>> yocto-3.1.7
>>> yocto-3.2
>>> yocto-3.2.1
>>> yocto-3.3
>>>
>>> $ cd bitbake/
>>> $ git tag -l | grep yocto-3
>>> yocto-3.0
>>> yocto-3.1
>>> yocto-3.2
>>>
>>> --
>>> # Randy MacLeod
>>> # Wind River Linux
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
