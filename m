Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29604E0091A; Fri,  3 May 2019 09:27:10 -0700 (PDT)
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
	*      [209.85.214.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
	[209.85.214.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76CDFE0091A
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 09:27:09 -0700 (PDT)
Received: by mail-pl1-f193.google.com with SMTP id bi2so2913292plb.13
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 09:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=Bg3T8D7gpqc+L3Gbt5k2vcDWpjeEmtKozUpyc29NA+U=;
	b=BEe3i4wfYSD19G/IKQBMkrxejggpjDMs3AYtGTPBV6DwP+ZWQKDJbxw0VG3ZGuYUEU
	ZmrsxQNyGCb/yiu9KtRRwltqM3Oda1os4l0jElxEIN7Ap5pzbhKebl4s94zIjkQUDqCl
	2N3QcRgEF1HLee0UaZWNe70TVC4rcd7js3h6CUbgmJ51svHSaYpVEqNcocOwBnRveDdR
	4BYuKZ2b9JZZlBAwvZQYALwcfT3QdDbLMbZgvk8/kEM9aF9pof/AcXsdGyl+1XCb1qfE
	K/X7ZvA7xlPIzuxMsLGV8Hr5KWaCzYkL4VqtxRGyhHMzJdlcol4WI0ch3O5mSG/myScN
	ZDEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=Bg3T8D7gpqc+L3Gbt5k2vcDWpjeEmtKozUpyc29NA+U=;
	b=nbBxmKw65/X8IESOu2HcyqemLvELzxdN5g2SiHcnrl1TAj0Ac2nZ0UcEGb4XkrraCT
	wF4eDpzPFd6hXY+nmu7Kne3Kf91t4tVJMDtppQUqBNyz+v1d4JPTjAJSHjULuSKaFjrd
	WM0o5tqGyBwdnKE6Wa4z09hW8YL3aRbUxMNhJr116JK8y8nM0QEgEiWbUTX0hZpOWE1k
	E4GJRJWKE/qFi+WyeFgOc3JYmWmclLxjYzd0zwr/UPUDTZlykxToPGuvNGqIFm2+AVIl
	BHJMle4FA7gPa/Ut4efMugCSYuKLApLW5uN6LeSNOqPAg4haBRCTLfNIFiOAZkGaAg+j
	Rg8Q==
X-Gm-Message-State: APjAAAXsj68Szx/5MdF59JkcVBawgCWkyNxdJAHmzjltXU8JQqlz0qv5
	mzoLRH4aMwScea5RGQmLbZBaPiPr
X-Google-Smtp-Source: APXvYqylQ9qwXbU8LFREHNoK056FeHaTWAlY22Mrt7P0s5jP8wkJ03/xBM7Fw1O2NDEUUAKngomR1w==
X-Received: by 2002:a17:902:9a92:: with SMTP id
	w18mr11685116plp.88.1556900828336; 
	Fri, 03 May 2019 09:27:08 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4180:c33:b9b3:5f13:7709:822d])
	by smtp.gmail.com with ESMTPSA id
	g128sm3680369pfb.131.2019.05.03.09.27.07 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 May 2019 09:27:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  3 May 2019 09:27:06 -0700
Message-Id: <1556900826-3187-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-cgl][PATCH] cfg files: update do to 4.19 changes
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
X-List-Received-Date: Fri, 03 May 2019 16:27:10 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-cgl-common/recipes-kernel/linux/files/cfg/00004-kgdb.cfg           | 1 -
 meta-cgl-common/recipes-kernel/linux/files/cfg/00005-quota.cfg          | 2 --
 meta-cgl-common/recipes-kernel/linux/files/cfg/00009-filesystem-acl.cfg | 1 -
 meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg        | 2 --
 meta-cgl-common/recipes-kernel/linux/files/cfg/00018-ipsec.cfg          | 1 -
 meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg     | 1 -
 6 files changed, 8 deletions(-)

diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00004-kgdb.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00004-kgdb.cfg
index f23cfe3..ebaf5f3 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00004-kgdb.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00004-kgdb.cfg
@@ -1,6 +1,5 @@
 #depends
 CONFIG_DEBUG_KERNEL=y
-CONFIG_EXPERIMENTAL=y
 
 #configs
 CONFIG_KGDB=y
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00005-quota.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00005-quota.cfg
index 6d212ca..6839c29 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00005-quota.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00005-quota.cfg
@@ -2,5 +2,3 @@ CONFIG_QUOTA=y
 CONFIG_QUOTA_DEBUG=y
 CONFIG_QUOTA_NETLINK_INTERFACE=y
 CONFIG_QUOTA_TREE=y
-CONFIG_QUOTA_CTL=y
-CONFIG_QUOTA_CTL_COMPAT=y
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00009-filesystem-acl.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00009-filesystem-acl.cfg
index 7293fe1..4ddfefd 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00009-filesystem-acl.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00009-filesystem-acl.cfg
@@ -1,4 +1,3 @@
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_FS_POSIX_ACL=y
-CONFIG_GENERIC_ACL=y
 CONFIG_TMPFS_POSIX_ACL=y
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
index ce7d61d..1efd63e 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00014-selinux.cfg
@@ -9,8 +9,6 @@ CONFIG_SECURITY_SELINUX=y
 CONFIG_SECURITY_NETWORK_XFRM=y
 CONFIG_NETWORK_SECMARK=y
 CONFIG_EXT2_FS_XATTR=y
-CONFIG_EXT3_FS_XATTR=y
-CONFIG_EXT4_FS_XATTR=y
 CONFIG_REISERFS_FS_XATTR=y
 CONFIG_JFFS2_FS_XATTR=y
 CONFIG_EXT2_FS_SECURITY=y
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00018-ipsec.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00018-ipsec.cfg
index d6103ad..d1a1d2e 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00018-ipsec.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00018-ipsec.cfg
@@ -1,6 +1,5 @@
 CONFIG_NET=y
 CONFIG_NET_KEY=y
-CONFIG_NET_AH=y
 CONFIG_INET_ESP=y
 CONFIG_XFRM_USER=y
 CONFIG_CRYPTO=y
diff --git a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
index 71c4cad..c588180 100644
--- a/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
+++ b/meta-cgl-common/recipes-kernel/linux/files/cfg/00026-lm-sensors.cfg
@@ -66,7 +66,6 @@ CONFIG_SENSORS_GL518SM=m
 CONFIG_SENSORS_GL520SM=m
 CONFIG_SENSORS_GPIO_FAN=m
 CONFIG_SENSORS_HIH6130=m
-CONFIG_SENSORS_HTU21=m
 CONFIG_SENSORS_IBMAEM=m
 CONFIG_SENSORS_IBMPEX=m
 CONFIG_SENSORS_JC42=m
-- 
2.7.4


