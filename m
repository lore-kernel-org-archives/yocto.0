Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D78C8E00A71; Thu, 13 Aug 2015 17:41:08 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74D02E00A31
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:41:06 -0700 (PDT)
Received: by igbjg10 with SMTP id jg10so2447403igb.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 17:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=VjqbIWIPCVLkt8NLFArqrvpGaVaY8njZpYOzGJtPvKY=;
	b=a8BbY6eLKs90dFMs/reCr4mL6Ao9JU94yTrAWkwKOpTgSHjqqRKG7C3ekP6wscq4jU
	oZkr3YEXdmoWMMpakukpaPDtApslTbJiT+vIWp1E2/GvPpCsU7lD+KK0RXy26y+vcG1J
	3hzvwHnzyg/pMsMDXxq2flHZ9s46s4mK1AwsGnZxinz3pH59lJ2avvAt355OGy7kjIIG
	7y3xHi1xL4UoDZZNMc3PY92whKfNdSHpw4w+gzEYebGEDOECJCskDHzp7r4PIPuzguN/
	4irEIEKTBWWKPWKDPp+Y1vANT40U3FL1OFOWOdr+qzwCWGlNm34AU3zlrWzsf3t8SePO
	jjVQ==
X-Received: by 10.50.85.45 with SMTP id e13mr145918igz.52.1439512866595;
	Thu, 13 Aug 2015 17:41:06 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79]) by smtp.gmail.com with ESMTPSA id
	e33sm2847354ioi.12.2015.08.13.17.41.06
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 13 Aug 2015 17:41:06 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 13 Aug 2015 17:40:57 -0700
Message-Id: <1439512858-19957-3-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
References: <1439512858-19957-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 3/4] userland: Adjust include location for pthreads-headers
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
X-List-Received-Date: Fri, 14 Aug 2015 00:41:08 -0000

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


