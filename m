Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0014DE006EC; Wed, 14 May 2014 15:32:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.45 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pb0-f45.google.com (unknown [209.85.160.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4985EE00724
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:54 -0700 (PDT)
Received: by mail-pb0-f45.google.com with SMTP id um1so187773pbc.4
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 15:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=oXRkXA35P4Cwuwj/tUsbTyeMXUmBLwZ4Y7gJF+8in1E=;
	b=T8e0KWZkcR1OSO+rP/wRkhqxUGN87Lr53sKIKXfk02CLvd9UdTYCFj8J1L5afKRE05
	hK9TsW/bAiRE7esV5BjrmpfIxYWTDW1dz+gXBtEcC7MOSR6ydGOeRFHTDcTYVVlWol28
	3tmXqO2cMtWEKCr3vaMDF2wVs9KVCIUG4o0MiUt1FbJ0y4H5/2tjo+fT0jWi4Rk1qJiG
	aCjWvyVLSsxtjRXGTh4+jpI1aNaZA1WwUS0IeA+jUuxYO1+6XW3rlelaXrDCn6Xr9RyO
	CSi38XIK3GE39UZJO06pvMpYcoViyZiCnqdo44ANjktzBqs9udUelmuGu6wIQ+DUaA0w
	kixA==
X-Received: by 10.68.102.34 with SMTP id fl2mr7673115pbb.2.1400106279156;
	Wed, 14 May 2014 15:24:39 -0700 (PDT)
Received: from Pahoa2.hsd1.ca.comcast.net (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55])
	by mx.google.com with ESMTPSA id jd5sm5364684pbb.18.2014.05.14.15.24.37
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 14 May 2014 15:24:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Wed, 14 May 2014 15:24:20 -0700
Message-Id: <1400106263-25100-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
Cc: yocto@yoctoproject.org
Subject: [PATCH 6/9] update util-linux package version and remove patch
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
X-List-Received-Date: Wed, 14 May 2014 22:32:58 -0000

	util-linux: Update package to match Poky master. Remove patch since it was merged upstream.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/util-linux/util-linux_2.23.2.bbappend | 8 --------
 recipes-core/util-linux/util-linux_2.24.2.bbappend | 5 +++++
 2 files changed, 5 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-core/util-linux/util-linux_2.23.2.bbappend
 create mode 100644 recipes-core/util-linux/util-linux_2.24.2.bbappend

diff --git a/recipes-core/util-linux/util-linux_2.23.2.bbappend b/recipes-core/util-linux/util-linux_2.23.2.bbappend
deleted file mode 100644
index bd8021b..0000000
--- a/recipes-core/util-linux/util-linux_2.23.2.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-PR .= ".3"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://fix-libmount_la_DEPENDENCIES.patch \
-           "
-
-inherit with-selinux
diff --git a/recipes-core/util-linux/util-linux_2.24.2.bbappend b/recipes-core/util-linux/util-linux_2.24.2.bbappend
new file mode 100644
index 0000000..945ad50
--- /dev/null
+++ b/recipes-core/util-linux/util-linux_2.24.2.bbappend
@@ -0,0 +1,5 @@
+PR .= ".1"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit with-selinux
-- 
1.9.1


