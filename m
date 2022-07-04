Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35129C43334
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 13:25:11 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
 (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.54])
 by mx.groups.io with SMTP id smtpd.web10.72166.1656941100830328055
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 06:25:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=doNzSp6G;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.13.54,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1E7bqdxYywhs0AkE/RuaDHOeMU/3F6PUJFBnqxXRpMny0Vb5fDx39+fj+syoUOH4MpykwfI7qIIYlZeH0h6ywunnXFSaKWhndSYICIr5KKdhcGH+BkwW6gpat9cU9bHjCOEZYBIMFoYU+odhBfg3lMF6d8BEazmeZXtS8AfgCDY5CSq2OaN94HBlk+vo8kmrJT11aKBFIKmtymIRad52y0xqnjEwANDq7Wo65k76VDVfqRC0uvAe4BxvW2cfsjEvLGjmwDdtXprj6nkAqJgb4CWE1eoyRqPFW1BQZ5rtnZCrvupwNsJN3GNpXWKcYW2TYHoXLRn27QPKTF5q/+LJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ZWCtcVaBJyoyjdMhOAnyM9axhwhSjTbPRfgVFRXOb8=;
 b=DUrSX8J9QpIu2wTnU1j+sLTTP28yIs+GWpkxTp7/AnAved+HSqyy2vFx206RhKn3ckMXdADKRLPZZk65qqRbx4GQKTBPNvdRt5qHf3nhg2ncaT8An4L8TWSX63s+/c7LNt9cFlZrYdX9+nuRMpCSwyKp+rxDtIS92oSnPB7ph91cchcDcx2RkFvV/KVfSB+aBXRHLlUL/WC9I38j0x+lA4sEFbFxpqw0Eff2HGHPIFDFqA4/hIytrRNb3E+QsbmAkVRv2Gq6d9gKaxBMzKLcgjV22tPCenR9ESXPyc+ij9v2P7a30GClJc2DuPBPZR/hblCTmwsZxUS7BeYo9T4lKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/ZWCtcVaBJyoyjdMhOAnyM9axhwhSjTbPRfgVFRXOb8=;
 b=doNzSp6GItsJ60XNX9EGaUuXYk4FtT0QLlOQrzhODaBfp6nPvTAWugDxnhFzYPeI1ueaN9gTmRRjDAVoDGHkPxXgbCO+JvFJsSe0aYGleSVsi0FbiXfRcTtVo34fBx9UT7VAx+gjS5/O/LRSFURe0/yc6l30lvduk236phrCTHY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AS8PR04MB8692.eurprd04.prod.outlook.com (2603:10a6:20b:42b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.20; Mon, 4 Jul
 2022 13:24:57 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f%7]) with mapi id 15.20.5395.017; Mon, 4 Jul 2022
 13:24:57 +0000
Message-ID: <4828a5c0-59c1-ef5e-385f-1b563d3577ee@theobroma-systems.com>
Date: Mon, 4 Jul 2022 15:24:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] run-docs-build: allow
 build warnings again
Content-Language: en-US
To: michael.opdenacker@bootlin.com, yocto@lists.yoctoproject.org
References: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220622153201.2734009-1-michael.opdenacker@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0068.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::13) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f67f6384-b793-4b37-e265-08da5dc09701
X-MS-TrafficTypeDiagnostic: AS8PR04MB8692:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wABFMOm1CkWRjtnGmmo4iLjWtZ92v8MVFAcsjMlzQxUajQZEsCFGp0ddouSsdSaJqCnnlD/CftooO4DgFQr1KJwx2AN0FBj84xRpjmvaoKX4hZ/ma9OiEKu8CPJZwW9+HApHDdn7/ZPHJVWpSngqK7ExGdEeE4dm0k+KbXP9NFwCHLRCO5TGfxXQahgc15uAKh3iIsElXjwjLX7PId1cgXaj2JuwUOaRLotvdIuHRQe7GCHAcS3aI344yaxVqAfBhzW1uG+Gyq6/Xw2/E9EWho0b7sFTwRe4TlVwTggtUMVE+TVPkj2E/rq93fC1qRfkXo0kRHbGwudSqKsY8i2TW3ab6i/TDwrSJzkQ37+v8BW+01TbSe139waj0kD9Bc7yO7AVAdy/PVZ4SdtSR2NQQrHJLafjq1r1+4O5xJ4VQ10iIox7JJP0RLrds3A6Bw66driyM2Q3WgWcK0WOJmGdGjJ6mDA+Mr5ohySYn+1CzzVqHjQRAPgz1rTmY4hBiFY3S91wbbmP759wvkjBg6lXNVNfDaHuNKhEDlwCb/WkiqqhDoZOkAmATqMdwEyMDGo12MqLqWFSM+IVKjjRlLz0gOdt/nJVYqkLTo4CfaEiDqTs+wmEcfCc3Sp4Sn0j36+HqL6ovs99QJEcfRdQhX0vJX1ve7dFlCHue13I3BkVO3/yW6bzZTRR25oxX2fYMTqwyofGDTtHV6XydkYtx4uBTqvtf79Fm8elUJ+mfQeEGRkIF/vZAxquwZD1gUiJUFQKB1yTnLgmCgfj5+s/8GrdC6LBth2eTMZ6nuAfACxHDxQj8b0Dptj4QAtPpow8KzC0Md/i+e/PTWZ3HyRhPdLvlOvc+ajWZfEX8OkSZ+Pi2eC5cd9y8H3kXaQgbbTKJi+2
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(136003)(346002)(366004)(39850400004)(396003)(6486002)(66946007)(316002)(966005)(44832011)(8676002)(66476007)(31686004)(66556008)(6512007)(5660300002)(36756003)(478600001)(6506007)(41300700001)(26005)(2906002)(53546011)(186003)(2616005)(31696002)(86362001)(83380400001)(38100700002)(8936002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?Q3lyd1d6Q0ZYTEtiL1oycmcybVplUC9HN0lic0dGYXp6UjV6c203WTNZZW1x?=
 =?utf-8?B?aTZhV3htWXl6bmhYc3VPMUpYWVFhc2NoZ3IrTWRxUG9yMVN4ZVV6Z3FNQkdp?=
 =?utf-8?B?blNjRlo4YU9QUmpWOWVDR0ZHd2p1K2ZFNFE5NFNGb2VHTUJXbWRObm9KaVhO?=
 =?utf-8?B?Qk01cEk0ODViK2dKMmdjN2xZcFFVbmkweDFhL3d2RmVZc2JKZnJGaG84emNB?=
 =?utf-8?B?RitYcklNVzFkZU02RzZsV3V2TCtRaG9rYTdodCt2UzV3TW5aODFabFRRdmRr?=
 =?utf-8?B?U2lmNnprVnVTOTh6VGc5dWRuWGRkYXZ0dGY2K0hMdEtEZkVFU1I0UnJpdWxB?=
 =?utf-8?B?TDI3TFp6MlBTaEZ0bUI4VURLVFc2NjZNQTRTOTVka2o4SHNnSEJjaUlqQWY1?=
 =?utf-8?B?VDY5KzRUUnB1em55c2FoaThyWHRJYlIwdmpKTGhBT3Z5UFVodnArMmZoMXVu?=
 =?utf-8?B?SDZhQ2t0K2ppOWpJTVllRFN1aHVYdEQ1ZEtLejR1c2p5aitqQXpUVnFqWkZ6?=
 =?utf-8?B?YkdLT1lqTmVIZFVETnRUbk55UUJhUVY0RHRmdk9SVG9nUTlVVUlCTWYxeUdn?=
 =?utf-8?B?cEZrZmhETTE3bE1OaWdxbGlHbkxoV2pPY1FDbmQ4NXZjczdEODlCSTg4dkQ2?=
 =?utf-8?B?bjJyYWk0cnFjZC9OZHAyWHlyYjJXNGh3aHRtcGJ0SGJBVmh6YlI5RzUxaHlY?=
 =?utf-8?B?THBtZ1dTamdmclRZV1ZNa1dGcFFaSHRKcUtLY1BHVVV6U3g5WHRCSTR3UWMw?=
 =?utf-8?B?NXVvbDlUT0lWcGg5RkpLR2tnL3FWd3liZURCMFBraVB1YTJEcTZKSERxU2Vo?=
 =?utf-8?B?azZ3aDNyZ2RTTmNuU3pRMFBZU0o0ZnUwR0VrdXp3K29nMVA5Rm93UXBaUEVE?=
 =?utf-8?B?dzRxVGJiTXJsNnFBc1pQR3BaVlI3YmxmUUhBaXUzTmIrVmtBbTJWZ2VkRXl3?=
 =?utf-8?B?SW1zNjhRbXI3dmhMUTdaK3NFaHlCOHBPZWE4cGNtcGdXb2NlMjNSM3dJQnlO?=
 =?utf-8?B?ay9qZ0tsZ0k1RU56WllTYTE0T0pMNnVKTHgrek9vdDlrWTcyQ2FHMXZmSWlq?=
 =?utf-8?B?RjVqY29ySFRha3dLblB3bFpmTG1aREd2LzY1UWNYaW5CM2xBb0xaZ1NvWEJV?=
 =?utf-8?B?ekZTNktvRDdBdFBuVnFKMlN0SXdhS2VqLzNsVWR4djRJK2s3V2tuWS9hL1pR?=
 =?utf-8?B?aUpzY3VPbHkwTHJRNjJMdmJGK05lTmNTVG5nc1FuVkppQUNJcW9HUStsSjd5?=
 =?utf-8?B?U2JkemlySVRlVDZ6NmJZTUp1NHJVK0NVQTBOd3ZySG1sNS9ZZExNRkFSVTVB?=
 =?utf-8?B?VWlYWWQ2bXhGZTBLc3I4eGx5S0hsc1JvRVp6RmtFbG5yOWZiT0U4V256Qm81?=
 =?utf-8?B?enJXaVU3dTJpazZ3T0NKRk9PV1BzWGw0cTlqVld1aENENmttV0UyU3pJM0ZP?=
 =?utf-8?B?OTJGTzRSM2QwaTRvalRwNUhiWDRpZkZNZjkvTGlBRlZyM0YvRzFrbnhVb2JL?=
 =?utf-8?B?a3pwS21KTjVMR3Bqd2lyemZreWE2V052bGJMcm1mSVhnUDdKV09abmNBYWJ3?=
 =?utf-8?B?ZmxRRm1YUkZtK3EzSjd3OTByd1lyd2ZLalVJK2QwM2JXdmVLb0JRaFY0eHE3?=
 =?utf-8?B?bTVxbldzOUo1T3FYaEkzYVptWWtwNnZRNFh1ZCt3YmNGVGx4dGdRVVh3K1Qz?=
 =?utf-8?B?VUxMMWF1MjgvOXFFTlgrYmRUWnRBRmNyem9aMkFZVkliUXdwTmpMa0h0UzFZ?=
 =?utf-8?B?QUdMSzlidWh4V05jbFFmWW81Qko2T1EwZnYwK3NidGZGYmYxV3paRmRNS2U4?=
 =?utf-8?B?VmtSMCtHbms2UGd6TDlnU040Z2lHR0hEdjg4eDBvWFVaY3hlaGQyMkVFL2NK?=
 =?utf-8?B?VUZYbXNFbW5DM0k1QjVkUkJYYlBOWUtqZFFWSlNzR2txbElISmVNZjU2Zk9q?=
 =?utf-8?B?eFBkWHlPY1RZR3VRT2tSeVJVUkxjUWdacncyaWxselFGNHJha3NxSDhVTFVD?=
 =?utf-8?B?ekdJNnptNDVJcTFpdkdoL1dhV1Z5WnNLWkN5UWdsaTNxNFRZdWdZaTRVK0ZW?=
 =?utf-8?B?NzgrQnNsMHU2cnhnczhuOEN3WlhXOHltTHcxa2loSkxqa05KdVlVL3VNd2oz?=
 =?utf-8?B?UzVlSEZQTUpZeFdERjl2a1VVTUZDbUZPcUltdzVZM1ZrVlk2S1p4TnhEWmRE?=
 =?utf-8?Q?cl97QQWbLQl8UOfSjtSaIjY=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 f67f6384-b793-4b37-e265-08da5dc09701
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 13:24:57.6182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 UglJrYfYDn/b0L+vWDmmM+1altJmq67Qmqb7vMxAHHAiQoDebdbi4B1RaOlzyOCb5Akhy7diz4wwJhzBs9hl/LraGik5e622qXeuD4xOEm8JJFjJGCJInnbJ0P37/zAh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB8692
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 13:25:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57437

Hi Michael,

On 6/22/22 17:32, Michael Opdenacker via lists.yoctoproject.org wrote:
> From: Michael Opdenacker <michael.opdenacker@bootlin.com>
> 
> This allows to switch to a more recent of Sphinx
> which will generate warnings with old versions of docs.
> 
> This way, it's not immediately necessary to patch
> all such versions.
> 
> This commit reverts
> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D8273124feb9da2ffe93fcee7c4529d5597e1684a&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=9u5-2R_NLEQy5w0pFgklKIUQnAvVLuHX1ASaeEBBJJ4&e=
> which originally reverted
> https://urldefense.proofpoint.com/v2/url?u=https-3A__git.yoctoproject.org_yocto-2Dautobuilder-2Dhelper_commit_-3Fid-3D931d409b255a85f2217ca093d8391a678ce00ddb&d=DwIDAg&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=je4C362aUVxZ2rdozdrQVTgzhi9iRYrxNfYtH5LHkXdlsay9SEphJ_ekBm4830_n&s=bTED2gTptfT6bSvLayy3fEpQJyUdbo5gLlt7ZGKkD1c&e=
> 
> Signed-off-by: Michael Opdenacker <michael.opdenacker@bootlin.com>
> ---
>   scripts/run-docs-build | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index 648a29d..0f74520 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -63,7 +63,7 @@ for branch in 1.46 $(git branch --remote --contains "$first_sphinx_commit" --for
>       git checkout $branch
>       git checkout master releases.rst
>       make clean
> -    make publish
> +    SPHINXOPTS="-j auto" make publish
>   
>       if [ "$branch" = "master-next" ]; then
>           branch="next"
> @@ -136,7 +136,7 @@ for branch in dunfell $(git branch --remote --contains "$first_sphinx_commit" --
>       fi
>   
>       make clean
> -    make publish
> +    SPHINXOPTS="-j auto" make publish
>   

What about doing this for all branches except master? To have at least 
some checks and not completely disable the warnings.

I'm a bit afraid we'll just not care about warnings anymore since they 
won't fail the autobuilder anymore. I also understand it's not really 
sustainable to leave them on for old docs since they won't be maintained 
at one point in time but we still very mnuch would like to be able to 
build them.

Not sure what's the best solution here right now unfortunately :/

Cheers,
Quentin

