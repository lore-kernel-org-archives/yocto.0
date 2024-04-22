Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC02C10F15
	for <webhook@archiver.kernel.org>; Mon, 22 Apr 2024 09:11:30 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.121])
 by mx.groups.io with SMTP id smtpd.web10.14009.1713777088168644830
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 02:11:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=LlOJIYpU;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.121, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cMYH04XS/Z61CyPMv02OIV8mBCD9KAjzFE8iOtVQ+10eaH1/jfkupKpjHeQSHiFXwHlXljvWSXCudkAJg7A23xQkEYauSzfvfSHAlrq1xJ0cLuOHW52PN5SRLYd1bLfvU1l5eylFDMhaXT6c8AwFLHR7inCW8NTorDyI2C/ItIYjMut99hnjMzAFbm2+LYTNke0Ff9afQjt3XQGgSj91GOkhWtEZlHnkTVr+GIjgSiuGEexRuCTFhUy42h8B+gNiT6wpQVbbeE8XrL8+9zUCO7R0d0bQzyuAmey8x/pJbolOZLJB9eGBPwdCBMObQnbBcfNWcK2/7COfjGKJgkawGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TROXXwV4wuDMZZFZskzSfq2MWxZRi3hU2+kOiM70ygA=;
 b=MgnptNLIkxq4ItkzJ6W4HYAW7falhF612gT1mHgb0m6ifeKtV05OxE3o2XrzWi2u+/soeRXDfQxivVQq8PemlsSRSlLQNnHE5hxLnSy+QEg775UDfSiR366aTjuN8FA8uWnvs//8mbP8zSMFYzKNxRTOyDQtXwVEU7BErPxSXMQhb/2yb6k1G6dFEdhvW3XRVdTGUD7aozzWiRtVnkyeNJCrOx1Ax8TpSXPq7wqRwRdjcihSUDDR681UXZR7HR8obr7nZlagy1AtCj/1niNfZLLA3hIWROby16/7PS1f9Qjgfc3cihKnJKw+V3SKMiIkoAWAMaCZNYXHr/wD7hX30w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TROXXwV4wuDMZZFZskzSfq2MWxZRi3hU2+kOiM70ygA=;
 b=LlOJIYpUfjoF/WDX1V5DSlPPygfYa0QVnutpSbF348/wSQcIZpDP1QMDCWjO79a/yNA4ZEtVrVD9+XgrNvuOLxzBxCo6txNrks4xNKJOb6+C0LNRpCtO07P6yWe3YX9j8p1/0/L0zHbabtm1FF8K8W5DSbGotkbFilkgjW6jA5hkXYc5Jw5bRrlnGQdSuZK+8uU9Tra6hSH2flS+Gtq/WaAv5ZGfKC4rDQdXw66wNiyvF1H/sTiyvS5lck7zXiOetLPo3tU+39oKXQLUbGah5QtAn9tGKqVecIISkqX6ojZ5M+Hm3+vQ9xINDC5+96bVoV2L7AMx0vAhDDPLP1yjOA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by AS8PR04MB7815.eurprd04.prod.outlook.com (2603:10a6:20b:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 09:11:23 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 09:11:23 +0000
Message-ID: <5430bd55-37cc-4ca2-9bc4-bad41a77d6d2@theobroma-systems.com>
Date: Mon, 22 Apr 2024 11:11:22 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Wic Image Generation
To: yocto@lists.yoctoproject.org, bratiranjan12@gmail.com
References: <CALSmAY76pRGxBWfWJQFEuiEQ1e3tmMm03p=wAnZr+=+Eb_cZbg@mail.gmail.com>
 <CALSmAY6riT0qgNcrQMcYTSSfguvXirYb3EEa2=Kd1CcdQOX9gA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <CALSmAY6riT0qgNcrQMcYTSSfguvXirYb3EEa2=Kd1CcdQOX9gA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA0P291CA0013.POLP291.PROD.OUTLOOK.COM (2603:10a6:1d0:1::8)
 To DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|AS8PR04MB7815:EE_
X-MS-Office365-Filtering-Correlation-Id: bbc2c20e-a85c-45ef-9b48-08dc62ac2e9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VTlnN2tqQnpnTFpPaWhqOTR3UDNPUlN0SGVlWmRWSi82Zi9XSnBOZWQ1YlZn?=
 =?utf-8?B?ZTBUajRxbWNtM0N1QUF0R05ZTnA1SzFyOW1ZTDA0eVB5WFJBaWNob1VCYjdm?=
 =?utf-8?B?UXpXT21EaHlBVWVDMm41TGNhc2dqd2xKbXUzOXRnWE9Vb1dyWjZqVVJ0TlZN?=
 =?utf-8?B?M281aG5SYnNWOUVXLytUSjdobGp5UkppUVdscFBIaWROMCsxZ1N3LzVqV0tk?=
 =?utf-8?B?SUdzSlBsWFZTd0tnNms0dTdkUHROVTRaU3VnQ0NXbm9nNmxBMXJWb2xFR0hw?=
 =?utf-8?B?RXo2T2FIaWNsMzRmN3E4QzNERDdHTE1pTytNMGdidU4rcUJrbUZoWStoeXNr?=
 =?utf-8?B?LzdLeWV1cXVLNGRoejZKVE5qVngvTWlqUWk5aTBINnFiTzBXVm02N1FMTTB6?=
 =?utf-8?B?RFU4Uys3ZCtPMENtcXhHa2V4S0NJL3U5ZXd2NFpBNUlPM0NPTzI0K3lVTUw4?=
 =?utf-8?B?Z052RWZsUnlpTW5mTEZKNnA2V1RuNktkc2w4VDRFNG1VTWhlOHFaaVpmVFNJ?=
 =?utf-8?B?N2JXQmg3ZmljZVdXWGNiOHF0aEh5YkNHbzRIa0lLRkJBL1NhbDFTdlE2eGIy?=
 =?utf-8?B?VEdwcFlLeGdnZFZTOVBMUzdwSVRDTVB1dXpESlpaaWt0WHZFRWc0NU8xY3FL?=
 =?utf-8?B?MG4wRDUxdjE2M3owbDBiU3NQcFIxRGovTWVPWjRJditLbnJUT3ZwTDBHOTAv?=
 =?utf-8?B?OExUa1lQWFVxUmh5ZldHMjhSS01yR3BUK3ArcGlzWHhncU4zYzcrYVlXeFNE?=
 =?utf-8?B?ajEwTENxc2dtbzBwSEpxQlhQU0JHd0t5VHNBRzBydTM4RWgzUTFUbThLYlUy?=
 =?utf-8?B?Ym40bzdITkpua3cxd3ZJT3VYY080R3hUbzdjS3h6aVYwOFZuVjNETm1nSENl?=
 =?utf-8?B?QWx3L1hVSmxoNkxGQXE4blNFNXhFT3ltejJuREs4akVETFRBTlprcU82UmVz?=
 =?utf-8?B?bUdnTDRWdVdDWE9CZzY1Nm1HOVJPM3h4L2ZhMzc2ZkdXbDVKRmRJakhKVTNY?=
 =?utf-8?B?Sm11TlNaWjU4TFdJdEpKSzBlYXBqVW5CY3lQeWFucWtOWklwUUpMRGN1WkFR?=
 =?utf-8?B?eXEwN0JKZnVPMVNKNWozTkdIRWhtVm9vbjdIdUFZbi9UWUdTZWMzMndxN3A2?=
 =?utf-8?B?bGYwYS9TVjJJNzBzc1AyRjRQWDgvaFVveHBDckhQWFBXVGJNelhPZ1Y4aXRY?=
 =?utf-8?B?MTFlc085L1F4VDhkQVVXUVlDaEx0U1ExNjVGMXE1NnlIbUY2blpHMldDTGlq?=
 =?utf-8?B?Nk9nVEppWDVITWlWU0p1OTE2Uks2bFltTE8yLzVHb3ZSeUFPcTBDUGdrQWpz?=
 =?utf-8?B?WFRDRmJTQjlVNXo3b0Z1QngzcDNNTVMyZTE0SjQzVWdpVEVFdVBBcnNXZmlU?=
 =?utf-8?B?MmZlQWN2MlNBQ2p0Wmo3bW1FNGszOVZZQzE2b0d6UTJtZ1ZOYVdxeGNpRVJW?=
 =?utf-8?B?Q0k3eVhvTlN6aVlSa3JXcXprK0RyUGVCc202bnYyNng5dEplbnZDY0UzSzdj?=
 =?utf-8?B?SlFVVGx2am10M3hVZ2FUOGlmaVNpUVpJdHBLOEdLcWd1QWZmb0NjemJ1di9H?=
 =?utf-8?B?MGZXa05IT05zUzVTZThLRFZ6bjgzc3pjbTFCSnZuOVEzb0Z4R3FDWkxnTkRr?=
 =?utf-8?B?WGVLakszcEZGTmZudC9qYklQWlhRV0E9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a3AvWXVhdkl3Y1lIcFFrODdkcHpwT25CMks1N3dHb2pHL2YxTlJIZFF6Mm8v?=
 =?utf-8?B?SWNFNjZTU2M0UFFZMU52TDJaRVdZaWIwQk9rUUxNaHVhdllmQ1VxMkZBV3hj?=
 =?utf-8?B?TjE1Zm8ySFd0ODl4OUdVWnFRQjRQaDB3alNJTWF0WXRKTVo4MkxjNmVKazN2?=
 =?utf-8?B?Z3ZUVlBJVDdrNEJNTlR6YjZmZGhRQkhKMUI2TXdUdXFSTFQyZTgwTDl4YWp2?=
 =?utf-8?B?cEpMYTRCb0NnWFozemxzZm1aSlpzVWl5L3gydk8yZ2pyeG5VMVlIaDlyOG9j?=
 =?utf-8?B?a3UvMlhEYkxpYmoyVy8wRi9OdmNLeTY5NHFZVW5LM2RkU295TWhzcjZnZnQ5?=
 =?utf-8?B?MHBIV3l0Z0d5NlFhaUw4UDZpR2F6N1E2bzlnckgxM0lsaHk1QVppNUhZZUZI?=
 =?utf-8?B?V3lFbW9aQ010VDI1a0dod1M0SFhIZGQxM3p3bVBYZ1pjWkNPUk5YR3d4ZU5u?=
 =?utf-8?B?Z3FWbGJhL3VtdktGellqeGJqVitwYytQZmpXRXlFUG9EbXRBRmUySnpNbXZa?=
 =?utf-8?B?cUxSeGE1SEtocFU3aHNZYWd5YWlnaklNMDJ4M3U4OTE0L2FSQmNnWXl6MmN5?=
 =?utf-8?B?RUtURm1NbnNVcUVNU1o2cnByTDBHMnliMGExL3ZlK0NQZ3dnSWVsb0s3NkNU?=
 =?utf-8?B?RWpBY3V3bUY0MkZFbmpxSTVwZWlRK0w5WnBJN2N2Y0tReDNoVlNPR1M5dHRO?=
 =?utf-8?B?Q1N5Uksyb0poQy9zYWJsZW8xVGIwQ3hIWEM4c0hOaXVLWmExQXdFTjEvR2w3?=
 =?utf-8?B?aGx1eCtZSU9vbHJmNHBaNjEzVjc2NWlmN2NEb092dVlxY0xhQjBUVEwwcGNE?=
 =?utf-8?B?MUxrMktIRUhGMHlFVCtoS09qWHdoZ1FvN0lBSmJ1dU41TjcyMkVzcFpHSFIv?=
 =?utf-8?B?ZnZubnp1cDN3RS9QUkg5MXM2U1Jia0Jiem16OE5mMVUwU1VGVXNORGk4MVZi?=
 =?utf-8?B?U0J4aTBhY3hya1ByUnM5dzJzRzBMS3F0blY5SGk3NFl6L3lqRk9rMVdwUERm?=
 =?utf-8?B?M2JVQ29ISDRZYlFJU2hVd3BYalQ3bXdXZ2VseUxGSGRhcTZCTWJwY2ordmJP?=
 =?utf-8?B?SHZSTTE3RStUYXRBdU9SRW1EYnVwZEl1MUF1U3hJbHc4dnZNbGNzenhOSnlQ?=
 =?utf-8?B?SXh4b0x2WnkxMitOOHc4ZWcvejRQTEZkT0p3eEdEWUxLb1hPaitCMklDOTNU?=
 =?utf-8?B?Vm50TzRicDVzUHFRUXdJWC9scC82Z2FkV1U4anVZbnVoVi9STDBKRWdCYTA1?=
 =?utf-8?B?U01JTEVNMU01c0x1LzVvUzEwd2J3ZmsxSWU3OGE3VHorNkE2T2dqWGx6emFi?=
 =?utf-8?B?cnc2SEZRdHcyTUF3Slg2eDYyMzZQUHBxcVJRVlBRUlBrRmczK3d5dDlDdDQw?=
 =?utf-8?B?ditNQWZoQUZ3R014RkNtdWhRRUV3a3VpeE1qamR1cnM1NkpEaDZwN0cyN0l0?=
 =?utf-8?B?RWhWT2hYUUNNZ3gxeTBSTmtIOUF1aTlqZzRINjR4YkZnZE5Kb1dTM1R1aDRz?=
 =?utf-8?B?Sk1qRGUrQms5YnhHZm5hZ3BFOXp3U0xnM1VRYllISFhqWjB2VDhWeldCeERG?=
 =?utf-8?B?UEN1T0creEN3dklaZHpWYlJjV1BEU1NGTjB4RXB5Smp6N0RCNDN2QmM2Qmx0?=
 =?utf-8?B?WlB4Q2RnUWlWemp3OWkySXUwUWMxUkdndVAxeUlJeTdCUVdzVXI4QS8wZGda?=
 =?utf-8?B?dS9jRVpXbTF0aWlRdTdNUFEzc2t2eXV3VFNGSisreXJZRFhJSXBTYUJ5NHM5?=
 =?utf-8?B?TzRsb2xrdlpqd1ZjcVg5ZU96SUMzUUU4OE5uUGZ5Q1pmRkd2WThZQUxFbCtM?=
 =?utf-8?B?UjdyenB0ZFlXNjhvV2NVQk8xeUdIeVJrd2tEVFNndWRNWGxSVWhlcHZBZ3M3?=
 =?utf-8?B?cVdMTGJyQUp3V0xTQnd1TTh1RjZWYzl1cjlBbTJoQ1lvMUhkQnBOUXJ5RHVB?=
 =?utf-8?B?WkVRTkdRajVNaHVGdUZqUFZEWVMzVUJjWEsrc2tkNElQdGdiaWswQzAzSW5H?=
 =?utf-8?B?T214Wnp5TzNDQTh3cWNUQWJVR3Zmb0hUNFJ2MkY3RkFhOU8yWlVhVGFKc21O?=
 =?utf-8?B?eHFmR2tCYThLdmlFUmkxaFRjaG5zYzA2RkRNVGpTbll2RlVlM1JVRi83dzhV?=
 =?utf-8?B?d0RVZDd6UUtNc2RiWnY5SWd6NVRnSzZvUnZKdDVTRTJ6TXI2SFRPMEQwZUpY?=
 =?utf-8?Q?SVeCFowMqO4GhDEfYdK1vu8=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bbc2c20e-a85c-45ef-9b48-08dc62ac2e9a
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 09:11:23.6824
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MH99wwVQHlMskjYwiI2TMhzyXb4TmG/HRlJWDJBV+U6Yn0l2pUIYgYxGbh8fv8l2iQjYDlNZlH2Y1UBicJWvhhxn5isEpo6auldGjh6cYakWu5DMr/W/OXVxy22hm1EE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7815
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 09:11:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62976

Hi Brati,

On 4/16/24 10:36, Bratiranjan Acharya via lists.yoctoproject.org wrote:
> You don't often get email from bratiranjan12=gmail.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> 
> 
> ---------- Forwarded message ---------
> From: Bratiranjan Acharya <bratiranjan12@gmail.com<mailto:bratiranjan12@gmail.com>>
> Date: Thu, 11 Apr 2024 at 11:12
> Subject: Wic Image Generation
> To: <yocto@lists.yoctoproject.org<mailto:yocto@lists.yoctoproject.org>>
> 
> 
> Hi,
> I want to create a Wic image from total scratch. Like, i have a "gpt.bin" which creates the partition and put the required images in it. But, i want to reate a wic image which will do the same. So, for that do i need that "gpt.bin"? like, as per my knowledge wic cannot create the gpt partition please do correct me if am wrong. And i dont even have any .bbclass file which can help to create the wic image so please help me to generate this wic image from total scratch, what are the steps i need to follow, where i need to put the wks file and how i can write in the wks file.
> 
> FOR Eg: I need to have 6 partitions where i have a active and backup bootloader,kernel,rootfs so for that how we can write the wks file.
> 

Have a look at what is done in meta-rockchip:
https://git.yoctoproject.org/meta-rockchip/tree/wic/rockchip.wks

This creates a wic image with 9 partitions and a GPT partition table.

Maybe https://docs.yoctoproject.org/dev-manual/wic.html could be useful 
as well. I'm not entirely sure we provide enough documentation for the 
wks file in the docs, so probably something we can improve, patches 
welcome :)

Cheers,
Quentin

