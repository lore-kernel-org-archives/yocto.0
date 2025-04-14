Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D53C369B2
	for <webhook@archiver.kernel.org>; Mon, 14 Apr 2025 10:59:12 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.8])
 by mx.groups.io with SMTP id smtpd.web11.47158.1744628343982467656
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Apr 2025 03:59:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=Pefz9Alu;
 spf=pass (domain: cherry.de, ip: 52.101.72.8, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lQe9bo07Ne8ghgdQ4JEI2yfJ5KiOtYjbn88Hv/mpasGrw+S3qUCMUwegT/+sob+ODc6HBmH31Qa9mdn5Vci5Fov7fYEW93mycSscv09+EJfdob1YYpnmQcqXUKNZxpHlpjz76gFTIIUhA21iQArL/+lhxrd+mdqrPj22d4DMCEwhfZK6LBwlkdXr4tof7v1F5gL/8GYH67TiOJbJwLnwfUYIcTXvIUrOL1MMa022AeK6dM5NbnA/7XTYw4otWmmwXznmxea7dG43x7JwpKCCGv4UR19tBjcBciCEl1cr+8vNq4j5Ak90xqeYU+Ii8fkkVg28vbvWlEVkDyKld9d/qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p7qAvXx5H/ah3cUaZV9nwnUSKX9hfWlWXVceTBZFCr8=;
 b=IVDtNVI1j8FDlvYIwWqo7dzf4r8RKS/ijgSNGyPVk01dMa5TZ4WVQLLMOv+7GPDlofNCZOkg48HpqtyU7MYtRcLPoFX+D92scFt2B3jiJj+Eh1WWLBzzUHI5ah3Em0rlCRLGZR1PQNfnvTGbnjCh0vlzWoXy3Jr0XBEoeC3sSOVvNBJFk/FCsAKpUTTU2QJrf+mZtr8PWrpPFcw/gdxh5TNsfvKSEgGbgnGoHMHRiVzdOWCU2M9edZLGusHsNu83G1XTq7lbnGneeVI4W5biq+MNozl+Z++YeAn4jiC1yNg7L3/8ZHkt6fJrQY3w8dlCSHn9R769sqJEUiFcIS4jDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p7qAvXx5H/ah3cUaZV9nwnUSKX9hfWlWXVceTBZFCr8=;
 b=Pefz9AluQRrtkV6IzFHbnVdE65FdTCula4DTfvFDlIRMi6Mg5G+tJ65cjLaP55OFBGwFh+rj49DgdNSv09zMNyg78vc2bQxGQUDR8q5H70z/3PkB5T7E/4AqKtOvqPS45YKyjdHxR8YYVJt2RQbv8lb4HX01V4AbHyvgUU79cuU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PA1PR04MB10442.eurprd04.prod.outlook.com (2603:10a6:102:44a::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.32; Mon, 14 Apr
 2025 10:58:59 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8632.030; Mon, 14 Apr 2025
 10:58:59 +0000
Message-ID: <5efb98da-5bd9-447d-b193-48d9de275bb8@cherry.de>
Date: Mon, 14 Apr 2025 12:58:57 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] warn if a variable is not used
To: yocto@lists.yoctoproject.org, proffesionaladdress2@duck.com,
 Gyorgy Sarvari <skandigraun@gmail.com>
References: <r40e.1743754517240171829.1oOU@lists.yoctoproject.org>
 <E63C2FBD-D303-4686-B29D-D8306CB27A80.1@smtp-inbound1.duck.com>
 <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
 <aa127e87-0a7f-4c5a-9467-675d1cf1df03@gmail.com>
 <7A2D6367-3CD1-460F-9655-69A8B0D980A7.1@smtp-inbound1.duck.com>
 <A1FCA99A-D1F4-45C5-9174-3D1F7F2D8082.1@smtp-inbound1.duck.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <A1FCA99A-D1F4-45C5-9174-3D1F7F2D8082.1@smtp-inbound1.duck.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0199.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a5::16) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PA1PR04MB10442:EE_
X-MS-Office365-Filtering-Correlation-Id: de03cd82-709d-41a7-e3c5-08dd7b435b19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?TUl3QVdFWTgxZ2o4bHdRaXY4OTI0clh2MkszRGhYNEpjcnh4VDdTbDFVYi9B?=
 =?utf-8?B?S2NZN2dMQWpTYjZCdVNmMHFhclhNU21sMnd1QVVvSmhvTmdHMEk4MUtXanlM?=
 =?utf-8?B?NWFuckdLKzMvYlBkdGdGNFlpb2F6dHJqbnB4OWkxcXRXWC9OWmRXbXo1QzU3?=
 =?utf-8?B?cXMrUUZFT0RlekQ3eEUzMlF6b1FDSXVTZU5jT21Ra2VDQWpoSHVmL0s3Yk9I?=
 =?utf-8?B?N3kwTTA1VU13QU15T3drc1JkREhwMVArbFlmeUpOZWh6R0VCeEQ0UEtpaEdC?=
 =?utf-8?B?azVVem9JempOdzFoc3ZpRmFmUG9xZjhuSEc3UE9oM3lxZDlkVjNNUGlTWWQz?=
 =?utf-8?B?VFBGNnlyZUdEMVhlcGpBWnFWbXo2UldSTm9Nb3AwaDVXNWtmVC9DZS8xZTVV?=
 =?utf-8?B?VWVYdTNkQThoTXd5NnRJNVVia1QrMTFxUE5weWtPS05vOGFITzdVei93SlM1?=
 =?utf-8?B?SUtablZ2T3cxOFhmcXFiTy83SXZFWWFWV0pYc0VBaklKMjlhUVdPQjA4UUlZ?=
 =?utf-8?B?bDgwWWFyOTB0Q3pGVUQrejdDelQ3VStjVTJXbE91Q0NRWTFmZG5GRldYMGxB?=
 =?utf-8?B?cTB4ZmxtaldwdlhtM3lDa21FS2UrWnZ0ZE9abXlNQXNPT2ZlTFYrenRpcTFn?=
 =?utf-8?B?MFVQeGowdUNUbGVULzh3cjdFUjFhbUlvRHJEK3Nnb011T1VKRmVHblFVdzZD?=
 =?utf-8?B?RGNXdVE3S3ZtbUJpcnUwWExlc2JDQlNzS3o3ZHY1UWN4UkFHN1hlWDQ0ZEFv?=
 =?utf-8?B?SlRhK3hjUThIME5teVY1TmFvSlBzbCtyN1YzVXZ1dmtJZVQvbk1JV2lHU3lw?=
 =?utf-8?B?NEdoWENReGVIaW8rRXBuSUIxeTRCSzBHMUo3cGwyTXAzMzZwUzF6ZnZqVGp6?=
 =?utf-8?B?R0IzbHkvbzI1YlZDR0NIQUoyR0NOYTNDcFJ5UUhxZkF4V1crZjhrZmI3ZXVM?=
 =?utf-8?B?cmlHMFZQMjlZUit6bXVLcnpOdk83V0FQQ0h5Y0xNdExzUEczOElpVnB6bTNU?=
 =?utf-8?B?ZHNZZnFQaTAzaFo5Ukc1REFTd1BWd2tnWDh1dEF5cm9wSGVyMmlLOEZPaENw?=
 =?utf-8?B?V1RSdzhrNWo5K2ZyaEZNOWhtZDlnOWhjTEI5eUpBT21Ud3FOQmpJd3puRVFZ?=
 =?utf-8?B?SlBsaG5ZUVUwbVpGc2hzbWlhRVhham1HNHAyZ1lTUzJBR0JXcWtQNEVkaTMv?=
 =?utf-8?B?WXlNS3JPeTZkbFhMS0V1VXVlQ091KzhSUzNyQkFCYkU5d2xQZEVDZ1pyR3VW?=
 =?utf-8?B?SjJONnFqQ0x5d0Irc0gvc2cvMnNMeDNzcUdrRnpKWkFTdng5VlZVdloxMzNE?=
 =?utf-8?B?ZUc5NEk4SVkzQ0sxUm90cmNYQnozYjl1RVpkYVRvdlBITWhsMTFzMWtBMHNq?=
 =?utf-8?B?WjVQNGp5bGE0MklqalN5TzhERGxpWXFqL0t2bEw3U3Q0MTFseVJNcnlNMjVI?=
 =?utf-8?B?NHdxK0lxd2I0UExPRXVZZGVUbkcyeUxtbGF6T0lyVGhBaG10QVdPdHUwOE93?=
 =?utf-8?B?N0NUR1dCM2l5QUhqZFZyRXFxcmFnb0I2eXU2K3dRRm5JWFNPaHQvbElDUXVx?=
 =?utf-8?B?c0poWXQzOVo0WW9qTUZOQk03T0lOZlVqUWhXQ01mam0ySXQwMktJVWppZXFh?=
 =?utf-8?B?dk1sMmJMaThsa1JMNDlnSW9tbTRiekJYNzNrYTNjQzBKV01jTWlFd0VRbFRh?=
 =?utf-8?B?cXZHUUxzZUtQTTJHaGVJTDlwN25aWm9nb2xmVWtCY2k1eDVHT1FiZExMUW9u?=
 =?utf-8?B?b3U5R1JNYzU5RzZyZktCVUVJSU1YbkkxYS9aVTVXK2JoVlkreG1OK1pveEtJ?=
 =?utf-8?B?Mk4wZ0FKUWZrS2pUZXdVVkU3MVZFRjVXODh3SGxCRDRGZStQdk01UDQwY04v?=
 =?utf-8?B?SjVYcU9sWEFUSmxseVlyS1ptNGRMTXRkMittNzdEWFVabEpoRG9jUnc4dmp2?=
 =?utf-8?Q?A9T3FQpdYT4=3D?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?a1F0ZXJGalNoYVRzZ3JVTXV2M3ZGRjZrR3ZFQ3R2am0wNHlTSDN2VS9yUktO?=
 =?utf-8?B?N3VSZ2R4cFhHT2QrSUdJWXdFQXFOK1Fmd2xBejFSNjI5dUx2ZnF1a2ZHcTB6?=
 =?utf-8?B?eEowK2VnZmpOL0NnWkx2Qk9mbURIdUFGcHNmRHIxQjN5TG5ncjQ1U1RyZ2cz?=
 =?utf-8?B?QTVtcjJzZ3JWbVAvQytadDhkRXlOV2s4OE5RdUxMVlZDa3BrUEU5OXdMbXRv?=
 =?utf-8?B?RU51Y2tYa2RRdGt6SmJlZVh4Q3VpK2RZZDJseDFpNWt1enZVek55K3BNUUtj?=
 =?utf-8?B?QzRPUUROVVBiQXFSd3BhNG1QWkY3bFBGUUtJK1dHQUVraGh1ZmswZVU5OGI0?=
 =?utf-8?B?RHJ5QVN4YU5rOGRDOG1ZcFcvOFRSNXFIQ1hzSWYrdEVpaHE1NnlpaDBpMG4z?=
 =?utf-8?B?Z1BrY2xEZWhRUEZUY2pIcmFPTm9vTFpvMHFuWVJib0w3WlNKSFErU1BEclQ1?=
 =?utf-8?B?djdUWXl2dFhpNkpGb1IxRmY0eTN4dFVYZnFydnpuVk13Qmc1RytlZi8zMEw0?=
 =?utf-8?B?b0xtazR5MHhIelQwWHc4d3RmbTh5YnRsZWUxNlVKQ0lnVzVTaVpjYWozdUV3?=
 =?utf-8?B?cXFQM3J5L3lvSjJnM3Mzakhod3pkTG56NGFWTkYxbkg0bEZhMVRQYTh2RmJa?=
 =?utf-8?B?NkRJTEluTWxkOTNLYVBZWDRkN3pQVVFYbDBGKzdyZTlBOXhNakEwZXp3MFN6?=
 =?utf-8?B?cUZ2dzlBYVhVMkNjYnk5cklGOWxkVHdSY1lEcVFHNUVnYjZ5SnM2cCs4OHl3?=
 =?utf-8?B?ZENzdi9VY25RRnUyVCtzNHFsU2VhREd6QnhRaU8rbFlkWDY1cGhITTB2R3p5?=
 =?utf-8?B?cjZYS0k2TGNWNmhIZmJWa3dTSmZIOGhLaGNBSC84OTlnaktHNGt4ZThnTlU2?=
 =?utf-8?B?VlJjSFBTcEIzMVdUYUkxc1U1OFZxSmVNZWk2R1NNWFNaTEk4ejNtM0llNHN4?=
 =?utf-8?B?b3pZanhOUWI0cGErQmV1TXdkZUFqSEZ2Z3U4am9wTTE5c0t4cVkyT1lDck11?=
 =?utf-8?B?MDl2NTJrSlNsMkxMYTM1UGVrQUhMY0lKOWltU2NFd3YzOXlPcjVQN09zcVo1?=
 =?utf-8?B?RnZDbEVWQVpyaFk2UGRKUnNHODJzMmRkZTBha1M2L0RNelQxbHZxRDQwV245?=
 =?utf-8?B?VytYM1dhYkNaN3RrajhpRUFxU2k3OTRiWWRxVEJVOFlGUVdSRHBNSjBpMEdF?=
 =?utf-8?B?WnpBUTQzdCsyTndhcndLRTkzZi9weDVZaFFYazlZL2kzRGkvbXRzZ210L1ZE?=
 =?utf-8?B?Z250aEFldHBzOWdaMkdxZlFjcENJYmRkUzhBeTQrMzFvZEJYUGNQSmorMGhJ?=
 =?utf-8?B?U0JQSFNGVnFpL1F1M0ZzVWFKbHU3RlgxL1NTdnVIOHRncU4rdjZ0SUFKbXQ1?=
 =?utf-8?B?bm8vZkgyb0IzK25qOWpZS01ESERoQ3I5Sk44WDJZRW12a3ZGUHpYVU9ETGll?=
 =?utf-8?B?SjN5Y0IwU0tTRkoya2F4VWJlRERvWFhZWnc1K01qeDFrKzlSWjMzV0lyZjN0?=
 =?utf-8?B?MWVleXVZUm1SSGFSaDBkQjlPK0ZKOWM0cWxqTXhyd3UxV3JnMkg2SUowRVpJ?=
 =?utf-8?B?VW9ESGRFYmJGSnRmYXNaWFh6c0dZUzQ4QnZwR0VNZnY2SjlQWTVmNTBVMlNv?=
 =?utf-8?B?V21RK1BzTDg4VXNUaHdhcnZudzJ6cm5xTUd1VjJ3ajQyR0JyODJpUHh4MVhO?=
 =?utf-8?B?Y0ZpdytsaDJyRmM2SG0xTXBBRzR2NksyblZHdVpsNndtVU56dHRoaGNSSTBB?=
 =?utf-8?B?ZGVyY2sxckZHY0tadkplWDh6ZitvOVhId2lOYW51Z1RyWUI2L041VERVb3Aw?=
 =?utf-8?B?Sm41UkVlRG9YZzBuOXRVVUJBSnNObWlkNkVYWnc5d2tvV1pqSlp2Yjhja1Vu?=
 =?utf-8?B?QXhEUThPUVFMZXVBc0FxVERmd1l6MDAvc0k2NlhQZlc3b1hjajJPOXVoN1N5?=
 =?utf-8?B?N1R0TGhBL1V6NUpTVTd0cVJjcE5HcjJ3L1VQc3RxZDBRM3FXV0M3ZTc1S3VM?=
 =?utf-8?B?NWxGVm5uVGxiSU80VE1XaG5INUFRYlZiWE5jN3psTnlXc3hoY0JSN2xKOTZa?=
 =?utf-8?B?eTFheUZ6SWxwemJDNng3V3ozNFJ5bFE4djZsVFpKeVMvRmVzUjFXeUZQN1dl?=
 =?utf-8?B?NFBNN0VyTzNFaFZCdGxyTGMzNnhORlBxYnY2cHhVM3puZU9ReS91NkdSQjBD?=
 =?utf-8?B?MUE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: de03cd82-709d-41a7-e3c5-08dd7b435b19
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 10:58:59.4102
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6KXo2vi0K3EjbCudtAK4gv+yVbKoV+XwTuFmFgl94/c8MGZOE+7fLypfmF2eJuMWjXybkurJxMJqxjPN9lml7TTPHgEX12Hkdyx7U9KsndI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10442
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 10:59:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65157

Hi,

On 4/8/25 3:12 PM, proffesionaladdress2 via lists.yoctoproject.org wrote:
> Thank you, but branch is never reached because the previous condition is never true in this code (and I don't know why).
> Even if bbwarn print 'WARNING: rpi-u-boot-scr-1.0-r0 do_compile: isempty=true'.
> 
> isempty="${@bb.utils.contains('MY_VARIABLE', '', 'false', 'true', d)}"
> bbwarn "isempty=$isempty"
> if [[ $isempty == true ]]; then

This syntax is not supported by BitBake, please use POSIX condition here 
instead. (i.e. not the [[ ]], but [ ]).

Cheers,
Quentin

