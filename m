Return-Path: <Xin.Ouyang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3981DE007DA
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 01:50:34 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s1D9oY5q004999
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 01:50:34 -0800 (PST)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.158.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Thu, 13 Feb 2014 01:48:39 -0800
Message-ID: <52FC94F5.40904@windriver.com>
Date: Thu, 13 Feb 2014 17:48:37 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: <wenzong.fan@windriver.com>, <yocto@yoctoproject.org>,
	<mark.hatle@windriver.com>
References: <cover.1392278548.git.wenzong.fan@windriver.com>
	<fff8c6f836d66296e4e78ab30c05de1e89f96c6f.1392278548.git.wenzong.fan@windriver.com>
In-Reply-To: <fff8c6f836d66296e4e78ab30c05de1e89f96c6f.1392278548.git.wenzong.fan@windriver.com>
X-TagToolbar-Keys: D20140213174837521
Subject: Re: [meta-selinux][PATCH 1/1] refpolicy: fix real path for su.shadow
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Feb 2014 09:50:38 -0000
Content-Type: text/plain; charset="GB2312"
Content-Transfer-Encoding: 8bit

ÓÚ 14-2-13 ÏÂÎç4:09, wenzong.fan@windriver.com Ð´µÀ:
> From: Wenzong Fan <wenzong.fan@windriver.com>
> 
> Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> ---
>   .../poky-fc-fix-real-path_su.patch                 |   25 ++++++++++++++++++++
>   .../refpolicy/refpolicy_2.20130424.inc             |    1 +
>   2 files changed, 26 insertions(+)
>   create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch
> 
> diff --git a/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch
> new file mode 100644
> index 0000000..b0392ce
> --- /dev/null
> +++ b/recipes-security/refpolicy/refpolicy-2.20130424/poky-fc-fix-real-path_su.patch
> @@ -0,0 +1,25 @@
> +From 4affa5e9797f5d51597c9b8e0f2503883c766699 Mon Sep 17 00:00:00 2001
> +From: Wenzong Fan <wenzong.fan@windriver.com>
> +Date: Thu, 13 Feb 2014 00:33:07 -0500
> +Subject: [PATCH] fix real path for su.shadow command
> +
> +Upstream-Status: Inappropriate [only for Poky]
> +
> +Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
> +---
> + policy/modules/admin/su.fc |    2 ++
> + 1 file changed, 2 insertions(+)
> +
> +diff --git a/policy/modules/admin/su.fc b/policy/modules/admin/su.fc
> +index a563687..0f43827 100644
> +--- a/policy/modules/admin/su.fc
> ++++ b/policy/modules/admin/su.fc
> +@@ -4,3 +4,5 @@
> +
> + /usr/(local/)?bin/ksu	--	gen_context(system_u:object_r:su_exec_t,s0)
> + /usr/bin/kdesu		--	gen_context(system_u:object_r:su_exec_t,s0)
> ++
> ++/bin/su.shadow		--	gen_context(system_u:object_r:su_exec_t,s0)
> +--
> +1.7.9.5
> +
> diff --git a/recipes-security/refpolicy/refpolicy_2.20130424.inc b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> index 23339e3..9e5e426 100644
> --- a/recipes-security/refpolicy/refpolicy_2.20130424.inc
> +++ b/recipes-security/refpolicy/refpolicy_2.20130424.inc
> @@ -30,6 +30,7 @@ SRC_URI += "file://poky-fc-subs_dist.patch \
>               file://poky-fc-udevd.patch \
>               file://poky-fc-rpm.patch \
>               file://poky-fc-ftpwho-dir.patch \
> +            file://poky-fc-fix-real-path_su.patch \
>              "
>   
>   # Specific policy for Poky
> 

Acked.

-- 
- Pascal

