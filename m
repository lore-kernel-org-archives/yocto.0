Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.289.1610052453131315726
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 12:47:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=dDAgTaM5;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2073.outbound.protection.outlook.com [40.107.243.73])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3D2CD38C06E6
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 20:47:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGk2+UM0sx0pQmhnTfrY4Z1W/v96aGvX9iBugjY3RpNtdqRpI9aw2CrkZI4qzBj6LzxwjSqY3d+fdTZ9+Orh220VQf4Fw8y5Dl9718DLGPLG4HMjhsy82Gi+AVSlirKajGbl+kWnWv+xAxya30Gs4iaXkE3Pq7kjN9qV0YjopWLGSU+PmaE6IOmiKu+LoL7oliYz+qUe3UD4ZAKk53h8sp4lXmu3M9RrlUFvDRCelzSCOiht36oCbP9lH8OZb8SSiNp32Pa/5c4HW2+0NkuuXbA1aCmMu7xNodCMT+a7zJ4ObRSrW4CrSdg6oKEdIM2Wl7KA7vQl2ExBoRzc/VLxbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1WQCd3zSXrxMkfPivyPpA5pO8W6R0pQbkIwLoWG/Xc=;
 b=m+p4jDp6RJbMgh8mVWU67dMjjx3lDEu0MFp1JwYsITz6Q04YduSq3vi+zSZxqFFdE+IrpITARf+ZFIXOo0KitNu2Sjw75yx5CKRA7htAzh0W7v4O9vB4AXYAFhM0/XL73+FqFMLk2iUopLuubCkb+1DE5MWx+GHSOrRRZyfihG8UT1Gu6VwWUV5uKH4rEjdBrSgwVrEWYnbzAlXkpLTT9022i/KWvN2kUHj/k9DNIB5yBzdUfxwtEd2/j2LDFRq9UXxRlBYf5taEG25ZuGdggTYzj19YXm7GLBlJX5XP126zIk8p06dHUrgU1MVSmH1S5S2WMEAe5KZmmYT5gpGwfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m1WQCd3zSXrxMkfPivyPpA5pO8W6R0pQbkIwLoWG/Xc=;
 b=dDAgTaM5FZjNvoDoaAyod47yK5Pni/yjOw/4ze7z6kvacpY85Yo5W+fo+49W2WEXEafiA/3KqWE/bINR8mg62AqpT/fgXRYOX5SVfXvd7ABHTjjJefEN0hNAHdGg+t3/je9FSNliEQUIH+gzSlGzjwEHK4jYDzJiAmY/XzPbNSY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB4427.namprd11.prod.outlook.com (2603:10b6:5:1db::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Thu, 7 Jan
 2021 20:47:26 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3742.006; Thu, 7 Jan 2021
 20:47:26 +0000
Subject: Re: [yocto] [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
To: Belisko Marek <marek.belisko@gmail.com>
Cc: Hongxu Jia <hongxu.jia@windriver.com>, philip@balister.org,
 akuster808 <akuster808@gmail.com>, yocto <yocto@yoctoproject.org>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
 <20201216130822.28476-9-hongxu.jia@windriver.com>
 <CAAfyv37zRgtJ_n2RZmWoHPOado1=LYw9cHVEVUZT1n497XB8yw@mail.gmail.com>
 <777b9a81-2d2e-7d86-bc0b-24370369135d@windriver.com>
 <CAAfyv37VGjVtn=SUan+X==VP5kbkMhWz96YP18X=x6-WkpP8GA@mail.gmail.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <3fe1b12f-b2f2-20be-2486-874bb3fa23ce@windriver.com>
Date: Thu, 7 Jan 2021 15:47:17 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
In-Reply-To: <CAAfyv37VGjVtn=SUan+X==VP5kbkMhWz96YP18X=x6-WkpP8GA@mail.gmail.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR05CA0183.namprd05.prod.outlook.com
 (2603:10b6:a03:330::8) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR05CA0183.namprd05.prod.outlook.com (2603:10b6:a03:330::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.4 via Frontend Transport; Thu, 7 Jan 2021 20:47:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7020b3bb-11e7-448f-507a-08d8b34d7151
X-MS-TrafficTypeDiagnostic: DM6PR11MB4427:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4427D74C21FB40222A08DCAEF8AF0@DM6PR11MB4427.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vJVDUR6wR1ipnJN+MmSY3dMf+uLBZlNcUx8S5N1F1dsQwwueGoXz8XnixR3XOYa4n+ViwsmZxv77fRu0mgOoL2CthfByYLXbzsfvakNGRfG/l3wwd9humvRqszsrEpBjOVty3xrRrYlVZ7DWFtpO+CVqsrEjuphtFttDSlfMYuoXVCrFyyulpR6pP7Xd7RVlNU+0mkRNDN2l95ZsjahNe5MJSX8GL2bFKc2hNZwsMhcVsBfzCZnMvsaCk44JoVYGmB/6/FkaB1ZWaBJfe12Al4427ue3nlwQZtQR8GX4XksTiV16q+bfNwhVIgzDAnjKfDRoiaktxaQDSW9ur8j7XkhNZDljvGkVna/kcI/HL8t7uIk7JnNz9NB2BkclFNA24FdcRJICklUaG6a+jQaN+Tvz3QcFqzqE+AVsB3tPvXk4y5zWikWshWLnSNESwaH7K6upkpN+uQ4tegteOF4a+GkIYgFoMu3jurkTM3qm/hk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(366004)(136003)(376002)(6916009)(54906003)(16526019)(956004)(16576012)(478600001)(316002)(2616005)(36756003)(52116002)(86362001)(4326008)(6486002)(4744005)(31686004)(5660300002)(8676002)(2906002)(66946007)(66556008)(66476007)(31696002)(8936002)(26005)(53546011)(186003)(6666004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Umt5RlFtR010WW5hdVVmaHl3T2dNRG5HcVBudGo0bjV6b1hRYVFiVFpCRWRT?=
 =?utf-8?B?eE1aczBOSVJ3eVd3NXRJRkdCUGhxWHF0N3VyUTJBNExzL2kzblVvRVFiM0NS?=
 =?utf-8?B?ZTk5SFZ0d3J2ZFRqZ1F6RU1ocWJMZFZJb3YwVThCT21GWE1jaWFSMkoxcHBk?=
 =?utf-8?B?VmN2SHZ1Y0xZclN4bU83ak1kYkEvNUh0bnRrMjZ4NkcxWjRWWjR0OFdML3FO?=
 =?utf-8?B?QXpsWGVFTmRUNXl3Zld4ZCtQVVRlczFHR3NNbHFOZy9zMERDMlZtb2pLQjdK?=
 =?utf-8?B?ejUvdmNxdmVubkl6VGE1RmpuUjd5OHhKejBVWnhVcURVaWJRT2Z4cSs1MVpy?=
 =?utf-8?B?WHVRMjNCYXpVUjNrdDNnSFJJZHhsTXF0K29iQmVwVjl4YlFGbXkydWpwRFZN?=
 =?utf-8?B?RHpMR2NRbjMxY29HYjdwQmFtZ05VLzY1V1RvekxEYTRmZEJrdVRlN1RJU0V1?=
 =?utf-8?B?Z2k0QzNaY2tzVVpjNlFuRWo4UU0yZ0ovRGthbUt1QWV2WTJjWVc4b0YrTFZD?=
 =?utf-8?B?eGpaMWVncEN1T2kxR3lRQmpSM1J0VXBlSFVrRG01cEFwRGZOQ2l5bHFqelBH?=
 =?utf-8?B?RkRJeXl6Q2J6SnBqbmVPN3U4d1c4cTVMeE5xekRUUG5BOW1lM21ndml1SUNI?=
 =?utf-8?B?MGsySE4vdytvVXdDVW04THlRcUNGckRjeXVJRVRNYXVtTHhSaEgwYmlrclFF?=
 =?utf-8?B?NjJ3Y3BEVEs0blNQN2JHTWpzZ3FhOGFtV1JQMXdLVnIzOENzNEZZK2dsaFJB?=
 =?utf-8?B?SFFjZUF5QWMxbHpwblczMktJMlNGUmE2ODNnbnNrQStlYS9ieEpacVdNNEhL?=
 =?utf-8?B?Qkd2djR4UmpBVVp1cDhCUEQvVXZFRGhPUFJwRHFOaGw2TERSMGpNOTZRdFc4?=
 =?utf-8?B?NzZxKzJ3LzNBMnpvbEppcVVENzlPUkYrUFpkSWZYRU1MZEVzaG02YnpwUVM2?=
 =?utf-8?B?Vk9zU3pML09TU0FvZEViaFhGdElvVnU5WHpxWElMeWxyK0RmSnZNbHJFK1Ra?=
 =?utf-8?B?R3VIcW92cjJCVWdOL0JRWVVpWGJIZnZPbyswK0JkbjBOSm9BM2luLzltTzF6?=
 =?utf-8?B?a1lVS0ZtSm5CdThZWXVWZHZHYUp6RHlrbWVqL1Q4SXVYQnBKdkJGUjBJOUNh?=
 =?utf-8?B?UUphKzg2M0Y4MUhra2lxQmcrZ3piNTFPNngyNFB2U1E1LzhlRHBQay9JeWU4?=
 =?utf-8?B?U3dzcndFb2kyR2JqVmkwT2VZdnBzMUYzSUtDNkt4S2FwS2NBQi9UcElmb1lH?=
 =?utf-8?B?WWdBSy9hUDM5ei9IRjVTUEZ5REg1U3UzTk00NFVwVGsyRUZJTVhmWFdjbE5H?=
 =?utf-8?Q?2F/LWdWre+wv00FRzATAgN7m7PQtL870/9?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 20:47:26.6843
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 7020b3bb-11e7-448f-507a-08d8b34d7151
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KvIip/2WflyS15evjNfQccywIX/gynChdELPDxSNqYnkN5ILLQq3lXR604KNO83JZM+92S9XSUGw0jJE+ITn5lo7wQaXn4mEfSreVQA9Yyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4427
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-01-07 1:47 p.m., Belisko Marek wrote:
>> Marek,
>> Does this happen if you use the master branch?
> Yes this comes from master branch.

Hi Marek,

Is it:
A) Comes from master and is a problem on dunfell or
B) it is reproducible on the master branch?

Given that you said:
 > I'm getting issue when building tensorflow-estimator (I add small
 > changes to be able to build this patches on top of dunfell) ...

I suspect it's A only. Right?

What are your small changes.

Hongxu may take a quick look but we generally can't afford to
investigate all combinations of recipe/branchs as I'm sure you
can appreciate.

If you can reproduce the error on master without or even with your
changes then that's a different story.

Good luck and Happy New Year!

-- 
# Randy MacLeod
# Wind River Linux
