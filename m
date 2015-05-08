Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72672E009F5; Fri,  8 May 2015 14:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75D1FE00992
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 14:49:16 -0700 (PDT)
X-Halon-ID: 11d49aa9-f5cc-11e4-a7da-005056917c0c
Authorized-sender: petter@technux.se
Received: from elxbvzzwp1-cy.lan (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA
	for <yocto@yoctoproject.org>; Fri,  8 May 2015 23:49:14 +0200 (CEST)
From: =?UTF-8?q?Petter=20Mab=C3=A4cker?= <petter@technux.se>
To: yocto@yoctoproject.org
Date: Fri,  8 May 2015 23:49:04 +0200
Message-Id: <b4802eb7c1222f52cf5fcd4d913e4fea7e89a196.1431121258.git.petter@technux.se>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
In-Reply-To: <cover.1431121258.git.petter@technux.se>
References: <cover.1431121258.git.petter@technux.se>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Drop support for old kernel versions
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
X-List-Received-Date: Fri, 08 May 2015 21:49:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

meta-raspberrypi currently supports too many versions in order to ensure
that all of them are frequently tested and updated. Change to only
support latest stable + 2 long term versions.

[Support #59]

Signed-off-by: Petter Mabäcker <petter@technux.se>
---
 recipes-kernel/linux/linux-raspberrypi_3.10.bb | 8 --------
 recipes-kernel/linux/linux-raspberrypi_3.16.bb | 8 --------
 recipes-kernel/linux/linux-raspberrypi_3.6.bb  | 8 --------
 recipes-kernel/linux/linux-raspberrypi_3.8.bb  | 8 --------
 4 files changed, 32 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.10.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.16.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.6.bb
 delete mode 100644 recipes-kernel/linux/linux-raspberrypi_3.8.bb

diff --git a/recipes-kernel/linux/linux-raspberrypi_3.10.bb b/recipes-kernel/linux/linux-raspberrypi_3.10.bb
deleted file mode 100644
index e5d5bf2..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.10.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-LINUX_VERSION ?= "3.10.38"
-
-SRCREV = "1b49b450222df26e4abf7abb6d9302f72b2ed386"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.10.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.16.bb b/recipes-kernel/linux/linux-raspberrypi_3.16.bb
deleted file mode 100644
index ccc414f..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.16.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-LINUX_VERSION ?= "3.16.5"
-
-SRCREV = "377c82aa1d31b37f1096096b0e4c65beb0bc5c49"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.16.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.6.bb b/recipes-kernel/linux/linux-raspberrypi_3.6.bb
deleted file mode 100644
index fc9ac89..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.6.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-LINUX_VERSION ?= "3.6.11"
-
-SRCREV = "2a8d45ec0883e3cbdce920855b3461ac77308a5f"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.6.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
diff --git a/recipes-kernel/linux/linux-raspberrypi_3.8.bb b/recipes-kernel/linux/linux-raspberrypi_3.8.bb
deleted file mode 100644
index ae0dc99..0000000
--- a/recipes-kernel/linux/linux-raspberrypi_3.8.bb
+++ /dev/null
@@ -1,8 +0,0 @@
-LINUX_VERSION ?= "3.8.13"
-
-SRCREV = "d996a1b91b2bf3dc06f4f4f822a56f4496457aa1"
-SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-3.8.y \
-           file://sl030raspberrypii2ckernel.patch \
-          "
-
-require linux-raspberrypi.inc
-- 
1.9.1


