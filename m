Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EDEFF886F
	for <webhook@archiver.kernel.org>; Thu, 30 Apr 2026 08:54:58 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.52])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.15905.1777539294474186959
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2026 01:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=T3+iSPfm;
 spf=pass (domain: cherry.de, ip: 52.101.72.52, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wlenx4X/KTeeYSBpXsoNDV+bAZo9lzM93FgYggQl+Ymn98NI45v9eJ3vPGr877TC8f+3bFtmu4x78bHtthd51aicCBRhDN0l2MCIkjM9jWj6Fjo7PNpzrQEkU6Ds4teSrL0WLyhcbx7HhBxWoxDeMrEyPQvzGuo79v+B40J+irAwvhwt5Vo/Pvjr1U2fz+o6vEKTWxvBYLTprhkRn2VckA6MaHlR8Wm1t5FmsA9hBeDDivQfmhpPUes5b6VObK3xz6JcwGDSvej3IpPneEjLXBAr+Z4Q9yd96NhGphJRG79oEXZAW4eyxb/9qg/8QSlH4jCN2gB7YZuGeFAPwqcZ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rDTMUb1W1kY65jRI55e2qa7+N/2RoNuXOKr62nEXcNU=;
 b=OPHXfxGmOHbcRLhVGD8P46Bf2AruaHMgEhTGFLUOX7+zk4YW/7OUsKuHltbArWbC14dlbiwMJckdLMBD5gsik5KIsNyOlzpa5BRsk/lNdFSfbGq+pQbZPTfiNAtd9sqrnKXF1u25JHINHuJO/9HG5DO3JSHV0/OOptiBsTv+rV3YP5fK7jjDpxByu4kA6HoI5Ioe93/Ux7N90UpYsAttTrhOOaQvPDFJwHCqBKqh4xSR6C9HGHXriOXvKVRO783WFN7qT+8hzmVU66BEN/qISqmNPkNldIbU2LgYFwQNtYnhUKtgu1z5iB+X5od9U7qfJkmlxhZtlQ3IIsX+577xrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rDTMUb1W1kY65jRI55e2qa7+N/2RoNuXOKr62nEXcNU=;
 b=T3+iSPfmfJNeIL7wq+oi4yM75/EAAEiW7eKr0PMea5pI2HU+O/jOj+SrDJ887bbkjZxpqeP9wi9KbrTpE/wn2HOx8EKYjIChgAEXNzC/sALSwTVNQhRovedCy5sEkfJAqZJ/P0MYGhDiDit+MyjwpsNXlHdvgsrHURhBtFchcsk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com (2603:10a6:10:1e5::22)
 by VI1PR04MB6815.eurprd04.prod.outlook.com (2603:10a6:803:130::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.26; Thu, 30 Apr
 2026 08:54:47 +0000
Received: from DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00]) by DBBPR04MB7737.eurprd04.prod.outlook.com
 ([fe80::5960:fb4b:9313:2b00%3]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 08:54:47 +0000
Message-ID: <665c2ad1-c256-4462-950a-75cfb9103505@cherry.de>
Date: Thu, 30 Apr 2026 10:54:45 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] Rockchip project: opinions on RAUC vs SWUpdate?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
References: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <3d16b44f-0617-c8a9-4748-b817ff9bef8a@crashcourse.ca>
Content-Type: text/plain; charset=UTF-8; format=flowed
X-ClientProxiedBy: VI4PEPF000001C8.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::849) To DBBPR04MB7737.eurprd04.prod.outlook.com
 (2603:10a6:10:1e5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7737:EE_|VI1PR04MB6815:EE_
X-MS-Office365-Filtering-Correlation-Id: e386ce8a-4bc9-49e6-7ea5-08dea696218b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|10070799003|376014|366016|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 
	X91T2R8sbdmlJJPs2NON71jMV5NSYSsfXBsd+WaKCHqDNrpn4PoXtTlbZSWU/T1wrqq22SWrXFRcnfBg2fcZVDGL38gz8Nc8l4WC6S1ANqhFUp6CVvu7RgqXBwKhmlXdONG/kQOGNDJbF9f3VruOxXtWKGy/jF7E5p9VH8avWX1eNRpGAAcqCsKE5iZ/s9qNhm6Tg7qkZx+2kuFDSs9exP7mq2K8fjX8itoSxmb2w+UwphQ+NSNiYbrVMlempjVuY8bcnDn42K/dHkxnHt76n0rep9EMPbtv1zgXHNgIPtYwxCdW2h5TCZJ4APkRvgd/K8pXN+5shV8Hv/TUJTFo5mW9GHc7CX8lxiqIanGIrfQVb4514uVvexEGxQLACDjcJKznHpoF2BdxVB2ytUnh+W4eWcoM1X2qH9lu+vJYE+WLv4nY48MqVMw76szAAZEutnr9AN7p2z5JsA8HVHUJhUuulfRKio48gXogPgiUeviz5K3suIFI59KWGI7K/T5YS+TMHw/Kld3bxLUJln4pWW/26lCN+CXQmEX1gFpZ3p3vgm1Wl0IHBFIv8bP8eQIVT4dXvQ+hDY+mdVAq20a74OY2xpH3nklx0ilnsOJUTtBhF+siycCOuIrrdEPaEeNUUnuPOKDpnQ+kmDHAYwuPM+xfjnshUceFUsG5MlpwJW/I9Qn9t21vFnDROBjlZB2V
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7737.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NDJBMFpwOFZVN2Y0aHVlMEJ1K3I3QVBVYi96NzV3aXpJQUZ2ZmNVek1OUUpQ?=
 =?utf-8?B?WlZlV2VjSFAyeDd2TmdrMXQrK0pzcVVqZnFjby9VQ0RXUU5kbFV4cE1JVHVk?=
 =?utf-8?B?R0pDTW1nKzNYbHRWSVZRR3lUVXNmR3NXSitEcVEzbEdJVi82aG1tbWN2Slli?=
 =?utf-8?B?OUpJSTd0WHFhdkpGSC9ZNzdyejN0ZkpuRUdnQUZGUDRnTVZrTXgyMVhjRGRk?=
 =?utf-8?B?bnlqNmtkbVM1YmI4dkRTVUlGckRkK1lKZ04xTDZTbnd4RXlGVU9BQlFoZ0xZ?=
 =?utf-8?B?emZkMXh4M1BRRnpxTll2bmVWOExVZUJkTmxkVlowR09RdnJ2YWs4ekVVV2JC?=
 =?utf-8?B?NW0zdEx4MUxvSEdrTEFiV0ZuL3JhZWg0d0E3bklRWk9aRnp6Rzg1V3pXNkIw?=
 =?utf-8?B?OEdhRVZLS3hGVnE0RUtQbTVJakFPeXhJbGFpREZTcGp4U2loSFJwTWhwejR3?=
 =?utf-8?B?YWwwSGpTa3hmV280eDVZV1VRZ202VHlOL1lwQzJFWTE1YTRwSmR1d1ozV0xV?=
 =?utf-8?B?YUFJbTV5Z3dJdnYvU3ZJVldxcHRiRDRqM013T1FRakdjRC9jV3QzL0JqY3JJ?=
 =?utf-8?B?UGJCVzJ0MnBHTXFzRm02VDdWL0V2MmxYc0JwMDRqdnBMYmh3emFFa0hzanh4?=
 =?utf-8?B?b2RlYzRDUHVlTW5OTTBvMHRCUjVNVDkvUEhveXI0aENjZHBSSitTZ3lLMkFo?=
 =?utf-8?B?QU5veEJqMTJoSGVHQm1ISkptUzk1K0t4N0pxZFhkMzltZ2ZtQllENGZQVjFj?=
 =?utf-8?B?SzMydDBod2xmdXVJWE01dE43UDFleTVLYUIzUmNaR0xVRFJvb0RlVDAwMXkw?=
 =?utf-8?B?ZHptc0lGUzJTMGkzS0s4akxCRHFIempyTG1rUXhNRll5bXk1TEJ5UWo4eDBv?=
 =?utf-8?B?ZXhIRUNMNnA1UzJ0dDFkaS9SWlZLeWt4Tks1R2NPQzk3SkozbVFhZHp1ZndX?=
 =?utf-8?B?eXhXK1RzNmljd29ZSitjSzR3VUdjVW5taTZVTFE1di9veEozd0hZcnNFRzZB?=
 =?utf-8?B?QVRaOWI5RlNzdnBPNUFwTTJFY1NCWmZ0V3ZGbU5nakVJMFlFY3pBSkh1OXBh?=
 =?utf-8?B?MHZNTC9DS0F4TGZSbDhZWFpIU1FqWXdUczZkQ2x0aUNCSDNwVEEzNU5ndHIz?=
 =?utf-8?B?WEFhRnVLak00THkvWS82UnduMEJRTFZDa0c1WEo2eGx2RE9IM3NvSy9JWE1Z?=
 =?utf-8?B?MCtsMU9NTVJrckM1UE1YdHNMcmJjbEtUZUgreElVT0ErckR5UUdOZkVrSFdn?=
 =?utf-8?B?YXRWUkdsYmdERHd3a1Q5a1c1QWgvUUgwSUdsZmVrZ2xvS3J0QXVEMGNaQ0F1?=
 =?utf-8?B?bUY5N0xGZ0Jpd29hN09IdnN5SGFnM2pVYWJxdUUxUUJGR2M5d3RFMUNEUWFV?=
 =?utf-8?B?RGprQlhraHM0eHFKVnpYR0x4T2k2OExmYlB0YlVmWkFMMnY2c0xNSERSa29R?=
 =?utf-8?B?SDFkR3pBQ2xBSEFwOEI4bGFzWGhSWTNvR1hMQXgvTWMwR3pTZURKK2M4ZUNX?=
 =?utf-8?B?ekNPWFBOdTlTWlFPZWlHTHBBN0x2T1A2TUJ4eU1VZTkzS2F2a0U0cVp6TW9m?=
 =?utf-8?B?bVdUOG1DaTYxOGlOSUxCR2l5WUVtTEF6SjZjTDJCYnU2eTBQSXRvSmlwOFhy?=
 =?utf-8?B?MlB1UnFzWEZMMHRkMit0NGJnNmF0a3UrTjJqa0N0SFlXbXE5eUVWOS8zM2NQ?=
 =?utf-8?B?RkNOSGFwR2JpMk1obEtCR3I2SXJGNlNpMktyQW96R2JWeGRRNXVDd3FNeTdD?=
 =?utf-8?B?WGFQZWk0VlJjUVl3RFQzcVBwcHRNRDNMeHBEazZhdnkrbU0xRDNEREdlOUpK?=
 =?utf-8?B?MkQyQ3liQVE3Z01BVjlzeE1uMXBwamhKbU9KUGczZ2c4UUlTNU55MEZEcjFL?=
 =?utf-8?B?eWhqbllZeHUxR0NSc0UxYUlaUER5Nk1mRy9PNFRDQklHVjBiZS9PRDR3WERT?=
 =?utf-8?B?MjRUeVlhTmVKbU1nNUs5eXdzZHNNZHZaNkM2MHduZk1EMFlpTzVUZ1ZwVlpD?=
 =?utf-8?B?WE5PaHV5SWREejRSTXpFT1hwVVdFdHRabEhDckZtbElhRWZETDNQT1JBbnFI?=
 =?utf-8?B?cHpTSGpRTEtZMU9sakdUVzFJM2NEL0duVTZ0UGFEempVMk1GVDE5SHc5WFB2?=
 =?utf-8?B?aXp3WktHbkpGczdNV1VHZWxtdC9iS3ZXcEFhckIrQzlMSEdxQzgxQk16SDVt?=
 =?utf-8?B?YStRTGhNMGpGcnh1cjNiYzcySGtJMy9xTVlzOGtJY2VNSlVBc2hWMExhM0RT?=
 =?utf-8?B?aFlKY0dUQ1VkMlpHQThoWmxCMmM0SmNkaTNNZk8rRjljbWtnL3VQcGdLNzNM?=
 =?utf-8?B?UFVwYXFCbkUrV3Q5V1hMZU5YSjhOMTVtbmFZYVdjOTNkMDlaOHRjckNreTd5?=
 =?utf-8?Q?j+Yuk6J1iJMqporVOOVJQ13DmTAqV7NXNp46W?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e386ce8a-4bc9-49e6-7ea5-08dea696218b
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7737.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 08:54:47.2639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SXmOyZmZsygbdyG+WYipnBIMSfEOrKZgJlu88Lv0WpMTZwsd7s3S90lL+SUnWLbUeSF41XqoLcfP1M2x4ldovobsji+r13qtuTCPMu4bBoo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6815
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 30 Apr 2026 08:54:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66461

Hi Robert,

On 4/30/26 12:17 AM, Robert P. J. Day via lists.yoctoproject.org wrote:
> 
>    (I was going to poke Rockchip guru Quentin Schulz privately about
> this but figured, might as well get lots of opinions.)
> 
>    I'm working on a new Rockchip project and while previous projects
> here have assumed using SWUpdate for OTA updates, I notice that the
> meta-rockchip layer's README refers to an example of using RAUC for
> A/B updates:
> 
>    https://git.yoctoproject.org/meta-rockchip/tree/README#n125
> 
>    I'm curious ... do the Rockchip folks prefer RAUC to SWUpdate? I'm
> not wedded to SWUpdate and am open to arguments for trying RAUC
> instead. Thoughts?
> 

Trevor did the A/B thing on meta-rockchip with rauc. He's using it for 
his devices as far as I know. My previous company was using SWUpdate 
with Yocto, my current RAUC with Buildroot. I have not integrated 
either. I've done some work on SWUpdate in meta-cherry-es which I 
presented at the Yocto Project Developer Day last year, see 
https://pretalx.com/ypdd-amsterdam-2025/talk/ZRLTMG/. It was recorded 
but I don't see it on YoctoProject's YouTube channel. I really disliked 
the way swupdate handles images. As far as I remember, you have an 
SRC_URI in your image recipe (which doesn't make sense) for configuring 
your image. I was tickled by some "smart" things being done to the 
swupdate recipe to figure out what to enable at build time based on 
what's in the swupdate defconfig. This is broken logic and didn't work 
well if I remember correctly.

If you're looking to provision your devices during manufacturing, RAUC 
won't be useful as it's explicitly stated RAUC is not made for that. 
SWUpdate (as shown during my talk) can be somewhat forced to do this.

There's also Mender which can be a paid solution with commercial 
support, I'm sure Josef can do a pep talk here.

In the end, read the docs, try things out. It's like asking which of vim 
or emacs is better, you only will know what's best.

Cheers,
Quentin

