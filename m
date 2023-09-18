Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7800CD13D2
	for <webhook@archiver.kernel.org>; Mon, 18 Sep 2023 14:50:45 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.63])
 by mx.groups.io with SMTP id smtpd.web10.53180.1695048635948944935
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Sep 2023 07:50:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=PD9/0ysq;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.63, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QM5HfYRgVki1zydWNesPS7plr4aDsFWet671JZ+XXF3FC11w+OuuXuINbGdWv/y25Q2KD79NoL22xQFJjb4oKvBrCsgUir2Sntk2aBLRwKXMkPnA9STIS19CG/LkeCg/6sJkcpE8pBuYI4WG8HI9i50YlGuWphd39a/GdwumkBI+xwc3pEH4J9zmi3yxA/dJOAR6yJKwuWhXM79i0nV3B0+3c8i8ru1JBMwR7I0TDdLHTG+lzz7Hk4+y/UR3pu5twyeaD2ol3IMUmbvDYDmvdAxLpOWy/HaOpWXR/c2RNc9KWoDSXoWmEliijYPvPpMNuEwMJQY6QXjH56AD60ebYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9RGWFDFZ5sGSjAKf/sb+Kw2/8JjMuysFy8Pm1iRNnME=;
 b=X5wl9s1OgG47C32HTsXH2h0pfc0hDXg0Qy5tMAGP5ZySFT44vL25Pcv7GFggLAVWHN0nVv540VfCmeq6IKUAI35Cd1UtFBKBrUEL1aBIPHBBx0toHCry879qTg7FasmwNkeVsHK/bl3ulRfoFw7aOwqDcA340Ev0W3svQH6WUn91Jn4tnQAY1Q5qlrBmUkXoi0ZWjNFS4i18wNk6vo4IHzKxVRub//+Yho+F8XO+bms9yUCcjEWZCF1B96HbkEviSQhn6RZOPG6ipi1dVdnXhQqa9Lm7f1OZPI+I4kYpsMdjzOznCyjn61z9TyUyHo4J41nY8Dg4ECZIPji2X1B23Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9RGWFDFZ5sGSjAKf/sb+Kw2/8JjMuysFy8Pm1iRNnME=;
 b=PD9/0ysq+SyGLeZIEPMNMZ91cdv/TEtaK08xfLVKqP8ZvLJcwCWUlO95KCEf2kGgcaw2TsgPTvaRCRnsyHsHZynwjhvYNf2TOY9KIGxU/b5QJAeayI2CGvDjLIthBygQdDSIS6DbwXABf//WnrGG03UVT8BEPkoqEx+7HwbGRn+qZUgk8j+fGzncenAGAD1vth/6Qves3HDdH+dfj1kTpaIr4d3k0kKAqskrtzICnL7iDuqVYbn7WQUQmaksjKy/RlzXznLB6yAYQpjQOjuf0GcDq6Fg3UfIaAZW7LNdWrAhW9AUt08/ClSMgK4QWaDWiu2vfi7ztG30+U/d2bLPtQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS4PR04MB9549.eurprd04.prod.outlook.com (2603:10a6:20b:4f8::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.26; Mon, 18 Sep
 2023 14:50:32 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5c00:6152:6ce:72b6%7]) with mapi id 15.20.6792.026; Mon, 18 Sep 2023
 14:50:32 +0000
Message-ID: <838268d3-7b61-6331-270a-1a35f210d5a1@theobroma-systems.com>
Date: Mon, 18 Sep 2023 16:50:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [yocto] Overriding package configuration as a distro
Content-Language: en-US
To: Logan.Grosz@b9c.com,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <MW4PR16MB5087B2826350F1ECBED3E9E0BBFBA@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <MW4PR16MB5087B2826350F1ECBED3E9E0BBFBA@MW4PR16MB5087.namprd16.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR2P281CA0157.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:99::18) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS4PR04MB9549:EE_
X-MS-Office365-Filtering-Correlation-Id: 458c0c0d-8db9-4547-8d41-08dbb8569b93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Aw85MNbmH5c6J0iyot23T/GkfBu873VXSPWyIXq7JxlQEqGtIvxCUxfm4iOMCDM+a3sOH9QEUWK6qZLz/jF5U8vydBVtV+qbBN76IKSFNUVCpBGLagUqOV44NnBg/5yx6QusHIeNcOqJowAB0s3+I7gPlr2RTuT8SrPJbaCr0+4ASTnEEQ7FPf76785KcGs+ETmkeh+9WjKUr19dhf7YcqMinwkVWbTgSa5RCMn1ibTh8MDzCUEEYnv3PN1gA62cRuJQju6fwQHqMOOakdHzxvPTwuf/rbH5iwzUZdIi8RLTqp35ZCzb77V2gf6Zk16yIjOyOdXZn2bJfqAxOaRuudavX/YUgaru96ujiKz+zq/+apJjAlhC+D+HCJpsxKDdTaFSDCpahjvs8fNeSDI6h91kLlyv4mwrkFOsart42imBQtPX9RBj4CiV8yuFkQebI1JIQDt944qg2l9AsWAxI4tJH0ARn0QIwkxyiv2FsK1TIj5T/vaT/z5QwQSf43wMdCwmJNUUbymMsSP/GrIwxHpXC7hp0b6B1QgoCKAa+ApBzcVjF/1NB1mwm/vug48RrWwZBw5R0AkHwx8RHmsxSBcgquZrVO6U/xfZClyIPuSmGaSC/oK9TS3057cRrstyJlk6jRhdxUJ91umwvhpzXg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(376002)(39850400004)(346002)(396003)(186009)(1800799009)(451199024)(66899024)(6512007)(53546011)(38100700002)(6506007)(2616005)(66946007)(478600001)(66556008)(66476007)(6486002)(31696002)(86362001)(2906002)(6916009)(5660300002)(44832011)(36756003)(316002)(8936002)(8676002)(41300700001)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?NzhCenB0YWxrNHVITHpka1I0cHRnVTRYa3lBMVRQRkVPa1BMdWpNUnQ2V0Rn?=
 =?utf-8?B?K0hEWEpCSldDZXJ0UW5PQVhNcSttOU9Xb3RuWG83QUR6MGNpZUwyYm1zMHJl?=
 =?utf-8?B?R1ZtWUwvSStrRnAyMzQrNTN0SDFGbGtXQ1ZFUzBSR0hFaWVkS1FwVXFnNHlo?=
 =?utf-8?B?T0RwNmxWcHA1L1RtbFg4bFRYNzhUYWNlY2NZbHVLRmduVnhnT1dLV2tja2lB?=
 =?utf-8?B?MVEwaTdmV0NTcHFvYXgzbnIrSE5TRW5tbVBSVU5RVC9DaVgzSnJYMFFkeStl?=
 =?utf-8?B?NnFSY2ppMDNwZmd1YktPcHFpaFpjN1hvVStKaTZuMlA4M0xuZnJrRVdKUDl2?=
 =?utf-8?B?bGovVEY3b2VNRlN6cTNNc2VOWDFleTc3VkxXd1hMQmRGS2k4dUViRFdzZUNE?=
 =?utf-8?B?bHo3WS96VWZVLzlPRzhacExQZnRiaHRnYjdBNjY0RkFiM2VpSzhzWnBnUi80?=
 =?utf-8?B?R3hTSVNEWXpUN0dLU3JFZEtJMmxNNzRUbUJlRHNiVk5PY0R6WlVwcjRDOVZM?=
 =?utf-8?B?VS9neTMrYm9QNUpPQVpjcE4yRzBPbHdqWVk1SkxFajBnTmdSYnVzeHNFa2VN?=
 =?utf-8?B?UGh1bjlLT3BqUTF2RmxJcmJXbmh6akp6enNyNXZPaU9LeUdTcmQ2ODJtMUdU?=
 =?utf-8?B?SndLYmNYYkk3WEV1bUd6bW9DQWxMQjRmb3NZQ2tVU2ErcklYeHpZYVpBMXV1?=
 =?utf-8?B?RVZxam9aNGdNMmd2T2tSSlI3bngvQTRSVXk2TGs0MlBrUXlaWVg2RzYvL3Fx?=
 =?utf-8?B?WVJYRzNTN2EvOG14TEVsVm1XWlM1OVErTDJBVitOUmc1T3Q4KzFya2lCN1o2?=
 =?utf-8?B?QWtpSmd0dWRDeHJBRS9qcTZ0QzNEK1A3UEpZL0t1aC9tWnVkYTJJM01MU28w?=
 =?utf-8?B?bU1uNC9BOVVvUVl5YUFjcGg0NTNCRkNGTGpFckFTNmcxZXg2RWZvN3liQUxw?=
 =?utf-8?B?ZzBHV1BWeENGYWxlRjhrYVlRaWthdldtaEF1K20xYWhMdnIweENLNWJHeFJI?=
 =?utf-8?B?MFZGTXlHQllneU5wemYvT0NuYXpXNWErT0RDUGFadEM3cGtMbzRoMmtqN0Fo?=
 =?utf-8?B?WjU2MFllcmRuWHcxQkcxWHNqay9nVjFxUW40S3Fjb1pyc0xMM3FUd0NjQitn?=
 =?utf-8?B?NHlOQWVVMXkrUHRvQVVITHZySCt5MUY5MnNpc3BOOXVFenNVbzdLaklEKytm?=
 =?utf-8?B?UTd4RnkyajFJT1NOMlhqU3dtUmNaNmJVbXozTC9SRXM0dWFGaW44NjZyaDVa?=
 =?utf-8?B?M0lsS1JmdndJbWo1eWVKQy9DZUVTUC8xUFdGVWpvY05rOUVIWi80Z1BWb0J6?=
 =?utf-8?B?MGZsM2RFL0xtU1I2eHR1L3QzYmdTV0lkQi9PMGZ3NFRHK2xiRk1hVFJ1S0dp?=
 =?utf-8?B?NVRkeFpaY2VnbTdDa2cwYUkva25wVElBSjV2UnNsd2tIczk3SjF1T0NkYVF3?=
 =?utf-8?B?QzRuMHRoaVpuM3N2VTdyMUtvTnJnRFg5M2tZQ3I4Y1ZjZUpTb2FFU0hMdVVD?=
 =?utf-8?B?YUltekhvSk1vYmF3NXBmTGlyVWV3d0o5UTVjZ29OMkYyZWJiV3AvVkxvMmV2?=
 =?utf-8?B?SzBlYk5HV2F4ejFlTTQxdzBUckE1R0R2ZDI0NUpCTUtxOGVCcFdoMlNjbDRq?=
 =?utf-8?B?aThYZUQrSkRmVEZBajhYYWhLZHl0MEMrMVZNTmVlVlRBSERYbmFMYk1vZXJx?=
 =?utf-8?B?blJmTEFWNE9IUktBZVBMOC9ENnd3bkIwNmpETkRla3VXL3FzZ0VOTmZFdzJJ?=
 =?utf-8?B?ZFdxZHRmbzhjS0NEcXlubTdTajV5aktHQnh5SHJLMTZqVmFJdW8vdThPTldw?=
 =?utf-8?B?cnN3WTlqVytjMittR2pMM2lJc3lSU1RVa01veHRVSTZQZmwyMWMwUXNtRzVh?=
 =?utf-8?B?QTZWQVVwWXN3cjJJajZ6cG1yL3JwUCtxYTQ0endqbW1BNnVNK2MzWEozTG15?=
 =?utf-8?B?UkpnOEVYMjU2S3pCdDhLdXVTRllEZksxOU5GVWJvZVp1VWcrdUVCR3pDQWhY?=
 =?utf-8?B?bXRnYVZaTU5LV2s0OFJ3eDM5VEZaa3p2MVdPV0J2aHlmcTM1Q1dSbElMMlNV?=
 =?utf-8?B?ZEh6cnd4VUZjVmFTOTVXYTFsNWMvZ2FsWUpERTlnUTZGWElwaWRMcjJsY2xT?=
 =?utf-8?B?MXFEZFV2by95WWdMUkJ1bkl0K3BRbkJjeUpZMzdJdWpqNXBaQ2tSSnI0VVp2?=
 =?utf-8?B?b250elpEcmYxRXVmOVpMeTcyWEpNc2dXNC9ZLzFRQ1h4akM3ditsYkFJbGg2?=
 =?utf-8?B?TmhmRTlnNmFJbDVQVFVJUXJmZStBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 458c0c0d-8db9-4547-8d41-08dbb8569b93
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2023 14:50:32.1673
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ansx3icetjf/XHxuTiEoCmoKj3D/ssT60ajp19jQG3rG8xJeM5TsdkKVaJqb1kbLM6KX9MzIwKJLpuFjfjI97oZj4Bn0abrcKi6UP3jcR6hXfA55gNUyspjZvtbZMRMv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9549
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 18 Sep 2023 14:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61034

Hi Logan,

On 9/18/23 16:43, Logan Grosz via lists.yoctoproject.org wrote:
> You don't often get email from logan.grosz=b9c.com@lists.yoctoproject.org. Learn why this is important<https://aka.ms/LearnAboutSenderIdentification>
> Hi, all
> 
> I have two distros in the same meta layer, "A" and "B," and a recipe which installs a configuration file existing in a layer elsewhere. "A" and "B" should provide different configuration files, overriding the original configuration. It seems less than ideal to create a bbappend in this scenario as that would require the bbappend to know about the various distros and even handle the case where neither distro is chosen, some other "C" distro may be built for. My goal is a distro-centric configuration rather than a recipe/package-centric one. How can I do this? Does this align with the framework, or should I be looking into a different solution for this problem?
> 

The distro name is already part of FILESOVERRIDES so you can just add 
your configuration file in a directory named after your distro. e.g. 
provided your distro is called logan-distro, the following makes it 
possible to override the configuration file from another layer:

```
# cat recipes-foo/bar/bar-1.0.0/logan-distro/file.conf
meh
# cat recipes-foo/bar/bar_1.0.0.bbappend
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-${PV}:"
```

no need to modify anything else if the file.conf file is added via 
SRC_URI mechanism, otherwise you'll need to add a bit more to the 
bbappend (or use patches instead), probably via a do_configure:prepend 
or even do_patch:append (I think the file fetcher also allows to install 
directly in the proper directory via subdir= parameter?).

Cheers,
Quentin

