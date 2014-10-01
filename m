Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92765E0086A; Wed,  1 Oct 2014 08:30:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f177.google.com (mail-ob0-f177.google.com
	[209.85.214.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E9F7E00857
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 08:30:43 -0700 (PDT)
Received: by mail-ob0-f177.google.com with SMTP id vb8so480368obc.36
	for <yocto@yoctoproject.org>; Wed, 01 Oct 2014 08:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=hI554zkcB1dyMutZQqwFt59nIORiGD3aTp6/QR4EeMI=;
	b=ctCpDX4bZqYeFLD4VXIiTeaz6rFPdyKn3G7EWltjZ9NBzSJm9Lzdln/Bp25smG39mn
	VEOXCJRjeOMoCfNX2qQkxaWh9PAC2MBhM5+s+2Y+2EUxF5hhC3H2BLDcV+T9i5Zi2BRO
	Xuovoah5BzBOceVeutKAFRxwQc8GhON0eKP9OnjsYxWsMq/RnOHg+sOoLC2WttJcgdVD
	ti3JA5Kso1Lhlz5ASxzakE/XLh+rvwuuBa1/pPRH3ZfKekX5Pyb8gb4iKoSmUBfMqbGb
	Ci2RtFqCCG27bT8KERC3yafu6LZa5V31VEQ2rImlwHptdOOCFZz+xrzd5GdfasaUYQsi
	kIHw==
X-Received: by 10.60.119.98 with SMTP id kt2mr57594542oeb.13.1412177441900;
	Wed, 01 Oct 2014 08:30:41 -0700 (PDT)
Received: from localhost.localdomain (75-163-154-89.clsp.qwest.net.
	[75.163.154.89])
	by mx.google.com with ESMTPSA id y6sm623783obg.0.2014.10.01.08.30.40
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Oct 2014 08:30:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Oct 2014 08:30:36 -0700
Message-Id: <1412177436-11089-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH][wip] libseccomp: git version recipe
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
X-List-Received-Date: Wed, 01 Oct 2014 15:30:56 -0000

The latest git repo has Aarch64 and Mips(64) support.
Aarch64 CONFIG_SECCOMP_FILTER support is not complete and is targeted for v3.18.

An update to libseccomp is scheduled after the v3.18 kernel is released.

I don't plan to included this into the layer. The intent is to provide new arch support while we wait for the official release.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/libseccomp/libseccomp_git.bb | 49 +++++++++++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 recipes-security/libseccomp/libseccomp_git.bb

diff --git a/recipes-security/libseccomp/libseccomp_git.bb b/recipes-security/libseccomp/libseccomp_git.bb
new file mode 100644
index 0000000..3197208
--- /dev/null
+++ b/recipes-security/libseccomp/libseccomp_git.bb
@@ -0,0 +1,49 @@
+SUMMARY = "interface to seccomp filtering mechanism"
+DESCRIPTION = "The libseccomp library provides and easy to use, platform independent,interface to the Linux Kernel's syscall filtering mechanism: seccomp."
+SECTION = "security"
+LICENSE = "GPL-2.0"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+
+SRCREV="f6c219703e3e654e60bb341ab4de362a133fdba6"
+SRC_URI = "git://git.code.sf.net/p/libseccomp/libseccomp;protocol=git \
+"
+
+inherit autotools-brokensep
+
+S="${WORKDIR}/git"
+
+do_configure_prepend () {
+
+(
+cat << 'EOF'
+tests-build:
+	${MAKE} ${AM_MAKEFLAGS} ${check_PROGRAMS}
+
+tests-install:
+	install ${check_PROGRAMS} ${DESTDIR}
+	@list='$(check_PROGRAMS)'; \
+		for p in $$list; do install $$p.tests ${DESTDIR}; done
+
+	install regression testdiff testgen ${DESTDIR}
+
+EOF
+) >> tests/Makefile.am
+}
+do_compile_append() {
+    oe_runmake -C tests tests-build
+}
+
+do_install() {
+    install -d ${D}/${libdir}/${BPN}/tests
+    oe_runmake -C tests DESTDIR=${D}/${libdir}/${BPN}/tests tests-install
+
+    install -d ${D}/${libdir}/${BPN}/tools
+    install tools/scmp_bpf_sim tools/scmp_arch_detect \
+        tools/scmp_bpf_disasm tools/scmp_app_inspector \
+        tools/check-syntax tools/scmp_sys_resolver ${D}/${libdir}/${BPN}/tools
+
+}
+
+PACKAGES += "${PN}-tests "
+FILES_${PN}-tests = "tests/* tools/* "
+FILES_${PN}-dbg += "${libdir}/${BPN}/tests/.debug/* ${libdir}/${BPN}/tools/.debug/*"
-- 
1.9.1


