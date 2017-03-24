Return-Path: <benjamin.gaignard@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B48CEE00A0A; Fri, 24 Mar 2017 03:53:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24BE8E009B9
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 03:53:03 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id n11so9779665wma.1
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 03:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=0Minh2zj3Vt0/Khl/Zmyt4PBHfS2pcTDuZ4IxSw/bxg=;
	b=IYol6bKD1j5+BSKvL5v5zJY07Kk/mU3e8hr34Fn8ZPxctz1e/+YRbzqdSMMm2VMOq9
	2VSKdSeRZ/Ueqrqlh8EhQHG02AJyUKvUn64xChAJf4epuKetSraf1K9u68Lebc+fX6vu
	2joQSwDV0JSeGHaRIB4J5FdQ8qyT9vECyFDQQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0Minh2zj3Vt0/Khl/Zmyt4PBHfS2pcTDuZ4IxSw/bxg=;
	b=hWFYHpZVqQ+zhWqpqCLTKahls8x00M/OuklTowKGggRl1WQDxoRL5ig9fwUCkNZ8uQ
	SK/6CnsI23z7PpZG7Qn88CEuG2MoZyRsP6OIUzaFC+jgfxWnLDcuGe2Uk1TBBboF0oed
	0+NM3ajJ8FJcB5tYguhDAFofi9JUlI5PgBa73c/QbCfHVWX6leSADlYaJytPqJirLTug
	svxZkIg4+gV3QDsI3c40h8zdZHxxMxC6uehYsidazMgGLDlihM6FWs3OnA/GIz6Ze4d8
	QGysLXR6NdY6WE8Xn8x8xkSHg+Mkl2TogUGpK2ZfAswMaadHeW+IqmjViEbmrEJ7znbN
	e+4w==
X-Gm-Message-State: AFeK/H1yvtGSZN2IzYx0TvxHxEEX/qE/i+9aRDIShD0i3cZZ4nqEMgaBgX9ar7NemboQ/Sk9
X-Received: by 10.28.92.212 with SMTP id q203mr2246668wmb.73.1490352782767;
	Fri, 24 Mar 2017 03:53:02 -0700 (PDT)
Received: from lmenx321.st.com. ([80.215.43.136])
	by smtp.gmail.com with ESMTPSA id g18sm1981726wme.2.2017.03.24.03.53.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Mar 2017 03:53:02 -0700 (PDT)
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
To: yocto@yoctoproject.org,
	patrick.ohly@intel.com
Date: Fri, 24 Mar 2017 11:52:56 +0100
Message-Id: <1490352776-9945-1-git-send-email-benjamin.gaignard@linaro.org>
X-Mailer: git-send-email 1.9.1
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: [meta-security][PATCH v2] tpm2.0-tss: install resourcemgr service
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
X-List-Received-Date: Fri, 24 Mar 2017 10:53:05 -0000

Install systemd resource.mgr service and it needed user/group.

version 2:
- do not hardcode sbin directory in a patch but use ${sbindir} instead

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
---
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index a03559c..ca82562 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -10,7 +10,7 @@ SRC_URI = " \
     file://ax_pthread.m4 \
     file://fix_musl_select_include.patch "
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig systemd
 
 S = "${WORKDIR}/${@d.getVar('BPN',d).upper()}"
 
@@ -24,6 +24,26 @@ do_configure_prepend () {
 	cd $currentdir
 }
 
+INHERIT += "extrausers"
+EXTRA_USERS_PARAMS = "\
+	useradd -p '' tss; \
+	groupadd tss; \
+	"
+
+SYSTEMD_PACKAGES += "resourcemgr"
+SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
+SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
+
+do_patch[postfuncs] += "fix_systemd_unit"
+fix_systemd_unit () {
+    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
+}
+
+do_install_append() {
+    install -d ${D}${systemd_system_unitdir}
+    install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
+}
+
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN}-dbg \
@@ -64,4 +84,4 @@ FILES_libtctisocket-dev = " \
     ${libdir}/pkgconfig/tcti-socket.pc \
 "
 FILES_libtctisocket-staticdev = "${libdir}/libtcti-socket.*a"
-FILES_resourcemgr = "${sbindir}/resourcemgr"
+FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"
-- 
1.9.1


