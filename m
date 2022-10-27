Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60AE1ECAAA1
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 15:53:40 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.71])
 by mx.groups.io with SMTP id smtpd.web11.8226.1666886011574023645
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Oct 2022 08:53:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=gWuj5eGh;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.7.71, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kx2l4qysamn6R54iA1eYS2uqiPPTNZ8E0/6+loT7OhH3a57rL0DDKzBN/U3xg64WU3gP9P4RaHfeBFjxpj8G8b2F7ZaqvZnF9STIaGbI1e9xpQTAl4a+D1bEBepL5wcyzMrUJxGNWkLtM/iQO45802ImkRQ5oe0qUTmLIgLzlJNn6+RivMwnpKJeUjz+kaSHIsHTVyksCaJVb87t4r7KChTSNZ2fNG5CqYskGj7QqAglWbgSQ6exQLyypa4rTxd2kWO9IDXfahH1JIfo2o4VhvHfgozPZD4VxzXS+UrFw1Lx/PBEsZ1f55PVoWiqjWhV5U8F+zhm/fl2OC8jLe2WRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f59DWwIoK+QzplSoXfnuCjxfCEhlNrNmZHNyAgrjzHI=;
 b=d8R0SKdOb0XSpCvPnSSr3Ff/Tm0snjRl/jk8dvWpUI/Zl+r84mxeHULHl3esJQrZuxYzBJEhcU3gQs5sX8b8uPbFO+EbIr6oV44rA8GKD8ShFOp47k3wJMGl//ejUp1FGXG5Im/YPsLNN7fiE4JfacLlDWoyRQ7S5M4tbyjBU4dHDdyaSCsbA7cRg6o56qJDKmrCWnUZ1q1Fqa26U7+SRUd8IggI4JeavV0d/kbSbYsJjpCExYFcxXT4LNqkafUuC3x8UHivPXRSPBCQv/RixMApbD2+3JhHglADySJkORpMYAlYm27UhAFpncvP1VocZKN36S/GQ/1Zh4XABYO7SQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f59DWwIoK+QzplSoXfnuCjxfCEhlNrNmZHNyAgrjzHI=;
 b=gWuj5eGhVehDAMU14Y+r7CNvR7USPeqaBE87OIkRuqxMv5Pwbt/dMy50XKjbvzYF93MCfg/ayHPD3kfHn7pbl8cvMKSx+d6vI3Tij4Hodm/2xNxnBYVbyW2d0fwtyw05RJ8PfJ8RP33QIPf8YfIPxfEaL1SMJfezp64nTrHdrguQZZnD4DSBhZV7bESao0+mSVirxr4TMOcpm2h91k+Foc/XQ6ldPdxvp55HjKOtZsvofpngU88ztDotoCm6xTU3DjGG7duvLO5Z0eY8sxO4G/hdqB/dyjXhel7IGIvKYJ+mgTYX3LhYMFZhIm7vZqy3TCAE9PXEFs1a5S0h8sUXvQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8575.eurprd04.prod.outlook.com (2603:10a6:102:216::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14; Thu, 27 Oct
 2022 15:53:28 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5746.023; Thu, 27 Oct 2022
 15:53:27 +0000
Message-ID: <496c829a-07b3-9105-a04c-f985b31a6e32@theobroma-systems.com>
Date: Thu, 27 Oct 2022 17:53:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [yocto] EXTRA_IMAGECMD:squashfs-xz support
Content-Language: en-US
To: "Bills, Jason M" <jason.m.bills@linux.intel.com>,
 yocto@lists.yoctoproject.org
References: <ffeb477c-ba3a-8a81-d720-d73119fc91ce@linux.intel.com>
 <31158.1666133311447584740@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <31158.1666133311447584740@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0502CA0013.eurprd05.prod.outlook.com
 (2603:10a6:803:1::26) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8575:EE_
X-MS-Office365-Filtering-Correlation-Id: 26950037-ecfe-4317-afd5-08dab833635a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5Cbki9qBv5BccqZmvU/SDKlMruTDPm4w6E4KySpImU6GwvbOYu9v6RngMn5aDkRaTorL6MwBfOBs+gCQKn30nYYhxKSSjQJKZLBR/38kkS2TDz2kHAhQlYOF0bK/NI5gH9ubmeKXj8B5q+tgEUsm9hZ7z4cdzhlEGWKQBtvbGOuCJ2MoeuHC44uruXJL1f0tmlu3WQAK1E9kAocLRirnK251XENBOurObAfIXPHUs7JRi8bx0xv6IuBZDhb9AfTXYvB5HKU/O5U11wjODQe7l6k5vbXgYd21OgWEZkP4W/D/u0ZueTHke2fxVzjdwMRn81acIwFVT2BTAeTj20FGBtj4ZaxpSpNOXPuo+22jKbhTleygWiccc2LLd3IqrPvY+RqB187DtK3kB8zy7D4vQ649twEmsh3I2tQ/MN4CRkb848tC7QCQrcHe3DYlPB86Jk/gNSnKUwnI6fr3O7vrXzJbj/Qn7bBQAvXzukknzGlVTzyqnqvnEkUC8UlpnJ/saLWuwS/7A02KxduksY4yxuSxkzZPKaCiBeluU7KDg1pY31dGQ/09rTvdsbky9TLJXakUcuP2JQvnkagHywgybOEugfPqqNWmlDvL7ERmq3Y72yHu78IX4xnh+GTQQdZHRM/iiju9g++S06BWzNq2+hpN/OCGCWUfYrGOLCpEfLattva87TIWrPYTUfqNsCZ9L+vRzPicA7I3JEQ2CrLjagR7QwROr9jrr0z/hyuxRrTER5Ip/j7PebLEqKkS4mevu6CIbJB9ZprRvS3H9TAUEa1zLFkNlm1fcL+GB/Cx18U=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(346002)(136003)(396003)(366004)(39850400004)(451199015)(36756003)(66899015)(31686004)(6512007)(38100700002)(4744005)(2906002)(5660300002)(86362001)(31696002)(41300700001)(186003)(478600001)(2616005)(53546011)(6486002)(316002)(8676002)(66476007)(66556008)(66946007)(44832011)(6506007)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WXI4M1M3WEppck1ENkExZVZzRXFkY0MvTG9waGRnQjJlbzRSYVR4S2pxQmpF?=
 =?utf-8?B?eFdZMmV1OTdmcC85MlY4ZkUyZnFGRytqMlRVRy9tMXVadEE1dDFqWjdXQ2Y0?=
 =?utf-8?B?SjBOVTRvT2MwN002bjVGaE0yaExTUkVzLytHR0pSYlVkK01VYS9vZy9zaWdy?=
 =?utf-8?B?eUpPeTRKTk5RcnNxU1RZcFZ3Z2gvNVdNbG5JeGU5VGUweXhKZ2FZdVlmaVRy?=
 =?utf-8?B?RHdRNzNIWWZBUXJ4L3JUem1IdkdLSFpCYW1MN0RxV214TmFxTlZQYkZlK1RM?=
 =?utf-8?B?QnREeXp2V1I5TldwVW9ZN2VXbG9vSlY0YTcxVDNvS3RaYTF1UWlHVGJyY0I1?=
 =?utf-8?B?UHV1RStFRFI4RTVVbEFqQ2dMakRyanVzMDMzMVh4Ky92YjVUK2traXdvTXh5?=
 =?utf-8?B?QmQ1eHBTb3V0WjNMN3pHZzdobFRmZkN4Ri9LMk16djhvRytDWHJ4QVZmVzdm?=
 =?utf-8?B?UVdrb3pXOUdDOCtLalU5bjh4WCt0K1I0SmVDWEJCbFRrVWZhWWhGbjZnNVBC?=
 =?utf-8?B?cjNtSExWVzR2OE5Ed3BJNG54bUt4dlZpWFozQXR0bXFKQjlqRWFtamEwVjBl?=
 =?utf-8?B?YlJyWHhnTHhLbmdyblRnbVc3ZCtWUnZRVzkrZEpYUWlmbXRwS2gxTjRBSUJk?=
 =?utf-8?B?N0VZZEZVZWptWUZOTFd6REpxbzhURjhpNy9sKzVmQmZzYUM2T01NZEN3T3lL?=
 =?utf-8?B?S085QmtiQ09EQ3N2dDZQNjNGYkM1NEJ4RXhSWHo1ZHMxMm5KU3V0Y2tQVjFD?=
 =?utf-8?B?QzBmWThkcW1YTlhmbGdOd1BxZ2N5Z1Nnd1QzSGZCMGtFL1UzR3ZocmVGYTJK?=
 =?utf-8?B?TGM1VUNyZEc5M0h4Z3NzSWdqRFJqc2g3WFJTWnRpYkQwWmQvTGFFbjY3czlU?=
 =?utf-8?B?dG15MVIyWEVjVFRzWElSUVBXQW5SczA1K29oOGd3UXBpaG1BYUVMU1I3U1lM?=
 =?utf-8?B?aFlkVVJmSjk4YUlsWkZCU1BGWHJqc1I5akhXZmpaM1AzVTh5M1k0M1FmbElR?=
 =?utf-8?B?Z3psZTBsUDhUL1BKdlhHWWR5M09MYnVCT0k0bldpd3NST2JTMnF6RENQNHVJ?=
 =?utf-8?B?dkhTWitVa0FLeUFRdUNBd01CdlY3dmdkaUQ2RVkzeXB4eTdaWnIvNWdJODJ4?=
 =?utf-8?B?aWtYUDloUWxIVnNmYWhwaXhYTmtMdVV0blI3YUJwV1MvY0xnVTcrYTJ0Q0pP?=
 =?utf-8?B?RlZOUEtRR3NzZmMvMkVNOExHZndvSUIxNVVBTTFJbWxKK1ppQ3pDeVFnaFdl?=
 =?utf-8?B?a1BsMWpqdVJ1a0JMTm9USVRKMmljMTB5RC9CbFJjNmpScWV4TkhFNkE5WStP?=
 =?utf-8?B?L0k0bWZqQmNkSGFKRHFlMVJqS3R3Wk5TMjBsNUJiM0RVaFB3cnpEemxQQzAw?=
 =?utf-8?B?bjRlN1BrdmJmUERGbmVWcU9yZ2dCWFgwUjN6UkhMSGIwcFpPTnJtdUlHVEhp?=
 =?utf-8?B?VHByS1JBeG5FNjJHVGpBSUZZeStkUExSYUxqamVIOHp6dVlON0hLWEFuY3RY?=
 =?utf-8?B?RFpDQlpRNDUzQUNEYld1YlBUWGpTZGVkSE4yRkI5WHdqWU0wcndhbWNWQU9E?=
 =?utf-8?B?N0N5MzJvaUNacDB0R3Yvb0NlVFd5QTZvN3BWUW54OXdHRStOSjhQcmJGVElJ?=
 =?utf-8?B?cVFMS1VwcXFuekFWYVJvSk9uNmJxcWN3NWV4SDdBd2tKTmVvK2JpbllJVzVM?=
 =?utf-8?B?MTBjaUl2eXdTZjFCcFFsOFA4djJxSG1RUEMyYW00RmlWYmFrVSsvaE83a0wz?=
 =?utf-8?B?bVpPWVNuallMeU9rbFcvR1ZxNWhRZjRicndHTG9iaVoyS3dtRzR3eE5XWkUw?=
 =?utf-8?B?NGpLYlhuQWpHaU9GSTFmem5taEhkWEw2TzVHS0xsVFNEWlAzYitBdkM0Rkgw?=
 =?utf-8?B?QzBlR1plZjVaSE1CSFlnTTloRjRUTVFDNFZ6MDJGZlA4bEpnU3ljU0JVVlhK?=
 =?utf-8?B?STMrK3V0VlBiTUpXVXNnbmZCSGhIZmk3d2hUMUovMDRUK1JzbE9zSW5jTGU0?=
 =?utf-8?B?bXUyMTN2b3BsdEN4N1NJNG9BbXBBQUlaWGxPdHYyUXVhak5MbTM1anFlRVVj?=
 =?utf-8?B?djBNdGx0QzBFdnUxQWFzSER4U2xCQ2Q2V2xJMEE2YlY3UEIyRDZFMU9NUCtX?=
 =?utf-8?B?V2t6NHFveFZ4RmVKdnZLWWlrMDhFNnF4QlFLS3Y2ZzVFbm0zQ1lDWXljOEFq?=
 =?utf-8?B?QnFsakJ4Rnh0NFFqSEtOaWxtdy9rc2VhdnBJTWlXQ2ZrODEvYmZPTHVSRlh2?=
 =?utf-8?B?bGtjMVU0RVVDZ1V4WEpFWXRiU3VBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 26950037-ecfe-4317-afd5-08dab833635a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2022 15:53:27.8265
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GtOQkW6A7SmvkZQ6pfd46GHOgwGayxJIw3FF/20d7W1A26Irt+9gMGIct2JGhvsWBfEGulxb2b1E+Ou0JeOfCSARVPidRJVGOI2dquQ9namqSroaIn7NYf2HGPeaeZas
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8575
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 15:53:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58424

Hi Jason,

Sorry for the delay, your mail got lost in my pile of to-answer that 
never slims down apparently.

On 10/19/22 00:48, Bills, Jason M wrote:
> Hello,
> 
> Just checking if EXTRA_IMAGECMD:squashfs-xz:append failing to apply is expected or if it should be fixed?
> 

I just tested on Kirkstone release, yocto-4.0.4 tag. It works as expected.

Did you end up finding the issue or are you still after it?

Would you be able to give us more info? Which version of Yocto are you 
using? Can you try to find a small reproducer with ideally only poky (or 
at the very least public layers)?

Cheers,
Quentin

