Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1252E00B8B; Sat,  2 Apr 2016 10:59:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6741BE008E0
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 10:59:19 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id c20so5089751pfc.1
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 10:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=QkJ9960uBYmdLYFKmAW7ld+lO4Fs8+s6uh6f+YfmA2A=;
	b=x3xT/Sgjrr9igL24/GJZfnpVXXOgjgC1RE/YxThJR5IZclX68zO9FAyT76tMWCiMpR
	QHI2h0oBjVtqD0r6idHJfeFVaPeD1Ahv4UbwdmbaxU94jJ4SkO6N4PHxRVxyHXaVq99z
	reZuWuBImeFgFKWgsPrZkA1JrgVBjJH5TTmbTqo73Mytqnz0CYYB1tA7OwzbB4RtQdCL
	By6PZrqtAD4BAjeHpD7xDuSsUtdYwuIeYAJ29xT9aR7meflFrnJ4zINpCRNPj+F6tNjR
	43tfKWSE5OlVEpzhXmizXHgBxuCCjqRFecSWLIKrtv6Ghts+BJsO6Bf0QuBte3WeLA/a
	I5lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=QkJ9960uBYmdLYFKmAW7ld+lO4Fs8+s6uh6f+YfmA2A=;
	b=MfTB4Vw6yRNOis+YW2WIeLkWOmza6Rux2vC1WByZxNlGnElS6rnOAYI0F8Dvh5t8Fh
	Emuss9Ht0GFsubllnY1wGmuX6jCjd1GzOrgsNN25B5bS94YlJ2vTJSQRL3k8zPI0oUO9
	RIGtRV9My46Pvyablvnp+b0n3OFkPs5+VNk+y5PQ7pbIjB8r0rA8KMWrgPk0+P+S2xa6
	LroCYP/83Mgi0eyYSJqpZTZrnmBfdcWeSvOwJg+lHOrbhXka4CdUxpL8KsLeBZJMK//G
	pOaILOIvMwOJer8N4fjuMlGBh9qhgDEQUeNfPBkrKfTz+mMsyD5Kyf88pWjcYrrPvQfS
	4Cvg==
X-Gm-Message-State: AD7BkJL3iQP2RC6HTazVQPqVN1oJ+cwCottGPKD8fYOdzUAjX9VseVh3NmM1VfGxG2vB/Q==
X-Received: by 10.98.93.12 with SMTP id r12mr7821475pfb.64.1459619959800;
	Sat, 02 Apr 2016 10:59:19 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	ud5sm30487912pac.11.2016.04.02.10.59.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 02 Apr 2016 10:59:19 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  2 Apr 2016 10:59:12 -0700
Message-Id: <1459619952-26621-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.0
In-Reply-To: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
References: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] userland: Make vchostif as shared library
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
X-List-Received-Date: Sat, 02 Apr 2016 17:59:22 -0000

This helps in using this library when building
with PIE binaries

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0014-build-shared-library-for-vchostif.patch   | 28 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 29 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch

diff --git a/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
new file mode 100644
index 0000000..ca7cb66
--- /dev/null
+++ b/recipes-graphics/userland/userland/0014-build-shared-library-for-vchostif.patch
@@ -0,0 +1,28 @@
+From 4e9aa3fffb458ca4fafd2241c18e9c8008b66ad8 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 2 Apr 2016 10:37:24 -0700
+Subject: [PATCH] build shared library for vchostif
+
+Fixes #149
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/vmcs_host/CMakeLists.txt | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
+index 22949a8..f8c2f2f 100755
+--- a/interface/vmcs_host/CMakeLists.txt
++++ b/interface/vmcs_host/CMakeLists.txt
+@@ -17,7 +17,7 @@ set(VCHOSTIF_SOURCE
+ #            ${VMCS_TARGET}/vmcs_main.c
+ #  vc_vchi_haud.c
+ 
+-add_library(vchostif ${VCHOSTIF_SOURCE})
++add_library(vchostif SHARED ${VCHOSTIF_SOURCE})
+ 
+ #add_library(bufman            vc_vchi_bufman.c            )
+ 
+-- 
+2.8.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index efa2128..6ed8fcf 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -33,6 +33,7 @@ SRC_URI = "\
     file://0011-fix-cmake-dependency-race.patch \
     file://0012-Fix-enum-conversion-warnings.patch \
     file://0013-Fix-for-framerate-with-nested-composition.patch \
+    file://0014-build-shared-library-for-vchostif.patch \
     file://0015-wl-dispmanx-buffer-wrapping.patch \
 "
 S = "${WORKDIR}/git"
-- 
2.8.0


