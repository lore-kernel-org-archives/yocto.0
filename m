Return-Path: <Qi.Chen@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EACE2CED618
	for <webhook@archiver.kernel.org>; Wed,  9 Oct 2024 07:06:47 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.10116.1728457602848604451
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Oct 2024 00:06:43 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=001212afd4=qi.chen@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4994eHjl015457;
	Wed, 9 Oct 2024 07:06:41 GMT
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2047.outbound.protection.outlook.com [104.47.55.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 422ve8v550-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 09 Oct 2024 07:06:41 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=joTaWvffMGW6Kb5pZ3PLkuzohA2AixvMahZUgZkJUC7wxWKvNSjJwbjJc2/ZWRFcvoYo5NP6LQPq3waVMSbAZ3iHpmxL4kYvYe3Temd9N37GxEhEcNFHFzBBClpBE2tvxIdn6Dy9c3CRRVcbZHx2uXLe5snjOnve0Umqe5Wq4N3fjNI+TWeUqKOFeNojr0ii432WA/ggZaAfJUCTIj3/9nVtNgM/lVgbgVEiytXIXg52AL7SqVTIwy/7rLE7igRcmwKBERaOw23Sz7O9TBfMwk3yKfs4jMv2fto60tgUJ8ONMmJd6ggNURHUvlwcMFTIpWfbCjfd8oW1c7K96zvOrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ab7XUSi+upFiRiBjFsbx7wZ2g8AtDDJrrClpZuF4Bas=;
 b=suCSg7dkBJ5avp57Jme6dtyPH00taiEpKHP6mdVxgZBepXy/lB9LCRyInvecvJKp9BVlnKzGbLhxrpCSo0qdb5sPATjCgHL+rSRKTZeH1m1N+v0zke1dEkVcoW3QrU/YWAPoZcCuZu7zqKaN11fHH7xcMB5t+ghUAB60mOigLnjVW5Y8gV4LAdOoieMzWgv1ghDetaskN7B4CXnM/rbaXM1GKEosY7neCxtIsrkzY2h8D3Co6IQeVngwSWq4CRPXs75E8Gi0zq/Kx8hIe74rd7UM73O/Lr2wexP+8Wz34yk2zKr/Ty6zwId+SikCT677Ai8Yk2/oBgpNLNGmkqJJSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
 by DS7PR11MB6197.namprd11.prod.outlook.com (2603:10b6:8:9b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.16; Wed, 9 Oct
 2024 07:06:37 +0000
Received: from CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093]) by CO6PR11MB5602.namprd11.prod.outlook.com
 ([fe80::a7e3:721d:9cec:6093%7]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 07:06:37 +0000
Content-Type: multipart/alternative;
 boundary="------------3eIHYdCGkBDMSLJXlnCZTUge"
Message-ID: <5fb2e2f1-5a68-424b-91d4-a9d80d9eb919@windriver.com>
Date: Wed, 9 Oct 2024 15:06:32 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] How I can update the Yocto SDK incrementally/partially?
To: salahaldeen.altous@yahoo.com, yocto@lists.yoctoproject.org
References: <2fc61685-dd91-405e-8ea4-56d1ecf58c02@windriver.com>
 <13199.1728456508530107727@lists.yoctoproject.org>
Content-Language: en-US
From: ChenQi <Qi.Chen@windriver.com>
In-Reply-To: <13199.1728456508530107727@lists.yoctoproject.org>
X-ClientProxiedBy: TYAPR01CA0022.jpnprd01.prod.outlook.com (2603:1096:404::34)
 To CO6PR11MB5602.namprd11.prod.outlook.com (2603:10b6:303:13a::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO6PR11MB5602:EE_|DS7PR11MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: 0aed4476-c9a9-4f39-d121-08dce830eaa0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?dUQybzRzS0FHbHZlZTB6SDNNcnBvUmpTZnpXSXFYL0xhMFgvUTFrVnl2Q1Q3?=
 =?utf-8?B?M2RFb3hTVk1JcnIwSnkzWVA3SHdSTDFqaGkxUkp5a0FsRzkwdmlHSUFVN1Zj?=
 =?utf-8?B?VDVXKzVOcU9pNW96dVRzSDh1bGozeWx2Rmd1eU4rRGJEWFlvTXU2Q1pMOFZS?=
 =?utf-8?B?WDJrNDZjcW1CbndYbmZCa2s1OENGazNJUURiSGU2RzQyamZGR0E5QU9qaWFu?=
 =?utf-8?B?RUJmQWllZFd0MlgzY0ZxNGdUSmRvcS93V2pFUm80SVBId1RWNmpLd3JxMSth?=
 =?utf-8?B?S1o2V1NGZWpFYkRkcElZMkZQWk16Zkp6TlR3M2VNYk5Zai9TT25vQ05ycm9S?=
 =?utf-8?B?QmJ6a1R4SWNiVUF2ajl0M2FtWEpEWjUvbERBcWordHZMamVIaE9xSHRrUU4w?=
 =?utf-8?B?Z1BqbkRCVVdHYnlEbHNteEZYUnBlUTRuNVFpdzcrVFhCUldzQVJwcG1JZXlJ?=
 =?utf-8?B?QVlha2tERkQrN1FzNTY5aEcwTXJpeTNKSVVFYnNnRkhkSXM1QkhTWjlkYWJU?=
 =?utf-8?B?bkxScE1WT0JYUitrZGlBZVZFbDdEV0RoVlR4K1hNSzRjUHZEb2lSSE1UaVlV?=
 =?utf-8?B?QzFXNEs5VVFUK1ZzcXBtb1QzVkVDUENVK2RqL1d0TWZ4VDBXdjFXeDlhdGJ1?=
 =?utf-8?B?TCt6aXphM0ptRmE2bEJoRUNQeDZtVXc2a0dEalV5OVIzeDFzcEZKdWlXNEdk?=
 =?utf-8?B?U3FMZDFtOSs4T2JjQjJUK1hjcmRveHBLZnMxbldFWVhUNGxkR1hjdU1LSEtF?=
 =?utf-8?B?YndDT2tlUFFsaXFkL1FPSVVTbjlLcEg5UWg2bDllbTBVOURJS0JrWUdEZEE3?=
 =?utf-8?B?Zm9GNFltb0pNWmpzT1owRFpqaUVIWmxrR1oxUEdpZkRPY2JpY0JOa3ExWlZy?=
 =?utf-8?B?SytkOWpGNzhBVjlGRk1UNitUbmpsOUNiQzNXRUxSSGM1RnBoRmhrOTFXVmRI?=
 =?utf-8?B?eFJBNW12VXlmVDNoTmtXOW0zSE1VL0YyQlpHWUptL1pUSkJBS3MwUG5GS0Vn?=
 =?utf-8?B?L2FKcUlhZ0MrOGJ5NnJCYm5EaFpsNEt1eElMZTN5dEh4ejVMZngrNkpGN1c3?=
 =?utf-8?B?cE1OOGFxTTZOYU9VbWJTNGdyU3JrT2VnM0YwNk13SFRUOEZPRk4xelNqTXNO?=
 =?utf-8?B?V2FPNmp2VHJ3b0MwMGRoS0ZSRVRSQzBWb0liT2R3eDRXQTFKcjZDTHJpU1dw?=
 =?utf-8?B?TUZCYk40eXgzenYvYXhqa29GbmV1aVZ4d20wNkU1ZzBGV2F5cUtaQXpNbU1s?=
 =?utf-8?B?L01qK1RrenFVNHg3VTJBdWkzOU5JcVVRclIzYkhaek5uRU5LM1MvNkFYaGpK?=
 =?utf-8?B?YVNMenYzSSszRExsd0diVEtxcjVReG9yTUdSRFhuaWcvTWNpa0YxMWxvQVhC?=
 =?utf-8?B?WG0xQ2JvNUtUV2lRcnNkUjNxeUVSU2tjRUNnZ0hoaFl1SzRpMk9mRUpEYndP?=
 =?utf-8?B?SXAzK0kxcWUvTyswb3JuWSsxS2hKUWE5WkNnekJUUE54Sms5T25mblJaYitH?=
 =?utf-8?B?b0tqZXZ1enB2YmxyQ1VRbmIyUFdNRC9pSFkvT3JJYjdSNFVabnBXVkJlbVU4?=
 =?utf-8?B?S3NHL2E4NjJYT0I5RThjb1BOeVhuelFBY3dMNEY2RDdvSk9OdnBQQUNjWTZB?=
 =?utf-8?B?clB1UktvUVoxek0wTXk5U1MwZnE4M05tM1RqKzh6ZFhWVUo0eWJ3VlZ5TU5M?=
 =?utf-8?B?UktRNFZVaTJUSEdWTDRsOFZMR0VEUGxBVVJQaE9kdWxUa2NEZUlIU1R3PT0=?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR11MB5602.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?MnBhZU0vU2JsQmdManJlbVN3YUhsT3lwQUxiMU5QbFVHUDBOZWhnNHV3bEYx?=
 =?utf-8?B?WmpuUjBMNklaTkh0VTFENjhESWlaM2NPTUhLTHYrRFJyRVp4bHpKdDlMSFJk?=
 =?utf-8?B?dWp0bmJIQnZIb0Y1ZXk1RTZucGE2MU1jK2p4ZEF0KzUrUDFiQzdsNnBVNW9p?=
 =?utf-8?B?TTQzTXU2aGFoVEpnUkFLZVZZL2VhZ0RUb09zZHRWYlFZVkx2cW5SQSs5ZXpO?=
 =?utf-8?B?WDA2THcvVUxQc3g3WHBIMm95RWhPakFXVksrdkZSaXRZSVdqdzFWSzQ1QTY3?=
 =?utf-8?B?S1M3b1pYN1JTcHNxS1JGS0txa2RmWEpTSFNWR3BraGVDSTV2R3hxdnJZSVNO?=
 =?utf-8?B?NVpYTFdPOFhpT3lUZFd0cXRCb2hkK0FscTJxOWNiVGpUQ25TYzF6ZTdoNGZX?=
 =?utf-8?B?OGlXOExhMG5UNWFPZXZoeEF5S2RlUUpmME82RXZXeFRjN2h0OG9zVCtpS3p2?=
 =?utf-8?B?VnA5YmExbW1kTVhjUjZYQmtUYnNrckdDb0NGVDBScmlpODdXeVkvK0lNaklV?=
 =?utf-8?B?NGRJTENtaHlweXc5QjdoRmlrWVJyK0d0aGQzeUNLc1Z5N0ZzakljMEp1WXps?=
 =?utf-8?B?WFJkUWNIU25VaHlSK3A0bzFDSDVNUExhM1dsMG1EVXozanBvUS9FQ1lTZ0Rk?=
 =?utf-8?B?azFTVmd1RU1qSllIUzJmWTR5QS9EZHd1S040TGZueUd1VU1EZE4ydWl4ZG1k?=
 =?utf-8?B?K3lvdVNNMUZjU3BBR0tVMjhvYkZGRGZGZUhJOFJ3dTBuTXVhQmxsRGJKV3Rj?=
 =?utf-8?B?cDdMZmZTOTMxUFl4bUd6dTFJTjg2OTZtQTZqRUp6VmgrVXlHVDVQeXh1aFFK?=
 =?utf-8?B?TE1jOFhac280WE9wT0I5TXBpdXVvNjg3N0J5dXppYlp5ZlBnd1hZeVYyL2l6?=
 =?utf-8?B?aUdISlJFUzRqcjVkNUZvd0xRTGhPZFBMK0dKQUgvcm43UFQ2MjQxTmpqbVNM?=
 =?utf-8?B?SXpUOWFKeVpobGdEenNETGsrTDJHN21SY3VJUTNRYXl1S09SZVFueGJXalcy?=
 =?utf-8?B?UnNwOTBkNnBlcEhseFI3TGxGVUtlN3ozMDNFbmMvOHM2SnZ2bThYTU84TFY3?=
 =?utf-8?B?elRTZFFWcW42SVVaeVFEKytWZ2dJSTJ2azZzaHQrYmQ0dUptRElCWEN1VHdR?=
 =?utf-8?B?anpPczlMT3E5cTRFV012T1JwWmhLWkRsTCs2K0JyTXh3NnA3NDZRc1ZLQVQ3?=
 =?utf-8?B?L29aeWxndDBoWDdGcUFLMmFDVVF0alY4Vy8xb1QrazB0dDZCcEFrZ1pUU2lP?=
 =?utf-8?B?OWZhQUMyT2MzNUNEbytLQ2p5WHAvclhOVStWb3AwbDJPTXYwV2cyYXg4Wk1q?=
 =?utf-8?B?SllqYy9ka2tIYUNsZTlNNHFkZW4yWHhDUExWU21zbnA3TitDYis3T0Rzc29V?=
 =?utf-8?B?T3NzRmNmdnVTRlQ2VStlRjZpbXdQOUY0alI2dEpuYXl4MHI2Z1o5djF5cWta?=
 =?utf-8?B?Q28waklMSjBuYVpMdFd5ek0xNlJnSTZ2YTZHd0ljYTg3YUlTQldNUDgxZ2Mx?=
 =?utf-8?B?UmprRjFFR2VzOXlNL3Q1VzU2Z1U1OTVoWkJXZ1FkRm5VWXRKZDJ3N1paV0t2?=
 =?utf-8?B?MFcrZXVQQUt3LytMbjROcnF1ZkVoQ3F4L0JOTWJ3OUJGNkxsVHZiV1VoaU1o?=
 =?utf-8?B?aWZEeVVvbUU5NXFJSU5mT01Bdkh4Rm0xQW0vWHlLbjIxV3F6MitUNTFIeExK?=
 =?utf-8?B?bHkxUllzdUQzc0lLM05qT2xHOVBTcUJhVlRLZkIwc0xkNzU4ZXUzWFNiUjJx?=
 =?utf-8?B?RFBXSVRYM3ZoeHl5SmJNcTFBMk1uSUVLQm0vTUhvS050TkZmZWpzbC9lVHJi?=
 =?utf-8?B?ek9sMVg0T3JzUE5TZnI2R0lpbE10UkZWOUQ3QzdKQ0dpeTM5VU9LMk1aS045?=
 =?utf-8?B?WW0vOWdwVnZ4QXovNzh6TE1sM1BZREJoajgrTVVVb0RXTGxlMGpRT0czY0Iz?=
 =?utf-8?B?QTFiOExPTkpncWVjcnBVTG9SeVdlWDJMckc3Rk93T3VZN0NheTZ6UytHYXlY?=
 =?utf-8?B?aXVlVDRKN3R2VnZDNE0wYm1LZzJ0cVdyM1ZqTmFhU29GeE12SDF5Zlk2cmJn?=
 =?utf-8?B?N245aXZidVNiNG4wVy9FcjZCUkNQOVFMMkZhNlNoRzYvU1MvVlF1N1lJaFJ5?=
 =?utf-8?Q?pr1/P8vAewnL7ud+mWi0hTwIi?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0aed4476-c9a9-4f39-d121-08dce830eaa0
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5602.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2024 07:06:37.3403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iXMWMM7qg7g8CkmvcucTEjxFftt9op0w+E3jnwdo33OX9TvrzZSC/nbtxXJrZn4gSd7bv9G2PTiNDAWUxymxOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6197
X-Authority-Analysis: v=2.4 cv=CPp4XgrD c=1 sm=1 tr=0 ts=67062b81 cx=c_pps a=2/f09Pi2ycfuKzF0xiDRrg==:117 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19 a=xqWC_Br6kY4A:10 a=DAUX931o1VcA:10 a=bRTqI5nwn0kA:10 a=CjxXgO3LAAAA:8 a=iGHA9ds3AAAA:8 a=AocWFqeb0f7UP2LcQjoA:9
 a=QEXdDO2ut3YA:10 a=DcS3f9wDLN6JP3Sg1dwA:9 a=jR660wRJkt7tgQgI:21 a=_W_S_7VecoQA:10 a=lqcHg5cX4UMA:10 a=nM-MV4yxpKKO9kiQg6Ot:22
X-Proofpoint-ORIG-GUID: RwBRyC3oRXw8_PIGuQ4_lN3FdgmLCu_y
X-Proofpoint-GUID: RwBRyC3oRXw8_PIGuQ4_lN3FdgmLCu_y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-09_05,2024-10-08_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 adultscore=0
 spamscore=0 lowpriorityscore=0 mlxlogscore=966 bulkscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 impostorscore=0
 suspectscore=0 phishscore=0 classifier=spam authscore=0 adjust=0
 reason=mlx scancount=1 engine=8.21.0-2409260000
 definitions=main-2410090046
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Oct 2024 07:06:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63981

--------------3eIHYdCGkBDMSLJXlnCZTUge
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

For things to work, the package manager will need to have some certain 
abilities. For example, it can accept a parameter which points to the 
database it uses (e.g., --dbpath). I think RPM/dnf have all the ability 
to make things work. I'm not familiar with opkg though. Even with 
RPM/dnf, updating SDK from binary package feeds still needs some tool 
which invokes rpm/dnf, because you'll need to do some relocation or some 
mapping or creating some temp root directory, etc, in that tool.

Regards,

Qi


On 10/9/24 14:48, salahaldeen.altous@yahoo.com via 
Lists.Yoctoproject.Org wrote:
> Hi Qi,
>
> On Tue, Oct 8, 2024 at 07:50 PM, Chen Qi wrote:
>
>     If I understand it correctly, you want to update your SDK from some
>     binary package feeds. I'd say it's possible, because it's basically
>     about installing packages into some directory and doing some
>     relocation,
>     but you'll need to write some tool to do the update work and place
>     that
>     tool in your SDK. There's no official tool in Yocto as far as I know.
>     Not sure if someone else has written such a tool.
>
> this is also my thought, and I was think to use opkg after sourcing 
> the sdk script.
> But was not working
>
> source path/to/sdk/environment-setup-aarch64-oe-linux
> opkg list
> * file_mkdir_hier: Cannot create directory 
> `//usr/local/oe-sdk-hardcoded-buildpath': Permission denied.
>
> I am missing something here!!
>
> Regards,
> Salahaldeen
>
>
>     Regards,
>     Qi
>
>     On 10/8/24 16:28, salahaldeen.altous@yahoo.com via
>     lists.yoctoproject.org wrote:
>
>         Hi All,
>
>         I have the need to update the yocto SDK incrementally without
>         the need
>         to rebuild it every time from scratch.
>         I have the package management ipk enabled in my configuration.
>
>         can I use opkg install after sourcing the SDK script? which
>         requirement I need to get it running?
>         updating the rootfs on the target is working fine, but
>         updating the
>         SDK is not working
>
>         Regards,
>         Salahaldeen
>

--------------3eIHYdCGkBDMSLJXlnCZTUge
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>For things to work, the package manager will need to have some
      certain abilities. For example, it can accept a parameter which
      points to the database it uses (e.g., --dbpath). I think RPM/dnf
      have all the ability to make things work. I'm not familiar with
      opkg though. Even with RPM/dnf, updating SDK from binary package
      feeds still needs some tool which invokes rpm/dnf, because you'll
      need to do some relocation or some mapping or creating some temp
      root directory, etc, in that tool.<br>
    </p>
    <p>Regards,</p>
    <p>Qi<br>
    </p>
    <div class="moz-cite-prefix"><br>
    </div>
    <div class="moz-cite-prefix">On 10/9/24 14:48,
      <a class="moz-txt-link-abbreviated" href="mailto:salahaldeen.altous@yahoo.com">salahaldeen.altous@yahoo.com</a> via Lists.Yoctoproject.Org wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:13199.1728456508530107727@lists.yoctoproject.org">
      
      <div>Hi Qi,<br>
        <br>
        On Tue, Oct 8, 2024 at 07:50 PM, Chen Qi wrote:</div>
      <div>
        <blockquote>If I understand it correctly, you want to update
          your SDK from some <br>
          binary package feeds. I'd say it's possible, because it's
          basically <br>
          about installing packages into some directory and doing some
          relocation, <br>
          but you'll need to write some tool to do the update work and
          place that <br>
          tool in your SDK. There's no official tool in Yocto as far as
          I know. <br>
          Not sure if someone else has written such a tool.</blockquote>
        this is also my thought, and I was think to use opkg after
        sourcing the sdk script.<br>
        But was not working<br>
        <br>
        source path/to/sdk/environment-setup-aarch64-oe-linux<br>
        opkg list<br>
        <span class="white-space-pre"> </span>* file_mkdir_hier: Cannot
        create directory `//usr/local/oe-sdk-hardcoded-buildpath':
        Permission denied.<br>
        <br>
        I am missing something here!! <br>
        <br>
        Regards,<br>
        Salahaldeen<br>
        <br>
        <blockquote><br>
          Regards,<br>
          Qi<br>
          <br>
          On 10/8/24 16:28, <a class="moz-txt-link-abbreviated" href="mailto:salahaldeen.altous@yahoo.com">salahaldeen.altous@yahoo.com</a> via <br>
          lists.yoctoproject.org wrote:<br>
          <blockquote>Hi All,<br>
            <br>
            I have the need to update the yocto SDK incrementally
            without the need <br>
            to rebuild it every time from scratch.<br>
            I have the package management ipk enabled in my
            configuration.<br>
            <br>
            can I use opkg install after sourcing the SDK script? which
            <br>
            requirement I need to get it running?<br>
            updating the rootfs on the target is working fine, but
            updating the <br>
            SDK is not working<br>
            <br>
            Regards,<br>
            Salahaldeen<br>
            <br>
          </blockquote>
        </blockquote>
      </div>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------3eIHYdCGkBDMSLJXlnCZTUge--

