Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AE7C433EF
	for <webhook@archiver.kernel.org>; Tue, 31 May 2022 10:15:26 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.82])
 by mx.groups.io with SMTP id smtpd.web11.47713.1653992120940133038
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 May 2022 03:15:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=hfVQ8CWj;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.82,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QZe7EGCrxKhIeXsQOQeSPI55lokNV/cK1EbpBzzE6bbFPu8UtaVcI1g+Pli0OYATP+sYf9tAGVm9pl6GkyBz3UFxPmf3zLDl4E3PHJwvYpSUSqsHR5EuwkwMRlg/dMTRHuS4oYseNnpz+cgn9Ro1ynCgmRZHPIh8La/f0cz9pTUuXiEoO4y31BNaXzu34skZMyFhP7Skve5lM1wobigRBC89y1zXZtUFHP+zTrSlh57tR+fIAO116s9NvqTfDqgrfarQFoKfx4G8fiDx15YDIMTYfUW1aNzrYUagL87LSGsfExz1Azctkx8/aOKSlo6LJgwSqUkVhwMTyXfHtlGGeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f46PVkwX9qWELamk/hNKbgGbK5twRDZN0u+n8LxIw9E=;
 b=R1TNqJl3FByQpttzQR0tv+HwHy3t//WwKrq4F3ylk1SOZXtghHC7u3XjJy5nYFFT2vbdbtVSJy0rQo8sD4+94WcchbXtUEt/sHdnRbkvIC0/2xQpv5YfsKaGezgbSVnWYAK16OBNDvZErH+2iKJkEKnfoHPTb6ilcgrUYDKqZq/8zg6hVSxyZzCwdHo+mdJoqYmHdiPtZh67T/7Vtyu7dmEseTUdNshHU0TEudPjj81KlktGZrsQPJN8EKVvVKXQrLpjHnzZysPIh+yryYIaDX4NPOTTMoiJCFONP/1DIU263CryfDcfp2fChNFBIE9jkqej+aEl/MHaf0irrnyy1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f46PVkwX9qWELamk/hNKbgGbK5twRDZN0u+n8LxIw9E=;
 b=hfVQ8CWjo2kl+3iXF6tkktCZxxE1IIE0H/Krxyh0ZoDdF1N/kCpZ1ojhVXRhJxoDnw65te+LCNI2HIitwVGbQ+JhusiWUhH5FnuDj3uC8hMYCtM1NjnODTBRJ72OF8AeQFbywszt0jONYN0MDnk/edUhb7XRu4UolKy3L/9dnFE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by DB7PR04MB4682.eurprd04.prod.outlook.com (2603:10a6:5:31::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.19; Tue, 31 May
 2022 10:15:17 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::880a:6606:6f57:dd0a]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::880a:6606:6f57:dd0a%5]) with mapi id 15.20.5293.018; Tue, 31 May 2022
 10:15:17 +0000
Message-ID: <9a2b758a-8dbe-c7f2-6058-ceb4a0b20a97@theobroma-systems.com>
Date: Tue, 31 May 2022 12:15:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH yocto-autobuilder-helper] scripts: run-docs-build: do not
 extract eclipse directories from old docs
Content-Language: en-US
To: Quentin Schulz <foss+yocto@0leil.net>, yocto@lists.yoctoproject.org
References: <20220512130217.1926760-1-foss+yocto@0leil.net>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20220512130217.1926760-1-foss+yocto@0leil.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FRYP281CA0001.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10::11)
 To PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 847a361e-79b1-4af4-5bdc-08da42ee7603
X-MS-TrafficTypeDiagnostic: DB7PR04MB4682:EE_
X-Microsoft-Antispam-PRVS: 
	<DB7PR04MB4682AF102CA5F96AC082BEEFC2DC9@DB7PR04MB4682.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oTpsEgvHmSakQI69l2mtx2oJ3odBUgfX2OSmfZpligXLFIwls4zcJMst9EAbnRCQ+laKqQDwHS60XQmO5Yexr72YNVOau+Qs+Q+ekRdugiWoa0J+47D7c1QS2zyXKB3Ap1RwRVKrublRAsIizXsNpr029YBJVhsw+j3R+6LdFl2xGUqXTyM3ojEGQF2fpL9cdl8dBVt/bfV4qgwP0a5/E0+Z9kKbBA08KFsmpZtruBn+wjm3YsLoPl2a1R7y9v2bcNWBj2XZHVql4LgS3RX6pFlGBpMZpQRdBThfNV4cBuXOywAXg6BoCITcPPY1lAVfL9kOTfcKS+lDwPid9UPVoeI7FqV2ULuWdyN7V5XEpZzb+8R8plC5cgHt0Jpf6WpG90B3hqqGeUov8upbNqdAD2SCjmTFkTbeYx3v3vE8YxJ4wb3l9QTwr0mQjD3asslBSuoxbRzD0UtQa97vP1iSQmOAD5F6h39A7C4DsMruT8BE/xWegXowH2Bci+rzA99xwexdI5DqBtMK2HgWx5kOp6FIBvsucguwrua8DrdLk76Z5yX4jhH9xrqy1+xFJal7zsqT7Gz+7h3Ii7r5YBVEWIyFHPV26NqWebuhI1HwZ6cr9ZISI+d08OvYfZOo3QdwJuabpWgYN4AHjl/6hFm62GCs5EtPResfD9QWtY0TGhlOsZuNXRFLqSvTI+nBVNO1JFu5J5ZsF4yAGNDfJq3N0v+GCIDYRR0cht7+0Y01reevtvQa5U3a9wqDPbvYEda4
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(66946007)(6486002)(38100700002)(66556008)(66476007)(8676002)(2906002)(8936002)(83380400001)(2616005)(186003)(44832011)(36756003)(31686004)(5660300002)(316002)(508600001)(6506007)(53546011)(26005)(86362001)(31696002)(6512007)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?SVNQUHpSbWoyOEpOcHMxQTdaMEJJbXBTWnN5ckh5MG0rV081dXBMVzVHdGJB?=
 =?utf-8?B?cVIvRVpqRDRtU3Ixamx6OHZZMmRmUHE1SEppZG5oNXJpWHlqTTh4NW44bkhJ?=
 =?utf-8?B?ZjdNU2NQYWh0YjhBaUMybGFiS0ZsdDJoQzZEQktUTHk3K1I3OHJya3VkOFFS?=
 =?utf-8?B?UzhPNENKUjVNOW9DWmdHYUJxcmpPaEtCZWE5MFhBd29GZWozKy9DdFY5YkI0?=
 =?utf-8?B?WDZ1MjZmeHdTKzNYY3orWkZqc29FVDJxQnZrN3lwNHZDczVOajV4cEswYXJI?=
 =?utf-8?B?bkVTa1NBMGo1UW56OHZaSktDME5VcHRLU0J0eHlVczltaktZcWRlejBFMFdL?=
 =?utf-8?B?Y1ZqL3VhaDZVQ21NLytCTUxheGxEV2pQS0JkZjlZclJ3UFNCTXQ3YUgwSjZ5?=
 =?utf-8?B?Tm1pamlpVFlxb2FYN0NRdHArcDlMcjM1RkVMbDdUNTF4NTd4Yms2cDJNQy9S?=
 =?utf-8?B?dVZSc1laRHhGM0VZaXVhZ1pVUjNOODAzdGJwRWV2ZjBhVVM0M084K3E5RDhT?=
 =?utf-8?B?K1JkbjdraEJuZ3l5SEFZbWxTS0EydUVGQzhOZGN2N0FSSEc4YXhPMjhydUtE?=
 =?utf-8?B?RW1qOTdjckdVUFJNV1BHUVErSzlQaGxPcGdPdSsvZTArT3EyMWRra3RXcWNh?=
 =?utf-8?B?QnJaU3JwVnFtT2ZkZlQ4bVptZGNSY2x5aElpUTM5cGRjREo4bytUSkdKZUo5?=
 =?utf-8?B?MDJhQUpYY1N2WFpsNlgzNWJMWTc4cmhOYlh0WjhWVkUzL2V2NUZQY3pJUEFS?=
 =?utf-8?B?NGtyNEFyYWQ2dzNhajFiUUJ3OVJlSlA0RHpHTkZkSGZwRE1wNnZETWhpN1Zz?=
 =?utf-8?B?cm9YODR5SVV5M1J2OTRJaDVmUm9CZThRMmpPNnljaEt1T3M4dVJGc0NyK2U3?=
 =?utf-8?B?NEpuYUZQMDFSZkhEUmZvT3VWZWpzc2cyMnMwZFd0M3ZRd2Yxb3BQTEx2Qzhy?=
 =?utf-8?B?ajRzRnJTTGQ3Z1pITFdVS2JVditzRUg5WmZqTS93bm5TN3M0VjBpUlNuODJ0?=
 =?utf-8?B?cEdqUHgvbEVKRG52ZnpneGViVVk5T2VyMTIrMnlnaldVUVlzb3FudmVWYmFP?=
 =?utf-8?B?NHJkY2pxd1F2Y2ErNDVIdWgvZEZ5d2dZak4rVGM1NS9xMkZYWHoxVDd0NDJE?=
 =?utf-8?B?TGM5aXZadE1rSGZJUjlOSmNPdFJRSGdoMFhqY1UyZkcweG4wZXF2RHEvUG0r?=
 =?utf-8?B?U0xSVmhmeXNuNFYvM2VPcDNpQmVxbERCZHF1OHJlUnk4MzlJaWo3QjFUVDVk?=
 =?utf-8?B?eURvZlNUWGd2NldBQzF1TlJJbUxCSCtwazdNR3NkVDZhTmpLRGljbkkzYUZM?=
 =?utf-8?B?V0ZUalNFNWQvZmtKWnNpMWxTRU9uclZKZmpEMWw4eVM5Q3BjYW9uZkVPTG5O?=
 =?utf-8?B?QTU2aDZ1OTdnRmpaZTlVVU13Tm5rcURpcmxyODZDc0ZPTEgra29BWkdEekhB?=
 =?utf-8?B?a1BaRFZkOS93ajNXN1FIQ09KSzMrMVNNZFIwd0R2MUZpNmtNbTdIbFBzZjF3?=
 =?utf-8?B?UFF0a1hSdmNnVjhJMUc5SCtycCtSWEhVdU1DVHpTaTZKNWUvdkw2RFd2ZGRh?=
 =?utf-8?B?UmVuck1CcitIY1A2SklKSkhrQ2o2UHhEVU1sRkVzYzUxVUkzMm14YS9QVVlS?=
 =?utf-8?B?VFZhS2crcUY0SExFdFlrWGNoQmthWC9aV1p0SEdVKzlqb3FzK3h3STE1YlVv?=
 =?utf-8?B?a0xkWGZyYktwby9CMjRXN25zcTN0OHRVNVZNeXJocE0yQmhXZjEwV1pPbk5h?=
 =?utf-8?B?c0taalBELzhBZGFGcURVblQrYWFGanAySGlhQW40OGZCRXRMc3NyWGtjcG8z?=
 =?utf-8?B?TEc3ekd3cENmazdRR0s4TThNV21US1J6eHFwTnFZdlpwWGtRTmZjeFU4THdP?=
 =?utf-8?B?S3haMDZ6RzByb3FwRTMvaTVIQzQzUlRONjAzOGpRZzhEUWI4Vmcrd0cybE1r?=
 =?utf-8?B?Y0pSdm8ybmpMb1NJdVpVQndYRGgyNkJCMVdqRFhyK016UEpTcGxmYnhic2Jt?=
 =?utf-8?B?Y2lYM0JkY3puK24wZUhKdVEvMWxOeGxsTU1LS0JCRERBM3V1OUdLeGFzM0w4?=
 =?utf-8?B?OE9wTklXMm53SWg4U2FmRGp3SEUwbm16NCtIWk51MElFM0xRdWM2Z3lGMkUy?=
 =?utf-8?B?elowQ25QeTd6T0xYakxWbWQyRUpSV2RCWW1QWExGNHZ3bjVWdWY3dVRrUG1a?=
 =?utf-8?B?RWM0R1FhM3JqNWpEbDZJRmNINlhZS2p2bDZST1JYSWMzemRqQitKSFdYODU0?=
 =?utf-8?B?VVZzaUlMU2ZtWlYzelYyZi9oVDdzMjJwN3NlOGpwMWpGVWgvcHZhN0xFSTdp?=
 =?utf-8?B?Z3k2bVRjYlBqTDZjSnhPd0JjdzJ6cGpGMWN4SE42aHdyelBmUDVobnU0Q2pK?=
 =?utf-8?Q?bSgf9pgxCfhXt4mz5osYvvXb43tcggHXeK3BC?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 847a361e-79b1-4af4-5bdc-08da42ee7603
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 10:15:17.7502
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 Lkr8RGxWq4mvI9CD8hGE0Ul1W0BeCqtCNQl7SrMgEVtV9DPyRZfLxcaL1PqnFBPH/xDZLgbAUXQdQYD1FAJtteYgGTfSG/IJKrIS6QWmhbqLUvrFq6kDlZMtsuTbNfYr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4682
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 May 2022 10:15:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57231

Hi all,

Any feedback to give on this patch?

Cheers,
Quentin

On 5/12/22 15:02, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> For some reason, the old docs tarball includes many eclipse
> subdirectories which are just cluttering the docs website up.
> 
> Therefore, let's just not extract eclipse directories from the tarball.
> 
> Cc: Quentin Schulz <foss+yocto@0leil.net>
> Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
>   scripts/run-docs-build | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/run-docs-build b/scripts/run-docs-build
> index f6b8ac4..b912ee9 100755
> --- a/scripts/run-docs-build
> +++ b/scripts/run-docs-build
> @@ -35,7 +35,7 @@ docbookarchive=${docbookarchive:-/srv/autobuilder/autobuilder.yocto.io/pub/docbo
>   mkdir $outputdir
>   cd $outputdir
>   echo Extracing old content from archive
> -tar -xJf $docbookarchive
> +tar --exclude=eclipse -xJf $docbookarchive
>   
>   cd $bbdocs
>   mkdir $outputdir/bitbake

