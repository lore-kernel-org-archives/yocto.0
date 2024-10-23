Return-Path: <quentin.schulz@cherry.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E833CF5394
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 14:26:32 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.57])
 by mx.groups.io with SMTP id smtpd.web10.10298.1729693583193344720
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 07:26:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherry.de header.s=selector1 header.b=YyEGPwqm;
 spf=pass (domain: cherry.de, ip: 40.107.249.57, mailfrom: quentin.schulz@cherry.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WFJwhDd6PEDrZH+kB4c/sVw91rjZbGGQpJJUaMepXHFJ/ASLWvlUiBsKF0v8vmfDux2SvPU+zERtpnBMpwnUUpp01Ot9smb1ARJPLDy9ocb5yT+P99hugXJi1VHOsz/f899E1tE4o1iV7yhd8W5JdP1sdlFAnkCRT2ABxTe/3IkvtudYFbphMzPai408jMLr4bHkWef97BY3p1EWn3lKgsWN7/xvW08zNTgoHdkpp20B2wtbpDm18Mj1OXfj34TtsqVnHXnobXxWqvnGvtA0JLKVUP8LG5pROSiynW3CC2F22tH2uhRhkM/y8XHOcJa9KQFAczhVPoaqRGYMhKFcOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5W7AfUZ0hKXktdGsyVDDYW0gEVIjasw86UweHyMrq8=;
 b=GNTzgdguqTUoRf7gdPi4B0kYShqeFzDJcVGPMekIPkQj3rkuGKVVfZv9jULgod6Y4brciVk88y6OB3Pb1aJq/Go1NDabx8shpL8yXkrkLi7DCwyv7yHt/dri+njA3GaBBmLLHBjsEBRgFityd0U6I/k66fan/GNCkERDer9S7InkOpzj/aJwwjtr4ELAqbsqsVxcULIMby/SEAOSSMixcjRmePuBQgceFyamng0PINmziNvvwmCrV1//HusMH6Ejjg6IykQiWcrwahakFTSoFLjGv8VVvWd2H5rp+3Hcwa3BMtoGZfYpTbSP+zNMvhuNSoMyvnFUoY0IO9oCNYgCQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r5W7AfUZ0hKXktdGsyVDDYW0gEVIjasw86UweHyMrq8=;
 b=YyEGPwqmQNq0cRB0kICGLLJB3pNbhbLQXXRZ+KYHI4Z5T6NJ295Lq8zGivAtNBLSarNLRVcBKMMzrpljQoMh+FmCbzq3m5avbme9z7HQurcc+zpgJnGPcHIAzgSw6UATbMJyB8cS4Qutob91/OB5uU5w5QGS3APk2hzxzaj0g04=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AM9PR04MB8889.eurprd04.prod.outlook.com (2603:10a6:20b:408::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Wed, 23 Oct
 2024 14:26:19 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%7]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 14:26:19 +0000
Message-ID: <3dcc48fa-48fc-4ec8-b96a-eb9ddc33447b@cherry.de>
Date: Wed, 23 Oct 2024 16:26:18 +0200
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@cherry.de>
Subject: Multi-layer GitLab CI/CD (multi-project pipelines and merge request
 CI)
Cc: ticotimo@gmail.com, Trevor Gamblin <tgamblin@baylibre.com>,
 pidge@baylibre.com
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR5P281CA0048.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:f0::16) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AM9PR04MB8889:EE_
X-MS-Office365-Filtering-Correlation-Id: 84d11a30-97b5-4001-7de6-08dcf36ea967
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?emZ5VlEvRUFzcnNoQVRCUjdFNVJYcnRSWTMzcFVoZEllV05CWUxiOXVLeG5G?=
 =?utf-8?B?RzJ1d3Q5YWRzeDdjR2F1aXNQUGxGWThzQ2V3S21yVlduTjdXZVJjU3A3WVRJ?=
 =?utf-8?B?RGNLSmg2dWFJazV0SmlXeXM5ajRBUngweXo2a0pzREJ6MVJVYlk3S2pURlBh?=
 =?utf-8?B?eXRIc09vcmNnYm4xbEZEN0FRaDJzdklPdDBIZ0tLR3hXWnhlc09VQytURTdR?=
 =?utf-8?B?THVRUXcxU1cwNGZtYnBQVHRnSnZLUnI1WGpyR1JiWENzTkRJL1pvQjB3K0tu?=
 =?utf-8?B?bG5LY0JIelNvZ2ZndDJ1cWpWSDlEZUVMY0xSK2xQc3ovQ2xTNkFCay8yVHpM?=
 =?utf-8?B?RDUvbytQNXFvVlJzMXg5Nld2TTlkZyt5RVZGWXVsOEdTUWFiMkVtQlBUMFRG?=
 =?utf-8?B?N0oyRlhZcVh6TTZxblNWaVBkdTBzY1o5TXlsOFBRYUVwb3lCSnpWcWNzRWlW?=
 =?utf-8?B?QWMwZ0tIVCsxQ05VUnNwTDhOVTJ2ODY2emlnWlZuTWVZNGU3NjlESGtQOXVD?=
 =?utf-8?B?eTdWN1pMaGI2dE94YnpIRTg3Y1NMQmJOY2RhWGg3Z1VsQ2RpdXJYMkx3L2tC?=
 =?utf-8?B?VVdhOU91cGU0b0JtWWNHWjVOdG9XRURILzBXdm92YVJkYUZNNkZJYzE0SXNt?=
 =?utf-8?B?MUpGa0wvRTZLOXl1cm9pZkJmdlNrb3F0MThGYnp3dFkxY3RyemJNekFEcEtr?=
 =?utf-8?B?YW1RWXpVeVhSOFplNzlVYW9yc2ZhOUF1U3JRZ0ljdnhMYlpFSzBFbGtHT1dN?=
 =?utf-8?B?cm1uTTRZK1lyUWZOOUVTazJXbWh0OXBRemhpVmkzQzRxWitSNVRMbjQraUpT?=
 =?utf-8?B?NTFLOVlsdW1VTCsrNzZpT2g1VzlUcXpqTE05Z0swT09NMFBpQ2w1d05Oczl3?=
 =?utf-8?B?WHBxa2ZvSEF5K0FmT0txbmhlUC9tZ0gyV1MwVkk3ZUZpeGpISnBsTVdyL05w?=
 =?utf-8?B?VVJVLzJaNGdTT3FVeHlWMjA0dWxLT3k0b0p2ZU5XOTFuOVM4QmwxM2V1Ym8r?=
 =?utf-8?B?QlgrUEZxQzBKOGxuWFRzZzFzMDcyeHFaamlaR2FsWWNTN0JVNVZNUEQyMjZy?=
 =?utf-8?B?NjNKT2YzWGxnWWpmUHhXS1RHU0hxMGI0WWY1bzE3ekdETTZMZlVCUFc2Skg4?=
 =?utf-8?B?K1BQWUExR2tWWVR3QlNueVVNZ0UwK3hnS1JkTGV1bkxHQUtEZVZmRlVGdXV5?=
 =?utf-8?B?YWRCdWFxWkgyaUMvT0ZoSERzemlyQTBtaU1OVDBjRC9uQjZLTjMzKzJ1cVJx?=
 =?utf-8?B?SGwyUS9JRU1VNU9hNFhmQTMwcG5XUjNnejlWb2J1bEdCdDZmMlc3TVpWS1BH?=
 =?utf-8?B?TzRpNS90Sm41Q0xhNXNqU2xjeWhGaDkzYnd1VjI3QlhUMjM2MUxsYmx3VEtk?=
 =?utf-8?B?bGRGYlFweUJnME1TU0FCOERVd1QwMEg0ckNlanpIUXBjamZPeHFZOTNWNjNh?=
 =?utf-8?B?MEYvVDRFaEplQlhMNVlxbGwyQ3k5djZoTWp1S3hHSmdteUtzZXljZytYSjI1?=
 =?utf-8?B?Z3JRcEY5VmNrT2lZaHlvalFZZEh3T3VoZUxzaHdwUWRZWFI0eklMejNDVXVa?=
 =?utf-8?B?MjJ4a2liVFRHVGpka0RWSWdaMG9xVEJwdmRFeUZtaU1WcmV0NTM3RXo0VFNR?=
 =?utf-8?B?WHdtRmpDNUxGb21WaW42T3hxTzVKYmdoemVnRVFvL2h1SDhBY3ViMlloTFJy?=
 =?utf-8?Q?TxgCA9cCGAhkuuplDX+j?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?aG83YkhLalRzSWJ6ZEl4OXQ1ZFRETFVQa2RYOFlkZHVEbTd2SVhvWkdCaVFY?=
 =?utf-8?B?cGFGbWJMa0VDbUo2S3RKNjNORE43aUpYYmp2UHB1RjlrTldkU1FyWURkSFA1?=
 =?utf-8?B?djh5SmJQcVpPN1UyMzlHeEMrVTVKVnd5ZE5ZalpnWW4xam1abUI1Kzhia1Aw?=
 =?utf-8?B?OUd0M0g1MEhvMkxpeDNpb29KbEJnOVg2S0ZPVTNLSXNjUDg5TU9aUTJnWUhF?=
 =?utf-8?B?MU5BWGM3V2JuVlJrbllTTzNJMFlDTmVvN2owNkl3cU1CSUVvdDBqWUhvUmZE?=
 =?utf-8?B?Z2RwY2Z1YlBnZjl1OGcxeGhsMnVJTnVkTGRIbFVWZllmK0FydW9ibEhMN05J?=
 =?utf-8?B?STBhWVJGeTA0ZUl6d0RobG9QcUZLbnVncVZIdW01S2R3b25BclcrQlM2RlFN?=
 =?utf-8?B?TEQ2Y0FOdm1WQW5tSWxSTmVYdEsyMmRXeWlEQU1SN0FCMXdWVk50T1A3bUV5?=
 =?utf-8?B?ZUVpdWxRT0lJNkFEMGR4bWplSmozMTIrQis0SFd0cjIzVUtIVUlPR3NRYlpt?=
 =?utf-8?B?Q3ZPMzFUYVVyOHV4QXQ4RnY0RGlSOCsxKzZ4bTJKVURVUUxkV3gwZUIvNVNq?=
 =?utf-8?B?c3owSEZDMTJnejJYQ1VWUXVqV1EyZlIrV2d4YzBFMkNhZEZIbXFyVDU3QWJH?=
 =?utf-8?B?KzV1U3pmM0IvUGIramlpUTZCeDFSK2RDOG9BVHJmVTJyV0l0MTJJM0JVV3g1?=
 =?utf-8?B?TXdma1Nhc21hNGRDYjNvNVNhVWcxUmlZZ2FqUmZWUVpCM0tVc3grTUYzUkpz?=
 =?utf-8?B?V3E0ZnJaVTRYMUxpU1pjTW5rdG1UY1RsZUJkSWt4N2VWbjRuc0txTjRPeUQ3?=
 =?utf-8?B?Q0xyY1Q0Zis4dUNtcHlaaEJmM1NOcmlEUlkwZGlvZGNsT2pLSm1KZmlOY3ZJ?=
 =?utf-8?B?Nm9oYnRBMy9EL1VkVXNxTHhwb1lRY0xNZEJCcEdHYlFnd0ExZXFPR2VtT2E2?=
 =?utf-8?B?OGNsekt6NGQ0ZDMwN2MxTDJNOWI0bVQ4TlZmTjd3NTIwK0pxc25BZ1d3Mms5?=
 =?utf-8?B?Q1Q5ZVVpZk92SE9vN1dzeEx4eXFOU0J4YmdabTFQMU91Z2tjYUdjZlJLcjFN?=
 =?utf-8?B?cjNNelBjUGxEdXlmUmltMGYyMm1rRGpKdnZqZCtyNi9xSWR0NEpNZmFoU3Nn?=
 =?utf-8?B?ZllpL01jWlFFMnpMNGZseU8vVjc1RWpLdi9ta1lzakoyOEV6bXJEdCtqeHB5?=
 =?utf-8?B?YjFYYWtkanA1bUQ0M25oeDh6bFkrNjNaam15SHVwNDZwOE84QjNyUTN2SjFO?=
 =?utf-8?B?UDFYY2l6QUZPdDNvR05tcEY2UGoweWRkSkxsUjlNV2tRVDBaNDlVK25SaW82?=
 =?utf-8?B?VFFJOFdyQU9mVGtZbGh1L083UFc4NjhQKzRweFRhM05vekVjZWgrQnEwd3Vu?=
 =?utf-8?B?RXFuRnRISk9Pc0wvem1rdkhmVkNMWjF0bUJiNjVUUG9rN2ZVOVB0Q0tJeS9k?=
 =?utf-8?B?ZTIyM0pMMkNzVlppVDAvdGhiUTNOM2ZjOHlzdlRGRklxSXQrN2l3Skg4d3Ft?=
 =?utf-8?B?TkkyMmdKbm5YRnBJdFhRRzJaTWhOTTdVRHdldUkxY003R2ZZbmtPSEZ3RGQ2?=
 =?utf-8?B?SkI2K2FtWXJBNnB0cFlrNDkrWnl0ZFRUUHhCSmRZdDdCR3Zha1Z2cFBybGhD?=
 =?utf-8?B?azdwR0RWQXAzRkxYYi9IcVlEN3Jna0lLL3ArRnVWRE81WUhhbWJzd3A2blYx?=
 =?utf-8?B?c3hsR1dSWU9XMTRoTUtJV0hsQ1VDQ3R5WHh5ZmoyNFFXVjY4NnFRZjhyMVJO?=
 =?utf-8?B?NDJvNWo3QVF6M0NyN1BvSGh5QmQxRzg3RmRwcnoyN1F6c0NWZXhQdzdwc1pt?=
 =?utf-8?B?YzFmcWNjbE1oaDMyTmFzR1Y1T1hOV3grMkJNcFhrZU41NC9tRzhhUjdJdExq?=
 =?utf-8?B?NmVXU21CcWNIdVJvWTNFeDZqNEFubWg4aFNNNVIydG1KSGJROXNVSHBVS1Ur?=
 =?utf-8?B?SEtuWnNuUFVYc1Jsem9DOFJNbUVVcUs1ZndNM0R5bzhwaXB2M1EvelJuMjVx?=
 =?utf-8?B?dEFhR0laZGQvRGE1ZnhYNE5TNFAzR1pkVWhVVHo0UjQ4ekpRSDgyRHE3TnZY?=
 =?utf-8?B?Nm1aWEZXNXZMRnFmdlA4YWpUcmdrVWN6cnlKTStXTXJkNWJvb1J1eTZ2WHF5?=
 =?utf-8?B?QzQwL0piRFJHa25yd3pNS0x5eWVDUDIwZzRIME40UnJLRUdRWCtEQnplK3la?=
 =?utf-8?Q?DLPQGwx2QJOaAm8+PIfgk2s=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 84d11a30-97b5-4001-7de6-08dcf36ea967
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:26:19.5001
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Sv/Z1yL2eUDuNOgKWCqG/DBNE4qhOIns/Ma2KGkN30XMJy8vXdxxJACbrDJODOc93GJ2lMh7g4A+h6iXKgGvHlxJzyganOKFL9GpPKdj404=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8889
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 14:26:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64095

Hi all,

I have two git repos for multiple layers, let's say layerA, layerB and 
layerC. I cannot merge them because one repo is "closed-source" while 
the other is public. Our testing scripts in a testing/demo image are in 
layerC, so to validate that changes made to layerA actually are fine, 
one needs to build layerC with the content of unmerged layerA changes 
(merge requests) before merging the changes. Manually doing this is 
possible but is error-prone and not automated.

So, I took some time to look at how to do this in GitLab and I am 
sharing here how I managed to do it. The goal is to see if I missed 
something, if there's an easier way to deal with this but mainly, maybe 
someone will have interest in that and can reuse it. This needs maybe 
some cleanup so it isn't available just yet in our public repo, I'm 
basically waiting for feedback on it before pushing :)

Mapping of layerX used above to actual names:
- layerA is meta-bsp in meta-cherry-es (public)
- layerB is meta-extended in meta-cherry-es (public)
- layerC is meta-theobroma-systems-demo (private)

The important parts in .gitlab-ci.yml in meta-cherry-es:
"""
[snip]

stages:
   - build
   - build-demo

[snip]

tiger-extended:
    [snip; just a job in build stage]

build-demo:
   stage: build-demo
   variables:
     # Required to make sure that checking that nothing newer/different
     # is now present in the parent merge request which triggered the
     # child pipeline (e.g. a push happened before the child pipeline
     # got triggered, the old child pipeline would use code from the
     # new state of the parent merge request).
     # Can be used to fail the child pipeline, or enforce a commit hash
     # if and only if the GitLab server is configured to keep old
     # commits of merge requests (which is not the default).
     PARENT_CI_COMMIT_SHA: $CI_COMMIT_SHA
     # Required to manually fetch parent code from child pipeline
     # without requiring permissions to access fork project from where
     # the merge request originates
     PARENT_CI_MERGE_REQUEST_REF_PATH: $CI_MERGE_REQUEST_REF_PATH
     # Required to generate CI_REPOSITORY_URL pointing to the parent
     # project but with a job token from child pipeline.
     PARENT_CI_PROJECT_PATH: $CI_PROJECT_PATH
     PARENT_CI_SERVER_URL: $CI_SERVER_URL
   trigger:
     # FIXME: note: should be configurable via a GitLab CI/CD project 
variable to avoid it being hardcoded?
     project: qschulz/meta-theobroma-systems-demo
     # Fail the parent pipeline if the child pipeline does
     # Will likely trigger a bunch of chicken and the egg problems
     strategy: depend
     # Make sure we're building the same release in dependent layer and
     # not the default branch
     branch: $CI_MERGE_REQUEST_TARGET_BRANCH_NAME
   rules:
     - if: $CI_PIPELINE_SOURCE == "merge_request_event"
"""

My kas-cherry-es.yml files which will be used by 
meta-theobroma-systems-demo's:

meta-cherry-es/meta-bsp/kas-cherry-es.yml
"""
---
header:
   version: 14
build_system: openembedded
machine: puma-haikou
distro: poky
local_conf_header:
   debug: |
     EXTRA_IMAGE_FEATURES = "debug-tweaks"
   no-ptest: |
     DISTRO_FEATURES:remove = "ptest"
repos:
   poky:
     url: "https://git.yoctoproject.org/poky"
     # yocto-5.0.2 tag
     commit: f7def85be9f99dcb4ba488bead201f670304379b
     branch: scarthgap
     layers:
       meta:
       meta-poky:
       meta-yocto-bsp:
   meta-arm:
     url: "https://git.yoctoproject.org/meta-arm"
     # yocto-5.0 tag
     commit: 8aa8a1f17f5b64bc691544f989f04fc83df98adb
     branch: scarthgap
     layers:
       meta-arm-toolchain:
       meta-arm:
   meta-rockchip:
     url: "https://git.yoctoproject.org/meta-rockchip"
     commit: bf9ade59abc15a5f6fb5450265c214450f35857f
     branch: scarthgap
   meta-openembedded:
     url: "https://git.openembedded.org/meta-openembedded"
     commit: 6de0ab744341ad61b0661aa28d78dc6767ce0786
     branch: scarthgap
     layers:
       meta-oe:
       meta-python:
   meta-cherry-es:
     layers:
       meta-bsp:
"""

meta-cherry-es/meta-extended/kas-cherry-es.yml
"""
---
header:
   version: 14
   includes:
     - repo: meta-cherry-es
       file: meta-bsp/kas-cherry-es.yml
target:
   - cherry-es-extended-image
repos:
   meta-cherry-es:
     layers:
       meta-extended:
   meta-openembedded:
     layers:
       meta-oe:
       meta-networking:
"""

The important parts in .gitlab-ci.yml in meta-theobroma-systems-demo:

"""
---
workflow:
   rules:
     # Allow multi-project pipeline trigger, c.f.
     # 
https://docs.gitlab.com/ee/ci/pipelines/downstream_pipelines.html#multi-project-pipelines
     # so that a merge request in meta-cherry-es can trigger a pipeline
     # in meta-theobroma-systems-demo
     - if: $CI_PIPELINE_SOURCE == "pipeline"

[snip]

.build:
   tags:
     - docker
   image: ghcr.io/siemens/kas/kas:4.3.2
   stage: build
   script:
     - |
       if [ "$CI_PIPELINE_SOURCE" = "pipeline" ]; then
         # FIXME: not generic (though not an issue for us :) )
         ADD_KAS_FILE="kas-mr-meta-cherry-es.yml"
         parent_dir=$(basename "$PARENT_CI_PROJECT_PATH")
         mkdir -p "$parent_dir"
         cd "$parent_dir"
         git init .
         # Horrendous multi-line commands to make yamllint happy with 
80-character-long lines
         repository="$(echo "$PARENT_CI_SERVER_URL" | \
           sed "s^\(http.*://\)\(.*\)^\1gitlab-ci-token:$CI_JOB_TOKEN@\2^")"
         repository="$repository/$PARENT_CI_PROJECT_PATH"
         ref="$PARENT_CI_MERGE_REQUEST_REF_PATH"
         # FIXME: Note: only "required" because our internal gitlab 
server is using a self-signed certificate
         git -c http.sslVerify=false fetch "$repository" "$ref" || exit 1
         # Make sure we're testing what we're supposed to test
         test "$PARENT_CI_COMMIT_SHA" = "$(git rev-parse FETCH_HEAD)" || 
exit 1
         git checkout FETCH_HEAD || exit 1
         cd ..
       else
         # FIXME: not generic (though not an issue for us :) )
         ADD_KAS_FILE="kas-commit-meta-cherry-es.yml"
       fi
       export ADD_KAS_FILE
     - KAS_MACHINE="$CI_JOB_NAME" kas build 
"kas-cherry-es.yml:$ADD_KAS_FILE"

   artifacts:
     paths:
       - build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-*.wic
       - build/tmp/deploy/images/$CI_JOB_NAME/*.rootfs-*.wic.bmap
       - build/tmp/deploy/images/$CI_JOB_NAME/fitImage*$CI_JOB_NAME-*.bin
       - build/tmp/deploy/images/$CI_JOB_NAME/idbloader.img-$CI_JOB_NAME-*
       - build/tmp/deploy/images/$CI_JOB_NAME/u-boot-$CI_JOB_NAME-*.itb
     exclude:
       - build/tmp/deploy/images/$CI_JOB_NAME/fitImage*linux*.bin
   timeout: 10h

tiger-haikou:
   extends: .build
"""

My kas-*.yml files which will be used by the kas build command:

kas-cherry-es.yml
"""
---
header:
   version: 14
   includes:
     - repo: meta-cherry-es
       file: meta-extended/kas-cherry-es.yml
target:
   - cherry-es-demo-image
repos:
   meta-openembedded:
     layers:
       meta-oe:
       meta-networking:
   meta-theobroma-systems-demo:
"""

kas-commit-meta-cherry-es.yml
"""
---
header:
   version: 14
repos:
   meta-cherry-es:
     url: https://git.embedded.cherry.de/yocto-layers/meta-cherry-es.git
     commit: 71a6eee9c4cfe1a3c922b9a3c36acc6e0766a5d8
     branch: scarthgap
"""

kas-mr-meta-cherry-es.yml
"""
---
header:
   version: 14
repos:
   meta-cherry-es:
     path: meta-cherry-es
"""

Things could be easier if kas allowed refs/merge-requests/X/head as 
branch and using environment variables, in which case I could manage 
with only one kas configuration file and avoid this horrendous series of 
commands to manually fetch the source code. Maybe I missed something here?

This also is not really capable of handling more than one git repo you 
depend one. Say you have a layerF which layerC depends on, this wouldn't 
be able to know which changes to test, layerF or layerA, but there's 
probably some smart way to handle that in a generic way. I had this 
issue in the past because i used to have three git repos, one for the 
BSP layer, one for the extended layer (basically demo images with open 
source code; or at least public) and one for the demo layer (private). 
This was an absolute nightmare, so I merged the BSP layer and extended 
layer into a single repo when upgrading to scarthgap, and I now feel 
better and don't have the need to look into 2-depth multi-project 
pipeline CI :).

Additional note, this was tested on GitLab 17.4 and kas-container 4.3.2 
so YMMV if you have different versions.

Any thoughts?

@cc Tim, Trevor and Pidge solely based on
https://libera.irclog.whitequark.org/yocto/2024-03-04#35933698;
https://libera.irclog.whitequark.org/yocto/2024-03-04#35934046;

(has 8 months really already passed since then? no it couldn't have!)

Cheers,
Quentin

