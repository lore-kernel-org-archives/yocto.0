Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.43])
 by mx.groups.io with SMTP id smtpd.web08.3119.1620087685802366497
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 May 2021 17:21:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=kWt5By0S;
 spf=pass (domain: windriver.com, ip: 40.107.220.43, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLn95jWlAvIp214yIwo0orRfTosMqDkOgVqw7XfC3gK6hqLAqOlw3VZwoysJ0q1Wkuh8C2y174fGnTKdRjuiR0BUSi4i3sPrF/DEG1sM/1t3l0WZtP8/7oH36UbI4eh1PJb8NDmZP0WlebC1LjMQtC7a3J55tg1xtZ8TRT9K4Qo9bMM2XqiRF2khQyjX7sDVrCmxA3ROj4JDb+tppxHW+IPaaBXqHdv0BQCbeKXtjX1yq0i3Hv0fNolwYrWU1yRRUmwnJdLMHL2y8Ml+O7Fo+lwRGrvyrA8CN8fcmzpC3o4NpcolmvX81mzj6me2hkuc54s5Xv7+QEksHSjzsOZP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuGKY9gcTU1SRHzTo/9lC/oHFMinB1jyBuUUSdjZFl0=;
 b=DYSbBq51/frbpqWbJYS6A0MVDg5euQPYQ6k3wdGrjiSrlysdp0JQ8jFntA2OB+c3t583idLJsMG4h6pu4x8t3o3UlthSl/N9zeGcb8Mj1jrqwjFjqwmyV3sQ0qzYwBpukU6LoZ8u88fOqlxQz0KRi+5OFDh07B1HPwyWOMVb8vbfJ43t161VxBA7VXjkzDv/GeQiEhJCXr9GwpK0msAio+GBVYhHUSuE3YtX76JGfoFTJAOirijvHvY7ddDdjtXJoGHmNFBVDipgptLp7N2kt7GOIcTFqEeDryZ4KSOmOPoB6S7d+HoY8Ac7jdhKwNFo3vs9HSgdDWFrtjKRGcb2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kuGKY9gcTU1SRHzTo/9lC/oHFMinB1jyBuUUSdjZFl0=;
 b=kWt5By0SqA5jH6r3wZZkcjMJSeWpFvijhns7fDMs/kEPQo/P5XWkgb1fa8lEE8EFsdcqbiN6serCWP8BYa0DoRCQ4QEqU57FUOyFWkOEQ0xcSuTCnTsS2XFDRfxRhXp9CRvsAtrHpSSVDkHU9Lwz93j7hJxW7Ae55qr15diFap0=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM8PR11MB5735.namprd11.prod.outlook.com (2603:10b6:8:10::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4087.35; Tue, 4 May 2021 00:21:23 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8d3b:70ab:5fc7:9eb5%7]) with mapi id 15.20.4087.044; Tue, 4 May 2021
 00:21:23 +0000
Subject: Re: [yocto] Criteria for bitbake to skip recipes #bitbake
To: keydi <krzysztof.dudziak@thalesgroup.com>, yocto@lists.yoctoproject.org
References: <UwKG.1619454301440268051.cdrJ@lists.yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <c486e3b3-8d37-84aa-3b40-9850ff8be94f@windriver.com>
Date: Mon, 3 May 2021 20:21:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <UwKG.1619454301440268051.cdrJ@lists.yoctoproject.org>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR04CA0004.namprd04.prod.outlook.com
 (2603:10b6:a03:40::17) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR04CA0004.namprd04.prod.outlook.com (2603:10b6:a03:40::17) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.25 via Frontend Transport; Tue, 4 May 2021 00:21:22 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0f411d0e-6df8-41f4-8b21-08d90e928c6f
X-MS-TrafficTypeDiagnostic: DM8PR11MB5735:
X-Microsoft-Antispam-PRVS: 
	<DM8PR11MB57350453656803E4CDC38D42F85A9@DM8PR11MB5735.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4125;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1XTVJtfZ/0QgwwVLVBCtcGjRQPpETMd8jT4z+XmHdciM+VO+drpn8Wpql1ZSR26DLnVszrWrXhAayjkQzI71r93d93oavHfRh4bNf30oTxKyofWD2rWV8kYHT+gBE6krrjelQ4j41JMs/GXY645FuOoHzQfAT5kY5wt+WAbWedST+K7ggz4R7CoxtoUyOJ4TiJi9ezIT6sxbiEl6a2z4WSS9cCToUHDISe2l/p6h4fUjLhAwETY2pyG2l5Ub31THDa8HxnBbKU9z1Iw4SRDC4Sg3HX6ebNqtOTqEhC6MCEfnsFsb6v9M0CW2YNqlmO6u1hzSgGKICroXIbIAyp69YTBpmNHmOizXR9pJu/brjABQeueXcR8lMyAX7FRbPk2HFW6zOBAp9jr9CFICdMNXY/PgLQGXbekQLsCpI9yqFiASFStS4uK5dkC6nSqZp6F9ty3Zv5DoU3/M7aNICsHKYMw3LVWOPXyxr866AbJGCbW3xr/N+Dk1eKIIcKDalaJpjSEdDYWZ2fhUiO/mzs6hWqrVb0uyeuEiWha1NUdB6B8CmHCO3Pu+GX8+ldTg6mAkX82Xt3/LIqUQNnppzl9/ItrE5P8XqzaosrSPnoYYgQt++RZ+2zk/J25VG1g/obOvyB5tUfP5SQCjxeg0v50SCZuhCZbgGf4kHVUW7Ch2S3P73zItWSMaJc3M1CxeTfvmMYywmEwArHPY0xj1tQT5ngXaQsGO12ztzPf9+28ox/Cga06yvqdOQagDhVSPw5MhpvNDV1cVNYjaRxBlNlGfwjjl9p+Z+Tkgn01pYvtPbF0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(366004)(136003)(396003)(39830400003)(346002)(2616005)(31696002)(16526019)(6486002)(83380400001)(956004)(966005)(186003)(66476007)(66556008)(66946007)(8676002)(26005)(52116002)(8936002)(86362001)(2906002)(5660300002)(38350700002)(16576012)(38100700002)(316002)(36756003)(31686004)(53546011)(478600001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?dGd1NUpIUEZTZEg1VGI4ZHk5dVM5MUZBYVRRNVVlMXZ6T3RsT1hWbnA5ZDNM?=
 =?utf-8?B?VmNGRW1KTVhTNHBrdTZ5YlptMDhTUTJrWHJrRlRDK3R3a0cwZXR4QmxjUnF0?=
 =?utf-8?B?VkpHTlg4QWVQMjJpQkQzcTBoVWIzbHdOS2hsZVZrOWoyR1hkempROFVNK1NP?=
 =?utf-8?B?Z1d3RGxFK3M3QmpEUVBkTzczYWhLL0RVeksvUzdHQU1aSmcrRDRZTlJMeUJN?=
 =?utf-8?B?WHMyZldIaU1jUHRmUi9wY1RoMGZERzVaSml2cXJNRjRtdWJPeXJlaTd0RnEy?=
 =?utf-8?B?VStidXZkTHR4OTJxOVA3TkI0aldiNXN6MndIOGZvbU4wNi8vT1RnaHFZVHpK?=
 =?utf-8?B?ZHVSbVBMdHNPNTk3elg4OU9KOUhmM1licERNNFZwQm9hblFsMUxmdXVRSW42?=
 =?utf-8?B?TUVTMEtjclZ5NDNicGxYRW9ZRGR3aVUzd2pMYjgzRk0xTUZCbzZ3Z2JkeFRI?=
 =?utf-8?B?dDduQkFYOW14SnhFam5SdlYvUk84TkpwR0dNNjhLdGZQd1ZMRHRIYmxYM0pU?=
 =?utf-8?B?UUZBelN1R3FRV1o2SmMwZ1cyVUJXR0tOSmo5TXhXZE4yaktRekRyQ3Y5K2tB?=
 =?utf-8?B?VUFMUm9Ka214TjJkQWRWcHdPa1hIQjJ0NE5vVWc0Zk1PRDNKQmpJTWRoeGtR?=
 =?utf-8?B?V0tQUEVUNnp0YjluU1lsbmN4VW5KNjU1MW1BZC84cW9mMmlBSXlZOU5EbHRJ?=
 =?utf-8?B?cGpzT25Ocithak9mZElDS2FGVVJ0QjJDaHZyY2kxUE4yNmVoaGNxc2JydFBL?=
 =?utf-8?B?UVY4cDJUc2xUa0UvbEl3WkVCRUFySmVjYnRWREU5bWZZcmUwNVl1b2l6cHFk?=
 =?utf-8?B?bktCdFM4YVZNbEN1UWhsODZ3UGR2aDF0Y2NacFlSVmpLM2JQUDlnZVdsdzk3?=
 =?utf-8?B?OTBteVlocFNlNlJjbzE2NmpWVkUza2hIL2lOTS9PK3NreGFJa2ptM243OE0x?=
 =?utf-8?B?akNNTXNCejFaZ0FGOGNUVXhEMGhEcEdFYm5mRmZLVzlCQThkQnFKUFZ1M0tR?=
 =?utf-8?B?ZStFWENMK3B2ZkZNTEdWZE9BS0lNYVFJdVRFRnd0MGc5SGVySFZjVHM2ZjY3?=
 =?utf-8?B?Z0VkK254NWFtUmVpK1pRRzEzeFZDZXVMb0dSeDNYNlBQZXJqSkoxQjlWQVhY?=
 =?utf-8?B?VFVzdHUwZ1Uzc1U2eWkxVmVKUG1FMUhpdUFPTkg2MjVCejZEUzRwV3JTVzdK?=
 =?utf-8?B?N0xoUVJOTy9qWWxpekhCdTJxR3B0cUZ5U05vbmtHcDdYRld2NEtpWmZmN1lE?=
 =?utf-8?B?WWo5citRMFJxWmkwTG5heEZrWFJXVTlibVovbmFIUi9yaG1iNUZwR2grQlVu?=
 =?utf-8?B?QTJqcW1XWmJWMEZUVFdGdGVlYm1LVEZQTEhVdFJBT3M3TFJaT3JSa1lkVHlC?=
 =?utf-8?B?aElFMEVrNTdwTzRJcFNSdlc0WEhvd0N2eXk0S1BZYnFNenFsRFdLNW82aXls?=
 =?utf-8?B?S1VNbG1oc3lUZ054VG9YMmpSdnYxVzlWUVpzd3FSRFVGSjNvWDdneW55WE1x?=
 =?utf-8?B?dHRHb0xPTTRTVDdLN1lWZkFkUE4vWmkxcHljdWxBL2lEYyt3UGQ0TFVFRlRp?=
 =?utf-8?B?N3czNUNIeHFqRjU0eXFINmg3cUdMWFpLTjB3UEUzb3RRSWYyRHZYVHA4SDNN?=
 =?utf-8?B?M284MGp1Uk14am0rcUpmNmxPMUplUFJCQ0tzeE16T0tSbjVGTzdLMFAybTJm?=
 =?utf-8?B?UHhLR1dWQitha2kyR1Y1aExDcVpsMHMrOXVGZG5GQWVFVmZlcUloaGMzQmlm?=
 =?utf-8?Q?y6C8sAwizJO7J0I9/fHVauo4QqeilUvz18wpFc9?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0f411d0e-6df8-41f4-8b21-08d90e928c6f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2021 00:21:23.5379
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gr0mZ6JsilEpRSypKOjQKELzOJ+HmrleRcjLm2swmGWsPTnEXOlwKXfFSPk6zD2z8Bbumb4fP5oMXR/t32jtONpqOsbfASviMdKH/9sJ0zA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5735
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-04-26 12:25 p.m., keydi wrote:
> I wonder what are all possible criteria for Bitbake to decide to skip 
> recipe (please compare to reports delivered by bitbake-layers). Recipe 
> overlay, recipe version, others? Which knowledge source to find more 
> details in?

I'm not aware of a specific list but two that come to mind are,
(in meta-openembedded):

$ rgrep PNBLACKLIST meta-*| wc -l
10
$ rgrep COMPATIBLE_HOST meta-*| wc -l
115


Maybe you can explain why you want to know why bitbake would skip a
recipe and that will help us to help you.



../Randy


> 
> 
> 
> 



-- 
# Randy MacLeod
# Wind River Linux
