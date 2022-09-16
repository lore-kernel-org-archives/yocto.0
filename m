Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E42AECAAD8
	for <webhook@archiver.kernel.org>; Fri, 16 Sep 2022 08:16:08 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.89])
 by mx.groups.io with SMTP id smtpd.web09.3691.1663316165950007019
 for <yocto@lists.yoctoproject.org>;
 Fri, 16 Sep 2022 01:16:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=SUWV/sGS;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.8.89,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F/NNFSIHOZgrr/Cw8WmEwCzbzR7SIeul3rthXNV8e57HEx9KUDxHl/oeEUIsZvW6Seie9dY63mxxXQUwyMX+tPFea8vL11sm3XpWUxL09KMZjbA65L+mhhGpTJQ17sVlULaEL0YD8oLuUyJ9QmROCU1r6tHjoPWt9xI7bL1a1WBlXv4Cz2bSOgpjXSa4Xb2XzJ+zWvrTl8mZRKyqtO8UHz2HgUyUjTuvYcXN4wrUTIoy3cgSZdiHg6R31bGdal0vq8xaXYV3UA/vtm08gPc7ZjXh5sU+97Nf3ZYV2AD2TjfMY/v3XTXxi6iuZ3OMgAnblhM4RYVkOiu06c6odDiEpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJU2NBJY9WByZd4DgQeOJ2/tD83vQSr5zyuQDGflkWc=;
 b=SBBz746VXNEGvTwXM47Hay2MBia+EL69GPeopvkDHtQPZ1nDyBz5Mqy9kqDDutWdTz00+aVi9xfbCEzD9pt6LyYpoDRZmtsj91tOafz6N6HyGcdEVyIE2kKFi/XO0xaZGdTSsi953vritWVrrwtReralMRPZTgedZgx5VFrzCAaGD9SL2KzV8pBTgzO4GWkKrNHQCy5Z1dI+5x+XKKwtwSlsy7cI6TSFhdioZdVKV6uJoOkSl3XGmnZdvicDJIngpS2lKAmzd55OYU9GrLR+qoAgK8rW3DwkotYu59l4FmEWqAvPFbG5YCm14cS4rrFsms7FtaOS84vpfdXhzT4oYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bJU2NBJY9WByZd4DgQeOJ2/tD83vQSr5zyuQDGflkWc=;
 b=SUWV/sGSiFFCheIslEJSflXdkGbgKNcJ95nLV5DnbVfrE8HwXNbC6SPX1xfnpMPyiPK5AaUEzD9yZQ+1j4zrdhOxGj6p7mJZHS1VjT9ohZJLzeI/8sl22HE4UeEHjg22shU+Z4vd55qKw4eBssT9VKrM7k6i6kPr9rfL+hz8x1k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8175.eurprd04.prod.outlook.com (2603:10a6:102:1bc::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.14; Fri, 16 Sep
 2022 08:16:01 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 08:16:01 +0000
Message-ID: <e63d2044-90b1-1643-44e6-d0cf26400a09@theobroma-systems.com>
Date: Fri, 16 Sep 2022 10:16:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [yocto] [meta-oe][PATCH] externalsrc:git submodule--helper list
 unsupported
Content-Language: en-US
To: jebr@google.com, yocto@lists.yoctoproject.org
Cc: clabrado@google.com, edtanous@google.com, emilyshaffer@google.com
References: <20220915184338.2868657-1-jebr@google.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220915184338.2868657-1-jebr@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR06CA0114.eurprd06.prod.outlook.com
 (2603:10a6:20b:465::12) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8175:EE_
X-MS-Office365-Filtering-Correlation-Id: 26990b53-6f73-447b-0183-08da97bbb167
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DTQ9cCuYx3UE1q4LcjBa6OpJetN4r8NCk2L/xiU+XX/fi79WIgwbbE5e+YkS/QO/ge5Su97PAmA/gkR+WtMnPxDZzc4+QFcEfYsN9FmZpMXljOQhVzECqVjvK7Vfr1i2+8zaYHlumpv+jNxXUxDvJrJwUgN3uYD23rG5LhwgrupG6Kc3bFVnSQtXnaWu67Yc/5GYqIxl4sRwYlpMf9Yh5UdOGe9tzkJBbVk7U2sOvqnyQpFGo3Zxr67WfPNMJaMeakPuir4inZopVYHD7vDVSzh+8IXTCn+6FCWpssgdC4RVXdaVv/oVdGGcbPS/G9vy/28rIMrto/SzvWkeGHM7BKqKVDb61QoKYOaG177VQVZXNyYnb4fV9exGLa6jDx2Ltmzk3XmmUkLCG1+48vEe7e3dve6Ex28zNM+NV2DHlJBfwZITh1y7NUT5e3J5RnD7q6EePUiMV96H2cgDTZNNcrAO8GR4m9m4VmbjJ4xCFwOYkuF9leIj3jhEkyMHsxkkR8RgHOu/DDlkY7l2Hk4tOFBeZq6iMgzepPuDoChq9H/Q9k11lGQ1D2Zb5IHFB4J2l8UuJe0u6mg/+Sj26sPcWpnPomnjWlzldLTgCx6meoxrVGrXJyBwM/rOJIOnA76eBCJihElBt6Vhnxxgy6RbcKvDdkXJTLyOkYd1QRwa3XUkrpkZZAXgZvl/GKNsYmiroHCrkqy69MHaf7PVQRcATZLC6tJZciTstkGq8s08QprOCf02/yCRZ67W/QQE+oVOHJEAsAqaaDGJgwPBaNdQ0Zs7zrthPokERniP7a7Amyh7Y6Te52Yzb9A4pWVNc+vV
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(376002)(346002)(39850400004)(366004)(396003)(451199015)(316002)(53546011)(6512007)(41300700001)(478600001)(6486002)(966005)(6506007)(36756003)(38100700002)(26005)(186003)(83380400001)(2616005)(86362001)(31696002)(31686004)(44832011)(8936002)(5660300002)(4326008)(66476007)(8676002)(2906002)(66946007)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bWZmR3pSOEFvSFVYMDNnTHA0OVM0TWlmczlwMTdDdjFpT1RXY0p4ZmRPWnVT?=
 =?utf-8?B?blVEYkRaSUdPQzZhRzlqTlhPK3pIVG1tL0cxNHFOWEhzc0Z2SGdVUmxQTlBv?=
 =?utf-8?B?NUEvNDEwOGtNb2RyMmV5ZXczeXBIcHExeDR0KzV3NzNDdTdjRDdaYldkWmw1?=
 =?utf-8?B?MWZLN1ZGakVabVFqUElYWkxJa1U4OGNUY1M2Ti85YVE0cGhQZWpGV2xTZ0tk?=
 =?utf-8?B?SWFZdWd1WERoZW4zd3NnSmpLbm1NV1lNMTR5Ym02UXhjNWM1LzhzdGY1SWdB?=
 =?utf-8?B?SUp6THpWZTJ3b05LZGJONzRrd09yNmJFNXJ0QVFyYTA2T0Y3TWQ4U0J2WXFZ?=
 =?utf-8?B?L1U2YWNIMHZnWVVNclJubXVaU0IzdWQrN2ZCTDIwR0N2N3lzOUVIck9IN1Rj?=
 =?utf-8?B?YzBBQUtQeThoNkxibjIzMW5qYU1rNS9TaldIMkZYc0dZdXY3UGc5MnBiZUc1?=
 =?utf-8?B?RC9NYWhZeU50S2Y4bEJSNkkyME9nOWMybDVTS0VLbjc4WlRZQlpxd1gzMWFk?=
 =?utf-8?B?VFFMQm1SZk8zMS80bXlWdW9GVW42MEwvbEsyaTVxR2V0bC8rcWhRZUU2MnhV?=
 =?utf-8?B?OUlWUUtsWllsZ0sxdk5LVGVoMzJaNTEwYVF0YStiaTNWRi9nRzNvUjIrSHRi?=
 =?utf-8?B?RXVXbkZscnh5Tk9CQjlXbmZreVRpRDNLOE8zZDF0d284ZC9iaXhSWGwyeTBE?=
 =?utf-8?B?cDlxNmxDSldDQncrVXBwYWNpRXRlVjZ1cHR3bCsrZENqNE84c3MvaGdiTFpJ?=
 =?utf-8?B?dFY1YUZZeXVQQkx3Wm4zNTNSM1pKc1ZDU213Tm1DNmhuQmM0dzJieHN3VFJ1?=
 =?utf-8?B?RDFsMUJpZ0VZckVpeGM4UUJheWxpUnFhUS9yNFdBcDc5RkxhTHl1MXBLTVJj?=
 =?utf-8?B?Q1FNUlp1U0RJY2JSNVBBT2I0SDd0U0I4V2hjMmk1ZklpM2t5VmhzdHlCODQz?=
 =?utf-8?B?d1hLeDJrZXFhUkU5MDZtOGJDQ2QxOTZpTUI1L211MEQ3bnN1MFhGVG5iYk5Y?=
 =?utf-8?B?cnhybS9ZVkdoYVRIUE5iY2J6emZhUHpIREVCbUlGYmdnTGx6ckVVZko0QjhQ?=
 =?utf-8?B?dHhja21ZZy9YZzJLM3JJSnAzZUFYdjdqN29WVDJ2T213bXRQQ3ZyUEp2dkFa?=
 =?utf-8?B?TVhpNXJleTVsVjlTZFVOVkV5Qm56aGxFLzkwU2s4MzN3S2F2LytJSnU5a0x4?=
 =?utf-8?B?NHNpdmRUQ0pvc2VPd1JQUDUraDQyeU1XUWJZSzhTSk94a1FHRHRPb0hGT3Qw?=
 =?utf-8?B?UXRnUWhENVgvaVBpUGpQWlpvdU52RHhDSHl4Z25BU0l0bDU1NXdrZEdDWnB2?=
 =?utf-8?B?TEZaOFlyaWEzRGpyYjZONU5oUXU5SVNuNVgvcmtsYm03UXFqOW4wTWx5L1Yw?=
 =?utf-8?B?UVkrZkpUdU5URFBKWVdRK2xQdlBQUHFQdlgwWFBPcUhoL3ZQVG5sRVltNU1L?=
 =?utf-8?B?NVRpVzVnd2F6SnAyYkxrVllhMHF5cEVUekZXL1JUOUUxbDFraTloSGVBT1lO?=
 =?utf-8?B?MytZcm9Bc0xlN2ZMdWdhN0pyOFoycG1XaVU4YXl3OTVUNkNuc1BtRVBjcWpX?=
 =?utf-8?B?RnpHZnZOWmNNcy9GeWp2cUZxcmg5d2VSQkU0QXpkalpmRTJQOFBYU09FdExT?=
 =?utf-8?B?dEtEeExJWVFhdlJ2ZUlxS1hMVXVjdTBnWk5KZy9tVVJZeTVCVEZnTHFXclhC?=
 =?utf-8?B?MldRc1FpS2JmNmgvV3ZQcllTcWhHQ3l6bEcrb0VqY2ZYL1ljSzhlK3RCeGFO?=
 =?utf-8?B?S0N3Y1plQlhCVEx2TVVlWGJEczlXTnBjK0tRWHZPZlp0Y2lRdTN4NUVXRnAv?=
 =?utf-8?B?clRMTDh4alZaUjdoQ2t6M2V0QVV4b1dYYmszZjFYSnh0RTZmbUdZYTMwSEE2?=
 =?utf-8?B?S2I4Vno5bm84Qm8vSUJMd0VCVDJkV0Q1L1FtbjFJdkkyWVFqNS9YdkFrVDNS?=
 =?utf-8?B?ZDNjOGhvai9xZU9ZZFlxaUZ4dHlHSENhUnpmWXVJYUI4b0FHR0FrTGg1b1px?=
 =?utf-8?B?ektKYUVZRlZ2Y2pGeE52d2pmZ0RCbnYyNjZhSlNBcG1BL3Rhdk5UVTVFVUZ3?=
 =?utf-8?B?MTIydzlpanlXTmZvZGFLYTdVWnBuTXFIa2p4cWJESk9QUXBvVXVFZWJXL2ZZ?=
 =?utf-8?B?VVluWVFJc3A0UUtGOE0yZHZGZVF0OFAvbmhvM3IvN2o1STNWQU9yS2EyaG45?=
 =?utf-8?Q?QwyovEcVGLGEkbPlXNQMPx4=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 26990b53-6f73-447b-0183-08da97bbb167
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 08:16:01.8436
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 f/og/NoYPZGd8a4SKXERwkXzB37WhUP6nGajC+oXLjQ9lKmoBdJt+1Uy5BIIKCuFdEPYPqFsUVZHX0BIq+HlIMqapcnjqzQ6lze1vI20RWbsJ1X1C3OKD5lbieDpGJ1n
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8175
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Sep 2022 08:16:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58053

Hi John,

On 9/15/22 20:43, John Broadbent via lists.yoctoproject.org wrote:
> From: John Edward Broadbent <jebr@google.com>
> 
> Git has removed support for "git submodule--helper list".
> https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_git_git_commit_31955475d1c283120d5d84247eb3fd55d9f5fdd9&d=DwIBaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=dPWGp0K5l_YXiJ9CQ0xgD9h8jzFwJf2ZGppZSv2ZZUvg_DVFfKt3g2SwAJdk6ATE&s=rTfHjnsYf5vusiYA_lI3L24FBLE9jU_hmbGFPELpuAg&e=
> 
> This change provides an alternate method for gathering the submodules
> information.
> 
> Tested:
> Build recipes with and without submodules
> 
> Signed-off-by: Carson Labrado <clabrado@google.com>
> Signed-off-by: John Edward Broadbent <jebr@google.com>
> ---
>   meta/classes-recipe/externalsrc.bbclass | 19 ++++++++++---------

meta layer is part of openembedded-core, so please re-send to the 
correct mailing list following the docs here 
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

>   1 file changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/meta/classes-recipe/externalsrc.bbclass b/meta/classes-recipe/externalsrc.bbclass
> index ce753fce76..06a9548a20 100644
> --- a/meta/classes-recipe/externalsrc.bbclass
> +++ b/meta/classes-recipe/externalsrc.bbclass
> @@ -230,15 +230,16 @@ def srctree_hash_files(d, srcdir=None):
>               env['GIT_INDEX_FILE'] = tmp_index.name
>               subprocess.check_output(['git', 'add', '-A', '.'], cwd=s_dir, env=env)
>               git_sha1 = subprocess.check_output(['git', 'write-tree'], cwd=s_dir, env=env).decode("utf-8")
> -            submodule_helper = subprocess.check_output(['git', 'submodule--helper', 'list'], cwd=s_dir, env=env).decode("utf-8")
> -            for line in submodule_helper.splitlines():
> -                module_dir = os.path.join(s_dir, line.rsplit(maxsplit=1)[1])
> -                if os.path.isdir(module_dir):
> -                    proc = subprocess.Popen(['git', 'add', '-A', '.'], cwd=module_dir, env=env, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
> -                    proc.communicate()
> -                    proc = subprocess.Popen(['git', 'write-tree'], cwd=module_dir, env=env, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
> -                    stdout, _ = proc.communicate()
> -                    git_sha1 += stdout.decode("utf-8")
> +            if os.path.exists(".gitmodules"):
> +                submodule_helper = subprocess.check_output(["git", "config", "--file", ".gitmodules", "--get-regexp", "path"], cwd=s_dir, env=env).decode("utf-8")
> +                for line in submodule_helper.splitlines():
> +                    module_dir = os.path.join(s_dir, line.rsplit(maxsplit=1)[1])
> +                    if os.path.isdir(module_dir):
> +                        proc = subprocess.Popen(['git', 'add', '-A', '.'], cwd=module_dir, env=env, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
> +                        proc.communicate()
> +                        proc = subprocess.Popen(['git', 'write-tree'], cwd=module_dir, env=env, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
> +                        stdout, _ = proc.communicate()
> +                        git_sha1 += stdout.decode("utf-8")

Are those git commands supported in 1.8.3.1 version of git? I'm asking 
because this is the minimal version of git we currently advertise as 
supported. If it is not, then we need to bump this requirement in the 
docs and check that all currently supported distributions have this new 
minimal version in their package feed or remove them from the list 
(which will also impact whether dunfell and kirkstone can receive this 
patch).

Cheers,
Quentin

