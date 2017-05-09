Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85CF1E00B27; Tue,  9 May 2017 07:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3861E00AA2
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:05 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id v14so290786pfd.3
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=TwHEip1VlR44//QDEIp+GYCnzETI0S92WFr2pUFNDDk=;
	b=fR6q0N45MkHQ61i4h2iUB6Bv3Xa6CKwUJGLbKFlulRNSwC3roGXOe5EEviaQrWnLUP
	TgSikqHJ3TitmyMKqha+B9yUqhY4K/zsQ6vw5aHqDIYKdMASFrGEI8/x867bSJoKPrC2
	dMXRpCDl2qVXcwnxh0EWJH6Fws97llKkHU+RS4FEzEaLlM1nng+gVuqQwqYlZjd+SGKA
	fJ0sni5H9sIMnfN/WSEeUTv+8RuRQQKxsB+cuinuy7/eS7TBx8VNpPWgqO95qR1kIQh4
	AyqdwrWG4YRIoSO8/LRRizinVse2QWGZGF3MQhiV2twrY41bfcKTdh2xci3X418zSVWp
	HsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=TwHEip1VlR44//QDEIp+GYCnzETI0S92WFr2pUFNDDk=;
	b=QfoElz+oDSK1Q9xmm73H74obnKNgL47y7bi/v0tSceG/27MTG/+IHtS5mfSylmEFHA
	XBZcVQn20C70eqfXy8aoNJsWZQ7PlIM4znXWmkXQO4+PqzE7FnONsb1uZl+Tf4ywuCZm
	3yoQk8im4RgItT1/xzmplyjazM78ORR3o8rgvhoC0RY2ZN2rYNiylRvC3lyYnccN+CKh
	EXZILEW5WpHe6N1mf8xs/YkMwc6A/+7zHfGz4p+26CmDIXfMRVVZp39/0qXSCIIsylfn
	IU5sF5gI6U1vY8LTTx69ynU30Z936H20K4nfOQ85Buvx6DjZXI6Ywm07ICnEXXQgdhiX
	ztFA==
X-Gm-Message-State: AODbwcAOLQp3a/h6L4KmDyKUXmhiRV581EMV9sv+Nw795FSf9ej6MU+q
	FPq3UlSySFoG0w==
X-Received: by 10.99.232.69 with SMTP id a5mr510730pgk.167.1494341224976;
	Tue, 09 May 2017 07:47:04 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:52 -0700
Message-Id: <1494341221-17621-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 01/10] tpm: move to a sub layer
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
X-List-Received-Date: Tue, 09 May 2017 14:47:07 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/README                                             |  0
 meta-tpm/conf/layer.conf                                    | 13 +++++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend     |  5 +++++
 .../libtpm/files/Convert-another-vdprintf-to-dprintf.patch  |  0
 .../libtpm/files/Use-format-s-for-call-to-dprintf.patch     |  0
 .../recipes-tpm}/libtpm/files/fix_signed_issue.patch        |  0
 {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb  |  0
 .../recipes-tpm}/swtpm/files/fix_fcntl_h.patch              |  0
 .../recipes-tpm}/swtpm/files/fix_lib_search_path.patch      |  0
 .../recipes-tpm}/swtpm/files/fix_signed_issue.patch         |  0
 .../recipes-tpm}/swtpm/files/ioctl_h.patch                  |  0
 .../recipes-tpm}/swtpm/swtpm-wrappers-native.bb             |  0
 {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb    |  0
 .../recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch  |  0
 .../recipes-tpm}/tpm-tools/tpm-tools_git.bb                 |  0
 .../recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb           |  0
 .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4        |  0
 .../tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch     |  0
 .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb               |  0
 .../recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb  |  0
 ...-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch |  0
 .../recipes-tpm}/trousers/files/tcsd.service                |  0
 .../recipes-tpm}/trousers/files/trousers-udev.rules         |  0
 .../recipes-tpm}/trousers/files/trousers.init.sh            |  0
 .../recipes-tpm}/trousers/trousers_git.bb                   |  0
 recipes-kernel/linux/linux-yocto_4.10.bbappend              |  3 ---
 26 files changed, 18 insertions(+), 3 deletions(-)
 create mode 100644 meta-tpm/README
 create mode 100644 meta-tpm/conf/layer.conf
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/ioctl_h.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/tpm-tools_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/tcsd.service (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers-udev.rules (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers.init.sh (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/trousers_git.bb (100%)

diff --git a/meta-tpm/README b/meta-tpm/README
new file mode 100644
index 0000000..e69de29
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
new file mode 100644
index 0000000..5085db5
--- /dev/null
+++ b/meta-tpm/conf/layer.conf
@@ -0,0 +1,13 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have a recipes directory, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb ${LAYERDIR}/recipes*/*/*.bbappend ${LAYERDIR}/classes/*.bbclass"
+
+BBFILE_COLLECTIONS += "tpm-layer"
+BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
+BBFILE_PRIORITY_tpm-layer = "6"
+
+LAYERDEPENDS_tpm-layer = " \
+    core \
+"
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
new file mode 100644
index 0000000..e6b3c65
--- /dev/null
+++ b/meta-tpm/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -0,0 +1,5 @@
+#
+# TPM kernel support
+
+KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
+
diff --git a/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
similarity index 100%
rename from recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
rename to meta-tpm/recipes-tpm/libtpm/files/Convert-another-vdprintf-to-dprintf.patch
diff --git a/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch b/meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
similarity index 100%
rename from recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
rename to meta-tpm/recipes-tpm/libtpm/files/Use-format-s-for-call-to-dprintf.patch
diff --git a/recipes-tpm/libtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
similarity index 100%
rename from recipes-tpm/libtpm/files/fix_signed_issue.patch
rename to meta-tpm/recipes-tpm/libtpm/files/fix_signed_issue.patch
diff --git a/recipes-tpm/libtpm/libtpm_1.0.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
similarity index 100%
rename from recipes-tpm/libtpm/libtpm_1.0.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_1.0.bb
diff --git a/recipes-tpm/swtpm/files/fix_fcntl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
similarity index 100%
rename from recipes-tpm/swtpm/files/fix_fcntl_h.patch
rename to meta-tpm/recipes-tpm/swtpm/files/fix_fcntl_h.patch
diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
similarity index 100%
rename from recipes-tpm/swtpm/files/fix_lib_search_path.patch
rename to meta-tpm/recipes-tpm/swtpm/files/fix_lib_search_path.patch
diff --git a/recipes-tpm/swtpm/files/fix_signed_issue.patch b/meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch
similarity index 100%
rename from recipes-tpm/swtpm/files/fix_signed_issue.patch
rename to meta-tpm/recipes-tpm/swtpm/files/fix_signed_issue.patch
diff --git a/recipes-tpm/swtpm/files/ioctl_h.patch b/meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch
similarity index 100%
rename from recipes-tpm/swtpm/files/ioctl_h.patch
rename to meta-tpm/recipes-tpm/swtpm/files/ioctl_h.patch
diff --git a/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
similarity index 100%
rename from recipes-tpm/swtpm/swtpm-wrappers-native.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm-wrappers-native.bb
diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
similarity index 100%
rename from recipes-tpm/swtpm/swtpm_1.0.bb
rename to meta-tpm/recipes-tpm/swtpm/swtpm_1.0.bb
diff --git a/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch b/meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
similarity index 100%
rename from recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
rename to meta-tpm/recipes-tpm/tpm-tools/files/tpm-tools-extendpcr.patch
diff --git a/recipes-tpm/tpm-tools/tpm-tools_git.bb b/meta-tpm/recipes-tpm/tpm-tools/tpm-tools_git.bb
similarity index 100%
rename from recipes-tpm/tpm-tools/tpm-tools_git.bb
rename to meta-tpm/recipes-tpm/tpm-tools/tpm-tools_git.bb
diff --git a/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
similarity index 100%
rename from recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tools/tpm2.0-tools_git.bb
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
similarity index 100%
rename from recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
rename to meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
similarity index 100%
rename from recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
rename to meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
similarity index 100%
rename from recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
diff --git a/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb b/meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
similarity index 100%
rename from recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
rename to meta-tpm/recipes-tpm/tpm2simulator/tpm2simulator-native_116.bb
diff --git a/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch b/meta-tpm/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
similarity index 100%
rename from recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
rename to meta-tpm/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
diff --git a/recipes-tpm/trousers/files/tcsd.service b/meta-tpm/recipes-tpm/trousers/files/tcsd.service
similarity index 100%
rename from recipes-tpm/trousers/files/tcsd.service
rename to meta-tpm/recipes-tpm/trousers/files/tcsd.service
diff --git a/recipes-tpm/trousers/files/trousers-udev.rules b/meta-tpm/recipes-tpm/trousers/files/trousers-udev.rules
similarity index 100%
rename from recipes-tpm/trousers/files/trousers-udev.rules
rename to meta-tpm/recipes-tpm/trousers/files/trousers-udev.rules
diff --git a/recipes-tpm/trousers/files/trousers.init.sh b/meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
similarity index 100%
rename from recipes-tpm/trousers/files/trousers.init.sh
rename to meta-tpm/recipes-tpm/trousers/files/trousers.init.sh
diff --git a/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
similarity index 100%
rename from recipes-tpm/trousers/trousers_git.bb
rename to meta-tpm/recipes-tpm/trousers/trousers_git.bb
diff --git a/recipes-kernel/linux/linux-yocto_4.10.bbappend b/recipes-kernel/linux/linux-yocto_4.10.bbappend
index 35a32b6..0e610d4 100644
--- a/recipes-kernel/linux/linux-yocto_4.10.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.10.bbappend
@@ -1,8 +1,5 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-4.10:"
 
-# TPM kernel support
-KERNEL_FEATURES_append += "${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' features/tpm/tpm.scc', '', d)}"
-
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
 "
-- 
2.7.4


