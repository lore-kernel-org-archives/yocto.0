Return-Path: <stefanx.stanacar@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3168BE0147D
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:02:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 May 2013 09:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="299461815"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2013 09:01:45 -0700
Received: from firebird.rb.intel.com (firebird.rb.intel.com [10.237.105.149])
	by linux.intel.com (Postfix) with ESMTP id ABA0C6A408D;
	Wed,  8 May 2013 09:01:35 -0700 (PDT)
From: Stefan Stanacar <stefanx.stanacar@intel.com>
To: elizabeth.flanagan@intel.com,
	 yocto@yoctoproject.org
Date: Wed,  8 May 2013 19:01:49 +0300
Message-Id: <2091f6430c5e04784967613943e588ea77fdb924.1368028857.git.stefanx.stanacar@intel.com>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
In-Reply-To: <cover.1368028857.git.stefanx.stanacar@intel.com>
References: <cover.1368028857.git.stefanx.stanacar@intel.com>
Subject: [yocto-autobuilder][PATCH 4/4] PublishLayerTarballs.py: Cleanup spacing
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
X-List-Received-Date: Wed, 08 May 2013 16:02:06 -0000

No changes, just formating/spacing.

Signed-off-by: Stefan Stanacar <stefanx.stanacar@intel.com>
---
 .../autobuilder/buildsteps/PublishLayerTarballs.py       | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
index 6f676be..4a94b67 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/PublishLayerTarballs.py
@@ -43,15 +43,15 @@ class PublishLayerTarballs(ShellCommand):
                                     self.slavedir, buildername), self.workdir))
         command = " git archive --format=tar HEAD "
         command = command + "--prefix=" + self.layername + "-" + revision + "/"
-        command = command  +"| gzip > " + self.layername + "-" + revision + ".tar.gz; " 
+        command = command + " | gzip > " + self.layername + "-" + revision + ".tar.gz; "
         command = command + " git archive --format=tar HEAD "
         command = command + "--prefix=" + self.layername + "-" + revision + "/"
-        command = command  +"| bzip2 -c > " + self.layername + "-" + revision + ".tar.bz2; " 
-        command = command  +"md5sum " + self.layername + "-" + revision + ".tar.bz2 >> "
-        command = command  + self.layername + "-" + revision + ".tar.bz2.md5sum; "
-        command = command  +"md5sum " + self.layername + "-" + revision + ".tar.gz >> "
-        command = command  + self.layername + "-" + revision + ".tar.gz.md5sum; " 
-        command=command + "mkdir -p " + DEST + "; rsync -av " 
-        command=command + self.layername + "-" + revision +".tar.* " + DEST
+        command = command + " | bzip2 -c > " + self.layername + "-" + revision + ".tar.bz2; "
+        command = command + "md5sum " + self.layername + "-" + revision + ".tar.bz2 >> "
+        command = command + self.layername + "-" + revision + ".tar.bz2.md5sum; "
+        command = command + "md5sum " + self.layername + "-" + revision + ".tar.gz >> "
+        command = command + self.layername + "-" + revision + ".tar.gz.md5sum; "
+        command = command + "mkdir -p " + DEST + "; rsync -av "
+        command = command + self.layername + "-" + revision +".tar.* " + DEST
         self.command=command
         ShellCommand.start(self)
-- 
1.8.1.4


