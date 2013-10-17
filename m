Return-Path: <Yang.Shi@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 320AEE016B5
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 15:15:00 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9HMExcc002347
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 15:14:59 -0700 (PDT)
Received: from localhost.localdomain (147.11.152.86) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Thu, 17 Oct 2013 15:14:59 -0700
From: Yang Shi <yang.shi@windriver.com>
To: <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
Date: Thu, 17 Oct 2013 15:09:45 -0700
Message-ID: <1382047785-13705-1-git-send-email-yang.shi@windriver.com>
X-Mailer: git-send-email 1.7.5.4
MIME-Version: 1.0
Subject: [PATCH] lxc/namespace: Clean up kernel configs
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
X-List-Received-Date: Thu, 17 Oct 2013 22:15:02 -0000
Content-Type: text/plain

Remove namespaces-experimental.cfg since USER_NS is not experimental anymore.

Add CONFIG_USER_NS into namespaces.cfg.

Add CONFIG_MACVLAN into lxc to avoid the below missing report from
lxc-checkconfig:
---
 meta/cfg/kernel-cache/features/lxc/lxc.cfg                         | 3 ++-
 .../kernel-cache/features/namespaces/namespaces-experimental.cfg   | 1 -
 meta/cfg/kernel-cache/features/namespaces/namespaces.cfg           | 2 +-
 meta/cfg/kernel-cache/features/namespaces/namespaces.scc           | 7 +------
 4 files changed, 4 insertions(+), 9 deletions(-)
 delete mode 100644 meta/cfg/kernel-cache/features/namespaces/namespaces-experimental.cfg

diff --git a/meta/cfg/kernel-cache/features/lxc/lxc.cfg b/meta/cfg/kernel-cache/features/lxc/lxc.cfg
index dfd7847..740b800 100644
--- a/meta/cfg/kernel-cache/features/lxc/lxc.cfg
+++ b/meta/cfg/kernel-cache/features/lxc/lxc.cfg
@@ -1,4 +1,5 @@
 # Misc configs
 CONFIG_VETH=y
 CONFIG_DEVPTS_MULTIPLE_INSTANCES=y
-CONFIG_MM_OWNER=y
\ No newline at end of file
+CONFIG_MM_OWNER=y
+CONFIG_MACVLAN=y
diff --git a/meta/cfg/kernel-cache/features/namespaces/namespaces-experimental.cfg b/meta/cfg/kernel-cache/features/namespaces/namespaces-experimental.cfg
deleted file mode 100644
index 416bd53..0000000
--- a/meta/cfg/kernel-cache/features/namespaces/namespaces-experimental.cfg
+++ /dev/null
@@ -1 +0,0 @@
-CONFIG_USER_NS=y
diff --git a/meta/cfg/kernel-cache/features/namespaces/namespaces.cfg b/meta/cfg/kernel-cache/features/namespaces/namespaces.cfg
index 6e850fe..6254019 100644
--- a/meta/cfg/kernel-cache/features/namespaces/namespaces.cfg
+++ b/meta/cfg/kernel-cache/features/namespaces/namespaces.cfg
@@ -1,6 +1,6 @@
 CONFIG_NAMESPACES=y
 CONFIG_UTS_NS=y
 CONFIG_IPC_NS=y
-
+CONFIG_USER_NS=y
 CONFIG_PID_NS=y
 CONFIG_NET_NS=y
diff --git a/meta/cfg/kernel-cache/features/namespaces/namespaces.scc b/meta/cfg/kernel-cache/features/namespaces/namespaces.scc
index 1328400..ea23151 100644
--- a/meta/cfg/kernel-cache/features/namespaces/namespaces.scc
+++ b/meta/cfg/kernel-cache/features/namespaces/namespaces.scc
@@ -1,9 +1,4 @@
-define KFEATURE_DESCRIPTION "Enable namespace support + experimental namespaces"
+define KFEATURE_DESCRIPTION "Enable namespace support"
 define KFEATURE_COMPATIBILITY all
 
-define EXPERIMENTAL 1
-
 kconf non-hardware namespaces.cfg
-if [ -n "EXPERIMENTAL" ]; then
-    kconf non-hardware namespaces-experimental.cfg
-fi
-- 
1.8.3.4


