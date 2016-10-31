Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 112C7E00997; Mon, 31 Oct 2016 11:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B65E0095D
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:23:02 -0700 (PDT)
Received: by mail-pf0-f179.google.com with SMTP id n85so80314336pfi.1
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2016 11:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=Oozh4LD7r9J73IqNwOTvU7kSEXrE18teirTAFBTRJ5k=;
	b=cfAGvDPzexVzI58eo3/H0CloHodfhkkc4K8TgCA0osjGRyR0dPcPilM3XIl2sEgwEi
	PssfPf3DwJIQJjjDPO+3jPXmIYn1QjvitLuLKSMN05+SDUAEDZBddOxlwAFzDgq+qZmP
	wh0zum3Mtg2kOTKHhFg2J6sUdNnZKgyVUAo583kyTsN+ltZPPsPGhsyPNih+0vUN75FR
	gsDwCs+Klt29mYRUoCDcaFGLJ2/TVZfXuNglbko/dzU/ym2bdrm/EQTtFarvIOs8Mij6
	wG9IxhdhhhVKNTMiRMcMpaBXCHwsD7az6YLT2l5cMWQ8ttR+UNJqEvY/VdtrmGWSmIp/
	WlXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Oozh4LD7r9J73IqNwOTvU7kSEXrE18teirTAFBTRJ5k=;
	b=BgjAfYfXLAXZ+MU7XXe3iX1QQM0IEEHNwf4SP2IJwqGxKzDlmlvLfhdxsCq1TfdXEp
	2nUhmaUcj68PvnVzmyGJuCOFgdllEPW70f/MH1Gj4zP1t/+HzTXPw5x5lAaSiogQ/R2i
	ooZkOHT2WcsxAbJOSW616h0vL6P0DS03aOhNy/5Y2zFF30Vq0hKk1QuBM/fsdzBXVCsU
	oXxMefXC0sExXl+1szNujSeV/9jveSsEwr4Qyrq/faDKyzpnODxRvaEK9rSk31mYqBO5
	qTaUaTuDesSj7hG48l1QBQOFRCLhDiu6ottwIem/0o4M67zN32UbepH2lOMS25M69uM+
	3P5g==
X-Gm-Message-State: ABUngvfcBrYG/SfYmf6s+w6rWLAh3fQG3QuF9XsblzynBsqUpQ2dP+D3mdkCIGuRNp/Gsw==
X-Received: by 10.98.35.9 with SMTP id j9mr51207476pfj.173.1477938181680;
	Mon, 31 Oct 2016 11:23:01 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:a515:1856:7377:d74f])
	by smtp.gmail.com with ESMTPSA id 3sm37104784pfo.31.2016.10.31.11.23.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 31 Oct 2016 11:23:01 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Mon, 31 Oct 2016 11:23:00 -0700
Message-Id: <1477938180-9702-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][V2]PATCH] smack: Add new package
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
X-List-Received-Date: Mon, 31 Oct 2016 18:23:05 -0000

V2:
Fix typo and add LDFLAG to makefile

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/smack/files/run-ptest             |  3 ++
 .../smack/files/smack_generator_make_fixup.patch   | 18 ++++++++
 recipes-security/smack/smack_1.3.0.bb              | 54 ++++++++++++++++++++++
 3 files changed, 75 insertions(+)
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
index 0000000..4d677e7
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
++	${CC}  ${LDFLAGS} generator.c -o ./generator
+ 
+ policies: ./generator ./make_policies.bash
+ 	./make_policies.bash ./generator
diff --git a/recipes-security/smack/smack_1.3.0.bb b/recipes-security/smack/smack_1.3.0.bb
new file mode 100644
index 0000000..4c41f6c
--- /dev/null
+++ b/recipes-security/smack/smack_1.3.0.bb
@@ -0,0 +1,54 @@
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
+inherit autotools update-rc.d pkgconfig ptest ${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','systemd','', d)}
+
+S = "${WORKDIR}/git"
+
+PACKAGECONFIG ??= ""
+PACKAGECONFIG_append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+
+PACKAGECONFIG[systemd] = "--with-systemdsystemunitdir=${systemd_system_unitdir}, --without-systemdsystemunitdir, systemd"
+
+do_compile_append () {
+	oe_runmake -C ${S}/tests generator
+}
+
+do_install_append () {
+	install -d ${D}${sysconfdir}/init.d
+	install -d ${D}${sysconfdir}/smack
+	install -d ${D}${sysconfdir}/smack/accesses.d
+	install -d ${D}${sysconfdir}/smack/cipso.d
+	install ${S}/init/smack.rc ${D}/${sysconfdir}/init.d/smack
+}
+
+do_install_ptest () {
+	install -d ${D}${PTEST_PATH}/tests
+	install ${S}/tests/generator ${D}/${PTEST_PATH}/tests
+	install ${S}/tests/generate-rules.sh ${D}${PTEST_PATH}/tests
+	install ${S}/tests/make_policies.bash ${D}${PTEST_PATH}/tests
+}
+
+INITSCRIPT_PACKAGES = "${PN}"
+INITSCRIPT_NAME = "smack"
+INITSCRIPT_PARAMS = "start 16 2 3 4 5 . stop 35 0 1 6 ."
+
+FILES_${PN} += "${sysconfdir}/init.d/smack"
+FILES_${PN}-ptest += "generator"
+
+RDEPENDS_${PN} += "coreutils"
+RDEPENDS_${PN}-ptest += "make bash bc"
+
+BBCLASSEXTEND = "native"
-- 
2.7.4


