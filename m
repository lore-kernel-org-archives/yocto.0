Return-Path: <benjamin.gaignard@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B4A2E00AAA; Thu, 23 Mar 2017 07:26:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5971CE00777
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 07:26:19 -0700 (PDT)
Received: by mail-wm0-f45.google.com with SMTP id v203so2384406wmg.0
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 07:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=5ue8dOWZa6uj0SPFTGFjuLEMG/oKT7BsyJt/EAHFkng=;
	b=UB+91LtxBOArWUDoFuoOeqNPHY1FskFyM+mLeNAQGEqo0bD/wphEKKJw108PVf7Hn6
	fxrhhXp0UMrMY3Jx4G7b4n7zuNHxEOXL/k73y9xP5lZrquCLl7+BweYiU43sy+vp+W5b
	Fr+uKw1pWlp9+kL/hSarwV5jSCa0g8weHnoKo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=5ue8dOWZa6uj0SPFTGFjuLEMG/oKT7BsyJt/EAHFkng=;
	b=pySr9p+dXaQmUDqUPjyWPHfI6lC8CloX4NlKcpiHDohgkMy6i8bK9sB082PMRtkOIP
	cu7H6CkOB6lhvZUE6i5Z4tdaGKecWF3Viw2FGIXXQ1Y2uGwWzv40aKs/oaQFd8NHm0mm
	wspHOULqeRtfn96cAsGEVi14nkPJ5lS+MB6SEhm26mU/1n7OPEhfjKgKFoULI5oetxHo
	hTfOzTECN/HA6iRTlipAiXHwPSWU7p7zz7rToP6mtqwZiRwdmWMoK3X2Al8d96VTFcCQ
	0c6IpGpfVkFvOTNv5NPtkvhZ5kf+f6SErY07wIGozPwDTzblUs62TJ9a9fQUW5kGVo4J
	2Lcg==
X-Gm-Message-State: AFeK/H2nkuo+PLdiUh3ee4h7modP+frUZ11m8Oj+Qq7Hevgeh534FatIvh0GsmZtZxACoSem
X-Received: by 10.28.0.78 with SMTP id 75mr3054099wma.138.1490279178876;
	Thu, 23 Mar 2017 07:26:18 -0700 (PDT)
Received: from lmenx321.st.com. ([80.214.118.153])
	by smtp.gmail.com with ESMTPSA id 64sm4533708wmo.21.2017.03.23.07.26.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 23 Mar 2017 07:26:18 -0700 (PDT)
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
To: yocto@yoctoproject.org
Date: Thu, 23 Mar 2017 15:26:11 +0100
Message-Id: <1490279171-25737-1-git-send-email-benjamin.gaignard@linaro.org>
X-Mailer: git-send-email 1.9.1
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: [meta-security][PATCH] tpm2.0-tss: install resourcemgr service
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
X-List-Received-Date: Thu, 23 Mar 2017 14:26:22 -0000

Install systemd resource.mgr service and it needed user/group.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
---
 .../tpm2.0-tss/change-resourcemgr-location.patch   | 23 ++++++++++++++++++++++
 recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb           | 22 ++++++++++++++++++---
 2 files changed, 42 insertions(+), 3 deletions(-)
 create mode 100644 recipes-tpm/tpm2.0-tss/tpm2.0-tss/change-resourcemgr-location.patch

diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss/change-resourcemgr-location.patch b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/change-resourcemgr-location.patch
new file mode 100644
index 0000000..ba3775a
--- /dev/null
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss/change-resourcemgr-location.patch
@@ -0,0 +1,23 @@
+resourcemgr: change resourcemgr location
+
+Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
+---
+ contrib/resourcemgr.service | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/contrib/resourcemgr.service b/contrib/resourcemgr.service
+index 7f23739..e5b0900 100644
+--- a/contrib/resourcemgr.service
++++ b/contrib/resourcemgr.service
+@@ -3,7 +3,7 @@ Description=TPM2 resource manager & access broker
+ Documentation=http://www.github.com/01org/TPM2.0-TSS
+ 
+ [Service]
+-ExecStart=/usr/local/sbin/resourcemgr
++ExecStart=/usr/sbin/resourcemgr
+ StandardOutput=null
+ User=tss
+ Group=tss
+-- 
+1.9.1
+
diff --git a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index a03559c..96b3d72 100644
--- a/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -8,9 +8,10 @@ SRCREV = "8e25d0cbb287d30c93b2b77e99bc761dc67e31a9"
 SRC_URI = " \
     git://github.com/01org/TPM2.0-TSS.git;protocol=git;branch=master;name=TPM2.0-TSS;destsuffix=TPM2.0-TSS \
     file://ax_pthread.m4 \
-    file://fix_musl_select_include.patch "
+    file://fix_musl_select_include.patch \
+    file://change-resourcemgr-location.patch "
 
-inherit autotools pkgconfig
+inherit autotools pkgconfig systemd
 
 S = "${WORKDIR}/${@d.getVar('BPN',d).upper()}"
 
@@ -24,6 +25,21 @@ do_configure_prepend () {
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
+do_install_append() {
+    install -d ${D}${systemd_system_unitdir}
+    install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
+}
+
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN}-dbg \
@@ -64,4 +80,4 @@ FILES_libtctisocket-dev = " \
     ${libdir}/pkgconfig/tcti-socket.pc \
 "
 FILES_libtctisocket-staticdev = "${libdir}/libtcti-socket.*a"
-FILES_resourcemgr = "${sbindir}/resourcemgr"
+FILES_resourcemgr = "${sbindir}/resourcemgr ${systemd_system_unitdir}/resourcemgr.service"
-- 
1.9.1


