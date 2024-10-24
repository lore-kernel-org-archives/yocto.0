Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3736FCE8E67
	for <webhook@archiver.kernel.org>; Thu, 24 Oct 2024 11:39:57 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.78])
 by mx.groups.io with SMTP id smtpd.web10.12571.1729769988682931974
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Oct 2024 04:39:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=XCOrHpBw;
 spf=pass (domain: cherry.de, ip: 40.107.103.78, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LevixiR8Iui4DAjIB1Xd0XcSkbJOJkgGPo7aSQDXaHRzLCt/LszHx62jNj0Yc6DkvkrTk/4JDtc3WTkQVgTgnMDSq2GqqbJybvYt9xfmyKtsL3+u70p6conIdUZDIUcbgFVxAf72QmhXoNbXb4I0avHQgBUTkT9TZKrkR22pfvC6ktpsncC4OJuOyWyozwiBMeyflw1GOCaD71QP2HTL/2JPKucPAv3yJvMeqsYiofVs+QMMb2obfWnO4sqVMYiPCIYIq7MFW2pLimgH76dHAOzrbnctY1fnlBVtd9ENWThWMvHrlrA5L7yKYidwTYnBaP8HWLwXz23zMBggyz0ZtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/1uInoYYvsxWt0bLtySBzHkEZRy8m/77CqZ1cwxICsc=;
 b=HUPZNkOABdDfAvfgHLSosS1DQDJnSui0r8EG2HzaNpSR0k2YZ2w6f3EV3plcqKAAB/xwCfdT5cWF/4hB7W+DUjpX0FTYJLV25bHdpAfduPT63V65dGkz2V5bZuPDnMPffAWeaC7U9Q81k+3wzPmA6aUURtxkS4bxD81xyTPLhrSXZT2WIIzECrcsoubn5fqRPgnYoxp44BZS6bC25Lcx9QkCDE6WaMjtEGpp0s/bpXPgekfKjtWvAbA0x+MNKFa+0xLHB9RVWI15Q8G5gkRglQGCBc9hxRRnRqkuqW+q3Zw0dugFpNw0kG9F4Go98gdw2ibzoCjIK69C6U4etbgiOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/1uInoYYvsxWt0bLtySBzHkEZRy8m/77CqZ1cwxICsc=;
 b=XCOrHpBwIUQY89R0YgDHedXZT/v1S9RnCkym+Q+OtijuNAgMSKgyXmpAzauB1g7UbPJTDq/t2rwBjAfe4gVUU+ipavTbwnkrtEOINrTQHcw6cTUJp+TTIQ4te36USeWTYY8Yiyo6BSeqLHvSx6jY+vK3KMA1T6rXodYA0nx65rU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA4PR04MB7726.eurprd04.prod.outlook.com (2603:10a6:102:ea::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Thu, 24 Oct
 2024 11:39:44 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 11:39:44 +0000
Message-ID: <0c491baf-f5b9-4508-8f3d-2ed4b3668c99@cherry.de>
Date: Thu, 24 Oct 2024 13:39:43 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] bitbake: enforce variables to be defined?
To: yocto@lists.yoctoproject.org, jairo.mejiaaponte@belden.com,
 "jmeyron@gmail.com" <jmeyron@gmail.com>
References: <567180e3-3c9c-4422-9e93-b8b206ade10c@cherry.de>
 <16955.1729763552548028616@lists.yoctoproject.org>
 <MW3PR18MB3513BD0421254E2F216DEDB38B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <MW3PR18MB3513BD0421254E2F216DEDB38B4E2@MW3PR18MB3513.namprd18.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0178.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b4::6) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA4PR04MB7726:EE_
X-MS-Office365-Filtering-Correlation-Id: 7da1ad0e-330c-48ac-f625-08dcf4208e2a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z2plcVoxT2dWbC9DQmR1Qy9GNEQwWFhJeEhyaVQ2R1g3VEtEd1o5a3lXaHM4?=
 =?utf-8?B?RTBsbmphSDZlb1JRS2hZSjNTampmWHpjakgwWmVVZkNncXl2Z0szMUpDUGpJ?=
 =?utf-8?B?ZFIxSlkxS1d3bXZ0K3M0Zlp0MUgreXlsclRITjE0bVRSMEFLWng3UHk3bWlQ?=
 =?utf-8?B?YXZNRkhiZW0zOUpJcTh1NFlmRTRxdUdCeHJkbzZnTnBqQ1Ixd241MGdzS0R2?=
 =?utf-8?B?eXQrYVEwQ2FpbDZOanVqb29FWkFhMUduSDFhR2xNT3ZyWlk3TjlURzQzbmY2?=
 =?utf-8?B?QmRDQzczazd2RnR6MXU1bGhCVVg2YzYzcitHZEV0Ti9pVlpFbithME5JVFov?=
 =?utf-8?B?QlAxRUZSNVpXT01JaE9YUzRoMVZBMDFTdlM0TDRNZ2R1WitpMnl4OEU0bGsz?=
 =?utf-8?B?QVFEdVd4R2tWQ1BuU0ZXc3RpTEZsYUdHeldGWkpLMk56OTU2V0FzcmdESE1I?=
 =?utf-8?B?L01BQTFZdE16RzZ3NTBjVFZoMmJ1SGlQKzhOUWpVb3NPalMrV3BKNGxOYWlp?=
 =?utf-8?B?ZFNiTFdzYXRxMzF1MkNocWxlenZRcnRkaTlyR2hNZmYrMmJhV3Aremo5TFBN?=
 =?utf-8?B?b0Zkbks1eCtuNG1KZ0VTejRtSCsxQmZRcU91RDlwQk8xSFE1bjYzRlYzcWZH?=
 =?utf-8?B?Ty8rR3MxZjF0QmR1NWdNZUlMNHk5YUcrZmlnWldpN21uSHNIcFJ5OG1QMHgr?=
 =?utf-8?B?MkNRaWlESXFXRDdjVFh1VGZub3RFUk43UlhtN25wK0VvRm9QTVFSVVdoUlJn?=
 =?utf-8?B?M2grbytRc3l1eXBmUUJ6OHFzUm1nV1VURnJuWTZDalZCdUIwTm9FaHk1czQ0?=
 =?utf-8?B?Q0RmNUpEYWxnV2ZwZUJweFlNc0dDMmRhNE82TVAwaFBXQW0rd1AzRHU5cG1a?=
 =?utf-8?B?VFNVL1ZEUWNSMGxsK0ZlT0g4bEVzczFZbzVHOGRxd2Z2UTJ5SEJNZGxpaVQv?=
 =?utf-8?B?YWpuMDgxK1FidWtGdmRHdHk3N0JhTjBlcEtjRFkxNDQzeTB1cm1DbnBzWDNC?=
 =?utf-8?B?SHBranI5aWIwZnJ3dWU5SkJ4NjdlWXZhdkVZWWRlSjVYN1N1d2NFbHo2SXIx?=
 =?utf-8?B?VDRMRUFxRTgrTUM2SkZ4R0h0RHQwQ2h5RW52aXJHRFU0OTRqMEtqTEtkQU14?=
 =?utf-8?B?akE3WDVERW04cTNHSXRSMXREMFZkdWYyRk5MZXgxRHhZRitJdVR2Z3ZoVjZp?=
 =?utf-8?B?QTJlcUQ2L0M1Zi9jblBPRGtvM1VhZXBYTkxxZktaUTk0V3NEZ0R4czhFWHQ1?=
 =?utf-8?B?QlFpcU1TTEsyQWhUU1p4ZkdzZXcvcWczS0t4L0U2K2RRdlJYV3VzNjJkVzZG?=
 =?utf-8?B?S1N0UzlRL1NuSWswQXB2RDRabTJIdllLT0tKZ2xUU0duWlkwMVYrczlsNzNq?=
 =?utf-8?B?WUlVMDk3UDY4SjhZeHkzNE5HNnMvZzJ4U0xFaDZRYmt3eEx3MFhueEcwQll2?=
 =?utf-8?B?OXFPRko3azdZd1pWSllScURyUWtEZ0NKcTBhcXgvdk5rME1GMDdBc1JaeTBn?=
 =?utf-8?B?R29FbzdBQjltY24vNDEwMmp6R1YyNzVzZXZrYVFyYUNFWjdySHN5cm5WWExJ?=
 =?utf-8?B?UlZ5ZGNRYmtMOGpUd3JiOWNEYUhnaWd4OThqczFVOUZBNmRVOGpGano2ait4?=
 =?utf-8?B?YmE2Rkh5WmNVejhTVVRhdHpNdENJQ25QMU01SjlBbkMxMFlybXpvdEdNTXNQ?=
 =?utf-8?B?UHFjWHdYT2tXL3drdVNVMGsrMFZySjQwUUtRWGQ3NjhDN1Z1WkZUS1RhTWxJ?=
 =?utf-8?Q?wXamDxO59AA3loBDz8=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(366016)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NWEyam1obHNPT0RuU3FCelp4TnJYem1YR3Zod0loMXlscWttSlJZNzY2T0xG?=
 =?utf-8?B?azhGK0lZNytpSEg5eXhQMXBVOUc1M2ZVMEFlMnpKcHZHTFE1VnpHbGxiZkVw?=
 =?utf-8?B?RXo0ZzJHNVlTaHFSbTZDbzJNMlBBUVBYQ0xRVFdKQS8vNVFzbmRjWklVdGlJ?=
 =?utf-8?B?b25iS0phbHd3MjV0c1krbWpiZWo1RUw4WXE4dFhPbEFlaGx0VVhlZEgrSVFq?=
 =?utf-8?B?a1B4VHpjcDRZNFdPcWc0a2p2ZEttZUZWclB4cngwd0FpWitrSDRJQ1hCK2Zl?=
 =?utf-8?B?MkdhMUhNcUZuOUhkZ3FiMmxSZjFQUVVzUElQUE5oenZpRDA3NUVYZG9aZWdL?=
 =?utf-8?B?OEQ5Z1B6RmJveXNRejVyUVBhUHhINlo3RGtqWmZ6M2VvUHlZbVlKNVVHRWZn?=
 =?utf-8?B?WjNSY3ZqVDhnTkMyaGRibEFNVGJPZXlvSlUwYURLM09PS2ZTYkRhMXk3UjRD?=
 =?utf-8?B?VEIrNi9paXFxYlFLSzN2eTdhZWZrWVlZL09HMDd4TU11Zjk2a2UzYUYyekYx?=
 =?utf-8?B?STRLemN3T2JoZkxDYkVXdTVvZGcwdzhWUVFOaVhlRzczdzdGT3VIQmF3dWlh?=
 =?utf-8?B?RDdmbkIremFyNnB3YjNQVXVmanVHVzlucC9qZmZ1WjBPWjFTejBjTDZYckxB?=
 =?utf-8?B?dmpQdC9HM0NVQlFRNzMvMGJ1cTlGTWIwNEtEZVdHNFFtdzVHcUFQSVZDUGtp?=
 =?utf-8?B?ZFFQMGlTTHU0bVlsSXFGTEdTQ1dhc0l5eU9FcndDQmtvNmF4emg2RWppRGgz?=
 =?utf-8?B?R24xaXJ1Rm1GK0dWZUREVFVJRXhGdVovQ3hJQjROSzRXRis4TFlJU05xU3hl?=
 =?utf-8?B?dWRqZVpITzNlWndyL29VSW9lR05ORHBvTnFCMm5BY1BjdkRNM1d4QVM0YzRG?=
 =?utf-8?B?dVZQcTJGYnBoYlUzdXhieXVobVZVMDQzWTBEMS9ER0lUQXBoV3MxR05xdWhS?=
 =?utf-8?B?SUtOd21MT3NYNThZQ3N2R3hWYmE0MWljd1RoTWVPblp1NTEza2xsanAwZkM1?=
 =?utf-8?B?aHF6VVdtbXNXc0hBWGVCYjh4OGovNnhiSlZFNExWbkhrV2o5YS92SC9NTUtz?=
 =?utf-8?B?MDhKc2VWcjZvU2xjRXFNWU9DR1RpUkxxMmR5R2ZyckJxTUlEUFN6ZFhESUNK?=
 =?utf-8?B?cVBObkJ4aHlIY08yNU01b09TT1pVb1NCOGlSS1piL1R6ZlJkSHZLbDRlcFVX?=
 =?utf-8?B?QTlqeHZRSnNvYnBjaFA1Y2tBTmNobHBMSlVtT21nMEp4SHg2N2hvR2tnazZI?=
 =?utf-8?B?S3lJL0V5MUE2R2dGL2x2YzdKRElpckZmYkdCUzZabXBzdndIR0Z6QkRNS3I5?=
 =?utf-8?B?MjdZT0NFUWtlSkxCYUUzSmN0TCtCUlVIR1FaMkJmZWsra21FQkVYSmkwc2dG?=
 =?utf-8?B?aUU5akd2aG90WlNLdzhIb2dxYXdKS1RjZGpnOXI5dG9TUWVaNUdTMzBHM3JI?=
 =?utf-8?B?NmNYTDFpMXYydHFRY0VGZzJKT0wwbW8wQlEvSG5rTE5HN1l3ZDJ6Y3MvVXI5?=
 =?utf-8?B?R282RXZXWlFOS203andZWDdSdHF6anBBWHJnbE04QXNrdEJxZXpWZ2srcXk2?=
 =?utf-8?B?aVQ0emZmNUVQTGFvaXBWdnhyRXNPaTBwOGM4eEpUQTdsOVpnSFNHWlpkYnpr?=
 =?utf-8?B?LzJWZFkzWHg1WnlVUHVuT0dQZFBjbWU4cDduNEYwY2o5SjE5bWlyZm15b01D?=
 =?utf-8?B?d2NjRVBXTzU0RzVyRG9zQ0RRZmhxT1VmWWE1aEdPUWxXL2RCQ084U3hVK0R1?=
 =?utf-8?B?SnJoSSt5WENVVnpQcE42S05zMDIrL20vOUx5WlFvdGpDUzhPYXpwb2VwdHEw?=
 =?utf-8?B?MU8yYVFFcElZVDRqN2pWaURtbFFyRndZZ1d0ZENkK1hGMVZnZG1STkFWbGNi?=
 =?utf-8?B?YXlPSmVSb1VwRHk4aUFBVGxVSHVrSHF0K2xNOHRhc1l1T0ZyL2c2ZGFTaEhC?=
 =?utf-8?B?V0daK0wvNXh2RmV5UENQekpPN284SC94SnZIYjA3N0txeWlpN0ZJRTA4eml0?=
 =?utf-8?B?UDJ0ckg4UEFraDFYeDhFOHpiUnFtY0xFNWdYNXJJbVc0VnQyU2pYQS9pYmZH?=
 =?utf-8?B?ZVRPUjVOVHllcy9ldEhYRndUMlpWci9ZdGhNdkc1Z25JaHM1ZjZWcVFMOUx3?=
 =?utf-8?B?ckUzdkVjSnNKdlRHeUlJT3lrdTVPQkhiNy8wYkRvZnpKWXpEU25QWm4zRTBq?=
 =?utf-8?B?K1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 7da1ad0e-330c-48ac-f625-08dcf4208e2a
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 11:39:44.2917
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TAEoIoXjXcp0+wxGjCzhj1WZygnW6a8ITSeDDRF7roOPJtQiqBWZQrpMNhVaNlYQBRnJ2/Nd4ureAfguwGHVg2vacBU4+suitX1xMTanuxM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7726
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Oct 2024 11:39:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64110

On 10/24/24 1:28 PM, Jairo Mejia Aponte via lists.yoctoproject.org wrote:
> You don't often get email from jairo.mejiaaponte=belden.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi,
> 
> If you need to add something to several recipes, you can create a bbclass and make the recipes inherit it.
> 
> Ex:
> 
> SUMMARY = "Enables/disables compile flags for builds"
> 
> TARGET_CFLAGS:append = "${@ ' -DTEST_ENV' if not d.getVar('RELEASE') else ''}"
> 
> The else is empty, maybe it is not entirely clear in the example. This kind of approach can be made  for any you want. You can make an append of a task and things like that.
> 
> Then the recipes would only need to have the line:
> 
> inherit <bbclass_name>
> 

Additionally, you could dynamically add a prefunc and postfunc for each 
task, provided you can detect which one is a shell task and not a python 
task (though maybe having set -e in a python's task's prefunc would be 
fine as well?), from anonymous python I guess?

Just throwing ideas right now.

Cheers,
Quentin

