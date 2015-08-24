Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC421E00AD1; Mon, 24 Aug 2015 00:51:57 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BB11E00AC8
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 00:51:55 -0700 (PDT)
Received: by igui7 with SMTP id i7so50400204igu.0
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 00:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=VjqbIWIPCVLkt8NLFArqrvpGaVaY8njZpYOzGJtPvKY=;
	b=bd2ZY6QZfxI0afHcn3a9djvtuQMXAAOIPZNGoiOx7D0V3vn/4XhUIoUGqJG+V7zkBR
	8oEMi07UYxmFUriXs2fNvbI4rqhnpAUybeiGURegwyFDkcwtTvWgN+vh1GjyYQ/6OCh5
	MeCsPZQ5i2h5eAyhC4Y8y92sC6SxA/Ar+Ca6r3gM7pDohypurcMC7QpYWye0FlkIf8Tr
	y8wi8JCEEK1ojOeGhcpd1YOv49nELSgSUnUbVvQkdgV5M87zzFCQIdTGzM5Uma2KurJs
	rMiay3fiorrKNtwT4v1Xxpwo5wab+EmumL8/KClthf6z8WJVfOU3TsL9FkwFUM2Xp1EE
	LAoQ==
X-Received: by 10.50.129.5 with SMTP id ns5mr13416338igb.40.1440402714656;
	Mon, 24 Aug 2015 00:51:54 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	m101sm12599368ioi.11.2015.08.24.00.51.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 24 Aug 2015 00:51:54 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 24 Aug 2015 00:51:39 -0700
Message-Id: <1440402701-6195-3-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V3 3/5] userland: Adjust include location for pthreads-headers
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
X-List-Received-Date: Mon, 24 Aug 2015 07:51:58 -0000

vcos headers include headers like "vcos_platform.h" "vcos_futex_mutex.h"
"vcos_platform_types.h" and these headers are different based on
platform/OSes. e.g. OS targets that support pthreads these headers
should come from pthreads/ folder but not for others. So one would add
right -I option for every package that accesses them directly or
indirectly. so if a software does #include <EGL/egl.h> then it will
break

| In file included from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos_assert.h:149:0,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos.h:114,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vmcs_host/vc_dispmanx.h:33,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/EGL/eglplatform.h:110,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/EGL/egl.h:36,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/../shared/platform.h:29,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/window.h:33,
|                  from
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/work/armv7at2hf-vfp-neon-angstrom-linux-gnueabi/weston/1.8.0-r0/weston-1.8.0/clients/eventdemo.c:40:
|
/mnt/home/kraj/work/angstrom/build/tmp-angstrom-glibc/sysroots/raspberrypi2/usr/include/interface/vcos/vcos_types.h:38:33:
fatal error: vcos_platform_types.h: No such file or directory
|  #include "vcos_platform_types.h"
|                                  ^
| compilation terminated.

This is wrong, it should not happen since doing simple #include
<EGL/egl.h> should not demand manual addition of some internal paths
tobe added to -I flags.

This patch fixes the headers which refer to headers inside pthreads/
folder to prefix them with pthreads/ so we dont have to specify
additional paths

This fixes weston on rpi and I believe there are more patches now to

recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
recipes-multimedia/omxplayer/omxplayer_git.bb

which can be removed as well

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 recipes-graphics/userland/userland_git.bb | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 6c7200c..188237a 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -37,6 +37,14 @@ PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE,,wayland,"
 
 CFLAGS_append = " -fPIC"
 
+do_install_append () {
+	for f in `find ${D}${includedir}/interface/vcos/ -name "*.h"`; do
+		sed -i 's/include "vcos_platform.h"/include "pthreads\/vcos_platform.h"/g' ${f}
+		sed -i 's/include "vcos_futex_mutex.h"/include "pthreads\/vcos_futex_mutex.h"/g' ${f}
+		sed -i 's/include "vcos_platform_types.h"/include "pthreads\/vcos_platform_types.h"/g' ${f}
+	done
+}
+
 # Shared libs from userland package  build aren't versioned, so we need
 # to force the .so files into the runtime package (and keep them
 # out of -dev package).
-- 
2.1.4


