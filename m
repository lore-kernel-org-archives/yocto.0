Return-Path: <texier.pj2@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A91FE00930; Sun, 29 Mar 2015 11:49:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ouf_du_45[at]hotmail.com)
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D003CE007A0
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 11:49:52 -0700 (PDT)
Received: by wgra20 with SMTP id a20so148350321wgr.3
	for <yocto@yoctoproject.org>; Sun, 29 Mar 2015 11:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id;
	bh=OaadQ4hCaEu8Ib132THJ3w7Z3JryQLVqOMpPSFFo9IU=;
	b=ALHtVt0XPROx53O4e+CQkziWMx1byeHCMG5sNjIwZokxObeyY6XRo9GXqSRDZVWVEj
	SZVhNdi9ipSJqY5bC8qpCGVcYWpT00YcLBqnRiBkgsyBKQcKoAWszlwdKUeDUUIG0JtB
	sfJzOZyQDVtngPaDSYUXd66I3SRa0VKH5UFjhwJM7SNmx/VF4mvU3F2F0UKJh5IhVeaf
	hX802L/01XHuLv7mAXeDjSagsfepk/SqWuuHkzM70QBT//O04LySYIDkq4YTxGCZGFGR
	Lx1nzRWAKSZUr2vE/shr6C6kb7wLZDGOlAL17UqRb3wi471iVbBBFrfDfwedp/BjH5Gw
	t/Hw==
X-Received: by 10.194.120.230 with SMTP id lf6mr55416460wjb.78.1427654992293; 
	Sun, 29 Mar 2015 11:49:52 -0700 (PDT)
Received: from localhost.localdomain (cub33-2-78-240-209-183.fbx.proxad.net.
	[78.240.209.183]) by mx.google.com with ESMTPSA id
	ha10sm12298030wjc.37.2015.03.29.11.49.51
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 29 Mar 2015 11:49:51 -0700 (PDT)
Sender: TEXIER Pierre-Jean <texier.pj2@gmail.com>
From: texierp <ouf_du_45@hotmail.com>
To: yocto@yoctoproject.org
Date: Sun, 29 Mar 2015 20:49:44 +0200
Message-Id: <1427654984-4457-1-git-send-email-ouf_du_45@hotmail.com>
X-Mailer: git-send-email 1.9.1
X-Mailman-Approved-At: Mon, 30 Mar 2015 08:20:57 -0700
Cc: texierp <ouf_du_45@hotmail.com>
Subject: [meta-raspberrypi][PATCH] This patch add a powerful tool : spitools
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
X-List-Received-Date: Sun, 29 Mar 2015 18:49:56 -0000

---
 recipes-devtools/spitools/spitools_git.bb | 15 +++++++++++++++
 1 file changed, 15 insertions(+)
 create mode 100644 recipes-devtools/spitools/spitools_git.bb

diff --git a/recipes-devtools/spitools/spitools_git.bb b/recipes-devtools/spitools/spitools_git.bb
new file mode 100644
index 0000000..287e3eb
--- /dev/null
+++ b/recipes-devtools/spitools/spitools_git.bb
@@ -0,0 +1,15 @@
+DESCRIPTION = "This package contains some simple command line tools to help using Linux spidev devices"
+HOMEPAGE = "https://github.com/cpb-/spi-tools"
+LICENSE="GPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=8c16666ae6c159876a0ba63099614381"
+
+S = "${WORKDIR}/git"
+
+SRC_URI = "git://github.com/cpb-/spi-tools.git;protocol=git"
+
+SRCREV = "cc6a41fdcec60610703ba6db488c621c64952898"
+
+COMPATIBLE_MACHINE = "raspberrypi"
+
+inherit autotools
+
-- 
1.9.1


