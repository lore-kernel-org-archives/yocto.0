Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5479D4C8009D
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 18:58:14 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 19 Jul 2011 16:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,231,1309762800"; d="scan'208";a="27818835"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by orsmga002.jf.intel.com with ESMTP; 19 Jul 2011 16:58:13 -0700
Message-ID: <4E261A15.8030604@linux.intel.com>
Date: Tue, 19 Jul 2011 16:58:13 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1311118644-22937-1-git-send-email-msm@freescale.com>
In-Reply-To: <1311118644-22937-1-git-send-email-msm@freescale.com>
Subject: Re: [PATCH] Add endianess macros used by previous	endian-ness_handling.patch
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Jul 2011 23:58:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/19/2011 04:37 PM, Matthew McClintock wrote:
> Some distro's don't include these macros in /usr/include/endian.h
> so we include them via this patch
>
Matthew:

Thanks for this patch.

What will happen on distros that do include these macros?  Will we get 
redefines?  I don't see any conditional testing to determine if they 
exist already.


> Signed-off-by: Matthew McClintock<msm@freescale.com>
> ---
> This fixes builds on my CentOS 5.5 box
>
>   .../ldconfig-native-2.12.1/endianess-header.patch  |  102 ++++++++++++++++++++
>   meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb |    5 +-
>   2 files changed, 105 insertions(+), 2 deletions(-)
>   create mode 100644 meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch
>
> diff --git a/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch b/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch
> new file mode 100644
> index 0000000..3653967


We need to track information about the patch in the patch itself, so can 
you please add details here and include a Signed-off-by line.

For information about commits and patches, please see
http://wiki.openembedded.org/index.php/Commit_Patch_Message_Guidelines

Also, this kind of patch actually goes to the 
openembedded-core@openembedded.org email list.

Thanks for the patch submission.

Sau!

> --- /dev/null
> +++ b/meta/recipes-core/eglibc/ldconfig-native-2.12.1/endianess-header.patch
> @@ -0,0 +1,102 @@
> +diff -purN ldconfig-native-2.12.1.orig/endian_extra.h ldconfig-native-2.12.1/endian_extra.h
> +--- ldconfig-native-2.12.1.orig/endian_extra.h	1969-12-31 18:00:00.000000000 -0600
> ++++ ldconfig-native-2.12.1/endian_extra.h	2011-07-19 18:09:14.323048417 -0500
> +@@ -0,0 +1,61 @@
> ++/* Copyright (C) 1992, 1996, 1997, 2000, 2008 Free Software Foundation, Inc.
> ++   This file is part of the GNU C Library.
> ++
> ++   The GNU C Library is free software; you can redistribute it and/or
> ++   modify it under the terms of the GNU Lesser General Public
> ++   License as published by the Free Software Foundation; either
> ++   version 2.1 of the License, or (at your option) any later version.
> ++
> ++   The GNU C Library is distributed in the hope that it will be useful,
> ++   but WITHOUT ANY WARRANTY; without even the implied warranty of
> ++   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
> ++   Lesser General Public License for more details.
> ++
> ++   You should have received a copy of the GNU Lesser General Public
> ++   License along with the GNU C Library; if not, write to the Free
> ++   Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
> ++   02111-1307 USA.  */
> ++
> ++#include<endian.h>
> ++
> ++#ifndef	_ENDIAN_EXTRA_H
> ++#define	_ENDIAN_EXTRA_H	1
> ++
> ++#ifdef __USE_BSD
> ++/* Conversion interfaces.  */
> ++# include<byteswap.h>
> ++
> ++# if __BYTE_ORDER == __LITTLE_ENDIAN
> ++#  define htobe16(x) __bswap_16 (x)
> ++#  define htole16(x) (x)
> ++#  define be16toh(x) __bswap_16 (x)
> ++#  define le16toh(x) (x)
> ++
> ++#  define htobe32(x) __bswap_32 (x)
> ++#  define htole32(x) (x)
> ++#  define be32toh(x) __bswap_32 (x)
> ++#  define le32toh(x) (x)
> ++
> ++#  define htobe64(x) __bswap_64 (x)
> ++#  define htole64(x) (x)
> ++#  define be64toh(x) __bswap_64 (x)
> ++#  define le64toh(x) (x)
> ++# else
> ++#  define htobe16(x) (x)
> ++#  define htole16(x) __bswap_16 (x)
> ++#  define be16toh(x) (x)
> ++#  define le16toh(x) __bswap_16 (x)
> ++
> ++#  define htobe32(x) (x)
> ++#  define htole32(x) __bswap_32 (x)
> ++#  define be32toh(x) (x)
> ++#  define le32toh(x) __bswap_32 (x)
> ++
> ++#  define htobe64(x) (x)
> ++#  define htole64(x) __bswap_64 (x)
> ++#  define be64toh(x) (x)
> ++#  define le64toh(x) __bswap_64 (x)
> ++# endif
> ++#endif
> ++
> ++#endif	/* endian_extra.h */
> +diff -purN ldconfig-native-2.12.1.orig/cache.c ldconfig-native-2.12.1/cache.c
> +--- ldconfig-native-2.12.1.orig/cache.c	2011-07-19 18:21:28.347041301 -0500
> ++++ ldconfig-native-2.12.1/cache.c	2011-07-19 18:22:54.118048064 -0500
> +@@ -39,6 +39,8 @@
> + # define N_(msgid)  msgid
> + #define _(msg) msg
> +
> ++#include "endian_extra.h"
> ++
> + extern int be;
> +
> + static uint16_t write16(uint16_t x, int be)
> +diff -purN ldconfig-native-2.12.1.orig/readelflib.c ldconfig-native-2.12.1/readelflib.c
> +--- ldconfig-native-2.12.1.orig/readelflib.c	2011-07-19 18:21:28.346041593 -0500
> ++++ ldconfig-native-2.12.1/readelflib.c	2011-07-19 18:23:05.324059875 -0500
> +@@ -25,6 +25,9 @@
> +
> + /* check_ptr checks that a pointer is in the mmaped file and doesn't
> +    point outside it.  */
> ++
> ++#include "endian_extra.h"
> ++
> + #undef check_ptr
> + #define check_ptr(ptr)						\
> + do								\
> +diff -purN ldconfig-native-2.12.1.orig/readlib.c ldconfig-native-2.12.1/readlib.c
> +--- ldconfig-native-2.12.1.orig/readlib.c	2011-07-19 18:21:28.346041593 -0500
> ++++ ldconfig-native-2.12.1/readlib.c	2011-07-19 18:23:23.877046210 -0500
> +@@ -40,6 +40,8 @@
> +
> + #include "ldconfig.h"
> +
> ++#include "endian_extra.h"
> ++
> + #define _(msg) msg
> +
> + #define Elf32_CLASS ELFCLASS32
> diff --git a/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb b/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
> index bacf9f8..00edb6e 100644
> --- a/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
> +++ b/meta/recipes-core/eglibc/ldconfig-native_2.12.1.bb
> @@ -9,9 +9,10 @@ SRC_URI = "file://ldconfig-native-2.12.1.tar.bz2 \
>              file://ldconfig_aux-cache_path_fix.patch \
>              file://32and64bit.patch \
>              file://endian-ness_handling.patch \
> -           file://flag_fix.patch "
> +           file://flag_fix.patch \
> +           file://endianess-header.patch"
>
> -PR = "r0"
> +PR = "r1"
>
>   inherit native
>

