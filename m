Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC9A8E00878; Tue, 30 Sep 2014 09:59:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73AAFE00876
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 09:59:49 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga103.jf.intel.com with ESMTP; 30 Sep 2014 09:57:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,627,1406617200"; d="scan'208";a="611010960"
Received: from sullical-studio-xps-9100.jf.intel.com (HELO
	sullical-Studio-XPS-9100) ([10.7.198.172])
	by orsmga002.jf.intel.com with SMTP; 30 Sep 2014 09:59:47 -0700
Received: by sullical-Studio-XPS-9100 (sSMTP sendmail emulation);
	Tue, 30 Sep 2014 10:02:21 -0700
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Tue, 30 Sep 2014 10:01:55 -0700
Message-Id: <1412096519-8995-3-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1412096519-8995-1-git-send-email-californialsullivan@gmail.com>
References: <1412096519-8995-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [PATCH V2 3/7] bin/worker-init: Initial commit
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
X-List-Received-Date: Tue, 30 Sep 2014 16:59:50 -0000

From: California Sullivan <california.l.sullivan@intel.com>

This script takes a fresh debian VM, completely sets up software and disks,
starts an autobuilder worker, and then connects it to the controller. It is to
be used by the ProvisionGoogleVMs build step.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 bin/worker-init | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100755 bin/worker-init

diff --git a/bin/worker-init b/bin/worker-init
new file mode 100755
index 0000000..7c6f827
--- /dev/null
+++ b/bin/worker-init
@@ -0,0 +1,39 @@
+#!/bin/bash
+
+if [ ! -f /var/log/firstboot.log ]
+then
+  START_SECTOR=$(fdisk -l | grep sda1 | sed 's/\*//' | awk '{ print $2 }')
+  echo -e "d\nn\n\n\n$START_SECTOR\n\nw\n" | fdisk /dev/sda
+  touch /var/log/firstboot.log
+  reboot
+fi
+
+if [ ! -f /var/log/secondboot.log ]
+then
+  resize2fs /dev/sda1
+  sudo apt-get update
+  yes | sudo apt-get install make
+  yes | sudo apt-get install git
+  yes | sudo apt-get install gcc
+  yes | sudo apt-get install g++
+  yes | sudo apt-get install diffstat
+  yes | sudo apt-get install texinfo
+  yes | sudo apt-get install bzip2
+  yes | sudo apt-get install gawk
+  yes | sudo apt-get install chrpath
+  yes | sudo apt-get install libsdl1.2-dev
+  yes "dummyinfo" | adduser autobuilder
+  touch /var/log/secondboot.log
+fi
+
+WORKER_NUM=$(uname -n | grep -o [0-9])
+
+cd /home/autobuilder
+su autobuilder -c "yes 'yes' | git clone git://git.yoctoproject.org/yocto-autobuilder"
+
+cd yocto-autobuilder
+su autobuilder -c '. ./yocto-autobuilder-setup'
+su autobuilder -c "sed -i 's/example-worker/worker'$WORKER_NUM'/' yocto-worker/buildbot.tac"
+su autobuilder -c 'sed -i "s/passwd =.*/passwd = '"'"'<PASS>'"'"'/" yocto-worker/buildbot.tac'
+su autobuilder -c 'sed -i "s/buildmaster_host =.*/buildmaster_host = '"'"'<HOST_ADDR>'"'"'/" yocto-worker/buildbot.tac'
+su autobuilder -c '. ./yocto-autobuilder-setup; ./yocto-start-autobuilder worker &'
-- 
1.9.1


