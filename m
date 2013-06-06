Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F18ECE0156B
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2013 06:10:05 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Jun 2013 06:09:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,814,1363158000"; d="scan'208";a="313209303"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by azsmga001.ch.intel.com with ESMTP; 06 Jun 2013 06:09:40 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2013 15:47:32 +0300
Message-Id: <1370522855-22772-3-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370522855-22772-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor 2/5] Add implicit constructror for OEFileSystemContributor
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
X-List-Received-Date: Thu, 06 Jun 2013 13:10:06 -0000

- this is needed in order to skip calling the default calling of the super constructor

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../bc/ui/filesystem/OEFileSystemContributor.java  |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
index 4ac2998..338ba1f 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFileSystemContributor.java
@@ -17,6 +17,9 @@ import org.eclipse.ui.ide.fileSystem.FileSystemContributor;
 
 public class OEFileSystemContributor extends FileSystemContributor  {
 
+	public OEFileSystemContributor() {
+	}
+
 	@Override
 	public URI browseFileSystem(String initialPath, Shell shell) {
 		return null;
-- 
1.7.9.5


