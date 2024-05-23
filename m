Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7E5C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 15:41:17 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.98])
 by mx.groups.io with SMTP id smtpd.web11.1934.1716478871968098916
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 08:41:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=hkd+hnnw;
 spf=pass (domain: cherry.de, ip: 40.107.241.98, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iiaNNeApBJuD+3uauNe+miJLT/fb6dqrf7O/QQ6W15yw8vuA2Oww+OGhgyocmNz3x/FUeEX0UulzSo1OBUDlgd1V6J01cvoJ4zFt+YqwGB7dMRQVaRTr60gGCWLihV7heUHDKg+zkxEFEynr4GRfr39k4Ulb+11nOEtQhjo0XTMfu3mchRPO9l4iEPQMXNVmtaS/6C5hZFlHETDc7/Ovd3TrBnrM5H4hoc+yPbfrjn5NWvQnY6pa7VHuCITBqqdgKdL7M7sLk7xB1SOW8qe4HejUJDRyAmgZjYAeKoE+/tuNP8ty/0QpGfQi9ffH4z1rh4MSuuq3fAdSjSGEU98Nxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BBTbeRQxNP3489kI6dwwqLSVMFIQJ+7mza7WGFx8tw=;
 b=nRIY7aQFmTwwtGM/AoAARlkwHM7F7hxp8FmM1IrvWFfLF1eqcYIkdX6H0ISADI4B1SOrfsQbaEBqU/Tr4cH6cz6rD3jC6bRUAw1I0Aalg6oeN1TafDh81+XVT3TgGZXziXwlieDu74ttqDAX0OMQyVATU3VIeZsitd+uv0MNKF/bnrYkSG7nQWTH6yJiRqGCi6Myx77Qqq8gFiglE0sY0j1btHiAlnRYiylqR+HLCuBPSbEf30fH0tGJ5U0Fiie8G3RiMe4Rq4bnDLdD3tSrAQUTeb/SvSeZKBEPUU46Ehi4pBV+B0R4iNCqC5uDft1t9wWcnCeXWWqTEhJQKudRLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2BBTbeRQxNP3489kI6dwwqLSVMFIQJ+7mza7WGFx8tw=;
 b=hkd+hnnw0m4kc4YlzAlK9UUDkztlIcAo/ce48VqVYB3KqYHCoLdFHkkohSmqwRzj4COYj/YasZ44HrSn5KhXwt0rZEJDCeFJxWr14tDQ0R1dmrp3XyJpvM7V+t6eejPCbG/eqtqhgRAy+mhrWVVsTCBHbnX5Z8bNU68BWIGpT58=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM0PR04MB6578.eurprd04.prod.outlook.com (2603:10a6:208:16e::11)
 by AS8PR04MB8165.eurprd04.prod.outlook.com (2603:10a6:20b:3fd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Thu, 23 May
 2024 15:41:08 +0000
Received: from AM0PR04MB6578.eurprd04.prod.outlook.com
 ([fe80::b0f9:e7f8:2613:eefd]) by AM0PR04MB6578.eurprd04.prod.outlook.com
 ([fe80::b0f9:e7f8:2613:eefd%3]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 15:41:08 +0000
Message-ID: <8cae2dbf-f405-4813-bbf8-204bf7f120fb@cherry.de>
Date: Thu, 23 May 2024 17:41:05 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Raspberry CM4 does not load audremap overlay
To: yocto@lists.yoctoproject.org, farias@automac.net
References: <CALBkiFCmbcxOwrWPZN-hx_j=Nuv5GR-Ba7ELX1twERBxbMTXEg@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CALBkiFCmbcxOwrWPZN-hx_j=Nuv5GR-Ba7ELX1twERBxbMTXEg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA1P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::10) To AM0PR04MB6578.eurprd04.prod.outlook.com
 (2603:10a6:208:16e::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6578:EE_|AS8PR04MB8165:EE_
X-MS-Office365-Filtering-Correlation-Id: 74e772e4-6ce1-4474-48a0-08dc7b3ec2f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?UkhtZ29rb0cvWkZGd0x1SHNaT28zSktiQ2RjSnFrQjFIR0Y0Wml1d2ovZ3Iz?=
 =?utf-8?B?Q0ZvbHZoR0grNk5VVmZ0OE5WSy9rL0JsRUpLS1dyM25RVXo4aTU2YjRibG13?=
 =?utf-8?B?d2hpV3I5OEsyMkQ3WVBRNlNIcUorblQvNTkrdUNiZ1pEY1htakdvTko2MU5h?=
 =?utf-8?B?Zi9UdWVMVCtUVW1qaE5aK2hzbzl5WFhwWlMxbnFFT1RBTTJud3k5WUtwNzg4?=
 =?utf-8?B?MTNYUmtGSllXckk2WFVVbTdpK1NWM0NvbEtzaUcxbmxJSEVidldBTW9tVVhv?=
 =?utf-8?B?RG5TWk12QnpDaDZDM3lvQlhGN1N1QmpRWWZtNnJ4aEo3Wk5uRVk0SnowYTRu?=
 =?utf-8?B?bFAwSU5xYm9zL2szNkoyVXBlcWJNdnpJb2RzTHU2OVpnTjJsNU0yemE3Y0Zz?=
 =?utf-8?B?cHZPRnB1Y0JGYzhsczdNeGZ4dGdSRW1PeFVreXlLV0pjTzJwekQ1RVJQWjJM?=
 =?utf-8?B?TFNBbVZaMkMySHA3SytLTFhBdjN3a2lmN1RLdjk2bU05ZlhmN2F2Y3dPTnJr?=
 =?utf-8?B?NVpOVVpqa3M5cVF3RXBsMHd6OUNpOHpTZUlLOTNjL3gxbUM5SlpwcGNpVCtl?=
 =?utf-8?B?SHNieXY2bTRUMHE2Y1gzRmRreFFsSlVpUDFDUmFVUXJDTTlyV1FiTEJRNlRP?=
 =?utf-8?B?R1ZkbnF2bEthTElFbkN3bjU5a3NNK0JVeHZYM2lXdWtBam9QK3FDUXBsb0tw?=
 =?utf-8?B?NElZdXhCREt5eGI4S2tPbjR5dXBXTDdCaDFSaExoVHhUY2NoWjY5NVk3NThh?=
 =?utf-8?B?dHhhMDAxU1BJWk5kVzhJSWdGNlUvekg2NDZQRjB2bDFmK0t2Y2FOK3pERzNr?=
 =?utf-8?B?dkE1aG5kcXpmNTRqKzZMMitSYUE0eEg4K214UjVCS0MrTUkyK2dUTW85ejdp?=
 =?utf-8?B?ZWl4bXJoZmNtN0hsTEdDSW5xWEgvc0lBd3RyS2ZMNzZBaFAxbFpsbkxXVWdx?=
 =?utf-8?B?b29pWERRQWZPSkQxaUJzb1BoSjhnZTYzdUFhajFWYlh4TmN0cnFMYlozRHBG?=
 =?utf-8?B?bXRJNFI5UXMyY0ZEMC9Va0srZWhnUHhrcVlyY1Q2bHVteWlmVUZ0THBFMkY1?=
 =?utf-8?B?VTJBMmY0YmtaUjBCa1B6ekd5OER3Smg4aU51aXVEN28zNXZwdUtEU29BenB4?=
 =?utf-8?B?WjRDK2o3dmV1MmNJWk1XZW1RaTAxM2daSkFLR1AxQW4rVlJwaGdqanRhdkp5?=
 =?utf-8?B?cWs2VXNLUE04SXJ5K1FWWmdTeGdVSkQycWV6TFZEVGtNclVXc1JuZ2lNQUJs?=
 =?utf-8?B?anUwaTZheUsxV1lDTkU3M3FRcnNPOEl2VG41aCt6YjhNK1VVcXlZTnhYcmw3?=
 =?utf-8?B?OFBKemRMTWtNNXNTazE4V0dzNjRYQ1NkZVN3Zk02VG82YUIxU1gwSHRYS3I1?=
 =?utf-8?B?NytkTFA4aElvallodE5USVBTWWVUU2l4UjA5UFJXdCtDSHExNjUrUnFFUWU3?=
 =?utf-8?B?UXNiMEovekFRT1Npd1FGQm1ZWDlLTXpCK2RsNTVCWUlLQTRLcFBvZmZsSzN5?=
 =?utf-8?B?Q1BlV09WRkJRMnlTVm12bi85bWtEMWE5blYxVlhwc2JEZUJCWWpEK1d1Njdp?=
 =?utf-8?B?TjNNVFJlUnFMRjdPbE9SZ3JPNUZERWdpcW1GYll0TVo3MVVIcjcySmo4bVlr?=
 =?utf-8?Q?WfjNfAmAtVHoUBjNoJO0PR6iDJePaZY009Vc+5rojvz0=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR04MB6578.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YjZZS1pyY3U0TS90alRTRVlDTHRPS05IZGc1NE5uNzZ1MjN1bTJOeUlablh6?=
 =?utf-8?B?QktjQ01kbHdLeUJJbVFRMVYyOEtmeGhOVlJ6VmFIcURwcFJ4aFdCek5xQXRl?=
 =?utf-8?B?MkZNcldnUGpQUnViZEl0VEVWbnlubFNoTkVqcUZrY0RNbmJ1NW9pbHJqQ1hF?=
 =?utf-8?B?SHVNZzRJQ0hlOUNqaW5HbnVCNlNWbTdHd1pJNzlISEFjeWUzMHdHRXdjQ0ZF?=
 =?utf-8?B?dVlIQ1BpNkk2N1lFUGdmSnlUbWtpeEtNQ0Q0RExjQUYrNUErbmpxRG1hRUw0?=
 =?utf-8?B?Ymp6REpsTTJ2NzZ4dEljMlo4YnkrdHRwNTFaVGEvWnIrc2s4UmYzYWhkYVV1?=
 =?utf-8?B?cEpZeDZSQ3RWTEE2aGxTUmcyUmVaazlpU09ya0krbzlJbnZIbFV6Qi9FN2NR?=
 =?utf-8?B?UzNpRy85Nmc5NG0zRWltejVxelUrbVovT0M5K1RZdlE1QnBUZ0tZVEFERE5p?=
 =?utf-8?B?eUZWY25zQW9VazEzUTF2YnlraG9heU5OMEJ4QldJM01jQnhKTWREUEFMbVZp?=
 =?utf-8?B?OXA3UmFwcTBIVng3NWlBRW4rNERpOUUxdE1pV1hpSWVGRVBVOHVhcjVVancv?=
 =?utf-8?B?WDhucEVvYWlyYnp6aGI5b0RYbHZock80M3NJK3ZtNmlHU1IzenJ2WS9yYmhI?=
 =?utf-8?B?MEYySUNyUkZrTEhkUks0TVk4RlE0SWc1bTJ4THpqWVNTeWpSaXBMWnJIdnF1?=
 =?utf-8?B?SEZJc05GK1Rpb1ZYNlNsbHV3c25GRFRSb3NwWnJja1NjajJZdFMvMlNyMjRJ?=
 =?utf-8?B?Q1hxWDdSV0ZqWFhqdGtuMGtld1RzNFJBNktoWWhBbWUwL3hDSXM0Z2lqT1Zx?=
 =?utf-8?B?VHEya2NqK1NXVkx5UjUvZUk3U3J6TXF2bFBtRFZVZDFrUVlLeG1wK2JtRjNl?=
 =?utf-8?B?RDVnRDVEOFZjOThxM29lYTFXdk5OaHBlblZsRnUyN1NPZTNEcmNETHdNWCt1?=
 =?utf-8?B?b0tOQjdadWxDZEp5VTNSZzRSNnkrSlorN2N6OTdwL3JRenZXMkROSExkZ2hU?=
 =?utf-8?B?M2wzUTVUL1VzbThDdzV2ZVRuOFdqL1MxNDhaZE5HZUZYWHZ2T2lSd01iNFVx?=
 =?utf-8?B?QXpIM3lXRVZRMVV1czYyek83c1M4QXp3SHU0Q3JIYnoyZk5UYS9tdGRLWjhQ?=
 =?utf-8?B?OTI1NjJKV3JBVEZmR1hhQWh1MDkyOU5ROUI2VEM1Z3F5NENzb2VIb3BFZG1S?=
 =?utf-8?B?cVlRWStheGE4VzcyeEtRTlg0VXNDc2cvb0RYRlRHekFzeG1LaUMvelBQbEhG?=
 =?utf-8?B?RnhQNzhYTHg3aCtjVmFTQy84R1RaZ01wb1ZzRCthbmovRm9zb0VCRVB0eDY5?=
 =?utf-8?B?Q3pwUlVoUDNmUFlrSFUvbEhJM09NM0NuM3BZVTZPVDhjdDBKRy9qbHlwU3V6?=
 =?utf-8?B?cHJmRk1DRlA1S1JYYm5iQk9SZnFxUnNwbDN2QlFBWENmRk8ybUIyaWc0MDUw?=
 =?utf-8?B?QUZrM3RQcDU0eXpmTGJYUHBuQmJyL01LeFVWT04wVHhRdCtYOVpXNlJ1STA4?=
 =?utf-8?B?TVFZMEdYM0VZMmw3WDdCNzNEV1BoejN6SVFiQzFxS3NYZFdrNHlQeVRHQ0hn?=
 =?utf-8?B?RWNHcmp1dDZVVWFFZTdLQmFlY01Vb05EWlNWZC9RbEhZa1A3aWIvdUJTR1BW?=
 =?utf-8?B?OXFqOFBpUCtvN1cxblJrUWpNcVlZME9tMVhQbGpSYXRXMVRNZmdvSFpVV2FE?=
 =?utf-8?B?czA5TTc1S1lDVjAvY0huQml5dy9rNFlQWCtiZDNHNUxZYUdDamF5c1h5b1Fm?=
 =?utf-8?B?c2dIV3VEY0tvMVFOcTYzWGs4bDBlbzRlaW8zdHErVUd0QkJGNXZCUXNpNFlr?=
 =?utf-8?B?WHQzcG0rOTM5UkFTS3lzL052ZGlCQjZ4RXNqWHowMjMyWEZlK093OFVQdFBP?=
 =?utf-8?B?ZzR2c1RXdDZ1SFF6bmI1K0ZNSlM3TitnWldaaGM1U0pFc2xySS9qcWp0TTBI?=
 =?utf-8?B?MS9kbHJUMFY4L3VwSnZ3ZThZSVRld2ZMNEh0SjkrM2E1NUp0NWFFM3IxYnN4?=
 =?utf-8?B?MUc1bStLV0dPQ1Fhcnc5Nk9uTDdjV0xURmwrS251blIyNjEyVkRkNFlQd0xF?=
 =?utf-8?B?SmExZU9Rd0c2OXlITVhNc2lLSEFlYU9GZEJQeE8zM1BpdG0zVmhrVUhxOFFQ?=
 =?utf-8?B?WkJlRXdYeVZqa0hHUHkyYXhpTS9WbXMzQXc3ZWE4UHpnWHF2ak5mMEEyNzZP?=
 =?utf-8?Q?oTPORHGXZCOKWchTxjiwhp8=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 74e772e4-6ce1-4474-48a0-08dc7b3ec2f7
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6578.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 15:41:08.0522
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aRYV4spxkI5ttdULN7NdtguwVfZPgWif2pMmgEniChc06dhnRwmmUV+j+nlaZbBEZmoIPLq/XH3Tl/ERa3PyInmctUPwMJw+oQwDnCMKFc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8165
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 15:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63187

Hi Federico,

On 5/23/24 5:03 PM, Federico via lists.yoctoproject.org wrote:
> You don't often get email from farias=automac.net@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
>    Hello, I'm new to the Yocto and Raspberry community, so let me know if I'm doing something wrong please.
> I am trying to compile with Yocto Kirkstone (also tried newer branches), for a Raspberry Pi CM4 (emmc) + Official IO Board. I chose the Raspberrypi4 machine config, is this the correct one for the CM4 32bits?
> 
> I just build the core-image-base with the alsa package. I enabled in local.conf dtparam=audio=on and also dtoverlay=audremap to route the audio to pins 12 and 13 (pwm).
> This works fine with the official raspberry distro (only Bullseye onwards) but it doesn't work here. With the aplay -L command only the HDMI audio appears, not the headphones.
> 
> The SO image works fine, it boots and outputs audio via HDMI.
> I also tried enabling pwm audio with other commands in local.conf like:
> audio_pwm_mode2
> dtoverlay=audremap, pins_12_13
> dtoverlay=pwm1
> and the same above with pins 40 & 41
> 

I assume when you say local.conf you mean the one in the build 
directory? build/conf/local.conf? If so, this is used by BitBake and 
interpreted as BitBake code, so this is just creating a new variable 
called dtoverlay and setting it to pwm1. If something makes use of that 
variable... who knows! So, this isn't the place to put this code.

I think, what you want is what's described here: 
https://meta-raspberrypi.readthedocs.io/en/latest/extra-build-config.html#manual-additions-to-config-txt

Cheers,
Quentin

