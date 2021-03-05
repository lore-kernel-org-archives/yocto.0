Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.8628.1614925716876959268
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Mar 2021 22:28:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=IK5xhU3w;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: changqing.li@windriver.com)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2084.outbound.protection.outlook.com [40.107.237.84])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 9B5CD38C064F
	for <yocto@yoctoproject.org>; Fri,  5 Mar 2021 06:28:35 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AIJQ5LhbqnA4rNg/1Opz4jD2g/NmfzlrapFFjF+kuYmxXBOcsuAuYZ7/ZAUPKoP9G4q5CuTTBY8etcxF4AIWNOpjxiZKLx5yK7kTGDaNof1ZIKPT/Q9zm6Lkigj9oZlibRGmhSA9NdcbfdOFsKacresSLYgWNwUshBNhiRnY8jk65DJ6ll/p+8TJkmok/0ycHzBzudjPIynfrgbpySPRvrzuZz6p77PSoPEli6joPJiXlauaL+e+/bdISFM96QqT3Id50vICwyDaYcA5z1qOh7n3kRTrRZSJQmPXxR2aTPgDyB4WVE0n8oUdhFt2h5EeyBEL51fY+lOWJo8cAZrrCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgvNtVNA3RptzUMmTgWjuEJbiS/E74Z5DQWZMEIwobA=;
 b=R8PYovHIKaRlU/xL2z7cvGrtkGk3YpVCPyhA+ya+TxcJcfCZvl2DKCg4spLdHn4PanLdsPHVS6SuWc4soZuGx6OKl2pShrScVDsJjtI7LdrkGyGagCX/OtVCRJwq7JV2NUPlPTNnoNEhM1skqoKJiOziBGNm8UN9uJFBWNuq0A6zwiuY23/R5onLUrW04oI4eb/0z9/a/8JPKdkdbQpXuxmXEDuIamnAzsfwFzZuuPgr8S2Q1ktvEV0r1ZRCzHTR+8DecTbUYMKaVWpZ5auH45oBtPG7C3q+GropBhjPRMPCVUmb9B2qx8BktoEeA3vyW3wk8fwUmxj/UXXHgjpt8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lgvNtVNA3RptzUMmTgWjuEJbiS/E74Z5DQWZMEIwobA=;
 b=IK5xhU3wd6pFOChQmA3x2MvgmwHTby9AGxxo2MHOov9hr5CU4XWTmZANz9bBEYI/Li0Tg6/BvAL0nj4Ux2wb9YVmI6iVhHmV98mrEC4fYjzT4LvQcGsEyWnxjP7QTXTDs5mGV5qAKPMeifSF8LALKlp72V69pWiYBq1QbxXs9EU=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SA2PR11MB4939.namprd11.prod.outlook.com (2603:10b6:806:115::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Fri, 5 Mar
 2021 06:28:32 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::c066:ab51:9569:4e1e]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::c066:ab51:9569:4e1e%6]) with mapi id 15.20.3890.028; Fri, 5 Mar 2021
 06:28:32 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] pacemaker: upgrade 2.0.3 -> 2.0.5
To: yocto@yoctoproject.org, jpuhlman@mvista.com
References: <20201209060111.97275-1-yi.zhao@windriver.com>
Cc: Yi Zhao <yi.zhao@windriver.com>
From: "Changqing Li" <changqing.li@windriver.com>
Message-ID: <ad06fdcd-04b0-ae06-0fc2-67eb6c6389af@windriver.com>
Date: Fri, 5 Mar 2021 14:28:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <20201209060111.97275-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR06CA0064.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::41) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.189] (60.247.85.82) by BYAPR06CA0064.namprd06.prod.outlook.com (2603:10b6:a03:14b::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17 via Frontend Transport; Fri, 5 Mar 2021 06:28:29 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 349ba561-e125-416d-48f8-08d8df9fe4af
X-MS-TrafficTypeDiagnostic: SA2PR11MB4939:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<SA2PR11MB4939FC7C6F6851452FE6E7A682969@SA2PR11MB4939.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	hr1wZE/cu0q+ZefyCn6/eh561Kj37EHivdEB5MRVHVOFbklgZtDfWnzBaCzzlmCXaIi4nLAxSN7bzIKvpV6Q5bC7NgfCoSn3gT7pKu+r2+LH131akSMsNS06W/gOCXZzitgcTtnscCspUeVQSwITe6eCX4EJheOIm02vNieE3jwBMoWo/Yb4uFtBChy5LYppRkV45KydNDVsxnBAnbm4DlN9nnsP3QcDLMBCVV1WDgcCx6ovYSam0ZNE4klDGeZO47HcokmA6T2KBWyxHUZB87q2lRzGr1rjqFbSKBAbPluzhl1qDZEDw30riwNUFo8w3uBuGt5ziW3gQuHVndWhRBLbagTuhDpnPDICnkoe24pJj15yMl26+LbGK5NE3ktMEn/KznbR1j8xfFZXbGTP/GweOK12vyiH2b90xf0jvn9P0uFqWgKwxh+iZGCFCE40Ddxsc7ySGU0wjHJJk54pBFXHtYiBTV4n1yA0p/QdbDUGx5fMvgjL8j5rZNTNDCDADWmYtrmAqxoRhMEGY/RKdp3siDmw7Inx7TFKHiBusz3k4viyO0xeq+Iiw106bxutgfJ02AaxO6F+cVMbnLVX8Uia+tP7vV8LYzvizBSaZ+l7Zgu0IGZjjuwgGaO4SzDUNnZF98IQdUIf9tbotauY3XdbPGzANu2IqMtr0889wT5eoCLBHXjuJWtL3NNenJIEmwyuvuv+LCiGt14Lrxn+2g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(366004)(346002)(376002)(396003)(136003)(107886003)(53546011)(33964004)(166002)(44832011)(31696002)(26005)(86362001)(16576012)(52116002)(83380400001)(6486002)(66946007)(16526019)(316002)(186003)(4326008)(5660300002)(30864003)(478600001)(6706004)(2906002)(966005)(66556008)(8676002)(8936002)(66476007)(956004)(2616005)(6666004)(31686004)(36756003)(78286007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?aDdlcldDZnF5RnNsanZWUWVkQXVqcHVLbUc0QlNiVi9EbE5UQ2lUWkE0TVpj?=
 =?utf-8?B?dzl5YTYvL3dOVVhMbmhkY0hIRVYzTmdpdXhnSVNYUW5ITUhLSXRhdG9BRFlv?=
 =?utf-8?B?Z1Fna1E1bE9hdTBlMk5hV05oRmt4VExKVUR3bit5YnA3Q1R2SFZ1RVBheWdp?=
 =?utf-8?B?azhwU2tZNWdZY1ZxcDVmUVlFclcvOFpFTWVCS3U1akZveU9kWTVrRytnY3M1?=
 =?utf-8?B?QnhjTGgvWFhaZDNxU0JCL1NsMnVjOHBlYzQzdURRb1VqbDg3aFNWWFYyRi9N?=
 =?utf-8?B?bnNoVEkxdE05ZWxCdDNLTXdld1VOZ1ArUS9WaFZKWTJsaExDOEEyWlJMa2FQ?=
 =?utf-8?B?dGpVK0tISC9CUS9KOXVkR1d1K1hMbkZDUkI5M2U1eEJvZENFaHZlKzc5akJS?=
 =?utf-8?B?ZjA5YlpjZnVXOFFXSmVsazBqUExIN01oNENTUGRta2pyQlRYUEtNNSt5c1pM?=
 =?utf-8?B?RENjNlRLWW5LRUhZZ2JkN3phcEFDajlwRncyaHFIOEFYODFuTTZ3ZDQyRXRF?=
 =?utf-8?B?c1VtcWNnbDluVFpBZmdwRERaUVk4SE1IR2M0N1gzekxhSmQxc0FVa1F2U2py?=
 =?utf-8?B?RjNlL2JHNTI5OG91TXlHK0VnUDV0NGhBM1JRS3hIRllvS1MvRU42am04akJu?=
 =?utf-8?B?TFU1WHNEcFlLa1BUcUZ0RllSUGJTTzRBWno0UUZBbDFwaVJVSU1HbUkwOXR4?=
 =?utf-8?B?aStaM2gvdmZWRU45WVBSbHN3ZklJRlR4RXJYc0l0ZHFieDFKcUkzL2tacEpI?=
 =?utf-8?B?YmhPcmFvMndIRFBMMmhwdkZwTFZKQjRlNys1TUJablRWdWlaMlhlbkVxVHU0?=
 =?utf-8?B?ckJyYXNXZHdqdnM0aU5zWjM4ZTNYS3FTK1EzOGdMVWNSeGFPU0QySlRRQ1JE?=
 =?utf-8?B?ZTNJK1ZBSVBiOVplbS91T2lYS2NIZEttNjhBMVBtU1M0dTRlaTRGazZnaEd3?=
 =?utf-8?B?YUhIL08wZStCMmJTSXdpRDNZUU05QmRleFh5Vk05cDJBNzdDRUVHSVhPVmIy?=
 =?utf-8?B?dUxNNDJqNWxRZHE1UUJLdWFnUmh4U2dLTTZnd1EwTlFoMkwrZlJ2V3piWkVv?=
 =?utf-8?B?U3dMNWEvMU5CZlFJc2x4VkV5ZzlRdDdIczhyU0RaWVB4VHNpdTlLcWxwMDBv?=
 =?utf-8?B?T2JQSEFZSHZ3YzV1cnFpbEdFSDVDZk1sUm5qeDNZOTEzZVRDODFMY1R4S3M3?=
 =?utf-8?B?Sk9RalhQdDlXbE11Ukx6NU9YTFQ1Ym5OZE1PKzJrenlxallnVjBkeFg4Rmk2?=
 =?utf-8?B?Ym13aWNFYncvcjhNcU8zNW03R3dvaktEclpsNks3c1FSaDdFaWoyeGdqSG9X?=
 =?utf-8?B?bU05ZlpLbHIzcUJFV2pUUXFVWUUzMFJYVURVMmVFRWdVUEY4emQxSlpPOTFQ?=
 =?utf-8?B?Ti9YM3NzZXZTM0hsbFVjZ09PWjFEMUVnbzdoOTcwOHR3K3ZUcmc2djkraTUy?=
 =?utf-8?B?U25LZjNKbFVkNXl6bHdOdjZjeGVndGM2My9MQ2d3RC8rMDZVQk1NS2VYRkxM?=
 =?utf-8?B?b0dVRGN4a21iR0FIcmNFVTNnS0lUcThCZmcxU09MWnhJZVZONWxtTS9oUUFN?=
 =?utf-8?B?bG5kdFRaNVYra3B0NVd1QjRNc09BL2RBbHV6QnduYlUxTU9WWHJCTTAvWG9U?=
 =?utf-8?B?VFBRS1RhVjBmSllXekV1emFlOEp5WTJtbzR6SHl4dTZGYnVTU2c3UGZMbTc0?=
 =?utf-8?B?RjdsMUZvUlpSTENKaisySk1hWHdsOGhwWGJPcUxQRTdYT0xFbjNmQjVZa2pN?=
 =?utf-8?Q?Z1d26EJRVxBZR51vUzgkN+YJTbYXf+0I9H1TNX+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 349ba561-e125-416d-48f8-08d8df9fe4af
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2021 06:28:31.9891
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JtF4MopdJ5cu6q6hIM3xnNXGCpfexti6hTzOwFt1afiWMGuZXH4uZ/lz81sRriHHTpSvkWsx0e/V1tHnVjLTOhaUs5mKWXJiWJK6h17RUBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4939
Content-Type: multipart/alternative;
 boundary="------------80ACCD103B4B0997127FA0A4"
Content-Language: en-US

--------------80ACCD103B4B0997127FA0A4
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

ping

On 12/9/20 2:01 PM, Yi Zhao wrote:
> Drop backported patches:
> 0001-Mark-declaration-with-extern.patch
> 0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>
> Rebase patches:
> 0001-Fix-python3-usage.patch
> 0001-pacemaker-fix-compile-error-of-musl-libc.patch
>
> Remove /var/log directory in do_install and create /var/log/pacemaker
> directory in volatile file.
>
> Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
> ---
>   .../recipes-cgl/pacemaker/files/tmpfiles      |  3 +-
>   .../recipes-cgl/pacemaker/files/volatiles     |  1 +
>   .../pacemaker/0001-Fix-python3-usage.patch    | 34 ++++----------
>   .../0001-Mark-declaration-with-extern.patch   | 46 -------------------
>   ...maker-fix-compile-error-of-musl-libc.patch | 39 +++-------------
>   ...definition-of-curses_indented_printf.patch | 30 ------------
>   ...{pacemaker_2.0.3.bb => pacemaker_2.0.5.bb} |  5 +-
>   7 files changed, 21 insertions(+), 137 deletions(-)
>   mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
>   mode change 100755 => 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
>   delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
>   delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
>   rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb => pacemaker_2.0.5.bb} (96%)
>
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> old mode 100755
> new mode 100644
> index 979db47..765ee0d
> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
> @@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient -
>   d /var/lib/pacemaker/cores 0750 hacluster haclient -
>   d /var/lib/pacemaker/pengine 0750 hacluster haclient -
>   d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
> -d /var/run/crm 0750 hacluster haclient -
> +d /run/crm 0750 hacluster haclient -
> +d /var/log/pacemaker 0750 hacluster haclient -
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> old mode 100755
> new mode 100644
> index 1700a69..eca3002
> --- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
> @@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/cores none
>   d hacluster haclient 0750 /var/lib/pacemaker/pengine none
>   d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
>   d hacluster haclient 0750 /var/run/crm none
> +d hacluster haclient 0750 /var/log/pacemaker none
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> index 05d7a76..2095227 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
> @@ -1,4 +1,4 @@
> -From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
> +From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:00 2001
>   From: Jeremy Puhlman <jpuhlman@mvista.com>
>   Date: Sun, 15 Mar 2020 21:09:33 +0000
>   Subject: [PATCH] Fix python3 usage
> @@ -18,12 +18,11 @@ Upstream-Status: Pending
>    cts/pacemaker-cts-dummyd.in                   | 2 +-
>    daemons/fenced/fence_legacy.in                | 2 +-
>    doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
> - doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
>    tools/pcmk_simtimes.in                        | 2 +-
> - 14 files changed, 14 insertions(+), 14 deletions(-)
> + 13 files changed, 13 insertions(+), 13 deletions(-)
>   
>   diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
> -index f4ae60dc1..55a0d4ecf 100644
> +index 4bae93515..f09f71c66 100644
>   --- a/cts/CTSlab.py.in
>   +++ b/cts/CTSlab.py.in
>   @@ -1,4 +1,4 @@
> @@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
>    '''OCF IPaddr/IPaddr2 Resource Agent Test'''
>    
>   diff --git a/cts/cluster_test.in b/cts/cluster_test.in
> -index e0d28509d..f982be05a 100755
> +index 38f941d3e..5a289e3fc 100755
>   --- a/cts/cluster_test.in
>   +++ b/cts/cluster_test.in
> -@@ -171,4 +171,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_numtests"
> +@@ -172,4 +172,4 @@ printf "\nAll set to go for %d iterations!\n" "$CTS_numtests"
>        || echo "+ To use a different configuration, remove ~/.cts and re-run cts (or edit it manually)."
>    
>    echo Now paste the following command into this shell:
> @@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
>    """
>    
>   diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
> -index 2d9999ca0..8e3fb7203 100644
> +index 444402438..0270c99ce 100644
>   --- a/cts/cts-fencing.in
>   +++ b/cts/cts-fencing.in
>   @@ -1,4 +1,4 @@
> @@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
>    
>    Reads a specified number of lines from the supplied offset
>   diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
> -index 8fa16fb69..d4306b02b 100644
> +index 23e6a919f..09058ce22 100644
>   --- a/cts/cts-scheduler.in
>   +++ b/cts/cts-scheduler.in
>   @@ -1,4 +1,4 @@
> @@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
>    """
>    
>   diff --git a/cts/environment.py b/cts/environment.py
> -index db9d3db16..9d103fda9 100644
> +index 6a97b1289..39e89fa6f 100644
>   --- a/cts/environment.py
>   +++ b/cts/environment.py
>   @@ -639,7 +639,7 @@ class Environment(object):
> @@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
>    
>            sys.exit(status)
>   diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
> -index a2692b1e0..f1d111205 100644
> +index 8b0dd5165..9e8624bd9 100644
>   --- a/cts/fence_dummy.in
>   +++ b/cts/fence_dummy.in
>   @@ -1,4 +1,4 @@
> @@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
>    ----
>    ====
>    which will be replaced with the appropriate python executable when Pacemaker is
> -diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/Pacemaker_Development/pot/Ch-Python.pot
> -index ed71331ce..27c7e22e5 100644
> ---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
> -+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
> -@@ -39,7 +39,7 @@ msgstr ""
> -
> - #. Tag: screen
> - #, no-c-format
> --msgid "#!@PYTHON@"
> -+msgid "#!/usr/bin/env python3"
> - msgstr ""
> -
> - #. Tag: para
>   diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
>   index 6e362243b..28009f499 100644
>   --- a/tools/pcmk_simtimes.in
> @@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
>    """
>    
>   --
> -2.23.0
> +2.17.1
>   
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> deleted file mode 100644
> index 5729447..0000000
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> +++ /dev/null
> @@ -1,46 +0,0 @@
> -From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
> -From: Mingli Yu <mingli.yu@windriver.com>
> -Date: Thu, 3 Sep 2020 04:44:09 +0000
> -Subject: [PATCH] Mark declaration with extern
> -
> -Fixes build with gcc 10+
> -
> -Upstream-Status: Pending
> -
> -Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ----
> - daemons/attrd/pacemaker-attrd.h | 4 ++--
> - daemons/execd/pacemaker-execd.h | 2 +-
> - 2 files changed, 3 insertions(+), 3 deletions(-)
> -
> -diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-attrd.h
> -index cc8e29ee1..76778915e 100644
> ---- a/daemons/attrd/pacemaker-attrd.h
> -+++ b/daemons/attrd/pacemaker-attrd.h
> -@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
> -         gboolean seen;
> - } attribute_value_t;
> -
> --crm_cluster_t *attrd_cluster;
> --GHashTable *attributes;
> -+extern crm_cluster_t *attrd_cluster;
> -+extern GHashTable *attributes;
> -
> - #define attrd_send_ack(client, id, flags) \
> -     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__, __LINE__)
> -diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-execd.h
> -index 4a52d9183..dab3ccdbe 100644
> ---- a/daemons/execd/pacemaker-execd.h
> -+++ b/daemons/execd/pacemaker-execd.h
> -@@ -20,7 +20,7 @@
> - #    include <gnutls/gnutls.h>
> - #  endif
> -
> --GHashTable *rsc_list;
> -+extern GHashTable *rsc_list;
> -
> - typedef struct lrmd_rsc_s {
> -     char *rsc_id;
> ---
> -2.26.2
> -
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> index f8cbb7e..a10e8cd 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
> @@ -1,4 +1,4 @@
> -From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
> +From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:00 2001
>   From: Changqing Li <changqing.li@windriver.com>
>   Date: Fri, 10 Aug 2018 15:08:31 +0800
>   Subject: [PATCH] pacemaker: fix compile error of musl libc
> @@ -7,28 +7,14 @@ Upstream-Status: Pending
>   
>   Signed-off-by: Changqing Li <changqing.li@windriver.com>
>   ---
> - include/crm/stonith-ng.h | 1 +
> - lib/cib/cib_remote.c     | 3 ---
> - tools/crm_mon.c          | 2 +-
> - 3 files changed, 2 insertions(+), 4 deletions(-)
> + lib/cib/cib_remote.c | 3 ---
> + 1 file changed, 3 deletions(-)
>   
> -diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
> -index 56c1ec7..a637b47 100644
> ---- a/include/crm/stonith-ng.h
> -+++ b/include/crm/stonith-ng.h
> -@@ -28,6 +28,7 @@
> - #  include <dlfcn.h>
> - #  include <errno.h>
> - #  include <stdbool.h>
> -+#  include <time.h>
> -
> - /* TO-DO: Work out how to drop this requirement */
> - #  include <libxml/tree.h>
>   diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
> -index 4d7b93b..8be8ecc 100644
> +index 4de0a0f7b..7686637db 100644
>   --- a/lib/cib/cib_remote.c
>   +++ b/lib/cib/cib_remote.c
> -@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
> +@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
>    #endif
>    
>    #include <arpa/inet.h>
> @@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
>    
>    #define DH_BITS 1024
>    
> -diff --git a/tools/crm_mon.c b/tools/crm_mon.c
> -index 7c63803..1ae6c21 100644
> ---- a/tools/crm_mon.c
> -+++ b/tools/crm_mon.c
> -@@ -553,7 +553,7 @@ main(int argc, char **argv)
> -
> - #if !defined (ON_DARWIN) && !defined (ON_BSD)
> -     /* prevent zombies */
> --    signal(SIGCLD, SIG_IGN);
> -+    signal(SIGCHLD, SIG_IGN);
> - #endif
> -
> -     if (crm_ends_with_ext(argv[0], ".cgi") == TRUE) {
>   --
> -2.7.4
> +2.17.1
>   
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> deleted file mode 100644
> index f5e1829..0000000
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
> +++ /dev/null
> @@ -1,30 +0,0 @@
> -From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
> -From: Chris Lumens <clumens@redhat.com>
> -Date: Thu, 2 Jan 2020 15:08:58 -0500
> -Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_printf.
> -
> -The placeholder version that is built if curses is not enabled does not
> -have a type that matches the header file.  Correct that.
> -
> -Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
> -Upstream-Status: Backport[git]
> ----
> - tools/crm_mon_curses.c | 2 +-
> - 1 file changed, 1 insertion(+), 1 deletion(-)
> -
> -diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
> -index c0dbedbf0..ecd0584fe 100644
> ---- a/tools/crm_mon_curses.c
> -+++ b/tools/crm_mon_curses.c
> -@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const char *format, va_list args) {
> -
> - G_GNUC_PRINTF(2, 3)
> - void
> --curses_indented_printf(pcmk__output_t *out, const char *format, va_list args) {
> -+curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
> -     return;
> - }
> -
> ---
> -2.23.0
> -
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> similarity index 96%
> rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> index 8576f18..6cfa057 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
> @@ -14,9 +14,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=000212f361a81b100d9d0f0435040663"
>   DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
>   
>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
> -           file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch \
>              file://0001-Fix-python3-usage.patch \
> -           file://0001-Mark-declaration-with-extern.patch \
>              file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
>              file://volatiles \
>              file://tmpfiles \
> @@ -26,7 +24,7 @@ CFLAGS += "-I${STAGING_INCDIR}/heartbeat"
>   CPPFLAGS +="-I${STAGING_INCDIR}/heartbeat"
>   SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc.patch"
>   
> -SRCREV = "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"
> +SRCREV = "ba59be71228fed04f78ab374dfac748d314d0e89"
>   
>   inherit autotools-brokensep pkgconfig systemd python3native python3-dir useradd
>   
> @@ -78,6 +76,7 @@ do_install_append() {
>   
>       rm -rf ${D}${localstatedir}/lib/heartbeat
>       rm -rf ${D}${localstatedir}/run
> +    rm -rf ${D}${localstatedir}/log
>   
>       # remove buildpath
>       tempdirs=$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F: '{print $1}' | uniq)
>
> 
>

--------------80ACCD103B4B0997127FA0A4
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>ping <br>
    </p>
    <div class="moz-cite-prefix">On 12/9/20 2:01 PM, Yi Zhao wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20201209060111.97275-1-yi.zhao@windriver.com">
      <pre class="moz-quote-pre" wrap="">Drop backported patches:
0001-Mark-declaration-with-extern.patch
0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch

Rebase patches:
0001-Fix-python3-usage.patch
0001-pacemaker-fix-compile-error-of-musl-libc.patch

Remove /var/log directory in do_install and create /var/log/pacemaker
directory in volatile file.

Signed-off-by: Yi Zhao <a class="moz-txt-link-rfc2396E" href="mailto:yi.zhao@windriver.com">&lt;yi.zhao@windriver.com&gt;</a>
---
 .../recipes-cgl/pacemaker/files/tmpfiles      |  3 +-
 .../recipes-cgl/pacemaker/files/volatiles     |  1 +
 .../pacemaker/0001-Fix-python3-usage.patch    | 34 ++++----------
 .../0001-Mark-declaration-with-extern.patch   | 46 -------------------
 ...maker-fix-compile-error-of-musl-libc.patch | 39 +++-------------
 ...definition-of-curses_indented_printf.patch | 30 ------------
 ...{pacemaker_2.0.3.bb =&gt; pacemaker_2.0.5.bb} |  5 +-
 7 files changed, 21 insertions(+), 137 deletions(-)
 mode change 100755 =&gt; 100644 meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
 mode change 100755 =&gt; 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_2.0.3.bb =&gt; pacemaker_2.0.5.bb} (96%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
old mode 100755
new mode 100644
index 979db47..765ee0d
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/tmpfiles
@@ -3,4 +3,5 @@ d /var/lib/pacemaker/cib 0750 hacluster haclient -
 d /var/lib/pacemaker/cores 0750 hacluster haclient -
 d /var/lib/pacemaker/pengine 0750 hacluster haclient -
 d /var/lib/pacemaker/blackbox 0750 hacluster haclient -
-d /var/run/crm 0750 hacluster haclient -
+d /run/crm 0750 hacluster haclient -
+d /var/log/pacemaker 0750 hacluster haclient -
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
old mode 100755
new mode 100644
index 1700a69..eca3002
--- a/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
+++ b/meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
@@ -4,3 +4,4 @@ d hacluster haclient 0750 /var/lib/pacemaker/cores none
 d hacluster haclient 0750 /var/lib/pacemaker/pengine none
 d hacluster haclient 0750 /var/lib/pacemaker/blackbox none
 d hacluster haclient 0750 /var/run/crm none
+d hacluster haclient 0750 /var/log/pacemaker none
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
index 05d7a76..2095227 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Fix-python3-usage.patch
@@ -1,4 +1,4 @@
-From fdefa9efc726fe704238d462a3dc207e0282fb9e Mon Sep 17 00:00:00 2001
+From f470884e0b990676685c8740b5c7d6f094267e4f Mon Sep 17 00:00:00 2001
 From: Jeremy Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>
 Date: Sun, 15 Mar 2020 21:09:33 +0000
 Subject: [PATCH] Fix python3 usage
@@ -18,12 +18,11 @@ Upstream-Status: Pending
  cts/pacemaker-cts-dummyd.in                   | 2 +-
  daemons/fenced/fence_legacy.in                | 2 +-
  doc/Pacemaker_Development/en-US/Ch-Python.txt | 2 +-
- doc/Pacemaker_Development/pot/Ch-Python.pot   | 2 +-
  tools/pcmk_simtimes.in                        | 2 +-
- 14 files changed, 14 insertions(+), 14 deletions(-)
+ 13 files changed, 13 insertions(+), 13 deletions(-)
 
 diff --git a/cts/CTSlab.py.in b/cts/CTSlab.py.in
-index f4ae60dc1..55a0d4ecf 100644
+index 4bae93515..f09f71c66 100644
 --- a/cts/CTSlab.py.in
 +++ b/cts/CTSlab.py.in
 @@ -1,4 +1,4 @@
@@ -43,10 +42,10 @@ index 81a5da8c0..bbadf938a 100644
  '''OCF IPaddr/IPaddr2 Resource Agent Test'''
  
 diff --git a/cts/cluster_test.in b/cts/cluster_test.in
-index e0d28509d..f982be05a 100755
+index 38f941d3e..5a289e3fc 100755
 --- a/cts/cluster_test.in
 +++ b/cts/cluster_test.in
-@@ -171,4 +171,4 @@ printf &quot;\nAll set to go for %d iterations!\n&quot; &quot;$CTS_numtests&quot;
+@@ -172,4 +172,4 @@ printf &quot;\nAll set to go for %d iterations!\n&quot; &quot;$CTS_numtests&quot;
      || echo &quot;+ To use a different configuration, remove ~/.cts and re-run cts (or edit it manually).&quot;
  
  echo Now paste the following command into this shell:
@@ -63,7 +62,7 @@ index 592d850b4..9a653a442 100644
  &quot;&quot;&quot;
  
 diff --git a/cts/cts-fencing.in b/cts/cts-fencing.in
-index 2d9999ca0..8e3fb7203 100644
+index 444402438..0270c99ce 100644
 --- a/cts/cts-fencing.in
 +++ b/cts/cts-fencing.in
 @@ -1,4 +1,4 @@
@@ -83,7 +82,7 @@ index 28f4efe7f..b4ed5024f 100644
  
  Reads a specified number of lines from the supplied offset
 diff --git a/cts/cts-scheduler.in b/cts/cts-scheduler.in
-index 8fa16fb69..d4306b02b 100644
+index 23e6a919f..09058ce22 100644
 --- a/cts/cts-scheduler.in
 +++ b/cts/cts-scheduler.in
 @@ -1,4 +1,4 @@
@@ -93,7 +92,7 @@ index 8fa16fb69..d4306b02b 100644
  &quot;&quot;&quot;
  
 diff --git a/cts/environment.py b/cts/environment.py
-index db9d3db16..9d103fda9 100644
+index 6a97b1289..39e89fa6f 100644
 --- a/cts/environment.py
 +++ b/cts/environment.py
 @@ -639,7 +639,7 @@ class Environment(object):
@@ -106,7 +105,7 @@ index db9d3db16..9d103fda9 100644
  
          sys.exit(status)
 diff --git a/cts/fence_dummy.in b/cts/fence_dummy.in
-index a2692b1e0..f1d111205 100644
+index 8b0dd5165..9e8624bd9 100644
 --- a/cts/fence_dummy.in
 +++ b/cts/fence_dummy.in
 @@ -1,4 +1,4 @@
@@ -148,19 +147,6 @@ index 42d35b649..467e1c524 100644
  ----
  ====
  which will be replaced with the appropriate python executable when Pacemaker is
-diff --git a/doc/Pacemaker_Development/pot/Ch-Python.pot b/doc/Pacemaker_Development/pot/Ch-Python.pot
-index ed71331ce..27c7e22e5 100644
---- a/doc/Pacemaker_Development/pot/Ch-Python.pot
-+++ b/doc/Pacemaker_Development/pot/Ch-Python.pot
-@@ -39,7 +39,7 @@ msgstr &quot;&quot;
- 
- #. Tag: screen
- #, no-c-format
--msgid &quot;#!@PYTHON@&quot;
-+msgid &quot;#!/usr/bin/env python3&quot;
- msgstr &quot;&quot;
- 
- #. Tag: para
 diff --git a/tools/pcmk_simtimes.in b/tools/pcmk_simtimes.in
 index 6e362243b..28009f499 100644
 --- a/tools/pcmk_simtimes.in
@@ -172,5 +158,5 @@ index 6e362243b..28009f499 100644
  &quot;&quot;&quot;
  
 -- 
-2.23.0
+2.17.1
 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
deleted file mode 100644
index 5729447..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
-From: Mingli Yu <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>
-Date: Thu, 3 Sep 2020 04:44:09 +0000
-Subject: [PATCH] Mark declaration with extern
-
-Fixes build with gcc 10+
-
-Upstream-Status: Pending
-
-Signed-off-by: Mingli Yu <a class="moz-txt-link-rfc2396E" href="mailto:mingli.yu@windriver.com">&lt;mingli.yu@windriver.com&gt;</a>
----
- daemons/attrd/pacemaker-attrd.h | 4 ++--
- daemons/execd/pacemaker-execd.h | 2 +-
- 2 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-attrd.h
-index cc8e29ee1..76778915e 100644
---- a/daemons/attrd/pacemaker-attrd.h
-+++ b/daemons/attrd/pacemaker-attrd.h
-@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
-         gboolean seen;
- } attribute_value_t;
- 
--crm_cluster_t *attrd_cluster;
--GHashTable *attributes;
-+extern crm_cluster_t *attrd_cluster;
-+extern GHashTable *attributes;
- 
- #define attrd_send_ack(client, id, flags) \
-     crm_ipcs_send_ack((client), (id), (flags), &quot;ack&quot;, __FUNCTION__, __LINE__)
-diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-execd.h
-index 4a52d9183..dab3ccdbe 100644
---- a/daemons/execd/pacemaker-execd.h
-+++ b/daemons/execd/pacemaker-execd.h
-@@ -20,7 +20,7 @@
- #    include &lt;gnutls/gnutls.h&gt;
- #  endif
- 
--GHashTable *rsc_list;
-+extern GHashTable *rsc_list;
- 
- typedef struct lrmd_rsc_s {
-     char *rsc_id;
--- 
-2.26.2
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
index f8cbb7e..a10e8cd 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-compile-error-of-musl-libc.patch
@@ -1,4 +1,4 @@
-From 51b0df9242bb1e3eb41362381472a00727910f64 Mon Sep 17 00:00:00 2001
+From ba9e4810a09893521d28f6c699fb7f213d4a4b34 Mon Sep 17 00:00:00 2001
 From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
 Date: Fri, 10 Aug 2018 15:08:31 +0800
 Subject: [PATCH] pacemaker: fix compile error of musl libc
@@ -7,28 +7,14 @@ Upstream-Status: Pending
 
 Signed-off-by: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>
 ---
- include/crm/stonith-ng.h | 1 +
- lib/cib/cib_remote.c     | 3 ---
- tools/crm_mon.c          | 2 +-
- 3 files changed, 2 insertions(+), 4 deletions(-)
+ lib/cib/cib_remote.c | 3 ---
+ 1 file changed, 3 deletions(-)
 
-diff --git a/include/crm/stonith-ng.h b/include/crm/stonith-ng.h
-index 56c1ec7..a637b47 100644
---- a/include/crm/stonith-ng.h
-+++ b/include/crm/stonith-ng.h
-@@ -28,6 +28,7 @@
- #  include &lt;dlfcn.h&gt;
- #  include &lt;errno.h&gt;
- #  include &lt;stdbool.h&gt;
-+#  include &lt;time.h&gt;
- 
- /* TO-DO: Work out how to drop this requirement */
- #  include &lt;libxml/tree.h&gt;
 diff --git a/lib/cib/cib_remote.c b/lib/cib/cib_remote.c
-index 4d7b93b..8be8ecc 100644
+index 4de0a0f7b..7686637db 100644
 --- a/lib/cib/cib_remote.c
 +++ b/lib/cib/cib_remote.c
-@@ -53,9 +53,6 @@ typedef void gnutls_session_t;
+@@ -45,9 +45,6 @@ typedef void gnutls_session_t;
  #endif
  
  #include &lt;arpa/inet.h&gt;
@@ -38,19 +24,6 @@ index 4d7b93b..8be8ecc 100644
  
  #define DH_BITS 1024
  
-diff --git a/tools/crm_mon.c b/tools/crm_mon.c
-index 7c63803..1ae6c21 100644
---- a/tools/crm_mon.c
-+++ b/tools/crm_mon.c
-@@ -553,7 +553,7 @@ main(int argc, char **argv)
- 
- #if !defined (ON_DARWIN) &amp;&amp; !defined (ON_BSD)
-     /* prevent zombies */
--    signal(SIGCLD, SIG_IGN);
-+    signal(SIGCHLD, SIG_IGN);
- #endif
- 
-     if (crm_ends_with_ext(argv[0], &quot;.cgi&quot;) == TRUE) {
 -- 
-2.7.4
+2.17.1
 
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
deleted file mode 100644
index f5e1829..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
-From: Chris Lumens <a class="moz-txt-link-rfc2396E" href="mailto:clumens@redhat.com">&lt;clumens@redhat.com&gt;</a>
-Date: Thu, 2 Jan 2020 15:08:58 -0500
-Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_printf.
-
-The placeholder version that is built if curses is not enabled does not
-have a type that matches the header file.  Correct that.
-
-Signed-off-by: Jeremy A. Puhlman <a class="moz-txt-link-rfc2396E" href="mailto:jpuhlman@mvista.com">&lt;jpuhlman@mvista.com&gt;</a>
-Upstream-Status: Backport[git]
----
- tools/crm_mon_curses.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
-index c0dbedbf0..ecd0584fe 100644
---- a/tools/crm_mon_curses.c
-+++ b/tools/crm_mon_curses.c
-@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const char *format, va_list args) {
- 
- G_GNUC_PRINTF(2, 3)
- void
--curses_indented_printf(pcmk__output_t *out, const char *format, va_list args) {
-+curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
-     return;
- }
- 
--- 
-2.23.0
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
similarity index 96%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
index 8576f18..6cfa057 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
@@ -14,9 +14,7 @@ LIC_FILES_CHKSUM = <a class="moz-txt-link-rfc2396E" href="file://COPYING;md5=000212f361a81b100d9d0f0435040663">&quot;file://COPYING;md5=000212f361a81b100d9d0f0435040663&quot;</a>
 DEPENDS = &quot;corosync libxslt libxml2 gnutls resource-agents libqb python3-native&quot;
 
 SRC_URI = &quot;git://github.com/ClusterLabs/${BPN}.git \
-           <a class="moz-txt-link-freetext" href="file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch">file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch</a> \
            <a class="moz-txt-link-freetext" href="file://0001-Fix-python3-usage.patch">file://0001-Fix-python3-usage.patch</a> \
-           <a class="moz-txt-link-freetext" href="file://0001-Mark-declaration-with-extern.patch">file://0001-Mark-declaration-with-extern.patch</a> \
            <a class="moz-txt-link-freetext" href="file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch">file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch</a> \
            <a class="moz-txt-link-freetext" href="file://volatiles">file://volatiles</a> \
            <a class="moz-txt-link-freetext" href="file://tmpfiles">file://tmpfiles</a> \
@@ -26,7 +24,7 @@ CFLAGS += &quot;-I${STAGING_INCDIR}/heartbeat&quot;
 CPPFLAGS +=&quot;-I${STAGING_INCDIR}/heartbeat&quot;
 SRC_URI_append_libc-musl = <a class="moz-txt-link-rfc2396E" href="file://0001-pacemaker-fix-compile-error-of-musl-libc.patch">&quot;file://0001-pacemaker-fix-compile-error-of-musl-libc.patch&quot;</a>
 
-SRCREV = &quot;4b1f869f0f64ef0d248b6aa4781d38ecccf83318&quot;
+SRCREV = &quot;ba59be71228fed04f78ab374dfac748d314d0e89&quot;
 
 inherit autotools-brokensep pkgconfig systemd python3native python3-dir useradd
 
@@ -78,6 +76,7 @@ do_install_append() {
 
     rm -rf ${D}${localstatedir}/lib/heartbeat
     rm -rf ${D}${localstatedir}/run
+    rm -rf ${D}${localstatedir}/log
 
     # remove buildpath
     tempdirs=$(grep -Rn ${RECIPE_SYSROOT_NATIVE} ${D}/* | awk -F: '{print $1}' | uniq)
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">


</pre>
    </blockquote>
  </body>
</html>

--------------80ACCD103B4B0997127FA0A4--
