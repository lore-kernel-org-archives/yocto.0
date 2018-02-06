Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 301E8E00EBE; Tue,  6 Feb 2018 07:44:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_WEB autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  1.5 RCVD_IN_SORBS_WEB RBL: SORBS: sender is an abusable web server
	*      [223.196.115.131 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B538E00EB9
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 07:44:04 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id a14so764397pfi.7
	for <yocto@yoctoproject.org>; Tue, 06 Feb 2018 07:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=PYuEvztJMFLnYGm+/f9yx6/lsRC7Qc7zUStiGkLfvrM=;
	b=ccQU4+ZzBfE0WBq++kuFsA8Ey1HfX7ACQyyvM3BVytwrMCMcjH5lfUFKUnB8kYippp
	3/53963xr4PCjRchubAfF5NlJlrKDo37NnaPwCDKgpTnWRLTE5CdkxJaqXCngfUxQbXS
	B2F5RbSZGe3WxbPWFwri3YmIyP0rj777ND1tP+RaxS1+1V4DaZUGtVK44cxp/s3mu7OI
	8/TaXBwIKNy+Q3xPuw9ailHHJj6zYyyGDGXyO6NuTxGVT//1d3noVl6aJpUmMy143lAk
	kiySfQZxOLlo/naKYp3/WJIuk5gL3aXoYZWAiYlA2vhz17ghIfQkOdq0Z66Ttx/a48jP
	QDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=PYuEvztJMFLnYGm+/f9yx6/lsRC7Qc7zUStiGkLfvrM=;
	b=PbYTi/V+7u6qkXcwZdJWHKeuwFO6hx1Bl4plZzRI2NNLvnPxI3E+W1F6v9K11vXOqC
	ROLeBDbkaCo6qmekDChfPsq5bvWi8aHkM3iPgAVTUvYgVMMQ13QZZ0wJsomJqR1ybjXi
	yCYzBZAxdk9JDEUq4CrmZNDUuzCsvDRqHait5ckSius8IGcCD4SD90EUst6tDzFJzlcE
	XnRMYdocoqUMkr3Vwapa6Zk+X8aSNsnvykRFpd0AKBC/DYGErW9KqVLWM8i9GQl0Sv0l
	/YnHn4G9Qt1FzmWenk8h4L8eM9pfxyFOD+n/k8bXAl1iHJGuk3If/6GnsF3Gl2K1r17x
	3kdQ==
X-Gm-Message-State: APf1xPCytqJWpCOaQxcC3Cscy4OhUD1Mdfw8o3U2/TYZ+5gVU+qc54rA
	yxGjg0HFX/O5VHMQBH4rlMA=
X-Google-Smtp-Source: AH8x224O6FZkOdZ7QSyHhGYqxP7TP7hH4Z0tXSVklEIhEbGtQFY99Xyacix8ZameYA5zHQi3ytvKZQ==
X-Received: by 10.101.85.76 with SMTP id t12mr2309314pgr.60.1517931844120;
	Tue, 06 Feb 2018 07:44:04 -0800 (PST)
Received: from localhost.localdomain ([223.196.115.131])
	by smtp.gmail.com with ESMTPSA id
	a6sm16558140pgq.56.2018.02.06.07.44.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 06 Feb 2018 07:44:03 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  6 Feb 2018 21:13:33 +0530
Message-Id: <1517931813-13010-12-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
References: <1517931813-13010-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 12/12] tpm2.0-tss: update to 1.3.0
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
X-List-Received-Date: Tue, 06 Feb 2018 15:44:10 -0000

change recipe to PV style

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../tpm2.0-tss/{tpm2.0-tss_git.bb => tpm2.0-tss_1.3.0.bb} | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)
 rename meta-tpm/recipes-tpm/tpm2.0-tss/{tpm2.0-tss_git.bb => tpm2.0-tss_1.3.0.bb} (81%)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
similarity index 81%
rename from meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
rename to meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
index fd5ace8..b673c2b 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_1.3.0.bb
@@ -6,16 +6,16 @@ SECTION = "tpm"
 
 DEPENDS = "autoconf-archive pkgconfig"
 
-SRCREV = "30794affab01598bbacfe1f167be7c068a0c0476"
+SRCREV = "b1d9ece8c6bea2e3043943b2edfaebcdca330c38"
 
 SRC_URI = " \
-    git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
+    git://github.com/tpm2-software/tpm2-tss.git;branch=1.x \
     file://ax_pthread.m4 \
 "
 
 inherit autotools pkgconfig systemd
 
-S = "${WORKDIR}/${@d.getVar('BPN',d).upper()}"
+S = "${WORKDIR}/git"
 
 do_configure_prepend () {
 	mkdir -p ${S}/m4
@@ -37,19 +37,22 @@ SYSTEMD_PACKAGES = "resourcemgr"
 SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
 SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
 
-do_patch[postfuncs] += "fix_systemd_unit"
+do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
 fix_systemd_unit () {
     sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
 }
 
 do_install_append() {
-    install -d ${D}${systemd_system_unitdir}
-    install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -d ${D}${systemd_system_unitdir}
+        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
+    fi
 }
 
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN}-dbg \
+    ${PN}-doc \
     libtss2 \
     libtss2-dev \
     libtss2-staticdev \
-- 
2.7.4


