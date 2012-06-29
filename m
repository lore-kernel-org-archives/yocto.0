Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6863EE01458
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 18:59:31 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so4583760pbb.35
	for <yocto@yoctoproject.org>; Thu, 28 Jun 2012 18:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=YpgidvdjE7KmTG5ol32vJtkstxCH0yGyYXky/FtYyh4=;
	b=AoocqMX6+FgvZDAMWrzjAmjk0AVbUUc0ao21IjABBrxY9RjL3IthESLP0D/mKReW9W
	en3KV01RtRjL5/Gpvd/PLdXKWdWcGEH7W1munsMUXr/Nse/ojmbByWZh5kQCibrF7Ydv
	J2Bui3XlN577BK6HdiizP9si1UqOBUPi+UBCe/JwVWH/fHaeCldxhfc7VNClmx0XsUJB
	srhiJLSUFIdnDxzCYh3ULip1O30+fpFInRFj9fYWSxBTwODgb1OoG3gnoBcT1yKDL73T
	d9raX82FnenApQaKr5eKLLE2NI9EcI1EsCRrQ8696nxsXkFn5fMqBBMaihfybwINwbfj
	jiOQ==
Received: by 10.68.125.228 with SMTP id mt4mr1357858pbb.21.1340935170838;
	Thu, 28 Jun 2012 18:59:30 -0700 (PDT)
Received: from localhost.localdomain ([94.205.109.242])
	by mx.google.com with ESMTPS id ot4sm3819361pbb.65.2012.06.28.18.59.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 28 Jun 2012 18:59:30 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 29 Jun 2012 03:59:14 +0200
Message-Id: <1340935154-4610-1-git-send-email-elvis.dowson@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <y>
References: <y>
Cc: Elvis Dowson <elvis.dowson@gmail.com>
Subject: [meta-xilinx] util-linux: rename file to util-linux_2.21.2.bbappend
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
X-List-Received-Date: Fri, 29 Jun 2012 01:59:31 -0000

* Rename util-linux bbaapend file to match recipe version provided in
  poky/meta/recipes-core/util-linux

Signed-off-by: Elvis Dowson <elvis.dowson@gmail.com>
---
 recipes-core/util-linux/util-linux_2.21.1.bbappend |    3 ---
 recipes-core/util-linux/util-linux_2.21.2.bbappend |    3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)
 delete mode 100644 recipes-core/util-linux/util-linux_2.21.1.bbappend
 create mode 100644 recipes-core/util-linux/util-linux_2.21.2.bbappend

diff --git a/recipes-core/util-linux/util-linux_2.21.1.bbappend b/recipes-core/util-linux/util-linux_2.21.1.bbappend
deleted file mode 100644
index 5199eb2..0000000
--- a/recipes-core/util-linux/util-linux_2.21.1.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-FILESEXTRAPATHS := "${THISDIR}/${PN}"
-# Disable microblaze ncurses support
-EXTRA_OECONF_microblaze += " --without-ncurses "
diff --git a/recipes-core/util-linux/util-linux_2.21.2.bbappend b/recipes-core/util-linux/util-linux_2.21.2.bbappend
new file mode 100644
index 0000000..5199eb2
--- /dev/null
+++ b/recipes-core/util-linux/util-linux_2.21.2.bbappend
@@ -0,0 +1,3 @@
+FILESEXTRAPATHS := "${THISDIR}/${PN}"
+# Disable microblaze ncurses support
+EXTRA_OECONF_microblaze += " --without-ncurses "
-- 
1.7.9.5


