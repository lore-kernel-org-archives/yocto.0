Return-Path: <benjamin.gaignard@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7486EE00D21; Fri, 21 Dec 2018 03:12:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
	[209.85.128.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D34E7E00D14
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 03:12:25 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id y185so13992153wmd.1
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2018 03:12:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=h26moTnGA5iz1ufQIh3uuck08+vgvXFrvnCkbhYD2Qo=;
	b=KIP+fe3Jr85pGZlkdFbJ2ezhX/QOjiEz14JXy+kzLX7vk9loEFPNEGb7f8bgh933OL
	wDZtIyyWrj7OFBqydLxvyRNpjiH9ueWOuGXSnnvQcuQz3DRHVIzDDChBRYd6VmhDgrWr
	n1XNxkseJVTf8XAwp/dW5/Y5DSp7Jq+fL3Lr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=h26moTnGA5iz1ufQIh3uuck08+vgvXFrvnCkbhYD2Qo=;
	b=C2QQsg6UXw/zVHT0e0JWbv5b/1+GZpFD4lpXy7TxXj5si9lH867+ZUCVfM7H+sz7gA
	2tfFO4D9A/xj2mIA+ZAUcV/3bGmRCn7c4oG+tIV/TSAebwX8EUWUZHJyl0K+deAdMn5E
	KC9ECNS1ZZ4dsJ/oHgsVpVCVJy21KmshYUWrc+UqVWqqQU2PvQK4inDIwmrBITjRSwJU
	qKdjTywNO0JfsvGT2dklo7mqEMbgfbOL7xRaOd/KkzDcGHz0gW9L6nTBLFeslhCRW+C0
	Gwv/Aue/ri3M/AnCUZr/6ParGpg5dw+V1gtjoMxnaOXmRzB5pYf803VQpK5PEoF01GEh
	pulg==
X-Gm-Message-State: AJcUuke21swbcRJesYZ9VZUYqel8m/5x8Qm36pxYCT8+XASRpYcsb7Ai
	+TlmK7CqEe097SJMEittu0kxgX+VT68=
X-Google-Smtp-Source: AFSGD/XKDzxksqXvgI1GN4SWTcflAOPMi4v/KdKVyqufelLh2QeSwoneZvWGxt4x1AbYL7qe1ubFLg==
X-Received: by 2002:a1c:7306:: with SMTP id d6mr2357588wmb.98.1545390744467;
	Fri, 21 Dec 2018 03:12:24 -0800 (PST)
Received: from lmecxl0911.lme.st.com
	([2a04:cec0:109e:715b:34e6:eeb4:2228:793c])
	by smtp.gmail.com with ESMTPSA id
	r69sm11371419wmd.4.2018.12.21.03.12.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 21 Dec 2018 03:12:23 -0800 (PST)
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
To: yocto@yoctoproject.org
Date: Fri, 21 Dec 2018 12:11:52 +0100
Message-Id: <20181221111152.12634-1-benjamin.gaignard@linaro.org>
X-Mailer: git-send-email 2.15.0
Cc: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Subject: [meta-security][PATCH] tpm2.0-tss: remove resourcemgr systemd rules
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
X-List-Received-Date: Fri, 21 Dec 2018 11:12:26 -0000

Since resourcemgr doesn't exist anymore remove systemd rules.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
---
 .../recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb     | 23 ----------------------
 1 file changed, 23 deletions(-)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
index 3e7b81a..0b45625 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_2.0.1.bb
@@ -18,28 +18,6 @@ do_configure_prepend () {
        ./bootstrap
 }
 
-INHERIT += "extrausers"
-EXTRA_USERS_PARAMS = "\
-	useradd -p '' tss; \
-	groupadd tss; \
-	"
-
-SYSTEMD_PACKAGES = "resourcemgr"
-SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
-SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
-
-do_patch[postfuncs] += "${@bb.utils.contains('VIRTUAL-RUNTIME_init_manager','systemd','fix_systemd_unit','', d)}"
-fix_systemd_unit () {
-    sed -i -e 's;^ExecStart=.*/resourcemgr;ExecStart=${sbindir}/resourcemgr;' ${S}/contrib/resourcemgr.service
-}
-
-do_install_append() {
-    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
-        install -d ${D}${systemd_system_unitdir}
-        install -m0644 ${S}/contrib/resourcemgr.service ${D}${systemd_system_unitdir}/resourcemgr.service
-    fi
-}
-
 PROVIDES = "${PACKAGES}"
 PACKAGES = " \
     ${PN} \
@@ -57,7 +35,6 @@ PACKAGES = " \
     libtss2 \
     libtss2-dev \
     libtss2-staticdev \
-    resourcemgr \
 "
 
 FILES_libtss2-tcti-device = "${libdir}/libtss2-tcti-device.so.*"
-- 
2.15.0


