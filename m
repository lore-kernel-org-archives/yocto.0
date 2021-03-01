Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.31.1614617415128021082
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Mar 2021 08:50:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=qHuU/AtQ;
 spf=softfail (domain: ni.com, ip: 198.145.29.25, mailfrom: prvs=8694f493c3=alex.stewart@ni.com)
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com [148.163.156.75])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1C8F138C081D
	for <yocto@yoctoproject.org>; Mon,  1 Mar 2021 16:50:14 +0000 (UTC)
Received: from pps.filterd (m0098780.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 121GiVEo014786;
	Mon, 1 Mar 2021 10:50:09 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : references : from :
 message-id : date : in-reply-to : content-type : content-transfer-encoding
 : mime-version : subject; s=PPS11062020;
 bh=gwvgOks1lbi82AJIexpZj/AcrUSLpwM6wNwz5mOL0Vw=;
 b=qHuU/AtQFo7dE0LTIADCcVdv7qHnqUcL3uqrpVBlp4P0GlraLsVSFrXmHpP71USZGIFu
 5Er+LYHREmnnIi9iGRz7QpOGafqzo4O+AR1qmvqnnAwoDnIg9T/FGg5RHWTb8SSbv7Mz
 LsvyZjn2pRpEuMNJpSqe4r8oja1qyKrGFzLl6RPjVa/aFMhMGGCD3N8uRPJdKuCaiK1i
 RKz04++9ZhiMY6qc0KBRxer5o6jlIC/1fRB/CyXzlpyC6VbFGrSQRmELDceaqpqZYhC+
 vZ5ydzGety3B2zB8IMSQbKQhiz2jWwOmz6fpni+PgJcppjZ4IW/0nIxNja52IHHGvYN0 KA== 
Received: from nam02-bl2-obe.outbound.protection.outlook.com (mail-bl2nam02lp2057.outbound.protection.outlook.com [104.47.38.57])
	by mx0a-00010702.pphosted.com with ESMTP id 36ymfx398b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 01 Mar 2021 10:50:09 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXegTYgqiPYwWvkPqhufOSVlmACQyRxpiBK2OQ33f0FQmNfaXILfOTz3BUHHrZPEJAWhzyH7LQIPN8Zoql/ZlB1WfCcVQI0JtnJfBJeJGtpkGf8FvN35QPCcLESpKj9mLw+4zkrI3p8LFLWRvu3u09IG1hLgU6minK7SIY6MlddxQIxsS6+fB6mh728ZS8TOZNmgXBqwXtiDaXEfNhk2kxhNwoqfbRXkWJQcQW/vU6TORjzsZW8LXHLIarR2REXVhod+tc8j5cTLAQ1GwggGE87OkOIo7+mdpYspmCI8KoUY5nOosXeSgNGR1t+8pmdPW+4RwGd070+R/I/T0dAVMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwvgOks1lbi82AJIexpZj/AcrUSLpwM6wNwz5mOL0Vw=;
 b=cZ4v7PjMb4j05JJckQSB9HC/gD5Pqa/TH1rMcoDK4PzWy6smvKmrvxuBK/zg3AhU6E0eycU5+hOs7JYGgyxBDUu7oik0CIa6tCRdhBiP4agHeTzwAQIyHmeCQWQCCkKqRQvx1LlFAossK3JB5kRZ7NAHzMgyyVYs5R1C82nzZseIsj/P92HqUiBy3UYsc5r0cdUWXgupcARFd5laO6HfljDTUAYSjmALB/RCGrsYE0mjTMwH3i3m2KdRSwDm9+l2MXXGJiR7LLIEASazJi/gALIgr2DP/RfBbR+fZzG4UKsFM6uNxtAzj3CRfPn3IvW0F+vcPGkPdk0dvRjMlcLAsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gwvgOks1lbi82AJIexpZj/AcrUSLpwM6wNwz5mOL0Vw=;
 b=NawDEYvW2ES7F0cSAV+HLwAhk6EbiNoAm/QowCEwV5aYXXrxtEYAgPdsQt98DUg+nn9Kd6vKOBI/KLBPuiENNL2AX9L6yarAKVYV/AzQ5QLC80DFygGxn/cRwU9YjhLgcUqRziULacO+wZG08EIurHmhCpjRTErHcDteP3IJJfI=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=ni.com;
Received: from SN6PR04MB5151.namprd04.prod.outlook.com (2603:10b6:805:90::25)
 by SN6PR04MB3951.namprd04.prod.outlook.com (2603:10b6:805:4f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Mon, 1 Mar
 2021 16:50:06 +0000
Received: from SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::1d87:e6b2:6840:e809]) by SN6PR04MB5151.namprd04.prod.outlook.com
 ([fe80::1d87:e6b2:6840:e809%3]) with mapi id 15.20.3890.028; Mon, 1 Mar 2021
 16:50:06 +0000
To: opkg-devel@googlegroups.com, Christian Hermann <mail@hermannch.dev>,
        yocto@yoctoproject.org
References: <20210225132756.32084-1-mail@hermannch.dev>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <0c3ed89f-cf34-7707-35a2-759873a620c9@ni.com>
Date: Mon, 1 Mar 2021 10:50:05 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
In-Reply-To: <20210225132756.32084-1-mail@hermannch.dev>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SA0PR11CA0046.namprd11.prod.outlook.com
 (2603:10b6:806:d0::21) To SN6PR04MB5151.namprd04.prod.outlook.com
 (2603:10b6:805:90::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SA0PR11CA0046.namprd11.prod.outlook.com (2603:10b6:806:d0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Mon, 1 Mar 2021 16:50:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 57d588d7-45f6-4f1b-7c9e-08d8dcd2113f
X-MS-TrafficTypeDiagnostic: SN6PR04MB3951:
X-Microsoft-Antispam-PRVS: 
	<SN6PR04MB3951690D0723C693D8E8962EFE9A9@SN6PR04MB3951.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:303;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2gBl78kJLjVj+M6bqnTjDIbHna3y488SGrkX1ZdSERL4O2GD/GrX5ZvHucPCxpKuWPbwQzP21Ct1Z/0+m9X5hMCIa2DXsGhCC8eQFEdHJumRC4pO85bYnVFmyljlpUpjsU0ySQQBYs24y4ViZh2Yy89VKjZEZLOT6Y0u9LqyuZ5iUioD0CUZbo5cxKAChe8zPSxBB2e+xFQbX5t2m+EVzzWg2OC2TxyhJGNyYU9APXV9GnXzvOehf5u1GE6zj9ZIwqOUiOjVEB+EzFIhWe375dBHidEocefTPcxq2t/N8hr0aVODMnhz5+/9u1UuLJ254mp3kcMdq3lwRUgGbcwcld+md+zsQKQ6rvsomzDbHykNdZz87jLATyihbBXCT06O2Y6j36NbC+YPo1bCOEKqfnv8H9AkEVtOMgZdBT4pJONuQQDKyD5/dFELZJYcARt0DtcGG3/MHMEtX+g8kJMg7tqKjHjmafM4zgojaKICgnM08/42XArk5YAdkcmVOnzOD0v4bLFjkQQuYi4sOSeCzpdDcxsQkZqBupuo0SIygSpzES1N+zb3VENrpFG632y7rhZSgn3nNnLZS6b6IU6D46osnn3r0ifepWyhknu5SwpxTEZltplCeB4KVjWPO89OKWNbE5w8jXDhznI6GXq5/Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR04MB5151.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(136003)(346002)(396003)(39850400004)(366004)(26005)(558084003)(478600001)(36916002)(86362001)(6486002)(2906002)(52116002)(8936002)(16526019)(36756003)(186003)(31686004)(2616005)(66556008)(44832011)(31696002)(5660300002)(316002)(956004)(66946007)(8676002)(16576012)(66476007)(43740500002)(45980500001)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?N1B1UmNKUldNZ0gwaFIwK2FWOVc5Z0FxTk5IMmFDdm1ZbGdyUjBCdGNsdlNV?=
 =?utf-8?B?QzBGRXdJYmhHWTFhTmU1aW1hVnFhZkIvY1ZHU1l4WGl1V2d6WmhpN0V3SzdL?=
 =?utf-8?B?Y3MzbVo3UUdLNFFWMS9FbWtiN1l5WTlRZFAvVUhzWTFmZG9hWVMzSmR3K1JD?=
 =?utf-8?B?N3R2Y1JpTkpiY3FRZ3VMU0ptTnNEMTEzbndueHdHdFlxZWhYMFJ2S0xjdlNJ?=
 =?utf-8?B?Q3h6QnNrWW4vcWdxcjE5UjhjOTJhTm0vdEhySEMvUWtEaGpZTlpEQ0lQRDZN?=
 =?utf-8?B?MjBZakFsS3c4d1JsTWxKZVBQNlZuVWFkUHY4Y2RzOHhFcEJIWlRyOXQ3ZFFX?=
 =?utf-8?B?Q0t3SnNQNkdrTDBoK2JCU0ovUU1oSFppN1RaTUtRcWl5TXhTbzloRHhicGdU?=
 =?utf-8?B?d29ybHhOUXJKSWlHQW81TjcrZC9JaGQvR1JzR3JHNUlYM0NUSmZzam43WTdi?=
 =?utf-8?B?UXNKaXNjNDFwQ2NiRzhDaGN2bXB0cVdNN2FzcCtnUGxvYUdvdWJTUXUzdE9p?=
 =?utf-8?B?eEZnVUF6TzQ0b3E0bmVkNE9FV3UxQ1hEb0JaS0NydWhwNGxwNnRhMUNZWElz?=
 =?utf-8?B?eEhJdE1SbkF0RC9rQm8wWTVkTUhEcFZmUy81VkZIcUp6cGs1N2N4ZXVZbEcr?=
 =?utf-8?B?aXdtcnNid01ZeGtLbEl5ano0LzF0TDZuckZlRnVQMkRmb0NKOWEvSlBDNTFT?=
 =?utf-8?B?ME01aDJqN2E4QUNUVDhNTVRiSUhiR08yb2trVm91bzFkWmY5MmYreEFZZ3dm?=
 =?utf-8?B?TXoyUXBsa1RsZTZxTlhXbGN4ZkZsK3hWaFNGS3pYcUcxZDkzN1JxOHVpcDBz?=
 =?utf-8?B?MmdsbUJPcnIvaDJtWWhRd3V6VisrWmpqMXBUdURmeXo1TEo3bkNkYlBJb0xT?=
 =?utf-8?B?eUN3Vm5MdTd3M21qSk9LdjR1Ny9sVjVvT29zTTJKTVFzL1hRd1BXa3pWT2s3?=
 =?utf-8?B?TC83eUJoUnZmNjArajdnWE1xT1NYZDV5Ny91T2hBd1BWUW1COU5UYjFVd2or?=
 =?utf-8?B?YVduRXFPOG96K3dKTzVvZndRR3dKOEhvd2xNc2xFUSs0STJORk53Zk9MVnM4?=
 =?utf-8?B?RXBlQy8vQlZtYnhYRElBZS92SGE4K0FINEJiWnJDcUY4UmZxcUVkZzFWODFV?=
 =?utf-8?B?ejg4NnBXcmtFeS9IcGd4cFpneE1kbUduUU0vejB5eWVYaVM2a1hhaVJvcisx?=
 =?utf-8?B?c2xIaUw5WEcycVhhakFxVW9HMXZtczQ3aEJOTWtrWnNsdUVxNzJBYmNiMmUv?=
 =?utf-8?B?S2xpUHp5aGYvRkRhOXptRXg0UTZBaFdMWXlFWkFvbmQ3NXh6RWtLZkJ4Mzl0?=
 =?utf-8?B?dnB2OTNvZVMzSUFPZ0tvbmx6ZENsQ0RzdElxT0M4SFJuZlUvWElSSkJaMzRj?=
 =?utf-8?B?MHExQXpnNHg2ZUVQRndYQUE0bWtVSkNYOGNlcG9mcGgxanl1cEMxMktrTVZt?=
 =?utf-8?B?eXFkZjRRNWNMcEgvZ1k5d3hqSmpWSHZXMi9JNW4vMmJVTnU0bGtFdHhPVkFU?=
 =?utf-8?B?ZlhhbXRLWDFWcG0vN3BJNlpFclVDN050MFpYZzl6RzUyekQ2SXNwS1k0dTYv?=
 =?utf-8?B?UWxPY1M3akR3c0NNNGl5WXBha3dmM3FGQ2M4aGhKczA4R1lLTy9yQjk1dU4z?=
 =?utf-8?B?WFA0T1VTbThNNlkwM2lXa0hQRmxwNGZ0S0xYZFRCbFJOQVBmZjZvWXFMaExs?=
 =?utf-8?B?aHdJcTJ2L0ZYblpWV3docjZCdmZsTFlOUGJnT1I1V1BNd3piSjl2a2FJcjF2?=
 =?utf-8?Q?jkssjewgho9idTbF408bvntqTI7DeK0GSZpHgf0?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d588d7-45f6-4f1b-7c9e-08d8dcd2113f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR04MB5151.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2021 16:50:06.5090
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uU+p+xpoeoIUFKOVdHjFXi6mupGJu5Sv5LEDfjs4e8Ocxjxs8vFoBO1MB2vQlPV0PAZFa5rjmEejLvS3NF134Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB3951
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-build: make sure destination dir exists
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-01_11:2021-03-01,2021-03-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30
 impostorscore=0 adultscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 spamscore=0 mlxlogscore=935 bulkscore=0 mlxscore=0
 phishscore=0 malwarescore=0 priorityscore=1501 classifier=spam adjust=30
 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2103010136
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Merged 1 commit to opkg-utils:master.

53ab66853e073f54ef43d3045b38ed0303da72a4

Thanks,

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

