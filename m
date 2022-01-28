Return-Path: <randy.macleod@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B7E6C433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 17:02:11 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.1044.1643389328605577508
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 09:02:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=VOzEuW4E;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=9027d8ef58=randy.macleod@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 20SFuSoN031583;
	Fri, 28 Jan 2022 17:02:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=content-type :
 message-id : date : subject : to : references : from : in-reply-to :
 mime-version; s=PPS06212021;
 bh=ajxXYAYlEEuALL006YD4bVEkC+VbX3YyIqPnm5laghE=;
 b=VOzEuW4ESL5MQkH+EsMjEljp/7K3r63x8t2TEsqB+O835F9QIcxKKSpIkHHlkPL/5Myd
 /rwbuAQLjKOlcjoXtsleBHa3q5cF1EhJ8t++HpbikMzSwrWyTPxrEw9ZD2uX2+Qnxa7E
 zehUd2qKHqw1C6y9q7JwwOh4//WVYYCTDNk4Itn8Evqwf9Zk8jIS/6wgcONRPljO4pDY
 uaCvuv1+nsg1bv5dr5wmY5nKcEERz8jPUZDg23fWSgTkY8Rt2NA6JfJUhFSdA6SDV3A1
 824h3sKOhTJQsalYuwyNpjesmP5tokSw/ZVJVVrayJ6mbWlLpj+Te0pjL3rlzUJUXrqa Cw==
Received: from nam04-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam08lp2047.outbound.protection.outlook.com [104.47.73.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3du71d1v2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 28 Jan 2022 17:02:06 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1M5OcMQOwXBh62VqIDV0Hy5LFp8a9Ac1hNpgR8y8e5rK9J/C4gI++W7nBRZ8LNHSkbn+Rr/XTeaeYOSEXTqDJW89qN1hs/2jYA1kI6REsRhMy169KccqQwW9XhZHX/322yG0xbCN+NusqEWOcYZ5r6hM/pBRsAfXEaow30jXBihps9eNFt+jvC00HrMrP1E45ituUafyp2jBLgXC+IQCrp521B34Q4nEKht96tjD7z3WdW0mDsJa/OOWzectf6TwVHnR59/BByXD811QU8X/6ZM1cscHYSJ2eWed7HDA/zsYUXLYcFMfmC42dxY6xXlgVWEf8mz671FqivkBm8n3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ajxXYAYlEEuALL006YD4bVEkC+VbX3YyIqPnm5laghE=;
 b=glZCk7uT5l90t4QvG5uYcwABCQs11ro/AALM9tmGas3x7ET1CNFMMvEM65LIKNuDFn2R5jbm7J51UeHkb5ms8Yzw2vjTtJ1GLDNuK92FlDCUz7dGbEl6cuWMRtAzwrULBoiwBGosRyqzUIAAk/NCH6XTrB1ZD5KxZIBDb3e91RnkynchZl99Oe839lezlCSoOeqjXaVyBGFzJ4ZBpD9ChYbR2FjH6jN1XSHXczjoVIakIGzcyakGc3uGUeugZ49mn3Emz2pxNRnoiDbuRXIv5VgeiDeh/mji3wKfPGnYjXgauUWGrQW1xqaaqy1n4tsibC98h79aUsXAC49dblrzWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by MW3PR11MB4618.namprd11.prod.outlook.com (2603:10b6:303:5f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Fri, 28 Jan
 2022 17:02:04 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::f4ad:a867:7f2:8958%6]) with mapi id 15.20.4930.015; Fri, 28 Jan 2022
 17:02:04 +0000
Content-Type: multipart/alternative;
 boundary="------------HiRC0qml0Squ6TdsE8gX9S4t"
Message-ID: <0c98c49c-c869-ce0a-b4b1-38e48ab7edca@windriver.com>
Date: Fri, 28 Jan 2022 12:02:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [yocto] Custom SDK generation from YoctoSDK #sdk
Content-Language: en-CA
To: Praveen <praveen44com@gmail.com>, yocto@lists.yoctoproject.org
References: <stmw.1643047465432853711.lKwh@lists.yoctoproject.org>
From: Randy MacLeod <randy.macleod@windriver.com>
In-Reply-To: <stmw.1643047465432853711.lKwh@lists.yoctoproject.org>
X-ClientProxiedBy: BYAPR02CA0029.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::42) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 53c6f729-e8fb-453f-1ad4-08d9e27fe8b3
X-MS-TrafficTypeDiagnostic: MW3PR11MB4618:EE_
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4618198FC2C1E722F679EC6FF8229@MW3PR11MB4618.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+eG01hfxUv5AbqUfaLDp2VSnzCLAO8pD2Bo+Vm3FuV/V+p5grzWcu60o2ygw46X64MsGJJmBTR3eqGFJILh6fFrJnhfvRA2UydiRwJPELb5KHkMfQu1kuCgBgx54Boy1CrwQacTwXHkdBTFe60xO9KLKGAhH4iENonBgQKCk7V9odyEnuR0++mS2chi01Gbwu5x+j6bFLRn2ZnP3Ss6BL1v0dmwFrjDKMGsYXm62cl7SXBQyooiXwFyo2ERmUUyEObDwP17JVB88PrCsrXrBy9qnKoWkxlfpe5jCYM2afm+p+72CH2uqB9AQzQat7K5AUOq3TOkqIy+0MZiDuTGt0qFGqSAEdh9Pnf73jKOPsbzKt9KRJofuAH1mz8l3eAl1LALvYe6qjwqz+uw2aA7d2V3ENQ6PjL4m5N/fTLA/cNSMa2Pgdth8MBsmCaWsJaN6jnsF8Xfne00DLJeyOdkWdz7w69uLei7e6+MUVDyk0/YtRJpGa/qV9qt1w6bEjpHEbQiYQcqNg7erqc3Sl8Re9eqlwC2xkGki4tW0LndCjGSnh6reretAM83RSOWezDNWGcg5vb0S/yKeFZ0aLI3f0FFYLY5dFSmhyAm3jbxUKiYXkNic5JKx+UJASWpLLWnG4FElsL8UI+FcJN/iK8IY1iicTuO3gqmHwu96s8aDK4W1f0/wDQhF1uO965qE9Qglg5pPdDeE6J/VnipYLHJC6efaq7PdbH49OSGkedvdaBs/mCHSgLe7R2l2w9iTHbFZ+VwzmeDheXbVOnoYIdIjL26ZvsUgtP6/2EAxLj51jzznGcSW7zOKpd6KBme2/87EKmpS3QEkFxgLw2mnO9gM164n0fUBzEs8GOryFsiXW9Sym/8FSelfXOD33rWCLsIX8GWnRfjEqVkFD/mIVJa44w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(52116002)(6666004)(186003)(33964004)(6506007)(166002)(2616005)(53546011)(26005)(83380400001)(6512007)(38100700002)(38350700002)(66946007)(508600001)(8676002)(8936002)(66476007)(5660300002)(66556008)(31686004)(2906002)(86362001)(31696002)(316002)(966005)(6486002)(36756003)(45980500001)(43740500002)(20210929001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVkyYmlkclJTcGcrb21lZ1l3M0I1SUNZTFpmamhjZ0JEQ2lMK2tVR2RjMGlr?=
 =?utf-8?B?OGdvRExhTFV6emRTQ0FFOCtjUHNrN3dCdHV1bEh6MjA0RHdHUFpqME83dzJM?=
 =?utf-8?B?cjlLeXd6NS91Y2NkSlBLUjBxZTVOTW9SWWpJam1ic2JYVFFOZklOemJZZS9n?=
 =?utf-8?B?bVNSZUNuU0J3ZDF1bzJOa2ZqaldxS0xIS2taamxoWFpiaUJIeUcvQ3NsNS9s?=
 =?utf-8?B?VXBOTWpqclJIZ3g4MStlUzFheUFCY1JwYUwzZ1VCSjBVWDVDS0RXWnFseGox?=
 =?utf-8?B?R3p2OC9SUWVsd0hUYzhFVWFwaW5uNHVJbE10UXJlSE9Cczhud0MxS0NsMjgx?=
 =?utf-8?B?aS9mMGJzU1dQTDZtTzB2KzB0QjN2QVgzdGJKa04wYWFMVkFnanlpaTF1emFI?=
 =?utf-8?B?LzZ0VEc5RzYvZmZDUXJESkp6bFpFQ2ZyRjFUM2dLQnhIaXRBT1B0My9Geks4?=
 =?utf-8?B?dDczZS9uNW9jemRrUXJoOTFPbDI3eEtkdzYwMkF2QTdtSDhhaXVjMSs1b3dZ?=
 =?utf-8?B?SjN0VFVCTWI3VEl3SHNQUG44bkFJVjFHbDJwWVlZVytnNUZ0L24zMmkwYVQ1?=
 =?utf-8?B?M2ZGVXlMZjJibjRUMHVBRDdRVXMzSm1pdS9MOG1URGloblRyZWZ6cjA3MVcy?=
 =?utf-8?B?cnlvYjdqKzltOEN3K2JmejZyc3FralJPL3R5alZ0aG9mQ2dGQUpXYU8yamFm?=
 =?utf-8?B?UWtMQXdmZWFvM2xpbFVFOUxWczBhUTZtZWkvWDN4ZnNHdUJWdXBZMGJJWkhh?=
 =?utf-8?B?b3l6aWtHdzlJNzBmbWlUYTJTVHoxUnJXeDRIRnJhVSs1Nk1acGJPMnRFYjBG?=
 =?utf-8?B?TGZxWTlLVDJmVXNxWktQbnpJODNtWHFjY0xPbEw1NlVxRS95dFJuTjlBUXMr?=
 =?utf-8?B?VXNWVmUraE5LRDR6RG5sZEtxQ3lwQWJ6VzlmYkhDbnpTQlBLenlPZXh5bHRO?=
 =?utf-8?B?YkFUdi9ITGNHUVozbktGdXZNVkFVS2ExMmFnSlB2MGl0L2tDdGV0YUhvTkR2?=
 =?utf-8?B?RWJrTVJjRjNMcG5PR3Z2aFh3c0VYZkExMEFWc3N6VjZOd0JXVzZKMmIwRmxU?=
 =?utf-8?B?WGlNQU0waytEaGc1QkdWeXAxWEZ5SUdUMDcwMjhGNlJRWWVacDdTQ3ljanlV?=
 =?utf-8?B?MGwwMHlDdFF1RVRwMDJQUXNibDNHVXdON0tyQVdKcVpTRjNQaGo2N1hKN0Jz?=
 =?utf-8?B?YlpOTW5pNS9jdnY1UEZDdGQySnhYOFNGUlQ0eXhhWVJsRGZVM0o1SU8xWERG?=
 =?utf-8?B?blFzNTBkc29MdGRwQ2Z1WjBTL1JUaFNpZTcvbTdQWFFmVEJXWGN2ZS9TMzlQ?=
 =?utf-8?B?QmQvdmFKa0tRcDY5cjdtWmlna1dkbFdROHhPanZ1NCtLYXBiK0hWZFU0Rk9j?=
 =?utf-8?B?a0l1V1RHQXIzN3RmRzFBYlpUanZxTExvMTJpeUM3ZWZDKzgyNjBNQVEyUCtG?=
 =?utf-8?B?L3o1WmJkaDRFUk5RLytpNlNUOXBzUURzMWRJRzlCaXVVMDlsOFBUemdNM3pW?=
 =?utf-8?B?d3BITlh1V0w2S0NIQ05aaFNkLzg2dlY3V2NBdkZvZ1FCaUducWhJakV4QTNH?=
 =?utf-8?B?R2NUQm5hSlF1R3QxRjdUN1hKSWk1RlZJakZOcGE5YzhLU3VKUFNRdy9WdVNr?=
 =?utf-8?B?VHRXT2hPMUQwakFzcVV6V0kwOVhCbVQxQzJRUm05cGwvYzZZUk1xY3dzZFlZ?=
 =?utf-8?B?RG4wWDVOR1pVU08zV3d1cUs1b1BHaWdTaFVkUjdoQ3dydTFaK2tBVG03dHRk?=
 =?utf-8?B?RXJDeUtSazdnczI0WHNlUXN4aWZ3RjVlUkdmdDZsdUZxbHVTbmtFT2k1R1Zo?=
 =?utf-8?B?Y1hZaHhTM1pzYlJaQmx5clRIaFlvaUMxb1R5Y1ovc3EzUW8rRDJrRmx0TU1I?=
 =?utf-8?B?UWZNYmV4N1J1aWFWUHFYSkVyVnVNT2VCd1ZWZW5rOWduL1JJcE4vZWJUQTJ2?=
 =?utf-8?B?enB2Y28wZmY2SGtCdmZOejArUU9IdkVRWG02MmozZzh0TDI2Yis0d29zVnM4?=
 =?utf-8?B?ZGFMWEJ1ZUNpWWNGdkVheHQ4SlhpZGMybW9ENE9YMDVMN3YyTXdyRGoyVGg5?=
 =?utf-8?B?eFl2V2Iwd0tDMnhsblBLQjdvWlFEZ0MxcnFwaVkxMmloWG9VYzI2anozM2U2?=
 =?utf-8?B?Q2pJUWd4VWFoMEEyVHVNR0JaS0dmQW9uWmFGUGZydlkzZ0dsbXB1dFFFMzdR?=
 =?utf-8?B?UUdONEtCemtlYTZVM1p1UW5MRnp0M1gxeW1JTStqWGErakludmxFTnM1d1JC?=
 =?utf-8?Q?QlktZIIWnat8y7wGX+Kwww54a7I6nVg65RvVm0OLa0=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 53c6f729-e8fb-453f-1ad4-08d9e27fe8b3
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2022 17:02:04.4911
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 qpF3ISaWXmUXWWeMcafO1HNgQtupGAEYab/hz+UzXjTrKAwkYmOqhondEEYSlElmTGb4H/52sBxewmerj6n1DApJU+kxfyEhO8fx4eGELhA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4618
X-Proofpoint-ORIG-GUID: 2MtXySx4i1qQqQLSvze-IYogCiqtGqBE
X-Proofpoint-GUID: 2MtXySx4i1qQqQLSvze-IYogCiqtGqBE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.816,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-28_05,2022-01-28_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxlogscore=735 mlxscore=0 phishscore=0 lowpriorityscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2201110000
 definitions=main-2201280104
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 17:02:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56011

--------------HiRC0qml0Squ6TdsE8gX9S4t
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-01-24 13:04, Praveen wrote:
> I am looking for Custom SDK with filtered Header files/libraries based 
> on some rules/approvals. It means not all files from YoctoSDK will be 
> packaged in the CustomSDK.
> What is the mechanism or approach where we can pull only those 
> approved header files & libraries from YoctoSDK and package as 
> Customized SDK tar?
> Is there a way we can fetch those approved header files from YOCTO SDK 
> and filter it?
>
> I am thinking like creating subset versioned module recipe and specify 
> those approved header files and package only those files. Is there any 
> better mechanism on packaging or filtering the SDK based on some rules 
> to filter some header files?
>
> Like for example in YoctoSDK, we have 2 modules moduleA (A1.h, 
> A2.h,A3.h and libA.so 
> <https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$>), 
> moduleB (B1.h, B2.h, B3.h and libB.so 
> <https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$>)
> Lets say A3.h & B3.h are not approved in my Custom SDK, then in final 
> Customer SDK we will only package
> moduleA (A1.h, A2.h and libA.so 
> <https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$>), 
> moduleB (B1.h, B2.h, and libB.so 
> <https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$>)
>
> I want to keep YoctoSDK without any filters, so that A3.h/B3.h can be 
> used for internal purposes without any issue.

Hi Praveen,

I'm not aware of anyone else doing that.

For libraries/recipes, you could just omit certain packages from the 
eSDK but you don't seem to want to do that.

What is your goal in filtering headers and libraries rather than say 
generating two SDKs:
one that is unrestricted and the other with limited APIs ?

../Randy

>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55956):https://lists.yoctoproject.org/g/yocto/message/55956
> Mute This Topic:https://lists.yoctoproject.org/mt/88653143/3616765
> Mute #sdk:https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk
> Group Owner:yocto+owner@lists.yoctoproject.org
> Unsubscribe:https://lists.yoctoproject.org/g/yocto/unsub  [randy.macleod@windriver.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

-- 
# Randy MacLeod
# Wind River Linux

--------------HiRC0qml0Squ6TdsE8gX9S4t
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 2022-01-24 13:04, Praveen wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:stmw.1643047465432853711.lKwh@lists.yoctoproject.org">
      
      <div dir="ltr">
        <div>I am looking for Custom SDK with filtered Header
          files/libraries based on some rules/approvals. It means not
          all files from YoctoSDK will be packaged in the CustomSDK.</div>
      </div>
      <div>&nbsp;</div>
      <div>What is the mechanism or approach where we can pull only
        those approved header files &amp; libraries from YoctoSDK and
        package as Customized SDK tar?</div>
      <div>&nbsp;</div>
      <div>Is there a way we can fetch those approved header files from
        YOCTO SDK and filter it?<br>
        <br>
        I am thinking like creating subset versioned module recipe and
        specify those approved header files and package only those
        files. Is there any better mechanism on packaging or filtering
        the SDK based on some rules to filter some header files?<br>
        <br>
        Like for example in YoctoSDK, we have 2 modules moduleA (A1.h,
        A2.h,A3.h and <a href="https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$" moz-do-not-send="true">libA.so</a>), moduleB <span style="color: #000000;"><span style="color: #888888;">(</span>B1.h,
          B2.h, B3.h and <a href="https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$" moz-do-not-send="true">libB.so</a>)</span><br>
        <span style="color: #000000;">Lets say A3.h &amp; B3.h are not
          approved in my Custom SDK, then in final Customer SDK we will
          only package </span><br>
        <span style="color: #000000;">moduleA (A1.h, A2.h and <a href="https://urldefense.com/v3/__http://libA.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nwfTBvYzQ$" moz-do-not-send="true">libA.so</a>), moduleB (B1.h, B2.h,
          and <a href="https://urldefense.com/v3/__http://libB.so__;!!AjveYdw8EvQ!NJIRn0lCb9eoyJygfXfowA7XvdWxDgtIrC7DDYfcN_EBy5g_VTxv7frpiLP-2nxZDrg-zw$" moz-do-not-send="true">libB.so</a>)</span><br>
        <span style="color: #888888;"><span style="color: #888888;"><br>
            <span style="color: #000000;">I want to keep YoctoSDK
              without any filters, so that A3.h/B3.h can be used for
              internal purposes without any issue.</span><br>
          </span></span></div>
    </blockquote>
    <p>Hi Praveen,<br>
    </p>
    <p>I'm not aware of anyone else doing that. <br>
    </p>
    <p>For libraries/recipes, you could just omit certain packages from
      the eSDK but you don't seem to want to do that. <br>
    </p>
    <p>What is your goal in filtering headers and libraries rather than
      say generating two SDKs:<br>
      one that is unrestricted and the other with limited APIs ?</p>
    <p>../Randy<br>
    </p>
    <blockquote type="cite" cite="mid:stmw.1643047465432853711.lKwh@lists.yoctoproject.org">
      <br>
      <fieldset class="moz-mime-attachment-header"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.
View/Reply Online (#55956): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/55956">https://lists.yoctoproject.org/g/yocto/message/55956</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/88653143/3616765">https://lists.yoctoproject.org/mt/88653143/3616765</a>
Mute #sdk:<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk">https://lists.yoctoproject.org/g/yocto/mutehashtag/sdk</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-

</pre>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux</pre>
  </body>
</html>

--------------HiRC0qml0Squ6TdsE8gX9S4t--

