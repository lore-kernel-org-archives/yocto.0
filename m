Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95818E00AB6; Thu, 30 Jul 2015 01:41:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E33E00A97
	for <yocto@yoctoproject.org>; Thu, 30 Jul 2015 01:41:21 -0700 (PDT)
Received: from localhost.localdomain (119.3.11.37.dynamic.jazztel.es
	[37.11.3.119])
	by lists.s-osg.org (Postfix) with ESMTPSA id 5C9854632D;
	Thu, 30 Jul 2015 01:36:15 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 30 Jul 2015 10:34:11 +0200
Message-Id: <1438245251-20437-6-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
X-Mailman-Approved-At: Sun, 02 Aug 2015 23:22:39 -0700
Cc: yocto@yoctoproject.org, Derek Foreman <derekf@osg.samsung.com>,
	Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Thu, 30 Jul 2015 08:41:23 -0000

From: Derek Foreman <derekf@osg.samsung.com>

The Raspberry Pi boards can use one of two graphics stacks: The "userland"
user-space driver or the VC4 drm/kms kernel driver. This patch allows the
user to choose if the VC4 driver has to be used instead and set the right
preferred providers for that case.

Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
[javier: Extend commit msg and made conditional instead removing userland]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

 conf/machine/include/rpi-default-providers.inc | 8 ++++----
 conf/machine/include/rpi-default-versions.inc  | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ee3a3acce7bd..233f177bd16e 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -3,8 +3,8 @@
 PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
 PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
-PREFERRED_PROVIDER_virtual/egl ?= "userland"
-PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
-PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
-PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
+PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
+PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
+PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
+PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
 PREFERRED_PROVIDER_jpeg = "jpeg"
diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
index bcf78281b6ff..c07ecac5924b 100644
--- a/conf/machine/include/rpi-default-versions.inc
+++ b/conf/machine/include/rpi-default-versions.inc
@@ -1,3 +1,3 @@
 # RaspberryPi BSP default versions
 
-PREFERRED_VERSION_linux-raspberrypi ?= "3.18.%"
+PREFERRED_VERSION_linux-raspberrypi ?= "${@bb.utils.contains("DISTRO_FEATURES", "vc4-gfx", "4.1.%", "3.18.%", d)}"
-- 
2.4.3


