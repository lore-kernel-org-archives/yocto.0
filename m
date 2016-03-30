Return-Path: <clemens.lang@bmw-carit.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CF19E00C51; Wed, 30 Mar 2016 06:25:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.245.222.98 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 127 seconds by postgrey-1.32 at yocto-www;
	Wed, 30 Mar 2016 06:25:00 PDT
Received: from mail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A78EE00C3A
	for <yocto@yoctoproject.org>; Wed, 30 Mar 2016 06:25:00 -0700 (PDT)
Received: from exchange2010.bmw-carit.intra ([192.168.100.28]:45215
	helo=mail.bmw-carit.de)
	by mail.bmw-carit.de with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <Clemens.Lang@bmw-carit.de>)
	id 1alG5C-0003bW-0g; Wed, 30 Mar 2016 15:22:50 +0200
Received: from localhost (172.20.20.238) by Exchange2010.bmw-carit.intra
	(192.168.100.28) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Wed, 30 Mar 2016 15:22:49 +0200
Date: Wed, 30 Mar 2016 15:22:49 +0200
From: Clemens Lang <clemens.lang@bmw-carit.de>
To: <openembedded-core@lists.openembedded.org>
Message-ID: <20160330132249.GM14883@ulm-bmuc496424.bmw-carit.de>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Originating-IP: [172.20.20.238]
Cc: yocto@yoctoproject.org
Subject: [PATCH] ldconfig-native: Fix ELF flags on 64-bit binaries
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
X-List-Received-Date: Wed, 30 Mar 2016 13:25:03 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Yocto's ldconfig-native was exported from an old version of glibc and
generates an ld.so.cache that is partially ignored by current versions
of glibc when loading libraries. This occurs for 64-bit binaries, where
glibc expects FLAG_ELF_LIBC6, but ldconfig-native only generates the
standard ELF flag. Fix this with an additional patch on top of the patch
for now.

You can verify this by applying the patch below to your target copy of
glibc and running

  LD_DEBUG=libs /lib64/ld-linux-x86-64.so.2 --list $anybinary

--- ./elf/dl-cache.c.orig       2016-01-07 11:05:36.823447171 +0100
+++ ./elf/dl-cache.c    2016-01-07 11:19:53.925878628 +0100
@@ -106,6 +106,8 @@
                if (_dl_cache_check_flags (flags)                             \
                    && _dl_cache_verify_ptr (lib->value))                     \
                  {                                                           \
+                   if (__glibc_unlikely (GLRO_dl_debug_mask & DL_DEBUG_LIBS))\
+                       _dl_debug_printf ("  considering file %s\n", cache_data + lib->value); \
                    if (best == NULL || flags == GLRO(dl_correct_cache_id))   \
                      {                                                       \
                        HWCAP_CHECK;                                          \
@@ -117,6 +119,9 @@
                             searching.  */                                   \
                          break;                                              \
                      }                                                       \
+                 } else {                                                    \
+                     if (__glibc_unlikely (GLRO_dl_debug_mask & DL_DEBUG_LIBS))              \
+                       _dl_debug_printf ("  ignoring file %s due to flags %x, expected %x\n", cache_data + lib->value, lib->flags, GLRO(dl_correct_cache_id)); \
                  }                                                           \
              }                                                               \
            while (++middle <= right);                                        \
@@ -265,14 +270,23 @@

       /* Only accept hwcap if it's for the right platform.  */
 #define HWCAP_CHECK \
-      if (lib->hwcap & hwcap_exclude)                                        \
+      if (lib->hwcap & hwcap_exclude) {                                              \
+       if (__glibc_unlikely (GLRO_dl_debug_mask & DL_DEBUG_LIBS))            \
+           _dl_debug_printf ("   hwcap mismatch %x vs. %x\n", lib->hwcap, hwcap_exclude); \
        continue;                                                             \
-      if (GLRO(dl_osversion) && lib->osversion > GLRO(dl_osversion))         \
+      }                                                                              \
+      if (GLRO(dl_osversion) && lib->osversion > GLRO(dl_osversion)) {       \
+       if (__glibc_unlikely (GLRO_dl_debug_mask & DL_DEBUG_LIBS))            \
+           _dl_debug_printf ("   os version mismatch %x vs. %x\n", lib->osversion, GLRO(dl_osversion)); \
        continue;                                                             \
+      }                                                                              \
       if (_DL_PLATFORMS_COUNT                                                \
          && (lib->hwcap & _DL_HWCAP_PLATFORM) != 0                           \
-         && (lib->hwcap & _DL_HWCAP_PLATFORM) != platform)                   \
-       continue
+         && (lib->hwcap & _DL_HWCAP_PLATFORM) != platform) {                 \
+       if (__glibc_unlikely (GLRO_dl_debug_mask & DL_DEBUG_LIBS))            \
+           _dl_debug_printf ("   platform mismatch %x vs. %x\n", lib->hwcap & _DL_HWCAP_PLATFORM, platform); \
+       continue;                                                             \
+      }
       SEARCH_CACHE (cache_new);
     }
   else

This version of ldconfig-native should really be replaced with a version
matching the glibc source in use on the target platform.

Signed-off-by: Clemens Lang <clemens.lang@bmw-carit.de>
---
 .../add-64-bit-flag-for-ELF64-entries.patch        | 27 ++++++++++++++++------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/meta/recipes-core/glibc/ldconfig-native-2.12.1/add-64-bit-flag-for-ELF64-entries.patch b/meta/recipes-core/glibc/ldconfig-native-2.12.1/add-64-bit-flag-for-ELF64-entries.patch
index a9af110..f4e38d4 100644
--- a/meta/recipes-core/glibc/ldconfig-native-2.12.1/add-64-bit-flag-for-ELF64-entries.patch
+++ b/meta/recipes-core/glibc/ldconfig-native-2.12.1/add-64-bit-flag-for-ELF64-entries.patch
@@ -64,7 +64,7 @@ index 0bf0de3..6e87afc 100644
  #undef check_ptr
  #define check_ptr(ptr)						\
  do								\
-@@ -290,6 +295,35 @@ process_elf_file64 (const char *file_name, const char *lib, int *flag,
+@@ -290,6 +295,48 @@ process_elf_file64 (const char *file_name, const char *lib, int *flag,
       libc5/libc6.  */
    *flag = FLAG_ELF;
  
@@ -73,23 +73,36 @@ index 0bf0de3..6e87afc 100644
 +  switch (elf_header->e_machine)
 +    {
 +    case EM_IA_64:
-+      *flag |= FLAG_IA64_LIB64;
++      /* Intel 64bit libraries are always libc.so.6+. */
++      /* see sysdeps/unix/sysv/linux/ia64/readelflib.c */
++      *flag |= FLAG_IA64_LIB64|FLAG_ELF_LIBC6;
 +      break;
 +    case EM_X86_64:
-+      *flag |= FLAG_X8664_LIB64;
++      /* X86-64 64bit libraries are always libc.so.6+. */
++      /* see sysdeps/unix/sysv/linux/i386/readelflib.c */
++      *flag |= FLAG_X8664_LIB64|FLAG_ELF_LIBC6;
 +      break;
 +    case EM_S390:
-+      *flag |= FLAG_S390_LIB64;
++      /* S/390 64bit libraries are always libc.so.6+. */
++      /* see sysdeps/unix/sysv/linux/s390/readelflib.c */
++      *flag |= FLAG_S390_LIB64|FLAG_ELF_LIBC6;
 +      break;
 +    case EM_PPC64:
-+      *flag |= FLAG_POWERPC_LIB64;
++      /* PowerPC 64bit libraries are always libc.so.6+. */
++      /* see sysdeps/unix/sysv/linux/powerpc/readelflib.c */
++      *flag |= FLAG_POWERPC_LIB64|FLAG_ELF_LIBC6;
 +      break;
 +    case EM_MIPS:
 +    case EM_MIPS_RS3_LE:
-+      *flag |= FLAG_MIPS64_LIBN64;
++      /* n64 libraries are always libc.so.6+. */
++      /* NOTE: This does not correctly distinguish NAN2008 binaries and is possibly broken */
++      /* see sysdeps/unix/sysv/linux/mips/readelflib.c */
++      *flag |= FLAG_MIPS64_LIBN64|FLAG_ELF_LIBC6;
 +      break;
 +    case EM_AARCH64:
-+      *flag |= FLAG_AARCH64_LIB64;
++      /* AArch64 libraries are always libc.so.6+. */
++      /* see sysdeps/unix/sysv/linux/arm/readelflib.c */
++      *flag |= FLAG_AARCH64_LIB64|FLAG_ELF_LIBC6;
 +      break;
 +    default:
 +      error(0, 0, "%s is a 64-bit ELF for unknown machine %lx\n",
-- 
2.8.0.rc3

-- 
Clemens Lang • Development Specialist
BMW Car IT GmbH • Lise-Meitner-Str. 14 • 89081 Ulm • http://bmw-carit.com
-------------------------------------------------------------------------
BMW Car IT GmbH
Geschäftsführer: Michael Würtenberger und Reinhard Stolle
Sitz und Registergericht: München HRB 134810
-------------------------------------------------------------------------

