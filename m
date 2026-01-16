Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2AFCD47CDD
	for <webhook@archiver.kernel.org>; Fri, 16 Jan 2026 11:08:15 +0000 (UTC)
Received: from DU2PR03CU002.outbound.protection.outlook.com (DU2PR03CU002.outbound.protection.outlook.com [52.101.65.11])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.3548.1768561688359283448
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Jan 2026 03:08:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=iwo9kx5y;
 spf=pass (domain: cherry.de, ip: 52.101.65.11, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mCd6+Gz4VDg8fBVmQdVN3EGpe9I167TFcM0J0KbVQ3IwcEheBR/Y6ybyj0IbYAKzOK0t8I0+axUQrpX6WM5pp0XByNd78H3GbO9o+VcLghtbQ5uDEGGiGJ3jG+a/EUCjruVaAVFLOvFkJnsCTzQAb4c1vfjFb2pEib59yJOrne8Od3ICi7YwESuqFxXgWlsi3zs//Tc9Bbo/TsBlT5ESH6TvXNRubim4VZX2mm3gXPG18F9FfujKMOnQftQZ7Vu4IS5gqDw9zJNgpDRGhjH6+mgwFYCvMYjmjjBwNA0bho5TOrsC3pwEksC/SrkZfh7vr3KJzmnWjvGG4yOaqJ0Dag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZMlBcWel74QyygsDlb5H77t+B1FJ/ZHfY08qVWbYP8=;
 b=f0sEDqIfAeQzDqfBrmwg+MTMOIpRWK0xJQc/SX9IoITH/ATRmnWgQZbt7xSPG1pKu/NG1gQakV5bggZuxOlomaIyR0kB4Epihjhf/reBrqGUF7b4vSIQeMXSTi2MGuFPl1mv83IP0DSnawAqCIIDTA9bk6tNofqPKD154kdf2V8BNhinGROqcCZdSjRaSbYLo2WPA/waaKv9tKLnLcHaMysI+Lo2bUl9AxpVRS0kLe6SR10aYL4dk4ph01fIddiB+WFcL8i3a9pI+9DyHut+MrjSX8yPcq+oYbt9e0GDeM3BMZv1bH+2KF9cBEM4mSQaaSnnqBHOjU8JNZuWKIeByA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZMlBcWel74QyygsDlb5H77t+B1FJ/ZHfY08qVWbYP8=;
 b=iwo9kx5ycagRpVEGSbUoc+RJAhgxGoaXCrHsU8wTAZ8Sx86FOdQ1QXe98njtCR19+czjjMHEj/TLqwmyoS2wKZWsVaR8VkLfGtLbdGL6/Q1Cz4ZSaKmjuYa0UQaySR74EfZRDPk9tyH0DhU/9O3rpkL30BWkpVx97iS5AYFKHjQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by AM9PR04MB8844.eurprd04.prod.outlook.com (2603:10a6:20b:40b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Fri, 16 Jan
 2026 11:08:03 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::6c04:8947:f2f0:5e78%6]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 11:08:03 +0000
Message-ID: <e00755f9-f60d-4a95-9307-99485e2c0449@cherry.de>
Date: Fri, 16 Jan 2026 12:07:59 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Want to select a SoC with good Yocto support, please
 advise
To: yocto@lists.yoctoproject.org, ManWag@FastMail.FM
References: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <7b5cf64b-cac2-4346-a038-2ac334162651@app.fastmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0224.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:e4::14) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|AM9PR04MB8844:EE_
X-MS-Office365-Filtering-Correlation-Id: ca09e9d9-792b-49a1-ccac-08de54ef84de
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?cWJpYW15ZmF4QUZkMzQvQkZQdlpsZ1FBRzh6K1NXN0t1OVpqZDdHZURoVnFX?=
 =?utf-8?B?bkZxQWlRcThVWGVLM2NUbGNsdWEwTzBxZjI4K01PWGZJS3dUTmxvWjJVVzZM?=
 =?utf-8?B?S0hpdVc4emhPTTlHOUtZcms5V3FlYkJhc3hDMEowQ2lCbk5CMVlFd2w1V0Q1?=
 =?utf-8?B?MUcwTmdMNTFkNFZtWHNHbkxHQWdxemZZWWlKMmFyWXBPN3lPSmJKQldnM2xV?=
 =?utf-8?B?VHZ0c1VCK1dQVFF5ODZIQ0RJNXEwaGNOMmJLb1pONWxzNWwrUHhWY2YwMHBH?=
 =?utf-8?B?cEFLYVBtdXpDQ0RqRUdsa29SSm11Z1NyeXI3dUJFc0t6QW1TUnF5dE9FNUlR?=
 =?utf-8?B?ck5aR0gydlpYekdDa3lXSStJVFdHeWhzSGZkeG1yVjI5WDNuTHlmZnZPNUlS?=
 =?utf-8?B?THZGRWJDUzNpOEhoTFNiSEYxcHdGa2gwM1dBU0FZWTluYUFNcVlqWGhvb2pm?=
 =?utf-8?B?ZGZUMHpmbFovcVpPMW1FRTBIaEN0K3YyLzBNVkloV0l4enlCT1krZU5yNDJS?=
 =?utf-8?B?dlQrdFFqRCtTNUFicjFoR0wzbGI0eUFPY3FuVUdtdXA3NzdWMGxlQy9DYlF5?=
 =?utf-8?B?bTgvQ0FMVHFDUWp4bXpRK2FjeE9oaXJJY2RsTCtyNTVMWEg3K2xZSXlpYWg3?=
 =?utf-8?B?eWExQ1hSd3Q2RHlKWldjb1hSdTN5b2cwZGVlQThadC9nMmVRRDM2dm5Wa1ZW?=
 =?utf-8?B?M3JwRGxxbHFlUWUzYllEUCs1VUJMTnNTOVRpdW44NWJPSGtxWmlKWGxUak1w?=
 =?utf-8?B?TldHK1VLWTYwL1k5eFNLaGFTVVJJM3VaN2ZaR3djVkdUTklZaGV3UzdWSG5h?=
 =?utf-8?B?dGVDRUVQZEtXV0IxYURlUFpxVVdrenpIV2lOQk54d2JKR0toRlMvTmc0NDhI?=
 =?utf-8?B?QUY5WFRlRzVGdTZ2bURsL3d4ZmtWa0g4bGFwWEpSbmNOenJiQkF0RDhDaEM5?=
 =?utf-8?B?SmxnQUo3aHhKNUIwSmRZejRZampLUkF5NHlBZS9RN1hYclVhdDlQUUpIZHZE?=
 =?utf-8?B?cUwxWXhxM3VGUzRwNnM0dytmWGI5UmduLzJ4M1IyaTF4cjM0NFJ6QUtBT1ZR?=
 =?utf-8?B?Q0hOenJwSFg3bXdvTThGdHhRVDk0UzdiUHRNY3N6UVNJd1ZqT21ZK041ZjA3?=
 =?utf-8?B?UVllOEttcnhBZkFYeUF3aXpQNStPaE5XVFRHaGdna0pKYVZNb29MMzJCcERU?=
 =?utf-8?B?ZkZtM3hFR0ExL2M3MVRxUCtQUGwvaUloSVBXYlIxUmtFOUlLeUVDUHMwbUQy?=
 =?utf-8?B?V1hOTmdzbk9hMkV6QnRKZ0xUb0ZuTVJLMGJINzcwTnBjanROQTFGc2NoS3dH?=
 =?utf-8?B?S3kyb05Famx2MHREa0J0SlJFN0FEQ3VXVGRxUHFRMFg5RzMyeEtvODVwRUxl?=
 =?utf-8?B?ODRsWW40Wm5XSkU1cmNDR2NBQ1ZOSC9rbFd2VUJTdGU1SVIyYTcrUzZvNU9p?=
 =?utf-8?B?NVdtaVFmdWROS0NBVWJjV1dyQTFmOG1DQzZLdlhRYmpuVjlwbnl3azgwOE83?=
 =?utf-8?B?QVBxa1hmMVU1dlErOGxNMkNUdTJrdTlORGFwRU1jc1JTOUJxK0FPNmlBeTdI?=
 =?utf-8?B?VHlGYWtLQ1FYLzZjSlVQUlZDSmtMZkdQRTNoWXhHb1NDa29MYkc5UTUwc1ZS?=
 =?utf-8?B?Sis0TFVxS200L1RRTmRaU1EvWmprclRWUmxKWlI2cGFWV3Z2dS9uR1d1Mmdn?=
 =?utf-8?B?QzlyZ0tISWs4V3ZUZnlxZ2NVaHozS2VKS0gxSkdVTzFFVEErUmFJaXg3M2Jl?=
 =?utf-8?B?T285dUxUd3RFTDZKM3pFckNIWTdualBGb0ZGSGVhK0dVeXZmeEVqSXFrV2Rn?=
 =?utf-8?B?T1lVZEVzK3Q0SHlJL0pCM3pKQUdRVFFrY00wam1lbDVHQUlNek1FRGp6cGY5?=
 =?utf-8?B?T3FaWjZjUWVOVUM1aForMUlWckZoWGZmSVNzbDlZcDFKNUVxQ0V0VFQvakVE?=
 =?utf-8?B?Z1RQRWViSDFCQ05jc3dGeG5uQzZ5aWpXYTk4TWlDeDZlTEY4eTMxdTRRY1k0?=
 =?utf-8?B?dS9Cb3JtbmxpaUxEY080bGh3YTI3d1lIb3BMVHFyUmlIblVJN1FoVTYzOUFZ?=
 =?utf-8?B?Ykt2QUk0cWNxcm5VZDNPMURZd0pzZlFsRERTMENNNjU3RGFHZlNIc3RSTDEy?=
 =?utf-8?Q?Z7GM=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(10070799003)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?RlBoUk9uaU5iVmtweTBWTGpNMEg1MFpyWWd1dDdWdWNwQVVDYlhjUTNpYkUz?=
 =?utf-8?B?bGM1MGdFUWNyWXhnOHFScFRGaXNnMVZhcnR0emlXekMybEpUaytuNVJQZFc2?=
 =?utf-8?B?OGhOR0w4ZUNxRUU5bkx3OHR1cndXanQ4dkVyMGhXRXhIY090UkJPSHZ4SlQ3?=
 =?utf-8?B?L2VZcWVBRlZLZ1JwZEx4eDk2Y01kdEVySldTUmk3SHpla1VheGpKSFo0MXM0?=
 =?utf-8?B?RGFuS0hCbzRGQ0RCSTFvaDlWbWVQeXZHUTBXazBkQldKNFN0dEh5ejNmUWJV?=
 =?utf-8?B?WEZKTVkxTkpOZUxnME1JTlgvdFBUNnVFc0NvU3pZbVpNbHhMWmo5djUxRTZT?=
 =?utf-8?B?TFE4M3lHc3lQSzE5b2crbWRYZnpKY0JVNFVvN1lyaG1jcHhJVnBvK2dTMHZM?=
 =?utf-8?B?cFFpVzVWUmxZVUYzci8zbkNnLzVOMWxxYi9vTm1HZ1FaWVE2b0xJVlRabGtS?=
 =?utf-8?B?RHdZOFN3U09XQW0wcTkzeVZkWEErWjcvWk9IZy9wMkZPUFFrTWViV3pLYVdW?=
 =?utf-8?B?ZlhBT1ZKVDQ3T2JtamxoMmJtTDlyUGNOSWFjc1ZLR3JxSTZiUjljNDZUOGdq?=
 =?utf-8?B?Qm8yamlmQitObnpabTFpcXVyRmhLdHRwSnMvS2JoeVVZb3U2c2IycDZQZjl3?=
 =?utf-8?B?SUtCV1FYRlRvWnRiUzlvM01BY3Y1NjVUUGE3dmtyTWlkRGhjSDJndnAwOXox?=
 =?utf-8?B?Y2s4b1pWRW9iMDVhakx2VnhIK2VabS96bjQ2NDBjNFVxZmFzTjcyUEhEdUxo?=
 =?utf-8?B?NjFsTXgrenpXZ3hKdisxeTZnZ0dlU1ZXbmNibmU5Z3hUWUlaZnNnYlNndVFO?=
 =?utf-8?B?Nk5NQUQrVUkzb0xBYUtlUTYzUFNNZmxHTTVvZnJMdWllSGlpZmRDbkJaMXZU?=
 =?utf-8?B?Ylg5REdXcStHYnlZWmF1VEpIMTFnOElHUEs2VURtcCtzbjhYaTllWm9kY3BI?=
 =?utf-8?B?TS9kY0N0NTQ1YW9GT05PQTEzSXBXeVF2NlcrcnlXQUViVWNoWHdzNk4wT2VL?=
 =?utf-8?B?TmRvdVAxWHJoM2ptMHJwMjVwMU1MamthbFVvLzNZcE5jWW9oZGJOcUtLU0k1?=
 =?utf-8?B?YVVzVCtVUFpDeEszRTBCZWdZay9JaEN1OW8zbU1iK1hIbkc3UkZOSTF4cFJV?=
 =?utf-8?B?OXpUUG1idXBXc2pLd1lCaWp1NTV5YXdnSkVldm83NWQ3RzBMMjBmODF1T3I3?=
 =?utf-8?B?cGEwNnFzbFZnanFFNDhYbXhMRmwzN2E4V2tvaWlZZ01kaEVQUUZlTURGTElT?=
 =?utf-8?B?TEk4azdZMk5BSUVKempVdmpVK00rUm50V1RBUklaVnhvdzZrTVg0YzBxQTVJ?=
 =?utf-8?B?OWtPdkttNTJicW9KR2pTZDdVaC95NWU4NllhYmxZTjNSR2JNZGxWOVAxR0Qy?=
 =?utf-8?B?RHczdDR0WUdzRWRvZWh4TllEM1pJWFlMbzdZdWgwVVpCTmNXUEV3d0E4M0VR?=
 =?utf-8?B?ZUU3WFNCZTBwYU1VSU1VbkhaK0xTUEdpSkRXUThMd3FKdkJsWU9DYmRjZTBI?=
 =?utf-8?B?MUc2dDJXSDRFRGFOODR5dFFiWEU2Y1kzVFZyWVp3c2dDeC9mMGxkdmNFRVJH?=
 =?utf-8?B?aEcvcmtLK21mTkt1WFN0L3VYY0VRbFo4UDFIOVkzaUxIWWNKb21lM3g1Q1Q3?=
 =?utf-8?B?b2IyOC96ZHdtcEVZVnJsUlJrc1pWL09pYjFnVmJrUjlLb0g5ZHJQbzZTa2lI?=
 =?utf-8?B?dVZPaTVVRitPM0hWL3ZieXBVR0hUc0tJS2NzS1RoUUgwL1BySitQMUJkS1VV?=
 =?utf-8?B?TTB0c21UZUsyK2hVelRyMUhKZ0w4YXFJdFNKc3lFdkl1ckdSSVpBN2ZrblRB?=
 =?utf-8?B?OGh1S2VKam5wZ3l1WWM0dGRRNnhDZnlCMG1RODFPNXNxMll0SUlqdWREUmxZ?=
 =?utf-8?B?U0VXTmRiSGFLUnRSWitvUjEzZ2tFeDVaeU9WQVppdGNHVWJ4Nmlac3pTV0VJ?=
 =?utf-8?B?Q0pwNk5oUGhQbXQ3dlVmbDNLQ2ZKQzljei9tNndDR3Z0RlRYUEpMMlJYTi9h?=
 =?utf-8?B?dVhubGs0SGtsZ1FFVUd3U1hsY1ZUL3NTSSsrYmZMZ21reEVBVjlvMWFCSTdi?=
 =?utf-8?B?NHRuN3RVS3NoY1N6dVgxUEZRSnhoVHlJNTlXZ1AvZkRnRDdRelZ0RnM1SXhV?=
 =?utf-8?B?aTgwTmIwT3pYdmlNYk5VU0VnN1NjRnRDcVYxSml4dCtEMWxkdlVpTHp6Q1FU?=
 =?utf-8?B?MGhOY0dwSnAxTEE5NCtoVmMrUzBMd1JIUUhtdU5wTnQxRHI4WUhMR3NtNnFr?=
 =?utf-8?B?dVBGL2orRHIvUnc2NStGZTU2MksxeDFDRy80cTlkcXdZOEVxS3hXckI0Ny8w?=
 =?utf-8?B?ZlFjWThESnFieUhrNC8zTXNRU29RVnNmc0FZYmZ2aG1tbEZoT0o3OWFTQkJZ?=
 =?utf-8?Q?+87d3ucwV9V3QSlwlH5RBpEOKuJD+f04BU7oy?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ca09e9d9-792b-49a1-ccac-08de54ef84de
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 11:08:03.7278
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pi9Od4UlmkQJuCzy2EmZdsV9KTWrZWL9Meu0K2o6nhGlH8kNTGCgmm2jEB1QuqVor12CTDgmTjhKdgF5djX9NNjUfD5zQrX+V9FfkAoZfPg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8844
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Jan 2026 11:08:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66153

Hi Manuel,

On 1/15/26 3:52 PM, Manuel Wagesreither via lists.yoctoproject.org wrote:
> Hello everyone,
> 
> I'm looking for SoCs that can read 3 MIPI CSI-2 virtual channels (768x576x60fps), do (preferably hardware-accelerated) Lens Distortion Correction (= de-fisheye) and encode the streams to h.264/h.265 or VP8/VP9. I'm not yet sure if I need hardware-assisted auto-exposure control loops via V4L2 and I2C to the camera sensor. Might very well be.
> 
> Based on my research, the following SoCs qualify. I don't yet have any practical experience with any of them, and would like to consider the quality of their Yocto support in my decision finding process. In other words: I don't want to shoot myself in the foot by selecting a chip that is a pain to work with or is lazy in updating newer Yocto versions.
> 

I think you're getting your priorities backwards. People always think 
they are stuck with whatever vendor BSP layer they get. You're not. You 
can always port the recipes to newer versions of Yocto. It's not THAT 
difficult most of the time (I've had extremely cursed BSP layers that I 
would call BitBake compatible rather than OE-Core/Yocto compatible).

As a matter of fact, the first thing I always do is get rid of the 
vendor BSP layer and write my own, so I don't get all their crap.

What should matter to you is the actual software support. Kernel support 
(is it fully upstreamed? if not, is everything you want to use 
upstreamed? does the vendor participate in efforts in upstreaming (or 
have a known consulting company doing it for them)). If only downstream, 
how ugly is it, how much effort would it be for you to port to upstream 
so you get security and bug fixes without relying on your vendor, U-Boot 
(or any bootloader), same questions. TF-A, OP-TEE OS, etc... Is there 
upstream support for the video encoder, if so with which userspace stack 
(ffmpeg, gstreamer, their own (looking at you Rockchip MPP)). Is it 
supported upstream or in a fork? If you're planning on selling/operating 
in the EU, think how much work CRA compliance will be for you if you 
have to support everything in BSP dowstream forks yourself.

Also be extremely wary of marketing claims. It's not because they say 
"up to X" that this is actually even achievable in theory. I believe 
they most of the time just copy whatever the IP vendor tells them and 
then don't even bother checking if they can actually reach it once 
integrated in the silicon. Then you have silicon errata where something 
may not even be achievable (CAN-FD on Rockchip for example from what 
I've heard), so check those as well.

Rockchip has an FEC (Fish-Eye Correction) ISP, but I don't think they 
even have software support in their downstream kernel, so you need to 
check that as well if the selected SoC has actual support for it.

Writing recipes isn't always straight-forward, but compared to patching 
the kernel, bootloader, userspace video stacks, it's probably a walk in 
the park.

Good luck,
Quentin

