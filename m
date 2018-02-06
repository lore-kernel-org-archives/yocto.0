Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6884E00DFE; Tue,  6 Feb 2018 08:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC0C3E00DFE
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 08:34:33 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w16GYVX7026102
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 6 Feb 2018 08:34:32 -0800
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 6 Feb 2018 08:34:28 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 6 Feb 2018 11:34:28 -0500
Message-ID: <2d69d47f2413a8e1b969303c9d985869b9abc847.1517934700.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1517934700.git.bruce.ashfield@windriver.com>
References: <cover.1517934700.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/3] poky: update default kernel to v4.15
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
X-List-Received-Date: Tue, 06 Feb 2018 16:34:34 -0000
Content-Type: text/plain

Updating the default kernel for qemu* to be v4.15. This allows easy
integration of the latest fixes/features for new BSPs. 4.14 is also
available as a LTS kernel option.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-poky/conf/distro/poky.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky.conf b/meta-poky/conf/distro/poky.conf
index 3dac26fa3c7b..441986c190bf 100644
--- a/meta-poky/conf/distro/poky.conf
+++ b/meta-poky/conf/distro/poky.conf
@@ -21,7 +21,7 @@ POKY_DEFAULT_EXTRA_RRECOMMENDS = "kernel-module-af-packet"
 
 DISTRO_FEATURES ?= "${DISTRO_FEATURES_DEFAULT} ${DISTRO_FEATURES_LIBC} ${POKY_DEFAULT_DISTRO_FEATURES}"
 
-PREFERRED_VERSION_linux-yocto ?= "4.12%"
+PREFERRED_VERSION_linux-yocto ?= "4.14%"
 
 SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"
 SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
-- 
2.5.0


