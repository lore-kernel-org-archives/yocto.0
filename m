Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C929EE0070F; Wed,  7 May 2014 11:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A8AFE00480
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 11:56:02 -0700 (PDT)
Received: by mail-qg0-f50.google.com with SMTP id z60so1540313qgd.37
	for <yocto@yoctoproject.org>; Wed, 07 May 2014 11:56:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=3z+DdmpPLK0hj7GQlYoVpb44RYeoqftCuNnv1+4HTMs=;
	b=L096LCaQh7yfje792CiQxO/H6Grshy1eDPn7IvGODkZu+RiKDayfQ2HIg4GjRragFG
	VAKoSMkRZUZH3X2F8w08G4GpfA6VRhSOsNXZNJrSZX3i69jx28OohVy0Ly3VH6IS+sVp
	FBa5ObWoJ8ogSxbOD3BAcfE7BTK00XwKPu4R3vb4vNS69vvKAtFfvPCy5hw9afzpTa5E
	aO2jEIvLR/oKfXcMKeJlh4Qg7wnbqOt7jLEpwZax8eSYSdeUqS/J0Apqkgs8Jml/wUdV
	ESfx0Hz2fT8JVrgE6ZlE8nyjxSd4XheuXeOGcn+LK1IIQCVSw8CshHhVsowkypljvDqg
	JhEg==
X-Gm-Message-State: ALoCoQm0+Gjmry4Lpc6zGnnwXfU1TvGJfs9JEJ8muolVlS3Ae4iz2ybuuJhk2TdMg5t7vEPg1v7y
X-Received: by 10.224.2.193 with SMTP id 1mr28465127qak.100.1399488961337;
	Wed, 07 May 2014 11:56:01 -0700 (PDT)
Received: from burninator.local ([128.224.252.2])
	by mx.google.com with ESMTPSA id 17sm21019153qgm.6.2014.05.07.11.56.00
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 07 May 2014 11:56:00 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Wed,  7 May 2014 14:55:58 -0400
Message-Id: <1399488958-15714-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-selinux][PATCH] libsemanage: disable expand-check on policy load
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
X-List-Received-Date: Wed, 07 May 2014 18:56:09 -0000

For small policy modules it's not necessary to walk the hierarchy on load.
On embedded devices that are low-powered or resource-constrained disabling
the hierarchy processing can make the difference between seconds and
(many) minutes of load time (or being able to load the policy at all).

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 ...anage-disable-expand-check-on-policy-load.patch |   32 ++++++++++++++++++++
 recipes-security/selinux/libsemanage_2.2.bb        |    1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch

diff --git a/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
new file mode 100644
index 0000000..653cfbb
--- /dev/null
+++ b/recipes-security/selinux/libsemanage/libsemanage-disable-expand-check-on-policy-load.patch
@@ -0,0 +1,32 @@
+From b8c5b743c0e0435b1b89eb93c2b846bda7f132f5 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe@deserted.net>
+Date: Wed, 7 May 2014 11:36:27 -0400
+Subject: [PATCH] libsemanage: disable expand-check on policy load
+
+For small policy modules it's not necessary to walk the hierarchy on load.
+On embedded devices that are low-powered or resource-constrained disabling
+the hierarchy processing can make the difference between seconds and
+(many) minutes of load time (or being able to load the policy at all).
+
+Upstream-Status: Denied [upstream developers want to preserve the default
+                 checking: http://marc.info/?l=selinux&m=121794804217721&w=2]
+
+Signed-off-by: Joe MacDonald <joe@deserted.net>
+---
+ src/semanage.conf |    4 ++++
+ 1 file changed, 4 insertions(+)
+
+diff --git a/src/semanage.conf b/src/semanage.conf
+index 24e1999..42050a7 100644
+--- a/src/semanage.conf
++++ b/src/semanage.conf
+@@ -36,3 +36,6 @@ module-store = direct
+ # version is necessary.
+ #policy-version = 19
+
++# Don't check the entire policy hierarchy when inserting / expanding a policy
++# module.  This results in a significant speed-up in policy loading.
++expand-check=0
+-- 
+1.7.10.4
+
diff --git a/recipes-security/selinux/libsemanage_2.2.bb b/recipes-security/selinux/libsemanage_2.2.bb
index 93daf9f..716296f 100644
--- a/recipes-security/selinux/libsemanage_2.2.bb
+++ b/recipes-security/selinux/libsemanage_2.2.bb
@@ -15,4 +15,5 @@ SRC_URI += "\
 	file://libsemanage-drop-Wno-unused-but-set-variable.patch \
 	file://libsemanage-define-FD_CLOEXEC-as-necessary.patch;striplevel=2 \
 	file://libsemanage-allow-to-disable-audit-support.patch \
+	file://libsemanage-disable-expand-check-on-policy-load.patch \
 	"
-- 
1.7.10.4


