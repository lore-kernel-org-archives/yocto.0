Return-Path: <darren@apps.dvhart.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FB5E013BF
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:08 -0700 (PDT)
Received: by mail-iy0-f176.google.com with SMTP id w33so3687124iag.35
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2012 13:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=ePvlCzQgaoqy+ZOWOTE9vr9QnPIhnwK6prfDrVs8caQ=;
	b=ctCd+IHxUyoqk0H4u2JXXXdcMGyqjYOxb7zfB0AsqEVgbQZ5F7504qokFa6cY3b3fd
	DkAV0KkQG969DEgvInJDYXHwQZ+mOnajbehW3EWG8NNL5lkQI1aqQ2xHzWoGqbfa1jAz
	8vfgQXHHvlsO1Q0txOji0+RdVXrlQlgd33yLdWqV9JyqFRBI6XorehHEGAvlLvjuuZhG
	q6fsLDFbnPkkKhzO4WdgzftTCS4kObU+YSjrrxtZqCRqp3Q7YHugGwnDw0ixQpEPNWC/
	hBTiMJqJRhFNruPPINNtwBTUFxbTc282xvxg5wKwYEQeeWBTVTXh1s43eleoEhUOmylJ
	zW0w==
Received: by 10.50.168.67 with SMTP id zu3mr6936664igb.28.1331755508216;
	Wed, 14 Mar 2012 13:05:08 -0700 (PDT)
Received: from localhost (static-50-53-102-193.bvtn.or.frontiernet.net.
	[50.53.102.193])
	by mx.google.com with ESMTPS id s3sm4700021igw.17.2012.03.14.13.05.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 14 Mar 2012 13:05:07 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 14 Mar 2012 13:04:50 -0700
Message-Id: <13f99a67cbb15d47d6b0dfb7261baeaad21a5761.1331755469.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
References: <1331755490-2148-1-git-send-email-dvhart@linux.intel.com>
In-Reply-To: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
References: <20c253b945137412fbf82f09cb60958d2e544510.1331755469.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQmm8GnVNdoQszkH6EZcyMgk6AeKAtHU00B1+GTf60QokaqZTav2ooWpLs4ohYXFu7eFDqkU
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 4/4] fri2: Add 3.2 kernel recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 14 Mar 2012 20:05:08 -0000

Add linux-yocto_3.2 and linux-yocto-rt_3.2 kernel recipes, following the
pattern of the 3.0 recipes.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 .../linux/linux-yocto-rt_3.2.bbappend              |   11 +++++++++++
 .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |   11 +++++++++++
 2 files changed, 22 insertions(+), 0 deletions(-)
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
 create mode 100644 meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend

diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
new file mode 100644
index 0000000..c43975f
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2 = "fri2"
+KBRANCH_fri2 = "standard/preempt-rt/base"
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd = "fri2"
+KBRANCH_fri2-noemgd = "standard/preempt-rt/base"
+
+module_autoload_iwlwifi = "iwlwifi"
diff --git a/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
new file mode 100644
index 0000000..c125e9a
--- /dev/null
+++ b/meta-fri2/recipes-kernel/linux/linux-yocto_3.2.bbappend
@@ -0,0 +1,11 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+COMPATIBLE_MACHINE_fri2 = "fri2"
+KMACHINE_fri2  = "fri2"
+KBRANCH_fri2 = "standard/default/fri2"
+
+COMPATIBLE_MACHINE_fri2-noemgd = "fri2-noemgd"
+KMACHINE_fri2-noemgd  = "fri2"
+KBRANCH_fri2-noemgd = "standard/default/fri2"
+
+module_autoload_iwlwifi = "iwlwifi"
-- 
1.7.5.4


