Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 096DFE77171
	for <webhook@archiver.kernel.org>; Wed,  4 Dec 2024 09:47:03 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.44])
 by mx.groups.io with SMTP id smtpd.web10.10386.1733305609634181203
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2024 01:46:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=dIauyGJ/;
 spf=pass (domain: cherry.de, ip: 40.107.21.44, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dUzan4I0Bgx6abWkjo3aV2kMpayof2yt9Cr1+vpyXDovCRCyW9O9FVXEham84+nw99RakNKUqavOBNuNNQlUNidp8pOpqAIikS6BHQ8zob0Lqibmh/oY+pNM0tDyT4gYZZfxPVRvbqDLsBcciQdEHUN5sI9Mo/SYePP/Jvad8ntEJVhBTaRucShzsERuuR66BW5wMoPma0DMU0HZydM/nbm3aZRv6DXo9Z/6OzCa+zJq8dlVl0QF5CGUoyla9poccEcArmFkb8VvWDqHy9FjNTwtDBhIIHJGAQFUzKJz/9Rs9M/aO10Ic8YB5XPzm0lIspWSW54Smr3e3jlxGTbU8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtrUBo6oOyXZCx5RozzmcWMDPCOpGo4qJGINs2rIrqI=;
 b=psokxMQ9NlVKmaKD6ldNrCkdGZJG/1Jly0bwFoL74xiC3a8WRvz9W/Hcfl5RcHq4EFXaKsKJL14lV1ot6/79XMw71wCwVqj0eQuR1dZ7nXx4s5/KJ+im8qYpkyDJEgj+Sq+vq/0QhqMYK713RKCSYeIhb8m0YLrbmJkXMlXsZUMWk2+/3XaDL8oTYRJ10qiTsGgGD+YngqCC3Z6IW2yu1NHxO19+8pFenfy1yigta82BJs5ZV1jL7V1E8N8jFEk349m2uqBNd7LjiIJ1GtlRYxDeMTSj1oFCa5pxsQkKToYUFmRAXuIkn1uS2C+tb97GzTxuaM2Sk3UMLDav+LQVkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mtrUBo6oOyXZCx5RozzmcWMDPCOpGo4qJGINs2rIrqI=;
 b=dIauyGJ/414zFstm/AGAK6M9xq/7yeqE+dcLan6A4LtT4Oqt6NOA9aOnZV+HboshzI8MOfHciJkoR2OOeoP4ygxxpqiNPUPi2mP2ZwdG+1/GcVPwP12bBe01tBg1Qq9w9ezm8ipoC1BmMuEnV8gKJKb4AMS2ry0ZQZvg9w1uW1A=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VE1PR04MB7214.eurprd04.prod.outlook.com (2603:10a6:800:1a6::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Wed, 4 Dec
 2024 09:46:44 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8230.010; Wed, 4 Dec 2024
 09:46:44 +0000
Message-ID: <a7e30b47-4e2a-477d-b7b3-ab059af37c4d@cherry.de>
Date: Wed, 4 Dec 2024 10:46:43 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Backporting in Yocto
To: aravind posina <posinaaravind0205@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CALvuYr=oud5yZHATSO0PSxGsvY6BhAUGiP9kq=oZE5o-c5MgUA@mail.gmail.com>
 <465a05d1-4268-476e-bd83-5eb82bd62922@cherry.de>
 <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALvuYr=6J5C4U6H4teLpa9HvKqto7wn5COfk9f9iJBWeK2dRDg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VE1PR04MB7214:EE_
X-MS-Office365-Filtering-Correlation-Id: 0804dc7a-5687-4579-f4c1-08dd14488fb8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VmFJaCtscVRpOVFUbXhiWlUwL0hqazE2YW5aeHVPRDk0N2ljWHpuTmJGWkMr?=
 =?utf-8?B?YW1DdjVqbXQ4OHhiektGSlg4L0lvTmRSMUg4bjBDMUxIbDdLV0lVVHZSWmZm?=
 =?utf-8?B?ZGpTM3VoUWtoaGpKN1dwYWF0eWE3TFZKazRCSG1XMDlScHFZL0ptc2JGVFJz?=
 =?utf-8?B?SDFBZ1dnVmxnaEVBTGRTSEZFYmdxaXJFV3hBTk12WEpwZDRQQ1BySDlKWCtX?=
 =?utf-8?B?ZnNlWEdic0s0V1VSSHRLTEsxbWpZcXhONUg4a3l6OFhNL1JudHhUam04MXR5?=
 =?utf-8?B?SW5DaEhYVmw2SzRWMWpJTVJQS2hoTW5MeXdGbUF5WXVZajN1V0tNR2JFSmw4?=
 =?utf-8?B?ZWhWcFpJWWpQMnQyMVdkZFBreFQzMmpIUDdRak9BTmQ1alpvQzJhL2VVWTNv?=
 =?utf-8?B?ZWYrb3AveVNGWk5CTHE4R1dRRklHd2drczNVb1hGWEpEMUdYUEl3ZjR2NVJZ?=
 =?utf-8?B?MU1ZYWV4Q2VkbFB1VWRaak4yZldRVFhvWDFNeXBiVzBqSFBMenJMbjVmQTU4?=
 =?utf-8?B?ZkZob0RveTgrRngyc0NCaFN5aXZVN2FFaVRnMWRUbXZnWUpuYVQrM3hmZFZ4?=
 =?utf-8?B?aXBEYk5qL0RQS2l2eDhucDh0cnRwa0RGQUM0ZHg5TkhKMDFIMlFDaWFMOWxV?=
 =?utf-8?B?RzY5ZGN5dHNNdTlVcDlEUTJMNHBpalB2SVkzSCsyaWR0b0liOXgyUU1CWEhI?=
 =?utf-8?B?UlE4N2hxVlpSZmpxaGJlNXoyU3I4TmM4dEZFMTNEeVhiRUUrM0ZFdHc4ZFNK?=
 =?utf-8?B?YlYxcEo4alkwQzNKemEzMksyM2F5MktzdjVUOXkxczROQTlBWnhGU1NGZ25F?=
 =?utf-8?B?TnBOd0FyVmU0M3dHWlZueGJYNkd1cnVKL0t0UTdqOHZjbHdQYWdZOVN2aFJF?=
 =?utf-8?B?cHUyMDJ0UElPM0thU1RwdEI2N0FDRFZKcVNSWDN3MW9FT05QU0w2SkdkYnMr?=
 =?utf-8?B?M0ZhdnZuTzRuc3FKYmtJZG1oeFczcHhZa3NodmFDY1hRSG95Wm1rOXpvbmx1?=
 =?utf-8?B?NTVVSEpWYllONG8wM1lBaXdpNS9sdlZDMjI3UGM5b0pFdzE3MjVHNk8vYUxp?=
 =?utf-8?B?Z3ptUGxqRFViNTlQUENablJuM0paanpxZk5Rb012QzF1QnZoWjl4UnA0NVhX?=
 =?utf-8?B?Zzc4b2JqUFNESS80YjBsQlBQcHA0cjlReCtzalZ2V01BRFRBZWVabHdtb1Vu?=
 =?utf-8?B?bGZCbEpMV0NxbDdIUHJMek5wMXZXYVIrTkxKMzQycmhPUWNIVEdLVy9lY09a?=
 =?utf-8?B?ZUJ0Y3Q5Q1lnMnYxci93M3IyZDZ0NndKMWE0NVM0Q2hPK0M4RXVWZW9zRmtj?=
 =?utf-8?B?T0VNNUpFVzF5aHc4TTYzUndpbVBjUld2UDFrajI5dnI4RUM1T0R4TTlINVVE?=
 =?utf-8?B?S1orOUNWTThsYlhrOUNjU1FiemlRTC9xdENiOFk0R29ZYTRERWFiZjBPNGc2?=
 =?utf-8?B?UGNMT2owWjBHY1BNR1p5a09qZitLOHB6MFk0a0c4SmVSaFg5bElaTkVhOHRP?=
 =?utf-8?B?UUs3U2xOOE5kK1oyTUh1UU1QZndoSDR4K2tieDlvY2RjazJ3U1hBckU4SFg5?=
 =?utf-8?B?c0RjRnQ2QzFTdXFOcHA4SjU0VUdDZjluZng4ZlZyQy9STDBZL0FWREFSUHdo?=
 =?utf-8?B?TG51VXdTUkk4aXMybUlVNUkrL2t5QkNhWjh3TmluUzJjYi9xcWgrdzZKWVdl?=
 =?utf-8?B?N0pKUG5oM05kdjVCUDBDSzdaM1NzODQ0L2VnV0tacTFaT2RzaThaQUtGVjJq?=
 =?utf-8?B?N3FoTmJQdk1aSWRGVnhwL2hhV0RsNzlNYlAweVN3TjFCSDJ5NFRxVEVETmpJ?=
 =?utf-8?B?V2lTRG1HQUdHeDNrK20rZz09?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SGh5SjlmMXNRSjBRc2hBWDNsd1NCR2twOEFmSE1jZVNSdldqeGFYRzR6U3VE?=
 =?utf-8?B?NzVxay9HQTJQNFU1ZTZYMjV4T2hybEJZNHdPeXJ1S2EwVVBCQmdNS2VwdGRu?=
 =?utf-8?B?WVNBdUROZVZ0KzM0bkNiU3ZlUnRnVUhqU3FuMG1LVnMvc2M1TFY5aFZxNDND?=
 =?utf-8?B?QnRqRGhnVVY4Mzk1eE5PdVN0NlZ5K2lKeVg5dlp2Ylh3TTBucWN0bGFUdjNS?=
 =?utf-8?B?c2VMZEptcjloRzVHYzJKalh6Z090MVZIbU9wZGUzT0szLzRTZ05JMlllSlp0?=
 =?utf-8?B?MDNGdlczeVRrSnpNQ2o0NCtKMTdwOW15eDJRZG9CTkg0bzBZUjlDQTFiSm5J?=
 =?utf-8?B?UGNaMjBtcE9NZ3lENGo5SHNtQ2JBSGczMGdPbnUzWmhJRkUxeTNINUZWM0d1?=
 =?utf-8?B?S1BqbFNHb3lLWnpVeCtTRm5pQnlDd0hnYXBucDYreTZUdmFEcWhyaFQ1TUkv?=
 =?utf-8?B?czhTdy9nQkNtNEpsVWF0YUU0Q1hYZWEvYXFmT0x4NzNaaFZTSDRDZlRITDRr?=
 =?utf-8?B?STBObDdJV1lSUjRtNHVtdjFKK1MyV3pqUHpXeWY3VlJZcllWSTJJbWt2OXlV?=
 =?utf-8?B?QURkQ0ZFVVEyTWpWcFZFa2FlWVdRK1NTNCtOVTFJUmtjU2FOMFhUcWZpZzFY?=
 =?utf-8?B?M1Z5SWEyV1I3aS9saXRKWXVSVWdXaTJqVEpTR1VIVXlLRGtBdzc2bUpyTmVs?=
 =?utf-8?B?VncrVmxmYVZLWllINVpvQStsOGtBbURTSVZwRDEzZUp4a0F6b3daeUJoL2dS?=
 =?utf-8?B?MWJmMWZPVHQ1dVN3Vit4TlhhVXZIUU1KNkJXR3BNOHdUZkZac3dJMUtnMVBS?=
 =?utf-8?B?OXNsWi96c05HdFNqSE5rbXlYVm1ab2U4c0lEZU1jdFIyYTBYVUc1dkpGSmtO?=
 =?utf-8?B?Uk9aWWFmQy9EbUJmcXIvSkF5d0lLNHdXb21lZmpDRW1HaU9qU2F2ZlI1UEh3?=
 =?utf-8?B?M2hIb01jZks1QVlHZkdPSnFnd05ISkZBMEVyMmNISDVLMzB4bkNZVy83TnVy?=
 =?utf-8?B?b0tYb0RyUGRWOGJ1eU1VUFBYSzlEQVN4TldCMEFYZUVSQ05nTklmTkZuT2hV?=
 =?utf-8?B?K1NYRm4renpNSVhocm9GNnVZTFVLR3p0eG93U3ZWaDJyTEtZQ3lscHpqZ09v?=
 =?utf-8?B?d3I3S2FONEEwY1JSMHlQcnFiZytyZHBlNHRDYWthLzZvTGYrN1c4eUpLY09R?=
 =?utf-8?B?NHZXTHB1aFRhVk9CYmR6bkp1L0xvaGNYOGdCUGhqZXBiamlNVmdycjZva3lB?=
 =?utf-8?B?NUpwWGJNVFpsdXdFNm1NbUdZUk9LSEV0WEJtUGoxVlpRdENFMnRzamJHdjhT?=
 =?utf-8?B?WEFDc3dUOWxBemVzbzg5aXI5Z3dGYktzT21CaUpOYWNteXp4cEZOV2pUeWV3?=
 =?utf-8?B?WEM1UWhHSmxmTGl2dFlPR2VaMHJyMXVFcTFlZ3R3dE85cFVpbEl3cE1QaE1D?=
 =?utf-8?B?MFQ0Zlk3cVZBd3UzL2pPa0p6dkdFbjN5WUFGMkYvZXk2Rzg4M3NCS3VFSzNy?=
 =?utf-8?B?MEFPYUw5TXp2eUZ6V0hCQUl6NHhUN05CZjNhSXZicWo5NEZCOGNwUTNBVTRY?=
 =?utf-8?B?VjJUeFF1M05tN3ZCQlhVdTJONUJmcVNGbkFmYWdpOGdNZnFpQWdPejh1ZlFE?=
 =?utf-8?B?bkVmQmJuN1MyNDY5OUlHMTBBN2MvN3p6QmdtQWVTYjhuVnRwL0dCNm1SSVFS?=
 =?utf-8?B?SGN6WFhBdTEyUVNTaDNXc2hNNVJGUkZ5emEvNkZZaDEvMWpsNTlIdWQ2WFlk?=
 =?utf-8?B?Mm1zR3Rkbk1heDZFRjlLNlBMaXVxdW5VbUZRMVNjbTN6dTlNM3VDS0o1WUto?=
 =?utf-8?B?dmNOQ3EvOUFMdW1WSW9LSG5pRThmNHdyekxJMFRIS2FXcWdJcmxKaTdSRTVQ?=
 =?utf-8?B?eGNqYi9HcUhrMzAxSUk2M05kb2pETTJOK0xJTWM3K3lLSkhUUkFhTUFnaUpF?=
 =?utf-8?B?MDRsSUprbFlaeE84V1RQSjNQemJLVXBLN1I1QlB6MEtnVHQzSU5VSWVKU2cy?=
 =?utf-8?B?NG5rUWRJYUQ0YlBxWFBxck40ejhzT1JhcGNDNGxXeGw4Y1NXck9zTjRTNjVq?=
 =?utf-8?B?UWozd0NTN3BiQVJtY2JGVzZEd1dmcUR6UjBxbThXdllxRUZFSDQ1Z1VybHFN?=
 =?utf-8?B?ZlJQV3VtSWI1ZCtsQ3FXdGorcU9pOExCVFV4aGRrNVZGYm9PQ2hQUHZGcjha?=
 =?utf-8?B?c0E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 0804dc7a-5687-4579-f4c1-08dd14488fb8
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2024 09:46:43.9872
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JUyNr4nSM9ntyC9kwr67vUqFEmyHpt0415DTGVZyW8lY7Rf43D74XbbDRYvCF1fYXnp/loPVWJySdRbSVr+PqBz7ftW7PqeKkK+MQnG9BLg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7214
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Dec 2024 09:47:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64399

Hi,

On 12/4/24 6:35 AM, aravind posina wrote:
> Hi all
> can you help me out from the below error.
> 
> ERROR: backports-cypress-5.15.58-r0 do_compile: oe_runmake failed
> ERROR: backports-cypress-5.15.58-r0 do_compile:
> ExecutionError('/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/run.do_compile.60669',
> 1, None, None)
> ERROR: Logfile of failure stored in:
> /home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/temp/log.do_compile.60669
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | NOTE: make -j 4
> KERNEL_SRC=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source
> KERNEL_PATH=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source
> KERNEL_VERSION=5.10.76-bsp-yocto-ampliphy-i.mx6ul-pd21.2.1
> CC=arm-phytec-linux-gnueabi-gcc  -mno-thumb-interwork -marm -fuse-ld=bfd
> -fmacro-prefix-map=/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=/usr/src/debug/backports-cypress/5.15.58-r0
> 
>   -fdebug-prefix-map=/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0=/usr/src/debug/backports-cypress/5.15.58-r0
> 
>   -fdebug-prefix-map=/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/recipe-sysroot=
> 
>   -fdebug-prefix-map=/home/phytec/sanava-kernel/yocto/build/tmp/work/phyboard_segin_imx6ul_7-phytec-linux-gnueabi/backports-cypress/5.15.58-r0/recipe-sysroot-native=
>   -fdebug-prefix-map=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-source=/usr/src/kernel
> LD=arm-phytec-linux-gnueabi-ld.bfd   AR=arm-phytec-linux-gnueabi-ar
>   O=/home/phytec/sanava-kernel/yocto/build/tmp/work-shared/phyboard-segin-imx6ul-7/kernel-build-artifacts
> KBUILD_EXTRA_SYMBOLS=
> | Generating local configuration database from kernel ... done.
> | make[5]: 'conf' is up to date.
> | .config:1552:warning: symbol value 'm' invalid for CRYPTO_GF128MUL
> | .config:1561:warning: symbol value 'm' invalid for CRYPTO_GCM
> | .config:1563:warning: symbol value 'm' invalid for CRYPTO_CTR
> | .config:1570:warning: symbol value 'm' invalid for CRYPTO_GHASH
> | .config:1612:warning: symbol value 'm' invalid for CRC_CCITT

This doesn't look too good.

> | *
> | * Restart config...
> | *
> | *
> | * Backports from "Linux" "v5.15.58-2024_0118-0-g1e8368db6e12" (backports
> "v5.15.58-1-0-g42a95ce7")
> | *
> | Compile the package with debug info (BACKPORTED_DEBUG_INFO) [N/y/?] n
> | Build all compat code (BPAUTO_USERSEL_BUILD_ALL) [N/y/?] n
> | cfg80211 - wireless configuration API (CFG80211) [M/n/?] m
> |   nl80211 testmode command (NL80211_TESTMODE) [N/y/?] n
> |   enable developer warnings (CFG80211_DEVELOPER_WARNINGS) [N/y/?] n
> |   cfg80211 certification onus (CFG80211_CERTIFICATION_ONUS) [N/y/?] n
> |   enable powersave by default (CFG80211_DEFAULT_PS) [Y/n/?] y
> |   cfg80211 DebugFS entries (CFG80211_DEBUGFS) [N/y/?] n
> |   support CRDA (CFG80211_CRDA_SUPPORT) [Y/n/?] y
> |   cfg80211 wireless extensions compatibility (CFG80211_WEXT) [N/y/?] (NEW)
> | Error in reading or end of file.

And this is probably the issue? I assume this is waiting for some 
interactive session so the user can say yes or no and nothing is input 
as part of the build so it fails or is stuck there until it times out.

This is likely due to using a defconfig/.config that was made for one 
kernel version being used for another kernel version.

Cheers,
Quentin

