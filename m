Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60404E748ED
	for <webhook@archiver.kernel.org>; Mon,  2 Oct 2023 16:07:35 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.73])
 by mx.groups.io with SMTP id smtpd.web10.86220.1696262853241506668
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Oct 2023 09:07:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=HVz/8/ds;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.73, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ct3pQEnyOTVUs1fwjQtkcuChoHQbSPQPFxSmB64IZw9+pLngo7EK+1GbdMfoZVTOy0PEnWP+jTkDMHNvc/zHhAfCWAL2K+Cplc5wgOpUU2li3e9OXcbMUgo8p1gWEzfUMVJZrxfnyzlh92yuYD4Zg1XmZ5OgADD+bkvn7eqVZrNtof/f41ROGAYXa+PeZFJPXeiJC4Tqdr3jdq6+Gf4uvULanKJMhJQonR+AraZKhal5Cegr1R4mwAMqB7pbMu2/ptEcNXEytMGXmrqIoBI+frOkREa5vubmKp2gKerKLfsiT5ce837DWnnUD4psEqRNInfHuE5Bhb5FMRctsMF7GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o7VPk8P9f7d0N67oUHNSOrRlwE67IJRc1IOisXw+aoI=;
 b=NTD0llopxmyMRVumllpKwKnyjk8RsZQwxMmX5gnL5rmGCM5Q632ZDzxL9gWYzCYFnf/3Jwh+UzHiXf+RiRTwBipc27MY9szqO8poOUtS9Mm/7WkkofN2lW3R4r0W0pqDKrS4FVYmioL3ySyxZkWrts8fkEgzpZZMBHLtnw/FamUNPF2n+AGOc+tNf2tzkf1THGXMf7DlmsQJN6rRupgwXYI+6Cy6nt6558iqlhZxAI6CHGQpqlpz/6hmz/OvCI0ag3VnnB82joB9f07o/oR65AqqyyWUAaDQ2Vmf+wR2+jUpX4icSz2Tu/KdJH3PbGClQsH1xExgm6ofa2GYP/stoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o7VPk8P9f7d0N67oUHNSOrRlwE67IJRc1IOisXw+aoI=;
 b=HVz/8/dsBiQLW6DI9NBZMKrPpY76wt93lOmZqVSZJM3OwMPKlWKAyFeB8zPNnOE0QbRpQQmaTsiqV2jYhPQfz2RhxmS88NC5GWPAeJbE2rrkkXKgoCqqYzWyboxBmhjP32xNAXHUBfFWTwzbCuK3hEItvAt0fNDvDLe73nXS93px07F28sYsu7Q1Mjc9rY1JHDsmE3vJpRmVGD0OHYSdc5b5Rw2SRPG5SE1lR9V9fB3VM1B0+DQPRigug2wtpGdzWEgY986M3+Yqt55/lT2PT9Cobsh1hFmL4/oWROkWu/41sSUE9pxTE6sbY24SEZ2I5+8HJxZAGnE3zk5uA0JMbg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com (2603:10a6:20b:436::10)
 by DU2PR04MB8967.eurprd04.prod.outlook.com (2603:10a6:10:2e2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Mon, 2 Oct
 2023 16:07:29 +0000
Received: from AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4]) by AM9PR04MB8539.eurprd04.prod.outlook.com
 ([fe80::2702:dd67:198c:80f4%4]) with mapi id 15.20.6838.030; Mon, 2 Oct 2023
 16:07:29 +0000
Message-ID: <3450cf27-346f-2a99-402e-b7b21850d5f4@theobroma-systems.com>
Date: Mon, 2 Oct 2023 18:07:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH 1/3] u-boot: cleanup
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231001130803.18662-1-twoerner@gmail.com>
 <20231001130803.18662-2-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231001130803.18662-2-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0187.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ca::9) To AM9PR04MB8539.eurprd04.prod.outlook.com
 (2603:10a6:20b:436::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8539:EE_|DU2PR04MB8967:EE_
X-MS-Office365-Filtering-Correlation-Id: 7fe96a5d-960c-47d5-8b08-08dbc361ad36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jQef3qViGLcwzjDQa+O/m74u4OhCzMrF8yk7D+nav1nfGzRRPPton6ENWcZXe03qyuof37Al0UBs9x8W7nKdG+VOHtuVH1n8nDJJ+7WiTLa+2ssCU2QotNdS6pkU0jfLl4QT2hzCo39acyT01oxXD6OaD0ZDJfaY9m5Hqth6POtaTayb9xbaWhckgdU2VCmYDKUzKlmwZ+UYsTz7RP3R6alx2XrBnFJSwkYihi6XkvhbujW1i4kNHs2uZT7AcQNO2W2mgA+cl2H5WvQAQlskYeThT8vROKco1LA3lsQOCK7C4u5H0Ui86C2lsqp0ybhxzY9ML4cSk2tRSi9vzDe6dlMXLNJwRhcUhmGm5pWPVXd0O9h3mOMkURJ5hcmtj7F9+RtRUCKla1AY+Pg4AECRSIEgoMfMaAbscK4RCxQWlPGhaX30TYEOWF9hfEzftBTPd2km8VJCRw4eDWynslpH8hMRNucyDmxWXNyBvR6k3u2gniM2h0qOKRNnixnPO46XqLR8njSHIo7d7oGXbPXD6AsPIfszDNidyrZpD9MkDOudytzOFSTikZNB9lVsVxZhFxg/SrnZ8xZqeadBr+i0mf+05XyWnjIhPT99G2H3u4/tqHiC7tJ2mizmJ7ikoFt3O+CSx0bET0OfOqBqo86m+A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8539.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39840400004)(366004)(346002)(136003)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(83380400001)(6506007)(478600001)(53546011)(6486002)(2616005)(6512007)(2906002)(41300700001)(36756003)(66946007)(44832011)(8936002)(5660300002)(8676002)(66556008)(316002)(66476007)(86362001)(38100700002)(31696002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cDdvOGE2RFpzS2Y3ZWdnbUM4R0MzWjRSWTloL1ozZTdtV2RqQ3NkV2NYZkg4?=
 =?utf-8?B?VDZKbFdaTzJpT2hMS3BKU043ZUxkbVZ3dWRDbm9USFNjR2FpQXl0RUpnTHJE?=
 =?utf-8?B?RmM1L0tNOW9scWhSQW9YVGExRW9hZVpESHUvaHlDRXBUWEI2R2MzZU1qMFdK?=
 =?utf-8?B?MGloeDF3WXg2bndJK2szUkJqeW9UZlFJM01LWlFmdGsvTjNuYlV2YmFRY3ZY?=
 =?utf-8?B?V25oTExROUpUS3ZOMUdPUyt6UXpIejZmYjFsT3FBRjhVblgzdXFlYmZkd0V4?=
 =?utf-8?B?VStaTjJRY1hFUHVWMDRGcUlJTGUxWktjLzJ3Mmp2cVBzWlFjMHdNakVsZGJu?=
 =?utf-8?B?c2IzVythTU8zdjgreUlUY0RWNFZsbWtrTjVqR0d1NTlTM2RqOUNrRUQ2clg5?=
 =?utf-8?B?Z0x6ZXZzVjVCSDFhYVNaRWQ3dWsybUo4bGk2azllcDdIellweGxSVG1OVGs5?=
 =?utf-8?B?Z0t2UkxPRDM5OVVKTDdRQkwrY0N5ZmZmY3BNOGtFcDVucWdsL0JvTEV3VE9U?=
 =?utf-8?B?cWc2SU9nVjdrdUJnVGFFVGtIdWdVejdUZHoya3hKZjJMTTU1MHpZVTl4Y2RJ?=
 =?utf-8?B?UitLN2tFREZHKzRaRzdxcXAzN3lCdnBZS3ZsdXVIbWZndU5kVUloUXhUQTlT?=
 =?utf-8?B?ZEhNSXVYQTFLN2djbXl2TXFyakVVY292TU1veVJsOC84MHloT05uTk5MNHZ0?=
 =?utf-8?B?aCtFVlVCMk9vOU9aYXFrd2tobmVUVS9FNEd3MXJLVENkaU0rbHlJcmNlazRw?=
 =?utf-8?B?UHY0ajBXWElVTnNZSmhJZDVzZ1dkRmgyVW55bmdDWTZLQjRseEI0Qm1abXhP?=
 =?utf-8?B?RXBmMkdKOVVOaVJ3cDNxWTBsTkFaa0xYQkZsOWg0Z2t2bHVaM056NFhZZHc4?=
 =?utf-8?B?TWg1TXFXeU5QUXBlcU5janlZZU51V3gzaFNkSElsRXNnNWUrUkp3Q21YdDdm?=
 =?utf-8?B?WWZVMHNyd1IzTG8weFlxaUtTUnNVanlEbTZ1NkVQSmdjcWJubjVsa3ppQys3?=
 =?utf-8?B?OEhmQ3llTDdLbzZGby9tNnkyNnA1c0ExUWhHMlpPcFh0dFV2RVF3U3pmeVVS?=
 =?utf-8?B?VE9abnNLdDIvQmExQlI0TTIrUGFWSmNWTC9Ma2NwcUNyS1d4cDYwT0hjSGk4?=
 =?utf-8?B?ZjhxK1kxb0p4alpQMXphUHgyRU1IbG5tN0NUbHk2emtYQmhmYVY5bzIraTlU?=
 =?utf-8?B?L0VkcnRFUDRKSkdQQXNUQ25YYUNWMEtPRTMreWVMYUQwdit6R0NiblZiMUFB?=
 =?utf-8?B?SFJnYzNaRlRzZS9HdlQxMGE3RlYwdnVyYmpWY2x6eGtaaXBQa3R2ckIxR0M2?=
 =?utf-8?B?cE1HQTEvRkxQQ09Ga2FNdmpKRGNSc08zUy9xSXViL1FwTGN5UFgxMmNNZjI2?=
 =?utf-8?B?VVNWR1ZJNUt5WHFZbmhjdmwvMXVjRmV5RjNTS2RkVUFYaEt5T0oxOGpOM0JF?=
 =?utf-8?B?ek90Mnl6RHFVbHVudlpKUVJPYk1zQU4rQVEvU2hQbktDMWxBbDF6aC9xc2Z2?=
 =?utf-8?B?T1QzM3cyaHRkMEpuRkVkN1Q1czUwSm14MzhRV05KQTBaU21oRFZZaFZRU2xi?=
 =?utf-8?B?eW1OS01WK0NBY1dIaVV4UGw2ZGhoL1cyaXFkZ1d5ZEVQMmIxc2lPc0hLdmhP?=
 =?utf-8?B?L1lFYm1GTjh1NU1TRE5hWWgvYTFHY0FLVjQ3UTcveVJZQ000cmVnTFhLWGpE?=
 =?utf-8?B?Vmc0K0dCLzQrTGVqNlZMUzRhb1FzUkVPWTJURTJoeVlDMWVVNGhXYy96d3ds?=
 =?utf-8?B?ek9WYkpDOUg0dW1mZDdtR1NXWGFpb09qUHRPVTB4UFVFRVF4WnZQMXBJSitp?=
 =?utf-8?B?ZVJnNk0yak5KbS8zd0NTM1FMSlc4K29jSDFkektEWTN2Q0hMMUpLb3ZiVzlu?=
 =?utf-8?B?d3hXR1VSNmsrbHVrQjRZeVdYUnlwWkN4TFAyTWdZMVcxdWpEMFhYWjJBY1A3?=
 =?utf-8?B?SDhxa1MveVFrcDFyK0xjcGlySVpFTXpjM0YxMlBVdHhzRTFnVFZmRDRDa0dI?=
 =?utf-8?B?UEc3UE8yc3BnbmltSW55RnZpUzhpS200Z0cxVHBOdlhNbHFCb2hrQVZObnpt?=
 =?utf-8?B?Y2lqQmdvMGpQeFA4WEhBa2o4Q1ZwQm1TSnNhVkE5U09kZ1dVVzVuOWliL0Q1?=
 =?utf-8?B?bHQ1djZva3NFdnhIeEIxdmF4ZmhTUXZ6SHZDSHI1L1FMVlQxc1V0cVNhSmRO?=
 =?utf-8?B?em9uMTBNekt3N0JNaUJsRVNXbFl4WmdRMDg1T3FSVUVmMExTR05qc1h1MTNU?=
 =?utf-8?B?RWNkMkplWW1vcmMvaEdhZUxHaHJ3PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fe96a5d-960c-47d5-8b08-08dbc361ad36
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8539.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 16:07:28.9791
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8SxDZppMCN/ACUijSS+Mwr2zubASjw0EvNeFmUZqfFSWtYoBWjyFUTU3e7MVCV5klxwxqT07oDqIZKVv9nTvDIJzJ+Nap1Mf3R6PsG/EMpjx+XOD2xNpFELse54C2eK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB8967
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Oct 2023 16:07:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61194

Hi Trevor,

On 10/1/23 15:08, Trevor Woerner via lists.yoctoproject.org wrote:
> Clean up the u-boot bbappend recipe: group items together and re-order as per
> the Yocto recipe style guide.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   recipes-bsp/u-boot/u-boot%.bbappend | 32 ++++++++++++++---------------
>   1 file changed, 15 insertions(+), 17 deletions(-)
> 
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index f7800625aaf1..e79c471cf5ce 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -1,27 +1,25 @@
> -do_compile:append:rock2-square () {
> -	# copy to default search path
> -	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> -		cp ${B}/spl/${SPL_BINARY} ${B}
> -	fi
> -}
> -
> -DEPENDS:append:rock-pi-4 = " gnutls-native"
>   # various machines require the pyelftools library for parsing dtb files
>   DEPENDS:append = " python3-pyelftools-native"
> +DEPENDS:append:rock-pi-4 = " gnutls-native"
>   
> -INIT_FIRMWARE_DEPENDS ??= ""
> -
> +EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> +EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> +EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
>   EXTRA_OEMAKE:append:rk3588s = " \
>   	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
>   	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
>   	"
> -INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
>   
> -EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
> -INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> -EXTRA_OEMAKE:append:rk3328 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3328.elf"
> -INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> -EXTRA_OEMAKE:append:px30 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-px30.elf"
> +INIT_FIRMWARE_DEPENDS ??= ""
>   INIT_FIRMWARE_DEPENDS:px30 = " trusted-firmware-a:do_deploy"
> -
> +INIT_FIRMWARE_DEPENDS:rk3328 = " trusted-firmware-a:do_deploy"
> +INIT_FIRMWARE_DEPENDS:rk3399 = " trusted-firmware-a:do_deploy"
> +INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
>   do_compile[depends] .= "${INIT_FIRMWARE_DEPENDS}"
> +
> +do_compile:append:rock2-square () {
> +	# copy to default search path
> +	if [ "${SPL_BINARY}" = "u-boot-spl-dtb.bin" ]; then
> +		cp ${B}/spl/${SPL_BINARY} ${B}
> +	fi
> +}
> 

A bit too many things done at once which makes it difficult to check 
that no mistake happened. I could suggest to split into multiple commits:
1) move of do_compile override for rock2-square
2) move INIT_FIRMWARE_DEPENDS together
3) move EXTRA_OEMAKE together
4) move rock-pi-4 override

But I think there's nothing that sneaked in, so:
Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

