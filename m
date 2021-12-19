Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B9C433EF
	for <webhook@archiver.kernel.org>; Sun, 19 Dec 2021 02:04:08 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.12602.1639879447971426108
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Dec 2021 18:04:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=QjOPbHOE;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7987cf9f2c=randy.macleod@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1BJ23PGA017068;
	Sat, 18 Dec 2021 18:04:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=subject : to :
 references : from : message-id : date : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=PPS06212021;
 bh=XwZ8ex2mr0kRKM8L1S4horZSKmPMaWx4u6uwhO1ypaI=;
 b=QjOPbHOEiJwIFjccfi3hkX83/zBwZSVk/+o1hCr1r77pv+Co13lVR6aB/rqcwzSBAl4a
 NcYzIbfmYf+S1jCayYkmyBCXfIu+dEwLICvFNxAlYCFNw9g3HcIZTqd5UXwHsDTioQ5G
 KSbAeq665BabHzp5f5E+Qoi4zuz2oFrDszfMxBKTpNwam3P2biGGemrz5vYCQztOV636
 WppwbPI39RwWNBiy8Z65aZJewK79Vb+P6GiNJ/9I/LBGcYnKuTKWLQjqBRsxwrqADZ2i
 GrZmyX1XsuNMruVPGgQw25Qo5Nr7qHBHHFWgudD7RURQS4c9Xz8uuhYqlM9OsE+zwOlU 3g==
Received: from nam11-co1-obe.outbound.protection.outlook.com
 (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3d1g1nra5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 18 Dec 2021 18:04:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZhQs+FAxBiUCgDAnLT+ygY23fBYvgxY8Bm1t6VbUQ1V356oBrhQsUg/bsl8QBXi1788CyHU4/5RVl33/Mf+oLADZlCGpzt7E4pDiYE2qlinGGBflxWXliWY2p8fLvmdy6A9qXO3hM9TZ/4RN3fuevWOwRTDdbOqIUeUbZUDtZSKO5O7McCJLYNNpA0qVEiU2RCHiYbCuWXPjWjIPT+X242bx5nb1FZ4fBaJclivbL13KWrHxdlIQEt1Rw4zvBkoNFi+oKEoI3akUl2HeMVI1+p8MNv6Rl5cjCG5AIic1ft1W1WAXFTQ5LPtLHqCN35oumsYIb2teiy2B2bK7c1nKxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XwZ8ex2mr0kRKM8L1S4horZSKmPMaWx4u6uwhO1ypaI=;
 b=CWyNbzsRDNBs96zX97t2PXDt2n7d8HQrnKf7WfinQZdiTqRIATorDVzDKPq7cYWb3gWiMUAwiQCblbvgYGLgtz4MzFxIrnynzU5OCnh4OYwf1sAufDrroUuEPH5/5dkGRRg77iHQpCIZ6P9wKQTQJ4bdkS6CBYYLTT9gx0W8UIZIafQ5uvrcYYqQLfXfwanLTDB1AxhTYbC3BEOGdvMfLoNRPU+23XuhZQP1c3vjMEDdd8x5cjp+uwl3ZYmrVMH0pkIAbR4hb+4hHtmYYUqBHfvy4P5zMQTop/CDudZShajHMof2/zVKL6MMKCb68xMwLQEhge5TmhRQUAJwBe5NGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM6PR11MB3420.namprd11.prod.outlook.com (2603:10b6:5:69::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Sun, 19 Dec
 2021 02:04:05 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::2df5:9c7b:a045:37d8%4]) with mapi id 15.20.4801.020; Sun, 19 Dec 2021
 02:04:05 +0000
Subject: Re: [yocto] Software Port Rpi3 -> iMX8
To: rashmipisal@yahoo.com, yocto@lists.yoctoproject.org
References: <JYAK.1639861968198864101.2cCQ@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <500dc680-1ac6-f075-61ef-f6c0c430e873@windriver.com>
Date: Sat, 18 Dec 2021 21:04:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
In-Reply-To: <JYAK.1639861968198864101.2cCQ@lists.yoctoproject.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0062.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::7) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 496876f0-f8bb-49d5-7885-08d9c293d604
X-MS-TrafficTypeDiagnostic: DM6PR11MB3420:EE_
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB3420309076113842F5B0EBCFF87A9@DM6PR11MB3420.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SyJOHPy6ybsnZESth5Rvs9dDKQsOCD+rpTJxH/Vn2CwwSR4VrEaq7GXVGhygQQ2roCfA8ZLQY1/khYrtBlKvLLBPzYPWwf8SdCvHE0umM/8ra1MGXWjZOFNUSMA/FDP0WK07rrSWYlJ0KqZeNQKbSy+ahGhXgzw4kcMkYTqifYhBRg07JmQi5xw8vreVbJ9E3SW6ZVBlbyksUPh+8NMMZ85rcnkGkW9P+VBV+MxZ48PjZpTCQGu6VipBf371k5NwebCcuIo57XCJ8q/K9SWgd0iD56gwAARFw6WBw+6MFqUCuekIC8wn8r33gyBYE9hO7vgj0BnsTun54gULQFD0ylfVz9ZRWmQga6LeFZzNFTwYw1pS8cmEO+oTiatInuysmYK4Ii+UWJGYcwIxuMdGxH0Fa3yhG5n51hXMjv0QYCY4+MTZGxW3CiQ+LIxS0SdJ0f8jbyfqtxbn5cdQMVZgtQHltfIzJ8pkvqrooHevpyhHeFhUhHv3bO/tgZXnMDJ2Np2Oieu/DdIgIR4DjSvJGmLTQH2CVsF3NDVg65lvhWUz51euGqC77r5jpMTb/Bktp3RdE9OdIOLu41VD0eWH9Y/8v77LQVDZU2z+pXAX2NVMAzfWXC5WEINOgD4nlslW6SY9MJU5CFEG5NVkWj/HE66UCgtCxUVGkPuVvIPKZJn82fQX5XYIJYVpvvGGJi0St0r8fUJ0sUQOXcchPFqBoYAHPUw2gXaODEjmRCgBGjmcf7t0GmJanNa7VrolB+XfdfnuogxYQrjInbZBNv25k3VSEvsMpALPG/3YrI4YG1w0g+0PGMgUzl78IEsNgP2KK9fsiTyq4FnbaASTCFMSlMxcOikAnTKTLdoRx56p4nVpkJC1o2SlCeX3mFAGy50CO1evW1OkuB3e6S2pcnhYag==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4001150100001)(53546011)(6486002)(6506007)(8936002)(966005)(66476007)(66556008)(186003)(8676002)(66946007)(2616005)(86362001)(316002)(31686004)(26005)(508600001)(38350700002)(2906002)(31696002)(36756003)(38100700002)(52116002)(5660300002)(6666004)(6512007)(83380400001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WXQzdHlHU1I4MmhBN20rNzZTcU9UZVdIMUQvNkI5U0RaVDFQNEFUYjZZODZW?=
 =?utf-8?B?RTdHaHc1eGd3RE9LZVJUTEtQem1MNFN6cmU0NW50bnRrUUlFWlhOMnNncE9i?=
 =?utf-8?B?Qzc3WlBkOGN6elgydEs5djdBczF5L0pZc3ppS0tkeExKbFRiY1FRVkorUWJ3?=
 =?utf-8?B?dWQzRFRFR1c4Y2NsWE9aNVA4bkcyQ2JCWXIvNmpMQWVSUWtaa0I0WmdkeXBy?=
 =?utf-8?B?TnFnMTU0Q2ZUYmVtS1JPNEg0YmhsQ0N2N1dIQnVoN2c4YVNqZFN1OFZ3WFJE?=
 =?utf-8?B?QzBDMmdLcnBwc2VCN1hHblNiNmJvcm5KSHFqYlZJN3JmVGRxVzVHWjRqNHRF?=
 =?utf-8?B?cWRzbUdkVS9MNko0QzNNOS9jNXhkSm9BSUI2NFpVNW0yNGxWek1DVFFFa0JK?=
 =?utf-8?B?aDJIcCtkcmpDSHY1UlVjN2lrNm4rdUgwSFBxUEY4eCtwVWt1UHFaZHR0V3Jw?=
 =?utf-8?B?VU1kNnEzOHJWL29rcVZwc2JoTzg2ZWsvMktieXRwc0VISmF6bDQvQ1VLK0wx?=
 =?utf-8?B?Q1FEMVVsdUdSQzBzZ2wvM2o3Mm5tOEdYbnNCb2VldGRySE1SZVVWUjBiUFRQ?=
 =?utf-8?B?amg4UVlLSDlGS1RHaHEvYjhCWlFtNEIwazV2MVg0a3RtK1RDYkNOZE9ZTHFs?=
 =?utf-8?B?dnI5aU1JYS8yZVkyb1hvVEpGbkpzN3BQRzlIN0MydlNtNU9GWUNLZFFURE5P?=
 =?utf-8?B?OWUzcmZLRzlGUWFNOXgwazUwTkZvOGpZSEpqeFZhcnpVYm5ZbGY2L2pGWU1t?=
 =?utf-8?B?QStlSE9aTzd1NklON2JIcjhzN1U0Y0s2dHhBb0EycmZIK2dyRGNZMTlyenJW?=
 =?utf-8?B?SzRZRTBiOEtBOGdiQ0pZZEcxd253dHFEQjFOdmtWOHRaRTBQUmFJRnUyN3pL?=
 =?utf-8?B?a0dLUkhncTVTNlZYeGRYazZwUUZxYkpaTW5LNDBxYW9tZ2dzN1BMYUN4V3JN?=
 =?utf-8?B?UFVzN3BUWU55cnhWTW5ZU21vbDlPKzRpY3JPT2tLemtMajZ3Y0tmU0FrMUJC?=
 =?utf-8?B?S1dpUHIrYTBDaTlmN2dpUHFuWlA5VzdETVF2dFNHUVZmV09BQjN5RHhrNFNz?=
 =?utf-8?B?OTFTVlErbjlrRldYaEhXb3dSV2lRcXZtSkdSNm9BUmczN0RUcWxScjlhYkdH?=
 =?utf-8?B?cVdNL01PSWlrTTBTUnVrY2kyY3FUUHd4M3hSellzSEcrVHJNTnhaYmtDYkNO?=
 =?utf-8?B?OHorc29Tc29DOXdkVzlCYW9ZTm9pN2JmMVNheU9SZFdGQ3c2cWlOQURWSjd2?=
 =?utf-8?B?c1MvOXZHaG9uMVhHTEhJYjlEd2RGN0xWM2M1ekdLRlArRFBsSWwwYkRjVVJq?=
 =?utf-8?B?RTFGWmRubXFwd21EUFZicTU3eHdteW5DOWpxR1dWRkt0dGw0NHFSZ1l2Y1Vz?=
 =?utf-8?B?WFQxQVN5MEU2TkdkYTFld0VMSjhsdC9QQmJidmhxTDZaTUs1MHg4N1JYZkJl?=
 =?utf-8?B?T3poOTBqTGJmcHg4cTdzVDNBV1lOMEIrTVFJRVd4RGw1RmRNMlZSRGtaK0lJ?=
 =?utf-8?B?d1RweTNjcUpTakp4cU1SK1ZoaHpxd2c5U0JYbTJ6TU1XWW5KRzhOMDVZV3hH?=
 =?utf-8?B?ak15ZlZZcFRFUmpqeGN3U0JYRWhyUCtwWEhJSW9pMzBnZ3pBR3dxYm96UUlL?=
 =?utf-8?B?NUJybUdUWmNweWZ5NTE2NzFDdkVNUzdGNXZXRGllaXpWTXZIcTRVQVp1UThL?=
 =?utf-8?B?WDRpNk9STnE5eXZYRkNDMGFxLzR2dDhhLy9OdUJ6L1d3V2dsSHhaMGkyODBT?=
 =?utf-8?B?ODBmRUdKSDF4QTdhWUVTWDlXNHJtMlJla21nZGdwS3BRRGZ3NzVRKzBlQ0xP?=
 =?utf-8?B?Z2k3ZjFhd0IyRmRuSnQvK2VjSFc1d1NYVWk0ZWtDWmRod2hwcG4zTFk5VlY2?=
 =?utf-8?B?VlM0WmZFY3FUZnpzaUZMMGtsODJrMHIzbzE2Qm1oOXlwL3BNaHNuK2lnZ0xQ?=
 =?utf-8?B?UmxpWjBDYUJzZjVQSU9MZi9GeWYwVDlKV0lsL0s5OTdKanlLMVQzdVpSQjBS?=
 =?utf-8?B?d1huU0xvdzk3aEtzMUdSRlZOYk1VVDRPeXJnQW83SlgyZ1lEZklqdE80dDFp?=
 =?utf-8?B?UnFKeWl0N2tYb0U4c2NpT3A5ajJSeWM3TXBYQ3ZoSEpDTzdNcTJqdFZEUGtw?=
 =?utf-8?B?WjdWR042U253QnRSWmN6Z2JZUUpjV1RYSHMxTUlNdHZ0ZGNaL2hQNTZreFkw?=
 =?utf-8?B?dTAwZWkyRXkzZ05uUlVqQ2RyZ1lGMWtsZkdGNi9oYSszQzdXMWF3T3NEbHVX?=
 =?utf-8?Q?NL1ctTJhI+ETElOhKe85IPJmayTkPkVMguyZKn52Uw=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 496876f0-f8bb-49d5-7885-08d9c293d604
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2021 02:04:05.7327
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ZmibuiIZncIL18c7Xm2BRyfz35EzNKrOA1fve/BaW5RyK1oFEHJUDAJP7UFanG35SLZYjF0/8I5Fma2j8LUUdcn16Ov0RNJHFqeusBgmUB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3420
X-Proofpoint-GUID: Re7hILru93gfv0dJ5VqiSNSWFJNpgvUS
X-Proofpoint-ORIG-GUID: Re7hILru93gfv0dJ5VqiSNSWFJNpgvUS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-18_08,2021-12-16_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1011
 suspectscore=0 impostorscore=0 mlxscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 mlxlogscore=404
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112190010
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Dec 2021 02:04:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55618

On 2021-12-18 4:12 p.m., rashmi pisal via lists.yoctoproject.org wrote:
> Hi Team,
> 

Hi,

Welcome to the Yocto community.

> 
> I am working on a project facing a supply chain issue and need to move 
> away from the rasperrypi3 module.
> 
> We are planning to use an IMX8 processor and wondering if I can modify 
> the existing embedded Linux distribution created using YoctoProject to 
> accommodate the new hardware changes, or I will have to make the latest 
> image from scratch?
> 
> Right now, I am entirely lost, so any help is greatly appreciated.


It's hard to say without more information.
Can you tell us what layers and versions from the Yocto Project you are 
using?
Can you share or describe the local changes that you have made?

Certainly many layers are largely independent of the BSP so unless someone
in your organization has broken the levels of abstraction in many places,
it may not be so much work to migrate to an iMX8 board.


../Randy

> 
> Thanks,
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55616): https://lists.yoctoproject.org/g/yocto/message/55616
> Mute This Topic: https://lists.yoctoproject.org/mt/87825940/3616765
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 


-- 
# Randy MacLeod
# Wind River Linux


