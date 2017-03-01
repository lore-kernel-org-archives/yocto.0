Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9AF4E009AA; Wed,  1 Mar 2017 02:39:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FB19E008D0
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 02:39:11 -0800 (PST)
Received: by mail-pf0-f195.google.com with SMTP id b5so871358pfa.0
	for <yocto@yoctoproject.org>; Wed, 01 Mar 2017 02:39:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=CCHNJj1z133ij6PcezrQ+5e+2449LM8SQGScJp+d4RI=;
	b=rO88aUQC5IizLp7xS1qSeqW2reEmGNwMU78dvmB1ZpjXamv7LCA/gB1cffnp0heuUo
	sjHWMYH7Fbrm1Ia+PAbmwadef/PO4MwtpUwFArkZ8Wy4uLYjm0Hr+NzLkjQhNVXg0JvK
	E4Dk7HS7D9ekADRxaEa6LZzQYuVWAntb2pshbF3xKnEFZnWJsjVJ/PrkMLxD2kvj+caa
	8zyBKnmEPAcap338jgU5iNFoysYwY+G5CoN+Wn9xe8Z17Jz4ILKEE5cNjAdVLhx77FPO
	cDWS+BLEM7kWYir3CSZwTmRA8Rexw8LU2EYTGeRlKU2yDj89kkc+S6A7QBfHS5WVK5Dj
	s2cA==
X-Gm-Message-State: AMke39k9h1Qwz7TFxOEdstKnHYaT7gPyaqNM8oA2rpgkrILV76PyapnLcXPyOXxTCAWF+w==
X-Received: by 10.84.172.193 with SMTP id n59mr9266236plb.63.1488364750937;
	Wed, 01 Mar 2017 02:39:10 -0800 (PST)
Received: from localhost.localdomain ([103.29.142.67])
	by smtp.gmail.com with ESMTPSA id
	c28sm9670473pfj.77.2017.03.01.02.39.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Mar 2017 02:39:10 -0800 (PST)
From: Jacob Chen <jacob-chen@iotwrt.com>
To: yocto@yoctoproject.org, eddie.cai.linux@gmail.com, romain.perier@gmail.com,
	twoerner@gmail.com
Date: Wed,  1 Mar 2017 18:39:01 +0800
Message-Id: <1488364741-16116-2-git-send-email-jacob-chen@iotwrt.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488364741-16116-1-git-send-email-jacob-chen@iotwrt.com>
References: <1488364741-16116-1-git-send-email-jacob-chen@iotwrt.com>
Cc: Jacob Chen <jacob-chen@iotwrt.com>
Subject: [meta-rockchip][PATCH 2/2] recipes-graphics: Add recipe for libdrm-rk
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
X-List-Received-Date: Wed, 01 Mar 2017 10:39:12 -0000

It's rockchip modified libdrm, we can call rga by this libdrm.

Our development work in libdrm has not yet completed, so it have not pushed to the upstream.
We temporarily maintain it by ourself.
---
 recipes-graphics/libdrm/libdrm_rk.bb | 47 ++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 recipes-graphics/libdrm/libdrm_rk.bb

diff --git a/recipes-graphics/libdrm/libdrm_rk.bb b/recipes-graphics/libdrm/libdrm_rk.bb
new file mode 100644
index 0000000..6af5b6f
--- /dev/null
+++ b/recipes-graphics/libdrm/libdrm_rk.bb
@@ -0,0 +1,47 @@
+# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
+# Released under the MIT license (see COPYING.MIT for the terms)
+
+SECTION = "x11/base"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PROVIDES = "drm"
+DEPENDS = "libpthread-stubs udev libpciaccess"
+
+SRCREV = "${AUTOREV}"
+SRCBRANCH ?= "rockchip-2.4.74"
+SRC_URI = "git://github.com/rockchip-linux/libdrm-rockchip.git;branch=${SRCBRANCH}"
+
+S = "${WORKDIR}/git"
+
+inherit autotools pkgconfig
+
+EXTRA_OECONF += "--disable-cairo-tests \
+                 --enable-omap-experimental-api \
+                 --enable-install-test-programs \
+                 --disable-manpages \
+                 --disable-valgrind \
+				 --enable-rockchip-experimental-api \
+                "
+
+ALLOW_EMPTY_${PN}-drivers = "1"
+PACKAGES =+ "${PN}-tests ${PN}-drivers ${PN}-radeon ${PN}-nouveau ${PN}-omap \
+             ${PN}-intel ${PN}-exynos ${PN}-kms ${PN}-freedreno ${PN}-amdgpu \
+			 ${PN}-rockchip "
+
+RRECOMMENDS_${PN}-drivers = "${PN}-radeon ${PN}-nouveau ${PN}-omap ${PN}-intel \
+                             ${PN}-exynos ${PN}-freedreno ${PN}-amdgpu ${PN}-rockchip"
+
+FILES_${PN}-tests = "${bindir}/*"
+FILES_${PN}-radeon = "${libdir}/libdrm_radeon.so.*"
+FILES_${PN}-nouveau = "${libdir}/libdrm_nouveau.so.*"
+FILES_${PN}-omap = "${libdir}/libdrm_omap.so.*"
+FILES_${PN}-intel = "${libdir}/libdrm_intel.so.*"
+FILES_${PN}-exynos = "${libdir}/libdrm_exynos.so.*"
+FILES_${PN}-kms = "${libdir}/libkms*.so.*"
+FILES_${PN}-freedreno = "${libdir}/libdrm_freedreno.so.*"
+FILES_${PN}-amdgpu = "${libdir}/libdrm_amdgpu.so.*"
+FILES_${PN}-rockchip = "${libdir}/libdrm_rockchip.so.*"
+
+do_configure_prepend() {
+	${S}/autogen.sh ${CONFIGUREOPTS} ${EXTRA_OECONF}
+}
-- 
2.7.4


