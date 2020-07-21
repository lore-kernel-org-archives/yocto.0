Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.13482.1595311786891075415
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 23:09:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=bAhG2ySR;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sathish25071992@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05462E01ED0; Mon, 20 Jul 2020 23:09:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sathish25071992[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA508E01E4E
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2020 23:09:43 -0700 (PDT)
Received: by mail-pl1-f178.google.com with SMTP id t6so9796436plo.3
        for <yocto@yoctoproject.org>; Mon, 20 Jul 2020 23:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=4nNCxA4NISHXb8YN/gB4PWnFU3p61FPwZkp1uZr/Cd0=;
        b=bAhG2ySRsGLz2jXIIBNgHn7sA+r6Qm8kMnMUw3KVOw3QdGLJMEmdVj07tg0y4MzXBd
         w/QbQY0JtD8qacGxtzAto4LeMhBUqpmCQBzPY4yqLCdxKLEgZIzPOEfR67ZBI+zi51rk
         fm1TO9PjjEh26jysvdJM1JbAVrjnBgKEtuHpbeKKZt4hEiD2G7HCEUpLyLhS2JDeyXB1
         ObDEJLqbiWWzOUpk5QgnPJSHyQVC7Krul1QsjPeHfGm5BCMj5cFCf/GYZU/zPxi4TpT2
         PyE6n6Ts/tOdAJzyAFUFOP9K45c0lLStRBOIOq28vOb5CpBH0cwERdjbUpiEtjRY5inN
         S5ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=4nNCxA4NISHXb8YN/gB4PWnFU3p61FPwZkp1uZr/Cd0=;
        b=ZDgo97hoJ3AAVgThNZrcZxsfJPqT+ffWpslSsYb2TrNEFriIujfluQAjTeCVKsaofM
         Z6MFxyBEFVhsAyP9l35DxM4LQOPuinON0r7fAI/TNAjjQlvddpsGXflaNho7QWWh/f12
         hzQVTSW8MOnwUHe/X3k8VuBmCJ4ikag4hhhr5fQ/yw2HfcBl+Vp5EdMxITGNIHK+jj2Q
         Eg4Ca30UNyehbLH827jU/qKYY+aSwAfrfaPRmo2d45gNJJ5NzNabFjOwgdb4hf3suIjt
         uFy7pe8pm426wfcSbUZCgpeVwKYoBQ37Z9s/5rnhlVSQopqIm6TkzPgen+LSt8MI7aF1
         kuzA==
X-Gm-Message-State: AOAM532CMnKfLs2/xME9QE8210QsKYkwPUTy2cQQfT5F6zxnO5SEcKlZ
	8YBOEgslrFB5ozwmvecLhmA=
X-Google-Smtp-Source: ABdhPJxrUTA4dVs9600x5+2/fJfSDr3NLLxs+evmnnNcfSvHwg4NCS/Wl7dzZsUtLvH6uURKBZebOw==
X-Received: by 2002:a17:90a:70c3:: with SMTP id a3mr3116692pjm.107.1595311781901;
        Mon, 20 Jul 2020 23:09:41 -0700 (PDT)
Received: from sathish-karthika.localdomain ([106.198.39.148])
        by smtp.gmail.com with ESMTPSA id q7sm19400898pfn.23.2020.07.20.23.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2020 23:09:41 -0700 (PDT)
From: "Sathish V" <sathish25071992@gmail.com>
To: mark.hatle@windriver.com
Cc: yocto@yoctoproject.org,
	Sathish V <sathish25071992@gmail.com>
Subject: [prelink-cross] prelink-cross: Add SPDX-License-Identifier: GPL-2.0-or-later to source files
Date: Tue, 21 Jul 2020 11:39:25 +0530
Message-Id: <20200721060925.2431-1-sathish25071992@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Sathish V <sathish25071992@gmail.com>
---
 gelf/gelf.c        | 4 +++-
 gelf/gelf.h        | 4 +++-
 gelfx/gelfx.h      | 4 +++-
 gelfx32/gelfx.h    | 4 +++-
 src/arch-alpha.c   | 4 +++-
 src/arch-arm.c     | 4 +++-
 src/arch-cris.c    | 4 +++-
 src/arch-i386.c    | 4 +++-
 src/arch-ia64.c    | 4 +++-
 src/arch-mips.c    | 4 +++-
 src/arch-ppc.c     | 4 +++-
 src/arch-ppc64.c   | 4 +++-
 src/arch-s390.c    | 4 +++-
 src/arch-s390x.c   | 4 +++-
 src/arch-sh.c      | 4 +++-
 src/arch-sparc.c   | 4 +++-
 src/arch-sparc64.c | 4 +++-
 src/arch-x86_64.c  | 4 +++-
 src/cache.c        | 4 +++-
 src/checksum.c     | 4 +++-
 src/conflict.c     | 4 +++-
 src/crc32.c        | 4 +++-
 src/cxx.c          | 4 +++-
 src/data.c         | 4 +++-
 src/doit.c         | 4 +++-
 src/dso.c          | 4 +++-
 src/dwarf2.c       | 4 +++-
 src/dwarf2.h       | 4 +++-
 src/exec.c         | 4 +++-
 src/execle_open.c  | 4 +++-
 src/execstack.c    | 4 +++-
 src/fptr.c         | 4 +++-
 src/fptr.h         | 4 +++-
 src/gather.c       | 4 +++-
 src/get.c          | 4 +++-
 src/hashtab.h      | 4 +++-
 src/layout.c       | 4 +++-
 src/layout.h       | 4 +++-
 src/main.c         | 4 +++-
 src/md5.c          | 4 +++-
 src/md5.h          | 4 +++-
 src/mdebug.c       | 4 +++-
 src/prelink.c      | 4 +++-
 src/prelink.h      | 4 +++-
 src/prelinktab.h   | 4 +++-
 src/reloc-info.c   | 4 +++-
 src/reloc-info.h   | 4 +++-
 src/reloc.c        | 4 +++-
 src/reloc.h        | 4 +++-
 src/space.c        | 4 +++-
 src/space.h        | 4 +++-
 src/stabs.c        | 4 +++-
 src/undo.c         | 4 +++-
 src/undoall.c      | 4 +++-
 src/verify.c       | 4 +++-
 55 files changed, 165 insertions(+), 55 deletions(-)

diff --git a/gelf/gelf.c b/gelf/gelf.c
index 915cf5b..08b621a 100644
--- a/gelf/gelf.c
+++ b/gelf/gelf.c
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <elf.h>
diff --git a/gelf/gelf.h b/gelf/gelf.h
index 6b76a15..3e14e6d 100644
--- a/gelf/gelf.h
+++ b/gelf/gelf.h
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef GELF_H
 #define	GELF_H
diff --git a/gelfx/gelfx.h b/gelfx/gelfx.h
index c011a57..13bf9fa 100644
--- a/gelfx/gelfx.h
+++ b/gelfx/gelfx.h
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef GELFX_H
 #define	GELFX_H
diff --git a/gelfx32/gelfx.h b/gelfx32/gelfx.h
index 7668a84..317b28b 100644
--- a/gelfx32/gelfx.h
+++ b/gelfx32/gelfx.h
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef GELFX_H
 #define	GELFX_H
diff --git a/src/arch-alpha.c b/src/arch-alpha.c
index 7802a3e..d1b897f 100644
--- a/src/arch-alpha.c
+++ b/src/arch-alpha.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-arm.c b/src/arch-arm.c
index eec7c57..eab316f 100644
--- a/src/arch-arm.c
+++ b/src/arch-arm.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-cris.c b/src/arch-cris.c
index 3272779..9987623 100644
--- a/src/arch-cris.c
+++ b/src/arch-cris.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-i386.c b/src/arch-i386.c
index a1e0fcc..cb74640 100644
--- a/src/arch-i386.c
+++ b/src/arch-i386.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-ia64.c b/src/arch-ia64.c
index 6039115..8c6749c 100644
--- a/src/arch-ia64.c
+++ b/src/arch-ia64.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-mips.c b/src/arch-mips.c
index 02c608f..7480019 100644
--- a/src/arch-mips.c
+++ b/src/arch-mips.c
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 /* GENERAL NOTES
 
diff --git a/src/arch-ppc.c b/src/arch-ppc.c
index e22e5d5..de851a8 100644
--- a/src/arch-ppc.c
+++ b/src/arch-ppc.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-ppc64.c b/src/arch-ppc64.c
index a764b99..900ec6c 100644
--- a/src/arch-ppc64.c
+++ b/src/arch-ppc64.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-s390.c b/src/arch-s390.c
index e5fe130..d9f45d0 100644
--- a/src/arch-s390.c
+++ b/src/arch-s390.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-s390x.c b/src/arch-s390x.c
index e4d82f7..b154fb7 100644
--- a/src/arch-s390x.c
+++ b/src/arch-s390x.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sh.c b/src/arch-sh.c
index 1b11312..41298a1 100644
--- a/src/arch-sh.c
+++ b/src/arch-sh.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sparc.c b/src/arch-sparc.c
index e016a79..a6a4068 100644
--- a/src/arch-sparc.c
+++ b/src/arch-sparc.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-sparc64.c b/src/arch-sparc64.c
index aee4601..6201325 100644
--- a/src/arch-sparc64.c
+++ b/src/arch-sparc64.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/arch-x86_64.c b/src/arch-x86_64.c
index 2f6c551..52f3927 100644
--- a/src/arch-x86_64.c
+++ b/src/arch-x86_64.c
@@ -15,7 +15,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/cache.c b/src/cache.c
index 1cc3217..f71ffca 100644
--- a/src/cache.c
+++ b/src/cache.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/checksum.c b/src/checksum.c
index 20a23a0..bf8dd4b 100644
--- a/src/checksum.c
+++ b/src/checksum.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/conflict.c b/src/conflict.c
index 5613ace..431f70c 100644
--- a/src/conflict.c
+++ b/src/conflict.c
@@ -15,7 +15,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/crc32.c b/src/crc32.c
index f36abb5..e7b89e5 100644
--- a/src/crc32.c
+++ b/src/crc32.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <stdint.h>
diff --git a/src/cxx.c b/src/cxx.c
index 4391ebe..aea5875 100644
--- a/src/cxx.c
+++ b/src/cxx.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/data.c b/src/data.c
index 751f96f..0dc249a 100644
--- a/src/data.c
+++ b/src/data.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include "prelink.h"
diff --git a/src/doit.c b/src/doit.c
index 3784866..57780b0 100644
--- a/src/doit.c
+++ b/src/doit.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/dso.c b/src/dso.c
index 949abf9..8cf6095 100644
--- a/src/dso.c
+++ b/src/dso.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/dwarf2.c b/src/dwarf2.c
index b9588b1..5c22e97 100644
--- a/src/dwarf2.c
+++ b/src/dwarf2.c
@@ -14,7 +14,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/dwarf2.h b/src/dwarf2.h
index b0c80b6..f451368 100644
--- a/src/dwarf2.h
+++ b/src/dwarf2.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #define DW_TAG_padding			0x00
 #define DW_TAG_array_type		0x01
diff --git a/src/exec.c b/src/exec.c
index ca7fd14..7a39b21 100644
--- a/src/exec.c
+++ b/src/exec.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/execle_open.c b/src/execle_open.c
index 2ee5cbc..7fb83a8 100644
--- a/src/execle_open.c
+++ b/src/execle_open.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/execstack.c b/src/execstack.c
index 97fb453..b1c005c 100644
--- a/src/execstack.c
+++ b/src/execstack.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/fptr.c b/src/fptr.c
index cfe3aed..85e069e 100644
--- a/src/fptr.c
+++ b/src/fptr.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/fptr.h b/src/fptr.h
index 36ef7c6..439281d 100644
--- a/src/fptr.h
+++ b/src/fptr.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef FPTR_H
 #define FPTR_H
diff --git a/src/gather.c b/src/gather.c
index 277f1b5..9933773 100644
--- a/src/gather.c
+++ b/src/gather.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/get.c b/src/get.c
index 0659962..304b6f0 100644
--- a/src/get.c
+++ b/src/get.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/hashtab.h b/src/hashtab.h
index 31e63e0..fdf3a69 100644
--- a/src/hashtab.h
+++ b/src/hashtab.h
@@ -14,7 +14,9 @@ GNU General Public License for more details.
 
 You should have received a copy of the GNU General Public License
 along with this program; if not, write to the Free Software
-Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+SPDX-License-Identifier: GPL-2.0-or-later  */
 
 /* This package implements basic hash table functionality.  It is possible
    to search for an entry, create an entry and destroy an entry.
diff --git a/src/layout.c b/src/layout.c
index 859ab66..8e86e6a 100644
--- a/src/layout.c
+++ b/src/layout.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/layout.h b/src/layout.h
index f481d22..eb9fd64 100644
--- a/src/layout.h
+++ b/src/layout.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef LAYOUT_H
 #define LAYOUT_H
diff --git a/src/main.c b/src/main.c
index 6ba89d5..2097a6e 100644
--- a/src/main.c
+++ b/src/main.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <errno.h>
diff --git a/src/md5.c b/src/md5.c
index 0d2fdef..295ba17 100644
--- a/src/md5.c
+++ b/src/md5.c
@@ -16,7 +16,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 /* Written by Ulrich Drepper <drepper@gnu.ai.mit.edu>, 1995.  */
 
diff --git a/src/md5.h b/src/md5.h
index 55f6195..76be5f7 100644
--- a/src/md5.h
+++ b/src/md5.h
@@ -16,7 +16,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef _MD5_H
 #define _MD5_H 1
diff --git a/src/mdebug.c b/src/mdebug.c
index 4c22d2f..88e4d88 100644
--- a/src/mdebug.c
+++ b/src/mdebug.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/prelink.c b/src/prelink.c
index 64c4fea..d9595a5 100644
--- a/src/prelink.c
+++ b/src/prelink.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/prelink.h b/src/prelink.h
index 39c4390..6a7595c 100644
--- a/src/prelink.h
+++ b/src/prelink.h
@@ -16,7 +16,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef PRELINK_H
 #define PRELINK_H
diff --git a/src/prelinktab.h b/src/prelinktab.h
index f41c79c..c7d5bca 100644
--- a/src/prelinktab.h
+++ b/src/prelinktab.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef PRELINKTAB_H
 #define PRELINKTAB_H
diff --git a/src/reloc-info.c b/src/reloc-info.c
index 4ce333c..f9a7f67 100644
--- a/src/reloc-info.c
+++ b/src/reloc-info.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 
diff --git a/src/reloc-info.h b/src/reloc-info.h
index a8f8b7c..5796f66 100644
--- a/src/reloc-info.h
+++ b/src/reloc-info.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef RELOC_INFO_H
 #define RELOC_INFO_H
diff --git a/src/reloc.c b/src/reloc.c
index deb0abe..0471d9a 100644
--- a/src/reloc.c
+++ b/src/reloc.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/reloc.h b/src/reloc.h
index a2ceff9..ec7d33a 100644
--- a/src/reloc.h
+++ b/src/reloc.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef RELOC_H
 #define RELOC_H
diff --git a/src/space.c b/src/space.c
index 4bd4760..ef23e39 100644
--- a/src/space.c
+++ b/src/space.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/space.h b/src/space.h
index 5c9f725..ec754c3 100644
--- a/src/space.h
+++ b/src/space.h
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #ifndef SPACE_H
 #define SPACE_H
diff --git a/src/stabs.c b/src/stabs.c
index c0a5a6a..5019f62 100644
--- a/src/stabs.c
+++ b/src/stabs.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/undo.c b/src/undo.c
index 4c38dab..49c18ef 100644
--- a/src/undo.c
+++ b/src/undo.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
diff --git a/src/undoall.c b/src/undoall.c
index 55d2a0b..1235fc7 100644
--- a/src/undoall.c
+++ b/src/undoall.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <alloca.h>
diff --git a/src/verify.c b/src/verify.c
index 7f530c0..52bc488 100644
--- a/src/verify.c
+++ b/src/verify.c
@@ -13,7 +13,9 @@
 
    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software Foundation,
-   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */
+   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  
+
+   SPDX-License-Identifier: GPL-2.0-or-later  */
 
 #include <config.h>
 #include <assert.h>
-- 
2.17.1

