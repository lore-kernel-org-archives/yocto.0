Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CEF8D6ED3E
	for <webhook@archiver.kernel.org>; Fri, 22 Nov 2024 09:45:05 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.58])
 by mx.groups.io with SMTP id smtpd.web10.20574.1732268698434839933
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2024 01:44:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=DiqAYb8r;
 spf=pass (domain: cherry.de, ip: 40.107.103.58, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dXx5FkLbfxJL4nJWNCvnKhAzupYGzKVruyvo1JVLpO2JLPuokNOSVOojFywBP+QeUwreG3+B5sTUM6NTzVXyuf+fkdTCwRAwNHZzhkht+rdRao4rfPNGU4/Uy8vmRk47gpCLl+82t+qvtxUz3fcUClK81KaABMfk8AZD1OWUlcYQ7sKcRtuY1aTxtE0AxRc/uy0RHlmVhtcWsi9gXp+pk+E4hqMtSR7y4B1Yv10QKDYO2pv3eHfCMQVqyFK/zZKm4GnSw+4pKkitbS5WBUPfiUJ4DQ2l0l1kLhWMWNI8OBQpQVAqVBeXXHY/Coi7jD0nM2fPdlJRmGleDQghtmxRtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cCwpr9SjVvrIcLDjo+uLRCA18QNydCJYAwER0nKW388=;
 b=jCV8w3RlPRfFytVXHb22XS4JK85uo05dUTbHQw0tnkE7bIIIE7kha3jQzAZ4VLLDP6ubIdVkAIElXH5xeQvxSaGmNtigMTBR3bN9Aph9EAqxaQvormtFWV/BQcMG85Wgd9z/yIj7C46TmjnycPAP400KpJENDoG31qJfXFAROlTpvUi/wnjIxPmc6w/+RxwU4Xnfp2H6M6K+gXOrzdM3c+YbmiITHMCRyY+WjgGCaAEqGeGsbDvYjCaFhVsJJaHRE6UEIq08HP9lAm0QNWZePzMi7x2JKhYu7AdnQPbDtgWBNSSbuKfxuLfR+AOujX0/QuahMAGQ9ggccG4s8baymg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cCwpr9SjVvrIcLDjo+uLRCA18QNydCJYAwER0nKW388=;
 b=DiqAYb8r0TXW6vh0r3vNz0xE2jgMgkjsRI6Bc8IIYRNj82OXTXGF5Oby6OYux/oxeaADmlbQUoVtkEMS1qkWWM+3Vg4EHYbkHmaqUr/b8Pz1jzAZFDPBxuGL6pyv1U58ZOLorNFtkzBNX63RT+aRWJtu6Y0kFy6jbD4c2Wj5SJk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM9PR04MB8275.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.27; Fri, 22 Nov
 2024 09:44:53 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8158.024; Fri, 22 Nov 2024
 09:44:53 +0000
Message-ID: <a6b01fd0-b493-4319-8342-4e99ba9ea21b@cherry.de>
Date: Fri, 22 Nov 2024 10:44:52 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Append to do_install is not getting called by bitbake
To: emailaddress.ashish@gmail.com, yocto@lists.yoctoproject.org
References: <788e86af-e239-4d6d-b61b-5ca843d2e603@cherry.de>
 <5971.1732209496242410125@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <5971.1732209496242410125@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0031.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::12) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM9PR04MB8275:EE_
X-MS-Office365-Filtering-Correlation-Id: 38de5738-5167-44b1-3f6e-08dd0ada50cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?S3VNdmJuWm1WVGVtUmFQRkFYRGxrT1dNNDBwUE5GUVRidWJpRWk3OURYZW45?=
 =?utf-8?B?T1dQcnFpUVlBWmwwUlZEaXFGZUVjUEIyeFFSMFR1NklqY0JBMHI1NEJoVDh2?=
 =?utf-8?B?Q1BsUm93dWo0OVpjem84S1FjYm1yb3ZDL2FTMEhBQjBONnV5a1BWUVRQTG1K?=
 =?utf-8?B?S1BmMkZwdldMU0Z1NGhqdmQ4dUtRU0RWOGRZZVZNZFNjdnV1cmdZNjJnRDFW?=
 =?utf-8?B?ZnpvYjFQTkdEQWlJZWZ2UVhWVmVWVTNmV3dRUkd5WmhiaXREWjg1L1crOUd0?=
 =?utf-8?B?aGZ3dDZTbjBMTzJLT3RQaUxQbVJiWlRweE9xWXNIYlQ4SnQySFlscndHVnFQ?=
 =?utf-8?B?akFXTU1ZWWFLRmhGbm9kZnMrMlM1dHF5SkhGelF5U1hlTDdTQWNsNTU2a1px?=
 =?utf-8?B?aU1KV3pUdWlHZ1dXbUI2UVU3RWZ4QWtlUFBhL2lVMTFmcmVSWC9abU5SalZ5?=
 =?utf-8?B?b2p4ZUwzd3hGUXN5QTNGMFplZS9XRkFWRE9YRStKWUhXSnVVSis5OWltdjFB?=
 =?utf-8?B?eDdpT1VQTTdCK2NTOWpZbmtDZjlSd1BVNGxSMkFkVkFJTjV3Wmk0WGFXQ1Fa?=
 =?utf-8?B?YUloQkRTNFF4Ty9ZTGp3WUJVb2p6c2t3WjJGcXBYeVBsUGtGaU5vQnM3ZCtU?=
 =?utf-8?B?MmsxUjZja24vZ2xaWnhqWVNPNlc3ZW5Bc2lidStEbGhqcFVRQkR0ZWthZ0dG?=
 =?utf-8?B?Vi81R3BwdXRwZEhnczRtWDdBWVRYUVJHTWtnLzlLM1AyUGI1RnZSa2dGWVhu?=
 =?utf-8?B?NGw3M1E1QmRVUUVveGU5VW5iZ21VRzlBNUs4MnM5ak5GTW0wVHg3enJ0MHpm?=
 =?utf-8?B?STB5VUxXSU5kL3RWVjlULy9EWXBaTUZFa2J0RktuZ3B2VFRLMmxkMVl3Zmdl?=
 =?utf-8?B?L3I3MldUWk8xMEpjd3owNFh5eGVQNzJBMzdicDFISHVTZitRNVl3VWxaWVVk?=
 =?utf-8?B?Q1FWbmJuTFl0WTQ5ZklGQ0VVVGpnVUl5UDZEdkdUdnNwWkFqTVdldzZxRFdj?=
 =?utf-8?B?Q0NlWXg1bnMzb3FRU28rSXc2K29QOXgybzNuQ3k3Nmh3WkYybXFVZ29VRHl1?=
 =?utf-8?B?QTBZNnhBZytRWEtDcXcwQWdOMUhJdFBpKzVvcVhwSDR0RDlocU55L0xFdllO?=
 =?utf-8?B?V3NuNFhVS1dEc29Oc081YzZOanRvb0pHeU1HWkNwNDdBQVlRK0lBS1pHMlpr?=
 =?utf-8?B?ZDB5eHRVWGx3alBRV1g0VVlramV4d1JjekR2Z2kzN3NCSEZUZFFXdkhVTUt1?=
 =?utf-8?B?bHJSVFdpZVRTZW1ETkxVTVorRFFjOEk1dm5YVFBHRkpnNjd4aUZISEhzVDlO?=
 =?utf-8?B?YUlpT3pXQnJTbk5xNFY2SW5BYjFoaEVZYjZCcWpZTEdxc0I3K2M5MzdCQWV2?=
 =?utf-8?B?UDY0bjVyV0EyY1lSM2l2dWppZ1JHcDltVUhoZURpNjE0Z0ZqNUMyTDFMWEo5?=
 =?utf-8?B?bHdEaFk0bkkvTWxXU3ZOVkp2Q1BVZ25QM1E2NTZ6QkgrWXNmWnB2cXpBaWVC?=
 =?utf-8?B?OVYzQ0RWNnNubWg3VFpoREgzVU5QUTdwNFpRQWdVMmNLd1QrSTRNUWplOGJ1?=
 =?utf-8?B?SzIzVG1Gd1VBRXpBdDRNZzNpalJCSjVHYVNsV1pDNTR1dGdHSTMvWlV3QnBa?=
 =?utf-8?B?OWc3a05YdzlQTHMyNXFyRjlUOHF1YmFDUS9XcmlsbjE5bmROR3Jkd1psVUtG?=
 =?utf-8?Q?bf9mTV8YNWUdIbRrnO6M?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXVUbis5Ym1jcjVzcHRIVmU4SnBPd0FQVmE2UUVNbHFxQWRyMXBveUlrTmZy?=
 =?utf-8?B?MENQcitqWVFseGxwWXM4RGplQ3VxT2IzTGZXQ25rTENJMHYrZXNBSXlzcXBv?=
 =?utf-8?B?VEM0aFI0aE42cTRuSVlEOGhjQzZ5TW9zbCtEQ0JvMFR4Vkl0NXk3dS9OT3ZN?=
 =?utf-8?B?cGhHWmNaVjFpVWUyYnRhYmxUZi9JaDBCQWNkbW1pd3c2WnFFejZaK3pnNkpN?=
 =?utf-8?B?b1NLcFMrYWM5VDE2SHVnMm9mY0FHd2Z6UC9UTnJNWlI2U1lWbGpMRTNxNnVI?=
 =?utf-8?B?ajNmSTNIOWI2TG1NQUJiWHZPNEsxM2FISUR5d3NvdDNieUNRNkFDR0lSRHNt?=
 =?utf-8?B?TWNhOUxaNVpZRTlrc2ZYdVdsRVpUVGJlMUwxMFN1L2o2MmRINmxONTlTTU5m?=
 =?utf-8?B?T09XWGt6d004NHgzeHM1UzRyODQzUVowYytsZjVvUHlvRG5DdWVVd2xDdnlj?=
 =?utf-8?B?a2VqZzhSVUxTemV5b2lqb0Y5b1VSM1FHMlp6TXhWdENpdkJmVkVyRTVFSmQ1?=
 =?utf-8?B?dlpsa2ZjVDNGRWpEVTd5OVdLVjEvdmxIWDNtamNKNFl2WGxkSDdKTlZxQkRU?=
 =?utf-8?B?RDF3d2pybkthOHhQZk9XZnNNbkFqajZBYzVtczVFQ3lqRjVSaitqbFRMcFdR?=
 =?utf-8?B?SkJWTzRBUGxkcDZXSXVWWHFkdG9Cd0drQmhXUnZUQTNvRDFCUEtQeUt1NUND?=
 =?utf-8?B?eE9TOS8xakRkNnFwQnFrb3B5U0xOeHNjaytVemR5MUlGZUlNeC9oeXFKWS9I?=
 =?utf-8?B?T2JLb0EyMmEweXJRNXd6R1ZraVRLMVdmcHBuV0NxdmQvOVBRdUVyZ0ZEQ2o1?=
 =?utf-8?B?U0JlR0VEWlRFdlZuaVFuMVF1a2VJVHE0Qkl5MW9QYmNvcVJCV0NJRm5xY1dI?=
 =?utf-8?B?MDY0alZ2cE5aNEtDUkFGRzZzRjF4RERiYTVVUHF2ZnVPMjNLVzVDNFhwbDZJ?=
 =?utf-8?B?MXNzQWpDejZ3U0k5MHptUXBqRlV1ZXJPeDRCTjlhalVSZXFkZjF1TkIrOE5z?=
 =?utf-8?B?U1ZoUWV4eEZmOEc2TGZBN0o5MjF5a29EMkVyaGYwUDhNSEFtUjc3Y05WVWJZ?=
 =?utf-8?B?MzRtV1RlZ2ExVTg4bjhPQ0J5ek1JeU42bGd3TU9jb3NTeFVzYnJQRGRNaUE2?=
 =?utf-8?B?QWZBOS9RSGxpR1BIbklZY1VqZlREUmhKWEZhTWIzMHdGbFBtamtVbUlOdFVw?=
 =?utf-8?B?TXhYdWE0em4rWE14OGxRbC94WDI4T3hQUC9SRS93YXFUQ0hqa0IwVXhTME5q?=
 =?utf-8?B?SlJ2WU05Y0JndzhhdzUrWXVUUnhBVURIbGpVcEpWYTBSOFFWRUl5VndIQUlT?=
 =?utf-8?B?bUNDdkJPRnVSYVduTzdha2lqZjJ6Wm9lVHloekN2emhsanhSb2NUdmtxalM4?=
 =?utf-8?B?SVZ0OGZKOW1vZ1NWRnJydDlUL2JrN0NHSktoYWRXWGFQYmtobndpcUlTOWJ5?=
 =?utf-8?B?SStxN1pRcXZKUWFHcnBuQ0JERlgvOG41bTM4bmFaTktYQjZFWStIWlRmMFNr?=
 =?utf-8?B?OC9Cb2M3NDNIcGhkcWNMWGtYWHU1cGw4WnRUYlFRcUN6NmtGOHI5enhnU2c4?=
 =?utf-8?B?OHRjNjQvSWkxKzFzV2hycDlwVWt6NkN1RFFWMkNjRy9tZzBjeHBhdWVZOEJ5?=
 =?utf-8?B?VlFPQmp4UWFQR3p3Q3hMTmZOQTM3Y3lKYWEzdEZwMDNlLzBvQWdzWkpDZ3pw?=
 =?utf-8?B?NVMvWGZCM0cwcFVCREpxTEY2M2NjRGZiSmR5NlZQcy9yZFJTS0pUTzViejUx?=
 =?utf-8?B?aEprQ1RncnZRcDZtanI5b2x6cXlnU2d1ekZUdlE2R21MZmQvT0VSSkJGcVA5?=
 =?utf-8?B?Vk5XeVpuREVPS1h0cXZyWEx1aFdEMm5NaWlzbS9mVU9LWDhNWVR6QUNnQVVE?=
 =?utf-8?B?L2p1aERnaU5hRm5sVE9nRnJiRFRDSDMydkd1VGhxcjN1UWlwT29hYUpFb2RM?=
 =?utf-8?B?NnF0bVE2TDgwTDhXRVo5WGFsZjk5VEpCWnVjMUVuVVNCYjFFT2wybTN6bm5l?=
 =?utf-8?B?WlNJTFlJTVVTdk91b3RGN2dBNnBVcTk0N0JtSTRESTVvT3pCQTZLbFp5RkZJ?=
 =?utf-8?B?a3VwNkFDWmxzYVNBNTFMYk04cXZhb0NqUm8xVlk0cXc5QVMzNyswM0FWMWRW?=
 =?utf-8?Q?fom+/+0EGecNhjzERn9yFgG04?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 38de5738-5167-44b1-3f6e-08dd0ada50cc
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 09:44:53.3272
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kh0ulIG8kSKCFwB7qQOYEKwudB3kzZlw1I1bQnEOEaydMAoogUtcYvbB6+6G2NvN/axvGH6hLdWw35V9Ol0zIFWgz6fCWsVy55ei1vL2Dg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8275
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Nov 2024 09:45:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64333

Hi Ashish,

On 11/21/24 6:18 PM, emailaddress.ashish via Lists.Yoctoproject.Org wrote:
> Hi Quentin ,
> 
> Thanks this suggestion worked , learnt something new .
> 
> Sorry if my question is very basic but really wanted to use this thread to understand class-native / class-nativesdk / class-target
> Can you share any pointers as to what are these classes and what they indicate.
> 

https://docs.yoctoproject.org/ref-manual/classes.html#native
https://docs.yoctoproject.org/ref-manual/classes.html#nativesdk

The same recipe file can be used for multiple "architectures" or 
"flavors". Typically, you have native (compiling for the build host) and 
target (compiling for the target (MACHINE)). Since Yocto can also create 
an SDK, you have another one which is nativesdk which is compiling for 
the sdk build host (SDKMACHINE). There also other BBCLASSEXTEND values 
to use something similar with "custom" "classes" such as 
devupstream:target, multiconfig or multilib though I'm less familiar 
with those. See 
https://docs.yoctoproject.org/ref-manual/variables.html#term-BBCLASSEXTEND 
for what this variable allows.

As to why those are called classes, I do not know but I think this has 
something to do with the fact that there's a bbclass matching the name 
added in BBCLASSEXTEND, but that's all I could guess here.

Cheers,
Quentin

