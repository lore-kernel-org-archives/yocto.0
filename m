Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.481.1613668972812344512
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Feb 2021 09:22:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=MyvOZh5O;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: randy.macleod@windriver.com)
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-eopbgr750084.outbound.protection.outlook.com [40.107.75.84])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2402E38C0575
	for <yocto@yoctoproject.org>; Thu, 18 Feb 2021 17:22:52 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zo7n/Prjnc5LniVqyenC/6ioA2hec3ySWO70EiWS4VOPl8OVOLgIGrkPw5sekpyEdIVz/qT2ObPiIg80tKfu5m/sCE2cJ3F24+ZjNz6ZTP/rxxcYkKC2rlPL7nCEVes76br6leOKlhSQFbNon4cdTYCuKzJzgpbtFTIVxzLb+daJUc2XZl187KJgs0vfqlU1RptBuRLiOvk1zJmg7aBatwQkakjaZ90br8lYOq6lEozC3PMQ0IcDE5Ak10mAv4Atu3mymqTapjoVl0APDQ+08gk4hk5SaQFGDwcee1ZcfzzLel7/48/TXbidv2Iq57KImJyhjz0nCRabmd55SzJ2ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZnM0GEl6R0ksVPbMxNCUGWBL03lPYbq4YZfugZAHTkQ=;
 b=BM9zfJRpGWuBNv/xkQusU/PAhtXuHqB09Ge0eDi8islLpoYKuan7KPkJpo5QR+Kaf7ZjjzixnxVDfdFJWgaqVc9ueT8rx0EkKNtRB5Yj57Wva2AYkHoNnpF2FZkSOHqpWH5qa3q6hnNksTI4Qa9CxpMQIqWLEP49lRjF2ga7ALsoxkLQsGy8v5rsc5CKRJw5R2dWGVjCR3L8gYJx7F4UZGJ2wBuoB2DYg2WHplmuOf5RCSRP9IW1KS3NMGyGIqbZ3Dg7QSpOk90Ltl0Vm4q8YJl840pnWh9Z1S50a/RVClJFxnTS/abbjc8Lzkl/UqmY64rIczLlUSK1br2uE9s9+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZnM0GEl6R0ksVPbMxNCUGWBL03lPYbq4YZfugZAHTkQ=;
 b=MyvOZh5O0R9SVwL/ON24sEcgb1nfhwvqDrIY2rEqyOX/cU5PAX3rMx66bGYHJ8pn+h1S8Xr3JTx5A+GdPisa8LklwpGxtCUAbFov9VHufwZ1OHpPKr9PnHLVMc9i0j1bBzaxz4ruZA6y7qE5M1vK9mm29vaXcA8fTgJ9bsDpHj8=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB3994.namprd11.prod.outlook.com (2603:10b6:5:193::19)
 by DM5PR1101MB2188.namprd11.prod.outlook.com (2603:10b6:4:53::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.29; Thu, 18 Feb
 2021 17:22:50 +0000
Received: from DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e]) by DM6PR11MB3994.namprd11.prod.outlook.com
 ([fe80::8e2:471a:7b63:1a0e%7]) with mapi id 15.20.3846.042; Thu, 18 Feb 2021
 17:22:50 +0000
Subject: Re: [yocto] [meta-selinux][PATCH] remove obsolete e2fsprogs bbappend
To: joe_macdonald@mentor.com
References: <20210208063209.25651-1-hongxu.jia@windriver.com>
Cc: hongxu <hongxu.jia@windriver.com>, yocto@yoctoproject.org,
 yi.zhao@windriver.com
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <79cdb2a7-f542-bd36-1244-acdb0d4d3d37@windriver.com>
Date: Thu, 18 Feb 2021 12:22:46 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20210208063209.25651-1-hongxu.jia@windriver.com>
X-Originating-IP: [198.48.226.187]
X-ClientProxiedBy: BYAPR08CA0032.namprd08.prod.outlook.com
 (2603:10b6:a03:100::45) To DM6PR11MB3994.namprd11.prod.outlook.com
 (2603:10b6:5:193::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [172.25.44.2] (198.48.226.187) by BYAPR08CA0032.namprd08.prod.outlook.com (2603:10b6:a03:100::45) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.27 via Frontend Transport; Thu, 18 Feb 2021 17:22:49 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 542e244a-eab6-47d1-f422-08d8d431d132
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2188:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM5PR1101MB218850AABE10FE178725EB3FF8859@DM5PR1101MB2188.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	e7R+mxYRc2yUKz70bCrgEwFqHsbylqp+lNen1ICG6xCvT36eJBcXLvy8D+pQR0t4deEd8ahLlddiTfCsuHYZLJYbE3DnvYzxZMOjAT4Vzrza3Spw/C/G0amEJzpX2BwRI3YrMNo9ws40arlR+1zph9TPXBa2PDr/XhwxvFuy/4ijkoNB33tRTlZ2rc7U1Y7GNe5RA9ZlSNE3JFZERynlz/yYNA4LP7H6pUTOOtLChWZwj8xS8ItI5LP4JMxDUOpqwxrtRoVPHA+6yAroHMr1mRaCEfWMbmorkcv/zE/vOtmiRCZwKGn4vf1Js7hJw3Fr2nl1TLCgLFoVhB7DMs1tUrfo2GM3thQYfxVI/6tG+h/nzN5VwHxsuya8Ck1IDQuv/RMp8OpbWq/Vy3QxVcoCij1n4Lz7ac0QTGvL6+7eNBxcgl9XERFRkSShgFC13LB08ENwdvr2ICh0jBpnGRdRJvTQP0pDFZz55pAFuM7Tu75jHATP3X8bZCKKQPKE1fICMPAT40xBxCmRJCgv2pfbqgKjLMfEuon0GKLl0F0Kim2XaythuOzsfzUmLWRUU1tyKkzjLwAPblm/e3VIupcaUFyFkEiCpZOfc9C7MvyJlc+qPU2Xguqh/ABn5nxfMcYVdwz92oKlslP9T84Ler8nx1dhgNZSzhkXSGKYaDxeytgxVakX2Cb6/E1eXsPenM/U
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB3994.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(39850400004)(136003)(396003)(376002)(6486002)(8676002)(31686004)(26005)(186003)(6916009)(478600001)(6666004)(8936002)(53546011)(83380400001)(5660300002)(2906002)(966005)(16526019)(4326008)(31696002)(36756003)(316002)(86362001)(66476007)(66946007)(2616005)(16576012)(107886003)(956004)(66556008)(52116002)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?VWVhbHYwYXhGS2pwb0w5ZUtVM1JIcFhDMHUxaU5ZdmJlUXd1TjBnSllBbU1T?=
 =?utf-8?B?U3lNSUJnTVZiS2h2NlFGV2xPRnB6NXBGOUlhYzRYeVo0ZzZpRHh2NWtKVGF4?=
 =?utf-8?B?dG95RDBqaTBaRkJYWG05ZFYxcWR4V0cvZVNuOVN2R3VGQy9PSjUvSmMxVk5L?=
 =?utf-8?B?amxya0x6L08yREhBVGFCaGY1RUJTSjlyY0dVZUVVOVZlTVZOZ2ZzZS9yQ3RE?=
 =?utf-8?B?S25Tdk5HZ1pFb25PT3dNL29SdHFBUjRxS2p5UDZrTDJ0Zjc2TkovQ21DcHlk?=
 =?utf-8?B?R0NJblQxUjhrTzNtalR5VUVHYjc1L1ZKTWE5R1FvdG4ySktONTZDOUhGVldX?=
 =?utf-8?B?YWpidWN3TnBNRmFzYnhOUGluVXFTRnl0cXFjSnNXd0JkbFI2OHRLMDJwNjhl?=
 =?utf-8?B?dDZSaVNzdjFGYVhoRWNLVE41Ni9FRVdpdy9ESExOdTBmZzZKZm05Sy9SRnBz?=
 =?utf-8?B?UDJnZldFTXV3RDZFRmMvVjZXSmw4RWhucGJjOHVJKy93b09pRkQ1Sk8vMTh1?=
 =?utf-8?B?L3FCYmhZeHpNUmNrVXlsSS9ZZ1hqaFQzZFNWQjMySXMvUUh0WFZXdkNqdUR5?=
 =?utf-8?B?cGszVmZEYnZTVDlweVdtRXhBN3VMRnNnWnlhK3dWcXpocDdDNWt5MWRDVURn?=
 =?utf-8?B?OHovN1VURnBpY3RmeXJqV3JudW1lV1BhTWNBVlVndmlON2xRbUhrWjlmUmhM?=
 =?utf-8?B?TmJzNXlobkx6ZzRMNTkyL1FCOU5xUmQ4amNVbS9uMnFMWWt5UGR4Z0FDQ24y?=
 =?utf-8?B?T2lZTDVieDlENEdaWnVEdjdUemxrUjk2S3ZSbXNyZFhKcnVEZTBpaUJ2d2l5?=
 =?utf-8?B?ZjhMdDZZSmRWY25vTTB1cjFESGk4OCs1Y244L1B0aVFmL3Ayazlidk1UMEYy?=
 =?utf-8?B?TlMybVBGdEVwYkNkRFIzcGxROCtVT21nNDBUcmllRS9wdmpvQlZPeDdRam9Z?=
 =?utf-8?B?YlM0Mkt6K2NoYVhpYVZyU0prV3dRNHdUb1dRcG9kcjZscFo5ckNZMzFLWDFj?=
 =?utf-8?B?a29wVVVwVksycmJETk5SdVcwVHR5OGVSUGtGS1NHdjlhTGkveElnUVVvc204?=
 =?utf-8?B?dW0xakE0U2pIMjR5TTIwMTV2NWw1L255ajBqd2dzMUpUUk03eU9PNndwUHM1?=
 =?utf-8?B?LzRFN01FTFZsYWx5TldOMjJkaWhGd0JUUWdkQ3NDNzd0MUNrRGFWSTdycGw1?=
 =?utf-8?B?RnNhazgzaWVIUVl0cHdpR0JPa0hkVUNJQ0FMWEFMc0FVY1orUlk0aHYxKzNx?=
 =?utf-8?B?SXlXcURjUUFoOHNVL2V0aHl1VzZISG0wNVhLb2EyS1BqUTF2bWt2emNKbFRM?=
 =?utf-8?B?U0M3T3FOZkM4VmF2dkhIR1NCekZYNk45ZGs3WHhSNWNKODltWEVSVnV5QmlJ?=
 =?utf-8?B?Vlc0WTVBUkdBUjUvNjBoZTB2QmFueUg0L1VJRVVIMS9ZYmY2eGE2YzdWQk0v?=
 =?utf-8?B?QWlhcnRDbWswMURPVjI2bW5wdUVtWmliMU1IUFIzVE9iTVhlQURUMUxDUGNi?=
 =?utf-8?B?bXFrbm1LZTJZa3hlQ3NmNWZxVUJMMzJkdHVFYmlQOGpMWHNqYUpieDJEY0dD?=
 =?utf-8?B?QnptRW1CS3djWkQwR2NyWjROcGsxZ1k5M2lRK1RzVThrdUNwNUNvbThLN0Rr?=
 =?utf-8?B?TDJFcHZ2LzBZblVaVUQ4bDI1b2I2QzhmVzhnNXd2MVd1dlRtdmtZNHJFb1cr?=
 =?utf-8?B?RHRsNDlMaFNVTGhueERzRVlMMkpBVS9LQjJta1NVSlUyRU9ndVlRb3J6a0p2?=
 =?utf-8?Q?80KzG6cnhrpc2wkKJRh4AzFadAfPnL7OaTSH4SN?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 542e244a-eab6-47d1-f422-08d8d431d132
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3994.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Feb 2021 17:22:50.2827
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lljk9gybR73r8cEVZhCmFRELZoycoJBmyTpJLrIwK4SB4Fk1Sy8hcWSpetWM+DAqzJVsewpjFcmd8OrWtdc3aLnZ5/5qaRcSk9mVrcMtN68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2188
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2021-02-08 1:32 a.m., hongxu wrote:
> Since oe-core commit [f51835e022 e2fsprogs: upgrade 1.45.6 -> 1.45.7] applied,
> the backport misc_create_inode.c-label_rootfs.patch is not required
> 
> The lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch is not used by the recipe,
> so also remove it.
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>

Ping Joe...

../Randy

> ---
>   .../e2fsprogs/e2fsprogs_%.bbappend            |  1 -
>   .../e2fsprogs/e2fsprogs_selinux.inc           |  3 --
>   ...t2fs-ext2_ext_attr.h-add-xattr-index.patch | 20 ---------
>   .../misc_create_inode.c-label_rootfs.patch    | 45 -------------------
>   4 files changed, 69 deletions(-)
>   delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
>   delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
>   delete mode 100644 recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
>   delete mode 100644 recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
> 
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
> deleted file mode 100644
> index 7719d3b..0000000
> --- a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
> +++ /dev/null
> @@ -1 +0,0 @@
> -require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
> diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc b/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
> deleted file mode 100644
> index 9cbb7fe..0000000
> --- a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> -
> -SRC_URI += "file://misc_create_inode.c-label_rootfs.patch"
> diff --git a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch b/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
> deleted file mode 100644
> index b87c414..0000000
> --- a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -Add xattr name index for xattrs with the 'security' prefix. These are defined
> -in the ext(2|3|4)/xattr.h in the kernel. We use the EXT2 prefix for consistency
> -with e2fslibs naming.
> -
> -Signed-off-by: Philip Tricca <flihp@twobit.us>
> -
> -Index: e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
> -===================================================================
> ---- e2fsprogs-1.42.9.orig/lib/ext2fs/ext2_ext_attr.h
> -+++ e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
> -@@ -15,6 +15,9 @@
> - /* Maximum number of references to one attribute block */
> - #define EXT2_EXT_ATTR_REFCOUNT_MAX	1024
> -
> -+/* Name indexes */
> -+#define EXT2_XATTR_INDEX_SECURITY               6
> -+
> - struct ext2_ext_attr_header {
> - 	__u32	h_magic;	/* magic number for identification */
> - 	__u32	h_refcount;	/* reference count */
> diff --git a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch b/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
> deleted file mode 100644
> index 046e521..0000000
> --- a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
> +++ /dev/null
> @@ -1,45 +0,0 @@
> -From: Philip Tricca <flihp@twobit.us>
> -To: tytso@mit.edu
> -Cc: liezhi.yang@windriver.com
> -Date: Sat, 20 Feb 2016 18:58:58 +0000
> -Subject: [PATCH] misc/create_inode.c: Copy xattrs from root directory when populating fs.
> -
> -When copying a file system using the -d option the xattrs from the root
> -directory need to be copied before the populate_fs recusion starts.
> -
> -Signed-off-by: Philip Tricca <flihp@twobit.us>
> -Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
> -
> ----
> - misc/create_inode.c | 8 ++++++++
> - 1 file changed, 8 insertions(+)
> -
> -diff --git a/misc/create_inode.c b/misc/create_inode.c
> -index a7b6d348..cfd15922 100644
> ---- a/misc/create_inode.c
> -+++ b/misc/create_inode.c
> -@@ -979,6 +979,13 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
> - 		return retval;
> - 	}
> -
> -+	retval = set_inode_xattr(fs, root, source_dir);
> -+	if (retval) {
> -+		com_err(__func__, retval,
> -+			_("while setting xattrs for \"%s\""), source_dir);
> -+		goto out;
> -+	}
> -+
> - 	file_info.path_len = 0;
> - 	file_info.path_max_len = 255;
> - 	file_info.path = calloc(file_info.path_max_len, 1);
> -@@ -987,6 +994,7 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
> - 			       &file_info, fs_callbacks);
> -
> - 	free(file_info.path);
> -+out:
> - 	free(hdlinks.hdl);
> - 	return retval;
> - }
> ---
> -2.11.1
> -
> 
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
