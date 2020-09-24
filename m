Received: from NAM11-CO1-obe.outbound.protection.outlook.com (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.86])
 by mx.groups.io with SMTP id smtpd.web10.11478.1600933949918801008
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Sep 2020 00:52:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Ija6KKGc;
 spf=pass (domain: windriver.com, ip: 40.107.220.86, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RnbvOlmpnfIxpKF+infIpHtDhepGJhk6Lo7JNtoXHiQcpS3l5tYoD9eI1hAGLwwj5CM+yf/Yro7YkVSRzptJ+HNdzmT8UTxPESYSwH/HqwWh5tsD6AajAD6Ggu5QgpXO1kpQFAS2++asZFl8qf3gBLo4xhIlB6G9XUsrK7qIfTBxUrz6F+ZK+QDdqesvF/Fp7GKcNi8a469DiCkFuPVi7puBoeDvjPhjrl/o+5kQqu0MnjNKN8izg6XgvsVBH8OQX49sJgAkvQAecHNQG2pFINQlRQiQaeYkutKfGSKdD6edFTqi370bJxGTIPql/oYBl963RjEG9nk6I/umVQRO2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wr5HyOUQwlYJCeOmBp1FhkRoFhpds0E3vwR82/8NV/M=;
 b=CraQlKxSA2wtnZDwZVIo5trrQ2CmVhL1Pi0ETDJmzU8fyzk8OG0FTa1Y7n7S/DsmlKXRdpqonWMiMG52awKCtT7WjsBRx1qKKdjU2GI1dd5UIzkh4EjNup6tQ1CqK6NBKtFM1Re3IWH/S3MxqZHlyT5ekk/M4HRccRlhSI8E2ixjjTza/z0Gzcz0QX2/cpFgAinCeWjzk1aJ7t4rDgWevYr1ygTtLxQTWthUtzl3XOL/GK5smIHF6TDsRMD5CzbC6usPQphmEwcYR775fihw4kBZRL+1GNaWp5Lv2k/ExdqPy8dfoZeOTrqUEBVBn+RncNHGE+tw2dDkK6CoTWb9FA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wr5HyOUQwlYJCeOmBp1FhkRoFhpds0E3vwR82/8NV/M=;
 b=Ija6KKGcXmd5VJfedjrlL10zO7rgiqtr0cRvEFc4Qt9eQMjm69ibM8yN3OUrRAtTfTvMeFXII7CtwAA5v6Yxoye1DPc1nYrkFE/QouAGqIw75WLnSLDRiKX8o2pLmq/af6BsOYeHEwWgezS4z/hh+ZtM20BhOnGnC1OAtObeiFA=
Authentication-Results: mvista.com; dkim=none (message not signed)
 header.d=none;mvista.com; dmarc=none action=none header.from=windriver.com;
Received: from BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 by BY5PR11MB4418.namprd11.prod.outlook.com (2603:10b6:a03:1cc::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.19; Thu, 24 Sep
 2020 07:52:27 +0000
Received: from BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::dc3d:f132:1438:7e10]) by BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::dc3d:f132:1438:7e10%7]) with mapi id 15.20.3391.026; Thu, 24 Sep 2020
 07:52:27 +0000
Subject: Re: [yocto] [meta-cgl][PATCH] pacemaker: Fix build with -fno-common
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
References: <163130EAF872AF12.8972@lists.yoctoproject.org>
Message-ID: <47f888a2-0aa6-550f-354a-245e2d1825fd@windriver.com>
Date: Thu, 24 Sep 2020 15:51:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <163130EAF872AF12.8972@lists.yoctoproject.org>
X-ClientProxiedBy: SL2P216CA0002.KORP216.PROD.OUTLOOK.COM
 (2603:1096:100:18::12) To BYAPR11MB2598.namprd11.prod.outlook.com
 (2603:10b6:a02:cb::17)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [128.224.162.138] (60.247.85.82) by SL2P216CA0002.KORP216.PROD.OUTLOOK.COM (2603:1096:100:18::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3412.20 via Frontend Transport; Thu, 24 Sep 2020 07:52:26 +0000
X-Originating-IP: [60.247.85.82]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fd028ade-7a81-4f37-426d-08d8605ec808
X-MS-TrafficTypeDiagnostic: BY5PR11MB4418:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB441880C4831094632C014202F1390@BY5PR11MB4418.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1186;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1lPctNg8+f7SCDA4kAXXXz8tiG5X5MyjwIXd78odZP5MdjWTPP+NKbothEX+pLjrr5wpTpnDU9sour9oG9m5HHk93POk1LAONSQSqwpqF8l5zOK6r8Ph7EIX+xfnuP3vl771FdOt/q2I6fkwxqYk9HIsJSmQxZ20ffc/e5Iy9HScJn+Rsynz3Asyht7TmyaBdPeTdKB7DoVaVv7kC4HHywuqHP0RQWNC3RBLs1PcURL6aYW5I03ZzMMngTyFM40XRZK3Rfz/GteYtnPlGW4yHtKu+s2aZVBQK7kx3s1tZ5DsPETstSR5VmSI05K8G9pPEabS54Mblex/K3OHJrtpanXSEdMpMf1zm3sDRWNB3nu2LwjaVTYSXu2wh4AnP4i2dxOgHAM/KZXGb8Mv8GCSI8b6sUw9of01NvdjguUy4Sz1pSTiab5RDJADM7mazOCxFO6JkMgtevtzvm/qQgkZqsWtyjEFUSybRy4jYpmjSKWT+mBI6g/lZ6Hr7boaB59d9uu1+VwRdmDJQ9GeMzAcsw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(396003)(346002)(136003)(39850400004)(366004)(2906002)(53546011)(316002)(956004)(478600001)(966005)(2616005)(36756003)(86362001)(6666004)(31696002)(16576012)(83380400001)(8676002)(31686004)(52116002)(66556008)(8936002)(66476007)(186003)(66946007)(16526019)(26005)(6706004)(6486002)(5660300002)(78286007)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	A424Yp0JtBQieL+veMj2YIFGHwD4uiUnSooskMcENSKtPnzQCGV6abrvultbNuNMfMCeVznFZNvW6veC7kJP4XwBx6hCX/gLl0Gk1mZQAtkMbBDaqqQdAbSFxg1NSJGkwrRuzmB9R8scnHrA95F+l+uZYf18yF6FOGaLEqz+MsJHy102C987x2Ti0r3A0fEjyINu9Rl+axy4JDfsAHKAdGyb/gqCH/LYj2ezzINTZRQPAkAH2gdLoDuRZlOZVh00TKxrzRkfftBStkXqn+OoipBqzepj09ZfHjZDuBqGE3I01J3NIrm0KR2d0D+NXNNG3r+Q9+j8hPPVmamugzQTqXb8sKHpVz3fm8bxbYV03ZtcuRU4G8mSduxFG4X9p5dInlHWj7wz4xMekbE6y/TDiJZUfIIGiN23IOC6MPwLmPetY6DxgLtTMnsSLdkzVJxim+3b1zPN6iWMuJYhIkMJBZivQ1mo1g5ylijcdVGcwEbNkMKjtKV0g+5Qk5g9v0ZPw/bF/t+qUXPA3REvlTCjQB6zCNG7HfiUPAijNNo9EEPIzMdZfM8yeGBK3JDeM2GdJuLeTjcyVc6SQkG6no1jKKg6WkZEdxt4VYVkHc12OuX2UG/n+HKCiWmr1shEglas0I7idOkUecJQJRiW9gk74w==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd028ade-7a81-4f37-426d-08d8605ec808
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2020 07:52:27.3980
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sI75FslqZPe4QdG2lNW4pKhFiZWjsOcPrWZb66/Guq+Sbls2q86UpAoRTq7Hf+JbjgQo/ZqQdS7dZ/2I/xVAZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4418
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Ping.

Thanks,

On 9/3/20 1:59 PM, Yu, Mingli wrote:
> From: Mingli Yu <mingli.yu@windriver.com>
> 
> Starting with GCC >= 10.x, -fno-common is used as default
> instead of -fcommon.
> 
> Make the function definiton extern to fix the build failure.
> 
> Set the default OCF_ROOT_DIR to $libdir/ocf to make the
> resource agents components more compatible.
> 
> Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> ---
>   .../0001-Mark-declaration-with-extern.patch   | 46 +++++++++++++++++++
>   ...maker-set-OCF_ROOT_DIR-to-libdir-ocf.patch | 32 +++++++++++++
>   .../recipes-cgl/pacemaker/pacemaker_2.0.3.bb  |  2 +
>   3 files changed, 80 insertions(+)
>   create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
>   create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> 
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> new file mode 100644
> index 0000000..5729447
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-Mark-declaration-with-extern.patch
> @@ -0,0 +1,46 @@
> +From e1abd3b7c7a0122813e4d0abdb079df10104882c Mon Sep 17 00:00:00 2001
> +From: Mingli Yu <mingli.yu@windriver.com>
> +Date: Thu, 3 Sep 2020 04:44:09 +0000
> +Subject: [PATCH] Mark declaration with extern
> +
> +Fixes build with gcc 10+
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> +---
> + daemons/attrd/pacemaker-attrd.h | 4 ++--
> + daemons/execd/pacemaker-execd.h | 2 +-
> + 2 files changed, 3 insertions(+), 3 deletions(-)
> +
> +diff --git a/daemons/attrd/pacemaker-attrd.h b/daemons/attrd/pacemaker-attrd.h
> +index cc8e29ee1..76778915e 100644
> +--- a/daemons/attrd/pacemaker-attrd.h
> ++++ b/daemons/attrd/pacemaker-attrd.h
> +@@ -106,8 +106,8 @@ typedef struct attribute_value_s {
> +         gboolean seen;
> + } attribute_value_t;
> +
> +-crm_cluster_t *attrd_cluster;
> +-GHashTable *attributes;
> ++extern crm_cluster_t *attrd_cluster;
> ++extern GHashTable *attributes;
> +
> + #define attrd_send_ack(client, id, flags) \
> +     crm_ipcs_send_ack((client), (id), (flags), "ack", __FUNCTION__, __LINE__)
> +diff --git a/daemons/execd/pacemaker-execd.h b/daemons/execd/pacemaker-execd.h
> +index 4a52d9183..dab3ccdbe 100644
> +--- a/daemons/execd/pacemaker-execd.h
> ++++ b/daemons/execd/pacemaker-execd.h
> +@@ -20,7 +20,7 @@
> + #    include <gnutls/gnutls.h>
> + #  endif
> +
> +-GHashTable *rsc_list;
> ++extern GHashTable *rsc_list;
> +
> + typedef struct lrmd_rsc_s {
> +     char *rsc_id;
> +--
> +2.26.2
> +
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> new file mode 100644
> index 0000000..1ff9c7d
> --- /dev/null
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch
> @@ -0,0 +1,32 @@
> +From 3ca78a6441eefc26f18211375b18205ed6fc28c6 Mon Sep 17 00:00:00 2001
> +From: Mingli Yu <mingli.yu@windriver.com>
> +Date: Thu, 3 Sep 2020 05:26:36 +0000
> +Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
> +
> +* Set the default OCF_ROOT_DIR to $libdir/ocf
> +  to make the resource agents components more
> +  compatible
> +
> +Upstream-Status: Pending
> +
> +Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
> +---
> + configure.ac | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/configure.ac b/configure.ac
> +index 58d39cdc0..eb4275560 100644
> +--- a/configure.ac
> ++++ b/configure.ac
> +@@ -315,7 +315,7 @@ dnl This defaults to /usr/lib rather than libdir because it's determined by the
> + dnl OCF project and not pacemaker. Even if a user wants to install pacemaker to
> + dnl /usr/local or such, the OCF agents will be expected in their usual
> + dnl location. However, we do give the user the option to override it.
> +-OCF_ROOT_DIR="/usr/lib/ocf"
> ++OCF_ROOT_DIR="$libdir/ocf"
> + AC_ARG_WITH([ocfdir],
> +     [AS_HELP_STRING([--with-ocfdir=DIR],
> +         [OCF resource agent root directory (advanced option: changing this may break other cluster components unless similarly configured) @<:@/usr/lib/ocf@:>@])],
> +--
> +2.26.2
> +
> diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> index 9b63acd..56f3bc4 100644
> --- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> +++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
> @@ -16,6 +16,8 @@ DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
>   SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
>              file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch \
>              file://0001-Fix-python3-usage.patch \
> +           file://0001-Mark-declaration-with-extern.patch \
> +           file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
>              file://volatiles \
>              file://tmpfiles \
>             "
> 
> 
> 
> 
