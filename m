Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AF65E00CA7; Tue,  8 Sep 2015 01:21:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F0C7E00B65
	for <yocto@yoctoproject.org>; Tue,  8 Sep 2015 01:21:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t888LIiX012245
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 8 Sep 2015 01:21:18 -0700 (PDT)
Received: from ala-blade48.wrs.com (147.11.105.68) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.235.1;
	Tue, 8 Sep 2015 01:21:18 -0700
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 8 Sep 2015 01:21:17 -0700
Message-ID: <1441700477-24062-1-git-send-email-liezhi.yang@windriver.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
Subject: [meta-selinux] [PATCH] ustr: fix build error with gcc 5
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
X-List-Received-Date: Tue, 08 Sep 2015 08:21:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Backport a patch from debian to fix errors as:
ustr-main.h:1062: multiple definition of `ustrp_setf_owner'

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 recipes-extended/ustr/ustr/ustr-gnu-inline.diff |  871 +++++++++++++++++++++++
 recipes-extended/ustr/ustr_1.0.4.bb             |    4 +-
 2 files changed, 874 insertions(+), 1 deletion(-)
 create mode 100644 recipes-extended/ustr/ustr/ustr-gnu-inline.diff

diff --git a/recipes-extended/ustr/ustr/ustr-gnu-inline.diff b/recipes-extended/ustr/ustr/ustr-gnu-inline.diff
new file mode 100644
index 0000000..7ea0454
--- /dev/null
+++ b/recipes-extended/ustr/ustr/ustr-gnu-inline.diff
@@ -0,0 +1,871 @@
+From: Václav Ovsík <vaclav.ovsik@gmail.com>
+Subject: [PATCH] fixes/gnu-inline
+
+This patch adds `__attribute__ ((gnu_inline))' into prototype macros
+before `inline' to force GNU89 behaviour of inline functions
+in C99 mode.
+See http://www.gnu.org/software/gcc/gcc-5/porting_to.html
+
+Signed-off-by: Václav Ovsík <vaclav.ovsik@gmail.com>
+
+Update it to fix the conflicts with ustr-c99-inline.patch.
+
+Upstream-Status: Backport [debian]
+
+Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
+
+---
+ ustr-b-dbg-code.c       | 8 ++++----
+ ustr-b-opt-code.c       | 8 ++++----
+ ustr-cmp-dbg-code.c     | 8 ++++----
+ ustr-cmp-opt-code.c     | 8 ++++----
+ ustr-compiler.h         | 4 ++--
+ ustr-fmt-dbg-code.c     | 8 ++++----
+ ustr-fmt-opt-code.c     | 8 ++++----
+ ustr-ins-dbg-code.c     | 8 ++++----
+ ustr-ins-opt-code.c     | 8 ++++----
+ ustr-io-dbg-code.c      | 8 ++++----
+ ustr-io-opt-code.c      | 8 ++++----
+ ustr-main-dbg-code.c    | 2 +-
+ ustr-main-opt-code.c    | 2 +-
+ ustr-parse-dbg-code.c   | 8 ++++----
+ ustr-parse-opt-code.c   | 8 ++++----
+ ustr-pool-dbg-code.c    | 8 ++++----
+ ustr-pool-opt-code.c    | 8 ++++----
+ ustr-replace-dbg-code.c | 8 ++++----
+ ustr-replace-opt-code.c | 8 ++++----
+ ustr-sc-dbg-code.c      | 8 ++++----
+ ustr-sc-opt-code.c      | 8 ++++----
+ ustr-set-dbg-code.c     | 8 ++++----
+ ustr-set-opt-code.c     | 8 ++++----
+ ustr-split-dbg-code.c   | 8 ++++----
+ ustr-split-opt-code.c   | 8 ++++----
+ ustr-spn-dbg-code.c     | 8 ++++----
+ ustr-spn-opt-code.c     | 8 ++++----
+ ustr-srch-dbg-code.c    | 8 ++++----
+ ustr-srch-opt-code.c    | 8 ++++----
+ ustr-sub-dbg-code.c     | 8 ++++----
+ ustr-sub-opt-code.c     | 8 ++++----
+ ustr-utf8-dbg-code.c    | 8 ++++----
+ ustr-utf8-opt-code.c    | 8 ++++----
+ 33 files changed, 124 insertions(+), 124 deletions(-)
+
+diff --git a/ustr-b-dbg-code.c b/ustr-b-dbg-code.c
+index 4a7fdac..60e383e 100644
+--- a/ustr-b-dbg-code.c
++++ b/ustr-b-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-b.h"
+diff --git a/ustr-b-opt-code.c b/ustr-b-opt-code.c
+index 45e9e87..4011898 100644
+--- a/ustr-b-opt-code.c
++++ b/ustr-b-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-b.h"
+diff --git a/ustr-cmp-dbg-code.c b/ustr-cmp-dbg-code.c
+index 7b8af33..4c3adc2 100644
+--- a/ustr-cmp-dbg-code.c
++++ b/ustr-cmp-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-cmp.h"
+diff --git a/ustr-cmp-opt-code.c b/ustr-cmp-opt-code.c
+index 2076d1c..ff5d02c 100644
+--- a/ustr-cmp-opt-code.c
++++ b/ustr-cmp-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-cmp.h"
+diff --git a/ustr-compiler.h b/ustr-compiler.h
+index 9e71276..38ae026 100644
+--- a/ustr-compiler.h
++++ b/ustr-compiler.h
+@@ -92,7 +92,7 @@
+ #endif
+ 
+ #if USTR_CONF_COMPILE_USE_INLINE
+-#define USTR__INLINE inline
++#define USTR__INLINE  __attribute__ ((gnu_inline)) inline
+ #else
+ #define USTR__INLINE /* no inline */
+ #endif
+diff --git a/ustr-fmt-dbg-code.c b/ustr-fmt-dbg-code.c
+index 4249bb1..1f147a0 100644
+--- a/ustr-fmt-dbg-code.c
++++ b/ustr-fmt-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-fmt.h"
+diff --git a/ustr-fmt-opt-code.c b/ustr-fmt-opt-code.c
+index c73e375..989b29f 100644
+--- a/ustr-fmt-opt-code.c
++++ b/ustr-fmt-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-fmt.h"
+diff --git a/ustr-ins-dbg-code.c b/ustr-ins-dbg-code.c
+index 39f9bba..4c6d5ea 100644
+--- a/ustr-ins-dbg-code.c
++++ b/ustr-ins-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,5 +17,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-ins.h"
+diff --git a/ustr-ins-opt-code.c b/ustr-ins-opt-code.c
+index 1aca827..859b44d 100644
+--- a/ustr-ins-opt-code.c
++++ b/ustr-ins-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,5 +17,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-ins.h"
+diff --git a/ustr-io-dbg-code.c b/ustr-io-dbg-code.c
+index c361c93..d42e43f 100644
+--- a/ustr-io-dbg-code.c
++++ b/ustr-io-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-io.h"
+diff --git a/ustr-io-opt-code.c b/ustr-io-opt-code.c
+index b1b4525..ae8de87 100644
+--- a/ustr-io-opt-code.c
++++ b/ustr-io-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-io.h"
+diff --git a/ustr-main-dbg-code.c b/ustr-main-dbg-code.c
+index 4b821ce..abaa53a 100644
+--- a/ustr-main-dbg-code.c
++++ b/ustr-main-dbg-code.c
+@@ -7,5 +7,5 @@
+ #define USTR_CONF_E_PROTO  extern
+ #define USTR_CONF_I_PROTO
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+diff --git a/ustr-main-opt-code.c b/ustr-main-opt-code.c
+index 233fb60..7ef6e98 100644
+--- a/ustr-main-opt-code.c
++++ b/ustr-main-opt-code.c
+@@ -7,5 +7,5 @@
+ #define USTR_CONF_E_PROTO  extern
+ #define USTR_CONF_I_PROTO
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+diff --git a/ustr-parse-dbg-code.c b/ustr-parse-dbg-code.c
+index c9653af..6e1707d 100644
+--- a/ustr-parse-dbg-code.c
++++ b/ustr-parse-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-parse.h"
+diff --git a/ustr-parse-opt-code.c b/ustr-parse-opt-code.c
+index 0c8df4d..fc96db2 100644
+--- a/ustr-parse-opt-code.c
++++ b/ustr-parse-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-parse.h"
+diff --git a/ustr-pool-dbg-code.c b/ustr-pool-dbg-code.c
+index adf7519..957f9ca 100644
+--- a/ustr-pool-dbg-code.c
++++ b/ustr-pool-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-pool.h"
+diff --git a/ustr-pool-opt-code.c b/ustr-pool-opt-code.c
+index 2b0367c..c1b2413 100644
+--- a/ustr-pool-opt-code.c
++++ b/ustr-pool-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-pool.h"
+diff --git a/ustr-replace-dbg-code.c b/ustr-replace-dbg-code.c
+index fe02187..90531ac 100644
+--- a/ustr-replace-dbg-code.c
++++ b/ustr-replace-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-set.h"
+ #include "ustr-srch.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-replace.h"
+diff --git a/ustr-replace-opt-code.c b/ustr-replace-opt-code.c
+index e76b3bb..6232753 100644
+--- a/ustr-replace-opt-code.c
++++ b/ustr-replace-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-set.h"
+ #include "ustr-srch.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-replace.h"
+diff --git a/ustr-sc-dbg-code.c b/ustr-sc-dbg-code.c
+index 0011c63..d7ce317 100644
+--- a/ustr-sc-dbg-code.c
++++ b/ustr-sc-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-spn.h"
+ #include "ustr-utf8.h"
+@@ -18,5 +18,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-sc.h"
+diff --git a/ustr-sc-opt-code.c b/ustr-sc-opt-code.c
+index 7cb81ba..4a97ed9 100644
+--- a/ustr-sc-opt-code.c
++++ b/ustr-sc-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-spn.h"
+ #include "ustr-utf8.h"
+@@ -18,5 +18,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-sc.h"
+diff --git a/ustr-set-dbg-code.c b/ustr-set-dbg-code.c
+index 023875a..cf77071 100644
+--- a/ustr-set-dbg-code.c
++++ b/ustr-set-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,5 +17,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-set.h"
+diff --git a/ustr-set-opt-code.c b/ustr-set-opt-code.c
+index e726888..34dcaf6 100644
+--- a/ustr-set-opt-code.c
++++ b/ustr-set-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,5 +17,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-set.h"
+diff --git a/ustr-split-dbg-code.c b/ustr-split-dbg-code.c
+index 03e5ca5..e40d2a5 100644
+--- a/ustr-split-dbg-code.c
++++ b/ustr-split-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-set.h"
+ #include "ustr-spn.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-split.h"
+diff --git a/ustr-split-opt-code.c b/ustr-split-opt-code.c
+index d64e300..74f4b1c 100644
+--- a/ustr-split-opt-code.c
++++ b/ustr-split-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-set.h"
+ #include "ustr-spn.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-split.h"
+diff --git a/ustr-spn-dbg-code.c b/ustr-spn-dbg-code.c
+index ff97432..b0b09d4 100644
+--- a/ustr-spn-dbg-code.c
++++ b/ustr-spn-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-srch.h"
+ #include "ustr-utf8.h"
+@@ -18,5 +18,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-spn.h"
+diff --git a/ustr-spn-opt-code.c b/ustr-spn-opt-code.c
+index 3ff0a07..92c5ccc 100644
+--- a/ustr-spn-opt-code.c
++++ b/ustr-spn-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-srch.h"
+ #include "ustr-utf8.h"
+@@ -18,5 +18,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-spn.h"
+diff --git a/ustr-srch-dbg-code.c b/ustr-srch-dbg-code.c
+index 40e4dbf..0f4da21 100644
+--- a/ustr-srch-dbg-code.c
++++ b/ustr-srch-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-cmp-internal.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,6 +17,6 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-srch.h"
+ 
+diff --git a/ustr-srch-opt-code.c b/ustr-srch-opt-code.c
+index 635464d..8dde13d 100644
+--- a/ustr-srch-opt-code.c
++++ b/ustr-srch-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-cmp-internal.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+@@ -17,6 +17,6 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-srch.h"
+ 
+diff --git a/ustr-sub-dbg-code.c b/ustr-sub-dbg-code.c
+index f994716..b1712e6 100644
+--- a/ustr-sub-dbg-code.c
++++ b/ustr-sub-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #include "ustr-ins.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-sub.h"
+diff --git a/ustr-sub-opt-code.c b/ustr-sub-opt-code.c
+index 8cdb4eb..91780c7 100644
+--- a/ustr-sub-opt-code.c
++++ b/ustr-sub-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #include "ustr-fmt.h"
+ #include "ustr-ins.h"
+@@ -19,5 +19,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-sub.h"
+diff --git a/ustr-utf8-dbg-code.c b/ustr-utf8-dbg-code.c
+index 2666fc2..30786e9 100644
+--- a/ustr-utf8-dbg-code.c
++++ b/ustr-utf8-dbg-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf-debug.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-utf8.h"
+diff --git a/ustr-utf8-opt-code.c b/ustr-utf8-opt-code.c
+index 91fa754..abdf4c0 100644
+--- a/ustr-utf8-opt-code.c
++++ b/ustr-utf8-opt-code.c
+@@ -3,11 +3,11 @@
+ #include "ustr-conf.h"
+ #define USTR_CONF_USE_DYNAMIC_CONF USTR_CONF_HAVE_DYNAMIC_CONF
+ #define USTR_CONF_e_PROTO  extern
+-#define USTR_CONF_i_PROTO  extern inline
++#define USTR_CONF_i_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_E_PROTO  extern
+-#define USTR_CONF_I_PROTO  extern inline
++#define USTR_CONF_I_PROTO  extern  __attribute__ ((gnu_inline)) inline
+ #define USTR_CONF_EI_PROTO extern
+-#define USTR_CONF_II_PROTO extern inline
++#define USTR_CONF_II_PROTO extern  __attribute__ ((gnu_inline)) inline
+ #include "ustr-main.h"
+ #undef  USTR_CONF_INCLUDE_CODEONLY_HEADERS
+ #define USTR_CONF_INCLUDE_CODEONLY_HEADERS 1
+@@ -16,5 +16,5 @@
+ #undef  USTR_CONF_I_PROTO
+ #define USTR_CONF_I_PROTO
+ #undef  USTR_CONF_II_PROTO
+-#define USTR_CONF_II_PROTO inline
++#define USTR_CONF_II_PROTO  __attribute__ ((gnu_inline)) inline
+ #include "ustr-utf8.h"
+-- 
+tg: (b148fb7..) fixes/gnu-inline (depends on: upstream)
diff --git a/recipes-extended/ustr/ustr_1.0.4.bb b/recipes-extended/ustr/ustr_1.0.4.bb
index cdb78ad..c34799b 100644
--- a/recipes-extended/ustr/ustr_1.0.4.bb
+++ b/recipes-extended/ustr/ustr_1.0.4.bb
@@ -15,7 +15,9 @@ SRC_URI = "\
     http://www.and.org/ustr/${PV}/${BPN}-${PV}.tar.bz2 \
     file://ustr-makefile-fix.patch;patch=1 \
     file://ustr-fix__va_copy-not-defined.patch;patch=2 \
-    file://ustr-c99-inline.patch;patch=3"
+    file://ustr-c99-inline.patch;patch=3 \
+    file://ustr-gnu-inline.diff;patch=4 \
+"
 SRC_URI[md5sum] = "93147d9f0c9765d4cd0f04f7e44bdfce"
 SRC_URI[sha256sum] = "3daf6eae9f78de1e872c0b2b83cce35515b94d4bb8a074e48f331fd99e1fc2c4"
 
-- 
1.7.9.5


