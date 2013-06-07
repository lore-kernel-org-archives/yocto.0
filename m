Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6321E0140D
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 08:13:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 07 Jun 2013 08:13:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,822,1363158000"; d="scan'208";a="251999346"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Jun 2013 08:13:29 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  7 Jun 2013 17:51:16 +0300
Message-Id: <1370616683-17239-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370616683-17239-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [RFC Refactor[v2] 1/8] Move ICommandResponseHandler to org.yocto.remote.utils
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
X-List-Received-Date: Fri, 07 Jun 2013 15:13:54 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../yocto/bc/bitbake/ICommandResponseHandler.java  |   15 ---------------
 .../remote/utils/ICommandResponseHandler.java      |   15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)
 delete mode 100644 plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java
 create mode 100644 plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java
deleted file mode 100644
index 4c44352..0000000
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/ICommandResponseHandler.java
+++ /dev/null
@@ -1,15 +0,0 @@
-/*****************************************************************************
- * Copyright (c) 2009 Ken Gilmer
- * All rights reserved. This program and the accompanying materials
- * are made available under the terms of the Eclipse Public License v1.0
- * which accompanies this distribution, and is available at
- * http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- *     Ken Gilmer - initial API and implementation
- *******************************************************************************/
-package org.yocto.bc.bitbake;
-
-public interface ICommandResponseHandler {
-	public void response(String line, boolean isError);
-}
diff --git a/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
new file mode 100644
index 0000000..f135dde
--- /dev/null
+++ b/plugins/org.yocto.remote.utils/src/org/yocto/remote/utils/ICommandResponseHandler.java
@@ -0,0 +1,15 @@
+/*****************************************************************************
+ * Copyright (c) 2013 Ken Gilmer
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ *     Ken Gilmer - initial API and implementation
+ *******************************************************************************/
+package org.yocto.remote.utils;
+
+public interface ICommandResponseHandler {
+	public void response(String line, boolean isError);
+}
-- 
1.7.9.5


