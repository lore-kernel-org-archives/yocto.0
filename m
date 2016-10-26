Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5AB2E00D54; Wed, 26 Oct 2016 08:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BAFDE00D4C
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id s8so22989222pfj.2
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0WUvfDWd30FwZ3tD2uv+ySv1dtCfpz9PHrpzRIUbCDs=;
	b=OrsJJqXKjml/tGDbVdhGXiJCYhV/PDxlTDjXZdCmVM9fJfyqdIQn4fRX45yrKMuspp
	PatPsYt/MtxqirSR4CirC//qDmvIV3VSOkcWggMm1TSEub6CSo7Uvzefrzr1ugSreIja
	fMa0wOhr1wuFUdVJtkPHSw+g3P/lMJADxvWGNTTRzhJxvl+fXbhN/ybaZaeK5M3FeFpT
	zyDVeas9Yg0R+oe/ywodAySll+ve8YCPq8hk8NqQP2z9I0mu0iArjLaAGJaLXcPPH63z
	kQrtgazAolV7FHoyqxWSjnqEZFLnT5RkSSBIln/W/ffOdtF1scK2UXytuhWeG2Z0hnLr
	3JHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0WUvfDWd30FwZ3tD2uv+ySv1dtCfpz9PHrpzRIUbCDs=;
	b=WThDVs0fb+B4MblejLNM+4GKLWmzBjbmL86owyw2I1EugHydwhGioYsBGUmcG2OyMg
	5RwcfGzR6bmCWefKMohDiqmhwnQCRWnuys4dN4BgA6p7469MxaZMt/9IjYy9xOA4+lwr
	zOzLmQZ/ET81hwnjN2rEe49O2TfmQ7aT7GNxX300IeK+QNeKYiX/IEYe2e5A3CIqMZTq
	pADY0f4IZvnd7Ukdjeb4PD0QFeBRKiag/DEQ8QLBmcKUQmplMPMRcKq1L4aB4yA7KsPX
	weiU+hITlC1d0eYxMTCOcUxAyV9x3CxJKzgtROVWmOFnJU00wMi6qvBVD7/C6Yk4xCIj
	pCEA==
X-Gm-Message-State: ABUngvdsQ7FmeGifSY/QXQg9iM0ZNJ5R+0K2oJ1vJOf7noLHPusqPBg2Vz3/iNcGo3DLnA==
X-Received: by 10.98.57.84 with SMTP id g81mr4915467pfa.115.1477494040497;
	Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:c57:6cb7:8938:cc04])
	by smtp.gmail.com with ESMTPSA id
	y189sm4977506pfy.34.2016.10.26.08.00.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 26 Oct 2016 08:00:40 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 26 Oct 2016 08:00:38 -0700
Message-Id: <1477494038-2895-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] smack kernel: add smack kernel config fragments
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
X-List-Received-Date: Wed, 26 Oct 2016 15:00:42 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg | 2 ++
 recipes-kernel/linux/linux-yocto-4.8/smack.cfg             | 8 ++++++++
 recipes-kernel/linux/linux-yocto_4.8.bbappend              | 5 +++++
 3 files changed, 15 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
 create mode 100644 recipes-kernel/linux/linux-yocto-4.8/smack.cfg

diff --git a/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
new file mode 100644
index 0000000..b5c4845
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.8/smack-default-lsm.cfg
@@ -0,0 +1,2 @@
+CONFIG_DEFAULT_SECURITY="smack"
+CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto-4.8/smack.cfg b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
new file mode 100644
index 0000000..62f465a
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto-4.8/smack.cfg
@@ -0,0 +1,8 @@
+CONFIG_IP_NF_SECURITY=m
+CONFIG_IP6_NF_SECURITY=m
+CONFIG_EXT2_FS_SECURITY=y
+CONFIG_EXT3_FS_SECURITY=y
+CONFIG_EXT4_FS_SECURITY=y
+CONFIG_SECURITY=y
+CONFIG_SECURITY_SMACK=y
+CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto_4.8.bbappend b/recipes-kernel/linux/linux-yocto_4.8.bbappend
index 0e6960e..048e8fd 100644
--- a/recipes-kernel/linux/linux-yocto_4.8.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.8.bbappend
@@ -5,3 +5,8 @@ SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.cfg', '', d)} \
         ${@bb.utils.contains('DISTRO_FEATURES', 'tpm', ' file://tpm.scc', '', d)} \
 "
+
+SRC_URI += "\
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
+"
-- 
2.7.4


