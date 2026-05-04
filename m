Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB897FF886F
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 13:15:58 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.17])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14359.1777900554303711367
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 06:15:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=ZYrkUszn;
 spf=pass (domain: cherry.de, ip: 40.107.159.17, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iQQiOxhiR3a0FhqMSARQ0LQLI/LN9YgmKGzenBQ1GlbGnXivHiA22/uYdx0Nyraq+ETu7WH5ttDJBkrmEwPF+6kfTGN07xk37tyYNH0N50JJqvHdeTU15BasQxjmNB1RXsYi8DEmVnjsszzapQwdFtP2h8GdPaoVb8sxtF+H0XfIRm/uGcllmkx9m8u+0oMdM/PDBLnl+w4Ubf3QsiLJaAXJz5T1LvHtHFaFBNNeVNBNQ3QvgSsiVqqEKqGspvURdN/mNvEjI1BYQilAypmWkHGPVb3JoyKSr9+GXJ8aWjaFlVO6tOn2Ne2M8hcHeKj++NMTG8wTWM1kTMY6HTzhQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UR+AhZjsJH6d/HssZfM5KMZ884MyiPkyO6qZcH9x9Wk=;
 b=epTV0nLztTz41CSYmcmznDqAVuvCoYdepcCMH109Vk2WDH5jShlXbqMruK/H/a0PfA7/zGLrn8J/mvGtQKT4M0ggApIab9/tOGtBMNp+k1ohxIFMS5k1/Gu0oVtybcqd+hL49abvDBo1jgqel2olEUsgEJrqyrAfmp8CQ+GrVn2gZD6EkJZpxJe5iyfKOGeRDIXn/kE7ESp20ITZ0Kch2Xld3bpg4a2LWAqLX3HzwZnAcICCJaRrHbQQ41i9iSrKV8OW3/jlwhkQtGT87MKzQgms8t9XMcG7YlIuWNerJzmPMEeyBOnAQvUx5G7Z5RmHfPk5rC+ieQMDQC20X6/dvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UR+AhZjsJH6d/HssZfM5KMZ884MyiPkyO6qZcH9x9Wk=;
 b=ZYrkUsznN0yC2H4VotR09KFOPWdsIVDde3W0Up4aas0mSs6il00ag2rsEvzwsd+JsQLE0RKt/t7y+N0EPrQStjdWy+TXR7T8xLfcgJ2HU0PzgD76Aypso2W+FUwvCaU09LrWpuWG4pBdw1mKYw7Z418ybwUXU/ngZAfuP3FTQAY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by PA1PR04MB11432.eurprd04.prod.outlook.com (2603:10a6:102:4f7::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:15:50 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 13:15:49 +0000
Message-ID: <7d170bed-a63b-4e4e-a536-5518c0196234@cherry.de>
Date: Mon, 4 May 2026 15:15:47 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>
Cc: yocto@lists.yoctoproject.org
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
 <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de>
 <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0024.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:c9::15) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|PA1PR04MB11432:EE_
X-MS-Office365-Filtering-Correlation-Id: 60f54d28-00ec-4e8c-9cc6-08dea9df42a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|366016|1800799024|376014|22082099003|18002099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	HP1w5KJd9c9P/uPGa6oBqbaaQU1SsSzo8MJLVQX/pvWwRfe27C43iwMEaCDF43I6udAYupfakCI8q+68K62oMahMamrkj6FxaunN2OD/5RZLEIfCQsruihl8sY1I1U2tfGEKVy5TleSmrPhn3MXNr4dOT+47Lnez/LvcrGkytRwqYlvtwRTM8uxmRR8lZfmKAZSUFK38i5jf+yTsDfWEXlG6wuKjPZsVzPDnh+vi68K037AtpHuR8IDbjHFDCnejxVcJaghyw361b/GWvmA/YRLGOJQEpexdivowCf5RdnetzzlVWWfWyCdKJPVP3n7mpN3z5xjIN6gxVrBySg8ZWHI4LHO4q6ahY+arBHsKyc7001v+y7imwivOVJwMa3VrX7a9Vs1VyILcskHQrMNbwEbSSikZu1dXIEyCPyGU6PnBBrwKTZ1HGFPV/4YIwKu86zFI63HMox3DK6dBy3Xp8PvupllP+xvEGa5IcGgvxfjGX6QoT/9bvtUZTidTTMPPRMtOa7+ju3WBtzAZVrzKYcqWDQoIgJYTcMjaslizZUcg3hnJBKSMXFt9Pd8stdd5NFkUM5GCMpgz+HlvmmjPuypRmt9hd0yG4anZpx0A2Te9WX++4J/haIrhiXPVSFL4xgLxXp204UqcGO0aQsbF6V85voe6Ff6ZCEaY+ZAe/p1d7AbzCTGow6UAZPPFJRcLM/HoW44vR2VOlt3nHQRang==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bFB6WUVVMDRsd1ZRWHQ0dldmbDNNWXlhV3dsSWNvNm9HWitPdEMyaWh6NFda?=
 =?utf-8?B?ZUNBMFVmMzY5S0h1YmxWMWdYU3E1anZESTVteUhmZ2RYK1pVRCtGNHJtKzFN?=
 =?utf-8?B?b3AyNjJEeHdmUitoQlJkbFg2NDlEdlJ0aGdOcmxGRE5MMjhpMHduUmM3R0JN?=
 =?utf-8?B?SDgzZGorcTZCM2ZkaHRPWXlmU3JrRkdhdkswYTZaT05nTkR6elE5aGVzOCti?=
 =?utf-8?B?R1FaYjlXN0xhVW01Nm5JK09FL3Y4MmxCUU9jOUtXT1dGUFJuTXlCNGlrQ09p?=
 =?utf-8?B?d0ROc3UyUnFQUmZQYW5OTjhxQzJwVGFwYWs2NzNYcXVjUE5kOHFCTklvaXZv?=
 =?utf-8?B?NGdDOXhxakE0NHFtRGZmUGdWaWNlRmtBak1HbjA5Wjg2blhseDgzWEw0MElY?=
 =?utf-8?B?UlkyaEtTQkFMbTlRTmtSRGhRMlp0dS8xd3ppejZUeVlDR0xiSS9OOEF0TzF4?=
 =?utf-8?B?bVhVZFBaM0VDSjZ4WHFTOTAxT2hCeExMVE1ZNEl1SlIyeElpNllnV0NoaCtm?=
 =?utf-8?B?ZW0vMzlKK21OdERGU3dXamE3aVlsbTRqaFgrN3JuWkVPRVJqeThrTUFsVGhm?=
 =?utf-8?B?blhmM3YyS2NCeFNkWUtPSVNTTUlxVVFXSUJtRUVTb1N4bUlCVzMxeldHdVlt?=
 =?utf-8?B?Z0ZIMkFmODJSV0RoczY5V2lwb3RsR1AzL2YzcEJvWExReDZFdlhVZ0htanA3?=
 =?utf-8?B?dTNnR0tPOUIrUHZjZWcxWmNPNGhKTk54akszVm1UdXFkdmxIdko5K1RFTER4?=
 =?utf-8?B?eUd0emtyaThvK1ZHTFdWZHNSdCt0bVM0L09RZGFPOWx2Vk1lOVVKanUyRGky?=
 =?utf-8?B?dHA2RmZvcDNGWlJueHZCM2NDK1ZpdVF4VUY2VHgycXlndVEvRFdYWVd5cTQw?=
 =?utf-8?B?SUE3RW1zOWFlcFc2WmZGSW1ET1VWL1FLbnoxckFLYUJZdmlNaDZOOVdJUUVR?=
 =?utf-8?B?WEZhNGxCT25SYlgyQ1JhYVF2N2h2clJ5RlRaTm5CU0xtd3FsSmNaL1FwUnR1?=
 =?utf-8?B?NjdENVd3NWZ3ZnR3d0E0QzY2dVdhZlFyR3UrNGo2c1NKQ2pJd2JpSXdnQVRn?=
 =?utf-8?B?VkdaZ1FMcEQ0QlV3OFdOcHFlV1d4UGtGOTY4VDFKMkFyUTZkNDUzMkhFMk5p?=
 =?utf-8?B?a1kzbGV3dVhWbjl6N2VUMXJ4R1czTmt3QUJKaVRpcVphYVoxZXphaTZLdHNw?=
 =?utf-8?B?SnJETUxDOGRmUTVRSDUwSUNiWmplc2FHSCtIamoyVWJvNWczWGFWSFJlOWU0?=
 =?utf-8?B?UjUxU3N0VVNRYmljZFBLaTBNYy8yc1pqQVVxc1Buenh6RGJ1bjM2RlJwZHdU?=
 =?utf-8?B?MU1ZVWZlQ1NnQTlKN1FPQWsvemNWRGFsSUc4cktRK1NTTEEvOUtzM1dHMlIz?=
 =?utf-8?B?bENjWmN3SUU0a0dKK3J1alBZdVA0Q09saXlWUVB2U28zcThudkhEWkxCbzRo?=
 =?utf-8?B?UE1Ea2QrdnhBTnFBbHpJUEtlZjNTcWMyTkJmVkhoNjZkODVaRU5ub0doUU02?=
 =?utf-8?B?UWtaa3dqU3JPbnJheHNmNVAwNmt5cTljakg1ZDRGODBIWUR6WitWY0o1ZG5B?=
 =?utf-8?B?dzV6WUVXV2hSUS83dmxyVTlsWnRLd05XRVV0eit0cFNMdzFZc2tCQ0FUTTh2?=
 =?utf-8?B?Mi9FS1NPRngzYXJBOHJ1TVk5RkgxWmhpYTN4VTQydExvUGZsVnViSiszVFhw?=
 =?utf-8?B?NC8xL0ZxWWE1dFBxUjZLakExSXAyak1lTkxFWFBaVkRoSFhjM0NlM1haT1Rj?=
 =?utf-8?B?TTZINHMyUHFEZFJqUW9aRmVuQksxY0R0YzNpY3FDZlZzbmtleUZKWkZiN05I?=
 =?utf-8?B?YXRETlhwOEl2NVhFSlFBbUlyZjhxSzhaQjhGTWswenNpanZ5SThyV3kzQ1Nw?=
 =?utf-8?B?YlcwSno2c2FCWmRFQ3h0WkFkYU5qcnczang4ajZrYXpJbkhZR1gwRkdabXpm?=
 =?utf-8?B?aXovYjlPZVFVNkZhenZpUzk0R3d6N0tRYTBWS3FYSVNIenh2eVU0TG5NZ1p3?=
 =?utf-8?B?QWZYRDBNRmYwRlkrNlpZV0YzalYxOUliUlJqRXVCUU1KUlpqV3N1YlpQbEFj?=
 =?utf-8?B?WFc0MW45QXZ5MHNvNFZySW9XaXFtQ1JuY2diTEtPWXZubGlJVGt3MU9jZ04w?=
 =?utf-8?B?N3krZEtZS2R0UDZ2T00rN1lKQm9NNVJBOHB4RU5mZ2l6elA2aXVLS1VNKzgw?=
 =?utf-8?B?eUloOEEwajFaSkYzODI4L0puVlBWL3NSbVVzcjh5VmhZRTFhK2tSeEp0OVpL?=
 =?utf-8?B?OXNuVmZoQVhWMVF2N2hJQW9CL3hrQ1I3bG5pZTk5SkVZeTZjRnBoOHlHMHFs?=
 =?utf-8?B?VTlaRmE2ajJEKzg4UGlwM2dSTEVsYzZURFZDdHVLSi83TlFUR2dUWGhNcC9z?=
 =?utf-8?Q?MoJhYQXR3z6vf1IX6kQbniW16pZvEBmMpUPK4LLIgR2C5?=
X-MS-Exchange-AntiSpam-MessageData-1: T+hX1H3PNzEiBvUe4xh2TuoUZEj/qadbJrM=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 60f54d28-00ec-4e8c-9cc6-08dea9df42a4
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:15:49.5103
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jHfCd0uBDmu21gJt1HQAGrAVIg8bu7ACHRs10Qnt86cU/p3NhrD9pgCLvJcQejEjFSWguFyi9BIDP037+s/0+M+n1Bi2NEp3jOSPGgd03KE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB11432
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 13:15:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66471

Hi Michael,

On 5/4/26 3:08 PM, Michael Opdenacker wrote:
> Hi Quentin,
> 
> Thanks a lot for the tip!
> 
> On 5/4/26 10:47 AM, Quentin Schulz wrote:
>> Do you need to generate an image for that partition or can you simply 
>> have what will be part of that partition be generated along with the 
>> "root partition" image?
>>
>> As far as I remember, wic can split files/directories into a separate 
>> partition from the rootfs, so that would be an option that doesn't 
>> require hacking things around.
> Interesting! Unfortunately, I'm not using Wic but Toradex Easy Installer 
> on this project. Therefore I do need to generate a partition image 
> beforehand.

I am not familiar with Toradex Easy Installer but I'm not sure it's 
relevant here? Isn't that simply a glorified dd/bmaptool/balena-etcher?

wic will generate an ISO file if you will. It'll have a partition table 
and possibly multiple partitions within that ISO file. When you flash a 
.wic file, you'll flash the partition table and everything else. See in 
meta-rockchip, we use this Wic KickStart file 
https://git.yoctoproject.org/meta-rockchip/tree/files/wic/rockchip.wks

You can see we declare *many* different partitions, with different 
context (the example is mostly for flashing specific binaries at 
specific offset).

If wic doesn't already install the filesystem it generates for the 
partition, I'm assuming you could extract it from the final image if 
this is really something you need extracted.

Cheers,
Quentin

