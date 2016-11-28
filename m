Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EF8BE00A48; Mon, 28 Nov 2016 01:33:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
Received: from mail-wj0-f194.google.com (mail-wj0-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30DA5E00BAD
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 01:32:48 -0800 (PST)
Received: by mail-wj0-f194.google.com with SMTP id xy5so13239425wjc.1
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 01:32:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=+lM+MvuGCmduAhXtPvFdIXvEnPBHCwIFsYD4OgrJO7A=;
	b=dTa6atTf39ufS7U4gSIr+CvG8g0xdbIVvSCuqHjwnKOHCWfnbs00E1Ck8VRY1/7Hca
	y0c2mWxxmDl/NKhVjThTE8vTEhqvuFjODIjqktRxPwk0JXf3HCpM0GLqYtiWSN67TfIf
	bEUz5HIH90rAa3HAgn5K1lCrmnQTy1a7ubTqBl7OR/Rkn7c1QiO0E4u7KS7LGisLB8OQ
	osHzybQDpjcIhDN4YqHxVyocV7VcmrHyIgNkLtJYlJz8wu/CMzYvkJnIqS0BPDn7ZuBc
	B+jJ+TW3Bp1/rYvq5Fvmpu3MwajnNX7CM7dihDuMKgnOTU6xQcrtkWcYJmvOPTYS3mc/
	xKBA==
X-Gm-Message-State: AKaTC03ce+pKG+DrPuEukgLMH8Dimsh2eKscvCRHBRakvCOwIXqI79407h8+cdxKnq+zHQ==
X-Received: by 10.194.209.169 with SMTP id mn9mr17258940wjc.114.1480325567583; 
	Mon, 28 Nov 2016 01:32:47 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id q7sm61533419wjh.9.2016.11.28.01.32.46
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 28 Nov 2016 01:32:47 -0800 (PST)
Message-ID: <1480325566.6217.5.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 28 Nov 2016 09:32:46 +0000
In-Reply-To: <20161128093130.17727-1-git@andred.net>
References: <20161125162903.19626-1-git@andred.net>
	<20161128093130.17727-1-git@andred.net>
X-Mailer: Evolution 3.22.1-2 
Mime-Version: 1.0
Subject: Re: [meta-security][PATCH v2] trousers: fix musl compilation
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
X-List-Received-Date: Mon, 28 Nov 2016 09:33:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Changes from v1:
- Upstream-Status of 0001-Check-that-getpwent_r-is-available-before-using-
it.patch updated

On Mon, 2016-11-28 at 09:31 +0000, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
> 
> Backport patches to fix compilation.
> 
> Signed-off-by: André Draszik <adraszik@tycoint.com>
> ---
>  ...t-getpwent_r-is-available-before-using-it.patch | 85
> ++++++++++++++++++++++
>  ...si_param.c-Include-limits.h-for-POSIX_MAX.patch | 36 +++++++++
>  recipes-tpm/trousers/trousers_0.3.13.bb            |  2 +
>  3 files changed, 123 insertions(+)
>  create mode 100644 recipes-tpm/trousers/files/0001-Check-that-getpwent_r-
> is-available-before-using-it.patch
>  create mode 100644 recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-
> Include-limits.h-for-POSIX_MAX.patch
> 
> diff --git a/recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-
> available-before-using-it.patch b/recipes-tpm/trousers/files/0001-Check-
> that-getpwent_r-is-available-before-using-it.patch
> new file mode 100644
> index 0000000..e7ba2eb
> --- /dev/null
> +++ b/recipes-tpm/trousers/files/0001-Check-that-getpwent_r-is-available-
> before-using-it.patch
> @@ -0,0 +1,85 @@
> +From bb721b0ae5882992037153e7257791101172556e Mon Sep 17 00:00:00 2001
> +From: =?UTF-8?q?No=C3=A9=20Rubinstein?= <nrubinstein@aldebaran.com>
> +Date: Wed, 24 Aug 2016 18:55:25 +0200
> +Subject: [PATCH] Check that getpwent_r is available before using it
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +This fixes building trousers with musl
> +
> +Signed-off-by: Noé Rubinstein <nrubinstein@aldebaran.com>
> +---
> +Upstream-Status: Inappropriate [not author https://git.busybox.net/buildr
> oot/plain/package/trousers/0004-Check-that-getpwent_r-is-available-before-
> using-it.patch]
> +Signed-off-by: André Draszik <adraszik@tycoint.com>
> + configure.in        |  4 ++++
> + src/tspi/ps/tspps.c | 10 +++++-----
> + 2 files changed, 9 insertions(+), 5 deletions(-)
> +
> +diff --git a/configure.in b/configure.in
> +index add23dc..cfdfcaa 100644
> +--- a/configure.in
> ++++ b/configure.in
> +@@ -144,6 +144,10 @@ else
> + 	AC_MSG_ERROR(["gtk", "openssl" and "none" are the only supported
> gui options for trousers])
> + fi
> + 
> ++# Look for getpwent_r. If it is not found, getpwent will be used
> instead, with
> ++# an additional mutex.
> ++AC_CHECK_FUNC(getpwent_r, [AC_DEFINE(HAVE_GETPWENT_R)])
> ++
> + #
> + # The default port that the TCS daemon listens on
> + #
> +diff --git a/src/tspi/ps/tspps.c b/src/tspi/ps/tspps.c
> +index c6f9c3d..9d00d2a 100644
> +--- a/src/tspi/ps/tspps.c
> ++++ b/src/tspi/ps/tspps.c
> +@@ -45,7 +45,7 @@
> + 
> + static int user_ps_fd = -1;
> + static MUTEX_DECLARE_INIT(user_ps_lock);
> +-#if (defined (__FreeBSD__) || defined (__OpenBSD__))
> ++#ifndef HAVE_GETPWENT_R
> + static MUTEX_DECLARE_INIT(user_ps_path);
> + #endif
> + static struct flock fl;
> +@@ -60,7 +60,7 @@ get_user_ps_path(char **file)
> + 	TSS_RESULT result;
> + 	char *file_name = NULL, *home_dir = NULL;
> + 	struct passwd *pwp;
> +-#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
> ++#ifdef HAVE_GETPWENT_R
> + 	struct passwd pw;
> + #endif
> + 	struct stat stat_buf;
> +@@ -72,7 +72,7 @@ get_user_ps_path(char **file)
> + 		*file = strdup(file_name);
> + 		return (*file) ? TSS_SUCCESS :
> TSPERR(TSS_E_OUTOFMEMORY);
> + 	}
> +-#if (defined (__FreeBSD__) || defined (__OpenBSD__))
> ++#ifndef HAVE_GETPWENT_R
> + 	MUTEX_LOCK(user_ps_path);
> + #endif
> + 
> +@@ -90,7 +90,7 @@ get_user_ps_path(char **file)
> + #else
> + 	setpwent();
> + 	while (1) {
> +-#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
> ++#ifdef HAVE_GETPWENT_R
> + 		rc = getpwent_r(&pw, buf, PASSWD_BUFSIZE, &pwp);
> + 		if (rc) {
> + 			LogDebugFn("USER PS: Error getting path to home
> directory: getpwent_r: %s",
> +@@ -99,7 +99,7 @@ get_user_ps_path(char **file)
> + 			return TSPERR(TSS_E_INTERNAL_ERROR);
> + 		}
> + 
> +-#elif (defined (__FreeBSD__) || defined (__OpenBSD__))
> ++#else
> + 		if ((pwp = getpwent()) == NULL) {
> + 			LogDebugFn("USER PS: Error getting path to home
> directory: getpwent: %s",
> +                                    strerror(rc));
> +-- 
> +2.10.2
> +
> diff --git a/recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-
> limits.h-for-POSIX_MAX.patch b/recipes-tpm/trousers/files/0001-
> tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch
> new file mode 100644
> index 0000000..c01040d
> --- /dev/null
> +++ b/recipes-tpm/trousers/files/0001-tsp_tcsi_param.c-Include-limits.h-
> for-POSIX_MAX.patch
> @@ -0,0 +1,36 @@
> +From c1b5f33845c56dc7aef769c99758b4f77a041d43 Mon Sep 17 00:00:00 2001
> +From: Felix Janda <felix.janda@posteo.de>
> +Date: Wed, 31 Aug 2016 22:52:58 -0400
> +Subject: [PATCH] tsp_tcsi_param.c: Include <limits.h> for POSIX_MAX
> +MIME-Version: 1.0
> +Content-Type: text/plain; charset=UTF-8
> +Content-Transfer-Encoding: 8bit
> +
> +Use POSIX instead of glibc-specific header.
> +Fixes compilation with musl libc.
> +
> +Signed-off-by: Felix Janda <felix.janda@posteo.de>
> +Reviewed-by: Hon Ching(Vicky) Lo <honclo@linux.vnet.ibm.com>
> +
> +---
> +Upstream-Status: Backport [https://sourceforge.net/p/trousers/trousers/ci
> /59351a56cac1710e89d207dff07eb23bbc644c13/]
> +Signed-off-by: André Draszik <adraszik@tycoint.com>
> + src/tspi/tsp_tcsi_param.c | 2 +-
> + 1 file changed, 1 insertion(+), 1 deletion(-)
> +
> +diff --git a/src/tspi/tsp_tcsi_param.c b/src/tspi/tsp_tcsi_param.c
> +index 670f86f..8f2b4e4 100644
> +--- a/src/tspi/tsp_tcsi_param.c
> ++++ b/src/tspi/tsp_tcsi_param.c
> +@@ -11,7 +11,7 @@
> + #include <stdlib.h>
> + #include <string.h>
> + #include <stdio.h>
> +-#include <bits/local_lim.h>
> ++#include <limits.h>
> + #include "trousers/tss.h"
> + #include "trousers/trousers.h"
> + #include "trousers_types.h"
> +-- 
> +2.10.2
> +
> diff --git a/recipes-tpm/trousers/trousers_0.3.13.bb b/recipes-
> tpm/trousers/trousers_0.3.13.bb
> index 6853f18..a69f763 100644
> --- a/recipes-tpm/trousers/trousers_0.3.13.bb
> +++ b/recipes-tpm/trousers/trousers_0.3.13.bb
> @@ -7,6 +7,8 @@ SECTION = "security/tpm"
>  DEPENDS = "openssl"
>  
>  SRC_URI = "http://sourceforge.net/projects/trousers/files/${BPN}/${PV}/${
> BPN}-${PV}.tar.gz \
> +    file://0001-tsp_tcsi_param.c-Include-limits.h-for-POSIX_MAX.patch \
> +    file://0001-Check-that-getpwent_r-is-available-before-using-it.patch
> \
>      file://07-read_data-not-inline.patch \
>      file://trousers.init.sh \
>      file://trousers-udev.rules \

