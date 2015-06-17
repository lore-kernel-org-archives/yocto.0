Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97F9CE00A76; Wed, 17 Jun 2015 15:31:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F81E00A6C
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:37 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnH-00032Z-Vk; Wed, 17 Jun 2015 22:26:53 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:52 -0700
Message-Id: <1434580258-18121-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 2/8] selinux-image: Add new image class to label the rootfs, use it for selinux images.
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
X-List-Received-Date: Wed, 17 Jun 2015 22:31:38 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 classes/selinux-image.bbclass                         | 8 ++++++++
 recipes-security/images/core-image-selinux-minimal.bb | 2 +-
 recipes-security/images/core-image-selinux.bb         | 2 +-
 3 files changed, 10 insertions(+), 2 deletions(-)
 create mode 100644 classes/selinux-image.bbclass

diff --git a/classes/selinux-image.bbclass b/classes/selinux-image.bbclass
new file mode 100644
index 0000000..362ca5c
--- /dev/null
+++ b/classes/selinux-image.bbclass
@@ -0,0 +1,8 @@
+selinux_set_labels () {
+    POL_TYPE=$(sed -n -e "s&SELINUXTYPE[:space:]*=[:space:]*\([0-9A-Za-z_]\+\)&\1&p" ${IMAGE_ROOTFS}/${sysconfdir}/selinux/config)
+    setfiles -r ${IMAGE_ROOTFS} ${IMAGE_ROOTFS}/${sysconfdir}/selinux/${POL_TYPE}/contexts/files/file_contexts ${IMAGE_ROOTFS} || exit 1;
+}
+
+IMAGE_PREPROCESS_COMMAND += "selinux_set_labels ;"
+
+inherit core-image
diff --git a/recipes-security/images/core-image-selinux-minimal.bb b/recipes-security/images/core-image-selinux-minimal.bb
index 45cd847..45bb099 100644
--- a/recipes-security/images/core-image-selinux-minimal.bb
+++ b/recipes-security/images/core-image-selinux-minimal.bb
@@ -12,4 +12,4 @@ IMAGE_INSTALL = "\
 	packagegroup-selinux-minimal \
 "
 
-inherit core-image
+inherit selinux-image
diff --git a/recipes-security/images/core-image-selinux.bb b/recipes-security/images/core-image-selinux.bb
index e186bdc..70b525e 100644
--- a/recipes-security/images/core-image-selinux.bb
+++ b/recipes-security/images/core-image-selinux.bb
@@ -11,4 +11,4 @@ IMAGE_INSTALL = "\
 	packagegroup-core-selinux \
 "   
 
-inherit core-image
+inherit selinux-image
-- 
2.1.4


