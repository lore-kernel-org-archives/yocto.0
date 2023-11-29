Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45981C46CA3
	for <webhook@archiver.kernel.org>; Wed, 29 Nov 2023 09:32:32 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.28449.1701250342775091443
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Nov 2023 01:32:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=pCqTheaW;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=0697d38bf1=qi.chen@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3AT7tJMY007538
	for <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 09:32:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=oo7MgGZIsp/QT2jSNyuW9qfWGPtGCr4c6ZqUq5r+YJg=; b=
	pCqTheaWQS+GkCVdCKjw85v9vY4qqcmL+oHEPgrPkGswkonL0xrqcwGAzVFqfpG4
	1e3alzXCQm9QW8CpaxXq3hdnEwRo2cLIKbv9asDM/C/sptBW0fjAF9enI7l/XnFd
	Q2SmRqZWunTMDdxHQOWJeZOvy+8IT9xMF8PqBt2To9JiMA6VTG5nKpyQ6FyrfYdr
	Sezj7v42eUl2qzGPxLGfK4e4yoClgIBhmrLgGA6JLemrYXgB7eQRhSDlDELX5Xtp
	+2csaXX/TUAu9VUnRjYLp5UNVYOYb7aTZ+0vgQgDOgYFGyzVXB9yzLMWgZerwd4m
	4RPwggDW5n6jfZy//iQ8EQ==
Received: from nam10-bn7-obe.outbound.protection.outlook.com (mail-bn7nam10lp2101.outbound.protection.outlook.com [104.47.70.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3unven88fb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 09:32:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3XbuxYpcXcmhEH44FOydvI0hs4vlUZDOvkhioGME1HdDprOwwxx7HnZiZXh1dWuYjd1Y9F3dOG0nSSNPRMuH+yUKd+RmhJwrSEQ0IrQstP1rPWw0lh5169aeYqB/O+R1Uo/Oj0HprsXvma2LXFP2gvjTWH46Apii/AU1Pq4818ZWLUfIEl2/Js8bq3pCnrqQ4ZNQ6sjkVPAXhpKsyukRC1q6VOZaBpWGbLTv0/rW0itZ9k1UgXZMxE+B7T1wXBjLm4eL2C7ER8RhYKVjfrXHNHZ9pqZKsLG5FsCEmOdSr01ZCJB3pCxaaxtHyQyzlCmcSAbpAufpFl20U+SrVG2cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oo7MgGZIsp/QT2jSNyuW9qfWGPtGCr4c6ZqUq5r+YJg=;
 b=nvw+rQB6clLF63iuMWKNkQ127s17NnKAlEKXSe2JY1S+g2FwtsOdIG2zHbINhO/gGFy2Zx/6dBgUdEbENi4+Z7Gsr4SqRsqNDA67rZLIDI0jyO36PfKrHA6wttj/PQOuw1G1wouTuuG+lNkaRGpS0fh3IdJYGrOsy3Er8IqpB182J30JycG6KCSz4ZGPwPX9Ibu6/sdoMXU3O8XOKTRTAjSEOW4TfNnsPK1DPLq0ASAWdxJMRb/LbxnDWEEcewdeQG/renN5olRIBEymebBCt2UhV5jbbZ6WC8FHydQlrvQIebuK+X/6d80nNqT3K6Y0crFSirPo4C9ccDQcmhIjIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by CO1PR11MB4818.namprd11.prod.outlook.com (2603:10b6:303:93::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 09:32:18 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::1ea8:e7e3:acc1:8eb6]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::1ea8:e7e3:acc1:8eb6%3]) with mapi id 15.20.7046.015; Wed, 29 Nov 2023
 09:32:18 +0000
Message-ID: <60507c62-a479-395a-78a7-fe8812ab7ba3@windriver.com>
Date: Wed, 29 Nov 2023 17:32:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [yocto] how to intelligently avoid OOM build errors with
 BB_PRESSURE_MAX_MEMORY?
Content-Language: en-US
To: yocto@lists.yoctoproject.org
References: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <ef631e8e-8bbc-5a36-8282-405b10e872b@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: SGXP274CA0022.SGPP274.PROD.OUTLOOK.COM (2603:1096:4:b8::34)
 To CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|CO1PR11MB4818:EE_
X-MS-Office365-Filtering-Correlation-Id: cdd055b9-f54e-4965-37ff-08dbf0be1440
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ALkoSbL2UTdF39f3nZI3dINNhOBwrYes2/wii9BUn/V0ESfN7sF0g3dSMGTmStZV1CaxEJJrclYJzFsuSfELE0GmgGjO8naIsMh+V9SO+k5/qyRgip3PoF5yVjoxsO8ASpnC1XfRSGso2UjUzVeXtsg4MimRLkizlSGhB5oFtqWewLflA4YQPLLPWaBclqnbaJmWNwNKrFGEYmh20mk2jou3NbrZez0ZUwdU5lpOZuJ2LA8gA7TWXkygwKg1V/DdJuo1hlrru1tBYh3Bz0Nyz84r4rIIN5kSnkyk3wNjklwR5xcPDCzlnkPrnCXBLI0eKH8hJTKWVTpQJZ9IID7c/70QmjnwcU2kki1f8yqOLbpP0eTsC8BjO0ZI5ERJ7kE3fWdGG95U3HTPs9Ocg5r/Hox8cMg7OqUGz17U+YBr0vKqhzcR4Gxk+gsjycND/SHfKnjykXv4ii05F7a1glyQW7Lf1A1o80xyfCoBcv/hjDEI0dki+Tjq2M33RD2NPaOvscW4ru0i1h3qjY0//u8CmhFsqwD6oherpaqwvSpgA/xuNzA+rnptqpN8MYJiDWanpfBctBJwU5TgFmbIiUxKOjgWwUkRm/ZMSRhzfQKMwAROhkDJQ4P3d7RYJZ1u4xwi
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39850400004)(376002)(346002)(396003)(366004)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(66899024)(83380400001)(38100700002)(86362001)(31696002)(36756003)(41300700001)(66556008)(66476007)(66946007)(8936002)(8676002)(5660300002)(2906002)(53546011)(31686004)(6512007)(26005)(6506007)(6916009)(316002)(478600001)(6486002)(966005)(6666004)(2616005)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WVJlS251OFpNN1lMd1c4OVF6dEgvZE16RU9aa3YyTGY5aDlDdERIdUVDaEhK?=
 =?utf-8?B?SlM3QkNoWEliSUlZZzVTd1dyNVI1dkQ2ckFoS3pSVXpZRFhuZmx2a3U2bEJy?=
 =?utf-8?B?SGI0YXBGUTlIeFVmVEZyalhlQ204MHZNeWpGb05WM0RCOEI2WE1XRFdYWlZC?=
 =?utf-8?B?cnozeXRtREhmNGthaXdRVDFrSTF4TkdEWEFXenN6SnZEWVpzM0QvZTRrYU1w?=
 =?utf-8?B?b3pabXlUa2poeHJMbG1uejJ6enZma0tLWVpQb3o3RmsvVXNiK05mNXZVdmRJ?=
 =?utf-8?B?bSs2ZVdjQTdFU01BeUh5MmRmZnhOMDBXVUU5T05sbUc4ZjJRemRndzRoem01?=
 =?utf-8?B?QVVBc1JKUForSWdrSkp3WGZ5RjNWanZMZXErb3orNmhnRVJVOWp6aXVnTmM1?=
 =?utf-8?B?dGtMbmdOSmZhaTNxcG51UGdsZ1JLUTBTM3Zsa2QzT1g0dUUvUnBKcjMyTUFU?=
 =?utf-8?B?T0JEajh1Rnc4RFZLSEFtKzVaTHRqQWVMR2gvMENKbTRIdHB1L1lXdlE0aUQ3?=
 =?utf-8?B?elQydXQ4bTl6NUg1VTdzRjFZdGtzb0lDQkNndUx5d3BwQkFLdXVqY2RvYVNS?=
 =?utf-8?B?ZlV2ZkU5Yis3ODVjUThrbENjWERZZlhsakphVDlKS1JZeGxGcjZrMVVLZlZB?=
 =?utf-8?B?NHV3dHJFVWhzUk5Tc1J6SEp2SGw1TWZjM1JBTFNPR3JwdG1PSkZWVVhJTGNH?=
 =?utf-8?B?RXlndVA2Sk5YZXl4TTRxNGxyV3BwUG1yL2d6VFFHRmRPUHBrNTZMVmU2WnN6?=
 =?utf-8?B?N3g4RzB0THN5c3F5eUZuVHU5U2g2R0lDSTJsemV0UURWZStQMDJYa3BpY1B1?=
 =?utf-8?B?WDhycU9QS3g3UmVwcWI3OTBlQ3JUWVBIdU5aTlNrUEZkNGNCdCtLWjZuc2pk?=
 =?utf-8?B?OFlsck5rVjVDSENpRytVMnNWVmtRckZGOEZtL2gzbFdna2pHRHc4WDc4Uzdm?=
 =?utf-8?B?c1EyaVJKQ0t5cWMxUkppZFlScm9vakpEOTRwUVhBRkR0MzR0Vk53UytjUTBm?=
 =?utf-8?B?NTFpUDgyZWxNYUlvQ2xVZ1RoZVM1NEpWd3gxY3JoN3dHNm1JMkxWdVFjdzdN?=
 =?utf-8?B?OUFUZXNibUZWYkI5VWZhMWloU3ZNNkJJd3FkaHJRNkd1SG1uVGE5SUZveVMv?=
 =?utf-8?B?VDk3MmtqVFRGL054NUNZUDRKWFBTbHRHSjlaS1BWeE9EdW1Ed1FlQUdCS1Jr?=
 =?utf-8?B?clhWMGRRSzhEbTh2STc0dGI5NUtBazJITStHNGFlNjVWbk42K2hEcm91OEsv?=
 =?utf-8?B?eXAwNXdUMldOamVNN0RMSXVMdXNOZVRXQVFqWlNxbE1WbzZxSno5aEVZZkJ4?=
 =?utf-8?B?VWNqc2paQjdoN0YwRHdna200dGg5aVlrL2I4bFEwN3BvOUtBRVZmOEV6emVl?=
 =?utf-8?B?aE5WeGdxSnZsRmJWdm1yZmFXNitQa3RsbkhmZW1kNS9ZVUNTcXlnOU5WQlM1?=
 =?utf-8?B?T2drL2M4WTVUNXZ6eFA5cGpKT3FxVkFmMHJ6cENZZGxMTUhUZ3BuQU5aV21Q?=
 =?utf-8?B?Y2cxWHBSL2syTEpSdHZkY242dHBwNU9EbHFiYXFiNzBjZVJmaVNtbW9HUWtX?=
 =?utf-8?B?MlZIbzNvY2FtRDc4UGwyR1B5Z0xVM3BYUVNCWjlJVWY1NVcwcFRxYWhUMDFl?=
 =?utf-8?B?dHhvNVpxVThZK0x5dmxqUzJ5S2NIU3VhamdxYlQvQlBsMGIwNmZMait5dzl1?=
 =?utf-8?B?bGlNd3kxdXNjekZRbzllZkVHKy9SWnpVTlMrN3hWUXZLYnluL24wZFE4TW9w?=
 =?utf-8?B?OGxnalpSdlMrOGtTTVBGZFFQWmhCRE1FNGxhNWFPcXIyaU9lbThmSGZvQkNY?=
 =?utf-8?B?RlNRcURVUzRvSG5ERjE5aDNYdWpHUVlKUUJsL0QzU0MvZWhrMVhXcmdXS0Q2?=
 =?utf-8?B?RktFbXF6aXg5SzBZVnIvNENYS0NrK2tReXVoY0JWV2JHa3cvd2NlNVdYM3BI?=
 =?utf-8?B?Skw5R1EwalRUMlQ1Q0hnY0FyMXpZZEdvTnlrMWVoOHowOENJdDFJcHlraDdu?=
 =?utf-8?B?RjZNMVRPb1dFYTJoN3BxMytDd1BCRlB3RXlGb1hrYW9EYTNTaUgxWnNNc29Q?=
 =?utf-8?B?U042MXZvL253cjVoWWVpMXRmbEMwWUxQUDlVdmJGZlNqd0x2N2MyNEEwVlVJ?=
 =?utf-8?Q?ZTh9B26y6W4ChXkbpoI0SnQVm?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdd055b9-f54e-4965-37ff-08dbf0be1440
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 09:32:17.9909
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uW4QtmFcaXHObg25dKWHbY0rYtSTFvBPNYu1JjK1WLTtBW27wikk2CdRzXivP9XH+qzVhDTjU94TkAwJrh0ZdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4818
X-Proofpoint-GUID: 7KcrwHKOF-cwq8AmvjGeMUIru5tqPNkw
X-Proofpoint-ORIG-GUID: 7KcrwHKOF-cwq8AmvjGeMUIru5tqPNkw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 adultscore=0 phishscore=0 priorityscore=1501 clxscore=1011 malwarescore=0
 bulkscore=0 impostorscore=0 mlxlogscore=776 suspectscore=0 spamscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311060001 definitions=main-2311290070
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 3AT7tJMY007538
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Nov 2023 09:32:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61772

 From systemd's source codes (src/oom/oomd-manager.h):
/* Take action if 10s of memory pressure > 60 for more than 30s. We use=20
the "full" value from PSI so this is the
 =C2=A0* percentage of time all tasks were delayed (i.e. unproductive).
 =C2=A0* Generally 60 or higher might be acceptable for something like=20
system.slice with no memory.high set; processes in
 =C2=A0* system.slice are assumed to be less latency sensitive. */
#define DEFAULT_MEM_PRESSURE_DURATION_USEC (30 * USEC_PER_SEC)
#define DEFAULT_MEM_PRESSURE_LIMIT_PERCENT 60
#define DEFAULT_SWAP_USED_LIMIT_PERCENT 90

So I guess using something lower than 60% * 1,000,000 would be OK (e.g.,=20
200,000).

Regards,
Qi

On 11/29/23 17:21, Robert P. J. Day wrote:
>    a colleague is using Wind River Linux and is getting occasional OOM
> errors when taking advantage of maximum parallelism, so he took the
> quick way out and dialed things back using BB_NUMBER_THREADS and
> PARALLEL_MAKE.
>
>    however, i am aware of the bitbake variables
> BB_PRESSURE_MAX_{IO,CPU,MEMORY} and was wondering if there is a decent
> writeup on how to use, perhaps, BB_PRESSURE_MAX_MEMORY, to dynamically
> detect imminent OOM and adjust things. that is, how to calculate a
> sane value for that as i haven't yet dug into the values under
> /proc/pressure and how to interpret them?
>
>    i've seen mentions of combining the above with the "memstat"
> command, and other approaches. thoughts?
>
> rday
>
> p.s. is there a docs page that expands on this stuff?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61771): https://lists.yoctoproject.org/g/yocto/mess=
age/61771
> Mute This Topic: https://lists.yoctoproject.org/mt/102868689/7304865
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [Qi.Chen@eng.=
windriver.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>


