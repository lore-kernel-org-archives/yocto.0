Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D6A5E014E2
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:53 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946848"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:51 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:43 +0300
Message-Id: <1370358468-20881-4-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 3/8] Remove unused checkReadOnlyParent method of OEFile
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:53 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/ui/filesystem/OEFile.java     |   17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
index 78988b8..7f85f32 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/filesystem/OEFile.java
@@ -82,23 +82,6 @@ public class OEFile extends FileStore {
 		this.filePath = file.getAbsolutePath();
 	}
 
-	/**
-	 * This method is called after a failure to modify a file or directory.
-	 * Check to see if the parent is read-only and if so then
-	 * throw an exception with a more specific message and error code.
-	 * 
-	 * @param target The file that we failed to modify
-	 * @param exception The low level exception that occurred, or <code>null</code>
-	 * @throws CoreException A more specific exception if the parent is read-only
-	 */
-	private void checkReadOnlyParent(File target, Throwable exception) throws CoreException {
-		File parent = target.getParentFile();
-		if (parent != null && (attributes(parent) & EFS.ATTRIBUTE_READ_ONLY) != 0) {
-			String message = NLS.bind(Messages.readOnlyParent, target.getAbsolutePath());
-			Policy.error(EFS.ERROR_PARENT_READ_ONLY, message, exception);
-		}
-	}
-
 	@Override
 	public String[] childNames(int options, IProgressMonitor monitor) {
 		return file.getChildNames(monitor);
-- 
1.7.9.5


