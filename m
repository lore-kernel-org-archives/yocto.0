Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375D3E016C8
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 05:41:06 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>) id 1VTt4b-00082X-8K
	for yocto@yoctoproject.org; Wed, 09 Oct 2013 12:41:05 +0000
Date: Wed, 9 Oct 2013 12:41:00 +0000
From: Philip Tricca <flihp@twobit.us>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <20131009124100.GH6721@longhaul.twobit.us>
References: <52554ABF.1040308@twobit.us>
MIME-Version: 1.0
In-Reply-To: <52554ABF.1040308@twobit.us>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: Re: [meta-selinux][PATCH 4/5] Add packagegroup and image recipe for minimal SELinux image.
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
X-List-Received-Date: Wed, 09 Oct 2013 12:41:06 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

This is intended to demonstrate the minimal set packages necessary
to boot and load a system with SELinux enabled. Specifically we
don't need any of the packages that depend on python.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../images/core-image-selinux-minimal.bb           |   15 +++++++++++
 .../packagegroups/packagegroup-selinux-minimal.bb  |   26 ++++++++++++++++++++
 2 files changed, 41 insertions(+)
 create mode 100644 recipes-security/images/core-image-selinux-minimal.bb
 create mode 100644 recipes-security/packagegroups/packagegroup-selinux-minimal.bb

diff --git a/recipes-security/images/core-image-selinux-minimal.bb b/recipes-security/images/core-image-selinux-minimal.bb
new file mode 100644
index 0000000..45cd847
--- /dev/null
+++ b/recipes-security/images/core-image-selinux-minimal.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "Minimal image with SELinux support (no python)"
+
+IMAGE_FEATURES += "splash ssh-server-openssh"
+
+LICENSE = "MIT"
+
+IMAGE_INSTALL = "\
+	${CORE_IMAGE_BASE_INSTALL} \
+	bash \
+	util-linux-agetty \
+	packagegroup-core-boot \
+	packagegroup-selinux-minimal \
+"
+
+inherit core-image
diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
new file mode 100644
index 0000000..16f6bae
--- /dev/null
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -0,0 +1,26 @@
+DESCRIPTION = "SELinux packagegroup with only packages required for basic operations"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
+                    file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+PR = "r0"
+
+PACKAGES = "\
+	${PN} \
+	"
+
+ALLOW_EMPTY_${PN} = "1"
+
+RDEPENDS_${PN} = " \
+	coreutils \
+	libsepol \
+	libselinux \
+	libselinux-bin \
+	libsemanage \
+	policycoreutils-fixfiles \
+	policycoreutils-secon \
+	policycoreutils-semodule \
+	policycoreutils-sestatus \
+	policycoreutils-setfiles \
+	selinux-config \
+	refpolicy-mls \
+	"
-- 
1.7.10.4


