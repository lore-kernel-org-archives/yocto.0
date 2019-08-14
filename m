Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24AACE00DEB; Tue, 13 Aug 2019 17:02:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E757E00DD1
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 17:02:07 -0700 (PDT)
Received: by mail-pf1-f195.google.com with SMTP id 129so5591193pfa.4
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 17:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=196Z1tKNLZsXRkBth93hfxF6ln3CUoiZJ/f65R5ag2g=;
	b=b7vofcfJhx4BA08tSNbfP65AgdCle6Dfm6B1LS5V5Bq64Z24iah2hMiIhGdtUVFQSp
	l1lSxhtA+WnL+vpoklcbS2T4UOR9JJA9Bcm50lR3WYi6816LwHy6tXQFvtXJu+hPfy7Z
	/86pOsvr1ZU/WHLCTOvlzP/g/RYODTRWjWbNvlhk6iQF978WD8bfmQrDIzfj1SFEp99a
	oqAswhRR76qIFNxl5NRC8HfJRCdpJvtcxbp+YavUGX8J7iHpR2oUyJInSf6Mq44ynXhN
	t1JkABgDud7dK7QuVcUP6ZYcbqHcjzWcnpolaPRXMUR3g8A3zrQDq+rUMXfn2Yx77iX0
	ZdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=196Z1tKNLZsXRkBth93hfxF6ln3CUoiZJ/f65R5ag2g=;
	b=Km8yCzuQVqlF+dnXtV+d3WIO+rr460c+P/ZzHHgDBOYuxsyQ912hJvp/OBJ6YN7jXi
	/zzF2DmEmPdTt03lgXtYhB5SLfae6HRwgfDvjWuiSwnRbnDLUgpMQJB2bLjFquIlkccw
	3/QpvLTQYu7Fmu++u3uYo/dIP2suiCw9VuVQousmOe5fOQZ6zDnAHIXB/LKmVGVwZ0rk
	/8S7jJNJ5u7dzNu7yx4JZupyI3zbdvL7kKjv0Kibap5NUs8SBUtkwb9zRHXFb/utU6E1
	B77wz7n+WcPqkSaS+JHADTDKIl0j+x81g/ZYAHOfTI/SUc1di/r6cjE0+A8rxHwpSmYP
	vOhw==
X-Gm-Message-State: APjAAAU6xiCBr1mTy95Kb/QA3OzpACjYuPsh4MqUSVMA2rPmxcIJiMWB
	eeuAB6e607Ppbbel+lBMK0dTi0Zs
X-Google-Smtp-Source: APXvYqw2E7nAHz6n9ESU0pQPSXc4Wz9/cEp+N0dzXDUVQ1Nud/63wV3qsye9+Kf0pFAK7Frr7I0Orw==
X-Received: by 2002:aa7:9483:: with SMTP id z3mr14848318pfk.104.1565740926537; 
	Tue, 13 Aug 2019 17:02:06 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	u7sm109786733pfm.96.2019.08.13.17.02.05 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Tue, 13 Aug 2019 17:02:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2019 17:02:03 -0700
Message-Id: <20190814000204.16741-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/2] linux-yocto: use 4.19 kernel cache now
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
X-List-Received-Date: Wed, 14 Aug 2019 00:02:09 -0000

remove kernel fragments now that they are in the
kernel-cache for 4.19

update bbappend accordingly.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto/apparmor.cfg     | 15 ---------------
 .../linux/linux-yocto/apparmor_on_boot.cfg        |  1 -
 .../linux/linux-yocto/smack-default-lsm.cfg       |  2 --
 recipes-kernel/linux/linux-yocto/smack.cfg        |  8 --------
 recipes-kernel/linux/linux-yocto/yama.cfg         |  1 -
 recipes-kernel/linux/linux-yocto_4.%.bbappend     | 13 ++-----------
 6 files changed, 2 insertions(+), 38 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-yocto/apparmor.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/smack.cfg
 delete mode 100644 recipes-kernel/linux/linux-yocto/yama.cfg

diff --git a/recipes-kernel/linux/linux-yocto/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
deleted file mode 100644
index b5f9bb2..0000000
--- a/recipes-kernel/linux/linux-yocto/apparmor.cfg
+++ /dev/null
@@ -1,15 +0,0 @@
-CONFIG_AUDIT=y
-# CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
-CONFIG_SECURITY_NETWORK=y
-# CONFIG_SECURITY_NETWORK_XFRM is not set
-CONFIG_SECURITY_PATH=y
-# CONFIG_SECURITY_SELINUX is not set
-CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_HASH=y
-CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
-# CONFIG_SECURITY_APPARMOR_DEBUG is not set
-CONFIG_INTEGRITY_AUDIT=y
-CONFIG_DEFAULT_SECURITY_APPARMOR=y
-# CONFIG_DEFAULT_SECURITY_DAC is not set
-CONFIG_DEFAULT_SECURITY="apparmor"
-CONFIG_AUDIT_GENERIC=y
diff --git a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
deleted file mode 100644
index fc35740..0000000
--- a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
+++ /dev/null
@@ -1 +0,0 @@
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg b/recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg
deleted file mode 100644
index b5c4845..0000000
--- a/recipes-kernel/linux/linux-yocto/smack-default-lsm.cfg
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_DEFAULT_SECURITY="smack"
-CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux-yocto/smack.cfg b/recipes-kernel/linux/linux-yocto/smack.cfg
deleted file mode 100644
index 62f465a..0000000
--- a/recipes-kernel/linux/linux-yocto/smack.cfg
+++ /dev/null
@@ -1,8 +0,0 @@
-CONFIG_IP_NF_SECURITY=m
-CONFIG_IP6_NF_SECURITY=m
-CONFIG_EXT2_FS_SECURITY=y
-CONFIG_EXT3_FS_SECURITY=y
-CONFIG_EXT4_FS_SECURITY=y
-CONFIG_SECURITY=y
-CONFIG_SECURITY_SMACK=y
-CONFIG_TMPFS_XATTR=y
diff --git a/recipes-kernel/linux/linux-yocto/yama.cfg b/recipes-kernel/linux/linux-yocto/yama.cfg
deleted file mode 100644
index 3b55731..0000000
--- a/recipes-kernel/linux/linux-yocto/yama.cfg
+++ /dev/null
@@ -1 +0,0 @@
-CONFIG_SECURITY_YAMA=y
diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_4.%.bbappend
index 321392c..39d4e6f 100644
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_4.%.bbappend
@@ -1,11 +1,2 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
-"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
-"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-- 
2.17.1


