Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA997E75443
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:22:08 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.54])
 by mx.groups.io with SMTP id smtpd.web10.105130.1696328527169692584
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:22:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=c7hZu57a;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.54, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QN6ZuXu7HmDl8rMj+WRkrGxDR67rLCX9APDjM3qM5h1rUpl0AxWNdiFBcd1TTEY4wqshxUqkMiJ3T+v9yP7wuW8XnGgK7d/c0XxDc06xeoLRugUg7XHrLAhbAbF/YeSgP89eKm3bMmRWrX3cnViW/EvxUKqFp3+PxQ6kUJrDkp+hf5SNbFZzugYf7yDPUjB1xXa1nHf+KqPGRbXgp8linbJDerFLjlCWNgOdR7n1XER7H/XA2jOelxGOFEljDR4gqHDyVOgkVnwknExGN2vdSlU1uaomOTMKMEGmJMKY0cW3fn7+X9QkuVqralczq3E3A9aaKgX6Qgc1NBC7dR1ajg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8bTka3ypU3aZhw8R+7in3rMyRYWEh1/pnLIqtlefkpE=;
 b=ecXVkg+VwEIZ2S/n50aQPvKS+jDL8xEpTF6wH1xVynXdO/8zP/KAJmhZzs912n6apuWuAYTcO4sVN+7mJT/e/HDhnL182KjXK9PIEwMlC2iYa87tNkpkmrdcyrxZ01PQQQ9xDfPrx4+2bPFSFXpnif2eulo2aWRfhXIjmX78JX4T2+jmrgLpstWCEF7IKj4imtjrwqUmbXbsh38nSrGIp8Q6S+INjRQvr7qqqSlKJblC6AJa6aew34QGtqHF002aSzTc1eylXb0v79pNmIP2ivnjTIkEhS/rqK2Ip8/M0ItBSLTaXW9QDjBPLzBH8WCK7xDfRYkhAs3hhkf0J+rLTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8bTka3ypU3aZhw8R+7in3rMyRYWEh1/pnLIqtlefkpE=;
 b=c7hZu57akP0w8t4mjcEkigl5Qfv/SwNzEA2kiYsTtmOzFhxEe1OvWcaiP8NAIKFeD34RDIG6glo2RtF/iHdFRf1fotU60tr+tApTWQkeUsLS4Kil3+uk2aVlWyHQOEyT5SRtLZgFaWd11SZGkbhCSxWwRuVZHN3fdAULHq+zZFWVhp0VBzOvujecwdkUEcRkGOqoNOelTNh23PbOluFSbVL1+uH8wJOvTJC7cgy6w6cfytwJqXoKxGE4QpEI915enmmBDIaXDokj2uvRAqGWzm2/NP+YcsQ2ODspbIROdO1EhhwIAaVEBoflsC5CkNHG71OiWD5pv5qad3ewzdiGaw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DBBPR04MB8043.eurprd04.prod.outlook.com (2603:10a6:10:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.25; Tue, 3 Oct
 2023 10:22:03 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:22:03 +0000
Message-ID: <04938d3c-77d3-feb6-8f84-ca3e5f311492@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:22:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip] [PATCH] Stop u-boot sections partition
 table
Content-Language: en-US
To: anthony.t.davies@gmail.com, yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com
References: <20231003012643.113550-1-anthony.t.davies@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003012643.113550-1-anthony.t.davies@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0217.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ac::9) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DBBPR04MB8043:EE_
X-MS-Office365-Filtering-Correlation-Id: 6add0818-c8f8-48e5-0278-08dbc3fa966d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yMAbCY8a25nKsqZv3oFBfz2mpgQE/A/C1KCwyY1YFk5w7s1vEPzF1opcI/8R8y6QRJF/Vv4TlehUVZPBXKBWKm6ec9JhXblABw5aIfrRh8Xy1lTObWCZIpxuRXjGqtblG+Yh7iMf0ru34yVBFI4CdT+gsKoK4TU0Zxgker30+/WR4NEHa9pTP8vMyvFMGEI0609SnxaZgcPzTo8G687cNZsJHTwUrVY4C3KSYp9i0fTV305pZsh8DodZVhkf3AUuDx+QKL2BB2gyICSiOCkrRvu3rRkRF8hcBqHSn0UHrF/jursyis9v7cuS58F2MBzd2ihWh2ua29mpugZgD24eDV+AESWMLd57TtKLjlTf9C6Jcb0T/4CN524grQAkIa5e2kGRpmjIIH9ww6ZYcNd2554xeTnoB3qX4VyMKQH6O6gpxZEE12+ZFQm8R3YdHVJaqypouu1UwVl4pRgXXsaWi3JT2p2pNiJI5F4ky+g7dm8/MUmi2s5tTBunneOPKGRRv9HA17XfVgBRLtKYEFaxZc1D39s74R40wa8kMwi+2yNLyCql8AwqAMKvvuTHQ8MPR6yc8R2VHEPu2kTI/yoSRXw6PZwfL5qzMQ7OmOJPX8aniWs9O44SWeGb/p0AnHQT1EOY4VsU97TEKjpANdEsaA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(376002)(396003)(346002)(136003)(39850400004)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(31686004)(2616005)(86362001)(38100700002)(966005)(83380400001)(53546011)(478600001)(6512007)(6506007)(6486002)(41300700001)(66946007)(316002)(44832011)(8676002)(5660300002)(66476007)(66556008)(2906002)(66899024)(36756003)(31696002)(8936002)(4326008)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?cGZsa3llM1VsYTVjSVc0QVQ0Vmh6WE9FSStXTmpEQ0FvVG5kSjVKK0FCMHRO?=
 =?utf-8?B?NVBiWk9iQ1RudTZadjJiSWEwcUg0R0Z6RUY3WWVVZFdHMHk2M0lrVTJkdVRy?=
 =?utf-8?B?bFV6cHpYdGNTeHVSdzY3TU5qbWl4dWF1RmNNZ2pvbndkUDVTZ0lGU29TcGt1?=
 =?utf-8?B?QWVHNTZzbmlCZUhmUHRXWmNlY2t0ZHRjZVRuT1Q5T2JJS0JaaTg0d2YzVXQ3?=
 =?utf-8?B?eGNmaFZzSHpZQ3dWajJNdkRtK0tPWWxTUTJING5hNG81UnZzTGMxeU1ZTGts?=
 =?utf-8?B?WnpmWUM5RjlxV0JLaHVqMFdOdkpielVaUXdnaXVURnpuZ1gwTTMwUFJ0K0lL?=
 =?utf-8?B?WkZqTkFvdVh0T3Jrek5pSDAvanEzemN0b1VKOHI3aHpsWVlOVFdzbXNnODJ6?=
 =?utf-8?B?UldRNUNHWFdvNzRMY3hJN3p3K0x6NTFUbUxUWEcxWUJuSGozaXdOcDJtS25y?=
 =?utf-8?B?ZmlNUWltMjBRNUFwRklVQmFUdThuZ1p3NXBhd0lNZlFHN1VMcGRPSW9mbHk4?=
 =?utf-8?B?WSszUTQvOXJWWGVXR1dBaEk2UTJFd3Z4eTZ0ZHJoYUpOaE03M29rRWZVYmVq?=
 =?utf-8?B?OFYrMGg0REtySWhqRkJMeFdiV01xbUdRNVpTazhTTEVyQjdibXRxVmxKNkIv?=
 =?utf-8?B?UktsejBOajYwalVCckdSallSNzV0WE93WE01MUh5VnRvRGIvTjJwVUFEQ3RF?=
 =?utf-8?B?RTVybXZCekp4VHJaTElieE5XZG9qWjFjb2I3UEdla0ZQQzFqUHdaQ2oxSkVq?=
 =?utf-8?B?QjZhRmRpK2xqRm1Vc2RhM0ZQbU1XSGZOSHhSOVdXU2kwWlBhaExWaW1wTFYr?=
 =?utf-8?B?S01kTlFaNmFRWldUYzN2cDRnbUtwbStBekZjdFdRTUhiRFdieDh4TlV2MTlN?=
 =?utf-8?B?bEozbDMzUGpYUTJvSlhaR0J6Nnd6d1d2TEgweHVqZHJHQXRTajU3RWxpSUtG?=
 =?utf-8?B?Q3lvQjlwdTdOSzM0QVdpZ0k5Vno5RHVkb3B4eXQ0Sk5uV3BoVTdrcTVFV3dD?=
 =?utf-8?B?TDN5QW5LeWYvUi9ZejZVRUpMYURQdG5WVkkyK0F0SjhvaDRXQkVYUlFGZEgr?=
 =?utf-8?B?NWJ4QTdmYk8yYktRQzBLQ3A4OG51TlFqY0tQc2NydE9PMFF6bU5ET096RHl5?=
 =?utf-8?B?a2xaTTBUS3JtaDRZQ0N5c3RnbTBWOEp4b0ZmUUVqRDFiSVprTGZkM2RPVlJW?=
 =?utf-8?B?VU1LcnhBUzBBbE5KTmZmdlJobng2NkhiMkgxT3BOWCs5TVZadHcvczJTMkg4?=
 =?utf-8?B?b1RwdHl0U1BhVnFycVBCVjR6VEQ4VFg1K0EvVlovSE1TdHNSRFZpVUhtQ2Vz?=
 =?utf-8?B?MCs3cmRGZy8xcmdpY0ZZcDY3VmRtZHNtaFdyM2Fva0t4bERsYkFHMGxZdis2?=
 =?utf-8?B?RnlWWUNUTkFhOGV6YnJaR2R1SjB2eHFEV0F6SUVBS29qVGRWOTFLNmsxbjF6?=
 =?utf-8?B?bWF2TE1QZTBibzhGZ2FVRnVvdXhOR0pmWGkydnQ5MjZDcEF2U3ZtbFNjU1ZU?=
 =?utf-8?B?UU16UlZTQUoyV2ZTOFJ2L0dDRkJHNlJOYWZlcjJjZkNSZzlWUWRxaEdJSDN0?=
 =?utf-8?B?YkNRdXBOZDIzN1BYZW1MdEJJTmRxL3dKT3RwL0FqQ1dsYWp0SU5EM0tSYkV3?=
 =?utf-8?B?OXZ3U1dBMXVtL0tQem5EbWMyTjdRQVlkdzZmRENtQnQwcUlpeFlQQ002bVgw?=
 =?utf-8?B?YVhhb3lrcXVMYjIwR0ZMUkZnaVBNQnV2bHZjZ21VdW5DT1RXRWdaUGZNQ0g1?=
 =?utf-8?B?L3llSWpEdXFNUm4zV2RNQzZqcFduSDZHMGt2a0dHYnpTbVYxMmtKVXJidW5X?=
 =?utf-8?B?OVpGVTJUeFFWYy9pZW0yT0RoajR6WmFidE5nc0E5clZiR2M3anRTYzJybTFL?=
 =?utf-8?B?ZGdQNjlsTFhBUGwycmFENjZ0dERHS1daOHRrYjh3Tjc4SXJMbWp0cFBOVEhK?=
 =?utf-8?B?bnYrb3lFYk9mMWpocTlCTmRWR0ZEb3V4Sk5mY1VNUjA2WFNGUzNwTUpCejBu?=
 =?utf-8?B?OENkUzkzb0VGd0pFcEkyY0JRK1ErTERjOWJmL1hFenBpTlF4NUZHYnlLMzFu?=
 =?utf-8?B?cHhrSnRVU2RmdlpCdzBXczBmaE1nMmVhNzB3UDdKdUtPMGwzZ0IyUzVmZWZI?=
 =?utf-8?B?WWlPTDZISHRXeGlVTHBOQjRtSHdWWkRHbS9lRTNJQWlPNTZFWFVvQmV2OUxM?=
 =?utf-8?B?RnllT2lIcnA2MStEcnkza3k3ajZXL0gwb3Zycjhhb0NNWVZRZGMwYStNL1dN?=
 =?utf-8?B?VWgxaXZkeFlVTjVhTE5WcUJTTWZBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6add0818-c8f8-48e5-0278-08dbc3fa966d
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:22:03.7123
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GGk7aeW+PhDDVyoIVN/IexqTzCXdoBBsdk/hAQQeoNy7UPwN4dmVi1L1QmykURW3IaRC1VFBkymFDVycbJ+U/EFnk5neoZ4pHmitjef+OLX43CIgdwi3mL43JE19Wv83
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:22:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61214

Hi Anthony,

On 10/3/23 03:26, Anthony Davies via lists.yoctoproject.org wrote:
> From: Anthony Davies <anthony.t.davies@gmail.com>
> 
> When checking the partition table of builds using this layer you get
> numerous extra partitions due to each bootloader entry creating a
> partition. --no-table on these entries should stop this from happening.
> 
> Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>

While this is annoying in some aspects, it's also very nice when you 
want to flash a new U-Boot manually for example. You just need to flash 
the raw file in the partition directly instead of having to figure out 
which offset to use. FWIW, I actually do flash by offset instead of by 
partition and I have to remember the offsets for different products (we 
don't use Rockchip's defaults :) ) and I guess this would make things 
easier.

So,
Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Up to Trevor to decide what to do with the patch :)

Cheers,
Quentin

> ---
>   wic/rockchip.wks | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/wic/rockchip.wks b/wic/rockchip.wks
> index 1cc30ae..eb50d8c 100644
> --- a/wic/rockchip.wks
> +++ b/wic/rockchip.wks
> @@ -15,11 +15,11 @@
>   #   boot        32768           229376
>   #   root        262144          -           (suggested)
>   
> -part loader1    --offset 32     --fixed-size 4000K            --source rawcopy                                                 --sourceparams="file=${SPL_BINARY}"
> -part reserved1  --offset 4032   --fixed-size 64K
> -part reserved2  --offset 4096   --fixed-size 4096K
> -part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy                                                 --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> -part atf        --offset 12288  --fixed-size 4096K
> +part loader1    --offset 32     --fixed-size 4000K            --source rawcopy           --no-table                            --sourceparams="file=${SPL_BINARY}"
> +part reserved1  --offset 4032   --fixed-size 64K                                         --no-table
> +part reserved2  --offset 4096   --fixed-size 4096K                                       --no-table
> +part loader2    --offset 8192   --fixed-size 4096K            --source rawcopy           --no-table                            --sourceparams="file=u-boot.${UBOOT_SUFFIX}"
> +part atf        --offset 12288  --fixed-size 4096K                                       --no-table
>   part /boot      --offset 16384  --size       114688K --active --source bootimg-partition --fstype=vfat --label boot --use-uuid --sourceparams="loader=u-boot"
>   part /                                                        --source rootfs            --fstype=ext4 --label root --use-uuid
>   
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61208): https://lists.yoctoproject.org/g/yocto/message/61208
> Mute This Topic: https://lists.yoctoproject.org/mt/101726546/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

