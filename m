Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.4314.1596098585370703733
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Jul 2020 01:43:05 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denx.de, ip: 140.211.169.56, mailfrom: sbabic@denx.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09756E01F46; Thu, 30 Jul 2020 01:43:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,NICE_REPLY_A,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -0.8 NICE_REPLY_A Looks like a legit reply (A)
X-Greylist: delayed 531 seconds by postgrey-1.32 at yocto-www; Thu, 30 Jul 2020 01:43:02 PDT
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FD52E01F43
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2020 01:43:02 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4BHNxG4HHzz1rtMh;
	Thu, 30 Jul 2020 10:34:10 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4BHNxG3NgQz1qsnt;
	Thu, 30 Jul 2020 10:34:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id qDeJpsxkLKg3; Thu, 30 Jul 2020 10:34:08 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net [88.217.136.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPS;
	Thu, 30 Jul 2020 10:34:08 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id DEF10454050B;
	Thu, 30 Jul 2020 10:34:07 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([IPv6:::1])
	by localhost (mail.babic.homelinux.org [IPv6:::1]) (amavisd-new, port 10024)
	with ESMTP id rwwfycCWtcds; Thu, 30 Jul 2020 10:34:05 +0200 (CEST)
Received: from [192.168.178.64] (paperino.fritz.box [192.168.178.64])
	by babic.homelinux.org (Postfix) with ESMTP id 16BFF4540393;
	Thu, 30 Jul 2020 10:34:05 +0200 (CEST)
Subject: Re: [swupdate] [meta-swupdate][PATCH] mtd-utils: Remove patchs
To: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>, swupdate@googlegroups.com
Cc: yocto@yoctoproject.org,
 Richard Purdie <richard.purdie@linuxfoundation.org>
References: <1596071889-91188-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
From: "Stefano Babic" <sbabic@denx.de>
Autocrypt: addr=sbabic@denx.de; prefer-encrypt=mutual; keydata=
 mQGiBEfdB5IRBADkpYcnh2BoAkGD5p186ysEkWlcp5DU07m7BKzvkEMRhFjeFUOU0klKNmh0
 ZM6rKpYpAYPYBm9YahMyqvj9DmLrZ4yfJ5MssvW9SRETmHpva+h1rN+DzmEcwrqZmLG1JWGy
 LA5ruJaFSzxJHBoROoog1NDMbNDB8A9F7VKrePfkVwCgmODpW/uh2IuMYLVidzDeuvo7alED
 /iV8rwU7C+eBcKy2htuDsEmsqlkBxIDM7IO6h5XxdyqbZOYizuBP3Ksb6xK54weEaB5aQs7S
 8N9Soi0p1Xh0LMWj6PBCzTC4LF+OCGEMBPc6bBHNzivChgztJlUMioCDSVpOXB/QpBaK302G
 yP5WdmcB1Jn6neq/YRlxHN38MV2yA/46jnzeUotL9LliVZKA/ql4GmyWg2Ae1BUiCqEJQNwl
 knGJOmIS4uABLArB5HjsfDU5hA9FORaNGCIiZlezBkZ3JXA2uQMQhfgqBXrZt4j1fcw9I7E+
 7IZ2kSCeTPZFLd5FiGQPDOm3Z9eHrpK6pmBGMeBG0pDgUEbN9awyLNBLj7QeU3RlZmFubyBC
 YWJpYyA8c2JhYmljQGRlbnguZGU+iGMEExECACMCGwMGCwkIBwMCBBUCCAMEFgIDAQIeAQIX
 gAUCT9deSgIZAQAKCRD09WXkmmjvppF1AKCRl8d49K4yxWzdBVRTTWG55cyo/gCfRD1RAttl
 R1ofs2wGLHNtXousyL25Ag0ER90HmBAIAIFfX4bKnOmCyB3nPh+jbXZuBSMZTuyDEnguRxl5
 N8Q0ayofQwucCBjXYv65sQ9Rq6FNhEnWqUZBu8A5CwvSakOFOGNC5ta/8VxVRLh0Z0ZTgEep
 SKiPonJyacCbmgWDECdVrKowV7QB9be3Wu67uAZ74rPw2Kd7f0FKnL3djvVRMaBWFIpyQ6SE
 bGOCJjhRQ5L1pIM1Soko+reU7eO+1g6IBw6YkFJisdQE6fzTwaSqUKPPsQLz/W03invQltOb
 Eg7ZwtFs0DFonr1DMm57ksiEhW6SN1wylRO/JzRYG1Qe7u1EVln6iV3ilBvbbfkyRssk4/0e
 kicpSnQknA72YOMAAwYH+QGpAiQ4hAMHrp1bUrtyGXYdeQpYufIZAM4etOnBy/G+e1nfu6y+
 jH4SN9sVK7bwBBAbhEJqkqR5LVsFIRapThJQOWB11rQxLpwkBU9wao/pRM+o95ujGo32WUzf
 wWrzWrkTDy7vMCZuUOLVi4n1GZlUAwpG4rzb6UxPC6GWymkVWGgXp1NC58og5i3Y+rKT7+Xi
 XT2BtvC6PDepoH4JhD+9OkHQO6UfTxPSmtgNbTgtl6L6tj+bm5dOHgkPJFMkEiG8qhUZYQzb
 bYz37orRbA72M2bxK76e9QKn0mVu+d/YCd8wRcvvJbGsozpzcxPvD5Wy5RNJCES8McPtAseU
 tMeISQQYEQIACQUCR90HmAIbDAAKCRD09WXkmmjvpv+3AJ9RakBsH1j0X/Kxp6t2lf0VUfS2
 qACfZ+J6ktk8PKNuyHf0J/I0mbCrhV4=
Message-ID: <2de062d5-c94c-e8e1-eae4-26d0663ec8ee@denx.de>
Date: Thu, 30 Jul 2020 10:34:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1596071889-91188-1-git-send-email-zhengrq.fnst@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: de-DE
Content-Transfer-Encoding: 7bit

Hi Zheng,

I do not discuss abot the correctness of these patches (that I will
aplly to meta-swupdate, -master), but about mtd-utils version (for this
I pick up Richard in CC). There were in last month more breakage around
mtd-utils due to patches (required !) that are applied to an undefined
(from recipe) version of mtd-utils.

In fact, we have mtd-utils_git.bb in poky, and as "git" version, the
expectation is that it points to TOT. But this is not the case, and
meta-<layers> outside poky just add some patches to a not well defined
version.

Should we also replace mtd-utils_git.bb with a more precise
mtd-utils_2.1.2.bb ?

Regards,
Stefano

On 30.07.20 03:18, Zheng Ruoqin wrote:
> files/0001-libubigen-remove-unnecessary-include.patch
> files/0002-libubi-remove-private-kernel-header-from-includes.patch
> Removed since these are included in 2.1.2.
> 
> Signed-off-by: Zheng Ruoqin <zhengrq.fnst@cn.fujitsu.com>/
> ---
>  ...libubigen-remove-unnecessary-include.patch | 29 ----------
>  ...-private-kernel-header-from-includes.patch | 58 -------------------
>  recipes-devtools/mtd/mtd-utils_%.bbappend     |  5 --
>  3 files changed, 92 deletions(-)
>  delete mode 100644 recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
>  delete mode 100644 recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch
> 
> diff --git a/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch b/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
> deleted file mode 100644
> index 61e1380..0000000
> --- a/recipes-devtools/mtd/files/0001-libubigen-remove-unnecessary-include.patch
> +++ /dev/null
> @@ -1,29 +0,0 @@
> -From 87809c4804d3355ecd2fd0bd3362526fa27bf953 Mon Sep 17 00:00:00 2001
> -From: Bastian Germann <bastiangermann@fishpost.de>
> -Date: Wed, 29 Jan 2020 19:50:12 +0100
> -Subject: [PATCH 1/2] libubigen: remove unnecessary include
> -
> -libubigen.h does not use any symbol from mtd/ubi-media.h,
> -so remove it from includes.
> -
> -Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
> -Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ----
> - include/libubigen.h | 1 -
> - 1 file changed, 1 deletion(-)
> -
> -diff --git a/include/libubigen.h b/include/libubigen.h
> -index c25ac20..48d2fad 100644
> ---- a/include/libubigen.h
> -+++ b/include/libubigen.h
> -@@ -26,7 +26,6 @@
> - #define __LIBUBIGEN_H__
> - 
> - #include <stdint.h>
> --#include <mtd/ubi-media.h>
> - 
> - #ifdef __cplusplus
> - extern "C" {
> --- 
> -2.25.1
> -
> diff --git a/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch b/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch
> deleted file mode 100644
> index 7ca79b2..0000000
> --- a/recipes-devtools/mtd/files/0002-libubi-remove-private-kernel-header-from-includes.patch
> +++ /dev/null
> @@ -1,58 +0,0 @@
> -From 42e051acd32c28c2f93c946d0c4bf6f9eada2aa4 Mon Sep 17 00:00:00 2001
> -From: Bastian Germann <bastiangermann@fishpost.de>
> -Date: Wed, 29 Jan 2020 19:50:13 +0100
> -Subject: [PATCH 2/2] libubi: remove private kernel header from includes
> -
> -libubi.h includes ubi-media.h which was made private in the kernel a
> -long time ago. There are users of libubi.h, e.g. swupdate, which have to
> -have ubi-media.h available at build time with this inclusion.
> -
> -However, libubi.h uses only one symbol from ubi-media.h. Define that symbol
> -in the header to enable using libubi.h without installing ubi-media.h.
> -
> -Make up for the transitive symbol use in ubiformat.c by including ubi-media.h.
> -
> -Signed-off-by: Bastian Germann <bastiangermann@fishpost.de>
> -Signed-off-by: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
> ----
> - include/libubi.h      | 4 +++-
> - ubi-utils/ubiformat.c | 1 +
> - 2 files changed, 4 insertions(+), 1 deletion(-)
> -
> -diff --git a/include/libubi.h b/include/libubi.h
> -index 46596a3..46c732a 100644
> ---- a/include/libubi.h
> -+++ b/include/libubi.h
> -@@ -26,7 +26,6 @@
> - #include <ctype.h>
> - #include <stdint.h>
> - #include <mtd/ubi-user.h>
> --#include <mtd/ubi-media.h>
> - 
> - #ifdef __cplusplus
> - extern "C" {
> -@@ -38,6 +37,9 @@ extern "C" {
> - /* Maximum physical eraseblock size in bytes */
> - #define UBI_MAX_PEB_SZ (2*1024*1024)
> - 
> -+/* The maximum volume name length (from Linux's ubi-media.h) */
> -+#define UBI_VOL_NAME_MAX 127
> -+
> - /* UBI library descriptor */
> - typedef void * libubi_t;
> - 
> -diff --git a/ubi-utils/ubiformat.c b/ubi-utils/ubiformat.c
> -index be40e52..d1b12e4 100644
> ---- a/ubi-utils/ubiformat.c
> -+++ b/ubi-utils/ubiformat.c
> -@@ -38,6 +38,7 @@
> - #include <getopt.h>
> - #include <fcntl.h>
> - 
> -+#include <mtd/ubi-media.h>
> - #include <libubi.h>
> - #include <libmtd.h>
> - #include <libscan.h>
> --- 
> -2.25.1
> -
> diff --git a/recipes-devtools/mtd/mtd-utils_%.bbappend b/recipes-devtools/mtd/mtd-utils_%.bbappend
> index 72cc858..471c8ad 100644
> --- a/recipes-devtools/mtd/mtd-utils_%.bbappend
> +++ b/recipes-devtools/mtd/mtd-utils_%.bbappend
> @@ -2,11 +2,6 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>  
>  FILES_${PN}-staticdev += "ubi-utils/libubi.a ${libdir}/*.a"
>  
> -SRC_URI += " \
> -	file://0001-libubigen-remove-unnecessary-include.patch \
> -	file://0002-libubi-remove-private-kernel-header-from-includes.patch \
> -"
> -
>  do_install_append () {
>  	install -d ${D}${includedir}/mtd/
>  	install -d ${D}${libdir}/
> 


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================
