Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD583E00E0E; Wed,  4 Sep 2019 16:27:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA54EE00E02
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 16:27:00 -0700 (PDT)
Received: by mail-pg1-f174.google.com with SMTP id l21so294588pgm.3
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 16:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=bclMeG6UqsBkUKHsyC6HBbFm7cBfJeQi2rTLF1a7LWw=;
	b=h6ET+yhZxt+Nx25ZN5F1Ge0oJ/gqZFOKC/SwXFkHc1CpJ0ItvixA0ZfmFtBAOKX95u
	sJMh65Le7TdsgZQXIYfEddKSj/uXBgBwg4LjYpquZLqXDJ/f0p9zLEYhGO6oDFHKKala
	TzsCwarrNg24E0Vt0AVOB5Ygzt9euBehbtI8rpl+qK4ByzGwyuuy33ZEJkVOC2nlJr//
	NT7JTqPI1CeiosxnQjPk8Wm/YuuaZfyOnIlHqKoBxC6ScnAuV9qaTmo6Vi6tRrZp3TVJ
	VX6lSZaemCnPaP4/IGS5SknA0Ak/pRC+z6yFE4+hzdqzH7ANMrF4B2SdJn6b58WrclHg
	R9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bclMeG6UqsBkUKHsyC6HBbFm7cBfJeQi2rTLF1a7LWw=;
	b=Us/gQQsKK/dYmt4JlZZhi/zBw3MCTYairgin5I6qMVMiDsW6BpUGPHbBJSwHy9RoRp
	Rv7WdbSni0ZK4qL4uIc7VgvZtcVuFt2OKQaccLa3SZM3coldvvYIfZnnBEsPPdp7nsMf
	EVsxnnzMP0xxEsJc9ZoTQfYxZEqTHhmY0WIkugh944cObVsHQuPgKOEo/fPxVBiGiljH
	qa6vgl5GSe2L6nLVVaYCoLgouw80+QCbtUw9rdtXjnFGXfa+Qa7Mjx0aCAwK66m8qAnm
	Sgf2GSWQLMsMDVAwoIT7bINhai77pRKhO+mj22Msm2QJsFYERfSCCBYYu8lwCv+ZO/r2
	R3dw==
X-Gm-Message-State: APjAAAXGMWK/TocLKXty0I5XTgOO9EdwccqVGeVxrj5gEqlZAZ5EddZz
	H6ohPsxdG3sEy6ScedtCIlI3eWUO
X-Google-Smtp-Source: APXvYqx/8qnqi/PgkjFNoZmei/5yZfRriv6tPtoL5X2RVtN7pwMPnLJrmhSIyVlGiu970s8A2PSLqQ==
X-Received: by 2002:a17:90a:db48:: with SMTP id u8mr722418pjx.41.1567639619939;
	Wed, 04 Sep 2019 16:26:59 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	(c-71-204-143-8.hsd1.ca.comcast.net. [71.204.143.8])
	by smtp.gmail.com with ESMTPSA id
	129sm153508pfd.173.2019.09.04.16.26.59 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 04 Sep 2019 16:26:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  4 Sep 2019 16:26:55 -0700
Message-Id: <1567639615-8404-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567639615-8404-1-git-send-email-akuster808@gmail.com>
References: <1567639615-8404-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] suricata: update to 4.1.4
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
X-List-Received-Date: Wed, 04 Sep 2019 23:27:02 -0000

Backport patch to fix build against newer kernels.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...-packet-fix-build-on-recent-Linux-kernels.patch | 26 ++++++++++++++++++++++
 .../{libhtp_0.5.29.bb => libhtp_0.5.30.bb}         |  0
 recipes-ids/suricata/suricata.inc                  |  6 ++---
 .../{suricata_4.1.3.bb => suricata_4.1.4.bb}       | 11 ++++-----
 4 files changed, 35 insertions(+), 8 deletions(-)
 create mode 100644 recipes-ids/suricata/files/0001-af-packet-fix-build-on-recent-Linux-kernels.patch
 rename recipes-ids/suricata/{libhtp_0.5.29.bb => libhtp_0.5.30.bb} (100%)
 rename recipes-ids/suricata/{suricata_4.1.3.bb => suricata_4.1.4.bb} (95%)

diff --git a/recipes-ids/suricata/files/0001-af-packet-fix-build-on-recent-Linux-kernels.patch b/recipes-ids/suricata/files/0001-af-packet-fix-build-on-recent-Linux-kernels.patch
new file mode 100644
index 0000000..74e9a56
--- /dev/null
+++ b/recipes-ids/suricata/files/0001-af-packet-fix-build-on-recent-Linux-kernels.patch
@@ -0,0 +1,26 @@
+From b37554e0bc3cf383e6547c5c6a69c6f6849c09e3 Mon Sep 17 00:00:00 2001
+From: Eric Leblond <eric@regit.org>
+Date: Wed, 17 Jul 2019 12:35:12 +0200
+Subject: [PATCH] af-packet: fix build on recent Linux kernels
+
+Upstream-Status: Backport
+Signed-off-by: Armin kuster <akuster808@gmail.com>
+---
+ src/source-af-packet.c | 4 ++++
+ 1 file changed, 4 insertions(+)
+
+Index: suricata-4.1.4/src/source-af-packet.c
+===================================================================
+--- suricata-4.1.4.orig/src/source-af-packet.c
++++ suricata-4.1.4/src/source-af-packet.c
+@@ -64,6 +64,10 @@
+ #include <sys/ioctl.h>
+ #endif
+ 
++#if HAVE_LINUX_SOCKIOS_H
++#include <linux/sockios.h>
++#endif
++
+ #ifdef HAVE_PACKET_EBPF
+ #include "util-ebpf.h"
+ #include <bpf/libbpf.h>
diff --git a/recipes-ids/suricata/libhtp_0.5.29.bb b/recipes-ids/suricata/libhtp_0.5.30.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.29.bb
rename to recipes-ids/suricata/libhtp_0.5.30.bb
diff --git a/recipes-ids/suricata/suricata.inc b/recipes-ids/suricata/suricata.inc
index 7be403c..54f91c5 100644
--- a/recipes-ids/suricata/suricata.inc
+++ b/recipes-ids/suricata/suricata.inc
@@ -2,8 +2,8 @@ HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
 
-VER = "4.1.3"
+VER = "4.1.4"
 SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
 
-SRC_URI[md5sum] = "35c4a8e6be3910831649a073950195df"
-SRC_URI[sha256sum] = "6cda6c80b753ce36483c6be535358b971f3890b9aa27a58c2d2f7e89dd6c6aa0"
+SRC_URI[md5sum] = "cb8bf6b8330c44ae78dfb5b083a6fe82"
+SRC_URI[sha256sum] = "2da50d91f92adf8b1af930f388361f76424420b88f553f610e2780e4240f2009"
diff --git a/recipes-ids/suricata/suricata_4.1.3.bb b/recipes-ids/suricata/suricata_4.1.4.bb
similarity index 95%
rename from recipes-ids/suricata/suricata_4.1.3.bb
rename to recipes-ids/suricata/suricata_4.1.4.bb
index d6f5937..f860af9 100644
--- a/recipes-ids/suricata/suricata_4.1.3.bb
+++ b/recipes-ids/suricata/suricata_4.1.4.bb
@@ -7,11 +7,12 @@ LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd
 SRC_URI += "file://emerging.rules.tar.gz;name=rules"
 
 SRC_URI += " \
-           file://volatiles.03_suricata \
-           file://suricata.yaml \
-           file://suricata.service \
-           file://run-ptest \
-           "
+    file://volatiles.03_suricata \
+    file://suricata.yaml \
+    file://suricata.service \
+    file://run-ptest \
+    file://0001-af-packet-fix-build-on-recent-Linux-kernels.patch \
+    "
 
 SRC_URI[rules.md5sum] = "205c5e5b54e489207ed892c03ad75b33"
 SRC_URI[rules.sha256sum] = "4aa81011b246875a57181c6a0569ca887845e366904bcaf0043220f33bd69798"
-- 
2.7.4


