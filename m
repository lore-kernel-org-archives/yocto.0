Return-Path: <Alexandre.Bard@netmodule.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9FA50E00D54; Thu,  9 Jun 2016 09:11:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from webmail.netmodule.com (webmail.netmodule.com [194.29.26.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAD46E00CAA
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 09:11:20 -0700 (PDT)
Received: from ebro.netmodule.intranet (172.16.92.40) by
	ebro.netmodule.intranet (172.16.92.40) with Microsoft SMTP Server (TLS)
	id 15.0.913.22; Thu, 9 Jun 2016 17:56:15 +0200
Received: from julia.netmodule.intranet (172.16.71.9) by webmail.netmodule.com
	(172.16.92.40) with Microsoft SMTP Server id 15.0.913.22 via Frontend
	Transport; Thu, 9 Jun 2016 17:56:15 +0200
From: Alexandre Bard <alexandre.bard@netmodule.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 Jun 2016 17:56:17 +0200
Message-ID: <1465487777-16092-2-git-send-email-alexandre.bard@netmodule.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1465487777-16092-1-git-send-email-alexandre.bard@netmodule.com>
References: <1465487777-16092-1-git-send-email-alexandre.bard@netmodule.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 13 Jun 2016 09:44:45 -0700
Cc: Alexandre Bard <alexandre.bard@netmodule.com>
Subject: [[meta-xilinx-community][PATCH] 2/2] Remove useless copy of kernel config
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
X-List-Received-Date: Thu, 09 Jun 2016 16:11:22 -0000
Content-Type: text/plain

Former code from daisy branch copied the kernel config
to the kernel source directory. This is now useless and
creates a issue when bitbake builds the kernel

Signed-off-by: Alexandre Bard <alexandre.bard@netmodule.com>
---
 recipes-kernel/linux/linux-xlnx_3.14.bb | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/recipes-kernel/linux/linux-xlnx_3.14.bb b/recipes-kernel/linux/linux-xlnx_3.14.bb
index b258cb2..9a9288b 100644
--- a/recipes-kernel/linux/linux-xlnx_3.14.bb
+++ b/recipes-kernel/linux/linux-xlnx_3.14.bb
@@ -1,5 +1,7 @@
 require recipes-kernel/linux/linux-yocto.inc
 
+LINUX_VERSION_EXTENSION = "-netmodule"
+
 FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 
@@ -22,9 +24,3 @@ SRC_URI_append_zx3-pm3-zynq7 = " \
             file://defconfig \
             "
 
-
-
-do_configure_append() {
-  # Use a defconfig file if provided instead of appending again and again
-  [ -f ${WORKDIR}/defconfig ] && cp ${WORKDIR}/defconfig ${S}/.config
-}
-- 
2.1.4


