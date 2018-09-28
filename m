Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A3F5E009E7; Fri, 28 Sep 2018 07:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bkylerussell[at]gmail.com)
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
	[209.85.215.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7A13E009CF
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 07:56:10 -0700 (PDT)
Received: by mail-pg1-f195.google.com with SMTP id i4-v6so4048166pgq.9
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2018 07:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=jxiD/p7BbVpPh5bWC7Sk/NQqv8ZcPll7kR8qdxep8ig=;
	b=j5jWwCS8imyF96lf4YTxo5v6rmyKcY+EyePqfi1d5+KLMw8WXV0iiCAdj/a9MopWXi
	+lEroGl685FC4yL6tQ+DAwML5pxix/n8woeyh9/KHQc8qDEuhSfeZcKUqshQG1XlAecx
	7WacX4hGRmvb3wRIfLwDTqQaqNlRSWz19ZoKWUJ8g7JfJBZwfyxjUnkasC0SsH/dNF85
	put/IKLopjejD4fPcV3XMahhOJKsmxPzXssFPMruj7IF4MVO3Wq31amEGZtbFG2IZ5E+
	qXHNp7bcJs2eCtZXxZ59lcyjkb0CGlgGVmLsKNnfxjD1IeVD32yr1ZaNjELRSw/2tx2v
	JMIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=jxiD/p7BbVpPh5bWC7Sk/NQqv8ZcPll7kR8qdxep8ig=;
	b=kJE5eZYIfsMMuwG8S7CZECDczeGIecu0gb5HC2AWOVo/GI+3bfd+gIKyk47TdO5Nyp
	MHmcAtVntc6go5euUyyl4gWOP8o/J8xJ0Q0eXlYB2OQi077dUpuuJ1UCaBF3oOtnz3i6
	4cQ0ZrWDXrKGef1GCucVzB9M3seDMrEDqhf908OxidsJjVL16ZTPqOrznQc0KOVYhVhB
	0Q0KS7qeFwDUGMuqgdlhi7gxHT9oUv+ZWkjU4w1GFva5riWkMrajE90b/NPUMd2m9KmS
	hXLSrAuODk8FAJAO76VDfec/la2O/U4xOxwYSARz4P70WqPXIvuAOhHyp6x72qfP3G2h
	ZqmA==
X-Gm-Message-State: ABuFfohyDrazAJ9sc5ixaTFi98u6xt92ZdTnrh9VuQVWw8iATx1zlzso
	Yk6a84/HACVY5qqZk9+xPqkZLGAr
X-Google-Smtp-Source: ACcGV60vXSD34l/BejZHSRGD5+njpO45c7KlC9Jshs+/CTr4WAgCsjFzBbhl5dnlSIvgQgXua6ihCQ==
X-Received: by 2002:a17:902:1026:: with SMTP id
	b35-v6mr7495018pla.283.1538146570070; 
	Fri, 28 Sep 2018 07:56:10 -0700 (PDT)
Received: from brrussell-Latitude-E6530.dhcp.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	g21-v6sm10699650pfe.41.2018.09.28.07.56.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 28 Sep 2018 07:56:09 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: mark.hatle@windriver.com
Date: Fri, 28 Sep 2018 10:55:56 -0400
Message-Id: <20180928145556.6710-1-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.17.1
Cc: yocto@yoctoproject.org
Subject: [prelink-cross][PATCH] rtld: get machine from undef_map for protected symbols
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
X-List-Received-Date: Fri, 28 Sep 2018 14:56:12 -0000

Avoids rtld segfault when _dl_lookup_symbol_x is called with NULL
for skip_map on a protected symbol relocation.

Global protected symbols may not actually require a copy relocaton,
in which case skip_map is undefined, so use the undef_map to determine
the symbol arch.
---
 src/rtld/dl-lookupX.h   |  6 +++---
 testsuite/Makefile.am   |  2 +-
 testsuite/reloc12.c     | 19 +++++++++++++++++++
 testsuite/reloc12.h     | 11 +++++++++++
 testsuite/reloc12.sh    | 20 ++++++++++++++++++++
 testsuite/reloc12lib1.c | 11 +++++++++++
 testsuite/reloc12lib2.c | 16 ++++++++++++++++
 7 files changed, 81 insertions(+), 4 deletions(-)
 create mode 100644 testsuite/reloc12.c
 create mode 100644 testsuite/reloc12.h
 create mode 100755 testsuite/reloc12.sh
 create mode 100644 testsuite/reloc12lib1.c
 create mode 100644 testsuite/reloc12lib2.c

diff --git a/src/rtld/dl-lookupX.h b/src/rtld/dl-lookupX.h
index 425bb4b..250c509 100644
--- a/src/rtld/dl-lookupX.h
+++ b/src/rtld/dl-lookupX.h
@@ -679,10 +679,10 @@ _dl_lookup_symbol_x (const char *undef_name, struct link_map *undef_map,
 	    if (do_lookup_x (undef_name, new_hash, &old_hash, *ref,
 			     &protected_value, *scope, i, version, flags,
 			     skip_map,
-			     (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
+			     (ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
 			      && ELFW(ST_TYPE) ((*ref)->st_info) == STT_OBJECT
-			      && type_class == ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine))
-			     ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(skip_map->machine)
+			      && type_class == ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine))
+			     ? ELF_RTYPE_CLASS_EXTERN_PROTECTED_DATA(undef_map->machine)
 			     : ELF_RTYPE_CLASS_PLT, NULL) != 0)
 	      break;
 
diff --git a/testsuite/Makefile.am b/testsuite/Makefile.am
index 030f65b..21de6a9 100644
--- a/testsuite/Makefile.am
+++ b/testsuite/Makefile.am
@@ -5,7 +5,7 @@ AM_CFLAGS = -Wall
 
 TESTS = movelibs.sh \
 	reloc1.sh reloc2.sh reloc3.sh reloc4.sh reloc5.sh reloc6.sh \
-	reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh \
+	reloc7.sh reloc8.sh reloc9.sh reloc10.sh reloc11.sh reloc12.sh \
 	shuffle1.sh shuffle2.sh shuffle3.sh shuffle4.sh shuffle5.sh \
 	shuffle6.sh shuffle7.sh shuffle8.sh shuffle9.sh undo1.sh \
 	layout1.sh layout2.sh unprel1.sh \
diff --git a/testsuite/reloc12.c b/testsuite/reloc12.c
new file mode 100644
index 0000000..cfa8888
--- /dev/null
+++ b/testsuite/reloc12.c
@@ -0,0 +1,19 @@
+#include "reloc12.h"
+#include <stdlib.h>
+
+int main()
+{
+  A* ptr = find('b');
+  if(b(ptr) != 0)
+    abort();
+
+  ptr = find('a');
+  if(b(ptr) != 1)
+    abort();
+
+  ptr = find('r');
+  if(b(ptr) != 2)
+    abort();
+
+  exit(0);
+}
diff --git a/testsuite/reloc12.h b/testsuite/reloc12.h
new file mode 100644
index 0000000..8e09405
--- /dev/null
+++ b/testsuite/reloc12.h
@@ -0,0 +1,11 @@
+typedef struct
+  {
+    char a;
+    int b;
+  } A;
+
+extern A foo[] __attribute ((visibility ("protected")));
+
+A* find(char a);
+char a(const A*);
+int b(const A*);
diff --git a/testsuite/reloc12.sh b/testsuite/reloc12.sh
new file mode 100755
index 0000000..a8a43c7
--- /dev/null
+++ b/testsuite/reloc12.sh
@@ -0,0 +1,20 @@
+#!/bin/bash
+. `dirname $0`/functions.sh
+rm -f reloc12 reloc12lib*.so reloc12.log
+rm -f prelink.cache
+$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib1.so $srcdir/reloc12lib1.c
+$RUN_HOST $CC -shared -O2 -fpic -o reloc12lib2.so $srcdir/reloc12lib2.c
+BINS="reloc12"
+LIBS="reloc12lib1.so reloc12lib2.so"
+$RUN_HOST $CCLINK -o reloc12 $srcdir/reloc12.c -Wl,--rpath-link,. ${LIBS}
+savelibs
+echo $PRELINK ${PRELINK_OPTS--vm} ./reloc12 > reloc12.log
+$RUN_HOST $PRELINK ${PRELINK_OPTS--vm} ./reloc12 >> reloc12.log 2>&1 || exit 1
+grep -q ^`echo $PRELINK | sed 's/ .*$/: /'` reloc12.log && exit 2
+if [ "x$CROSS" = "x" ]; then
+ $RUN LD_LIBRARY_PATH=. ./reloc12 || exit 3
+fi
+$RUN_HOST $READELF -a ./reloc12 >> reloc12.log 2>&1 || exit 4
+# So that it is not prelinked again
+chmod -x ./reloc12
+comparelibs >> reloc12.log 2>&1 || exit 5
diff --git a/testsuite/reloc12lib1.c b/testsuite/reloc12lib1.c
new file mode 100644
index 0000000..db7e64f
--- /dev/null
+++ b/testsuite/reloc12lib1.c
@@ -0,0 +1,11 @@
+#include "reloc12.h"
+
+char a(const A *d)
+{
+  return d ? d->a : 0;
+}
+
+int b(const A *d)
+{
+  return d ? d->b : -1;
+}
diff --git a/testsuite/reloc12lib2.c b/testsuite/reloc12lib2.c
new file mode 100644
index 0000000..ffa60a0
--- /dev/null
+++ b/testsuite/reloc12lib2.c
@@ -0,0 +1,16 @@
+#include "reloc12.h"
+
+A foo[] = {
+  { 'b', 0 },
+  { 'a', 1 },
+  { 'r', 2 }
+};
+
+A* find(char a)
+{
+  for(A* ptr = foo; ptr < foo + sizeof(foo)/sizeof(foo[0]); ptr++)
+    if(ptr->a == a)
+      return ptr;
+
+  return 0;
+}
-- 
2.17.1


