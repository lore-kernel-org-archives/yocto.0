Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5A1FE00AE0; Fri, 21 Sep 2018 15:12:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 763BCE00AB9
	for <yocto@yoctoproject.org>; Fri, 21 Sep 2018 15:12:36 -0700 (PDT)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [137.117.33.58])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 109F621476;
	Fri, 21 Sep 2018 22:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1537567956;
	bh=c7U1fByF1fprC78st7T85mlkRbE0c8FRhEtaH8qY0o8=;
	h=From:To:Cc:Subject:Date:From;
	b=Cw3SbaGGQcHW/C/Lj3gJH/vW82SBuJQhBefd9+L4mch6mZ50IoltTQ3ATiqDVRvcm
	idjeslsf22zCK/i0zRhuFvHeKeYfvztvNXXG4/5P1nUPF0JMEw4bvfYX4C3+aJCsP7
	O7etsiSemdEl2pBYGvSCt5SO81Kbgofwol7oZ4lA=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Fri, 21 Sep 2018 22:12:32 +0000
Message-Id: <20180921221234.23154-1-okaya@kernel.org>
X-Mailer: git-send-email 2.19.0
MIME-Version: 1.0
Subject: [PATCH v1 1/3] busybox: CVE-2017-15874
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
X-List-Received-Date: Fri, 21 Sep 2018 22:12:37 -0000
Content-Transfer-Encoding: 8bit

* CVE-2017-15874
busybox: Integer underflow in archival/libarchive/decompress_unlzma.c

(cherry picked from 9ac42c500586fa5f10a1f6d22c3f797df11b1f6b)

Affects busybox <= 1.27.2

Upstream-Status: Backport [ https://git.busybox.net/busybox/commit/?id=9ac42c500586fa5f10a1f6d22c3f797df11b1f6b]
CVE: CVE-2017-15874
Ref: https://bugzilla.redhat.com/show_bug.cgi?id=CVE-2017-15874
Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../busybox/busybox/CVE-2017-15874.patch      | 28 +++++++++++++++++++
 meta/recipes-core/busybox/busybox_1.27.2.bb   |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 meta/recipes-core/busybox/busybox/CVE-2017-15874.patch

diff --git a/meta/recipes-core/busybox/busybox/CVE-2017-15874.patch b/meta/recipes-core/busybox/busybox/CVE-2017-15874.patch
new file mode 100644
index 0000000000..dece92c160
--- /dev/null
+++ b/meta/recipes-core/busybox/busybox/CVE-2017-15874.patch
@@ -0,0 +1,28 @@
+From e75c01bb3249df16201b482b79bb24bec3b58188 Mon Sep 17 00:00:00 2001
+From: Denys Vlasenko <vda.linux@googlemail.com>
+Date: Fri, 27 Oct 2017 15:37:03 +0200
+Subject: [PATCH] unlzma: fix SEGV, closes 10436
+
+Signed-off-by: Denys Vlasenko <vda.linux@googlemail.com>
+---
+ archival/libarchive/decompress_unlzma.c | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/archival/libarchive/decompress_unlzma.c b/archival/libarchive/decompress_unlzma.c
+index 29eee2a..41e492f 100644
+--- a/archival/libarchive/decompress_unlzma.c
++++ b/archival/libarchive/decompress_unlzma.c
+@@ -353,6 +353,10 @@ unpack_lzma_stream(transformer_state_t *xstate)
+ 						pos = buffer_pos - rep0;
+ 						if ((int32_t)pos < 0) {
+ 							pos += header.dict_size;
++							/* bug 10436 has an example file where this triggers: */
++							if ((int32_t)pos < 0)
++								goto bad;
++
+ 							/* see unzip_bad_lzma_2.zip: */
+ 							if (pos >= buffer_size)
+ 								goto bad;
+-- 
+2.19.0
+
diff --git a/meta/recipes-core/busybox/busybox_1.27.2.bb b/meta/recipes-core/busybox/busybox_1.27.2.bb
index 1ce4823d47..bab29728ee 100644
--- a/meta/recipes-core/busybox/busybox_1.27.2.bb
+++ b/meta/recipes-core/busybox/busybox_1.27.2.bb
@@ -47,6 +47,7 @@ SRC_URI = "http://www.busybox.net/downloads/busybox-${PV}.tar.bz2;name=tarball \
            file://busybox-CVE-2017-16544.patch \
            file://busybox-fix-lzma-segfaults.patch \
            file://umount-ignore-c.patch \
+           file://CVE-2017-15874.patch \
 "
 SRC_URI_append_libc-musl = " file://musl.cfg "
 
-- 
2.19.0


