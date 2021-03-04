Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.53])
 by mx.groups.io with SMTP id smtpd.web11.4467.1614899858995184222
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 15:17:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=cYejcD5g;
 spf=pass (domain: windriver.com, ip: 40.107.92.53, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeF6vKpVox05ob2E7jg6KyqlgIpkzRrVtq6lLIC2B5optiKQyGOX7TYWIrOjNq3xHh3iWgEZKk4onB/1utAVM6S7Y+6aw6QxqQofazf1jL36LUea/Y5fcNR5qd6vZ0KII3PjlzKZXV6D3KNw2EI91rbhqjEU7YqBGiUI12AYOHYkh0YqISxgnwtwo/l9NEXh5MTSgjMMunPTJjWQM5+inGpARsU4PFXBAzZu1XK9pNdeR7jmqApRgjOngy59eiOch7LiCKP4uJLr/4eab723fJ2GoesPxduqTyndfMRC+JE7qGFlC3aYHjf84AfynaYAdDSuC2Hnna1Q9scn48iLDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkAxf7a/F4FmwQidCIGIhAm01kNBC1QWZLPU2RBQXsg=;
 b=Fl9Ct9CC2YZPHRZQ7OqPgeCHYZQakaGweirq1jzuyiViDlSzo1N8jr5Wsvgl1lrtKHyH3hfPLyudS1Sr8jKqY90vRwICGoEwjOf+phOVh5/F8URbrl2bTPom5TvXPX3+xdEeREi2ajSm49Kc1Z0bsAdEHYns6dCYm/7EAB5kal4hLWQ2ShvMiF0i/iauUkEgPvU19JlU4Z1nCwlEpAjCPMzqLl/7Wbearnq5+j89RmHttYvAF7L0W8Fl6+nBzLPinNStHiAghUz7uB30vLVKqIUq81EwZnAVIH+quwC2DJs+nIyhH5OPCqPLz8DYQL3/mr2VLOBh50/D5sCEL5R1rw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GkAxf7a/F4FmwQidCIGIhAm01kNBC1QWZLPU2RBQXsg=;
 b=cYejcD5g7Ln6DbkSuObgE8uVfK1GcU9tW0UidOb7PmnQZIeNBQXxhD21E/3II0/SMOhxWFfhbebbqjhumVdZ2aNykrP4gVq6zDreaWOIu6X5E0zCMCPyDAz6fE+PKRzSOdwthx3ptPHcRwMtvlOSo35Nh1FVP1vhenCPYlxPpDk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3290.namprd11.prod.outlook.com (2603:10b6:5:59::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.28; Thu, 4 Mar
 2021 23:17:37 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f17d:2de1:291f:80a9%4]) with mapi id 15.20.3890.032; Thu, 4 Mar 2021
 23:17:36 +0000
Subject: Re: [yocto] safe escape library for HTML
To: sswarnas@gmail.com, yocto@lists.yoctoproject.org
References: <WA98.1614891672845389623.mCcw@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <753de766-ed30-fe3c-9c6e-79833acff7c2@windriver.com>
Date: Thu, 4 Mar 2021 18:17:32 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <WA98.1614891672845389623.mCcw@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BY5PR13CA0020.namprd13.prod.outlook.com
 (2603:10b6:a03:180::33) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BY5PR13CA0020.namprd13.prod.outlook.com (2603:10b6:a03:180::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.9 via Frontend Transport; Thu, 4 Mar 2021 23:17:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fa3d75df-0706-4984-4cce-08d8df63b2be
X-MS-TrafficTypeDiagnostic: DM6PR11MB3290:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3290FBA2CAB0977CF1F77C42F8979@DM6PR11MB3290.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3M2jXP+V4MhLrvTfPGgoRYh/O/+hewdiQGQo5ByOg1xkbqOQIrEaw27s1cIh6bIhPrVAaoB8fAxa9KeyXxEI/phXOnLTzJV3IMjSluw0tHA3cLsqmNaSvf8tAHTaZ1GpUhX151/Jz7oirdwf+bFI0fVKTCTxJQFZfCAXfF+F3gISVDvU+Jcqb5AS7E0yLHVNF5yv2S7FK2AB6cTM0jE4e+qaKyyLPsXrnb0+TdNV+zlOsN7Dsoz1V2w4hlq+Yy7sRic5SIjOhJMQ4jsHPJgQwVW5mENTA2vz1JBytK2/5FHWtkKXRgDNjoGPGW7S40jXEkysEyslYveFMNryff15b3NJb/kDu79UEZO3AZulJdlR7QS1Bhis/FFTxnYXwkzu+nU70PLkX9dm/if8WahUi506aazZjCFYPSxTFrwr0dq3wz9Ma1sTWDYprDyDVle/tXQbxrrNtMkdiooLDCu7GIgmhf1zwEuimfQ4ftQIxSpbneAXvuS3k0SW82qWGgaftI1oGHyZwQ7osT1Kk66dHS61lkVoXOvKckmmtQ/SfNlEKXIpJpfUs3HF2b1SC2VGDYr8l4gUeiC9ZjENz72Z6Wj3l3JC78Z07flvqb9nPRJYvw9K2yUiRWLbqr68NYcBdnG0Dwm4cmsnlcPYmc94TSvbZtAd6Wh3z8t7zYuy+Kl4Srrdw9iNbszgJJekjIeT
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(136003)(366004)(346002)(39850400004)(186003)(316002)(83380400001)(16526019)(26005)(16576012)(31696002)(6666004)(36756003)(478600001)(2616005)(52116002)(956004)(66946007)(5660300002)(31686004)(53546011)(66476007)(8936002)(4744005)(8676002)(2906002)(86362001)(966005)(66556008)(6486002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?eFJhQWRlZGlBQnRKN2NscEgzeHpTUnYrZVBIbG9pWFRsRmd0cG9tNDVuRFdL?=
 =?utf-8?B?RkhqNlQ5b0hnNWRwTFRZUE01R0ozdFVHRWI3TitFdUFINVpxbmFXOFZFK1R1?=
 =?utf-8?B?dU1UY2pkN29SV0JTZGVyRGdaSEhSdjgzYnlPTEQrNStaL0dLKzFWbHF1ZDhZ?=
 =?utf-8?B?aTVwMWhmd0M0SlBCV1psTDZmMjF1UjRHTHROcjExNlpLRzZUYzVKWlNXSUJU?=
 =?utf-8?B?UWJvNVd0UjF6ZTlxUlBVaEhDZHhsdkc5TWJXdTF4cXBCSXFSQ1N3eWdIUHh4?=
 =?utf-8?B?WEVJWkJXVjlxdFZnbmlpcTU4QXVzdWx4VzZBZUZhZ3ZXWjdUSVVRcHJ3M0gv?=
 =?utf-8?B?ZWVsekd2Y1FVMmRlbXk4VmlNVCsrbXBXNG9sSGpkR250UXVsZU5kSm9BbWE5?=
 =?utf-8?B?bnI2aGRnblBXUlFOank1aXZIYmtZZTdwd1BadE1ONnBqSWoyaUZHd3VDbldY?=
 =?utf-8?B?TitLN0FRbGQ2WjRpcUZrV2ZXKyswNU1iOEcwTC9tK3E4NW5PRy90bzM0Snlu?=
 =?utf-8?B?MURpOTgwYnhJV25lcXNsOHVOZytnbTBUNnVSNXdBS2ZPczdCRkxNVUNiUlNw?=
 =?utf-8?B?UW1rZWRVamwrWWJTbW45eVBLK1VHMkhXMjlSRlhHQnpIcGRlUTEwOVRHeWFC?=
 =?utf-8?B?eUNwQlF6cURJalpVWmlJNkIzb3ZFWjNYcVpDMkl6ZlJaaUNVcUFmdGZXU2Yx?=
 =?utf-8?B?d0ROZE5iNU8rSTdhMGJmT3Fka0FSaGRIR2VWK1pTZVY2Zmw3SDVLQkhRNE1Y?=
 =?utf-8?B?QlBWSy9NcUpKWjhCY3pUMDJvbkh1OTlGeGdyVjVhenRMRjdzR3dPN3Rwd05k?=
 =?utf-8?B?aFBiUHV5Vmo4Z0g2YzdDRVB6SGpqUjAzK2VuZFFibFNTVU03ZklHRWhUZm1Q?=
 =?utf-8?B?R1AxeHJOTVRFRnlxUm4wZzZzK05vZkhnZ0Z4NU5UcUJVNW8yUGVWT1J6dXBP?=
 =?utf-8?B?cE9TQU1UMjcrU0wrTjJiaGF6SmhuTUg5UThVQTMyb1cycUswaE5KNGdQNHF4?=
 =?utf-8?B?NUpsOS9QS0dNeVdLSlAwVzFVTFRRTWhIUlFmaWNRMlM2OXNNYVp4U2dwcHFU?=
 =?utf-8?B?ODU5NjYrNXl5VkVrWVJLc0RJWEhTUUVidTYxa0VYMzEzb0Q3dTlTVlFuSnhU?=
 =?utf-8?B?dmxSU0ZrbUt6WmFYSDBhM2tNM0FSOHFTdFkraUh5WWdGZ1laci9EQ21XWWdD?=
 =?utf-8?B?QW9MbnN2NzlKOUFFelIway9Pdmd2VTJrZDVOV2EwTXdMWit3TXJjVE9sSzln?=
 =?utf-8?B?V2JmbGhvUzg1aWlqWXA5emlZOFoyaFcxd21vOHh1TUJEUDdpeE1zTGpoZFpC?=
 =?utf-8?B?Vm9KanFXNXU0cG9HOUZZbDQzdFhqOEtRYTl1ZUYzR0xxQUFrVFVjZjFjVXdp?=
 =?utf-8?B?Y3FCQXpyb1NnbTVoQ2VtV012bkpGNCtlMlZ4NjQ4MTJTdUsySjgxNUxMNE96?=
 =?utf-8?B?L0l1aTI3bUE2Nk0xbVczWGo5c0ZPdlhTQjJLcXFLOXFHRnlvTHVqbGozUkdi?=
 =?utf-8?B?dEhKbWk1bUloTVpuejNDNVBxb0lXT1dYaXZSc05rTDJDQWVqOW9IR3NPOElm?=
 =?utf-8?B?MjVwRGkyY29TRWxtQWNjOGFPQW1TaHlrK3hVUzJkNE1ObnE5YW5kem1CVkVq?=
 =?utf-8?B?bmE4NTl2UFpmcmQ2MmNWMTB3ek80WmxLUzhkNTZ5a3ZsNG5zRXdldVhDOHEv?=
 =?utf-8?B?cmJNNDR1UjIrU3I5QkZETHJ2RlFhVy9ES2xYQy9sRVRoRDI0SDJ1N3VjMXMr?=
 =?utf-8?Q?2u1epMXWo/rAkn/p1/GW94lAwl0v/FnehIWs37r?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa3d75df-0706-4984-4cce-08d8df63b2be
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2021 23:17:36.8126
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b3jT3mg+Yy63kdlVqx/NSkr5KuuXWst+6RQ00OCz+YJoHyUwUzxDl1MLxMh1KJlGtDsDjK5yM4qMCjkDK/tlU5eIP+vufzI+bxnkVN8p+Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3290
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-03-04 4:01 p.m., sswarnas@gmail.com wrote:
> Hi,
> 
> Please let me know if we have recipes i can use for HTML sanitization. I 
> want to do this sanitization in C code.

This is a rather vague question so you may not get a specific 
recommendation. Have you reviewed the list of html related recipes
listed by the layer index:
 
https://layers.openembedded.org/layerindex/branch/master/recipes/?q=html+

Let us know if you find that useful and if you find a package that
meets your needs.

../Randy

> 
> Thanks,
> S
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
