Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D78AE00D89; Sat,  3 Oct 2015 09:37:48 -0700 (PDT)
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
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBA08E00CCF
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 09:37:47 -0700 (PDT)
Received: by qgev79 with SMTP id v79so118537078qge.0
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 09:37:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=u+jI/MjC9HwXzGw4VVL9s9hZgG4pg8bDvTbeSAiKfPI=;
	b=MLqUsuE9FSF+v+Cj2K2eg6Nu7qJbH3TLfmCGUwTMH1R73AOs03q8k/12Wq9YlgRlg1
	jgz+4EAONuVAsK8DvXmn0IbVxTIdM6AabPSCi6UDy/rQmNqBTx0BR3fW6xyaCvn3M5iC
	NEDMmLKN4k76madAE5XT+6pFW7zwTW5O+Q6br7pgPmU7AxUNLWlTG1QsTUAIfQHwFNV7
	vXQe26X2IpqyiDoCdTz//9RFMU2FrwtDVYKZ/XH4aByb5n/foOrz5ygwIJbKYI6fX6Bt
	GnUGnI0twsWTDUKWAJv2qQhqTGVBUmoLuSq9HiOgxD9fyTtO4X/g0NxlcFugxikRvxKE
	fQHA==
X-Received: by 10.140.18.240 with SMTP id 103mr28776459qgf.31.1443890266835;
	Sat, 03 Oct 2015 09:37:46 -0700 (PDT)
Received: from khem-dvm-001.sys.comcast.net (a-96-119-177-31.sys.comcast.net.
	[96.119.177.31])
	by smtp.gmail.com with ESMTPSA id 35sm7164184qkv.42.2015.10.03.09.37.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 03 Oct 2015 09:37:46 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  3 Oct 2015 16:37:36 +0000
Message-Id: <1443890258-14442-3-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.6.0
In-Reply-To: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
References: <1443890258-14442-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH V4 3/5] userland: Adjust include location for pthreads-headers
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
X-List-Received-Date: Sat, 03 Oct 2015 16:37:48 -0000

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
index d8626cd..f9af226 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -41,6 +41,14 @@ PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE,,wayland,"
 
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
2.6.0


