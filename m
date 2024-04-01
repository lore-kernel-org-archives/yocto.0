Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E4FACD1294
	for <webhook@archiver.kernel.org>; Tue,  2 Apr 2024 12:40:50 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.34121.1711966222568607481
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 03:10:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=Kh6qKRk4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=482139607b=zhe.he@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4319bDQ6017662
	for <yocto@lists.yoctoproject.org>; Mon, 1 Apr 2024 10:10:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=message-id:date:subject:to:references:from:in-reply-to
	:content-type:content-transfer-encoding:mime-version; s=
	PPS06212021; bh=E1FH0AnMcjD+kS9Qw8dEVvGiEFbSkUjx0/5LF7pxHkk=; b=
	Kh6qKRk4dXeuz55O+j6yVeTJ8ihE1wFxT1qNNrZ59dvknsNUBsvf7FnLGkgDoWzp
	ol08q+LnG06FDp1ESVvdQ4tp03HRFoqxcmdONqtk06qRD4nE3WuHnPf9G290Ptoj
	Hm5qgaFbXCMafmzsqvLOZ4N4DMMU9345zNaYq3p0QnpENfdCVwG1Dk0DuQeLDVHS
	zZUb90jofqzs8zS6y9MVW/ULy6U2Ew2t8KVL41GeTRyOfgUyLIHgHBfT6qdJnj3k
	9BFMDbycEiWcWahlz6sZjKMeZc0r+qeIpaW3vdfwVo4o1H9qL/IwGNfTAPXQYPsT
	Mm1wJYaJ4TlHM0t8jtNCHA==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2100.outbound.protection.outlook.com [104.47.58.100])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3x67xy1t21-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 10:10:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S0fXrUyjqv1Ai4pgQE5AGVIxJRyezvUCH4bAEVptnU+3DVAZr/nk7shfU4/tq903PbV/Djho6e26vFe+SX5EDKvL5KeAXip4XyrGhvffcwkqldVDOowcDzg5T/EEsZZAwzCvWlAyzyc8sAz+MNzE1jn/7jVznJOMHkjISbc6PNITwgficoML93WVIMXBuOc/thBuGl/7qjvnyNoy9vmqN1BWFYfYPy6yF3RjgbNnZGpbboMKHD1dc/kZeh2BLxkcz8Xjhy2pI8AawFo3Wz/qpiQ5U53i8UO/7OpVSKkHbYIkS8e9zni8zFkNI5+0lMTrpGtGhqvE3ccFmpQNR8T10A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E1FH0AnMcjD+kS9Qw8dEVvGiEFbSkUjx0/5LF7pxHkk=;
 b=g0q1wiJtYhBVJKjRVpuj5bXuTHobf7SEHaIxoz4GJ5GC7/ajxeXIXk0tTr9CsjIUopfXZh4WeMFc29OeI1vGY+WOW00qN//w3v51QI1NW4TrJ9t06uMTpr98MuRAcxsBk0/Eq8y2zSIRocP9+TD6nQNN/KJFnpqpC+cvdzI9t3GfjTOeBM9opbj2qoJtIUN7G1XRKl/NZVY8M7lGJzQVQNq18sdQqCtDIQf4io+4VT6yhv4QGDTEGl9b8NvUxbC+q6tL8yWXSxui7B2E2O+PngU7KOl921eY7uz+KlHXEKykcwprJ3vYjIG0QhUBnNdwrbWot9TYWM2rma9Zttrcew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from SA3PR11MB7527.namprd11.prod.outlook.com (2603:10b6:806:314::20)
 by IA1PR11MB6417.namprd11.prod.outlook.com (2603:10b6:208:3ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.24; Mon, 1 Apr
 2024 10:10:19 +0000
Received: from SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1]) by SA3PR11MB7527.namprd11.prod.outlook.com
 ([fe80::65ea:a821:96fd:4dc1%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:10:19 +0000
Message-ID: <a085ad60-ca54-40d4-b081-333ff1ccf13f@windriver.com>
Date: Mon, 1 Apr 2024 18:09:59 +0800
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto][meta-anaconda][PATCH] kernel: ide: Remove ide kernel options that had been deleted upstream
To: yocto@lists.yoctoproject.org, hongxu.jia@windriver.com
References: <20240401100305.2716593-1-zhe.he@windriver.com>
From: "He Zhe" <zhe.he@windriver.com>
In-Reply-To: <20240401100305.2716593-1-zhe.he@windriver.com>
X-ClientProxiedBy: SG2PR02CA0117.apcprd02.prod.outlook.com
 (2603:1096:4:92::33) To SA3PR11MB7527.namprd11.prod.outlook.com
 (2603:10b6:806:314::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7527:EE_|IA1PR11MB6417:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	C4FG0OtbsMNCy1DIT+K6zCLdpmg4V4E4mYQfRTGlmWdlGn9LAJY0AiGfa0MJMihYeABjOOYIPsHUMN9BLpIhifeeQlq984dhIQR4EJlWdWFy/tAsQTj3xuv8lvmC0vKrlUGX1/RjJoqJDJHJQoi3TlriDze2QskyOSH7hR5ig3hfhBq37Oj4pMAl9+p5+tTHRL56t/ugY9fY069fqwRTLUuv3BKtFNjZi2Dl56lcS370+KDuk2eYqUkXJilUq/UwsaL+7JM9W8i1lnkOMvRsBSaFAH/v3Drz/83A9ezN5978HEb5QWPKMf6sqe5kj6P/boPF4oHnf8Hd/aMsW88P5D+slcYYwJwF0wGWt8rM+oyyN4QH3KuTiGR0pwJjU+/849Au2QOWJo4XIpS+J+4gZ3rezaODTahi6/m9P9ja5KXycwePEW0DHVWJXuN4UHuJC1BIj0yLOp+OiL1Fqrl40cELK0Gm4WxZ2RmHfTp5F4LhtcOf0ZxIVw1j4KkVSPL9dMjMQGgmXRyHQr730hVnjVP5YLWctlCVFbaZ01+RwQHDVsnlyMM6KQf+MGQVfNpUAsc+5riw1TSpBcHw5H3mqUgTadQ5clHSPF7R7Y2i/4s=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA3PR11MB7527.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?U3RwN3BUdDhWSStXd3NiK1B3WVdQOGFzaVJLbzVNYnVRUWovMWlWU2FzZzY0?=
 =?utf-8?B?RjExbjA4MzZ2N3RibmxZaWlIckRubXN1UFRSaUgvVit3dGo1aEZXbC9RWThL?=
 =?utf-8?B?b0xyZWxiWXhmNVJ5YWNScVlnQlAxQnRTdGtGcGVFUDhoTEZGUXMxVm1kbFVl?=
 =?utf-8?B?Y3dpSW80bHVlUGR3Z2pZNW4zNmtxcWJRd08yNDJJbTdVc1BQdVFBYk8zSmIr?=
 =?utf-8?B?WDNPNTdkSFlmZXUrcHFTK1dVaGVuV0NiTy9PS2g5ZEI4U081QmZPWlBTWE9q?=
 =?utf-8?B?azQrWFlDQ24rODVMYU9hM3lqanNnMEQ3OXVpYnlxU1BrbVFtcmx1L3l2VVBZ?=
 =?utf-8?B?MmFOUmFKRUQwZkhZSHVlbkgzUTRQNEtINnZCRk16UjJ1T3hRNXU3dVYxQXVO?=
 =?utf-8?B?S2F1SUpaeHB4RTZiS09FTk16c1BVSWdVSURzWFpxeVZOdXhIZ3ZBM1dCb2Zy?=
 =?utf-8?B?cXJPcnYrMWREWnJxb0w2Q05HY2t2WVdYL09tQkYyOGpnWkZXM1g3WnJ5bUJB?=
 =?utf-8?B?RC9EdTVJOWZOWTFIZ1dFMndmVExDNmtRbGlqWWJ3dTlTenJ5ZWpMOGxKSnpF?=
 =?utf-8?B?VXpHcWdzRzdIcnVUWkkvcWtGQmhtdEcyTWNZSXNSbkJxWjR6ZHZNVzhrUXk5?=
 =?utf-8?B?NFkwcEY4R3NlTEhrUHhZMkQxeEdYcDAyZ3JRVk0xbTFNRENuNUtFT1FMaHp5?=
 =?utf-8?B?b3NvZEJmZmVGL0FRRFdyWlhYalZyTi9ySWUzUVFJRHBGeVJCaTVYczhuVi83?=
 =?utf-8?B?RHdSMEk0c2JXOTNRUG9zTVFseUVEaDJMclJNRmhjRkNxSmU0V1dBQVJ3YlMv?=
 =?utf-8?B?bUdPTEU5OHQyZmRjQ2xLakovN0Z4UXJyQTZjRDdQR3lxV3YySFR5enBzM0Vi?=
 =?utf-8?B?QWpWeld3eEdoVjJGOGQ0SnYzL3A1T3ZYUXY0WHB6VDZPNEpPV1pyUWcwOGlE?=
 =?utf-8?B?SExDbFRSK285d05HQnljZ3BYbThjVmJZRUlRbVdXUU5Hd2tJZ2VXRCtKSlNQ?=
 =?utf-8?B?NXpTSGlqbTZFNTlmbS9rY1E2OEQ5Y3FSWmFuMGt1MitJZzkyREp6K29GWkxh?=
 =?utf-8?B?THN2VWF3azdBdEo5dmxHa1BuMTZRc0FnRVUyKzMrZm9Yb0RHOEtBYVFWSU9J?=
 =?utf-8?B?N0hnYzJuejZhdXE5RnFOSys4NXMvVnZLYWorcFRkZWhaaGU5R0ZmOXpod0Y4?=
 =?utf-8?B?LzIyMDl5K2hibzN5d21vZnNsNnVqUUNSa3llSndKTUQ4NVdqQWNPbE8xYzJG?=
 =?utf-8?B?ay84S3J2V0lHSlJZdmloZXJ1RFZodk1qNzduczdubEZjcFFFS3hrb2NJN29S?=
 =?utf-8?B?eWxvSHgvdWdIc1pBQ0FaSmVZejlwdys5c3M0U29FM21McmtNM09jaFduZ0ZI?=
 =?utf-8?B?ZXdRWHpDT0hGUXFZc2djWklJb0ljdEEzSXh5cEVQUm1lQll6SUsyWFFuOEl5?=
 =?utf-8?B?bkpnRUJnL05jN3pIT1gyRFFEZExXeHZNUHNhZU9DWWIvNTJYc0xxRWJ0bURR?=
 =?utf-8?B?SkpxMFdNRDZWUzE1L2pwc0srYVpvOEV2VE50NkdPc0FVYlN2ZGxEZVQyWXVS?=
 =?utf-8?B?QkNURWlzbVRqeXNPZERWYnN3Y3BkZU14Nk9ZT09FUko1cEdXRVBrakJUZFhE?=
 =?utf-8?B?bHNHNU1sTHhIN1JQRWJNNEwvNmJZcE1GYzJwUWVQV29sSmkyWnFHczFLamdX?=
 =?utf-8?B?aEN2R3pMZUdSWUZ2RUZBSC9VMFJpQ0FIL0t3azd1RGdvdjJoaU4zOFd4Z0Vs?=
 =?utf-8?B?dFFEM2tlUWFPdTNKSnZqZHorSklRcXhsSmpxTEJuZnNncjJZN2lpQStvV1lK?=
 =?utf-8?B?SDVUMVdISVJpcjZ2SmRYcnl4WnM3ZTJ0a3F0UEpVODJrRXdncUV5engwZ3Iv?=
 =?utf-8?B?bWJ4MFlydDQ0ODVjbE82Q2hZU05HV3U1b2RRTWxOQW80aVZSSE9XdytWUlR3?=
 =?utf-8?B?S1JOUlRkdC92bTZkUHpaZ0lLVTVrWC9LMVRWVWtrMTBzUXZIbVBjeVk0d2ZD?=
 =?utf-8?B?MVZlcy9rcFZXRkRUZUdhbStxVlVmdXhwdk9yM2QzcFpTL2ZtTFNLRWJwMk5x?=
 =?utf-8?B?RVI0cjI3c0RtdFFOQTkvV01GQTRuazZTVGdNYzFaRndmalc2ejRjSktKT3Rj?=
 =?utf-8?Q?53eLCxooTWDJE5DOWA3Hf1BgT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5f052bb-1de5-4e01-8f17-08dc5233ef60
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7527.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2024 10:10:19.5447
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ShmY7Gy6FbDp4r7yyptr4MAqvc8S2bgQXwrbrW9z/5tx6MRvJl4x+2bBk76f7lqJqCar6zFftQ0nSqbjSK/ojQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6417
X-Proofpoint-GUID: b6juEGIjqgZW6t5K1wRrYq-y14iPKtNI
X-Proofpoint-ORIG-GUID: b6juEGIjqgZW6t5K1wRrYq-y14iPKtNI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-04-01_06,2024-03-28_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 adultscore=0 impostorscore=0 malwarescore=0 spamscore=0 bulkscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2403210001 definitions=main-2404010071
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Apr 2024 12:40:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62878

Please ignore thanks.

Zhe

On 2024/4/1 18:03, He Zhe via lists.yoctoproject.org wrote:
> Issue: LIN1023-4443
>
> IDE related kernel options had been deleted from upstream since v5.14
> http://lxgit.wrs.com/cgit/linux-yocto-6.1.git/commit/?h=v6.1/standard/base&id=
> b7fb14d3ac63117e0e8beabe75f4ea52051fbe3a
>
> Remove them to fix the following warning:
> WARNING: linux-yocto-6.1.83+gitAUTOINC+85ba1038b5_1d90573765-r0
> do_kernel_configcheck: [kernel config]:
> This BSP contains fragments with warnings:
>
> [INFO]: the following symbols were not found in the active configuration:
>      - CONFIG_BLK_DEV_PIIX
>      - CONFIG_BLK_DEV_IDEDMA_SFF
>      - CONFIG_BLK_DEV_IDEPCI
>      - CONFIG_IDEPCI_PCIBUS_ORDER
>      - CONFIG_BLK_DEV_IDEDMA
>
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>  classes/anaconda_kernel.bbclass            | 1 -
>  recipes-kernel/linux/files/ide.cfg         | 5 -----
>  recipes-kernel/linux/files/ide.scc         | 1 -
>  recipes-kernel/linux/files/liveinstall.cfg | 1 -
>  4 files changed, 8 deletions(-)
>  delete mode 100644 recipes-kernel/linux/files/ide.cfg
>  delete mode 100644 recipes-kernel/linux/files/ide.scc
>
> diff --git a/classes/anaconda_kernel.bbclass b/classes/anaconda_kernel.bbclass
> index 5461a22..b5dc983 100644
> --- a/classes/anaconda_kernel.bbclass
> +++ b/classes/anaconda_kernel.bbclass
> @@ -5,7 +5,6 @@ SRC_URI:append = " \
>      file://liveinstall.scc \
>      file://efivarfs.scc \
>      file://multipath.scc \
> -    file://ide.scc \
>  "
>  
>  KERNEL_FEATURES:append = " \
> diff --git a/recipes-kernel/linux/files/ide.cfg b/recipes-kernel/linux/files/ide.cfg
> deleted file mode 100644
> index 9d973ce..0000000
> --- a/recipes-kernel/linux/files/ide.cfg
> +++ /dev/null
> @@ -1,5 +0,0 @@
> -CONFIG_BLK_DEV_IDEDMA_SFF=y
> -CONFIG_BLK_DEV_IDEPCI=y
> -CONFIG_IDEPCI_PCIBUS_ORDER=y
> -CONFIG_BLK_DEV_PIIX=y
> -CONFIG_BLK_DEV_IDEDMA=y
> diff --git a/recipes-kernel/linux/files/ide.scc b/recipes-kernel/linux/files/ide.scc
> deleted file mode 100644
> index 81e57f5..0000000
> --- a/recipes-kernel/linux/files/ide.scc
> +++ /dev/null
> @@ -1 +0,0 @@
> -kconf non-hardware ide.cfg
> diff --git a/recipes-kernel/linux/files/liveinstall.cfg b/recipes-kernel/linux/files/liveinstall.cfg
> index 37c9f47..6794674 100644
> --- a/recipes-kernel/linux/files/liveinstall.cfg
> +++ b/recipes-kernel/linux/files/liveinstall.cfg
> @@ -2,4 +2,3 @@ CONFIG_ISO9660_FS=y
>  CONFIG_BLK_DEV_LOOP=y
>  CONFIG_SQUASHFS=y
>  CONFIG_SQUASHFS_XATTR=y
> -# CONFIG_BLK_DEV_PIIX is not set
>
> 
>


