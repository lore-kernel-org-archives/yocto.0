Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A912E01515
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 08:29:59 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 04 Jun 2013 08:30:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,800,1363158000"; d="scan'208";a="347946886"
Received: from ideapad.rb.intel.com ([10.237.105.63])
	by fmsmga002.fm.intel.com with ESMTP; 04 Jun 2013 08:29:57 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Tue,  4 Jun 2013 18:07:47 +0300
Message-Id: <1370358468-20881-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1370358468-20881-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [Refactor RFC 7/8] Enable edit&save of remote files
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
X-List-Received-Date: Tue, 04 Jun 2013 15:29:59 -0000

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../src/org/yocto/bc/bitbake/BBSession.java        |    3 ++
 .../editors/bitbake/BitBakeDocumentProvider.java   |   40 +++++++++++++++++++-
 .../bc/ui/editors/bitbake/BitBakeFileEditor.java   |    2 +-
 .../bitbake/BitBakeSourceViewerConfiguration.java  |    4 ++
 4 files changed, 47 insertions(+), 2 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
index 937cad1..3becff2 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/bitbake/BBSession.java
@@ -761,4 +761,7 @@ public class BBSession implements IBBSessionListener, IModelElement, Map {
 			wlock.unlock();
 		}
 	}
+	public ProjectInfo getProjectInfo() {
+		return pinfo;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
index 4713bc3..9ac93c9 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeDocumentProvider.java
@@ -10,6 +10,10 @@
  *******************************************************************************/
 package org.yocto.bc.ui.editors.bitbake;
 
+import java.net.URI;
+import java.net.URISyntaxException;
+
+import org.eclipse.core.runtime.NullProgressMonitor;
 import org.eclipse.jface.text.IDocument;
 import org.eclipse.jface.text.IDocumentExtension3;
 import org.eclipse.jface.text.IDocumentPartitioner;
@@ -18,7 +22,10 @@ import org.eclipse.jface.text.rules.IPredicateRule;
 import org.eclipse.jface.text.rules.RuleBasedPartitionScanner;
 import org.eclipse.jface.text.rules.SingleLineRule;
 import org.eclipse.jface.text.rules.Token;
+import org.eclipse.rse.core.model.IHost;
+import org.eclipse.ui.IFileEditorInput;
 import org.eclipse.ui.editors.text.FileDocumentProvider;
+import org.yocto.remote.utils.RemoteHelper;
 
 /**
  * Document provider for BB recipe.
@@ -34,12 +41,20 @@ public class BitBakeDocumentProvider extends FileDocumentProvider {
 
 	public static final String RECIPE_CODE= IDocument.DEFAULT_CONTENT_TYPE;
 	public static final String RECIPE_COMMENT= "RECIPE_COMMENT"; //$NON-NLS-1$
-	
+
+	private IHost connection;
+
+	private final BitBakeSourceViewerConfiguration viewerConfiguration;
+
 	private static final String[] CONTENT_TYPES= {
 			RECIPE_CODE,
 			RECIPE_COMMENT
 	};
 
+	public BitBakeDocumentProvider(BitBakeSourceViewerConfiguration viewerConfiguration) {
+		this.viewerConfiguration = viewerConfiguration;
+	}
+
 	private IDocumentPartitioner createRecipePartitioner() {
 		IPredicateRule[] rules= { new SingleLineRule("#", null, new Token(RECIPE_COMMENT), (char) 0, true, false) }; //$NON-NLS-1$
 
@@ -59,4 +74,27 @@ public class BitBakeDocumentProvider extends FileDocumentProvider {
 		}
 	}
 
+	@Override
+	public boolean isDeleted(Object element) {
+		if (element instanceof IFileEditorInput) {
+			IFileEditorInput input= (IFileEditorInput) element;
+
+		    URI root = viewerConfiguration.getBBSession().getProjInfoRoot();
+		    String relPath = input.getFile().getProjectRelativePath().toPortableString();
+		    try {
+				URI fileURI = new URI(root.getScheme(), root.getHost(), root.getPath() + "/" + relPath, root.getFragment());
+				if (connection == null)
+					connection = viewerConfiguration.getBBSession().getProjectInfo().getConnection();
+				return !RemoteHelper.fileExistsRemote(connection, new NullProgressMonitor(), fileURI.getPath());
+			} catch (URISyntaxException e) {
+				e.printStackTrace();
+			}
+		}
+
+		return super.isDeleted(element);
+	}
+
+	public void setActiveConnection(IHost connection) {
+		this.connection = connection;
+	}
 }
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
index 7535341..1e42d29 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeFileEditor.java
@@ -45,7 +45,7 @@ public class BitBakeFileEditor extends AbstractDecoratedTextEditor {
 		super();
 		viewerConfiguration = new BitBakeSourceViewerConfiguration(getSharedColors(), getPreferenceStore());
 		setSourceViewerConfiguration(viewerConfiguration);
-		setDocumentProvider(new BitBakeDocumentProvider());
+		setDocumentProvider(new BitBakeDocumentProvider(viewerConfiguration));
 	}
 	
 	@Override
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
index 2be6f1d..2b286df 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/editors/bitbake/BitBakeSourceViewerConfiguration.java
@@ -202,4 +202,8 @@ public class BitBakeSourceViewerConfiguration extends TextSourceViewerConfigurat
 	public void setBBSession(BBSession session) {
 		this.session = session;		
 	}
+
+	public BBSession getBBSession() {
+		return this.session;
+	}
 }
-- 
1.7.9.5


