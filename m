Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C8A0E7D24D
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 08:08:20 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.48])
 by mx.groups.io with SMTP id smtpd.web10.14142.1695715699133545469
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 01:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=h2apVY6z;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.48, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nZsmHlF5vJOuoMMtQtLOcmOWLVBnW+wOAKgTrsoCbbd9vVUuKftXVSF+frmVGe5wyuLrugOrROcG3Uogi2xG2oQOD4aI83z6rPjBDz0Wjx4HicdEqmJbzEeqGwEnRZdNuG/N1ruJinaL/nL706bxqjeS+uzqJPKG8i8/UVw8yULpsH0UJxXn0Yvqr7IB6IPpTfvuM5Dt50kry2Sm5iZxJ1PEaIdAzymGTtDjfvs4WCtDrENqhpbyMBXIq+rXfuzureHntOrsQi7i2imjy70akvG9Gyv6p4Oy52cn1vFm7mtmAUe1OzNilX4phO4CefTFN31RNIOENfQhiWojNACk4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y8j4Gl6cxSGxCoBizD9aLfUMJtOcTG3Is4qP1gKejF4=;
 b=i+mswhc9vNJ//0qhHBOZ4iUjq/2T82gamLkM9iQ5lGA7KtlwUlgv1NODeEDYsOd4Z1SosSl5ZKSNQpS7XLHULaw7TzRnAD5vOOp7+mfoXr7I4iPeksPeXmUVOqV8cwPZQ12l/ANiwcJcG6F9k6JuEHDQbkhIH+TsEif8cvgHT9qymEcD7SP48O8jzm4vuPMCO01y27dM1CGPi17m3L9k+LewIY/AyvARpZfndJwZYSM0QCNcdzCWSyX2ElkcLAV0YdY31OZ3NctO37fqWeT2Q51Yod+FxFzxNHofUmlz6WQ4sGgTZQbA1CkL18dhq3bO6CkXSPt5nm9uGSQTVo26YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=y8j4Gl6cxSGxCoBizD9aLfUMJtOcTG3Is4qP1gKejF4=;
 b=h2apVY6zKrD3Gv5MRcFtMSFBTPmPIvaf5zgXtGx2WNjxX5EM9iMo4CPGAzYACejSVyx98aUX7v7QqRqHMABrmylH/Gdx6y3gv2nseHXCfFdZIljOej1ZGH1idINw0VzwPbPLU+nqO/iKlSAHBIYLcKB3yeaLgA7c5qBWViOib+HUcCpMmIC4Iw8B6ccCvqdpUrr/IfcYybHx9HlKQSx8ngBSe4c0UObpHqQCkhxnv/iTT9GeBDv0JMMST4g9wvZqHTT2SA+5oGdZxhq6aA5QQpmHEs9IBdwsoG/udlZ56vDVdJyKz4y+31J+shfhg4klvCIPfPRGubxUYzznMhe+0w==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by VI1PR04MB10001.eurprd04.prod.outlook.com (2603:10a6:800:1d9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Tue, 26 Sep
 2023 08:08:14 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Tue, 26 Sep 2023
 08:08:14 +0000
Message-ID: <afd35866-a2e1-a9ea-d8ee-12b14c93f2bd@theobroma-systems.com>
Date: Tue, 26 Sep 2023 10:08:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] [meta-rockchip] [PATCH] Allow KERNEL_IMAGETYPE override
 v2
Content-Language: en-US
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230926043657.3897658-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::16) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|VI1PR04MB10001:EE_
X-MS-Office365-Filtering-Correlation-Id: 796b6631-f8bc-4d35-567a-08dbbe67bb9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0H0UQwyUx9MMDzSelRVvd+Tz+EfUvf9U8mUW/FS43PA0ox88Wl5jGSQgcEFXzp0OmrUAf0924755JrS8ac7DuC73AKzD+T20FH9MLDInAN8RayCVTMFIJxYeNt3VrFDRVk8FOeKpjg2fxMbw1Nb8NxKsC9XLnLR/8qifdvKnQffD86nz66OJHRPBqgjJMGu9lXaCNqbL0IiqoO7S4+0vviXKiP9zfM/q80YHV72fcGTgyIDGu+LTXLWOlL6R5AGESSuw7JwLhC0qyO2Nh5I14P2LhS6q7cglVPH0hM9v9ge/bIt73rchiCS0c3w917CfCboDbeTNYQ2Xjqnakgd5uyCdyl5NqusH4Csxf3WCKGz/WBxohmgc+tk/TpwPS/vs1iwktWB5pQBnBRS1rLrDMcybzlq+hwo9FwMYxAvUkzkBcaixf5jrNtkH1Luk0+Ji3SIht6Pj6AiZxE0xbEoqNhsz1CrhJ3K02xlyf5KxVvKIFHGsdlCfwiMt2L4LQ6Bn2xHSuSNrwxpQQiJdBQQi2yqDQL4mqE5Tqzw20tpVRC5UW+unMYbd/jFf6uHBb1RyrDA+9hcGDiMibhPQYJSN28Q33SfpRKG3X2xPWw2RbpKMSsrVu1BwFq1GaXtbDrbEuCMs45nRy+7wX+vjc9a+GQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(366004)(39840400004)(346002)(136003)(396003)(230922051799003)(451199024)(186009)(1800799009)(2906002)(44832011)(31686004)(8936002)(966005)(6486002)(4326008)(8676002)(316002)(41300700001)(5660300002)(478600001)(6506007)(6512007)(53546011)(2616005)(83380400001)(26005)(66946007)(66476007)(66556008)(38100700002)(31696002)(86362001)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?V1U1NWRCVktPL2w2WGplQ0N0dktPbEZ2NmJFc29YU3Y4SFcybE83cHpZUzN0?=
 =?utf-8?B?U3VVN0NzSWdNV2V1N004Z2hJRGtjdGhobXUxRk1aZ1RVM0c4ZkZKeGV1WmZu?=
 =?utf-8?B?SGhmTjVDb1ZwZW92Y0x6OUhOeDc4WUZuWlU1MEd2MmllaGJKQVZadU9qZ0Ri?=
 =?utf-8?B?eVphYVg3NHJWRVBDanR6YTYrVi9yVnhMZUdCdGtUT0dpSThjYUFSMnYvNG9q?=
 =?utf-8?B?c1lQbnU3dCtmODhVb0ZRUVk2RW1XT2pYZ3pjQS9pcTFFMmtYMmRPZldqVkEx?=
 =?utf-8?B?dzFJQmQxbkRmUFF4eWJDYlhXR2ZjRkp0elVMY0RpMjBmcytmTEV6ZGJZRERM?=
 =?utf-8?B?K05UTVMwRU93eVlhWVI0RW9zMWFFZmQ0VjFLejQ1c2VWTGtSWDhrZWFzMGhu?=
 =?utf-8?B?L1ZpTVFLQ000SDVBdUgrZHdUQ3FYcEpTc1FFOGRiMmtSWjJoSjg5RnIzamt0?=
 =?utf-8?B?K0UwUmNNK1gwSlVWMG03c05IWkYvOTQzZFE3czROcTRMRlJ5ek1Dc3hKcFdM?=
 =?utf-8?B?OHhndHVrMmJpQjJOdU9RV2M4M2ZhRU5YSHVLQmRpdExiN2RHVlR1bEl4MjlI?=
 =?utf-8?B?aUFyM1lQaEFTVTR4eGNMMGJVZmR0U2VLYjV2SDF1NEg2c1RFODFhNXZMNHd5?=
 =?utf-8?B?bzYrVGg3ZmY5MWpkYnczd3A5LzNhK0xscnNkdlI1d25ya2twZlo0ZGs1Z3Uv?=
 =?utf-8?B?SDVhclFZWm9saTNmWVBtNFFSNk1lK2ZUaEllaEN0TFp1cGQvLzhtMGQ2azkv?=
 =?utf-8?B?RkJmMjNUUC9RZUZ3SGFFV3g0emgyVUpVZzRNbGJnMHFJNlRFU3JaT1ZSd0RD?=
 =?utf-8?B?VDVDcFhmWG1STDVMU1dzeFBENlA5NFRoc3lDejBRREtWMEhjZVM4OXdBWXgy?=
 =?utf-8?B?enRsKzBwTEduaC9FMXZQazBBYzhCekxTVlk2S0dGOSt3TDVvTU95Wng1d3Uv?=
 =?utf-8?B?ZDZ5ZjVDeWduNDlJQ05yUjZJWHdnVHdVZGJvQXBpV3lNWFFlSnZwcjNYSXRG?=
 =?utf-8?B?L2JuVUo0MzRWTmorN2ZlWVdTMGVEay9aUHlrUGNYQ1NhY1dldlBBcVMyZVNq?=
 =?utf-8?B?T3lZN2hwQmYrZFRaSEVuMVZjYkh2TU1rR2hOZkljQlAyc2Y0RGE1OXRlQ0N4?=
 =?utf-8?B?Nlo5a09EaWl3S24rWHdwRWRIOFlCS1Eydnp0TlZURm1Pc3IxUnlJb2VQQU5R?=
 =?utf-8?B?TjdnT292dUZlcVU4UHBNcllDdkRGS1ZJS1lmQytnUi9oVjErWUVBWmRwWW4v?=
 =?utf-8?B?bXE1WFBadVNQcXhVZGQzQnBRb3Uwb3NTb0lYUXZiOW9lMzQraXlrT0JKUmtF?=
 =?utf-8?B?UDAySFZIOTJzQUNBVU9yekZkK2U1T2d2L3ZYQWdnbzVDQWZ3UDJrKzh4d3oy?=
 =?utf-8?B?TDdIRXlUc1ZUdEFmd2pqUVowOENsdGQ5ZGNvSG5hbEhmWUFjWDM3RVZBRG1P?=
 =?utf-8?B?dlZSU1Axb3E2WnA0TXZMeFlRM3l2TGsxeHUzWkZhYXhpRXR3dDZUTE5wZHpW?=
 =?utf-8?B?eGZVWjhTSUNmVG9VbFVYbUFNNnI2cWJqd2NXUGJTVW9seTNuZ1ZXTzRlNUdr?=
 =?utf-8?B?Zk5jYVpJWmhTaGNKalBjdEdXWEh4MWxvdmVoRHdJcmhEUVowbXpRbW41cTNj?=
 =?utf-8?B?VEdyTERKNnRXZXV2RnphMU1ZbjFZSXhvMjU2YlhMVEVmN0FsZWVnbGJvRk13?=
 =?utf-8?B?c2RXMUptSSs2K1FMU0NJRmxDRlI0QXZMN3BGcTFQQkxPQllMUzhPSmMxdkJX?=
 =?utf-8?B?T1dBcVdTZG9hMEpwSGFYRllqdEVMdFNOYkNVTlRKSVlwQ1A2TW5FQTl3N1p0?=
 =?utf-8?B?cVgxQXY4bGRqRUZJaU9UUy9TVC9nbGp6aXJnampobjBxRVhUZFZOZjJaLzkw?=
 =?utf-8?B?Ny9wMkoydVNMZFE2dWFJWWNLcUE3MEdMcjYxTlZ3K0RTcFd5bFVhbmZSL0J2?=
 =?utf-8?B?enBySkt1VWx0UXZHTzh5dkVhS3RGaW5pMVhKUVBYbDc3RUdTQTNHaGdoQzM4?=
 =?utf-8?B?WEpHVlVKb0JHQkpRbHdpMFh4Z3NZMmNlQjlZbE9kSzBTSFF2a0JjdlY1NGo0?=
 =?utf-8?B?ZnRmMXZlN25iakoxWXhzYWN0TTF3TnJLSTdVdkxjR2toTEpPc1Fia0JoSm1l?=
 =?utf-8?B?dCt4TXJCUFhBQVU2Vm91NlJkNi9OK0NBTVBPYkdaSmdXQXBBVGRYSFcvRUFT?=
 =?utf-8?Q?U8mHnHd7M9e8sYQIx2j2ndY=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 796b6631-f8bc-4d35-567a-08dbbe67bb9d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2023 08:08:14.2814
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kCwJVmtSwoSrz9SsqkgHRd3sislgIIq2JIvGniO7OQ7eYuit7i0gK3eYble3L4cciwnHermQGw6jto5Bmt83CklKoX7dj8JWihzB7R+SzapUBq8aOWsimgR8rMNMeXI0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB10001
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 08:08:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61119

Hi Anthony,

Thanks for the patch!

On 9/26/23 06:36, Anthony Davies via lists.yoctoproject.org wrote:
> [You don't often get email from anthony.t.davies=gmail.com@lists.yoctoproject.org. Learn why this is important at https://aka.ms/LearnAboutSenderIdentification ]
> 
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> Apologies, this is the correct patch
> 
> Updated inc files to allow overriding KERNEL_IMAGETYPE in local.conf
> 
> Fixed bug where dtb couldnt be found when generating KERNEL_IMAGETYPE
> other then fitImage image due to KERNEL_DEVICETREE containing the dtb
> directory which is not available in the DEPLOY_DIR_IMAGE directory

Here we are missing your Signed-off-by.

I would highly suggest to split this into two separate commits, one for 
allowing to override the KERNEL_IMAGETYPE through local.conf and another 
one for the device tree thing.

On another topic, I really feel like this is more of an issue with the 
class handling KERNEL_DEVICETREE when we're not using a fitImage don't 
you think? Otherwise all layers will have to fix this one up and I don't 
think that's the right way to go.

Cheers,
Quentin

