Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A24AE01466
	for <yocto@yoctoproject.org>; Fri, 10 May 2013 05:58:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 10 May 2013 05:58:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,647,1363158000"; d="scan'208";a="334839897"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by orsmga002.jf.intel.com with ESMTP; 10 May 2013 05:58:21 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2013 15:38:22 +0300
Message-Id: <1368189502-15191-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Keep execute() method signature
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
X-List-Received-Date: Fri, 10 May 2013 12:58:22 -0000

- DialogHandler inherits from IHandler the execute method that has the following signature

Object execute(ExecutionEvent event) throws ExecutionException;

- overriding it with void return type results in a compilation error

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/actions/DialogHandler.java     |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
index 67d33ba..abb2257 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/actions/DialogHandler.java
@@ -29,12 +29,13 @@ abstract public class DialogHandler extends TerminalHandler {
 	}
 
 	@Override
-	public void execute(ExecutionEvent event) throws ExecutionException {
+	public Object execute(ExecutionEvent event) throws ExecutionException {
 		initialize(event);
 
 		if(setting.open() == BaseSettingDialog.OK) {
 			IHost currentHost = setting.getHost();
 			execute(currentHost);
 		}
+		return null;
 	}
 }
-- 
1.7.9.5


