Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.44])
 by mx.groups.io with SMTP id smtpd.web08.1002.1618509352510230355
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Apr 2021 10:55:53 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IYkS1Dyn;
 spf=pass (domain: windriver.com, ip: 40.107.244.44, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X488VWcDLWAu7SCOocF5lm7rz3F4O1QVTnMi9Pv8KmcZgA1q+wY9gvUZA1ZZiWvnJiDTUsutK6VVutPKSijNoRNK/37372TGQL8ecNCh2s7PHIbLMn1P71bimAAxSVpBY37QuqLL/VrXe9b6C2JmDd9Cmz2yMGhnTMMRD1uXWeY9P3AdJVSqqKhjcD+8z7GMJ9k0Fx2MyOBfMnFvTswY+Dz4tNWYnJFW8Ayq/F/CxauexWXqcNVWg27XfC7xC3BlrkdgPoclhQeZ/SjjKf8JTbS3QEolqDHjQsGvCX10WbZRntYnkkR13nEe6tJlY7H2+oxzs+DWb84k4O6ls+6u1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A1fwTNM0zcFsvSA6uulAOio1npSbLYiqA9X/RopfeD4=;
 b=TVcg3o9cwfY8tQqzIPYJpuVslbBHXWZS+rQwkVdJfsutJaAMIvwgTHh9j1tgIoY3wVRUw95lx4u/EWnYYVVWvVlzvDvcOZPU015hYWLbJUsQjZ9hykvXyN3WhfFdW0zOa1wGwU7428Bj4r7GNQ5NVg4/iUfw7mndylq/MyOVS5vBfv7mWYTzfhfABT7ZTZgAkZ0Cz8sCirCtyvVRuwxpgNCYzPQljdFljjABMj0n+aWyH0c6QSxfWoujnEUvrhD1qITqj+3AKvUPc8FFwvcn02MYxIzkTQCNHU71F+iLFjTaDHCGP/C5mKB0JveI3s2Z3eTAtKp+nPH8XJJ1bEoE8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A1fwTNM0zcFsvSA6uulAOio1npSbLYiqA9X/RopfeD4=;
 b=IYkS1DynPmWG6EP0CNXkaHGhVSNARiq6t6P7xiuD5F7/Z4KHOyx1/yTP7sSY9VmIUZm83sfayz5G75PyxESyvHveKCslMOhgmi7HFpEbNv28ExeKbBJjzV2SuAiJ1rUhvdyM5n7UTJwkYuuVxX6R6gM6RQ6uGAzGCfGXSiSsiks=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM4PR11MB5280.namprd11.prod.outlook.com (2603:10b6:5:38b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.18; Thu, 15 Apr
 2021 17:55:50 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4042.018; Thu, 15 Apr 2021
 17:55:50 +0000
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 1/4] config.json: add "collect-data" template
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Sakib Sajal <sakib.sajal@windriver.com>, yocto@lists.yoctoproject.org
References: <20210413170210.72845-1-sakib.sajal@windriver.com>
 <f8f21c5ba518ccba291c9c3388c3e28a680d68e6.camel@linuxfoundation.org>
 <10740613-517b-722d-b7de-52ab03e143de@windriver.com>
 <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <426696e1-bdae-f49d-cc6a-e375aae8586f@windriver.com>
Date: Thu, 15 Apr 2021 13:55:45 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <8bf4023fa65e6e8fe6b4267b8f19afda13d8eb4a.camel@linuxfoundation.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0129.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::14) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0129.namprd03.prod.outlook.com (2603:10b6:a03:33c::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4042.16 via Frontend Transport; Thu, 15 Apr 2021 17:55:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa1344b9-c8d9-487e-c1b1-08d90037b4af
X-MS-TrafficTypeDiagnostic: DM4PR11MB5280:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR11MB5280C0FDEBF457AC50DDD449F84D9@DM4PR11MB5280.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sBsrucHOsDLCmKM7WnlYa+eyPBFJ/GnOLIKlRQJFuFGgyVtusl8lO0mPYfbm0W7GMKXCKLqIHBYLmQL74mVy+z3wYtzUBxYBUBGqmWRFHPDyD3RQqLUtr0qn2XGYMvyyWxGWtcYNKcuYebO7BqS1or2l39gEjgqgIhvdIswoUexnPTedHtAKtkFRoDi9cvWy1qEQdrLdSkuOJtPHo1HpBHo9IUtArtnoA63Ky3Qz6v9snubtl63Nlf4OmEQwDnG4NmontI0G0BVFLLnA31/mpN+dsMf3OERs9oQDY4gi4O3F17YXfkZVe5MpXoeZ8CCkGmYMcJgO9HxNVmQh9b6ucG5Zr/R2zDC9PHDc0IQ1H5GNtbN+yG7WU+NO43q52B5XhWfApKkHA3XlMNvJlV/SzsZqu66uror5c/gC6chHYc1+ST8KA+XBcr0ZMmI3X+5U2O5Tvgg/MKj4Mw6/H9dx0L0jQPTG2JG7EGsf9OYZGmm/IlEGREGviR1ynLAgMGHUMCIA8RAecSpg0JJ7DVJ1X46Uk45eireuJgUNUAgkO6vzEFU8erFzYiyErpTbqtENQacdeYcI2N6dIDwYrK8boQxDN9MnzHooiAOo2WqAKQwp/criKViIlgKPcC8pQwBv+aQ7luHq9GuWWNKmO+tojjhHPeMeHPGS5Bh3qGAymqjn3bw7q/nnx8ncSvu8dweUYw1o+wL3nCRmFEM5zTH3e0PJLieI0hovC5SYxOCSmi7LIxgqRHNjKsE5X0rK4auIFzT0DOuimIiRIF0WY4Mrm2uqIphsYoIdfV66hMaafK0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(346002)(396003)(136003)(39850400004)(956004)(2616005)(110136005)(16576012)(26005)(52116002)(478600001)(53546011)(16526019)(2906002)(966005)(186003)(316002)(83380400001)(6486002)(5660300002)(36756003)(31696002)(31686004)(86362001)(8936002)(8676002)(38100700002)(38350700002)(66946007)(66556008)(66476007)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?CZ5nQ0pHG0YpvQ5+U7ZvKYU0mxxwPNxpdbVoODFOg6UX7ZnBWpR3GG7ygFca?=
 =?us-ascii?Q?lhiDE/xfOJXBg5nKbgWdZTZ1Di/UI3GYqZ0gImEHDHRGgE7yR+Oe72xNMkLa?=
 =?us-ascii?Q?3BUwx0Mz705ded14hhs8HEklK+Hs3okRGibTM4Yf3o/s9fCHKJIYpEweLVyT?=
 =?us-ascii?Q?+bKIKerXZEJQqJHsISYBZOCG7RXnyy8wAE4aL0eO5RNIHjMpT0UsJJzagIOZ?=
 =?us-ascii?Q?3B3bFUBjMnyJ8SOMUoHZqoBEE1J9CZPjR33xsS8RNBaQWC29Qiq+IngoaIMQ?=
 =?us-ascii?Q?DVZMltHbhw9wqxBWSJkqAy7UJ/FnMXbSwF0qb+1s9s7fkmDch7cCF1P9qJuQ?=
 =?us-ascii?Q?n71bOFB1XjezdOqsQBCzM/OCYxi/NjygsQQeYfQdziDgUsvwDGWndb2IUz4h?=
 =?us-ascii?Q?PpX/POCLW+V1gPJcUN8nnuDMyzrScikdTylXbNO8/v3Z3gnJ2Dmh89vaso7a?=
 =?us-ascii?Q?ACFK2KYzNIm68evEoFoxxoJ6z8ca31qKOtgugcCjhUfZ5Pd/CHs3JDAPyaSG?=
 =?us-ascii?Q?YR5K7MDJRShG+wVZZ59FIX07jLfEF4TNPfT3uMrLldpBOLA4b41eJLujO/M3?=
 =?us-ascii?Q?84KPOJkvtMXYiF0MQyDS9DnsKSWiv8K0mTcPGSJmYymLsmhTOnlqZmP0XnQl?=
 =?us-ascii?Q?oiHzIjQn0tsFLnk0kNUA8Nsu97kkWOB1Ujsm68kItlwV62zwc+1zBhLIP1D0?=
 =?us-ascii?Q?mRGl71TjIAAK2T6kIIAflWxgREHK3agMzkdwcenekJD/kCHbYphuHLWNCR/b?=
 =?us-ascii?Q?y01dzRfwcjGbspATMwpG006lh6ITXrkQFSnGcqEMj2Tv3ctXS4EUs2cHJPIB?=
 =?us-ascii?Q?GW6CjdzbYUJmRIocJB4HeHi0Wzn4jL70kbxSOSYoInaZxY6W5JkndswI5GEP?=
 =?us-ascii?Q?AfxrV4QuoHyYNY5eDQkAIduwtp6umG9apXHV9fx/nCtd12GZ3nQCJ3aBd3L0?=
 =?us-ascii?Q?R6PW0NO5A2/NabJpgkBqrFDl1U/2ax+mfQK3RgbDDacu70m5DoeDvQwbJgSM?=
 =?us-ascii?Q?jDNC5RYjTig1ovmW7pwESYUmSHGVe731Ax2cILrsubqm1H4yhmOlZ5bwSt46?=
 =?us-ascii?Q?bs8P80K+zypQhEN6CJV0Sl3kBw/jpIVMPn1MNiBa6wQikaXP7lfV2en0rlcY?=
 =?us-ascii?Q?cAubL8FqmfZDoH7hsX4RwJKCZNrN4++aabOLEtG3ApDfjD+4EWLSAKV/dC44?=
 =?us-ascii?Q?ItWs1N3s38OrJzLGiUQRJjvCwZkUroD4AqA8xc9slQGrumE2nMB3+HVLT4PF?=
 =?us-ascii?Q?iedKzx/VOnQIEnPIE1/k8LM1hkUYFZgjr/AUYJXRqIb+cKWT6RVlhM1WDe16?=
 =?us-ascii?Q?JM9HhoGfgru+8WmagZ0CxLFE?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa1344b9-c8d9-487e-c1b1-08d90037b4af
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2021 17:55:50.6033
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O3bHtOjngXRYPw6yTYm0w9FxbbV8nu6DtwphwAL4RrZyZXoXKzF6Bld8llC+rb+Z0q/YClLk5keMIA70aEmUrpE2Wa9XpRj14gAKOqIgmYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5280
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

On 2021-04-15 11:55 a.m., Richard Purdie wrote:
> On Thu, 2021-04-15 at 11:31 -0400, Sakib Sajal wrote:
>> On 2021-04-15 9:52 a.m., Richard Purdie wrote:
>>> [Please note: This e-mail is from an EXTERNAL e-mail address]
>>>
>>> On Tue, 2021-04-13 at 13:02 -0400, sakib.sajal@windriver.com wrote:
>>>> collect-data template can run arbitrary commands/scripts
>>>> on a regular basis and logs the output in a file.
>>>>
>>>> See oe-core for more details:
>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0edb7098e9e buildstats.bbclass: add fun=
ctionality to collect build system stats
>>>>
>>>> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
>>>> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
>>>> ---
>>>>  =C2=A0=C2=A0config.json | 7 +++++++
>>>>  =C2=A0=C2=A01 file changed, 7 insertions(+)
>>>>
>>>> diff --git a/config.json b/config.json
>>>> index 5bfa240..c43d231 100644
>>>> --- a/config.json
>>>> +++ b/config.json
>>>> @@ -87,6 +87,13 @@
>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"SANITYTARGETS" : "core-image-fu=
ll-cmdline:do_testimage core-image-sato:do_testimage core-image-sato-sdk:do=
_testimage"
>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0}
>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0},
>>>> +     "collect-data" : {
>>>> +            "extravars" : [
>>>> +                "BB_HEARTBEAT_EVENT =3D '10'",
>>>> +                "BB_LOG_HOST_STAT_ON_INTERVAL =3D '1'",
>>>> +                "BB_LOG_HOST_STAT_CMDS =3D 'oe-time-dd-test.sh 100'"
>>>> +            ]
>>>> +        },
>>> Is the template used anywhere? I can't remember if we support nesting =
templates in which
>>> case this is useful, or not?

We were using it for testing on the YP AB and thought it would be
useful if at some point the monitoring was dropped from the
default config.

I think we can just add it later if needed.

../Randy
>>>
>>> Cheers,
>>>
>>> Richard
>>
>> The template is not used anywhere, yet, the initial patchset enables th=
e
>> data collection by default.
>>
>> I have left the template in case the data collection is removed from
>> defaults and need to be used on a case by case basis.
>>
>> I am not entirely sure if nesting templates work. I have not seen any
>> examples of it, neither did i try it myself. If nesting does work, the
>> template should be useful.
>=20
> I had a quick look at the code and sadly, it doesn't appear I implemente=
d
> nesting so this wouldn't be that useful as things stand.
>=20
> Cheers,
>=20
> Richard
>=20
>=20
>=20
>=20
>=20
>=20


--=20
# Randy MacLeod
# Wind River Linux
