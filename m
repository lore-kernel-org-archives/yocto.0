Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76C3CCFA18
	for <webhook@archiver.kernel.org>; Wed,  5 Nov 2025 16:42:57 +0000 (UTC)
Received: from OSPPR02CU001.outbound.protection.outlook.com (OSPPR02CU001.outbound.protection.outlook.com [40.107.159.12])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.14142.1762360973021709605
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Nov 2025 08:42:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Ac1gcomo;
 spf=pass (domain: cherry.de, ip: 40.107.159.12, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sIgjYRCu3+k9Y+h3L6rrPI66QD8Q/JPJOfNcvU4IV5jS34tOHQGoWIbAEFKDfT1OLQcAfXxWpimxnHvxSGOTCpjbdlAgxpkfb/lRXVl5o3El+x2pnlLmAcfSL8rAAOjY+JnM9Z0htSE+ZHkeAoYvIT0TXluTa+SGjHbpDztlb9rXhCjmv8VTVKTEcCMrVH91oS/9LNisMqK3+WyW0Hh7XmDFOR/cKIsz+dOSHx9FljYV0R/hDhHMNS88YBQyrXLI780TrXGg9ZFHxi7Hum/QVgcKSqbctmxos+lGRHoGjglFbM44SHu107ktdtK0cc07KGZupPZVUlDqyU8nXjpVJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+w4v3hsPZpeyUshoLGqvW5aapTcYUH5Gug64GE63yGo=;
 b=OHl8lZLeUtsOq1HD8ljcfGf0Kqvn2kIdC+o7TISzK+Cb2Hw9l/gJprEFQu+n8biVYkBRAZT0+2bq8UTmDRE/8kjgkCyr01ibKCrTAl4d8nE4EbzA43j+dkq0uiC3HgvTnia/B/6ZmjH5NPYF33oM0/83BxguKXD/3AsKx0EvxtbwIsGEwlfFnf3gI9SYJnxW+kr9R4wbUzSRjw4oQ22qcJMOqa2W4eWxiwEVrjsVTNrzEPs70HrlEq7OsY3hsJkz2ybZ+nF46p6FNnwqQaoOlMZfRUaggZlsLzj221qm1OfEttq61CQi1+jCFNDDPT+z2srPgPpygp7IJMzi3ZpFxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+w4v3hsPZpeyUshoLGqvW5aapTcYUH5Gug64GE63yGo=;
 b=Ac1gcomoWGNVU/pfVOMPI0k5TVmj3rWSJYTSyYsLo5aHYGPnEXKk1R3ggb1gAKvpT8qEKcwCuPKeO4b5KIv59xiQF1nbLm+rr7Kyf/EaoM0eMe1PDUfVuVlcywNiG+AcCRjAghwiM7DfS3gmHfo7JJD6y3yZ6GCTa0nzQXh8TtY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA1PR04MB10985.eurprd04.prod.outlook.com (2603:10a6:102:48a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.15; Wed, 5 Nov
 2025 16:42:48 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9275.013; Wed, 5 Nov 2025
 16:42:48 +0000
Message-ID: <72a8549a-e764-499c-b6db-c438044f4bc7@cherry.de>
Date: Wed, 5 Nov 2025 17:42:47 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] looking for YP-supported Rockchip RK3588-based eval board
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <14356bf6-7285-5b69-2a2c-92bb42f1c22b@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <14356bf6-7285-5b69-2a2c-92bb42f1c22b@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: FR2P281CA0173.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::8) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA1PR04MB10985:EE_
X-MS-Office365-Filtering-Correlation-Id: f198fd9d-d2b0-4813-cae1-08de1c8a5a9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?SnE4NHBEVEFWVVlMZG52a3dFbW9BUUJzYkpGVnV3RUhWZ2FaZTU1eGFxSHFh?=
 =?utf-8?B?ZmZxQVU0cStTOE5CNUdmL3ZieDc1Q1pKTHFabThLQXI0ZU8zY1NSN2EwTnRx?=
 =?utf-8?B?eW5PMDI2MHJXZEZaL2lhcWszZm02VzJDVzVnbndZRlJkbWU3RzFlZHZnYjFY?=
 =?utf-8?B?L25WT3JqSFAvNUhJTVRrZlBob0s5bWNHa1VrTzZEYUNycjkrZGsxZUhBVzYz?=
 =?utf-8?B?UmtYWlhueWg3RXo3VmlKRitBVU9DN3pzcFltMWpmS2FJdFVxYW14Y3MyYk9M?=
 =?utf-8?B?emltNWN3U2RsZnlDZ2FSTXlYazcyZjc5V3lIY0RSMk1rSzkrSlp6eForWmhl?=
 =?utf-8?B?ZkMrV1ZZTkxEWFp5TzhrSHJLdmNuZVQ2NlFFdmo4YVRCMVN4RnRjcW5HQUs5?=
 =?utf-8?B?ZmV6SWk4U3c4T0d0OTBTYzkrbG5uZHIvVkpEcEpNbmxOTjlDdC9kN2p5cnJD?=
 =?utf-8?B?ekUydWpNVUk2THpQUlZMT1lWcVhqOExEd2RqVHk0WTQzVmJMMXEreGZUNEp5?=
 =?utf-8?B?emJuZXkzSHB3dXBmNE1RdHc1alpidmZucyswSG1oZFZsbWFiWlpCT0gvc0JR?=
 =?utf-8?B?dmJQSUdDYnZQV1BHTk5CTkdPbkVRUWpMeVorRlgvMFZEb3hHSVkwZDZRd0Z4?=
 =?utf-8?B?R0ZJcVlBK3QyYzhvaWtrN1I0M1g0bDFBK3ZCMElORjR2MzQ4cXMwcHM0UUNV?=
 =?utf-8?B?Z2tnMUtYQnJKOTZxZDh2TWxuK1YwcHowbi9VU3hoSkVENHBsbTJYb2xRbklJ?=
 =?utf-8?B?dFYzbFZuN0kxOGJmTnNSUmZ6RHdGMDdGem1EbGRVTSt3ZE1PWnY5ZjdXaUUv?=
 =?utf-8?B?aW8xYkNLT3NPUFRscTZ4YTZrdFpSZmhybHp4UlJRTmxBVzZLaHF5VkVLVEl0?=
 =?utf-8?B?TlpQR3kxdlgwUy9oejVOK0dVeDNOdVZmWjVVUjh6SU1aNG5VamI2N0lwcllH?=
 =?utf-8?B?M1R5czVMT2pyUWZNeVlKbWExOXgwYk5LbTBLUkxSOGVDakxTTkhSOTRuVTBl?=
 =?utf-8?B?SnRvcFo1QW9lclUyb2o1OVZiWFVwUXdtdGtUeXJaWkJ5VU5KY1BGNDJDRFI0?=
 =?utf-8?B?U2JWTHE0Q040QUtySlJaSXdxNFlYVktoRTVHSG5XM0R1WXkrbkhUZjRmRWt1?=
 =?utf-8?B?QWVibkJKZXBxVzRhYUp4NndSS3diRGY2Wkh5UnMrMVBCM09nUHZ5clB5Qmwx?=
 =?utf-8?B?dHNwSGdoNVQ1bnpTUzFaZi9LSldHK2RwUVNRMTUvM2xSQjc5OFlkM3dvWDdx?=
 =?utf-8?B?aFVMWGkzMVltYzVMd3FxbnZJcWU4Z3lpcWdHY2hFbnpyZm9CREtRYi9sNFZh?=
 =?utf-8?B?N05LSTh2dUFZanE1ZUVWVW8wVWZvZDVzc1JBamVIeWZoQzlMeFNFV1FsS05S?=
 =?utf-8?B?UHhkeEo2cVRHRVZoa01tYWxsNUZZZjhENHpPeDBvTFhmSkZtMDM4UlhZbVdH?=
 =?utf-8?B?WDVlWTdaTDJFeG53Q3BJa3VHYURacGhNTHp0TTgzanR6bzRLYVRmdjlPT0lD?=
 =?utf-8?B?OE8yWXltS0FHdWZBR0lNaVY4Sm52VjhWYU5JYUpwVzNPYWx3aE9uNXk0elNB?=
 =?utf-8?B?V1h0V0FWcWgwdnAzZ25MdFNWdDlTc0xRK2ViK2FmT3VDZmlSTlRBN2lIVGZ0?=
 =?utf-8?B?ckY4VnJuRmhURHJnVVJlQnlrTWg2TFNyaFlQT3cvNTZjSGNVcS9RYTBoQjRB?=
 =?utf-8?B?SEdESCttMTZ0ZDJDOFY0Y3NWY3daRzByQTRaZWpEVFd3UTNnSDd2QjArcVV3?=
 =?utf-8?B?L0ZuRENPMUZzOG9Ub1VXUnIwQ3BIaDNNTkZadm9SZXhBUENjVTdjMEZrNE5W?=
 =?utf-8?B?bjFra3FEUlZlSzlTeFhGT0REL1VrbG9tVzlMRWoyQ3Btd0k0Q2dVSWFpcWE0?=
 =?utf-8?B?allYUHNuZ05LYTUzalpLc3JNRlh6VGpLaFNLZjgwd2MvQUE9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cXVSL3pGNTE1UDFFc0ttU3pFbGZMWndSWHpqVXJlaWRrbE4yZU56WTk5bGU2?=
 =?utf-8?B?K0w0THg1NlZVbkpzR3YwOEQ5OHpKVXZPWFVUSmswV2hEblJjamhPYXdNZm1S?=
 =?utf-8?B?b0JPbjM1QlJ0YWRCNFMweEZHbGxHekY5Zk9yajVzWDdDR29tQ2dydUhJNko3?=
 =?utf-8?B?dHBhUmtuSkVLRmgybHZ4NFYrc0VkL0IwaG1ZNU9VajQrRHUycVVZVFd4MnpR?=
 =?utf-8?B?VXZybnpidTMrcUxhSlM1a214R2tuaVdJWlZxMFBMd0toQ2cvNnpuVWNqTkFH?=
 =?utf-8?B?US9sQW1GVjJPT3dDNmJ1Z0pRT25vNlkvZVR3NWthdSswR1JLbWFtQmJvZitu?=
 =?utf-8?B?UnhmZk5hRnVpdnRIYW1DTHRXNUNMZVhwaFd5UnlNdy9zS0lQR1drMFh5SGZw?=
 =?utf-8?B?b3RKek1hdEpBTHQ4eUpkYnJycVQ3c1BmWWxmcnhxeHVqbkcwbmFlelpidkw1?=
 =?utf-8?B?cER1YkhRR2FwL0tuRVBxVHQvU0dSVU5NMDNIK3pCdEtKclN0V3EyUktOSjVx?=
 =?utf-8?B?Wjd6V1BCNC9leVNNakIrYlI2Y0FVK1NKL3crcFRKTUxqaWFMM2RESWhZLzRF?=
 =?utf-8?B?MTZMUE4za09qVXAyTElXc3BlUjBEYnFWckFObkp4N0crVGtTYStvWVRIb3pI?=
 =?utf-8?B?QXJIcjlOVi9wSlJ1UW5qdDRFMVRteitRckZpbEUrT253bHBpRDBGRkc2N2oz?=
 =?utf-8?B?YXNiM1psdUoxTFRZRjJPVFQ0TDBmWkI5YWhJandpMHdrM1lsNmUxUXpBdUtY?=
 =?utf-8?B?RWhyYU80M0dJNFBGUE02V2NXNjUvVVgyc21RZ3I1bFd5WE1pY1dLVWxxdVhS?=
 =?utf-8?B?ZXNTRjFXRW5OakJaRVlDU1hPZExOZVRWb1FsaXZBanF1dkRuUVRiV1lHbDR3?=
 =?utf-8?B?NitzeHZlSmlqb21wQzdLUHVIY2E3WXpSUUR0M0Zsem4vOEhxWjdvTlFKcTJM?=
 =?utf-8?B?UDNuNHFTK1RhL1NtbThxQTRVWVFMV0E4MUJpV0Q1N0laUTBnTWpMQmJtRklv?=
 =?utf-8?B?RXd4dS9vSDQwcVVsbCtpbWcwaHVPRG5vQVpkZkJKVElmQjBBNFpRTUhnM2Iv?=
 =?utf-8?B?Y2c2LzdONDJvWnVEcXF6K2J0SjJVYnAxbWlqZVFJT1lNSTB1UEZWaisxVXcx?=
 =?utf-8?B?a3dWbE5GaHROZStOcnF0OGN6T0hMaVliZEJ3RldqYkdNSjU0b0N0SEI3R3M0?=
 =?utf-8?B?UGYvWkVJL0dscTltVUcrRmpjMUJFTzBpeWxscTlHOW5YYkZtdkV4aFlURTZM?=
 =?utf-8?B?YVVPZ3NyS01FTXpvdEdlWFZXZTVlVVpXU0t3TU8vWU9aN0NFZnVmaHVpeFRO?=
 =?utf-8?B?Qkd5MmtYQUE1Uyt5ZzhtcDlaM0o1YmNjWjB4eVFtYktTc05MS2N2MFJNYzVZ?=
 =?utf-8?B?VFpVdUhURWtwOHBnOUF6ZDg5aWpUZnlqRXlibWJGOHJXdkdGbE05UjZsNUxs?=
 =?utf-8?B?TnFNNFNyNzQ2ZFlvMFdnQzFlV0p4dUhBNmtPMzk0NjR0aFdmUndKN29Jd1Bn?=
 =?utf-8?B?UnR4cGZFVFlTUzdHUnVmL0JEZll5S1V2c3J3U0liTm9vM0hIeS8yeSttRFRo?=
 =?utf-8?B?K3JjdHpHME5BRWNIRGdqUGJya2l6aDVNYWViRkZ2VnlGQlQ3b091bFlEQm1a?=
 =?utf-8?B?ekg1Nm5PdXJ2WmM5YzNyVWQ2OUFDdGdERXJlQkVmSlpQeGhlVjFRVDF6OEhV?=
 =?utf-8?B?S1VCTnl5dkMvZmRBL20zc3Y0NWNwYnlCRHpkUmtxekdWa3cvdmNFdzF3TzRu?=
 =?utf-8?B?NGpnSmZBQWJNT25RaFg2RHBycG5VdzZvMUdRazRXVGlBdTRPeDJBVlIxbnFG?=
 =?utf-8?B?eEs2bDJmWFpFbVNUNk1qUGhoRW0wUGxkNGJ1OW95aTE1UE1maEtPYTZidXJ2?=
 =?utf-8?B?V08wbThIL0tMMFBaT2t4cy9VL3lkYlA2Qjh2MlpBTjlmUVdxdmVxUXVlcnBY?=
 =?utf-8?B?ZzFWZURqb3hwV24zM2F5eklKK2NPdVBZandrM3NFZ3AyVStsMlBqNlcxYjJ3?=
 =?utf-8?B?eDc0OXZ6UFpXL2czSFBVaFplb2M2UXo1M1BIYmJxemxIRDV3SkJrRmh5UUN2?=
 =?utf-8?B?amNrdWhmZ0Z1NjFBNjB0RXlwR05UV0tCc2JxSFFNUGRuNElnZUVQbCtabkdv?=
 =?utf-8?Q?FuYjD20Bpg6kaxnrjefp6RXN8?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: f198fd9d-d2b0-4813-cae1-08de1c8a5a9f
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 16:42:48.6324
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q1pEp1irWNXI6+hJVs/rKF3uEd3sFrO7ecRMXmZAM9AA5GERH89S/VVii8hiIwws+C70O9H3wdYa8jLBvwrr+0m/+6Bfm3tiFIdUEVG4edM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10985
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Nov 2025 16:42:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66009

Hi Robert,

On 11/5/25 4:42 PM, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    (caveat: i have *no* experience with rockchip processors so i am
> entirely at the mercy of people who want to make recommendations.)
> 
>    a friend wants me to advise on a good choice for a RK3588-based
> evaluation board, and has already purchased a banana pi bpi-w3:
> 
>    https://www.aliexpress.com/item/1005009156110477.html
> 
>    that looks like a decent and fairly powerful baord, but i notice
> that the banana pi is not a supported MACHINE in meta-rockchip:
> 
>    https://git.yoctoproject.org/meta-rockchip/tree/conf/machine
> 
> so can anyone suggest something equivalent in terms of pure horsepower
> that would be equivalent and has solid YP support? i am totally open
> to good advice.
> 

Check all the boards including rk3588.inc in meta-rockchip.

My company manufactures two boards based on RK3588, Tiger (an SoM with 
Haikou motherboard) and Jaguar (an SBC), supported by 
https://git.embedded.cherry.de/yocto-layers/meta-cherry-es.git/. Note 
that we're still on Scarthgap, there's just so much I can do by myself 
during the working day. We're targeting companies mostly, not really 
tinkerers, so it depends what you want to do. You can contact our sales 
department if that's something you're interested in, c.f. 
https://embedded.cherry.de/jaguar-sbc-rk3588-amr-user-manual/98-contact.html

If it's for yourself as a hobbyist/tinkerer, I would highly recommend 
going for a Radxa Rock 5B, it's affordable and various features for the 
RK3588 SoC in upstream Linux are initially developed on Rock 5B (mostly 
by Collabora at the moment I believe?).

Rockchip SoCs has a vibrant (mostly upstream) community, don't hesitate 
to join the fun on IRC on libera.chat in the #linux-rockchip chan for 
example.

I help reviewing patches for meta-rockchip here and there, so if you 
have questions you can ask (either on the mailing list or on the IRC 
channel) maybe I'll have the answer.

NPU (AI HW engine) has been merged upstream in both Linux and mesa but 
we don't support it for now in Yocto. I'm planning on having a look by 
the end of the year and sending patches but anyone can do that before me 
if they wish to do so :)

You haven't said what you want to do with this board. Upstream Linux is 
almost there, mostly lacking CAN support as well as the whole camera 
stack and the various Video decoders and encoders (some supported to 
some level, some not at all) as far as I know. DP-Altmode on USB-C is 
also missing and USB3 on USB-C is finnicky with issues with orientation 
of the table (USB2 should be fine).

Cheers,
Quentin

