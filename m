Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DED1E009AD; Wed,  1 Feb 2017 07:43:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E85CE009A5
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2017 07:43:24 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v11FhNCR000101
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 1 Feb 2017 07:43:23 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.294.0; Wed, 1 Feb 2017 07:43:22 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Wed, 1 Feb 2017 10:43:18 -0500
Message-ID: <c97409e7e6e4038647f3142dda9c64bf0943b942.1485963487.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1485963487.git.bruce.ashfield@windriver.com>
References: <cover.1485963487.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/2] poky: make 4.9 the preferred qemu version
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
X-List-Received-Date: Wed, 01 Feb 2017 15:43:25 -0000
Content-Type: text/plain

4.9 has been selected as the LTS kernel, and has been valided
for all archictures.

We can now make this the default kernel version for qemu.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-poky/conf/distro/poky.conf | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 8fa391458b21..a9b34a280fc7 100644
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
+PREFERRED_VERSION_linux-yocto ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemux86 ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemux86-64 ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemuarm ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemumips ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemumips64 ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_qemuppc ?= "4.9%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.5.0


