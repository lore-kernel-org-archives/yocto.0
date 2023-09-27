Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3A66E810A2
	for <webhook@archiver.kernel.org>; Wed, 27 Sep 2023 08:00:07 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.73])
 by mx.groups.io with SMTP id smtpd.web11.12868.1695801603357217975
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Sep 2023 01:00:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=GgS3IEsC;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.14.73, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nqD6s4/N02LzOgYAjl3ZONjypTvKyECVJ9LrniaL3sLjtUMRKISlOCj3wzUufgKGxLWBmZXrxiUjlHfogJ1w5Mpr3c6y5XRzqXrA+XRuyhZ+LgljoSLYsguG6D1XdQvFzxjmUsJnfRK5qIquiOktMTfNl9t/W27I+o4wngey69zBmLq5S/QPreNTrx6GURfnC6r8U5dolACbbspYzyIy8aeKwjQOzzaeZ7dNFEJ9tDrIOKrsxbqlDrdjjInMqVn0kETW/4BSQZV3hfIQCbfnU1wGy5UysacMnBGAO7Il2cuwiT8OHMivlQDZ8NsdWXk4pCGSDXK4NmNNq86ulkv5Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJH6+hObLqYmDNrm95hUl7uodxTjAnjKABwihQMHp74=;
 b=HHLoXh/Apfog9KrUzJz9brIEQEyQapuG2DUgCHFlQubJhTmRvSCHpPT1sF2tZPF1KuiGkKnii+O6bA30uWRz3qdR8tRw+M9+0/gnkawKOOYGDMhA4dVz33TKxXWimUF8GkkWlkQNTlpVz3a+epHSF3iJ0z4QttyQLzmYm7EVPPUfMx6CR0k1takA28J8ha0dNz/N+FtdGOLV0nJhy7OsSVc09TjcwSR5LQmN5UYjnMrtu7ChP6LWVonTE2ucR/FTEJ7x3gJdKw104ZqdXcQbZHR+Rjvn8to3RUi/yx+6ItBWlOd4d12eRFQyI8YolqzTpszQL/Tt2u2RgkRVwL9fkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iJH6+hObLqYmDNrm95hUl7uodxTjAnjKABwihQMHp74=;
 b=GgS3IEsCmw7LCPMW2eF3XSvCMzl7R99keEoJqOunYJH0o14MTFFeamfVyq6nPxYYr7pLsG9xR4eZc6Vlf1hsyzu6+4x+ek0AWkkj3lmHjWQ/VS/BqEtBfwazOsFd4QC4nmzaFdSoygRbTJO5ksDVgKQ5k7Fnak5IqIk4zwuf243/TkM3Dc9/dxs2pYCni3QwJn+llDUKH8+X6Tequu5xc6dd4FD64ivNSY8PkdSpm7jRrsykOpdg8dsJcJfBmfnhdShm7zKhaFk4RIKgHA2S/2RcrGwwraEs7xSiE5hGlAx9DPzbke4jINqHPqxRYrKw2nTcgyeZtlkDitRRRY+QBA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB7513.eurprd04.prod.outlook.com (2603:10a6:10:20a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Wed, 27 Sep
 2023 07:59:58 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::ebac:2f16:9dd6:a30f%4]) with mapi id 15.20.6813.027; Wed, 27 Sep 2023
 07:59:58 +0000
Message-ID: <20cddc6d-e22a-ff65-f911-daea3dde90a5@theobroma-systems.com>
Date: Wed, 27 Sep 2023 09:59:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [meta-rockchip][PATCH v4 2/2] rock-5b: add
Content-Language: en-US
To: Trevor Woerner <twoerner@gmail.com>, yocto@lists.yoctoproject.org
References: <20230927024220.17766-1-twoerner@gmail.com>
 <20230927024220.17766-3-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20230927024220.17766-3-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ba::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB7513:EE_
X-MS-Office365-Filtering-Correlation-Id: 5972e958-aa1f-4c79-56ef-08dbbf2fbe9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9w9WvJhO0BVD+TwJzrb2NsDQ0dHDmAe5dntCwlzzoWi/XeJ7/+/HmJdooYJMreeC1qhvReO36VZMrihZA5uMI/XhGMCwK6oqbidGEcskcO/tMM+4t+c0UYoLCZI5h+Qdy4D+Tgsq0/c59M20BK7BZICI4VBI3/P+NGu90jnOGpvuudXMhHO3V8nq89s/avYXomY4VSFJntyIzn5xm/s3ruYl+wKDznD5+OQmsAlqiJifHHwj5aO7TkZTH5jDJx3qBcFWntsptVfxBOAyDz+2cRz+Srg0xMQfDzSHzO2rHetF8PsAlBk05xYurYMxVMu2u1JpEJyhNMZNMipJl5W8TxF61Z3HNuHd8rsHBrsuHymvHU6AcIEh+mB65NdOaQaUcFdE17rTY9tu10XV0h76JDbb4QeJe2cb62zdN4Lan4ydIjPl53KsFIOEUc8bJRa8MCxH7ZlOLl7zv3vMpbYcwbB7TtLCH+ttvb0O0X4qUVbTNUdBBvGG/VzHMewR4pqZp+gO0BuhrssdDvdzfC3Fj/rMjk4Dxm4cxh2SnQ48ZT6AlHry+mgbMrK1PVbXsgoHwJzJr1nT0REj6XK751RG2ubt1N6/Oo7e2jaKRIX7QPLlUvDbekgi8ah+zf0zGfR5DZbaR1DAK0mjZ6Z4n1lCnw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(376002)(136003)(346002)(39850400004)(366004)(230922051799003)(1800799009)(451199024)(186009)(53546011)(66946007)(316002)(66556008)(6512007)(6506007)(36756003)(6486002)(31686004)(26005)(2616005)(66476007)(478600001)(44832011)(31696002)(5660300002)(38100700002)(8676002)(8936002)(86362001)(2906002)(41300700001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?ZHhwMU8xTzRVV1VXZEt5bjhQVkp6cHNSbkJ1MEFabHdYa09NVmRRdEdtOG9G?=
 =?utf-8?B?RkZaZDRJSllKeWNDWlRPd3BWT3g5YU1qckI2cDduaEVCZFUyV0kyQ2VReE9W?=
 =?utf-8?B?S3Q0NEpsQnZpZ1VmejBYak9ETVVIeFVrVm1zeWN5dnJRd0VNbzU0TGVycng1?=
 =?utf-8?B?NU1rUlMzSWRqNExwOHlkdFJqc1VUWGtBMndGTVNvdzdVVEpUaGU1SVFOQVRw?=
 =?utf-8?B?SEwxTENDVk9QMm9jbjllNWZabWl2K1FjeWd3Tk96dENGQVhPcC91NHZhRzQr?=
 =?utf-8?B?M3lJNGxYTENqa1FRbVBWbzVCeFBkclNyakV4dEJPc1ViMUQvWTQ0WDBjbEhJ?=
 =?utf-8?B?OFN4b2h6ODIveGp0UGRQcVE5TDE0K1RITHdlQU1sYnNBdkllLy9YcDdNNnp3?=
 =?utf-8?B?aWc4dS9TcVY0aFJLckRaRXZ0Qitta1BtdFp4SEo5TWRSWHpjcERsenE3aW4z?=
 =?utf-8?B?L0Q0U2NqSzNyRGxvTkJ6aWN4bXp1ZXljQ0pnckZDQWhhOWNnbWd3dGM0eXQr?=
 =?utf-8?B?VEI0OGdaS2IvaTBVQjNnNmNjdkJ6K0pzb2F5eFlNM20vZ0ZDSjVFbmRKU0gr?=
 =?utf-8?B?d2ZQVlE3T216cTRsMjQ3YWlLbTB0UHYxb1pRU3dNTFVmNXNDYmRZVmM1QW84?=
 =?utf-8?B?NC8vTFR0RVdzYzRjRDJaSWVhcS8wNUQrb0xYall6MWM3THJKMFVEcTlLN21P?=
 =?utf-8?B?bktzWXRTS2tiMUZ6MmkwbnBHZlV4U3RKYlJJL3QwVWVmVlpzUGR6NUFLeXV1?=
 =?utf-8?B?QnkwT0pkSjd4WWM4citqcEJ1NlA3cGFHRE5LaHpwd2pNQ2ljVnlPajNiMzZX?=
 =?utf-8?B?aCtocjJCV0dkME1GcUozd2t0ckJDV1QvV1lobHZNNUVrZ1E3UFZIclhVZUN6?=
 =?utf-8?B?WlRhcWtEeFBrZ0F2RDhYTFBtUkFnZXQwQTM3TnNwcGRpNUxjV2E0enRzTUlS?=
 =?utf-8?B?SXFSKzh2Zldkc0tpVjhJeTRCVnB3M0R2aUhGb2dpWWkyZGV4TXY3ZUs4SUtM?=
 =?utf-8?B?eTNuS2ZPWUNHL1pUcXpDRTE1WDR4RFBFM3VXMDcrQnJaaGYyYjlDZDVOci94?=
 =?utf-8?B?REVYTStrREl0VHVLakIyOUwzOGZuVElGbTMrbVJ6STFzSm5YSDdnZzNRWDdP?=
 =?utf-8?B?cmJaaXlWSWZIY0YyM0dZRlBxcVZ5NitKbEJtTUsxc1N6cDBRVWg2MnA2SzhX?=
 =?utf-8?B?M2c4RXhYcVJocU9sbE8xbXZaL3VUSXBEbGE0bjZKOE90OFZ1eVZkTDJ6TUZX?=
 =?utf-8?B?b1REWGs5aXpndTl5Kzg0Tk9MbEg4NS9NVEk5T0dVOC92WUdwNkhOR0lGYTVH?=
 =?utf-8?B?bHl4T1M5Ty93L0U3Y0dqbklEWU5sUHRSUzE1MW9hMXFPcWg3L0hMbVJQUmJQ?=
 =?utf-8?B?c3lEay9MYzRKazkzSDlUTEpabUNYbzVrbVZJYU1tMVhtd1B4V2JVUEdrVFVB?=
 =?utf-8?B?Z1VSdncwZUdqeXEwSGpQS29WRzI2Z2VBQTEwNHJRQyt1M1BCQWYyM0ZnWHFE?=
 =?utf-8?B?QUFiSFplUCtOSFdEd1dBZEU4SDZ2aXIyR0hxaGt0SDFtSHU3OUVBMEFlbVFL?=
 =?utf-8?B?ZVN0aDZKWGNob3g0cTUydGVHNjN6cVpYaTRTa2g4WEcxZlhTQXZXY2ZwNjU5?=
 =?utf-8?B?NldwUHh4MThFd2F0a0xGKzkxMDh6UURNVWNxbDlnUWJkUW9VMU5XUzd2UTVp?=
 =?utf-8?B?dCtEQ3FidTZ0STRycjRCOFlxUGs3aU1XK1VLTlNYM1pUZUVhQWtjQnNnS0Nn?=
 =?utf-8?B?alBPek5UaTVjc0ErZTNjUTRRRmNUbnBRa1Z5NE9YWFl2SUkrcGRaWU9jT0RM?=
 =?utf-8?B?MndneVRERWd1R2lObk5yZE52dUFMeHhkUnpkOUhWVWt0MTA4NkYrV2RPTGZt?=
 =?utf-8?B?N0UzRGFHb1dMOHRJZVAzaUthZXNRQnVhdzNTdy96Q294RmlGZEVjaWNyd1hj?=
 =?utf-8?B?TmZITjBZeW4zOHhBZFF0UzhBUDVFSEZiN2YySE55RHIydW1KVjJaOTVMTjdP?=
 =?utf-8?B?bnZHcGFqeFoxVWZGazllMXRWSG0yOVB6R2tEb2NhVHBvMzhuZXc4K1Q0K3h1?=
 =?utf-8?B?QUIxRjhleWgxbkQyUk1pMFp5dFgzbjRGbG5CWmh3YW5NL3ZwdWJ0NU43dHY3?=
 =?utf-8?B?SVkxRXF4UVQ1dlE4RmpmVUZvRUh4UHZXVzFTbkdWUU1YMnZkRXA5bVZYYWxs?=
 =?utf-8?Q?a3bNJ4YAEImgDUPsK7FQRSo=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5972e958-aa1f-4c79-56ef-08dbbf2fbe9a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2023 07:59:58.6659
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qiZrbZXc6LaGRdxbgbq5+o2M6TlCNWqUEvQFf6U3QFDo/dgeRBRZIwDQDUCZqvMkQDIc6rY6UCU9yFpgGHjN2R6CJXLP7VYKgg/iDDjHJ8AkXF92AgAAR4WisZmQIDK/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7513
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Sep 2023 08:00:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61137

Hi Trevor,

On 9/27/23 04:42, Trevor Woerner wrote:
[...]
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> new file mode 100644
> index 000000000000..7fefb017053b
> --- /dev/null
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -0,0 +1,37 @@
> +DESCRIPTION = "Rockchip Firmware and Tool Binaries"
> +LICENSE = "Proprietary"
> +LIC_FILES_CHKSUM = "file://LICENSE;md5=15faa4a01e7eb0f5d33f9f2bcc7bff62"
> +
> +SRC_URI = "git://github.com/rockchip-linux/rkbin;protocol=https;branch=master"
> +SRCREV = "b4558da0860ca48bf1a571dd33ccba580b9abe23"
> +
> +PROVIDES += "trusted-firmware-a"
> +PROVIDES += "optee-os"
> +
> +inherit bin_package deploy
> +
> +S = "${WORKDIR}/git"
> +
> +COMPATIBLE_MACHINE = ""
> +COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> +
> +PACKAGE_ARCH = "${MACHINE_ARCH}"
> +
> +do_install() {
> +	# Nothing in this recipe is useful in a filesystem
> +	:
> +}
> +
> +PACKAGES = "${PN}"
> +ALLOW_EMPTY:${PN} = "1"
> +
> +do_deploy() {
> +	# Prebuilt TF-A
> +	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> +	# Prebuilt OPTEE-OS
> +	install -m 644 ${S}/bin/rk35/rk3588_bl32_v*.bin ${DEPLOYDIR}/tee-rk3588.bin
> +	# Prebuilt U-Boot TPL (DDR init)
> +	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> +}
> +
> +addtask deploy after do_install
> diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
> index 050f55e124d4..f7800625aaf1 100644
> --- a/recipes-bsp/u-boot/u-boot%.bbappend
> +++ b/recipes-bsp/u-boot/u-boot%.bbappend
> @@ -11,6 +11,12 @@ DEPENDS:append = " python3-pyelftools-native"
>   
>   INIT_FIRMWARE_DEPENDS ??= ""
>   
> +EXTRA_OEMAKE:append:rk3588s = " \
> +	BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3588.elf \
> +	ROCKCHIP_TPL=${DEPLOY_DIR_IMAGE}/ddr-rk3588.bin \
> +	"
> +INIT_FIRMWARE_DEPENDS:rk3588s = " rockchip-rkbin:do_deploy"
> +

Mmmmmm thinking about this... I think we'll have a difficult time 
allowing rkbin for ddr.bin and upstream trusted-firmware-a from another 
recipe for bl31.elf because both would be installing the same bl31 file 
in the deploy directory. I guess we can postpone this problem until we 
have to handle it though because nothing comes to mind on how to handle 
this properly right now.

Cheers,
Quentin

