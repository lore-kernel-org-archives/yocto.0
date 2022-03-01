Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBAB6C433EF
	for <webhook@archiver.kernel.org>; Tue,  1 Mar 2022 17:52:38 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web11.219.1646157157328307198
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 09:52:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Uu0Z9GgG;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id e10so4179120wro.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 09:52:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VCssgLpRM8ifCAhjCgsWLswHMBQkmicbx5REzSUBCtU=;
        b=Uu0Z9GgGhUmPh8Lz8xpcUweBYGKffPGhJN9a3BAkWrkXA/YLFy6UBHiM3kzcrt0o/k
         tP66YtVERvhmmGDNfhxY5DpVS/sebqrIsIyRXCF5TZPK1WMkotlx71t4TrrRSqG/4E6y
         6anJBrQpndYwZV32s2jrfFZ0jgEYjkzKar9uQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VCssgLpRM8ifCAhjCgsWLswHMBQkmicbx5REzSUBCtU=;
        b=P90nQgbABW9dpKwewKlKYbFVr+7IIRTCoiAzsRUIIbyKZs+SOTGXKQzzpu0n4XhPk0
         Wn4Wki8dzyDhNy2GldJybodLQxMdBGYtrGjclj2hMtg9zV/NzfO8kuSqquH/CfbtL02I
         ly8UOGwGsApfbxSXEofy4xfiwi4M8TPDDTqT2Dh1aj96Nc440oatS1q3E9flxihknI3W
         OySXWBdF678PygOog6zB9CpWvfwS5aQCKvkhXONeI3a483t/Tm32cETyovsrRMrzQYWz
         YkYvd97JVECGcSb3X0ZLxkAcozS/cAaWspfwOtM5NvR4E97PTpoZflv9Yc3knxEf5QYT
         95LA==
X-Gm-Message-State: AOAM530ktL/Z/KxXrCGjKLDY1CybzxZPaS4sCP5cDR6GqCYqLSf81LP2
	hxJ1lvRLSXjLhKwKLSMsLXo5sqNR9WLAQzfK
X-Google-Smtp-Source: 
 ABdhPJyxnNIZVTtavTcz3ymowAg1dCmb7JwpBbP34edcMt/loRljg76MrLRH++ixoQgcFTW8QdZF+w==
X-Received: by 2002:adf:e2cf:0:b0:1ed:a702:5ef4 with SMTP id
 d15-20020adfe2cf000000b001eda7025ef4mr20139719wrj.487.1646157154817;
        Tue, 01 Mar 2022 09:52:34 -0800 (PST)
Received: from hex.int.rpsys.net ([2001:8b0:aba:5f3c:5f88:ec89:14b:c380])
        by smtp.gmail.com with ESMTPSA id
 l26-20020a05600c1d1a00b00380def7d3desm3600543wms.17.2022.03.01.09.52.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 09:52:34 -0800 (PST)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH] recipes: Convert to use SPDX license names in
 LICENSE variables
Date: Tue,  1 Mar 2022 17:52:33 +0000
Message-Id: <20220301175233.239028-1-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Mar 2022 17:52:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56345

This uses the script from OE-Core to make the conversion.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 recipes-bsp/grub/grub_0.97.bb                         |  2 +-
 recipes-core/coreutils/coreutils_6.9.bb               |  2 +-
 recipes-core/gettext/gettext_0.16.1.bb                |  2 +-
 recipes-core/readline/readline_5.2.bb                 |  2 +-
 recipes-devtools/bison/bison_2.3.bb                   |  2 +-
 recipes-devtools/dosfstools/dosfstools_2.11.bb        |  2 +-
 recipes-devtools/elfutils/elfutils_0.148.bb           |  2 +-
 recipes-devtools/m4/m4-1.4.9.inc                      |  2 +-
 recipes-devtools/make/make_3.81.bb                    |  2 +-
 recipes-devtools/mtools/mtools_3.9.9.bb               |  2 +-
 recipes-devtools/patch/patch_2.5.9.bb                 |  2 +-
 recipes-devtools/rsync/rsync_2.6.9.bb                 |  2 +-
 recipes-extended/bash/bash_3.2.57.bb                  |  2 +-
 recipes-extended/bc/bc_1.06.bb                        |  2 +-
 recipes-extended/cpio/cpio_2.8.bb                     |  2 +-
 recipes-extended/diffutils/diffutils_2.8.1.bb         |  2 +-
 recipes-extended/ed/ed_0.5.bb                         |  2 +-
 recipes-extended/findutils/findutils_4.2.31.bb        |  2 +-
 recipes-extended/gawk/gawk_3.1.5.bb                   |  2 +-
 recipes-extended/gperf/gperf.inc                      |  2 +-
 recipes-extended/gperf/gperf_3.0.3.bb                 |  2 +-
 recipes-extended/grep/grep_2.5.1a.bb                  |  2 +-
 recipes-extended/groff/groff_1.18.1.4.bb              |  2 +-
 recipes-extended/gzip/gzip_1.3.12.bb                  |  2 +-
 recipes-extended/libidn/libidn_0.6.14.bb              |  2 +-
 recipes-extended/mc/mc_4.7.5.2.bb                     |  2 +-
 recipes-extended/msmtp/msmtp_1.4.12.bb                |  2 +-
 recipes-extended/sed/sed_4.1.2.bb                     |  2 +-
 recipes-extended/tar/tar_1.17.bb                      |  2 +-
 recipes-extended/texinfo/texinfo_4.8.bb               |  2 +-
 recipes-extended/time/time_1.7.bb                     |  2 +-
 recipes-extended/which/which_2.18.bb                  |  2 +-
 recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb        |  2 +-
 recipes-support/gdbm/gdbm_1.8.3.bb                    |  2 +-
 recipes-support/gmp/gmp_4.2.1.bb                      |  4 ++--
 recipes-support/gnupg/gnupg_1.4.7.bb                  |  2 +-
 recipes-support/gnutls/gnutls.inc                     | 10 +++++-----
 recipes-support/libiconv/libiconv_1.11.1.bb           |  2 +-
 recipes-support/nettle/nettle_2.7.1.bb                |  4 ++--
 recipes-support/shared-mime-info/shared-mime-info.inc |  2 +-
 40 files changed, 46 insertions(+), 46 deletions(-)

diff --git a/recipes-bsp/grub/grub_0.97.bb b/recipes-bsp/grub/grub_0.97.bb
index 3845c94..e6934b9 100644
--- a/recipes-bsp/grub/grub_0.97.bb
+++ b/recipes-bsp/grub/grub_0.97.bb
@@ -5,7 +5,7 @@ standard, which allows for flexible loading of multiple boot images."
 HOMEPAGE = "http://www.gnu.org/software/grub/"
 SECTION = "bootloaders"
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b \
                     file://grub/main.c;beginline=3;endline=9;md5=22a5f28d2130fff9f2a17ed54be90ed6"
 
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 8f24556..cc00de0 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -5,7 +5,7 @@ every system."
 
 HOMEPAGE = "http://www.gnu.org/software/coreutils/"
 BUGTRACKER = "http://debbugs.gnu.org/coreutils"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://src/ls.c;beginline=4;endline=16;md5=15ed60f67b1db5fedd5dbc37cf8a9543"
 PR = "r5"
diff --git a/recipes-core/gettext/gettext_0.16.1.bb b/recipes-core/gettext/gettext_0.16.1.bb
index 941a9d2..cd632ba 100644
--- a/recipes-core/gettext/gettext_0.16.1.bb
+++ b/recipes-core/gettext/gettext_0.16.1.bb
@@ -2,7 +2,7 @@ SUMMARY = "Utilities and libraries for producing multi-lingual messages"
 DESCRIPTION = "GNU gettext is a set of tools that provides a framework to help other programs produce multi-lingual messages. These tools include a set of conventions about how programs should be written to support message catalogs, a directory and file naming organization for the message catalogs themselves, a runtime library supporting the retrieval of translated messages, and a few stand-alone programs to massage in various ways the sets of translatable and already translated strings."
 HOMEPAGE = "http://www.gnu.org/software/gettext/gettext.html"
 SECTION = "libs"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=9ea3144f04c41cd2eada5d3f472e6ea5"
 
 PR = "r6"
diff --git a/recipes-core/readline/readline_5.2.bb b/recipes-core/readline/readline_5.2.bb
index aa2799e..d42ce8b 100644
--- a/recipes-core/readline/readline_5.2.bb
+++ b/recipes-core/readline/readline_5.2.bb
@@ -5,7 +5,7 @@ additional functions to maintain a list of previously-entered command lines, to
 lines, and perform csh-like history expansion on previous commands."
 SECTION = "libs"
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=03b36fdd84f74b8d8189a202b980b67f"
 
 DEPENDS += "ncurses"
diff --git a/recipes-devtools/bison/bison_2.3.bb b/recipes-devtools/bison/bison_2.3.bb
index c84fd9a..1faf73f 100644
--- a/recipes-devtools/bison/bison_2.3.bb
+++ b/recipes-devtools/bison/bison_2.3.bb
@@ -4,7 +4,7 @@ an LALR(1) or GLR parser for that grammar.  Bison is upward compatible with Yacc
 grammars ought to work with Bison with no change. Anyone familiar with Yacc should be able to use Bison with \
 little trouble."
 HOMEPAGE = "http://www.gnu.org/software/bison/"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
 SECTION = "devel"
 DEPENDS = "bison-native flex-native"
diff --git a/recipes-devtools/dosfstools/dosfstools_2.11.bb b/recipes-devtools/dosfstools/dosfstools_2.11.bb
index 37c2181..5298b32 100644
--- a/recipes-devtools/dosfstools/dosfstools_2.11.bb
+++ b/recipes-devtools/dosfstools/dosfstools_2.11.bb
@@ -5,7 +5,7 @@ SUMMARY = "DOS FAT Filesystem Utilities"
 HOMEPAGE = "https://github.com/dosfstools/dosfstools"
 
 SECTION = "base"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://mkdosfs/COPYING;md5=cbe67f08d6883bff587f615f0cc81aa8"
 PR = "r5"
 
diff --git a/recipes-devtools/elfutils/elfutils_0.148.bb b/recipes-devtools/elfutils/elfutils_0.148.bb
index 97d88a2..f3e3373 100644
--- a/recipes-devtools/elfutils/elfutils_0.148.bb
+++ b/recipes-devtools/elfutils/elfutils_0.148.bb
@@ -1,7 +1,7 @@
 SUMMARY = "Utilities and libraries for handling compiled object files"
 HOMEPAGE = "https://fedorahosted.org/elfutils"
 SECTION = "base"
-LICENSE = "(GPL-2+ & Elfutils-Exception)"
+LICENSE = "(GPL-2.0-or-later & Elfutils-Exception)"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3\
                     file://EXCEPTION;md5=570adcb0c1218ab57f2249c67d0ce417"
 DEPENDS = "libtool bzip2 zlib virtual/libintl"
diff --git a/recipes-devtools/m4/m4-1.4.9.inc b/recipes-devtools/m4/m4-1.4.9.inc
index 41f46cd..7cb8c78 100644
--- a/recipes-devtools/m4/m4-1.4.9.inc
+++ b/recipes-devtools/m4/m4-1.4.9.inc
@@ -1,6 +1,6 @@
 require m4.inc
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe\
 	file://examples/COPYING;md5=1d49bd61dc590f014cae7173b43e3e5c"
diff --git a/recipes-devtools/make/make_3.81.bb b/recipes-devtools/make/make_3.81.bb
index 9fe22a8..c670476 100644
--- a/recipes-devtools/make/make_3.81.bb
+++ b/recipes-devtools/make/make_3.81.bb
@@ -1,6 +1,6 @@
 PR = "r1"
 
-LICENSE = "GPLv2 & LGPLv2"
+LICENSE = "GPL-2.0-only & LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=361b6b837cad26c6900a926b62aada5f \
                     file://tests/COPYING;md5=8ca43cbc842c2336e835926c2166c28b \
                     file://glob/COPYING.LIB;md5=4a770b67e6be0f60da244beb2de0fce4"
diff --git a/recipes-devtools/mtools/mtools_3.9.9.bb b/recipes-devtools/mtools/mtools_3.9.9.bb
index 8e106b0..636ee67 100644
--- a/recipes-devtools/mtools/mtools_3.9.9.bb
+++ b/recipes-devtools/mtools/mtools_3.9.9.bb
@@ -2,7 +2,7 @@ SUMMARY = "Utilities to access MS-DOS disks without mounting them"
 DESCRIPTION = "Mtools is a collection of utilities to access MS-DOS disks from GNU and Unix without mounting them."
 HOMEPAGE = "http://www.gnu.org/software/mtools/"
 SECTION = "optional"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=92b58ec77696788ce278b044d2a8e9d3"
 PR = "r6"
 
diff --git a/recipes-devtools/patch/patch_2.5.9.bb b/recipes-devtools/patch/patch_2.5.9.bb
index f2970f7..01a4e68 100644
--- a/recipes-devtools/patch/patch_2.5.9.bb
+++ b/recipes-devtools/patch/patch_2.5.9.bb
@@ -1,5 +1,5 @@
 require patch.inc
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 SRC_URI += " file://debian.patch \
 	   file://install.patch \
diff --git a/recipes-devtools/rsync/rsync_2.6.9.bb b/recipes-devtools/rsync/rsync_2.6.9.bb
index 5c6c9d9..525387d 100644
--- a/recipes-devtools/rsync/rsync_2.6.9.bb
+++ b/recipes-devtools/rsync/rsync_2.6.9.bb
@@ -8,7 +8,7 @@ SRC_URI += "file://rsync-2.6.9-fname-obo.patch \
 SRC_URI[md5sum] = "996d8d8831dbca17910094e56dcb5942"
 SRC_URI[sha256sum] = "ca437301becd890e73300bc69a39189ff1564baa761948ff149b3dd7bde633f9"
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=6d5a9d4c4d3af25cd68fd83e8a8cb09c"
 
 PR = "r4"
diff --git a/recipes-extended/bash/bash_3.2.57.bb b/recipes-extended/bash/bash_3.2.57.bb
index 5c288b3..189bdc2 100644
--- a/recipes-extended/bash/bash_3.2.57.bb
+++ b/recipes-extended/bash/bash_3.2.57.bb
@@ -1,6 +1,6 @@
 require bash.inc
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=fd5d9bcabd8ed5a54a01ce8d183d592a"
 
 SRC_URI = "${GNU_MIRROR}/${BPN}/${BP}.tar.gz \
diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
index 82143a4..2319f95 100644
--- a/recipes-extended/bc/bc_1.06.bb
+++ b/recipes-extended/bc/bc_1.06.bb
@@ -1,7 +1,7 @@
 SUMMARY = "Arbitrary precision calculator language"
 HOMEPAGE = "http://www.gnu.org/software/bc/bc.html"
 
-LICENSE = "GPLv2+ & LGPLv2.1"
+LICENSE = "GPL-2.0-or-later & LGPL-2.1-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://COPYING.LIB;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
                     file://bc/bcdefs.h;endline=31;md5=46dffdaf10a99728dd8ce358e45d46d8 \
diff --git a/recipes-extended/cpio/cpio_2.8.bb b/recipes-extended/cpio/cpio_2.8.bb
index 624906b..581fe1f 100644
--- a/recipes-extended/cpio/cpio_2.8.bb
+++ b/recipes-extended/cpio/cpio_2.8.bb
@@ -1,6 +1,6 @@
 require cpio_v2.inc
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b7f772ea3a2489231cb4872656cac34b"
 
 PR = "r4"
diff --git a/recipes-extended/diffutils/diffutils_2.8.1.bb b/recipes-extended/diffutils/diffutils_2.8.1.bb
index 6e48dc6..d5d5845 100644
--- a/recipes-extended/diffutils/diffutils_2.8.1.bb
+++ b/recipes-extended/diffutils/diffutils_2.8.1.bb
@@ -1,4 +1,4 @@
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 require diffutils.inc
diff --git a/recipes-extended/ed/ed_0.5.bb b/recipes-extended/ed/ed_0.5.bb
index 8305e6b..8e0e05e 100644
--- a/recipes-extended/ed/ed_0.5.bb
+++ b/recipes-extended/ed/ed_0.5.bb
@@ -1,7 +1,7 @@
 SUMMARY = "Line-oriented text editor"
 HOMEPAGE = "http://www.gnu.org/software/ed/"
 SECTION = "base"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=6ddd5335ef96fb858a138230af773710 \
                     file://main.c;beginline=1;endline=17;md5=36d4b85e5ae9028e918d1cc775c2475e"
 
diff --git a/recipes-extended/findutils/findutils_4.2.31.bb b/recipes-extended/findutils/findutils_4.2.31.bb
index 7dee018..ef4500b 100644
--- a/recipes-extended/findutils/findutils_4.2.31.bb
+++ b/recipes-extended/findutils/findutils_4.2.31.bb
@@ -1,4 +1,4 @@
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 PR = "r4"
 
diff --git a/recipes-extended/gawk/gawk_3.1.5.bb b/recipes-extended/gawk/gawk_3.1.5.bb
index 933c140..2a75ff2 100644
--- a/recipes-extended/gawk/gawk_3.1.5.bb
+++ b/recipes-extended/gawk/gawk_3.1.5.bb
@@ -8,7 +8,7 @@ SECTION = "console/utils"
 
 # gawk <= 3.1.5: GPLv2
 # gawk >= 3.1.6: GPLv3
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 
 RDEPENDS:gawk += "gawk-common"
diff --git a/recipes-extended/gperf/gperf.inc b/recipes-extended/gperf/gperf.inc
index 10738e4..37fc334 100644
--- a/recipes-extended/gperf/gperf.inc
+++ b/recipes-extended/gperf/gperf.inc
@@ -1,7 +1,7 @@
 DESCRIPTION = "GNU gperf is a perfect hash function generator"
 HOMEPAGE = "http://www.gnu.org/software/gperf"
 SUMMARY  = "Generate a perfect hash function from a set of keywords"
-LICENSE  = "GPLv3+"
+LICENSE  = "GPL-3.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://src/main.cc;beginline=8;endline=19;md5=dec8f611845d047387ed56b5b85fa99b"
 
diff --git a/recipes-extended/gperf/gperf_3.0.3.bb b/recipes-extended/gperf/gperf_3.0.3.bb
index 7728861..d9e4928 100644
--- a/recipes-extended/gperf/gperf_3.0.3.bb
+++ b/recipes-extended/gperf/gperf_3.0.3.bb
@@ -1,6 +1,6 @@
 require gperf.inc
 
-LICENSE  = "GPLv2+"
+LICENSE  = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=a5f84abb0070adf8a0925d7d534b6e0a \
                     file://src/main.cc;beginline=8;endline=19;md5=72a3034a19e72f08ee48ef8244a121fd"
 
diff --git a/recipes-extended/grep/grep_2.5.1a.bb b/recipes-extended/grep/grep_2.5.1a.bb
index 1a3231e..c9c076b 100644
--- a/recipes-extended/grep/grep_2.5.1a.bb
+++ b/recipes-extended/grep/grep_2.5.1a.bb
@@ -2,7 +2,7 @@ SUMMARY = "Pattern matching utilities"
 DESCRIPTION = "The GNU versions of commonly used grep utilities.  The grep command searches one or more input \
 files for lines containing a match to a specified pattern."
 SECTION = "console/utils"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3"
 
 PR = "r2"
diff --git a/recipes-extended/groff/groff_1.18.1.4.bb b/recipes-extended/groff/groff_1.18.1.4.bb
index 84b0d78..293043c 100644
--- a/recipes-extended/groff/groff_1.18.1.4.bb
+++ b/recipes-extended/groff/groff_1.18.1.4.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "The groff (GNU troff) software is a typesetting package which rea
 formatting commands and produces formatted output."
 SECTION = "console/utils"
 HOMEPAGE = "http://www.gnu.org/software/groff/"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 PR = "r1"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=e43fc16fccd8519fba405f0a0ff6e8a3"
diff --git a/recipes-extended/gzip/gzip_1.3.12.bb b/recipes-extended/gzip/gzip_1.3.12.bb
index 5f7f6cd..94998ca 100644
--- a/recipes-extended/gzip/gzip_1.3.12.bb
+++ b/recipes-extended/gzip/gzip_1.3.12.bb
@@ -1,6 +1,6 @@
 require gzip.inc
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
                     file://gzip.h;endline=22;md5=c0934ad1900d927f86556153d4c76d23 \
                     file://lzw.h;endline=19;md5=c273e09a02edd9801cc74d39683049e9 "
diff --git a/recipes-extended/libidn/libidn_0.6.14.bb b/recipes-extended/libidn/libidn_0.6.14.bb
index dfd9c6e..f5153a1 100644
--- a/recipes-extended/libidn/libidn_0.6.14.bb
+++ b/recipes-extended/libidn/libidn_0.6.14.bb
@@ -2,7 +2,7 @@ SUMMARY = "Internationalized Domain Name support library"
 DESCRIPTION = "Implementation of the Stringprep, Punycode and IDNA specifications defined by the IETF Internationalized Domain Names (IDN) working group."
 HOMEPAGE = "http://www.gnu.org/software/libidn/"
 SECTION = "libs"
-LICENSE = "LGPLv2.1+ & GPLv2+"
+LICENSE = "LGPL-2.1-or-later & GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a \
                     file://COPYING.LIB;md5=a6f89e2100d9b6cdffcea4f398e37343 \
                     file://lib/idna.h;beginline=6;endline=18;md5=1336e848ca7b8e25767c3c7e8fa38a89 \
diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
index 2d30fe7..0fe4ab0 100644
--- a/recipes-extended/mc/mc_4.7.5.2.bb
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -1,6 +1,6 @@
 SUMMARY = "Midnight Commander is an ncurses based file manager"
 HOMEPAGE = "http://www.midnight-commander.org/"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 SECTION = "console/utils"
 DEPENDS = "ncurses glib-2.0"
diff --git a/recipes-extended/msmtp/msmtp_1.4.12.bb b/recipes-extended/msmtp/msmtp_1.4.12.bb
index 21d9f81..f77b2b7 100644
--- a/recipes-extended/msmtp/msmtp_1.4.12.bb
+++ b/recipes-extended/msmtp/msmtp_1.4.12.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "A sendmail replacement for use in MTAs like mutt"
 HOMEPAGE = "http://msmtp.sourceforge.net/"
 SECTION = "console/network"
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
diff --git a/recipes-extended/sed/sed_4.1.2.bb b/recipes-extended/sed/sed_4.1.2.bb
index 24f479e..dc061ca 100644
--- a/recipes-extended/sed/sed_4.1.2.bb
+++ b/recipes-extended/sed/sed_4.1.2.bb
@@ -1,6 +1,6 @@
 SUMMARY = "Stream EDitor (text filtering utility)"
 HOMEPAGE = "http://www.gnu.org/software/sed/"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
                     file://sed/sed.h;beginline=1;endline=17;md5=e00ffd1837f298439a214fd197f6a407"
 SECTION = "console/utils"
diff --git a/recipes-extended/tar/tar_1.17.bb b/recipes-extended/tar/tar_1.17.bb
index 1ee5e34..e4d4746 100644
--- a/recipes-extended/tar/tar_1.17.bb
+++ b/recipes-extended/tar/tar_1.17.bb
@@ -1,6 +1,6 @@
 require tar.inc
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=59530bdf33659b29e73d4adb9f9f6552"
 
 PR = "r3"
diff --git a/recipes-extended/texinfo/texinfo_4.8.bb b/recipes-extended/texinfo/texinfo_4.8.bb
index ea269cc..c975f48 100644
--- a/recipes-extended/texinfo/texinfo_4.8.bb
+++ b/recipes-extended/texinfo/texinfo_4.8.bb
@@ -4,7 +4,7 @@ online information and printed output from a single source file. The \
 GNU Project uses the Texinfo file format for most of its documentation."
 HOMEPAGE = "http://www.gnu.org/software/texinfo/"
 SECTION = "console/utils"
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f"
 
 PROVIDES:append:class-native = " texinfo-4.8-replacement-native"
diff --git a/recipes-extended/time/time_1.7.bb b/recipes-extended/time/time_1.7.bb
index ccc7788..8807334 100644
--- a/recipes-extended/time/time_1.7.bb
+++ b/recipes-extended/time/time_1.7.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "time measures many of the CPU resources, such as time and \
 memory, that other programs use."
 HOMEPAGE = "http://www.gnu.org/software/time/"
 SECTION = "utils"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 
 inherit texinfo update-alternatives
diff --git a/recipes-extended/which/which_2.18.bb b/recipes-extended/which/which_2.18.bb
index 63b43c4..42d0bf2 100644
--- a/recipes-extended/which/which_2.18.bb
+++ b/recipes-extended/which/which_2.18.bb
@@ -6,7 +6,7 @@ It does this by using the exact same algorithm as bash."
 SECTION = "libs"
 HOMEPAGE = "http://carlo17.home.xs4all.nl/which/"
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe"
 
 PR = "r2"
diff --git a/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb b/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
index 1f83559..ee84302 100644
--- a/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
+++ b/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb
@@ -1,6 +1,6 @@
 require rxvt-unicode.inc
 
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://src/main.C;beginline=1;endline=31;md5=775485398a09fa7aee6f90464af88432"
 
diff --git a/recipes-support/gdbm/gdbm_1.8.3.bb b/recipes-support/gdbm/gdbm_1.8.3.bb
index b7551ad..2259fb1 100644
--- a/recipes-support/gdbm/gdbm_1.8.3.bb
+++ b/recipes-support/gdbm/gdbm_1.8.3.bb
@@ -1,7 +1,7 @@
 SUMMARY = "Key/value database library with extensible hashing"
 HOMEPAGE = "http://www.gnu.org/software/gdbm/"
 SECTION = "libs"
-LICENSE = "GPLv2+"
+LICENSE = "GPL-2.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d8e20eece214df8ef953ed5857862150"
 
 PR = "r4"
diff --git a/recipes-support/gmp/gmp_4.2.1.bb b/recipes-support/gmp/gmp_4.2.1.bb
index 88d8f9b..1cb9311 100644
--- a/recipes-support/gmp/gmp_4.2.1.bb
+++ b/recipes-support/gmp/gmp_4.2.1.bb
@@ -1,7 +1,7 @@
 require gmp.inc
 
-LICENSE = "LGPLv2.1+ & GPLv2+"
-LICENSE:${PN} = "LGPLv2.1+"
+LICENSE = "LGPL-2.1-or-later & GPL-2.0-or-later"
+LICENSE:${PN} = "LGPL-2.1-or-later"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=892f569a555ba9c07a568a7c0c4fa63a \
                     file://COPYING.LIB;md5=fbc093901857fcd118f065f900982c24 \
diff --git a/recipes-support/gnupg/gnupg_1.4.7.bb b/recipes-support/gnupg/gnupg_1.4.7.bb
index 7f146a1..06d327c 100644
--- a/recipes-support/gnupg/gnupg_1.4.7.bb
+++ b/recipes-support/gnupg/gnupg_1.4.7.bb
@@ -3,7 +3,7 @@ HOMEPAGE = "http://www.gnupg.org/"
 DEPENDS = "zlib bzip2 readline"
 SECTION = "console/utils"
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=eb723b61539feef013de476e68b5c50a"
 
diff --git a/recipes-support/gnutls/gnutls.inc b/recipes-support/gnutls/gnutls.inc
index 491fdbf..b22c533 100644
--- a/recipes-support/gnutls/gnutls.inc
+++ b/recipes-support/gnutls/gnutls.inc
@@ -2,11 +2,11 @@ SUMMARY = "GNU Transport Layer Security Library"
 HOMEPAGE = "http://www.gnu.org/software/gnutls/"
 BUGTRACKER = "https://savannah.gnu.org/support/?group=gnutls"
 
-LICENSE = "GPLv3+ & LGPLv2.1+"
-LICENSE:${PN} = "LGPLv2.1+"
-LICENSE:${PN}-xx = "LGPLv2.1+"
-LICENSE:${PN}-bin = "GPLv3+"
-LICENSE:${PN}-openssl = "GPLv3+"
+LICENSE = "GPL-3.0-or-later & LGPL-2.1-or-later"
+LICENSE:${PN} = "LGPL-2.1-or-later"
+LICENSE:${PN}-xx = "LGPL-2.1-or-later"
+LICENSE:${PN}-bin = "GPL-3.0-or-later"
+LICENSE:${PN}-OpenSSL = "GPL-3.0-or-later"
 
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504 \
                     file://COPYING.LESSER;md5=a6f89e2100d9b6cdffcea4f398e37343"
diff --git a/recipes-support/libiconv/libiconv_1.11.1.bb b/recipes-support/libiconv/libiconv_1.11.1.bb
index 1e6668e..20a4f62 100644
--- a/recipes-support/libiconv/libiconv_1.11.1.bb
+++ b/recipes-support/libiconv/libiconv_1.11.1.bb
@@ -6,7 +6,7 @@ SECTION = "libs"
 NOTES = "Needs to be stripped down to: ascii iso8859-1 eucjp iso-2022jp gb utf8"
 PROVIDES = "virtual/libiconv"
 
-LICENSE = "LGPLv2.0"
+LICENSE = "LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674 \
                     file://libcharset/COPYING.LIB;md5=9f604d8a4f8e74f4f5140845a21b6674"
 
diff --git a/recipes-support/nettle/nettle_2.7.1.bb b/recipes-support/nettle/nettle_2.7.1.bb
index 7ff03dd..d5026b6 100644
--- a/recipes-support/nettle/nettle_2.7.1.bb
+++ b/recipes-support/nettle/nettle_2.7.1.bb
@@ -1,7 +1,7 @@
 require nettle.inc
 
-LICENSE = "LGPLv2.1+ & GPLv2"
-LICENSE:${PN} = "LGPLv2.1+"
+LICENSE = "LGPL-2.1-or-later & GPL-2.0-only"
+LICENSE:${PN} = "LGPL-2.1-or-later"
 
 LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=2d5025d4aa3495befef8f17206a5b0a1 \
                     file://serpent-decrypt.c;beginline=53;endline=67;md5=bcfd4745d53ca57f82907089898e390d \
diff --git a/recipes-support/shared-mime-info/shared-mime-info.inc b/recipes-support/shared-mime-info/shared-mime-info.inc
index 06d0422..47a7610 100644
--- a/recipes-support/shared-mime-info/shared-mime-info.inc
+++ b/recipes-support/shared-mime-info/shared-mime-info.inc
@@ -2,7 +2,7 @@ SUMMARY = "Shared MIME type database and specification"
 HOMEPAGE = "http://freedesktop.org/wiki/Software/shared-mime-info"
 SECTION = "base"
 
-LICENSE = "GPLv2"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
 
 DEPENDS = "libxml2 intltool-native glib-2.0 shared-mime-info-native"
-- 
2.32.0


