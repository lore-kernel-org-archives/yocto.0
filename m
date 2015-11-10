Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3974E00BB9; Tue, 10 Nov 2015 06:45:42 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CEBE00B7D
	for <yocto@yoctoproject.org>; Tue, 10 Nov 2015 06:45:42 -0800 (PST)
Received: from minerva.localdomain (unknown [200.3.249.195])
	by lists.s-osg.org (Postfix) with ESMTPSA id 29308462CB;
	Tue, 10 Nov 2015 06:45:39 -0800 (PST)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Nov 2015 11:45:20 -0300
Message-Id: <1447166720-13316-3-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH v3 2/2] README: Add a section about graphic stacks
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
X-List-Received-Date: Tue, 10 Nov 2015 14:45:42 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch adds a section to the README that explains the RPi have
different graphics stacks and that the user can choose by manually
changing providers.

Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

Changes in v3:
- Add explanation in the README graphics section how to choose the kernel
  that has vc4 DRM/KMS support. Suggested by Khem Raj and Andrei Gherzan.

Changes in v2: None

 README | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/README b/README
index e16dee9ca7e5..e6cabb7c1f63 100644
--- a/README
+++ b/README
@@ -24,6 +24,7 @@ Contents:
     2.J. Boot to U-Boot
     2.K. Image with Initramfs
     2.L. Device tree support
+    2.M. Graphic stacks
 3. Extra apps
     3.A. omxplayer
 4. Source code and mirrors
@@ -189,6 +190,22 @@ kernels.
 NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always disabled for
       older kernel versions.
 
+2.M. Graphic stacks
+===================
+The Raspberry Pi boards can use one of two graphics stacks: The userland
+user-space driver or the vc4 DRM/KMS kernel driver. By default userland
+is used since the vc4 is still experimental. But this can be changed by
+modifying the defaults for the kernel, egl, gles2, libgl and mesa providers.
+
+So to use the experimental vc4 DRM/KMS kernel, add the following to the
+conf/local.conf file:
+
+PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi-vc4"
+PREFERRED_PROVIDER_virtual/egl = "mesa"
+PREFERRED_PROVIDER_virtual/libgles2 = "mesa"
+PREFERRED_PROVIDER_virtual/libgl = "mesa"
+PREFERRED_PROVIDER_virtual/mesa = "mesa"
+
 3. Extra apps
 =============
 
-- 
2.4.3


