Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 631E0E00C7D; Sun,  7 Aug 2016 20:33:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3356E00C7D
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2016 20:33:14 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u783XEYT015215
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 7 Aug 2016 20:33:14 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.248.2; Sun, 7 Aug 2016 20:33:13 -0700
From: <kai.kang@windriver.com>
To: <bruce.ashfield@windriver.com>
Date: Mon, 8 Aug 2016 10:33:21 +0800
Message-ID: <20160808023321.7604-2-kai.kang@windriver.com>
X-Mailer: git-send-email 2.9.2.368.g08bb350
In-Reply-To: <20160808023321.7604-1-kai.kang@windriver.com>
References: <20160808023321.7604-1-kai.kang@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH] libvirt: fix build error for arm
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
X-List-Received-Date: Mon, 08 Aug 2016 03:33:16 -0000
Content-Type: text/plain

From: Kai Kang <kai.kang@windriver.com>

When build for architecture that don't use gcc atomic ops but pthread,
it fails to build for arm:

| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virClassNew':
| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:153: undefined reference to `virAtomicLock'
| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectNew':
| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:205: undefined reference to `virAtomicLock'
| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectUnref':
| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:277: undefined reference to `virAtomicLock'
| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectRef':
| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:298: undefined reference to `virAtomicLock'
| collect2: error: ld returned 1 exit status

It is similar with:

http://libvirt.org/git/?p=libvirt.git;a=commit;h=12dc729

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../0001-nsslinktest-also-build-virAtomic.h.patch  | 40 ++++++++++++++++++++++
 recipes-extended/libvirt/libvirt_1.3.5.bb          |  1 +
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-extended/libvirt/libvirt/0001-nsslinktest-also-build-virAtomic.h.patch

diff --git a/recipes-extended/libvirt/libvirt/0001-nsslinktest-also-build-virAtomic.h.patch b/recipes-extended/libvirt/libvirt/0001-nsslinktest-also-build-virAtomic.h.patch
new file mode 100644
index 0000000..6ab1c4e
--- /dev/null
+++ b/recipes-extended/libvirt/libvirt/0001-nsslinktest-also-build-virAtomic.h.patch
@@ -0,0 +1,40 @@
+Upstream-Status: Submitted [http://www.redhat.com/archives/libvir-list/2016-August/msg00389.html]
+
+When build for architecture that don't use gcc atomic ops but pthread,
+it fails to build for arm:
+
+| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virClassNew':
+| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:153: undefined reference to `virAtomicLock'
+| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectNew':
+| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:205: undefined reference to `virAtomicLock'
+| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectUnref':
+| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:277: undefined reference to `virAtomicLock'
+| ../tools/nss/.libs/libnss_libvirt_impl.a(libvirt_nss_la-virobject.o): In function `virObjectRef':
+| /buildarea2/kkang/builds/qemuarm-Aug03/bitbake_build/tmp/work/armv5e-wrs-linux-gnueabi/libvirt/1.3.5-r0/build/src/../../libvirt-1.3.5/src/util/virobject.c:298: undefined reference to `virAtomicLock'
+| collect2: error: ld returned 1 exit status
+
+It is similar with:
+
+http://libvirt.org/git/?p=libvirt.git;a=commit;h=12dc729
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+---
+ src/Makefile.am | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/src/Makefile.am b/src/Makefile.am
+index 12b66c2..6e55972 100644
+--- a/src/Makefile.am
++++ b/src/Makefile.am
+@@ -2989,6 +2989,8 @@ noinst_LTLIBRARIES += libvirt-nss.la
+ libvirt_nss_la_SOURCES =		\
+ 		util/viralloc.c			\
+ 		util/viralloc.h			\
++		util/viratomic.c		\
++		util/viratomic.h		\
+ 		util/virbitmap.c		\
+ 		util/virbitmap.h		\
+ 		util/virbuffer.c		\
+-- 
+2.9.0
+
diff --git a/recipes-extended/libvirt/libvirt_1.3.5.bb b/recipes-extended/libvirt/libvirt_1.3.5.bb
index f4a8f38..7ff2c5f 100644
--- a/recipes-extended/libvirt/libvirt_1.3.5.bb
+++ b/recipes-extended/libvirt/libvirt_1.3.5.bb
@@ -33,6 +33,7 @@ SRC_URI = "http://libvirt.org/sources/libvirt-${PV}.tar.gz;name=libvirt \
            file://0001-to-fix-build-error.patch \
            file://Revert-build-add-prefix-to-SYSTEMD_UNIT_DIR.patch \
            file://install-missing-file.patch \
+           file://0001-nsslinktest-also-build-virAtomic.h.patch \
           "
 
 SRC_URI[libvirt.md5sum] = "f9dc1e63d559eca50ae0ee798a4c6c6d"
-- 
2.9.2.368.g08bb350


