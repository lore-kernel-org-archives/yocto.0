Received: from NAM12-MW2-obe.outbound.protection.outlook.com (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.40])
 by mx.groups.io with SMTP id smtpd.web10.1643.1611951208578622949
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Jan 2021 12:13:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Dbq2OjIo;
 spf=pass (domain: windriver.com, ip: 40.107.244.40, mailfrom: randy.macleod@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KLyfK6MmjFOTS7LIPXMn1nTDByJ1wf+gS55YGSmqw8eCDs8wcZbxGANEYUKUJ+/Th5zOmFYhJNiBpto1taaOgp7nCX0wnU1qzifsD8rZPheGrQJPPv6a5Qw4KDwiFxc1d2DjegjPd5Raie2KGWwzfbPmL/PgrFEgDuw44+GLDPBaf6OOxYFMMxOLXSJIZQ9/vNndBKnKokWOsy57ib662BntJ8zk2WIbE5LDQ+C0bMenJtE2k/FIFoCmdmijPVhepxvnA89AJj9KuxDKJ8dVsxd5NEX1JnGDPiA+RrJlbGVJGgyqlOyGqurvTL/qUCjp2SyKJnuwWMQOaGwt57tHDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2tv9BhfOKfPrSGuX3Giligdu8KtPsOxXms9OnY+gMVc=;
 b=bP8OcC5be9cTLvV6T5hUEurHHPGPQCMU2Oa+fYGLpK+4y5gBhKBUyvRH2AbYRGzYnKcoRsLZqiiywF4NmMd+AxZC3SUcuKVBWWxCnGzcDp07CQiKcgw2OeDYX02EQ58kztcG5IKpBOY1xUMemHhgO3JGd2xG6OxO2yn3YoE2/x5UNzF1fXpc9NWmFEMR/FyqmCYlNufY2IR5IP30UF84k18MpnnzPtel/gS5Tx2k3DUDhwBuPsWAgbn8+MBHp9XLPQSdRkdtLlq/cUBs+kdHQd+B80eAdUj0u7dE3csrbm0qmoITc02kOU3K2QDiYrK92q7eDF1tXewIg/AAYbbzJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2tv9BhfOKfPrSGuX3Giligdu8KtPsOxXms9OnY+gMVc=;
 b=Dbq2OjIoo/daxsINkSawDYSr5FnuTL150PEEEa01ODDQbpkHIx0IZUXDZrTLPosYs4p/QQgeDe6Kdby7bwfIZQc5ZKDwA3ygQFi0c/96+DSX0/K400R/pI6pnlm7D59mDI/ouBOqqSuaYzJLLVAQIk8/S1IoldoS4lpxBWA/rxA=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB2537.namprd11.prod.outlook.com (2603:10b6:5:cd::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.19; Fri, 29 Jan
 2021 20:13:27 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3784.017; Fri, 29 Jan 2021
 20:13:27 +0000
Subject: Re: [yocto] #yocto #gstreamer #gstreamer1.0-plugins-bad #aom #av1
From: "Randy MacLeod" <randy.macleod@windriver.com>
To: safouane maaloul <maaloulsafouane@gmail.com>, yocto@lists.yoctoproject.org
References: <zDWc.1609749813849720573.0eLH@lists.yoctoproject.org>
 <5bcf62f6-7d4b-c043-fae4-60c02bb9acd6@windriver.com>
Message-ID: <6a0b8ba8-ecb4-abad-dc30-bef99fd55f41@windriver.com>
Date: Fri, 29 Jan 2021 15:13:24 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
In-Reply-To: <5bcf62f6-7d4b-c043-fae4-60c02bb9acd6@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: SJ0PR05CA0150.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::35) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
Return-Path: randy.macleod@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by SJ0PR05CA0150.namprd05.prod.outlook.com (2603:10b6:a03:33d::35) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.8 via Frontend Transport; Fri, 29 Jan 2021 20:13:26 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d44a4542-973d-4441-ea32-08d8c49256c2
X-MS-TrafficTypeDiagnostic: DM6PR11MB2537:
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB25376A83672B1E8C6851A79FF8B99@DM6PR11MB2537.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zDdqU37NLrqdriEQauyRpYnd3fQ3f5ORjPGa9qYFk3t9sC7To+szw6H1/V7fL8a0r2Q2taEQkuP1Jy64tu7aJAStNz11qmqLDEbTBEAh3wV9ZFl/Y2N6jRftvfLuzVn2TzvG14rrMDFJMuc3VIDisve9LJertlPTgoG0NtcdoxCtjM43QKwNbuB72noFGET3KPj8MWnGVakZbUKY+iiI5WZ+csJQZoamgW4SnizaaC+N9Noaiq/QpVh8/Hk6GnrCqO97RM4Gt5RaLOH/yrWj08JEbfO4UdIoYe/Rba8cCwvLRdeog2LK9PFc+/lqCM2YCW/hlbZelGDplhH/eqcTsjoqqisLTa0PT6YDA+9z0yGq9u/3Fu027FjcvNSdgrAjJmm0GAZwgI4zqg3IRG0/RDiW/q6f0gwM5P1nenZBNV8Oi+s1Iwd2fBFrdAeSqOu1WIIHJ3vLEnqsm5yjoeCCjQDXP3ZqIUcLcWxRQBtFm4a2V8OcCryc+o+x0v8Qgztoawi39Tw/AJ/DVpXaC2vCTKWeoCOeJogP/KzS7t5ncUOBkX2vQDfHbO4iYcQk4Fd08kQ1/+uWdeGQHW53UTKB574hEOuljdMIf8aVxaCHeW8=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(366004)(396003)(346002)(136003)(66556008)(2906002)(478600001)(558084003)(5660300002)(66476007)(31686004)(36756003)(31696002)(66946007)(86362001)(53546011)(16526019)(8936002)(956004)(52116002)(316002)(26005)(2616005)(6486002)(186003)(8676002)(16576012)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?Sms2cC9qckZBQUVFYXpCKzdXQXhWS1RQTjMrRkNMaDBxeTV4andwZEdNeHg5?=
 =?utf-8?B?TnhYdUhDY2pqeERBK1dJdVJFUE05MjA4V0hNS3JqendoREdSS1pDTi9ybEVi?=
 =?utf-8?B?cUd1UkJjUUJHMFprWk9OZGFlTVJuWWZCdUg2WTFDb3phZkJFUjkrZmFRLzRW?=
 =?utf-8?B?KzgycXZXb3RuODE3VFU3Z1VaVFc4NDlsVmNiVG9TbXpnL1hLaEFoMlZYVHly?=
 =?utf-8?B?dFV2bjMvcDRkR1FxNVVtYTFZVWo4dmJVTFprMTJYZXdqTW5lN0ZoRjJMbzV4?=
 =?utf-8?B?V0JTeVZjZGdocXQydUd4WDNqSWV6d2hCcFQ3OVgrd1pnbTlPQ3kwK1cwcHNI?=
 =?utf-8?B?bTI0WlBjNXJ3NWZjSWpUeXRWNi8zK251RG92ZUZvZVZBUFhYclpIanhsL3Zr?=
 =?utf-8?B?dkpDTFlSZ2MzNlk3eGY3UTZqZ0dzZE9lVnl5aExCWG1zMjhmOXRoakFlTUpC?=
 =?utf-8?B?ZCt2Z3lBY0ZsemUveG5WRUxNMnhuNnM5cFRUckh4MzkvQlFxMFR2aEZlMEFC?=
 =?utf-8?B?VG5NNkF5N0hqbHNWcGJGSy8zRUlOcjEvcTM1TUNpVFpNRjlKUkpCZ1AzWU1Y?=
 =?utf-8?B?VURQdjR1YWJyTUcyQjMvQjU2amtPcUJxR1JnbFBJQjJQYjIzdXVMQzNGdHlE?=
 =?utf-8?B?TkpTVVlNdE1wZitYNFl2TGlOVHd1M1hKNHdJV0IrWVBUaWRvaXlxQlNaUkEv?=
 =?utf-8?B?V1MrV0tSeUVEeExVVDg1Y0dmbXFyOUlIYXNPQnJDWE1OT09OUmpVVzJUWXlX?=
 =?utf-8?B?TlIwODdVbVV1YVZPQlNpaEVpL2hZRWRMNE8rTmFtK3BMTWxLcDByeFdGYUMz?=
 =?utf-8?B?cUxxMjMvc0NaYUZFQmsvZUtwbEY2Q1JWNjU3QVpnUVRvV2xKS1hLQzhhVXZP?=
 =?utf-8?B?ZzRnUGpZemZNSVBscGNMK2hSUWVDQy9JS1NCZ04rQW9nQkxBNFhNWDV2ZFBU?=
 =?utf-8?B?TmROTlc0elRRY2ZyRTVHWnUrU3prQTVSTDVDL3lQNWxvZVZhK2RJM1RXSS8y?=
 =?utf-8?B?dVpVaEdXLzdKZU0rN2pjRjQyQkVBbGpkbmxBcFFUZWs1Y0p5R3BRaWJ0UmRT?=
 =?utf-8?B?UDdwcG85TUpzcFltV0JvcUtMZm15VGxKdzNQeVVsWEhsMTRTQnZWcjdrZkI2?=
 =?utf-8?B?RTZuSjRSUlNMaWZETVFlNzVQWmhMUVp0aTN0ZGhVWVdMalVaNHoxbVlvNDhr?=
 =?utf-8?B?OFlEVzl2M2hOSTFxMnFiYXhtL0V0NmZsYVhabFhkU0pMeGdTZWdickFoYlov?=
 =?utf-8?B?LzR5bGp1am84a3FicEpSZUVLbSt2ZEFQMjFYb0M0WlllUlhYRnZFa1hHT3Av?=
 =?utf-8?B?RVlENWZ3VW8weHdjZmtMUGQ1aFE5VDBSRXEwVEJVa3V3TERUaXE5OEZ0Rk5w?=
 =?utf-8?B?NlEyVTNhdzYwMjFQUUdtaDBnM0puR1UrUTcvK0kwTGFrSUxtMEFuRTJJSUJO?=
 =?utf-8?Q?i/+rzhI5?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d44a4542-973d-4441-ea32-08d8c49256c2
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2021 20:13:27.5177
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +mhT0rl8/6psB/mG3uvjaMiZLAvcdA7fIsPYjkBTMutD0DTV1G7ie3XoMG8SPWvlgigLX1Hqkj4Wdd2UcikdEsC4JkXXKw24N5VErqu9/N8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2537
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-01-29 3:11 p.m., Randy MacLeod wrote:
> Did you figure this out?

Oops, I see that Khem has replied to a later email.

-- 
# Randy MacLeod
# Wind River Linux
