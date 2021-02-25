Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12416.1614265757493186476
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Feb 2021 07:09:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ni.com header.s=pps11062020 header.b=b0RSxK5S;
 spf=softfail (domain: ni.com, ip: 198.145.29.25, mailfrom: prvs=7690fe3a90=alex.stewart@ni.com)
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com [148.163.158.57])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D3D9038C08BD
	for <yocto@yoctoproject.org>; Thu, 25 Feb 2021 15:09:15 +0000 (UTC)
Received: from pps.filterd (m0098779.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 11PF93LV030548;
	Thu, 25 Feb 2021 09:09:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ni.com; h=to : references : from :
 message-id : date : in-reply-to : content-type : content-transfer-encoding
 : mime-version : subject; s=PPS11062020;
 bh=hAJQ9MLal5WobWQ3jBBn5T9dGDY5xGEXGfxKRneRMQw=;
 b=b0RSxK5SDA9ORB9pcwR4i4O3djhYlYKru6M8czAgwT8c5QZBIlQDm90Upvs/+ffmrDv6
 kL2ohx1FuZc/brTZGcSe/eQEuifpBrK6rr3tts/u7N8l1cB54o1TlWf4G5dhL1AMDPmF
 GAR5TGpbpEdYP5c6NeltHfE+iyPRrpPbIY6TuLbD1gFp38cLgbJeZnreLhiX9Mf0yw4Q
 ftDPg/QtRnSR80i89ugGGcFvCdRJMqHaQvPUmZUeqsyqEtxhk45oTSaowq2TNLqXRLwS
 Upmk0XQJWLap5leWI2FydvqcBzzHIJUaU6FYrY5yHeTITB1Dpf7kiqX5IzwQzXvTgewW vg== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0b-00010702.pphosted.com with ESMTP id 36u14d0dem-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 25 Feb 2021 09:09:11 -0600
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VHtXV46h0u+LrpGPEZTWDyXTHxriwc+c3mZQs6vxHRL6Thv7H74oYQuLKNWiAyh+CUQT2YmfiifatTL5s77v8/NVjDQsak29prKMgvF2nUKPiI25lWGkOiC2TA3xuHJOMRQWfaMvssIQbhAZuoC6K1ksnInzM1hfYK9w8VlMui4NMpPLIglvEKrscEebhr4sP0Fnfcyd/WriAZNndcN8/rVlGNr3I1pUxmmdQd8acZ2zwuM8YR6X91AYWoCVAsi44rnx6gz5e1Ov1W+481kjHB3kpph4nYTYN+87WjnmwNVj5WOXedI3Mr+Lm8IIfcdu/mk17at7R6urQCohjL1tBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hAJQ9MLal5WobWQ3jBBn5T9dGDY5xGEXGfxKRneRMQw=;
 b=JB0WoQDTd1UPexVP7hnFi1swHozhRaGn7OifHhv89kQdirgetLCP+cWHqw1pdt0MhmXFAohe2+Yky9rU+vV7WeJVFSv/jR2voU5vuD0OviW9ZR95WoqDYoG7Xd7HCPc5jzz+MXKHSjwoPWwNj3d28mhib96Nu7V5YrDRKQHAyCkU63SRJfNPWbiZ/ls0gy1/AROl4S/9FNt19Il3K5ktPxkCpUZTRSmerZu2vPXYYN6DrDjTW4Cb38MP1k9mlgiXoC5VEwfvRLUaqvE5OmK+VU+NC++PGIQa5aJGFe9T3yUwogVm/qrdnN2ySuQP06qrXTWzz1IrgLLQ8MUrJ97m7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ni.com; dmarc=pass action=none header.from=ni.com; dkim=pass
 header.d=ni.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nio365.onmicrosoft.com; s=selector2-nio365-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hAJQ9MLal5WobWQ3jBBn5T9dGDY5xGEXGfxKRneRMQw=;
 b=Qy26gwTsOX+rLFI5ylJvii7Hlqk0WZ9jU/K1BztfKPoK5v8opQ67qLgib/WlYCRUsQcdS+iVuyeATfSmnrYTLtAscsqCux8lSrTWzMnYNtoAfAbRO4CeMb6bXokdhmC9oRlfoUTb0azweSilT/hlbbcxUq9lvQDTitEUZbKzJLs=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none header.from=ni.com;
Received: from DM6PR04MB5306.namprd04.prod.outlook.com (2603:10b6:5:10f::25)
 by DM6PR04MB6346.namprd04.prod.outlook.com (2603:10b6:5:1e2::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Thu, 25 Feb
 2021 15:09:10 +0000
Received: from DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31]) by DM6PR04MB5306.namprd04.prod.outlook.com
 ([fe80::85b8:7cc:802e:d31%4]) with mapi id 15.20.3890.020; Thu, 25 Feb 2021
 15:09:10 +0000
To: opkg-devel@googlegroups.com, Christian Hermann <mail@hermannch.dev>,
        yocto@yoctoproject.org
References: <20210225132756.32084-1-mail@hermannch.dev>
From: "Alex Stewart" <alex.stewart@ni.com>
Organization: National Instruments Corp.
Message-ID: <53cfbe05-e97a-872b-ba1a-657ce6877376@ni.com>
Date: Thu, 25 Feb 2021 09:09:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210225132756.32084-1-mail@hermannch.dev>
X-Originating-IP: [65.36.69.14]
X-ClientProxiedBy: SN6PR16CA0068.namprd16.prod.outlook.com
 (2603:10b6:805:ca::45) To DM6PR04MB5306.namprd04.prod.outlook.com
 (2603:10b6:5:10f::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.3] (65.36.69.14) by SN6PR16CA0068.namprd16.prod.outlook.com (2603:10b6:805:ca::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19 via Frontend Transport; Thu, 25 Feb 2021 15:09:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b6dc469-69a7-4d48-3594-08d8d99f4da6
X-MS-TrafficTypeDiagnostic: DM6PR04MB6346:
X-Microsoft-Antispam-PRVS: 
	<DM6PR04MB63461D7C4CA9D77DF0F67FCCFE9E9@DM6PR04MB6346.namprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	koZf7iMiYVS9IitE1WUP+BrqNXDVDj0+Accou/olivqPdQz0tkYKEeo8bEQr9LFC5zZnLLwA0oekxQc15QO8XkAAumH+Z8Sm2d9U14sUJptRsm2VOWOVgDLduE9Yn8QcVU2VhvcMXpkk7uaZr7Qti8epmhyU3V1Qk3jBlXe7usUzlc9r2Yvdenr6x/lzRThKrUy9zbOk0jG0Kr7BhhQP4SwYZ6n1H9pI4Hz7fvoPtiCoSw0E75N0fBh5jSBm8ixHZ5L6dbfcKgZyibcgyppmkWuAx0RH5fI6Qj01Ja7looxVyOLynoS4OEvtXXU4mxFktUcCLPWI8aNd6FglCa4HHnVdN0nJWVwstUP+GnIHxgI6BUMH+YrYJKc+PDRS7ZW3oKVgJiHyGgcLBcMu6Bsi2vDyjdTqEki20qHslxIkYAjYJnrwt1otJ6X9FmFlGOQmF9brQ09IbCcdjtehbh0Tf++9VAvMPySrXDwp7R+2GGOpIF0vy2Fg+hRYx8TnQ4g3C7qFsD+po66HwAeRRn7+OluOrxhW1y1aEgBOvNRU2hbusb/g28ck5xfxnzlaZ55p3YWWZVtp/9Pw1zETGr2LPF4IqmcLVZOixBV+6BQZ/vAKTnN4zgLahugFr/OCpPuGFhIo8DBcOtxKLvHPHJQLwA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR04MB5306.namprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(39860400002)(136003)(376002)(366004)(346002)(396003)(31686004)(16576012)(44832011)(316002)(8936002)(186003)(8676002)(956004)(36916002)(26005)(478600001)(558084003)(66946007)(66556008)(52116002)(86362001)(66476007)(16526019)(36756003)(2616005)(31696002)(6486002)(5660300002)(2906002)(43740500002)(45980500001)(15477505002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?NUw5amxtR2RDOE1FOVp4RlVyVGFQaFl4YXA2V1pzQmc0dHZINUJZU0FvNStq?=
 =?utf-8?B?aWlYYXpZTGhOUlNmNGhxTEllVStBSFRuMkx0VHNGdGtCYVVTWVViREtTcktU?=
 =?utf-8?B?bEVSVFU0SWx2Y3E1U3BFRkExREtTS0lhVkhYVXNYY0JkZWVQNlhjKzBOUUl1?=
 =?utf-8?B?clJtU2NYM0RXS2ZMaldBcWg2UlNValBVaGJ5cyt2N0FFN3Znc1FWeGo3dVNh?=
 =?utf-8?B?M3Z2NWVSVnNZcXJUNTVZa1YyNHlqaDU5RzB2c0dtMXpIbnFuYzdPNHN1Q1Bs?=
 =?utf-8?B?S1RIN0JYekMvU284OUxxYWswZFhLL2d1cFdlQ2xLWTBzQ2R3akVMMnd4ODFB?=
 =?utf-8?B?cVNydDVsNzNEYVN3bTlaWGVtSmVGWVNYMG4yZDVZMUxZbnVtcDNsTWxtMmI3?=
 =?utf-8?B?UVlmS0Y5ZlRWOWMxcFNMalRmRDZFSTBqVXRSWnNwSDEyL1d4RFo1QzdSaEJK?=
 =?utf-8?B?WUYrdVoxK0xPcm1XWGV2YldFbWxzcEg0REwxRmp3ZUhtUk4vcm45cXFtU0RW?=
 =?utf-8?B?ZGVLYzhHTjZObjhETCsxNk5xMjVIV3dSMFZvOCt5RS9wbmxpRDFwMmUzVHRK?=
 =?utf-8?B?WERTNFdFMmVicTh0U0w5MUZkVE14K0YvdkNSaDNrdGRQRUZ0aE52eDRBcXZp?=
 =?utf-8?B?TnJoUTRNRDF0M1QydmVOYWwyeC9QMEVJWGJxcUc2MVpoZkVUWWgxTVhydlJ3?=
 =?utf-8?B?QWZGQS9JQU96WlFsVHUwdDg2QXZ6blhlTjE2eFVxMG5DTXFVQmpQWWhqYy9k?=
 =?utf-8?B?Nm9uUjBNWWZkMHFpOWVvb09NajV0Tkd4dnYzUkljbzV5blVpWFA0OHptYXFJ?=
 =?utf-8?B?Y3g1UThlZ2Rsb00vbU5EM0laWWJMSUZKblV0eFduOFRITnVnUUk1TlhlcFpt?=
 =?utf-8?B?TFMwaFhyTkFDSGNtc3pxdmFYQ3RlM3g2MmFnNE93VkpCTFFmZ2pRZ0x0aXIw?=
 =?utf-8?B?TDB2NW00UjdHR2pUdyt4TXpVVk1CTjZpWXg1SUtFN3k2dzM2eUlZaWIzbVdX?=
 =?utf-8?B?dG1hcTVBTkExeS96V0tRY1JYeEVLQXVnYnUxQ1d6b2Y2YS9JckRNbFhRVFZ1?=
 =?utf-8?B?ZFJUU0lPOE1tdEYySUJuTGxqaW5FTTIyL2Rjd0NlOGhXN0N1TXo5NGcvRUJh?=
 =?utf-8?B?TG5aR3A2YmxpTXgzQWNFQStoRlo3L29GeS9QZlpMWFdUeERWRzNEdFIyKzNz?=
 =?utf-8?B?ZjdhSUhtYWJycEszS1Zhc2F5ZmNRMXJla0lrV2ZFdUR2Ym0zSnEzM3I3MW8r?=
 =?utf-8?B?bURHUVN5VWpWN1ZmUm5Qclc0eGIweHI2VXlTWEEwM1Y4dkJjQ2VzY240cW51?=
 =?utf-8?B?VHVvL0pudndTN0FjeUo2MlhxTzlFZ3VZQ2JmVnBjUG9EQnE5TXhjK0VtZ0k5?=
 =?utf-8?B?RndFdjNpOUF4MXpqaUcyS2dkNlY0V1BSNWgyeGpYc2sxeFgycDB3K0taRnMr?=
 =?utf-8?B?Rml3V0w1dDBiVGxQVk51aDRBUzMzT1lWUHFKa3RxWTdoT3NFS3hwU1ZrUEo2?=
 =?utf-8?B?VVVQQVhiVHdlTXo4S000THRScTF5ems1SGRyaVU3QlVEMzN5MGVBdzliamZB?=
 =?utf-8?B?VVlZRGxzcVUzai96QnY3RFFFU2ZXbFQ4S0hibDRXZ2FxWnl2RExpOE1WSUFR?=
 =?utf-8?B?L3ZzMUp5TGRhZEIwdmtnMzdlY2tRR3F1M1FjeG9UcStFL2xQb2Z6VFdnY0Jr?=
 =?utf-8?B?c0VjOEVtWFo5dW5JUTQ2c2pySklDMVR5YlRMZngvVE55THpmcExvQ1ZMZlRP?=
 =?utf-8?Q?O8UhUu/g+7q8IHjafiIhuoZjoirgVMTUqG2zWzy?=
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6dc469-69a7-4d48-3594-08d8d99f4da6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR04MB5306.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2021 15:09:10.0270
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u0MUNxKsyueZEtuXwL5oOaK85aCHWeXyIIGWsELa0s1H1cquY2AtvBACdwFZ3EaZo79HWm8pp/98d4rrq8q8dQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR04MB6346
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-build: make sure destination dir exists
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-02-25_09:2021-02-24,2021-02-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_policy_notspam policy=outbound_policy score=30 mlxscore=0
 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 suspectscore=0 clxscore=1015 spamscore=0 adultscore=0 mlxlogscore=947
 lowpriorityscore=0 classifier=spam adjust=30 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2102250124
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Looks good to me. I'll pull tomorrow if there are no objections.

Thanks,

-- 
Alex Stewart
Software Engineer - NI Real-Time OS
NI (National Instruments)

alex.stewart@ni.com

