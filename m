Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.12401.1602165088055343485
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Oct 2020 06:51:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sNrVLrll;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: idadelm@gmail.com)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 19B0638C08A5
	for <yocto@yoctoproject.org>; Thu,  8 Oct 2020 06:51:27 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id j2so6700061wrx.7
        for <yocto@yoctoproject.org>; Thu, 08 Oct 2020 06:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=VQKIwIC1fruwWqZwn1K2/e5m6RN9HqsMn33tw32AsiU=;
        b=sNrVLrll2REZR0LgeN8X35mIgA2AnStX0VX8M2z63mEKoEnT2jrxGhumHpKytYx2KZ
         0Ul4weZD4cvi8+DTyPQqqVYDqfBlXCBfbXHz/3jRFqT6PDfAVxQTuqP9TCCuORF1hR4p
         l55YQrNeJUxp2r9sVN5eu45ANxHArESXvUZ71Hk5IJ3xmy8fHT3FX9lWOXCDZnn7Usdd
         WnoO2vv4ueHttrXij0rJ5AyvTuCTZT+wcNetlnkO0bHkYuik6V2OdnbRq+hgxycXgBqT
         1YxdEscSknvNlDSQKT6iEbH+aUJ2eNWuVeqSgiTA5cjEqVUlgJbDmAj02vOf19x1X62z
         gpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=VQKIwIC1fruwWqZwn1K2/e5m6RN9HqsMn33tw32AsiU=;
        b=Ct4MsMAR0YLmaYrq+zbxT6OowCpcKxFB5FJZTxLJY18lZSlzYNo6uSfzIx2xY6pOBv
         SMG3PwKQ31v57HZcVL13+MDh/mdr6M5dQnYBajVLVNA0z1Nn1z6CQVzcDCrvDPURfDAR
         7uPPKa1yMJq7VUtep9U4C3aacJtBDEXiMdBi6Ds5LLy4USazG+GA7VbKEYB4ooPFBgmU
         GZ5xn9jeqr2GtSeocAgksGXY27TaI6oGflkEiBPZknLMwE9zBrAOdx0f3u5+IzpvPUxo
         VK5GXnO+eMXxYzKz1QzA2lZd+ltXTDVFk9eOqRuyp3HG0xFbm2USfMXSrRqMkMc89/UF
         4lQQ==
X-Gm-Message-State: AOAM532/E7rB4tZ0rNAyM1xsRRJ2h5z830yGFCCcyDARjghlZU0nmJpP
	JdPHadNDumUJe16+Lc+Q/A4RgXjgKjQIiknp
X-Google-Smtp-Source: ABdhPJwk5SaE4Jt7mxzjI/lu7uU04F8NAEDB0bK2nK1iN9AZTUdpoj6TFh102NHKhmKsxHKVQF98Ag==
X-Received: by 2002:adf:ce0b:: with SMTP id p11mr3583834wrn.318.1602165085262;
        Thu, 08 Oct 2020 06:51:25 -0700 (PDT)
Received: from localhost.localdomain ([129.0.101.9])
        by smtp.gmail.com with ESMTPSA id e13sm7726628wre.60.2020.10.08.06.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2020 06:51:24 -0700 (PDT)
From: "Meh Mbeh Ida Delphine" <idadelm@gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org,
	Meh Mbeh Ida Delphine <idadelm@gmail.com>
Subject: [prelink-cross] Reverted to previous commit and ONLY added the SPDX identifiers
Date: Thu,  8 Oct 2020 14:51:04 +0100
Message-Id: <20201008135104.5911-1-idadelm@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Meh Mbeh Ida Delphine <idadelm@gmail.com>
---
 src/arch-alpha.c   | 4 ++++
 src/arch-arm.c     | 4 ++++
 src/arch-cris.c    | 4 ++++
 src/arch-i386.c    | 4 ++++
 src/arch-ia64.c    | 4 ++++
 src/arch-mips.c    | 4 ++++
 src/arch-ppc.c     | 4 ++++
 src/arch-ppc64.c   | 4 ++++
 src/arch-s390.c    | 4 ++++
 src/arch-s390x.c   | 4 ++++
 src/arch-sh.c      | 4 ++++
 src/arch-sparc.c   | 4 ++++
 src/arch-sparc64.c | 4 ++++
 src/arch-x86_64.c  | 4 ++++
 src/cache.c        | 4 ++++
 src/canonicalize.c | 4 ++++
 src/checksum.c     | 4 ++++
 src/conflict.c     | 4 ++++
 src/crc32.c        | 4 ++++
 src/cxx.c          | 4 ++++
 src/data.c         | 4 ++++
 src/doit.c         | 4 ++++
 src/dso.c          | 4 ++++
 src/dwarf2.c       | 4 ++++
 src/dwarf2.h       | 4 ++++
 src/exec.c         | 4 ++++
 src/execle_open.c  | 4 ++++
 src/execstack.c    | 4 ++++
 src/fptr.c         | 4 ++++
 src/fptr.h         | 4 ++++
 src/gather.c       | 4 ++++
 src/get.c          | 4 ++++
 src/hashtab.c      | 4 ++++
 src/hashtab.h      | 4 ++++
 src/layout.c       | 4 ++++
 src/layout.h       | 4 ++++
 src/main.c         | 4 ++++
 src/md5.c          | 4 ++++
 src/md5.h          | 4 ++++
 src/mdebug.c       | 4 ++++
 src/prelink.c      | 4 ++++
 src/prelink.h      | 4 ++++
 src/prelinktab.h   | 4 ++++
 src/reloc-info.c   | 4 ++++
 src/reloc-info.h   | 4 ++++
 src/reloc.c        | 4 ++++
 src/reloc.h        | 4 ++++
 src/sha.c          | 4 ++++
 src/sha.h          | 4 ++++
 src/space.c        | 4 ++++
 src/space.h        | 4 ++++
 src/stabs.c        | 4 ++++
 src/undo.c         | 4 ++++
 src/undoall.c      | 4 ++++
 src/verify.c       | 4 ++++
 55 files changed, 220 insertions(+)

diff --git a/src/arch-alpha.c b/src/arch-alpha.c
index 7802a3e..0448e7b 100644
--- a/src/arch-alpha.c
+++ b/src/arch-alpha.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-arm.c b/src/arch-arm.c
index eec7c57..2f52aa9 100644
--- a/src/arch-arm.c
+++ b/src/arch-arm.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-cris.c b/src/arch-cris.c
index 3272779..f8a0efc 100644
--- a/src/arch-cris.c
+++ b/src/arch-cris.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-i386.c b/src/arch-i386.c
index a1e0fcc..400c6e5 100644
--- a/src/arch-i386.c
+++ b/src/arch-i386.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-ia64.c b/src/arch-ia64.c
index 6039115..d3c7729 100644
--- a/src/arch-ia64.c
+++ b/src/arch-ia64.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-mips.c b/src/arch-mips.c
index 02c608f..293b15d 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -78,6 +78,10 @@
    for type E would either be a no-op (if the GOT entry already contains
    st_value) or would lose the address of the lazy binding stub.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-ppc.c b/src/arch-ppc.c
index e22e5d5..a96fedb 100644
--- a/src/arch-ppc.c
+++ b/src/arch-ppc.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
index a764b99..33c1eed 100644
--- a/src/arch-ppc64.c
+++ b/src/arch-ppc64.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-s390.c b/src/arch-s390.c
index e5fe130..a829063 100644
--- a/src/arch-s390.c
+++ b/src/arch-s390.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-s390x.c b/src/arch-s390x.c
index e4d82f7..630eb37 100644
--- a/src/arch-s390x.c
+++ b/src/arch-s390x.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-sh.c b/src/arch-sh.c
index 1b11312..e181e27 100644
--- a/src/arch-sh.c
+++ b/src/arch-sh.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-sparc.c b/src/arch-sparc.c
index e016a79..0649f40 100644
--- a/src/arch-sparc.c
+++ b/src/arch-sparc.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
index aee4601..691b57c 100644
--- a/src/arch-sparc64.c
+++ b/src/arch-sparc64.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 2f6c551..12123f8 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -17,6 +17,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/cache.c b/src/cache.c
index 1cc3217..9fa9056 100644
--- a/src/cache.c
+++ b/src/cache.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/canonicalize.c b/src/canonicalize.c
index 79df44e..dc0e2d9 100644
--- a/src/canonicalize.c
+++ b/src/canonicalize.c
@@ -17,6 +17,10 @@
    Software Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
    02111-1307 USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <assert.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/src/checksum.c b/src/checksum.c
index 20a23a0..0783588 100644
--- a/src/checksum.c
+++ b/src/checksum.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <endian.h>
diff --git a/src/conflict.c b/src/conflict.c
index 5613ace..67fe6c1 100644
--- a/src/conflict.c
+++ b/src/conflict.c
@@ -17,6 +17,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/crc32.c b/src/crc32.c
index f36abb5..ba441c7 100644
--- a/src/crc32.c
+++ b/src/crc32.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <stdint.h>
 #include <sys/types.h>
diff --git a/src/cxx.c b/src/cxx.c
index 4391ebe..b4ca1d5 100644
--- a/src/cxx.c
+++ b/src/cxx.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <alloca.h>
 #include <assert.h>
diff --git a/src/data.c b/src/data.c
index 751f96f..ad92794 100644
--- a/src/data.c
+++ b/src/data.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include "prelink.h"
 
diff --git a/src/doit.c b/src/doit.c
index 3784866..ec2a8d9 100644
--- a/src/doit.c
+++ b/src/doit.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <alloca.h>
 #include <errno.h>
diff --git a/src/dso.c b/src/dso.c
index 949abf9..c7594b6 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/dwarf2.c b/src/dwarf2.c
index b9588b1..46a06a4 100644
--- a/src/dwarf2.c
+++ b/src/dwarf2.c
@@ -16,6 +16,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <byteswap.h>
diff --git a/src/dwarf2.h b/src/dwarf2.h
index b0c80b6..d0f722e 100644
--- a/src/dwarf2.h
+++ b/src/dwarf2.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #define DW_TAG_padding			0x00
 #define DW_TAG_array_type		0x01
 #define DW_TAG_class_type		0x02
diff --git a/src/exec.c b/src/exec.c
index ca7fd14..59832c1 100644
--- a/src/exec.c
+++ b/src/exec.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/execle_open.c b/src/execle_open.c
index 2ee5cbc..dac66ed 100644
--- a/src/execle_open.c
+++ b/src/execle_open.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <errno.h>
 #include <error.h>
diff --git a/src/execstack.c b/src/execstack.c
index 97fb453..b281860 100644
--- a/src/execstack.c
+++ b/src/execstack.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <errno.h>
 #include <fcntl.h>
diff --git a/src/fptr.c b/src/fptr.c
index cfe3aed..52e3306 100644
--- a/src/fptr.c
+++ b/src/fptr.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/fptr.h b/src/fptr.h
index 36ef7c6..037f614 100644
--- a/src/fptr.h
+++ b/src/fptr.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef FPTR_H
 #define FPTR_H
 
diff --git a/src/gather.c b/src/gather.c
index 277f1b5..da7cdc1 100644
--- a/src/gather.c
+++ b/src/gather.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/get.c b/src/get.c
index 0659962..4171bd6 100644
--- a/src/get.c
+++ b/src/get.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/hashtab.c b/src/hashtab.c
index fa27446..d5c4786 100644
--- a/src/hashtab.c
+++ b/src/hashtab.c
@@ -31,6 +31,10 @@ Boston, MA 02111-1307, USA.  */
    expanded by creation of new hash table and transferring elements from
    the old table to the new table. */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <sys/types.h>
 #include <stdlib.h>
diff --git a/src/hashtab.h b/src/hashtab.h
index 31e63e0..f9ccfb4 100644
--- a/src/hashtab.h
+++ b/src/hashtab.h
@@ -29,6 +29,10 @@ Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
    expanded by creation of new hash table and transferring elements from
    the old table to the new table.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef __HASHTAB_H__
 #define __HASHTAB_H__
 
diff --git a/src/layout.c b/src/layout.c
index 859ab66..a96a5f4 100644
--- a/src/layout.c
+++ b/src/layout.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <alloca.h>
 #include <errno.h>
diff --git a/src/layout.h b/src/layout.h
index f481d22..9e37947 100644
--- a/src/layout.h
+++ b/src/layout.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef LAYOUT_H
 #define LAYOUT_H
 
diff --git a/src/main.c b/src/main.c
index 6ba89d5..680e04a 100644
--- a/src/main.c
+++ b/src/main.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <errno.h>
 #include <fcntl.h>
diff --git a/src/md5.c b/src/md5.c
index 0d2fdef..8ca8ad3 100644
--- a/src/md5.c
+++ b/src/md5.c
@@ -20,6 +20,10 @@
 
 /* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <sys/types.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/src/md5.h b/src/md5.h
index 55f6195..be8f9e3 100644
--- a/src/md5.h
+++ b/src/md5.h
@@ -18,6 +18,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef _MD5_H
 #define _MD5_H 1
 
diff --git a/src/mdebug.c b/src/mdebug.c
index 4c22d2f..33b5c66 100644
--- a/src/mdebug.c
+++ b/src/mdebug.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <byteswap.h>
diff --git a/src/prelink.c b/src/prelink.c
index 64c4fea..dcae3bb 100644
--- a/src/prelink.c
+++ b/src/prelink.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <endian.h>
diff --git a/src/prelink.h b/src/prelink.h
index 39c4390..b7abcb5 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -18,6 +18,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef PRELINK_H
 #define PRELINK_H
 
diff --git a/src/prelinktab.h b/src/prelinktab.h
index f41c79c..41bf3ec 100644
--- a/src/prelinktab.h
+++ b/src/prelinktab.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef PRELINKTAB_H
 #define PRELINKTAB_H
 
diff --git a/src/reloc-info.c b/src/reloc-info.c
index 4ce333c..47ec22f 100644
--- a/src/reloc-info.c
+++ b/src/reloc-info.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 
 #include "prelink.h"
diff --git a/src/reloc-info.h b/src/reloc-info.h
index a8f8b7c..3144976 100644
--- a/src/reloc-info.h
+++ b/src/reloc-info.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef RELOC_INFO_H
 #define RELOC_INFO_H
 
diff --git a/src/reloc.c b/src/reloc.c
index deb0abe..3ebc038 100644
--- a/src/reloc.c
+++ b/src/reloc.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/reloc.h b/src/reloc.h
index a2ceff9..5eec023 100644
--- a/src/reloc.h
+++ b/src/reloc.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef RELOC_H
 #define RELOC_H
 
diff --git a/src/sha.c b/src/sha.c
index cfbc956..38e520c 100644
--- a/src/sha.c
+++ b/src/sha.c
@@ -8,6 +8,10 @@
    NOTE: The canonical source of this file is maintained in GNU coreutils.
 */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <sys/types.h>
 #include <stdlib.h>
 #include <string.h>
diff --git a/src/sha.h b/src/sha.h
index 13583e3..055b4a4 100644
--- a/src/sha.h
+++ b/src/sha.h
@@ -4,6 +4,10 @@
    Copyright (C) 1999, Scott G. Miller
 */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef _SHA_H
 # define _SHA_H 1
 
diff --git a/src/space.c b/src/space.c
index 4bd4760..d732bd5 100644
--- a/src/space.c
+++ b/src/space.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <errno.h>
diff --git a/src/space.h b/src/space.h
index 5c9f725..77f2ba3 100644
--- a/src/space.h
+++ b/src/space.h
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #ifndef SPACE_H
 #define SPACE_H
 
diff --git a/src/stabs.c b/src/stabs.c
index c0a5a6a..28ee0bd 100644
--- a/src/stabs.c
+++ b/src/stabs.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <byteswap.h>
diff --git a/src/undo.c b/src/undo.c
index 4c38dab..5df2e1c 100644
--- a/src/undo.c
+++ b/src/undo.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <endian.h>
diff --git a/src/undoall.c b/src/undoall.c
index 55d2a0b..7896577 100644
--- a/src/undoall.c
+++ b/src/undoall.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <alloca.h>
 #include <errno.h>
diff --git a/src/verify.c b/src/verify.c
index 7f530c0..92f12d3 100644
--- a/src/verify.c
+++ b/src/verify.c
@@ -15,6 +15,10 @@
    along with this program; if not, write to the Free Software Foundation,
    Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
 
+/*
+* SPDX-License-Identifier: GPL-2.0-or-later
+*/
+
 #include <config.h>
 #include <assert.h>
 #include <endian.h>
-- 
2.17.1

