Return-Path: <okaya@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8F9FE00D1B; Fri, 29 Mar 2019 07:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	https://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32B57E00CED
	for <yocto@yoctoproject.org>; Fri, 29 Mar 2019 07:42:55 -0700 (PDT)
Received: from
	sinanubuntu1604.mkjiurmyylmellclgttazegk5f.bx.internal.cloudapp.net
	(unknown [13.92.239.74])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B161B2183F;
	Fri, 29 Mar 2019 14:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553870575;
	bh=i5Ma8cPNAxe/GI+8J64O9nKvhrnRYRTGA+os7Jag+Ko=;
	h=From:To:Cc:Subject:Date:From;
	b=OkGxU1F64FT9NKS6zq+MmbFjLiVwasCsoZ0RSxcXWbig8aqYfHBI4uKocKEBU62bG
	enDAFR6R5DKD2JnDj/3A5lUMQERS8332VAVMwz6THb5WYWs9mqRX8zAnDTZ/pqomNf
	UCG4us8Pf7cuk9bSS4wrEMqjSXCDO3tSV4OhlCTA=
From: Sinan Kaya <okaya@kernel.org>
To: yocto@yoctoproject.org
Date: Fri, 29 Mar 2019 14:42:52 +0000
Message-Id: <20190329144252.10259-1-okaya@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [sumo] [PATCH v1] systemd: fix musl compilation
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
X-List-Received-Date: Fri, 29 Mar 2019 14:42:55 -0000
Content-Transfer-Encoding: 8bit

musl compilation has been broken since systemd: fix CVE-2018-6954. Fixing this
by placing #ifdef for glob definition.

Signed-off-by: Sinan Kaya <okaya@kernel.org>
---
 .../systemd/0036-Fix-musl-compilation.patch   | 27 +++++++++++++++++++
 meta/recipes-core/systemd/systemd_237.bb      |  1 +
 2 files changed, 28 insertions(+)
 create mode 100644 meta/recipes-core/systemd/systemd/0036-Fix-musl-compilation.patch

diff --git a/meta/recipes-core/systemd/systemd/0036-Fix-musl-compilation.patch b/meta/recipes-core/systemd/systemd/0036-Fix-musl-compilation.patch
new file mode 100644
index 00000000000..d12b0415f65
--- /dev/null
+++ b/meta/recipes-core/systemd/systemd/0036-Fix-musl-compilation.patch
@@ -0,0 +1,27 @@
+From 8795fe183a92e6bc6a1221a5aad4103eaca13823 Mon Sep 17 00:00:00 2001
+From: Sinan Kaya <sinan.kaya@microsoft.com>
+Date: Tue, 26 Mar 2019 02:45:53 +0000
+Subject: [PATCH] Fix musl compilation
+
+Signed-off-by: Sinan Kaya <sinan.kaya@microsoft.com>
+---
+ src/tmpfiles/tmpfiles.c | 2 ++
+ 1 file changed, 2 insertions(+)
+
+diff --git a/src/tmpfiles/tmpfiles.c b/src/tmpfiles/tmpfiles.c
+index d59ccbaa3..8d1ab0767 100644
+--- a/src/tmpfiles/tmpfiles.c
++++ b/src/tmpfiles/tmpfiles.c
+@@ -1899,7 +1899,9 @@ static int glob_item(Item *i, action_t action) {
+ 
+ static int glob_item_recursively(Item *i, fdaction_t action) {
+         _cleanup_globfree_ glob_t g = {
++#ifdef GLOB_ALTDIRFUNC
+                 .gl_opendir = (void *(*)(const char *)) opendir_nomod,
++#endif
+         };
+         int r = 0, k;
+         char **fn;
+-- 
+2.21.0
+
diff --git a/meta/recipes-core/systemd/systemd_237.bb b/meta/recipes-core/systemd/systemd_237.bb
index a0e5d512e00..3b5222a2943 100644
--- a/meta/recipes-core/systemd/systemd_237.bb
+++ b/meta/recipes-core/systemd/systemd_237.bb
@@ -65,6 +65,7 @@ SRC_URI += "file://touchscreen.rules \
            file://0002-Make-tmpfiles-safe.patch \
            file://CVE-2019-6454.patch \
            file://sd-bus-if-we-receive-an-invalid-dbus-message-ignore-.patch \
+           file://0036-Fix-musl-compilation.patch \
            "
 SRC_URI_append_qemuall = " file://0001-core-device.c-Change-the-default-device-timeout-to-2.patch"
 
-- 
2.21.0


