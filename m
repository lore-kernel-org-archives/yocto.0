Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 256F1C25B07
	for <webhook@archiver.kernel.org>; Wed, 10 Aug 2022 15:35:56 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.49])
 by mx.groups.io with SMTP id smtpd.web08.7325.1660145749710051136
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Aug 2022 08:35:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=GNng0111;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.49,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nIBSj3vemm8SVUHP08PqawHs6pP9CMP0WW69iAgz7K5TD5Vc/eWKSvmROJvq8Lz2NWgCOhhT7MtZRTsQ4XglQtnTQzCXkIari05+UV52VvZ9j9OAiqDaD8jh/9w4DxSq87McVi5V/pPEb6p2wwvlJJJwnB5CdGcTsUbNz1unrujy9FEywVeZN1h/ZsA7CgAnjyInOJ8jfcb79MhRcH/eQ3WdlA1R6OhI5g8RlkssqRVGOV5Q3TAdZPzq6DMXTfAtt3gyjQKSQGLxSMJtpHaPIfnOSg+ktWov1AjXMmUqvuLwobYBWlD6+HU8crKjG6VgwCHEVBW+brPwp3Z+eVY3fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ouvLGehThzwHREQCm0uYYf7fVm3ihndDT9y4rr5zvdk=;
 b=bfChMxZrxlgBQ6jLEb2zjJ2K+0n+CHKntWhjYUd2TY3JNLJ1mKYJhVE3DorpqYyWv3gk0fqoZAWm+nxfdWlnNSqNFw/VosDkd2y7gelOKCuQ1rjd5e+Sn4WjHWw5pgeM7SY4yWwACnkPRhkRGyye59JPLQyDI0LbCxAb8JV7rk5SfD+IZOIYNXHQtyUvI8miC32eySiQ1zEbd0q1xkQmuSqAhFEYThPDAsH5N2jlOpr3xh1ZpcTs7VOm/gByiriPYMFa/Npf+zUJruA+dAXS2sVy1WGQ0AF9BI3AdpGM0IoEUL67TjhaMB2FfrDnpVrBLFs5ObvfAlIdXC4Vka6OHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ouvLGehThzwHREQCm0uYYf7fVm3ihndDT9y4rr5zvdk=;
 b=GNng0111KizGh2fTwMhbh5QwBkh6DDmzfSnAtALfTUPr7Xf3YAM0vLT+NCrQlMVdNDwBwvHF60caYinkFSeCV0x78jpediMSOoEIporUcp33GIQX9a3EQ1p6EZe2kcd5tFALKYFCMF1ip44lv47JSqffRuK5C6C7NyaRor7cH0k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by HE1PR0402MB3465.eurprd04.prod.outlook.com (2603:10a6:7:80::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.21; Wed, 10 Aug
 2022 15:35:44 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::81a8:1bbf:5e16:9b4e]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::81a8:1bbf:5e16:9b4e%4]) with mapi id 15.20.5525.010; Wed, 10 Aug 2022
 15:35:44 +0000
Message-ID: <a287bd72-afb2-5ca8-bb7d-b40d1bb5fa3e@theobroma-systems.com>
Date: Wed, 10 Aug 2022 17:35:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [yocto] Recipe with kernel configuration fragment
Content-Language: en-US
To: Maik Vermeulen <maik.vermeulen@lightyear.one>,
 yocto@lists.yoctoproject.org
References: 
 <CAKO9uzoumrOvHtcRbCJ-kx=R6dnUOsgdQwHkkjVP6TzTHMEy+g@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAKO9uzoumrOvHtcRbCJ-kx=R6dnUOsgdQwHkkjVP6TzTHMEy+g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P193CA0132.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:85::37) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cc3fa737-fb5a-4d20-8c3a-08da7ae5fd8c
X-MS-TrafficTypeDiagnostic: HE1PR0402MB3465:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Iz1irgbUcW5EYo5QhHfeYiMWeTZRvKqfrVl0W16q0HSw17HomTWTlWMXYxMYdVDFHZr7KEkpAKZBDK+acebG/sMLtz4EEbcoX3mVUbq/IWepVs3TMKJnVThzb0tWDWxbj8A5fksMDXhSp8qWbyumsyc3i+V9D4btH3p29pI+kQ8RROvQNdsKz1ST2A/xIkRNXyLdcOyt7oyQuZ93AkgeNEV/vJp3WxeDiYMev/Nq91oi2/11Jnupc69h2dZnUO2Xt1ZOajPyIFamreRjkVVlOjpxrJ7IO4LzBuEudk3sfOiYUWhxJySVRNnBMZgm20QUzM6V3+ooXFvJlvNSYnY83v7zbqr6RhfypC+82pcY3NYeo5uzGO1tkXIv4PjjL6wkwzphtkto2BN4c5sEs4b+UDKJ1FyvEph+dda+gqhQHNdQ2GWT3vXqpHzdx5uSM/2ZfHngmL9IPaRumAURFN0QEz9CgT6jtZxA+19l5tmYXk+g901/at1CasgK2ixF2L3WyobRbcATdAxKswVx9Vh8/5LnHTkGMtVLCRLtLKwQiERxUdqUqs3jyu020kSJSBD6lqnZQ5rdGGmgQWBjHDsevNst5DwGWqxQAp3AEHlJfkufDJwNEGQdwP899C45Q/1o4NMnv1Cg5JmBogU+GhiIgtNrOjVlnydIPGfQciAo9mSbADAwCzBpBRy8HSXfPe5UaLPpQzkezIkeTxmNzx8JJDEHG0EbxZqW08oB8TV9hSYriVZCkeK5prElvy6lXObOFfQNnzvFQMh1ijx48zXu2hTuCLr+eoKtclOzVMw+hvqwLfKC0BKnFw25O6Kj4pts7zq3J2PKCnQMu079qtW3GQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(39850400004)(346002)(136003)(396003)(366004)(316002)(6486002)(41300700001)(478600001)(66946007)(2906002)(66556008)(66476007)(8676002)(5660300002)(44832011)(8936002)(38100700002)(31686004)(36756003)(86362001)(31696002)(186003)(2616005)(53546011)(26005)(6512007)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aGluUGdjdVNObnFLY3B3SS9IbjNwa0hnOTlxZ2hCREs1Um9VVG1EZ2JaSEhY?=
 =?utf-8?B?STVHZ0YyT2pBbzNJMU1RU1FBK3lGa0trbjZBSi82d2F5UXhKb3RSbHFsbXNR?=
 =?utf-8?B?WWsySXBudVlwRVVoOTNwMnRsQ2NBTzcxVnN5U2ZOYjNOSzhhaGhVWG10UFhl?=
 =?utf-8?B?ZTVLU1RHb09Wc1lHb0c0dnVEZVpKcXU5dDZhdk03ZHV0c25OemcxU25zMmJV?=
 =?utf-8?B?SDB4c0hIdEU1U1QvYVJLK0NHcGZmQkE4U0pVU0Yxdk5XVFo1eVRrM29uenM0?=
 =?utf-8?B?bWJqU0k3Vk9ubnEwYTJFL29NUGIzZWhWbUpUMkYzbFdHQXJoc2I4ekdtaFhD?=
 =?utf-8?B?SjBOV0s4cmd3ZCtLRjN0VFJyaUdkcWVXL25VN0JQdTl4emEzUlRHMGRXYXRi?=
 =?utf-8?B?WXg5K2t5RC9hcjRESUt1WjU3NHlBWGE3T1RDTUxTZldBRkV4R1JuNGRRd0c1?=
 =?utf-8?B?MVYrbUJ0cVQvRERGZGtFbzlOKzNoZUZwc2tMeW5ZdTdrTjZsblI4TnZDbTBD?=
 =?utf-8?B?UGRIcnE3WUtIZzhQUWs0ei9Wc1duMUdTSWdSaGdJYlpvcnoxdVJ2dVJxaDBG?=
 =?utf-8?B?SzA1SUp0THZBQU5lblJGV2VWcUs3SlBOL1RxbGlYbFVoeXRlY2NCUlg4RE1Z?=
 =?utf-8?B?blZ3NU5zRDVMdUhCN0VIZHBBMllnSkdDeHl2R01tRGpnTU9nbThlQzBIV1Bm?=
 =?utf-8?B?YjRhYVl2bWRHTGMwVVpSUzg4c0VROEI4T1o1YzMwWUZOMkNUTUd6KzR2TlJn?=
 =?utf-8?B?UHcxRFBQWjl3aHRDb2Z0QXczZm0vMytMNVFwb2ZkK1JxcTVOVXgvS003SDdO?=
 =?utf-8?B?RlZNQnpRR0xDMXdpUE9ZZjhXd1daUEU3eGVkYjJBdVlJM1lsWkNPMGwxMVlN?=
 =?utf-8?B?Wno4ZmMyY3ROOWRrcnNINkM4dmF1dEhkcWZkOGs3c3JvNnNwUGdvMkFyQ2Va?=
 =?utf-8?B?UmF1QVFUUTRnOWViRUczRFphdjc0MnNydC9lYk1BSVhBWno2MVYrcjhtcUNq?=
 =?utf-8?B?STVkRXZXL2U1MCtUSU5UQU9sVkY2T01YektPQjlhVEVtMTJDaGsrTTdjdmFs?=
 =?utf-8?B?QUJKOWpHRDBQZGkwSnFwVjg2Mkp3Ykl5azNSaXBOWGtLNVQ4aVVuYmovd2R3?=
 =?utf-8?B?YkVyQzJkeXN5ZDdLYWVxSFlaRkNiWWUybDJvdU5TYXQwbmlodFdyMnh0WXFp?=
 =?utf-8?B?Nk0zUVNDZGI5NEtRZFN5bTh2ZFJrWFdpNlBoS21ndjB6Ny94bFh0SjQzVzI3?=
 =?utf-8?B?Wk92Q29SR3VvaCtQSStlTFpmbzRPdC9kVUE4VGF1NlRJTk1kMmVFZnJ3TDdt?=
 =?utf-8?B?Wi9pL3JSK3I1eEdlMGd2clUra21ReGkySEdBNWxxMHQ3UXlhSWw4Z3JwUENk?=
 =?utf-8?B?S3VuUmpVT1loSUdFaW50V0xaT2cvdWFSNERWZzZkdEdQSExBd0FNbmRYNThw?=
 =?utf-8?B?MjIrVjRLQTkvSTJ0OVl0RnNqV3ltMEw1YnEyOHF5WFpBMkVmMk9rZ2lWdnNy?=
 =?utf-8?B?SDk2QmJOMm1qdmdOSXZBazE3VkZqU0RSUmViRDNGYVh3TThWK1hRK0J5ZVVX?=
 =?utf-8?B?Yk5pUVdlbkIrR0NsOGdpRHV2T3hEK3A3ellBeEtUR1dDczdqbXduOU8wK0xw?=
 =?utf-8?B?TE5NYjlaMDh3WDd1c3BvRExkRGxVWUxLUmw4MUdNUUVkRXFtenZweFAzWDJW?=
 =?utf-8?B?OTlTWkJoUyttd2d4YVk0RXJiMjdneDNaK0lpUjVoWDhPTHJRY0tGZ3JYRWxq?=
 =?utf-8?B?a0hTakQ5NzVnL29FazhIanNSdldzeE9VeG9FRWhZanE5QkFpdTBYRldORXpw?=
 =?utf-8?B?MVpmbDkvb3EyUWwxczR6Zm1xUHBXc3RJWmppUmFaTUpTQ3o3ams1NTFGa0Fj?=
 =?utf-8?B?QVFhVmlwTWdwVFlXd08rbW9QcHAyZ1R1cWN1a3BIcjNrTGtpa0xsb1Zmb2gy?=
 =?utf-8?B?WGZMVVFMQUprSlFBb3hIN1Z6SXp5TWVMVk9oNVBmaVlvbURPV2c5MW12UWpS?=
 =?utf-8?B?MnByREcvZDVOaU04Y1NTMWhWdEhJSlE2UzJpRGVlVFJZY0N1eXJueG8vQU55?=
 =?utf-8?B?K0RuTEZYZUJYdWFXazRYbUdjdG82ZzN1VFhmZU56eFFsTEZnYVlvem5zKytr?=
 =?utf-8?B?YjFmZXRvQXZXWWZ3MXQvYTNaZUdDbW5wRjBKYkRLbElTOUY5aW5Zdk5xVEFB?=
 =?utf-8?Q?cxPkaJ+rWgiIvQTjbILcxQs=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 cc3fa737-fb5a-4d20-8c3a-08da7ae5fd8c
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2022 15:35:44.7229
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 JqWU64C2a5SLNGkA8404Cse/zHUUmB1hazi0iKHLGUMP9mNW9AmrdYFwyr4b2kPLPugsugwhw1/OsEbPSwYpfyNuAwgZDr54yCg/zC7izu/2tsb3ihNqoBplNTY1k14R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3465
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Aug 2022 15:35:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57819

Hi Maik,

On 8/10/22 17:19, Maik Vermeulen wrote:
> Hi,
> 
> For a firewall recipe using nftables we need to make some kernel
> configuration changes.
> At first we added the needed CONFIG_ lines to a bbappend in the
> recipes-kernel directory of our own layer, but I think it would be neater
> to include the CONFIG_ changes in the recipe that needs them, if possible.
> 

This is not possible because recipe data is local to the recipe, you 
cannot impact a recipe from another one.

The only way to have 2+ recipes doing some things in sync is by having a 
variable set in a global scope. Such is the case for configuration files 
(distro and machine). Since the selection of nftables or not is not 
related to HW but policy, it should be in a distro configruation file.

You could add a custom DISTRO_FEATURES to your own distro and check the 
presence of this feature in your kernel recipe and apply the config 
fragment with required changes. And you can make the nftables package or 
whatever require this feature with REQUIRED_DISTRO_FEATURES.

Cheers,
Quentin

