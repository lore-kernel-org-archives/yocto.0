Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9377FE00BBC; Thu, 15 May 2014 18:32:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-pa0-f46.google.com (unknown [209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55AC1E00BAE
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:16 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id kq14so1814521pab.19
	for <yocto@yoctoproject.org>; Thu, 15 May 2014 18:32:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=SFBG+l/2paI9twE+rHglmUKM0LkLaEoELmkUclA6cWg=;
	b=rbfrT1CHVlc97O2Hb99nuVJeKfOF3XHhx9uEFKjEL8lkArYEr8asTIEUgWEy+4BeZl
	+tGdhj+01+MkyaJh139muk5XknY11NT2c33rY0EIwo9F8BgAkMoXo89xVtXbBBDg3kBj
	nXwmIolZzihm6YbluuWwyWZAigoiUjq83k06cbdVju6Jns1U9tKQpfpCMVLCL6mVcXzp
	nU9byLaec+QZYiLJ99n1H7InCZPb48kYdrv306F0+Jlx8n0QvwKD1Psao71VQN1wQ1jH
	1HR7kHnZWOvpwmoojx+2dnofxc7AZFhIoW1uosxxTCPCkS1HXHvaeFXG22H+1mylnvav
	F9eQ==
X-Received: by 10.68.197.99 with SMTP id it3mr16459037pbc.37.1400203936713;
	Thu, 15 May 2014 18:32:16 -0700 (PDT)
Received: from Pahoa2.mvista.com (64.2.3.195.ptr.us.xo.net. [64.2.3.195])
	by mx.google.com with ESMTPSA id
	ph1sm27579744pac.14.2014.05.15.18.32.14 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 15 May 2014 18:32:15 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: mark.hatle@windriver.com
Date: Thu, 15 May 2014 18:31:28 -0700
Message-Id: <1400203891-30912-7-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
References: <1400203891-30912-1-git-send-email-akuster808@gmail.com>
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
X-List-Received-Date: Fri, 16 May 2014 01:32:17 -0000

util-linux: Update package to match Poky master.
Remove patch since it was merged upstream.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-core/util-linux/util-linux_2.23.2.bbappend | 8 --------
 recipes-core/util-linux/util-linux_2.24.2.bbappend | 3 +++
 2 files changed, 3 insertions(+), 8 deletions(-)
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
index 0000000..9a7a9d9
--- /dev/null
+++ b/recipes-core/util-linux/util-linux_2.24.2.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+inherit with-selinux
-- 
1.9.1


