Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86CDFD5323
	for <webhook@archiver.kernel.org>; Fri, 27 Feb 2026 12:04:51 +0000 (UTC)
Received: from DB3PR0202CU003.outbound.protection.outlook.com (DB3PR0202CU003.outbound.protection.outlook.com [52.101.84.68])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.94361.1772193885218141666
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Feb 2026 04:04:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=iIkL7A1L;
 spf=pass (domain: cherry.de, ip: 52.101.84.68, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bbFb18q6bnlU0I04CqGIy89DCLGHyMMmZWiKZWyLfwKqXYeZoQCCf2d1fQ5qPgAimUxjkENEfPbMELPBw9D+4pL295TWyLl0snvpiP8Jjz9ZkUt2fU8oBp8W+vz5wKcHGA47QVFR2ihUSnmZ7ING9SSGYBuINmnT7vwGnqoHrRW02dcNY+ghKvsV1MmItemzg96WXAFXYhPaRNUHcvKk+JgPg500Wf2YKfHFAMI2fNiMLtgGSvaMfofLuOnMW0ottpMeJhBsuz0U0ehjxnGcd6mck4SNsfPf9Ot/3EGci1Q2j3QvGflZQuqmmxbRXlUM4yvaTTjk2JFbEvj0CuCh5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eH8KoTdoxH1XsVedFXfb/+GKh3noFNzzMsWNsi0IEtU=;
 b=jfc8o/b+LOhHdf1hu9I5HFOw8k58U1RpgBmLS2QuLMWzHOhCq9jIrnZ+1//zYhcw8mRX93t15Epc8frGaYgpLdVnhbiQRX4VCFyQUpjjE4SlI5JyvpZWQVSuW6Yml8jC3DBxz9qyb1ULqM7ZUO1R2mm5cb5zRJaPuJDMPav2jo3UN0qBW4xUHvApeJ1TcbH6JO1Nhy+47ikBOqPLF0X7jae6VEg84VQwbkZQzP+uYHInSDS3+wEEnLH77hBLpFYgDam23xol2QfLvhCKyPMY+qMAC7k4lZyzMy8TUnl1WRHRkmog/bS4IrFJoZJednrTY7BOm3vPq6f3EkBPX78jrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eH8KoTdoxH1XsVedFXfb/+GKh3noFNzzMsWNsi0IEtU=;
 b=iIkL7A1LC5cvHxho9zpp8sokWMc4yA8VP0fEaDnSCUn3rAWqzXoA0dFkUjOQSx/HncEDi0iXS7VrzVYVaStA9qghSOmyBULbrif+dbX2mXN+FkUeajnq7uFW4msKv6YuOu9Q23ea1JgFfvFYe+XNhLxrpPfKmyV/JDHlpTQxJJ8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by DU2PR04MB8935.eurprd04.prod.outlook.com (2603:10a6:10:2e2::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 12:04:41 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%5]) with mapi id 15.20.9654.013; Fri, 27 Feb 2026
 12:04:41 +0000
Message-ID: <159c1439-255e-49fb-969a-610ef4ad6693@cherry.de>
Date: Fri, 27 Feb 2026 13:03:59 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] FIT image verification not working on imx8mm
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com,
 Vyacheslav Yurkov <uvv.mail@gmail.com>
References: <caa7c5c6-5fd5-4a73-8c74-b60fb9012a7c@rootcommit.com>
 <2c7cc712-18e6-4b8d-825c-35dec015166f@gmail.com>
 <7779efc5-639f-4fc1-8b6e-ff167471b728@rootcommit.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <7779efc5-639f-4fc1-8b6e-ff167471b728@rootcommit.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR04CA0113.eurprd04.prod.outlook.com
 (2603:10a6:803:64::48) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|DU2PR04MB8935:EE_
X-MS-Office365-Filtering-Correlation-Id: 2805904c-63a4-4975-e93e-08de75f8635a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7142099003;
X-Microsoft-Antispam-Message-Info: 
	fU2dQN7+PpZRto3Ecp7iL06Bdb0kqminCEbyOiJZd6Cru63BL94c8cx/g89rphre5wUrb17zi6b7BpaHPpdpWFro6oySr2bPvqEmgf/tQTzJlDVlKRfll/spdDaONaEd0WNHqRlRPiKJEbe+51cRQVzBaZIwfAOgeCWvUC7C/64ACHqHYHZo05WReBk/nkT1AIuOU5XwCNM+h5TqofQBhsCBBfbucINjyqUqjgVSA6DXHZFobUqJU4B+q0OLfyuOF6XsjG47wcf3X1ebz1f4FfkS7UC+tPcRADoWBI/l63Xavl1e08nvC5oAS/aJxjcBbeEYicz7aJetm9NWhZ7KStmsqn6KBnTfkaFqTI5nnG23Szan4yUOFHk2vAnQV0SoAgx3yHDccUcCm2CGqPZgScwQ/cgKz7S7AmW98wVO2hRO1d5OjmkWPWvHf4xCTw8bLS/jEJt+Maa2lcpmeEsWE6BjmeOOXyXWcrMmukkQBkbC/lzjbxV2PJz6h6aAdh92oSlTTMtdOVVzGmuXz+fFyB5uSwFTzTWTx8hd1mX/BbYiOnutaAnZaIiugvSCe3EN1CZQkXGisTb1ZKbzcL2mIaTSFSkY0OvteuFxu/IOOPTn2+2eupOSUiZEnpx0b8QAa2qDMz80XZyB3ouAWcT8p3L2+xyxFvgRvbkgK4Q7xykEa5+BSPItGU5ne3dZTBv0
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014)(7142099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cElWSFFwdmlkeXJtTmJTZ1B2MnprMzczbmxkWCtQMFZSWVJYUGpPaFEzWnJt?=
 =?utf-8?B?eTB0SE16SmVNRSs1OEJ6ckJ6NFBpRTlmRkhObkVnZEFTak5pNUFUSFExMXpL?=
 =?utf-8?B?NlB4aHlOT0ZlT3Rnc2tzQjczdW5PZ0RXUXZwZUR5OTlmVU4wZXdXUGhDVFY2?=
 =?utf-8?B?TDF2YzRacGFUWEpPRXhKeGJUQy9namlXVG5iZWYrN2ZOZ256d0JxWHJDWXpl?=
 =?utf-8?B?UnRjY3JlU2ZwYllQVEhiL2pNQlo0NXNGL0I5T0p3amZGRk1WbWwyTkRPWm80?=
 =?utf-8?B?c1E0cnlScHU1TEl6dGNRZnZnbmQxS2ZXYkhtN1ZLRVVkUzlQVGowM0N3SW8v?=
 =?utf-8?B?MWRBWW5IMEt3eUtNS1FTVmFpV2VhWFZmOStDU2tySkZNaHdOeFpuZEN2am9l?=
 =?utf-8?B?RXlUOU00L3JQWFNsRTVUMEJaS1plQWxHOFVMM2R1VklmMDk5Q3dmWmczQjRv?=
 =?utf-8?B?dlZobVIzekJZSks5blZxcWRRSVQ4YlU0Q0FmOWlyU1k2dzFqZW9QV0NTaFVq?=
 =?utf-8?B?QURFeFF6WXdtK1FrOUs2djNESTROd0lISVVpM1ZQZFJFTjdaRkRVSXBhWTlE?=
 =?utf-8?B?WW9Lb0xpc011YTRtMG1veEIyNlJsUFpqZDJYNjZsWjZ1UEVFMnllbHM2OXdD?=
 =?utf-8?B?S05BWVV3Y29wQ0lhZTJseG02QUFKQm9nTGRrdlVGdjlOZmtkdVJOUERQUlk0?=
 =?utf-8?B?R0pXSmVtaGVEVjVIY3pZQm8wcXVCNFgxcmZnMUkrUnhRMnRNWktVNlpRanQv?=
 =?utf-8?B?dHEweTlVK2JQWHZKUXpRcHdQZ2ZUa3FRaTE0WnVFY2x3VEg1R0pGWGVBYXUw?=
 =?utf-8?B?dkYrSWVhN3pwdGlJamdwWk4yMWZkTnFEZk90MDk3ZEVSRTBXcmVGRGVlTldD?=
 =?utf-8?B?NWtNVk0zb0ZBemxjT0hDM1RiYXVibnZ0SWJQd0xUZzdWa3YrUzlxOXVvTlYy?=
 =?utf-8?B?NnlGSXpabTRzOE5rS3dmZkJQWlhPM1p0T1hFd2tOeUtySVZ1OWNnd0NNZDlF?=
 =?utf-8?B?aVdHRGJkNml1NDBwWUlQMlM0WFhsc0NvMjViYnY5ZEFVakRUZ0JiM1p2cFMy?=
 =?utf-8?B?YXorR29ESTAxcDhGYWREUGNDYURZbENNdkZiUG11U3k4dEpnYjd1K1FNeUVY?=
 =?utf-8?B?LytqQ2lVeG1EbmNlTHVQMnd0UUNHYXc0azd5MXVWdktHQ2hSQm9vdmNJRFNQ?=
 =?utf-8?B?N3RuY0FJV1NKNUdWem9YQXBSOVdqM3laUkUxTFRVeEhrUC9UYmNuejVXZU1T?=
 =?utf-8?B?SlVjeGVXMXcxengwNmZtbGNQZjc1YTA4dEZxbmR1UXBzR0VhVkJQZko0Sk1W?=
 =?utf-8?B?YjdUdXpJR2p2WHFMRllmOEpxcnczdCt4K0p1R3Y2d3BQbEswM2tHUzlyaCs0?=
 =?utf-8?B?d1NsWEhYdDMyOEFRa0lKdFIraTB0eFZKMHE1UWwxRUd2Q2pVaWRjSWlHYVFC?=
 =?utf-8?B?Nmt2d1lBaXBxUHF5MjFoYnVJQ2VLbk9NdDk5VFZtSDc3UEcwdytKVnhMeVNU?=
 =?utf-8?B?ZWRqcUpGRHV5RTVjTWtDaFZsUXl3KzdGY2UrZ3ptV1BvMzUyelI3UG9pTk1z?=
 =?utf-8?B?S3dTTmVadU5DZ0x0SHFzMGI2ZGRjd2xEQVpCemZXNTR5Q1VqZUpFdHZnM2w5?=
 =?utf-8?B?aTFDSStQRE1zejhyRU5lc211OXlHbDB2STFRZXJpYnNPenVhUFVnY2gxYmFG?=
 =?utf-8?B?WHIrUGd0ZVZMd01JNStPQzZSVjNnSkVMcnhmUnc5a2ZmR09CSU9IbFNDaG4w?=
 =?utf-8?B?TnBzVGFWdFd1V3piWlhpMnljME5sSlVZcmxEME4vbVBrQ2hRMnI0YjFjV1J3?=
 =?utf-8?B?OFJrVWZaT01XYXdBTE9jMDg5blRnbE1ua0c4ZytXR0ZQSFJVZnB0clFwaW1X?=
 =?utf-8?B?cGZqcG9TdmpiaWYxOWQ3RWlJcjREaG0wT3NrWVJtOFRYQ1RUdFVGeGNVU2Fm?=
 =?utf-8?B?M1ZSQlJGSWlpTWhzTmc5aFovMzR5cys5bCtBUTVNRG5Uc3l5SFJlSFloVFAw?=
 =?utf-8?B?eStKZzdnNS96bUJhREVrcXMvSGhOYnZlV1IzRnhmSGJyYkIrM1ZJQ0g1OXp2?=
 =?utf-8?B?U2hBZUlIelNjUzE2SDBvSUhiNWQ0QU9oOUtOQ2FLSUkrTWxVcnVxcG9DUjgw?=
 =?utf-8?B?NGJZZTlTTFNmNFZHWUtabW8wOU5RUkU0MVE3V1pGc2xmYk9sUXgrMjdqdSto?=
 =?utf-8?B?eWRDSEhHczgvVVdvU1Fsb2lQZGp6Q2VvdXhwZ1dqLy92Vmt3TjMvYnpFdDBl?=
 =?utf-8?B?MW8yeTBBbVRmYnhva0xsd3M0ZTBsb2tNWnpOQ2dRYmRUM2U0YVBuTUdSY1JQ?=
 =?utf-8?B?S24zVmNWUERGY0tucEJQNW5TWXBoUDJrMjVVNGNXZC8wdWZzWklWZz09?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 2805904c-63a4-4975-e93e-08de75f8635a
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 12:04:41.3947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/ZPUYzZR7ENOtbb2Uib3e6QXWc99nD6Gfdj4+yYcjP/j6zbrfXdfhL7tRr5gNoTbrW7ym//jKAARKdx6S+llEDSDDXzjjLmKgSDjIbcSH4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8935
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Feb 2026 12:04:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66282

Hi Michael,

On 2/22/26 5:07 PM, Michael Opdenacker via lists.yoctoproject.org wrote:
> Hi Slava,
> 
> Thanks a lot for having a look at this issue!
> 
> On 2/22/26 2:50 PM, Vyacheslav Yurkov wrote:
>> Hi Michael,
>> I believe the message is correct:
>>
>> > Verifying Hash Integrity ... sha256+ OK
>>
>> The "+" sign means the signature verification succeeded. The "-" would 
>> mean otherwise.
>>
>> I've just tried again to boot a fit image built without 
>> UBOOT_SIGN_ENABLE and got:
>>
>> > No 'signature' subnode found for '<NULL>' hash node in 'conf-my-dtb' 
>> config node
> 
> I don't think that's the case, because if I replace my "fitImage" file 
> by an unsigned one, it is still gladly accepted by U-Boot:
> 

You need to enforce signature verification such that a missing signature 
means you cannot boot proper, as far as I remember, this is NOT the default.

See the official documentation for FIT signature: 
https://docs.u-boot.org/en/latest/usage/fit/signature.html#public-key-storage

You need a "required" property (in your SPL DTB's public key node!!!) 
set to either conf or images. I believe the best practice for security 
is conf.

I also recommend triple checking your defconfig to make sure you cannot 
boot non-FIT images (e.g. legacy format) which would allow an attacker 
to bypass the signature mechanism even if enforced for FIT images.

Cheers,
Quentin

