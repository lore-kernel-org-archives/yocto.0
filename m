Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83243E01502
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 07:48:20 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 Apr 2013 07:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,415,1363158000"; d="scan'208";a="289926947"
Received: from ideapad.rb.intel.com ([10.237.105.62])
	by orsmga001.jf.intel.com with ESMTP; 05 Apr 2013 07:48:19 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  5 Apr 2013 17:30:49 +0300
Message-Id: <1365172249-31621-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] [eclipse-poky][master]Check build directory when location is set using "Browse" button
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
X-List-Received-Date: Fri, 05 Apr 2013 14:48:20 -0000

[Yocto #4206]

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   57 +++++++++++++++-----
 1 file changed, 43 insertions(+), 14 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index d84cc24..156829b 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -25,6 +25,7 @@ import org.eclipse.swt.events.ModifyEvent;
 import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionAdapter;
 import org.eclipse.swt.events.SelectionEvent;
+import org.eclipse.swt.events.SelectionListener;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
@@ -108,7 +109,8 @@ public class MainPage extends WizardPage {
 				controlChanged(e.widget);
 			}
 		});
-		setBtnMetadataLoc(addFileSelectButton(textContainer, textMetadataLoc));
+		buildLocationListener = new BuildLocationListener("");
+		setBtnMetadataLoc(addFileSelectButton(textContainer, textMetadataLoc, null));
 
 		labelBuildLoc = new Label(composite, SWT.NONE);
 		labelBuildLoc.setText("Build location: ");
@@ -118,10 +120,10 @@ public class MainPage extends WizardPage {
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
 
 		textBuildLoc = (Text)addTextControl(textContainer, "");
-		buildLocationListener = new BuildLocationListener("");
 		textBuildLoc.addFocusListener(buildLocationListener);
+		textBuildLoc.addModifyListener(buildLocationListener);
 
-		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc));
+		setBtnBuilddirLoc(addFileSelectButton(textContainer, textBuildLoc, buildLocationListener));
 
 		labelBspName = new Label(composite, SWT.NONE);
 		labelBspName.setText("BSP Name*: ");
@@ -152,7 +154,7 @@ public class MainPage extends WizardPage {
 				controlChanged(e.widget);
 			}
 		});
-		setBtnBspOutLoc(addFileSelectButton(textContainer, textBspOutputLoc));
+		setBtnBspOutLoc(addFileSelectButton(textContainer, textBspOutputLoc, null));
 
 		labelKArch = new Label(composite, SWT.NONE);
 		labelKArch.setText("Kernel Architecture*: ");
@@ -206,18 +208,25 @@ public class MainPage extends WizardPage {
 		return text;
 	}
 
-	private Button addFileSelectButton(final Composite parent, final Text text) {
+	private Button addFileSelectButton(final Composite parent, final Text text, SelectionListener listener) {
 		Button button = new Button(parent, SWT.PUSH | SWT.LEAD);
 		button.setText("Browse...");
-		button.addSelectionListener(new SelectionAdapter() {
-			@Override
-			public void widgetSelected(SelectionEvent event) {
-				String dirName = new DirectoryDialog(parent.getShell()).open();
-				if (dirName != null) {
-					text.setText(dirName);
+		if (listener == null) {
+			button.addSelectionListener(new SelectionListener() {
+				@Override
+				public void widgetSelected(SelectionEvent e) {
+					// TODO Auto-generated method stub
+					String dirName = new DirectoryDialog(parent.getShell()).open();
+					if (dirName != null) {
+						text.setText(dirName);
+					}
 				}
-			}
-		});
+				@Override
+				public void widgetDefaultSelected(SelectionEvent e) {
+				}
+			});
+		} else
+			button.addSelectionListener(listener);
 		return button;
 	}
 
@@ -473,7 +482,7 @@ public class MainPage extends WizardPage {
 		this.btnBuildLoc = btnBuilddirLoc;
 	}
 
-	class BuildLocationListener implements FocusListener{
+	class BuildLocationListener implements FocusListener, SelectionListener, ModifyListener{
 		String value;
 		boolean changed;
 
@@ -492,6 +501,26 @@ public class MainPage extends WizardPage {
 				buildDirChecked = true;
 			}
 		}
+		@Override
+		public void widgetSelected(SelectionEvent e) {
+			String dirName = new DirectoryDialog(((Button)e.getSource()).getParent().getShell()).open();
+			if (dirName != null) {
+				textBuildLoc.setText(dirName);
+				value = dirName;
+			}
+		}
+		@Override
+		public void widgetDefaultSelected(SelectionEvent e) {
+			// TODO Auto-generated method stub
+		}
+		@Override
+		public void modifyText(ModifyEvent e) {
+
+			if(!((Text)e.getSource()).getText().equals(value)) {
+				checkBuildDir();
+				buildDirChecked = true;
+			}
+		}
 
 	}
 }
-- 
1.7.9.5


