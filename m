Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 3F423E014F3
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2013 00:29:29 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.79])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id AA9324009F;
	Tue,  5 Mar 2013 08:47:08 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue,  5 Mar 2013 09:29:23 +0100
Message-Id: <627f04c41270578a0e895cbd397913e4cd9da59c.1362414084.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <7795054b666eb6e5760f9f1f615eaf42b19fb535.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
	<326c88b1356a7902bd617989dd71fbf51c4dd018.1362414084.git.timo.mueller@bmw-carit.de>
	<0e1087cc0470b96f7fd4acb8e1abb35c46fcb967.1362414084.git.timo.mueller@bmw-carit.de>
	<7795054b666eb6e5760f9f1f615eaf42b19fb535.1362414084.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1362414084.git.timo.mueller@bmw-carit.de>
References: <cover.1362414084.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 4/5] plugins/sdk.ide: Relay events from child widgets to the parent composite
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 05 Mar 2013 08:29:29 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If the content of the YoctoUISettings changes, because a contained
widget reports a modify or selection event, an corresponding event is
triggered on the parent composite. UI elements containing the
YoctoUISettings can now register listeners and be notified when the
content changes.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoUISetting.java      | 38 +++++++++++++++++++---
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
index 3aa38d9..95209b6 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoUISetting.java
@@ -31,6 +31,7 @@ import org.eclipse.swt.widgets.Composite;
 import org.eclipse.swt.widgets.Control;
 import org.eclipse.swt.widgets.DirectoryDialog;
 import org.eclipse.swt.widgets.Display;
+import org.eclipse.swt.widgets.Event;
 import org.eclipse.swt.widgets.FileDialog;
 import org.eclipse.swt.widgets.Group;
 import org.eclipse.swt.widgets.Label;
@@ -48,6 +49,8 @@ public class YoctoUISetting {
 	private ModifyListener fModifyListener;
 	private YoctoUIElement yoctoUIElement;
 
+	private Group crossCompilerGroup;
+
 	private Button btnSDKRoot;
 	private Button btnQemu;
 	private Button btnPokyRoot;
@@ -79,15 +82,43 @@ public class YoctoUISetting {
 
 			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
+				relayEvent(e);
+			}
+
+			private void relayEvent(SelectionEvent e) {
+				Event event = new Event();
+				event.data = e.data;
+				event.detail = e.detail;
+				event.display = e.display;
+				event.doit = e.doit;
+				event.height = e.height;
+				event.item = e.item;
+				event.stateMask = e.stateMask;
+				event.text = e.text;
+				event.time = e.time;
+				event.widget = e.widget;
+				event.width = e.width;
+				event.x = e.x;
+				event.y = e.y;
+				crossCompilerGroup.getParent().notifyListeners(SWT.Selection, event);
 			}
-		};		
+		};
 
 		fModifyListener= new ModifyListener() {
 			public void modifyText(ModifyEvent e) {
 				controlModified(e.widget);
+				relayEvent(e);
 			}
-		};
 
+			private void relayEvent(ModifyEvent e) {
+				Event event = new Event();
+				event.data = e.data;
+				event.display = e.display;
+				event.time = e.time;
+				event.widget = e.widget;
+				crossCompilerGroup.getParent().notifyListeners(SWT.Modify, event);
+			}
+		};
 	}
 
 	private Control addControls(Control fControl, final String sKey, String sValue)
@@ -185,7 +216,7 @@ public class YoctoUISetting {
 		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
 
-		Group crossCompilerGroup= new Group(composite, SWT.NONE);
+		crossCompilerGroup = new Group(composite, SWT.NONE);
 		layout= new GridLayout(2, false);
 		crossCompilerGroup.setLayout(layout);
 		gd= new GridData(SWT.FILL, SWT.CENTER, true, false);
@@ -521,5 +552,4 @@ public class YoctoUISetting {
 		}
 
 	}
-
 }
-- 
1.7.11.7


