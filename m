Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1D6DE01623
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 21:58:42 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VP3ex-0007j5-VC; Thu, 26 Sep 2013 04:58:40 +0000
Date: Thu, 26 Sep 2013 04:58:27 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Message-ID: <20130926045827.GA1541@longhaul.twobit.us>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux] Add util-linux-agetty to core-image-selinux IMAGE_INSTALL.
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
X-List-Received-Date: Thu, 26 Sep 2013 04:58:45 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Currently logins to core-image-selinux images through a getty (serial)
fail. This is caused by the use of the busybox getty. SELinux depends
on executable files and their labels to transition between types.
The symlink to busybox is not sufficient to cause the getty processes
to transition to the right SELinux context. Using a getty binary
like the one provided by util-linux fixes this.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/images/core-image-selinux.bb |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/images/core-image-selinux.bb b/recipes-security/images/core-image-selinux.bb
index 0109933..1ec7b08 100644
--- a/recipes-security/images/core-image-selinux.bb
+++ b/recipes-security/images/core-image-selinux.bb
@@ -6,6 +6,7 @@ LICENSE = "MIT"
 
 IMAGE_INSTALL = "\
 	${CORE_IMAGE_BASE_INSTALL} \
+	util-linux-agetty \
 	packagegroup-core-basic \
 	packagegroup-core-selinux \
 "   
-- 
1.7.10.4


