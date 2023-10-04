Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 082C6E7B61C
	for <webhook@archiver.kernel.org>; Wed,  4 Oct 2023 13:45:43 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.70])
 by mx.groups.io with SMTP id smtpd.web11.18845.1696427132335387549
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Oct 2023 06:45:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=TwHjgmGV;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.70, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JfLpnQiJy0VYpPaR4HSX1POqQ9oPk9IofL5ri427q3Es2sbXW781t+gQEzrEsAUaKHR7t/5wP7PdOflAXknh4+oEh4x66gTVjxDSpIKhet2S7d7Q3uFhAYIDI0uThas5K2MEp1+/G0tbIU4OtDLpYJRtMZS/EYfGBQ9a+G/ivLXfiCZTnDHSjITUmfqggdCmRCN8AXtRv4FbWWHdHyGtwlFs0Kpv+sJIYweCjWiwqJ534nfaCHh9xYA2QGOA58o3Niju+5/Qx+YRsOHXNGEhMb5EypiyuDoMSp+3oOVDTu+pmiC/pB8BwrQw+t1zmgs8w1fsmG4P16Qr8aCz6E7k5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kTmSjddYhEeMuTwLEfjIJRcICUSKp4sWvCgOFBa7Was=;
 b=SQFKvk0gzdKErMTLpRF0adCE05uUFSYplAGemk+z19xVRgPaIjAh7JAmftgpPYwX/7cflK6lkbU+Yqs/S0opVK3jnI5tXWnlgXESK6DyCtmxEMQR7wnEmLbX/nwRLWPPKEZ17JBg07bSH2cyc5j2bjNDUl396Nm2dVXMVvk2qMxg3sxHnosDYXUOGQcSWOu0qxcDlTbmRltqC2TsBVmPdX3oZLLgok+XloDp698Vtt3Xg/8nV0ZWEHpo8moqg+kZix9fSOplHmwTVlt/JufIVm/BfgkMx1Ckm1F5qENW4xzcLuncV+MYDYUqoiyv/MC7mAbSzRSrUnSB4G/esoJM2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kTmSjddYhEeMuTwLEfjIJRcICUSKp4sWvCgOFBa7Was=;
 b=TwHjgmGVmGER9dCdQySQtF9KSpB4dHm9q1ea+U38hHtt15SvuMQiv5HnOvqw2qmDs1ZdTrhhYDQDzAff/C8Iw79L1Ap6ZpW62gVCMZD5Pz8/2tSsMbyP+Ta8ZUem4Pe/+uGf3B3mb8+XzHgUpWh5bbTvTxkpkL6BSX3DcBXSlMDt1qOHiYcdsnA5SKAtIb8j69ClG6sRXO3+6As2m+VyfUdfwwX6dNWp1sERbEgExaCLemRS9LcvHGsWqyi4rAeG4aHtmK+ynavIW7fdzKXcuNhSOB+4vEvptHwSlBYXYD1CMBUnn2KO9LT5YXD/rgwaoEFlVBoTy4eQ1vNVKZ2A7g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM9PR04MB8413.eurprd04.prod.outlook.com (2603:10a6:20b:3ec::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.35; Wed, 4 Oct
 2023 13:45:28 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.033; Wed, 4 Oct 2023
 13:45:28 +0000
Message-ID: <0efbea1f-d05f-8ec6-9144-f04a0b3e17a2@theobroma-systems.com>
Date: Wed, 4 Oct 2023 15:45:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <20231003041941.4760-1-twoerner@gmail.com>
 <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
 <20231003133805.GA2234@localhost>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003133805.GA2234@localhost>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR4P281CA0100.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::14) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM9PR04MB8413:EE_
X-MS-Office365-Filtering-Correlation-Id: f57b7d73-360a-4863-09dc-08dbc4e02b55
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HXLzukjMFMjcQXSubt36/lDnF77r1rf/NqRZhbFS/vgTD1dYz83T6mVTWz7Gm+5fJqQYs9OtEtSeih1LQtiOpZaq77YNRUT4qVbSuJLAXv+1nDHgY6CbRdY4rCk9KnHdLqeiocji9YioKf01o/ELmhZvX6N5cTLydVhYKDbQmW1FaTRcqTwWaq4DSRyF/S1+J9NjK9NzbeUuqHWt1hmDguykS/Zd6tA7OGDUnEvxC5Z2sOT2aNeW46EQRKqT4vrrHw1iWUCQrXgxRA595pDJD4tki+Snj+5u97SVlufC2GY69ztk+9tKxUAP1NVIS/yISvp02ag8WrqSLJ/0OtPB+sEudYLcxJjrBrcNnIbKjuG10YuaLcF4UNrB5GXJ9JHQs1dClmKYTtCE0Z0BxdkrTNVfocAmAedyn/xuYIYn8mZRwGFNFfrjqpCyliWV1suXK775NGTfQIlQyYDphwzVrTiQ9Sz7Dsicv2UHdTp7pV8NQKEITb1JsMDQr/oH6In2UiBqouL2oCfyOhXbOafkKDBACeSOScXeh94huF2whL4svuYzguiB76uVkWWebCcvQjfh9V5S/s4eOBmz93HYFaWh3jvIn8Wih4XJ2A6lSLCysxxE4Q4gDSXcfEzxKOfHuKNJU9kBpGasHpfA+NL9eg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(396003)(376002)(39850400004)(366004)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(31686004)(6506007)(6486002)(966005)(53546011)(478600001)(2616005)(38100700002)(86362001)(31696002)(41300700001)(2906002)(83380400001)(26005)(6512007)(36756003)(44832011)(66556008)(66476007)(316002)(6916009)(66946007)(8936002)(4326008)(5660300002)(8676002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aVRMT0Y1QUtyUHdTeWRpTU02amw5WU4yZC9EVnBWMWJBUjhzVnFJR2s1SEdu?=
 =?utf-8?B?S1pyYlVvWXZUbmhwTFJIakFCZHdzQzExSTRYVElUc3FwTnphL2ordVpDWlpw?=
 =?utf-8?B?L2w0d2lnRXFpZ1lLODhndWhWdjFTZ2QyZlowZk9FTDZCcnlqQWx3L0phbndm?=
 =?utf-8?B?NVdEa2JzMmVTR0h5QzdnM2x4S2EzeUUyYS9uTk9YTjBVK0ZGeVp6YS9raXFQ?=
 =?utf-8?B?VnQra3k0Y1dudzlYTzYxRGZKWm50aFFSeElqVmRoUXdKWFNXeExYVlJtTm5n?=
 =?utf-8?B?MHlVcHJLcmhmTTg5N1JLVjlBeFFqUmdyY3dJU0NlVG9LU2NsWmtET2c1NWkx?=
 =?utf-8?B?em9sVU5wMDRHY3lJYm44c050OCt6eHN4UGRvcGhkMDhXK0ZCOFRSQUFkYzFw?=
 =?utf-8?B?eDc5aG5VNm5jZ0tLT3JGeldQdEpVVWN2WjlzdTJuSzNoOXJCbDRKcmRaNUpn?=
 =?utf-8?B?RG1zZjUxWTdRaktPTEVYVUwvb1ovUW1TWC93OUFLYjNNQ2NsK3ZCSlk4Sktm?=
 =?utf-8?B?Y3NDcGRvd1FmaE9kZTI1Zlc5aStydlVvTktRZmVzWkpoakhaV25hMnZkbGdN?=
 =?utf-8?B?MWZ1Z0l5MmlTdENRK2JRS3ZyQ3ZzcmhwT2R2MjFTajVNcWJNa2ZmMUVFQyt4?=
 =?utf-8?B?aHR5M3FNMU1LY2R0cDRPdm9DeHhIQWc5bzREb2ZlMktnejU5Q21mMTBzQzJw?=
 =?utf-8?B?QzZXUW1BQ1U4cEdhbDV6U3MxLzdoL2p1SmpYTGxpRHZiaTVNZll0aWVjdWtp?=
 =?utf-8?B?L0lLK3BzcG5XaUxtR0FvU0l4VmxOS05tRit2ME1vUkNxWkV0MkYzY2syK2Js?=
 =?utf-8?B?NklRazRuUHprR0YwSE85d1lrSEQweEM1VG14cmZvbC9id0NkQVdla3piSWJJ?=
 =?utf-8?B?R0RzV280UmFPeFRpMExMaGVBSWloMGFSMUhvL242TDZPQnkrdHpZaURSbUkr?=
 =?utf-8?B?ak54L3p4aWkxeUdVVU1Hb1FvdkhKM3RpQVpoaEdhQllpR0MrU0hTNVBzR2lR?=
 =?utf-8?B?R0VnUDlHcXZwS1dyUk5uaTdSVDFxME1LT0lyd0U1Si9rRXoreE9CSDJRN1BV?=
 =?utf-8?B?ZW04OHlkZTMxQncvaTl2Y0w4Qzc1bGtmZzhHbWduZ29teEwyM2hoSkVsRHVZ?=
 =?utf-8?B?dTRpN1NGYjFLM1FWVzY5Znd0ZG9McTZUU3JzUGRnaHJCcjRXV1ZlOFBxT1BZ?=
 =?utf-8?B?emdRejFjNndaTGV0aVNWeDNpSHNCZEh4bnFnNmtqNHp6akUzeWN3RURTRkVX?=
 =?utf-8?B?Z3FhY0NodWVDOEMyc3VLeCtJa08zQ2xkT3g1a1BmcXpDSWNkNVlRVkdvbG4x?=
 =?utf-8?B?UXNSUXNOU1RFNmtpSkFvTDFHVGhJQjNIUWE0bjBjdGhmTTJnMjJpZ0hUV0Yv?=
 =?utf-8?B?Y004U0I4bnlsMVdjZ3RUNEFwSHZxNEV3ZXVSbUZGOGxMN3dNbXJZZkdGemF6?=
 =?utf-8?B?WHNvQXRJUnE5aDJYK2xtMit2SFRBUVpWUTVKRUNDZlRZNG80ZHlBcHNoK2Na?=
 =?utf-8?B?ZmFvWVpxWnZ4VnBkOU9OZTdqTENVczJKbFkrR0FLOXdoaEI1NUdBbWtGeHI5?=
 =?utf-8?B?VU9hOU9qUkMyK3FrL0x5VW5lQ3hQdjlUS0QwazFBcEZVWGhNaVJ3WGdDQ3Rw?=
 =?utf-8?B?UFZ6U1hTbUNpVnZ5eDdNRk52STdOZmExZ1pIaktjZG5WMUZLZTRpeWxBZVF3?=
 =?utf-8?B?OXplOW9tZXlZNXJWUVhDSjVpMm1TNnFNK29WRW4rS2o2WGQ4cU5vTjZtcHVT?=
 =?utf-8?B?bDZCRnJPOEtQM3JXQnZHVDI0azNETEZPZVI4TmRCV3l1aG5MVURYYnAram8v?=
 =?utf-8?B?cEFWYWhuYUs0M3V1VWwrSDVBbldWOXlQNjVaYnNsYkVmU1lpcUJHZ2U2WE1K?=
 =?utf-8?B?aUUydFBYRHJHam5nOURFRFdjNm5JNlJWQW8rRTREUGFScC9oZHVQNmxQUlhu?=
 =?utf-8?B?UmpDQTN0QlJmM3dITHN4WUR1QkZ4bU4wTTdPWVczUEFpc2Z3b0R1NlBjZldq?=
 =?utf-8?B?bWZNWDNGcXA5a0tiS0JiVDFrYmg1bWdlRW9hZ2hLNkNLYjFlTDZFdFQvN2tP?=
 =?utf-8?B?ZWpZaTcrelB1NjdwbEVjaHk1M1UzMVpHTGovSEExWmd0MGtWZTZsYTRtRXpa?=
 =?utf-8?B?M0ZVN1VTRFk5QWlWaGtLRDdUVStIS2ovZTFPQ1oxNlM0RnlENDdsR0ZhcUR3?=
 =?utf-8?Q?kmXEIdEJEL9xES6J5/Mv9O0=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f57b7d73-360a-4863-09dc-08dbc4e02b55
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2023 13:45:28.3342
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NFa3FjpAlMhzDsdUVRG8VzmoGr42oVFjBSvecenorcnL4NVS/FLXipSSaf7jBLcSrJhNhFXPjQB2f73fZ6C6LqwpgdHC2pCgk2LjyzeLis9wluI+MXfkmpyalzFtOH7t
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8413
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Oct 2023 13:45:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61235

Hi Trevor,

On 10/3/23 15:38, Trevor Woerner wrote:
> On Tue 2023-10-03 @ 12:32:08 PM, Quentin Schulz wrote:
>> Hi Trevor,
>>
>> On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
>>> The upstream kernel reorganized the 32-bit arch/arm device-tree directory structure
>>> to separate out the device-trees by manufacturer (similar to the organization
>>> of the arch/arm64 device-trees). Update the references to 32-bit arm
>>> device-trees to match.
>>>
>>
>> Does this work with linux-yocto and linux-yocto-dev from master or do we
>> need to add some logic to support both (do you want to?).
> 
> This doesn't work at all. I figured this was an easy one, made the tweak,
> submitted it, then added it to my jenkins builder to verify overnight. Woke up
> to find the do_image_wic() tasks failed. It's the same layout as the 64-bit
> machines but I'll have to dig in to figure out why it didn't work.
> 
> As for the linux-yocto vs linux-yocto-dev question I'll take a look. This
> happened with linux-yocto, so I would assume it is already the case with
> linux-yocto-dev. But if oe-core supports multiple versions of linux-yocto,
> that might be the tricky bit and yes, I would look into supporting both for
> the time-being until the transition period ends.
> 

This was done in v6.5-rc1 so anything before won't work sadly.

master branch of poky supports 6.1 6.4 and 6.5 for linux-yocto 
(linux-yocto-dev being typically newer than the latest linux-yocto and 
the latest linux-yocto already having the change, I'll omit the change 
for linux-yocto-dev).

For reference, denix on IRC suggested you look at 
https://git.openembedded.org/openembedded-core/commit/?id=04ab57d20009d85eb566e83ae6fe1dcea4db7300 
for what we're trying to do here. But I think this isn't applying to how 
the DTB is found but rather where it's put and this is too late for us.

I think we need to modify get_real_dtb_path_in_kernel in 
meta/classes-recipe/kernel-devicetree.bbclass instead.

We could handle it this way for example to allow a fallback:
"""
get_real_dtb_path_in_kernel:arm () {
	dtb="$1"
	dtb_path="${B}/arch/${ARCH}/boot/dts/$dtb"
         # Handle pre-v6.5 layout for Aarch32/ARM DTB
	if [ ! -e "$dtb_path" ]; then
		dtb_path="${B}/arch/${ARCH}/boot/dts/$(basename "$dtb")"
	fi
	if [ ! -e "$dtb_path" ]; then
		dtb_path="${B}/arch/${ARCH}/boot/$dtb"
	fi
         # Handle pre-v6.5 layout for Aarch32/ARM DTB
	if [ ! -e "$dtb_path" ]; then
		dtb_path="${B}/arch/${ARCH}/boot/$(basename "$dtb")"
	fi

	echo "$dtb_path"
}
"""
(to be determined if "arm" is a valid OVERRIDES, otherwise we need to 
check against "ARCH" bb variable; also not sure about the second 
basename if it's necessary at all).

Then you would just have KERNEL_DEVICETREE done the same way as in this 
patch:
KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"

and we wouldn't have to handle it on the recipe level.

Otherwise, we could do the following:
RK_KERNEL_DEVICETREE = "rockchip/rk3066a-marsboard.dtb"
KERNEL_DEVICETREE ?= "${RK_KERNEL_DEVICETREE}"

then have a bbappend for all old-layout recipes:
linux-yocto-rt_6.1.bbappend
linux-yocto-tiny_6.1.bbappend
linux-yocto_6.1.bbappend
linux-yocto-rt_6.4.bbappend
linux-yocto-tiny_6.4.bbappend
linux-yocto_6.4.bbappend

KERNEL_DEVICETREE:arm = "${@' '.join(os.path.basename(dtb) for dtb in 
d.getVar('RK_KERNEL_DEVICETREE').split())}"

or something like that. We probably want to have something a bit more 
precise than just arm to avoid breaking other arm machine conf files 
which do not define RK_KERNEL_DEVICETREE, maybe 
KERNEL_DEVICETREE:rockchip:arm if that is even resolving properly.

> Although... any BSP layer supporting 32-bit machines will have similar issues,
> so perhaps there's a better way to solve this in oe-core?
> 
Adding Bruce in Cc, I hope he doesn't mind being summoned like this. 
Maybe you have an idea on how to handle both the new and old layout for 
ARM/Aarch32 DTB in the kernel for the KERNEL_DEVICETREE variable?

Cheers,
Quentin

