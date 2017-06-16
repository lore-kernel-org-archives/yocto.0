Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02704E00B28; Fri, 16 Jun 2017 06:48:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9092BE00992
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 06:48:01 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id F1EF626BAE8
From: Romain Perier <romain.perier@collabora.com>
To: Romain Perier <romain.perier@collabora.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Fri, 16 Jun 2017 15:47:39 +0200
Message-Id: <20170616134740.25372-2-romain.perier@collabora.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170616134740.25372-1-romain.perier@collabora.com>
References: <20170616134740.25372-1-romain.perier@collabora.com>
Cc: yocto@yoctoproject.org
Subject: [meta-rockchip][PATCH 1/2] u-boot: Copy ${SPL_BINARY} to the default search path
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
X-List-Received-Date: Fri, 16 Jun 2017 13:48:04 -0000

The do_install task from u-boot.inc, expects to find ${SPL_BINARY} into
${B}, while for some platforms, including Rockchip, this binary is
generated under the spl directory. Extend the compile task to copy
${SPL_BINARY} to the defaut search path and make the build process work.

Signed-off-by: Romain Perier <romain.perier@collabora.com>
---
 recipes-bsp/u-boot/u-boot_%.bbappend | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 recipes-bsp/u-boot/u-boot_%.bbappend

diff --git a/recipes-bsp/u-boot/u-boot_%.bbappend b/recipes-bsp/u-boot/u-boot_%.bbappend
new file mode 100644
index 0000000..efa5eae
--- /dev/null
+++ b/recipes-bsp/u-boot/u-boot_%.bbappend
@@ -0,0 +1,8 @@
+# Copyright (C) 2017 Romain Perier <romain.perier@collabora.com>
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+do_compile_append () {
+    # Copy spl to default search path, so do_install from u-boot.inc
+    # works
+    cp ${B}/spl/${SPL_BINARY} ${B}/
+}
-- 
1.8.3.1


