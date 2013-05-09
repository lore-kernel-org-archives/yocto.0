Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B77CE006F9
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 14:39:42 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 09 May 2013 14:39:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,643,1363158000"; d="scan'208";a="335164011"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 09 May 2013 14:39:40 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 10 May 2013 00:19:43 +0300
Message-Id: <1368134384-5868-2-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1368134384-5868-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1368134384-5868-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 1/2] Remove unused TCFTerminalConnectors
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
X-List-Received-Date: Thu, 09 May 2013 21:39:42 -0000

- removed TCFTerminalConnector and TCFTerminalConnectorImpl since there are no usages of this classes

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../remotetools/views/TCFTerminalConnector.java    |   49 ----------
 .../views/TCFTerminalConnectorImpl.java            |   98 --------------------
 2 files changed, 147 deletions(-)
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
 delete mode 100644 plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
deleted file mode 100644
index 6239136..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnector.java
+++ /dev/null
@@ -1,49 +0,0 @@
-/********************************************************************************
- * Copyright (c) 2008, 2009 MontaVista Software, Inc. and others
- * This program and the accompanying materials are made available under the terms
- * of the Eclipse Public License v1.0 which accompanies this distribution, and is
- * available at http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Anna Dushistova (MontaVista) - initial API and implementation
- * Uwe Stieber (Wind River) - [282996] [terminal][api] Add "hidden" attribute to terminal connector extension point
- ********************************************************************************/
-package org.yocto.sdk.remotetools.views;
-
-import org.eclipse.core.runtime.Platform;
-import org.eclipse.rse.core.model.IHost;
-import org.eclipse.tm.internal.terminal.provisional.api.ITerminalConnector;
-
-public class TCFTerminalConnector extends TCFTerminalConnectorImpl implements ITerminalConnector {
-
-    public TCFTerminalConnector(IHost host) {
-		super(host);
-    }
-
-    public String getId() {
-        return "yocto_tcf_internal_connector"; //$NON-NLS-1$
-    }
-
-    public String getInitializationErrorMessage() {
-        return null;
-    }
-
-    public String getName() {
-        return "yocto_tcf_internal_connector";
-    }
-
-    public boolean isHidden() {
-    	return true;
-    }
-
-    public boolean isInitialized() {
-        return true;
-    }
-
-	public Object getAdapter(Class adapterType) {
-		if (adapterType.isInstance(this))
-			return this;
-		return Platform.getAdapterManager().getAdapter(this, adapterType);
-	}
-
-}
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java
deleted file mode 100644
index 105ca62..0000000
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/views/TCFTerminalConnectorImpl.java
+++ /dev/null
@@ -1,98 +0,0 @@
-/********************************************************************************
- * Copyright (c) 2008 MontaVista Software, Inc.
- * This program and the accompanying materials are made available under the terms
- * of the Eclipse Public License v1.0 which accompanies this distribution, and is
- * available at http://www.eclipse.org/legal/epl-v10.html
- *
- * Contributors:
- * Anna Dushistova (MontaVista) - initial API and implementation
- * Yu-Fen Kuo (MontaVista)      - [227572] RSE Terminal doesn't reset the "connected" state when the shell exits
- * Anna Dushistova (MontaVista) - [228577] [rseterminal] Clean up RSE Terminal impl
- ********************************************************************************/
-package org.yocto.sdk.remotetools.views;
-
-import java.io.InputStream;
-import java.io.OutputStream;
-
-import org.eclipse.rse.core.model.IHost;
-import org.eclipse.tm.internal.terminal.provisional.api.ITerminalControl;
-import org.eclipse.tm.internal.terminal.provisional.api.provider.TerminalConnectorImpl;
-
-public class TCFTerminalConnectorImpl extends TerminalConnectorImpl {
-	
-    private OutputStream fOutputStream;
-    private InputStream fInputStream;
-    IHost host;
-//TODO    private RSETerminalConnectionThread fConnection;
-//TODO    private ITerminalShell shell;
-
-    public TCFTerminalConnectorImpl(IHost host) {
-        super();
-        this.host = host;
-    }
-    /* TODO
-    public void connect(ITerminalControl control) {
-    	super.connect(control);
-        fConnection = new RSETerminalConnectionThread(this, control);
-        fConnection.start();
-    }
-
-    public void doDisconnect() {
-        fConnection.disconnect();
-        if (getInputStream() != null) {
-            try {
-                getInputStream().close();
-            } catch (Exception exception) {
-            	RSECorePlugin.getDefault().getLogger().logError("Error while closing input stream", exception); //$NON-NLS-1$
-            }
-        }
-
-        if (getTerminalToRemoteStream() != null) {
-            try {
-                getTerminalToRemoteStream().close();
-            } catch (Exception exception) {
-            	RSECorePlugin.getDefault().getLogger().logError("Error while closing terminal-to-remote stream", exception); //$NON-NLS-1$
-            }
-        }
-    }
-*/
-    public OutputStream getTerminalToRemoteStream() {
-        return fOutputStream;
-    }
-
-    public String getSettingsSummary() {
-        return "RSE: " + host.getName();
-    }
-/* TODO
-    public boolean isLocalEcho() {
-        return shell.isLocalEcho();
-    }
-
-    public void setTerminalSize(int newWidth, int newHeight) {
-    	if(shell != null)
-    	{	
-            shell.setTerminalSize(newWidth, newHeight);
-    	}    
-    }
-
-    public InputStream getInputStream() {
-        return fInputStream;
-    }
-
-    public void setOutputStream(OutputStream outputStream) {
-        fOutputStream = outputStream;
-    }
-
-    public void setInputStream(InputStream inputStream) {
-        fInputStream = inputStream;
-    }
-
-    public void setTerminalHostShell(ITerminalShell shell) {
-        this.shell = shell;
-    }
-
-    public ITerminalShell getTerminalHostShell() {
-        return shell;
-    }
-*/
-}
-- 
1.7.9.5


