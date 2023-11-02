Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 149DEC4332F
	for <webhook@archiver.kernel.org>; Thu,  2 Nov 2023 10:33:37 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.87])
 by mx.groups.io with SMTP id smtpd.web10.27903.1698921215196396000
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Nov 2023 03:33:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=E6ODek54;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.87, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRy87WVa+Hl1556stF+emG+RIpisQB0ienWo0ccK4tu8v4jUQATvkBztJaLXI4Qx4Z5l6jXHRfWQ9SF9/mwIA9dMdL8BOO+ksEGQF6v53iRzmuvWxTj/h1Rob+v44MtOCwR7CpO8IWmZ8udjHeuNwqwvd4aTYpvcsE3MMDahcuGVnUnDrScLITyf+JZzn+YmipG0/OhBTLZhL6JZbrNp8InW7UTXG2u9p3f0cdl7bSjuAOcVYFn07D2IuFzBMXIkuVJITjtu1NVdFcQ035WFCpzRC9cZOiDNvNWKiTjRMwZ7LW4rQ633VxBwglyWWVRe4huvOlookExxCNFwDQdu7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lnCeex8nDo0oxBj5q32I9KxZdWqKvxUpF3YfMFWTTTM=;
 b=XT72G0mckvPu9y09FTSJHiQqk/zuK/6Z3tYXWvP16hn2Z8JVHiGgwFsu+Wm9QDCMFS8r5lOQ+lbySnedwxth9ZTFKSbmWyfAxuxiYA8JiEzCyfwjqtZZX21GFGe72EHyxaEp5WzLYze/TCEbLDRS2ZPe7qlR+aT+5w+7JtPExQrBfovKHZX/9HPe58zwkxxA3qVwzH0Jvzarx6c08P0Y5/MTLAwGQS5dTU727novruksHar+st8YajQVvmFxLdxY+eaqD5QcfoTKsGnHcb5pyvYcV/rzCMVPLFQ/TgY/jObiCaXvZ7lQEy0V68+Y+kZ21tjZKD1Xj5w/VV+rpQvyRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lnCeex8nDo0oxBj5q32I9KxZdWqKvxUpF3YfMFWTTTM=;
 b=E6ODek54NMXVlvBqH8akQ6dYmnM7af+83QK/ToSCZtnNVPVf8vmq1AxO7LlSGlBCBIj02wHqFi5l7XS3v/ZLo3cdaCsebWBOH6CIQ9ShH7EHN6Hw3wiuv+hia19xRoGCHtCELpePKsNmHP0gdFaewEe8j1+8D+PkeE2Y4pVFv0MifSBuCA1MmqV6iZyY3jwEc8H8Uq8Y1EyrBp9/qoN7vKQg+S505HVc2CNXJDghhiy5XnOh/er0YI0WpxKwG6OYntKWgInPSEYKor7rcL5GNvhAvpk/i/wFcLXWhswHyKBfSTgxAC4UAv5u8MTFRmozfmCFSJoME4UNGyPoGkRKzA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8672.eurprd04.prod.outlook.com (2603:10a6:102:21f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.19; Thu, 2 Nov
 2023 10:33:31 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::8b7:c8b9:d800:8b4d%3]) with mapi id 15.20.6954.019; Thu, 2 Nov 2023
 10:33:31 +0000
Message-ID: <795c2107-05cc-4bdc-ad0e-fb20e1247ded@theobroma-systems.com>
Date: Thu, 2 Nov 2023 11:33:29 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [meta-rockchip][PATCH] rockchip-rkbin: fail if lacking an
 override
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231025145756.17502-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231025145756.17502-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:95::7) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8672:EE_
X-MS-Office365-Filtering-Correlation-Id: a633be71-dbfe-42f6-2646-08dbdb8f28ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IJwD9YYr7mmVxESrJdQYZ/T0q4957teNmfbq42H2bxuelsl5U0apAcOiTSmKiqds/vo+7vE+Po/MVB3YzAwmNgLzmAPCclG32TQJ6rqhxX4MG+XQw1GcIHBm0GW2IYji8KL6uluL7jzD4jqt8mrSkpuI8UyhQKzZCr1Cq/PrTSAe8+rOfyRYk3yw4SqExLJzin/4GzkZ1XDHSjGKD6NRDWJg2tmuJ8iO51GdGJQ5rWpxqCaJawkfKKYGhzniUhiBGH16brL/zYY4Rg/mnvHQ54iiuE+jLl2IB7+qn5Cb6vmtLPS3W2aAU1VQSFhuCy9Vo0evfL0juzgTlzBCn/l5zdGp4kxy+IuC5XXDOcDzLl17coQHxmlFiBc71+hiyYppJ8ZDanSb1Kizis1LTwR/rBrIer8iwnVDy2haa8VO8iQOPXvNoc0fKy7tn9QffCzf+2j3iUYoR262PncyfgzdJUb64RVonwiUWHBH42epY5ttYAlQ63d0zwl/NRQ2OIoG2lIiBuIeMiG3nTAqEOiZaXredF3ltO8fBC1+8jhlWPXZ8QAEbAD3dsDRif1519YpaKEam6RDI+3rADOiCo/yS8ebpcefTKounA3vzJrREMJ0ASEMt5rSyVMjxPBNum+w
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(396003)(376002)(346002)(136003)(230922051799003)(1800799009)(451199024)(64100799003)(186009)(41300700001)(44832011)(8936002)(8676002)(5660300002)(2906002)(6486002)(966005)(31686004)(66556008)(66476007)(66946007)(66899024)(316002)(36756003)(26005)(86362001)(31696002)(478600001)(2616005)(53546011)(6506007)(6512007)(83380400001)(38100700002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Y25Zck1RTm5NRGNyV3lBSG9GK3BHQkpNdzEzNEUzYlNqMWZ3YkNQbGIrK2dU?=
 =?utf-8?B?bHRlTjFHVnlROEUydFZBVGpMMzQwcCtoTGFpV0hSdkRYcmZ5UUk1RUlGbXN5?=
 =?utf-8?B?OVNrM2NpcTJHZGF6NjR1ckhNa3dtNFg4UUd3dVdwei9ac3l2dWZBWnBaTVZL?=
 =?utf-8?B?QVZEQVVUMG9UVkJZcThWK2doYUJ0UXc3MUgwWXdHeGZLdDIvSUFCSjhDSlY2?=
 =?utf-8?B?ZDhqUUhWVUgwQlFIc3VoOTNuQjE2aTVYVGoyZGJ0ai8xeEM1MXhDQ0lNZS9L?=
 =?utf-8?B?L3lCV0tmdHdaT3h2a2FvUFhoUnNOVWlzMzZLcWk3dno4UmwrT21zMDREaU5J?=
 =?utf-8?B?bVpwOG53b0VHdXZCdWpmNG5oSFNIZWxBQnBMMkhUU1U4R09uLzZnRDVpNFAy?=
 =?utf-8?B?SzZLVDJENjZ0TExuQlVyYURHaFVkb0tKMjhOTkdBaDRMekhxcEpnMnRGM04x?=
 =?utf-8?B?QkNJZWhsYlZxRE02Zm5sMlcwMkZwQlBIV2FIUktNeVFBQnBqcFhkbXQyaGNY?=
 =?utf-8?B?M3lYTkpkYjM1WnlSdkM3ejB1cVNQOUJXTjhEZHNCSm03VW9laFBzc3dqQ3lY?=
 =?utf-8?B?aUlpVnl0cFNJR240NENLbFBvUjVhZ29oNU5zUEIzbFJMSitrbHlXR1lyMjFY?=
 =?utf-8?B?VEZSUmVwd1VOZWJkZytEQ0hLb3lZSzlZR2lUZ0h2V3h3OEJlNjhjZ3pGTWJN?=
 =?utf-8?B?Z0VOL0J0Qm0rNVVSbmNBcFFIUXdMcEFIWjF3YjMwVHloa2dFMGhtVmFzSk5Y?=
 =?utf-8?B?SkVaNlRXV1RjT2RpbUptVUVXMGR0TG1sYk1SWDJiMGViNHZCbGZ4NHRWZ2c4?=
 =?utf-8?B?S0pWVFlreUk5Z3hTTWxxZEZjRWRtR3RWWGFzeUIvOTlrY00reDFvclQzS2tq?=
 =?utf-8?B?cGNBS0lCeW9GVTZKajR0OWlUaUVBaHdFRGxHWjhaT05yalRXUHNXaXhVdGdn?=
 =?utf-8?B?ZDZ4QjZXZnZlRDhPV0tJcWpkVGdNRW9VRVBCcExvdnN5N3pkdXhuT1Y4S0xN?=
 =?utf-8?B?SC9GcUJhSTNqeXRhcmQxZllqOVQrZ2F4S1lYd29WeDBYS05sMzJML0JxdXFt?=
 =?utf-8?B?aDhPdk42bnhKNEtOS1dibU1RR3pyZjF4S2JJeWtod1F1ZVd5bktCNGZGVEVX?=
 =?utf-8?B?UDJSNDJQQ1ZuOWNZREhDc0d0Y1BMb0pVaGJUZS90YkdyNUxIc2hCSWxybnZR?=
 =?utf-8?B?Q1U5OWZKQTN2aVN0MEo0YTYyM1g4R05Qd3pRUi9RS09TNW80NU90bVlOS3lk?=
 =?utf-8?B?RkxjZTZKRVFvS1J4aUhrbEVmWW5OblJsbnZXUHpLTjdnY0Q4WURPMFVRYVE2?=
 =?utf-8?B?YUlLM0t6L3FsYWFPSGlzTjltV3Q5WXFGcFh6Um1xU2Rvb3FOci9tUnFodXZv?=
 =?utf-8?B?WFllcUJoek5RMjBma0NjRzZvSHNGbVZFY09jeEJ2bnlJVE51ZVg5bFNRbXRa?=
 =?utf-8?B?VXRJcW9JSnJ0ZUUyTGNEaThMQnhCYjQraWtIZlBFV1NURkJST1RCSnIvQVJv?=
 =?utf-8?B?eW1JVUoycmpiMjdaN2s5VTc1YlMxSk1qaUZZS1UwNk5CVnVFc25qbGVpd0pY?=
 =?utf-8?B?SzZkaGdKS1BDa3cvSWJieHE2TjhJQzV6UUFodXVZR1VJQmxrdEczN0I2QjBD?=
 =?utf-8?B?VlhFdnE1QmlBeWV6OUY2Uk1MVjlQaGxTNmRNanVvUHNMeFVzdEM1elpnWGlq?=
 =?utf-8?B?S3FidnhRYXp0QkducFhOeVlFTEhFQkZ4clFHZzJQVnBwUGc3YVl4Z2IwOGZ6?=
 =?utf-8?B?cFk5cUlPcVRrT3pZaGw0enBQK1N4YVUwVUd3dFcxYldOdGcyd3RrOG1LZFg5?=
 =?utf-8?B?NEMzbzhZUjQ3cDZXOHFXRmxybE5vazZ2VXU2SHlLTUNaZEJHSk4zSHNiL2Zi?=
 =?utf-8?B?MlNwY29WY3F6YVdhalRYMklGMkZTN2pmQjFoekdZMG1KdFNBVGs4bElLWEFx?=
 =?utf-8?B?WE9ZZU9YVWJsYjBaUHlRcTJCcWNCdVlmb2JCeWZ0WVNNb0tiWFFqNUlNdWw2?=
 =?utf-8?B?MG5vU0xPeUFWUncwdk9pdHlJTlM2THZpUXdXQXV1QWkxVmRKZVlmRXNpQ00w?=
 =?utf-8?B?YTU1MzM2a0l1MkNSM2o1Q2Iyb1R6RmwxbWdOVlk3S0NuUnVpdUxDNHl3djlx?=
 =?utf-8?B?eWlBYUs4WXlFNVNvNmhicXVFNkpMN0ZIMW1XVzR6VjVPUC9raVZYVlNUNzdZ?=
 =?utf-8?Q?5Hgn4edKv5g9cnVhji7a1wI=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a633be71-dbfe-42f6-2646-08dbdb8f28ae
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2023 10:33:31.4229
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JFki2NPYNnFiKWMXXo/S4zpY9fQ2H2sNL6zHpScAn5rd/htNyTus81q1yEyFclD6CMIDxTN1ymh+c+F35f9Q/OVwbzS6myqza4W7WPXXz/4dX68Uy3NZr4BcIPNFeTGR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8672
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Nov 2023 10:33:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61574

Hi Trevor,

Looks good to me,

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

On 10/25/23 16:57, Trevor Woerner via lists.yoctoproject.org wrote:
> Looking forward, rkbin should only be used by specific Rockchip platforms
> for which TF-A support is not (yet?) available. If rkbin gets added by
> accident without an override, add a bbfatal to let the user know an
> override is required.
> 
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
>   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> index f9e680d16cb9..a3ab34189041 100644
> --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> @@ -25,7 +25,7 @@ do_install() {
>   PACKAGES = "${PN}"
>   ALLOW_EMPTY:${PN} = "1"
>   
> -do_deploy() {
> +do_deploy:rk3588s() {
>   	# Prebuilt TF-A
>   	install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
>   	# Prebuilt OPTEE-OS
> @@ -34,4 +34,8 @@ do_deploy() {
>   	install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
>   }
>   
> +do_deploy() {
> +	bbfatal "COMPATIBLE_MACHINE requires a corresponding do_deploy:<MACHINE>() override"
> +}
> +
>   addtask deploy after do_install
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61484): https://lists.yoctoproject.org/g/yocto/message/61484
> Mute This Topic: https://lists.yoctoproject.org/mt/102179996/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

