Return-Path: <Jackie.Huang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2B70E00D31; Thu, 27 Jul 2017 19:01:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B61D2E00D11
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:27 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v6S21Nm1016919
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 19:01:23 -0700 (PDT)
Received: from pek-hostel-deb01.wrs.com (128.224.153.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Thu, 27 Jul 2017 19:01:23 -0700
From: <jackie.huang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 28 Jul 2017 10:00:57 +0800
Message-ID: <41290670cd18f4e57270f565148315823f2387a0.1501207115.git.jackie.huang@windriver.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1501207115.git.jackie.huang@windriver.com>
References: <cover.1501207115.git.jackie.huang@windriver.com>
MIME-Version: 1.0
Subject: [meta-security][PATCH 2/2] libmhash: add new recipe
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
X-List-Received-Date: Fri, 28 Jul 2017 02:01:30 -0000
Content-Type: text/plain

From: Jackie Huang <jackie.huang@windriver.com>

Mhash is a free (under GNU Lesser GPL) library which provides
a uniform interface to a large number of hash algorithms.
These algorithms can be used to compute checksums, message
digests, and other signatures.

Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
---
 recipes-security/libmhash/files/Makefile.test | 13 ++++++++++
 recipes-security/libmhash/files/mhash.c       | 32 +++++++++++++++++++++++
 recipes-security/libmhash/files/run-ptest     | 12 +++++++++
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 37 +++++++++++++++++++++++++++
 4 files changed, 94 insertions(+)
 create mode 100644 recipes-security/libmhash/files/Makefile.test
 create mode 100644 recipes-security/libmhash/files/mhash.c
 create mode 100644 recipes-security/libmhash/files/run-ptest
 create mode 100644 recipes-security/libmhash/libmhash_0.9.9.9.bb

diff --git a/recipes-security/libmhash/files/Makefile.test b/recipes-security/libmhash/files/Makefile.test
new file mode 100644
index 0000000..2e32626
--- /dev/null
+++ b/recipes-security/libmhash/files/Makefile.test
@@ -0,0 +1,13 @@
+#
+# Makefile for compiling mhash tests
+#
+
+ALL = mhash
+
+all: $(ALL)
+
+mhash: mhash.c
+	$(CC) $(CFLAGS) $(LDFLAGS) -o mhash mhash.c -lmhash
+
+clean:
+	rm -f *.debug $(ALL)
diff --git a/recipes-security/libmhash/files/mhash.c b/recipes-security/libmhash/files/mhash.c
new file mode 100644
index 0000000..5d123cc
--- /dev/null
+++ b/recipes-security/libmhash/files/mhash.c
@@ -0,0 +1,32 @@
+#include <mhash.h>
+#include <stdio.h>
+
+int main()
+{
+
+       char password[] = "Jefe";
+       int keylen = 4;
+       char data[] = "what do ya want for nothing?";
+       int datalen = 28;
+       MHASH td;
+       unsigned char mac[16];
+       int j;
+
+       td = mhash_hmac_init(MHASH_MD5, password, keylen, mhash_get_hash_pblock(MHASH_MD5));
+
+       mhash(td, data, datalen);
+       mhash_hmac_deinit(td, mac);
+
+/*
+ * The output should be 0x750c783e6ab0b503eaa86e310a5db738
+ * according to RFC 2104.
+ */
+
+       printf("0x");
+       for (j = 0; j < mhash_get_block_size(MHASH_MD5); j++) {
+               printf("%.2x", mac[j]);
+       }
+       printf("\n");
+
+       exit(0);
+}
diff --git a/recipes-security/libmhash/files/run-ptest b/recipes-security/libmhash/files/run-ptest
new file mode 100644
index 0000000..2b0b94a
--- /dev/null
+++ b/recipes-security/libmhash/files/run-ptest
@@ -0,0 +1,12 @@
+#!/bin/sh
+
+OUTPUT=$($(dirname $0)/mhash)
+MHASH_MD5="0x750c783e6ab0b503eaa86e310a5db738"
+
+if [ x"$OUTPUT" = x"$MHASH_MD5" ]; then
+    echo "PASS: mhash ptest"
+    exit 0
+else
+    echo "FAIL: mhash ptest"
+    exit 1
+fi
diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
new file mode 100644
index 0000000..9b34cb1
--- /dev/null
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -0,0 +1,37 @@
+SUMMARY = "Library of hashing algorithms."
+DESCRIPTION = "\
+  Mhash is a free (under GNU Lesser GPL) library \
+  which provides a uniform interface to a large number of hash \
+  algorithms. These algorithms can be used to compute checksums, \
+  message digests, and other signatures. \
+  "
+HOMEPAGE = "http://mhash.sourceforge.net/"
+
+LICENSE = "LGPLv2.0"
+LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
+
+S = "${WORKDIR}/mhash-${PV}"
+
+SECTION = "libs"
+
+SRC_URI = "${SOURCEFORGE_MIRROR}/mhash/mhash-${PV}.tar.bz2 \
+    file://Makefile.test \
+    file://mhash.c \
+    file://run-ptest \
+    "
+
+SRC_URI[md5sum] = "f91c74f9ccab2b574a98be5bc31eb280"
+SRC_URI[sha256sum] = "56521c52a9033779154432d0ae47ad7198914785265e1f570cee21ab248dfef0"
+
+inherit autotools-brokensep ptest
+
+do_compile_ptest() {
+    if [ ! -d ${S}/demo ]; then mkdir ${S}/demo; fi
+    cp ${WORKDIR}/Makefile.test ${S}/demo/Makefile
+    cp ${WORKDIR}/mhash.c ${S}/demo/
+    make -C ${S}/demo CFLAGS="${CFLAGS} -I${S}/include/" LDFLAGS="${LDFLAGS} -L${S}/lib/.libs"
+}
+
+do_install_ptest() {
+    install -m 0755 ${S}/demo/mhash ${D}${PTEST_PATH}
+}
-- 
2.11.0


