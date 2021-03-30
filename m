Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.2288.1617126355402706526
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Mar 2021 10:45:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=TnYpEUr+;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2049.outbound.protection.outlook.com [40.107.236.49])
	by mail.yoctoproject.org (Postfix) with ESMTPS id DE7BD38C06CD
	for <yocto@yoctoproject.org>; Tue, 30 Mar 2021 17:45:54 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ObQ80Y2ZJuoM5Pc/ByiPj5oSZibL80Oh6N3/qbYQLB9lzvr3W6p9fugqiMQyjh5JqrK8GtzKPTVKS5w8IGDA23lfWW99+YGe10G1BhVvgyJpXGV6Bk9FGDC8zzzl1cOXD0WRskCFjV3OVE0RCBWm0RlgppptAclfsWaaJ9+Yw87LV11mlfExRKKtMiABavSj9y5V+tM0ENsOSFCbuFouEKo/ryFdesPDZI4rhiWbWyBoMZvcxMeMZ5Dhk3xLnaHLfcMfZNn1DCFCNcRyYPHh51NIs+Jp0HVqPPoqutE0fHR9SOiNKeX7PFoxf7jvkejpe/stBxrQZgFKQMBcTeXuXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BYQgCWRqY2o+icDcQIdkAbdC/alm4scG3JU43w1OMxU=;
 b=EbPUkj5RV7PVqmPwVTUbJsjIJrGHHtBX/jFlvGJIlcTgzVE+lYH1Xadvst4ZP18+ddcs4CrDdlj9jD5L21N7sbbDJz6lWQuYz8eMChqso6WWLGTOUYj7KNP8fOPRQ5QDUQzwfLgHE60j6pK/RfgejIPq9kR2iSzGia7fxQ9QQb4HEtpFQ+6ZPEMNVu5O7uEEg4VMya2UFb8qaN2OEIZYwGyFdVuC7M6XF2y0O9qIBw4IS252ELepIthZIDACkIOe+746O8k9lONUw2NxOCl0E3ChfbbS2HuT029DucR0ZCnXjIC4/DJkfHTH3S8Zt4jQh1+XbaPmjmeBJkQukswxwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BYQgCWRqY2o+icDcQIdkAbdC/alm4scG3JU43w1OMxU=;
 b=TnYpEUr+GSRc6/de//ywudx/oSGPs1quxWRc+NLuX8+E/ozSZmmZFSweoVdhjFbhI1jEh+etDaViH8qNuqx7PK3I4heIDUHT+cEezr9KAYMT+Abwj6M9lVE7SfXoHXgkb+ygvSZbiuC3qHRrzpZaOpQzGnOm7tAVpkfR5TYeNoY=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from MN2PR11MB3998.namprd11.prod.outlook.com (2603:10b6:208:137::21)
 by MN2PR11MB3789.namprd11.prod.outlook.com (2603:10b6:208:f2::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.24; Tue, 30 Mar
 2021 17:45:52 +0000
Received: from MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::84ae:90a0:3422:acfe]) by MN2PR11MB3998.namprd11.prod.outlook.com
 ([fe80::84ae:90a0:3422:acfe%4]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 17:45:52 +0000
To: Khem Raj <raj.khem@gmail.com>,
 Yocto discussion list <yocto@yoctoproject.org>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Subject: No significant diff b/w qemux86 and qemuarm poky build of core-image-minimal
Message-ID: <4eef7ff7-0bcc-3bb7-6b08-a194de2b2491@windriver.com>
Date: Tue, 30 Mar 2021 13:45:47 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR03CA0125.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::10) To MN2PR11MB3998.namprd11.prod.outlook.com
 (2603:10b6:208:137::21)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR03CA0125.namprd03.prod.outlook.com (2603:10b6:a03:33c::10) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.26 via Frontend Transport; Tue, 30 Mar 2021 17:45:51 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1c1e8213-7962-4147-6cdb-08d8f3a3a95c
X-MS-TrafficTypeDiagnostic: MN2PR11MB3789:
X-Microsoft-Antispam-PRVS: 
	<MN2PR11MB37893A5A36FFFB34E89B7A64F87D9@MN2PR11MB3789.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sJxc326T/Mmq7GGspfTm0uFAbSWiOOsNhSOvnmr8qT/VFUPj6MFbXQgVk9KoCRKbyg6GfM+g11QeSbLlQugF4nplRV9zbDwf40ajGxrEikmIWWgC2J6OoNqZhwkQlGFajVq63orSezdZoekVbGYXSmuc/VaiaBxZQgS8UyNN0tVzWiUYB0L9oSLGUhNqbalINjEw338228VhOObAsEsenX3gdDcNX85N10nScsEvoRXqC+2gh2T7X1z6UmRWsmJwCDeqDMmOkz8yvimdeFKE342KILv3Yc4Z/WymTI4cOB4qbePn1D7SPiDog2+sG2t+DSdfgkUFr9nqU1vB7XXNbi/LVoqtswaoNASnqyoLPkCphasgN1cA+4okJ/vtvz80eTvz4E8yINZPFoY8C2qJ+YHuM+HTIq4p98E4DYHBMNhAg3+8iRlGfufyVn6iRPpn0kuREHSZh8UwrXmJiZY2UvK09TI1YEgRr80FjyBYnGgD+BN7/auOylaIVdUbUzN4mQM9Y2OgnPbtJ1zQ8QGu0ykh2UZHO5CbvBMM83lkfmY94C0WBDCrabSlHSxZfZxwHFhMY+EphD2+EulYl7E0HD6m64YthQDYM2TJddYZlgr0m5mYgSuITJpfDPnM3gu2Wurs74U5hpbjoQCst8DZIau14OHc8LGta38ptLSW1wShtTbpzFnQY0HGm281gJiW1wEAk66FwA2QWUsD8PRFs0+7kW8MsKFxR+ULKyEDGKA=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR11MB3998.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(376002)(39850400004)(396003)(136003)(8936002)(478600001)(110136005)(2906002)(66476007)(66556008)(6666004)(956004)(66946007)(186003)(16526019)(4744005)(38100700001)(16576012)(8676002)(316002)(6486002)(52116002)(31686004)(31696002)(5660300002)(86362001)(2616005)(36756003)(26005)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?c2t3VWJhd0dISkVvMmNlalZEUUV4WUptMFhBSzVwMDVmLzVYRFZVUnFJMldG?=
 =?utf-8?B?bDRLQ3dKakpxNXVkenBLa0ord3BVUW5mVldIRjRoa1NPZ1ZndlBvUW1GYmlx?=
 =?utf-8?B?Nis3TXh3S055ZFJ0bkltWklFWUp0QUVBbitjQ2pBejhCME14dDBVS2hjbjAx?=
 =?utf-8?B?QXZudU5mbTYrUCtNT0ZzdmpiZ1d1bDROQldjdWEyWXJoRDBqNjIwTGt0UTNW?=
 =?utf-8?B?c1NoWCtkS0RzamNHUFdWSkdQY2hTK3JuR0FvV0lXZlM5SmNRbXljR3dXZGFY?=
 =?utf-8?B?MmVKRlFCSVFCR09YWmZYTlFjMk4xaTZ5aXVuWUhIaExOZnpuUEIxTzFVMjdp?=
 =?utf-8?B?MGJxeitNRFFRVjhUTGFVZnZJRjN6TWlCcmdkZXFqNTVxdlE5NXBmdmgxUTdq?=
 =?utf-8?B?MUdlbXJNNUtZUmdmdGRJWmVhVEkwcDVIZjJGSkt2eW9HQWlKbDY3ck1ib0dy?=
 =?utf-8?B?ZEZ4akE4bW1HNTFTUUIxc3YxVUd5QUphdWhuTXFORzFSUG5tb01QK3JYL1pR?=
 =?utf-8?B?YjhONFZsc0R3RDB4UXVZMDcrMjBPbjFNOUwyOURsOWdmWXpaK2dqeEpaN29K?=
 =?utf-8?B?WDN2NlJ3VUpDR0hSMDZ3aVMwV2ZWQlRlV2JHYVBUTWZ2aUhwMFJMSzhHazFl?=
 =?utf-8?B?ODNvVWtzRUZRVEhPQ2pPWUNJcGlKS2crMEJ6S0ZEem15bWpVWGFYcVgweWVJ?=
 =?utf-8?B?QjRxc0tKWGRLYkNiMVV1eERVeFVIbm51YTZ2dkVKWitVbGpJN3djZSs1Tndi?=
 =?utf-8?B?Rm0xU3VXNzZYSGxucnYyaWJjUEpLeGJLaE5hWEFRZTdoWmhNdnozcHhGUHlZ?=
 =?utf-8?B?aGtsNmFGRlRpcUJ6MmhNZW9ZMVcyQWlWaEJER09aaGZmMkM0MjZyRVRleUla?=
 =?utf-8?B?NWFBNDAxZ3NsVmlNOGw4Ung3WlhvS1NQN0ZPUllBUVgyTjlPeUxFcUJCZ3RL?=
 =?utf-8?B?NHlDV1Z1MWxvNXRBVVhGOVFiTWx1OEMyTzhxMjZEUHpmSG9kc2ZvRzU1WjNq?=
 =?utf-8?B?ZHN0Y1MvZXpZSEt0dGF2dmh3WWpCejFVQkVMMjMwMy9aaFE0RnJGMjh1K3o3?=
 =?utf-8?B?ZEF4ZUNtbzhkQXdadDhhckljZStyM2t3R3RsclVsWDlhNW1lSG50TmFxMSsr?=
 =?utf-8?B?UVQ4dkMzcFVGeHZkUXR2VWE1dzZpWDcyZHFYMFlOUjZwNkVQTS8zK2JhVTho?=
 =?utf-8?B?UHFnVU1hdEphQ1RFaENySnFnRDVCUXJOZ1ExWG00NXgrUTJudWVENldxa1NF?=
 =?utf-8?B?U253YVZoNVEzVTZFSFBQVXE5N3NhWUMxMUM0ZkxYRTJEWUw3UHRaM0d6blVD?=
 =?utf-8?B?eXFQNG9FSTFjc0FpQjVBWWxsOGc2MjhEZmpDaTJBcFMwbHNpeHlNRTJYSHFj?=
 =?utf-8?B?ekRxaitMUjlteHJ2VDY2MXVWWE5BOVRsUjB4U2Iya0hYbGg1SmJqa1poQkVT?=
 =?utf-8?B?ckFDcjBoaHlqaS9GaUdoMXFUK1RLZ3JmOHZibXhxL3E3OWRKWWNDUktPc2ZC?=
 =?utf-8?B?a1YwdEU5RXk3M0pjcGlscGV3QWFacm55UHkzK2FCSy9FMzBRbzZqMEhvdGdv?=
 =?utf-8?B?WXhWUk8wUFJzUFhINE1PeXp2MzJTL1ROQmZkRTNNNXZjTjVEVWdSRTVIbkts?=
 =?utf-8?B?NHZ1ZEhBNVpoVDNlZFlkM1FNN2kyNndTSlYrYnFCZUJocVJmT0JyRzFxeGU2?=
 =?utf-8?B?WHRBaUdydGh6WHUzaVpNbmMyZ0UrZzBsZVJPOWhaeDdlL1N0Y0NsZXBBanly?=
 =?utf-8?Q?+beO8MDL8VlWLToMHM1B/P1G7Udc6IIdonypAL/?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c1e8213-7962-4147-6cdb-08d8f3a3a95c
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3998.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Mar 2021 17:45:52.1239
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZBr6oRQTrc5x8x/03QX6O5IvJkIHWQJaVlvSNjG2tVKlcB9qOuSVdR3YYAAXyHg5SpST7peaJsGZvGOQjwGYvY78ADIPzyVpt4J6l9jTtAA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3789
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

Khem  was asking if anyone had seen a >30% difference in build time for
qemuarm compared to other machines. I don't when building on my system:

rmacleod@yow-rmacleod-lx3 b/c-i-m-x86 $ cat x86
real    43m29.142s
user    0m19.887s
sys     0m4.110s

rmacleod@yow-rmacleod-lx3 b/c-i-m-x86 $ cat arm
real    42m58.185s
user    0m19.546s
sys     0m3.867s

This machine is relatively isolated in that there are no other users.
The arm build was done second and I didn't pre-populate the downloads
but so that may account for the 30 second difference.
I wasn't using sstate for either build.
-- 
# Randy MacLeod
# Wind River Linux
