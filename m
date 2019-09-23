Return-Path: <Ovidiu.Panait@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E34BE00805; Sun, 22 Sep 2019 23:45:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D2C4E00805
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 23:45:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8N6j84n027319
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2019 23:45:08 -0700 (PDT)
Received: from otp-opanait-l1.corp.ad.wrs.com (128.224.124.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.468.0; Sun, 22 Sep 2019 23:45:07 -0700
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: <yocto@yoctoproject.org>
Date: Mon, 23 Sep 2019 09:41:35 +0300
Message-ID: <20190923064135.18204-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH 1/1] initramfs-module-setup-live: call udev settle before umounting /run/media/*
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
X-List-Received-Date: Mon, 23 Sep 2019 06:45:14 -0000
Content-Type: text/plain

This fixes a race conditition which leaves devices mounted, causing the
following anaconda installation failure:
File "/usr/lib64/python3.5/site-packages/gi/overrides/BlockDev.py", line 963, in wrapped
  raise transform[1](msg)
File "/usr/lib64/python3.5/site-packages/blivet/devices/lvm.py", line 913, in _teardown
  blockdev.lvm.lvdeactivate(self.vg.name, self._name)
File "/usr/lib64/python3.5/site-packages/blivet/threads.py", line 53, in run_with_lock
  return m(*args, **kwargs)
File "/usr/lib64/python3.5/site-packages/blivet/devices/storage.py", line 431, in teardown
  self._teardown(recursive=recursive)
File "/usr/lib64/python3.5/site-packages/blivet/threads.py", line 53, in run_with_lock
  return m(*args, **kwargs)
File "/usr/lib64/python3.5/site-packages/blivet/devices/lvm.py", line 1933, in teardown
  return DMDevice.teardown(self, recursive)
gi.overrides.BlockDev.LVMError: Process reported exit code 5:   Logical volume wrll_intel-x86-64/root contains a filesystem in use.

Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 recipes-installer/initrdscripts/files/umountfs | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/recipes-installer/initrdscripts/files/umountfs b/recipes-installer/initrdscripts/files/umountfs
index f01adea..4792110 100644
--- a/recipes-installer/initrdscripts/files/umountfs
+++ b/recipes-installer/initrdscripts/files/umountfs
@@ -3,6 +3,9 @@ umountfs_enabled() {
 }
 
 umountfs_run() {
+    # Make sure /run/media is fully populated
+    udevadm settle
+
     # Umount other media for anaconda
     for dir in `awk '/\/dev.* \/run\/media/{print $2}' /proc/mounts`; do
         umount $dir
-- 
2.18.1


