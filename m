Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78A95E00A75; Thu, 13 Aug 2015 10:08:15 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A196CE00AA8
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:08:13 -0700 (PDT)
Received: from localhost.localdomain (95.111.23.95.dynamic.jazztel.es
	[95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id 160BD4632D;
	Thu, 13 Aug 2015 10:08:10 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 13 Aug 2015 19:07:23 +0200
Message-Id: <1439485643-31467-5-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Thu, 13 Aug 2015 17:08:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch adds to the README a section that explains the RPi can different
graphics stacks and that the user can choose by manually changing providers.

Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

Changes in v2: None

 README | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/README b/README
index 678c0eb4a4e3..0569b353870c 100644
--- a/README
+++ b/README
@@ -25,6 +25,7 @@ Contents:
     2.K. Boot to U-Boot
     2.L. Image with Initramfs
     2.M. Device tree support
+    2.O. Graphic stacks
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -195,6 +196,14 @@ kernels.
 NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
       older kernel versions.
 
+2.O. Graphic stacks
+===================
+The Raspberry Pi boards can use one of two graphics stacks: The userland
+user-space driver or the vc4 DRM/KMS kernel driver. By default userland
+is used since the vc4 is still experimental. But this can be changed by
+modifying the defaults for the kernel, egl, gles2, libgl and mesa providers.
+This is explained in the conf/machine/include/rpi-default-providers.inc file.
+
 3. Extra apps
 =============
 
-- 
2.4.3


