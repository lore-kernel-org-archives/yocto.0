Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D180BE00AA6; Thu, 13 Aug 2015 10:08:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79D33E00A70
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 10:08:10 -0700 (PDT)
Received: from localhost.localdomain (95.111.23.95.dynamic.jazztel.es
	[95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id 4FE5846328;
	Thu, 13 Aug 2015 10:08:08 -0700 (PDT)
From: Javier Martinez Canillas <javier@osg.samsung.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 13 Aug 2015 19:07:22 +0200
Message-Id: <1439485643-31467-4-git-send-email-javier@osg.samsung.com>
X-Mailer: git-send-email 2.4.3
In-Reply-To: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
MIME-Version: 1.0
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>, yocto@yoctoproject.org,
	Javier Martinez Canillas <javier@osg.samsung.com>
Subject: [meta-raspberrypi][PATCH v2 3/4] rpi-default-providers: Document how to switch providers for vc4 gfx stack
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
X-List-Received-Date: Thu, 13 Aug 2015 17:08:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Derek Foreman <derekf@osg.samsung.com>

The Raspberry Pi boards can use one of two graphics stacks: The "userland"
user-space driver or the VC4 drm/kms kernel driver. This patch documents
how the user user can choose if the VC4 driver has to be used instead and
set the right preferred providers for that case.

Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
[javier: Extend commit msg and made conditional instead removing userland]
Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>

---

Changes in v2:
- Don't add a feature and allow users to change the default provider manually
  aided by a comment. Suggested by Andreas Müller and Andrei Gherzan.

 conf/machine/include/rpi-default-providers.inc | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index ee3a3acce7bd..e007bbb60216 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -8,3 +8,13 @@ PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
 PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
 PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
 PREFERRED_PROVIDER_jpeg = "jpeg"
+
+# To use a kernel with the VC4 DRM/KMS driver instead, comment the
+# virtual kernel, egl, libgles2, libgl and mesa preferred provider
+# above and uncomment the following lines.
+#
+# PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi-vc4"
+# PREFERRED_PROVIDER_virtual/egl ?= "mesa"
+# PREFERRED_PROVIDER_virtual/libgles2 ?= "mesa"
+# PREFERRED_PROVIDER_virtual/libgl ?= "mesa"
+# PREFERRED_PROVIDER_virtual/mesa ?= "mesa"
-- 
2.4.3


