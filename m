Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 389E3E00D54; Wed, 26 Oct 2016 08:00:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C41E00D49
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
Received: by mail-pf0-f178.google.com with SMTP id n85so24674713pfi.1
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=V4TVxevK7MfiNU9zgjd5nPpW0GpYGwCjAIJ8Bhj7CRw=;
	b=09t/DDs7upq35sij+Y76jyQmJ7h4zPJexGNV6yup3jxbqZl9+40uJPTIpauLOb+3pC
	104cNulB0SJjgdOyjx45O1iyeqiK5UQsQgC5sXBKPDQuaUQn8g5AULUqtNMU5vmSR5+Y
	XVoq72/b1LLWPiDflFYQJAMVuVkPlLIyO/0NO9lyfs/HzeSfmVlqWrx3/Bs5bhgni1Zn
	BBTRSG4xNSW2OrAiYBYJn/2MbCReCNPLEdQW84Xu66uypDTgmgPUcl9E9/DaKLXkhFRw
	k2k042M0MR5sT0GjpYsj7bkCPZv1gPmW6AH9FmFohXo8VdSisI0lCbNyBUH+gDoL1UnC
	xquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=V4TVxevK7MfiNU9zgjd5nPpW0GpYGwCjAIJ8Bhj7CRw=;
	b=ca6B3kuJKi2AZjVYhTzVw0bR50Dex0jE2WE97D5UgNHZC4rEhGrTLAyKJd9pkyt3T4
	TigXe2JVhv/f7HTAIdt+JbudOE5fiOCg1vO6pnBTCjvDtriE0K3VZo7o5moD6FgyFWGr
	5a7LiQP9hDZu4Nt2WPFHp2NvOmApMCGflJBzvU87XSccJfZksb/Ohp2LYJbN2B8F0agF
	bJ72kYHIsRzONsGHSH2izxJhkkLLrVyDUOu3CAG7xWkSgIOOd2b6sX+qwnq5sM/2cUi7
	1D7H+RoT6aBdN3f/PEkVx5koJIPVjJaA9ONJVIc69dhH/O+0er88AxTp6TThIs8t+mUy
	P5SQ==
X-Gm-Message-State: ABUngvdFFrkflPcpAacp0pF+3CX9/ZhCJZXNph+2An6vDl4N+ju98OgPf5Med8pPdjX2jA==
X-Received: by 10.99.159.17 with SMTP id g17mr4145763pge.149.1477494039810;
	Wed, 26 Oct 2016 08:00:39 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c57:6cb7:8938:cc04])
	by smtp.gmail.com with ESMTPSA id
	y189sm4977506pfy.34.2016.10.26.08.00.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 26 Oct 2016 08:00:39 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 26 Oct 2016 08:00:37 -0700
Message-Id: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 1/2] smack: Add new package
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
X-List-Received-Date: Wed, 26 Oct 2016 15:00:44 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/smack/files/run-ptest             |  3 ++
 .../smack/files/smack_generator_make_fixup.patch   | 18 ++++++++++
 recipes-security/smack/smack_1.3.0.bb              | 42 ++++++++++++++++++++++
 3 files changed, 63 insertions(+)
 create mode 100644 recipes-security/smack/files/run-ptest
 create mode 100644 recipes-security/smack/files/smack_generator_make_fixup.patch
 create mode 100644 recipes-security/smack/smack_1.3.0.bb

diff --git a/recipes-security/smack/files/run-ptest b/recipes-security/smack/files/run-ptest
new file mode 100644
index 0000000..049a9b4
--- /dev/null
+++ b/recipes-security/smack/files/run-ptest
@@ -0,0 +1,3 @@
+#!/bin/sh
+./tests/make_policies.bash ./tests/generator
+./tests/make_policies.bash ./tests/generator labels
diff --git a/recipes-security/smack/files/smack_generator_make_fixup.patch b/recipes-security/smack/files/smack_generator_make_fixup.patch
new file mode 100644
index 0000000..8bafc5e
--- /dev/null
+++ b/recipes-security/smack/files/smack_generator_make_fixup.patch
@@ -0,0 +1,18 @@
+Upstream-Status: Pending
+
+Signed-off-by: Armin Kuster <akuster808@gmail.com>
+
+
+Index: git/tests/Makefile
+===================================================================
+--- git.orig/tests/Makefile
++++ git/tests/Makefile
+@@ -4,7 +4,7 @@ clean:
+ 	rm -rf ./out ./generator
+ 
+ generator: generator.c
+-	gcc -Wall -O3 generator.c -o ./generator
++	${CC}  generator.c -o ./generator
+ 
+ policies: ./generator ./make_policies.bash
+ 	./make_policies.bash ./generator
diff --git a/recipes-security/smack/smack_1.3.0.bb b/recipes-security/smack/smack_1.3.0.bb
new file mode 100644
index 0000000..46d305e
--- /dev/null
+++ b/recipes-security/smack/smack_1.3.0.bb
@@ -0,0 +1,42 @@
+DESCRIPTION = "Selection of tools for developers working with Smack"
+HOMEPAGE = "https://github.com/smack-team/smack"
+SECTION = "Security/Access Control"
+LICENSE = "LGPL-2.1"
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=4fbd65380cdd255951079008b364516c"
+
+SRCREV = "478f68d182c5070f510482194d3e097b11c21907"
+SRC_URI = " \
+	git://github.com/smack-team/smack.git;branch=v1.3.x \
+	file://smack_generator_make_fixup.patch \
+	file://run-ptest"
+
+PV = "1.3.0+git${SRCPV}"
+
+inherit autotools pkgconfig systemd ptest
+
+S = "${WORKDIR}/git"
+
+PACKAGECONFIG ??= ""
+PACKAGECONG += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=DIR"
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --without-systemdsystemunitdir, systemd"
+
+do_compile_append () {
+	oe_runmake -C ${S}/tests generator
+}
+
+do_install_ptest () {
+	install -d ${D}${PTEST_PATH}/tests
+	install ${S}/tests/generator ${D}/${PTEST_PATH}/tests
+	install ${S}/tests/generate-rules.sh ${D}${PTEST_PATH}/tests
+	install ${S}/tests/make_policies.bash ${D}${PTEST_PATH}/tests
+}
+
+FILES_${PN}-ptest += "generator"
+
+RDEPENDS_${PN} += "coreutils"
+RDEPENDS_${PN}-ptest += "make bash bc"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


