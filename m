Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0C14E009C9; Sun, 26 Feb 2017 19:12:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23214E00970
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2017 19:12:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v1R3Cb7C012097
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 26 Feb 2017 19:12:37 -0800 (PST)
Received: from yow-dellw-nn.wrs.com (128.224.56.14) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.294.0;
	Sun, 26 Feb 2017 19:12:37 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 26 Feb 2017 22:12:34 -0500
Message-ID: <d4a7b1def9d2d066c8c52e367d49afaa8ebc09fe.1488165049.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1488165049.git.bruce.ashfield@windriver.com>
References: <cover.1488165049.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/2] poky: make 4.10 the qemu* default
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
X-List-Received-Date: Mon, 27 Feb 2017 03:12:42 -0000
Content-Type: text/plain

Boot tested against 4.10 with qemu* + musl and glibc.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-poky/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 94f2577e8865..6789b981766b 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -21,13 +21,13 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemumips ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.8%"
-PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.8%"
+PREFERRED_VERSION_linux-yocto ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.10%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.10%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.5.0


