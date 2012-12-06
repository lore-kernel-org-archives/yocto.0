Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ED8AE0146D
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2012 05:57:06 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 06 Dec 2012 05:57:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,230,1355126400"; d="scan'208";a="227491165"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.148])
	by azsmga001.ch.intel.com with ESMTP; 06 Dec 2012 05:57:04 -0800
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Dec 2012 15:47:01 +0200
Message-Id: <1354801622-13962-8-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
References: <1354801622-13962-1-git-send-email-ioanax.grigoropol@intel.com>
Subject: [PATCH 7/8] convert CRLF line terminators to CR only
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
X-List-Received-Date: Thu, 06 Dec 2012 13:57:06 -0000

---
 .../org/yocto/bc/ui/wizards/FiniteStateWizard.java |  112 +++----
 .../yocto/bc/ui/wizards/FiniteStateWizardPage.java |  320 ++++++++++----------
 2 files changed, 216 insertions(+), 216 deletions(-)

diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
index 6cd87be..795f7bd 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizard.java
@@ -1,56 +1,56 @@
-package org.yocto.bc.ui.wizards;
-import java.util.Map;
-
-import org.eclipse.jface.wizard.Wizard;
-import org.eclipse.swt.widgets.Composite;
-
-
-
-public abstract class FiniteStateWizard extends Wizard{
-    private boolean finishable = false;
-    private boolean canFinish = false;
-
-    public FiniteStateWizard() {                
-    }
-    
-    public abstract boolean performFinish();
-
-    /**
-     * @return Returns if the wizard is finishable in its current state.
-     */
-    public boolean isFinishable() {
-        return finishable;
-    }
-    /**
-     * @param finishable Change the finish state of the wizard.
-     */
-    public void setFinishable(boolean finishable) {
-        this.finishable = finishable;
-    }
-    
-    /* (non-Javadoc)
-     * @see org.eclipse.jface.wizard.IWizard#createPageControls(org.eclipse.swt.widgets.Composite)
-     */
-    public void createPageControls(Composite pageContainer) {
-        super.createPageControls(pageContainer);        
-    }
-
-    /*
-     * (non-Javadoc) Method declared on IWizard.
-     */
-    public boolean canFinish() {
-      if (canFinish)
-        return true;
-      return super.canFinish();
-    }
-    
-    public void setCanFinish(boolean canFinish) {
-      this.canFinish = canFinish;
-    }
-    
-    /**
-     * Retrive the model object from the wizard.
-     * @return
-     */
-    public abstract Map<?, ?> getModel();
-}
+package org.yocto.bc.ui.wizards;
+import java.util.Map;
+
+import org.eclipse.jface.wizard.Wizard;
+import org.eclipse.swt.widgets.Composite;
+
+
+
+public abstract class FiniteStateWizard extends Wizard{
+    private boolean finishable = false;
+    private boolean canFinish = false;
+
+    public FiniteStateWizard() {                
+    }
+    
+    public abstract boolean performFinish();
+
+    /**
+     * @return Returns if the wizard is finishable in its current state.
+     */
+    public boolean isFinishable() {
+        return finishable;
+    }
+    /**
+     * @param finishable Change the finish state of the wizard.
+     */
+    public void setFinishable(boolean finishable) {
+        this.finishable = finishable;
+    }
+    
+    /* (non-Javadoc)
+     * @see org.eclipse.jface.wizard.IWizard#createPageControls(org.eclipse.swt.widgets.Composite)
+     */
+    public void createPageControls(Composite pageContainer) {
+        super.createPageControls(pageContainer);        
+    }
+
+    /*
+     * (non-Javadoc) Method declared on IWizard.
+     */
+    public boolean canFinish() {
+      if (canFinish)
+        return true;
+      return super.canFinish();
+    }
+    
+    public void setCanFinish(boolean canFinish) {
+      this.canFinish = canFinish;
+    }
+    
+    /**
+     * Retrive the model object from the wizard.
+     * @return
+     */
+    public abstract Map<?, ?> getModel();
+}
diff --git a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
index 795a9c0..40696d3 100644
--- a/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
+++ b/plugins/org.yocto.bc.ui/src/org/yocto/bc/ui/wizards/FiniteStateWizardPage.java
@@ -1,160 +1,160 @@
-package org.yocto.bc.ui.wizards;
-import java.util.Map;
-
-import org.eclipse.jface.viewers.ISelectionChangedListener;
-import org.eclipse.jface.viewers.SelectionChangedEvent;
-import org.eclipse.jface.wizard.WizardPage;
-import org.eclipse.swt.events.FocusEvent;
-import org.eclipse.swt.events.FocusListener;
-import org.eclipse.swt.events.ModifyEvent;
-import org.eclipse.swt.events.ModifyListener;
-import org.eclipse.swt.events.SelectionEvent;
-import org.eclipse.swt.events.SelectionListener;
-import org.eclipse.swt.widgets.Composite;
-import org.eclipse.swt.widgets.Event;
-import org.eclipse.swt.widgets.Listener;
-
-public abstract class FiniteStateWizardPage extends WizardPage {
-    protected Map<String, Object> model = null;
-    protected FiniteStateWizard wizard = null;
-    private static boolean previousState = false;
-    /**
-     * @param pageName
-     */
-    protected FiniteStateWizardPage(String name, Map<String, Object> model) {
-        super(name);
-        this.model = model;
-        this.setPageComplete(false);
-    }
-
-    /*
-     * (non-Javadoc)
-     * 
-     * @see org.eclipse.jface.dialogs.IDialogPage#createControl(org.eclipse.swt.widgets.Composite)
-     */
-    public abstract void createControl(Composite parent);
-
-    protected void setModelWizard() {
-        if (wizard == null) {
-            wizard = (FiniteStateWizard)FiniteStateWizardPage.this.getWizard();
-        }
-    }
-    
-    /**
-     * Add page validation logic here. Returning <code>true</code> means that
-     * the page is complete and the user can go to the next page.
-     * 
-     * @return
-     */
-    protected abstract boolean validatePage();
-
-    /**
-     * This method should be implemented by ModelWizardPage classes. This method
-     * is called after the <code>validatePage()</code> returns successfully.
-     * Update the model with the contents of the controls on the page.
-     */
-    protected abstract void updateModel();
-
-    /**
-     * Helper method to see if a field has some sort of text in it.
-     * @param value
-     * @return
-     */
-    protected boolean hasContents(String value) {
-        if (value == null || value.length() == 0) {
-            return false;
-        } 
-        
-        return true;
-    }
-    
-    /**
-     * This method is called right before a page is displayed.
-     * This occurs on user action (Next/Back buttons).
-     */
-    public abstract void pageDisplay();
-    
-	/**
-	 * This method is called on the concrete WizardPage after the user has
-	 * gone to the page after.
-	 */
-	public abstract void pageCleanup();
-	
-	/* (non-Javadoc)
-	 * @see org.eclipse.jface.dialogs.IDialogPage#setVisible(boolean)
-	 */
-	public void setVisible(boolean arg0) {
-	    
-		if (!arg0 && previousState) {
-			pageCleanup();
-		} else if (arg0 && !previousState) {
-			pageDisplay();
-		} else if (arg0 && previousState) {
-			pageDisplay();
-		}
-		
-		previousState = arg0;
-		
-		super.setVisible(arg0);
-	}
-	
-    public class ValidationListener implements SelectionListener, ModifyListener, Listener, ISelectionChangedListener, FocusListener {
-
-        /*
-         * (non-Javadoc)
-         * 
-         * @see org.eclipse.swt.events.SelectionListener#widgetSelected(org.eclipse.swt.events.SelectionEvent)
-         */
-        public void widgetSelected(SelectionEvent e) {
-//            validate();
-        }
-
-        /*
-         * (non-Javadoc)
-         * 
-         * @see org.eclipse.swt.events.SelectionListener#widgetDefaultSelected(org.eclipse.swt.events.SelectionEvent)
-         */
-        public void widgetDefaultSelected(SelectionEvent e) {
-        }
-
-        /*
-         * (non-Javadoc)
-         * 
-         * @see org.eclipse.swt.events.ModifyListener#modifyText(org.eclipse.swt.events.ModifyEvent)
-         */
-        public void modifyText(ModifyEvent e) {
-            validate();
-        }
-
-        public void validate() {                       
-            if (validatePage()) {
-                updateModel();
-                setPageComplete(true);
-                return;
-            }
-
-            setPageComplete(false);
-        }
-
-        /* (non-Javadoc)
-         * @see org.eclipse.swt.widgets.Listener#handleEvent(org.eclipse.swt.widgets.Event)
-         */
-        public void handleEvent(Event event) {
-            
-            validate();
-        }
-
-        public void selectionChanged(SelectionChangedEvent event) {
-            validate();
-        }
-
-		@Override
-		public void focusGained(FocusEvent e) {
-		}
-
-		@Override
-		public void focusLost(FocusEvent e) {
-			validate();
-		}
-    }
-}
+package org.yocto.bc.ui.wizards;
+import java.util.Map;
+
+import org.eclipse.jface.viewers.ISelectionChangedListener;
+import org.eclipse.jface.viewers.SelectionChangedEvent;
+import org.eclipse.jface.wizard.WizardPage;
+import org.eclipse.swt.events.FocusEvent;
+import org.eclipse.swt.events.FocusListener;
+import org.eclipse.swt.events.ModifyEvent;
+import org.eclipse.swt.events.ModifyListener;
+import org.eclipse.swt.events.SelectionEvent;
+import org.eclipse.swt.events.SelectionListener;
+import org.eclipse.swt.widgets.Composite;
+import org.eclipse.swt.widgets.Event;
+import org.eclipse.swt.widgets.Listener;
+
+public abstract class FiniteStateWizardPage extends WizardPage {
+    protected Map<String, Object> model = null;
+    protected FiniteStateWizard wizard = null;
+    private static boolean previousState = false;
+    /**
+     * @param pageName
+     */
+    protected FiniteStateWizardPage(String name, Map<String, Object> model) {
+        super(name);
+        this.model = model;
+        this.setPageComplete(false);
+    }
+
+    /*
+     * (non-Javadoc)
+     * 
+     * @see org.eclipse.jface.dialogs.IDialogPage#createControl(org.eclipse.swt.widgets.Composite)
+     */
+    public abstract void createControl(Composite parent);
+
+    protected void setModelWizard() {
+        if (wizard == null) {
+            wizard = (FiniteStateWizard)FiniteStateWizardPage.this.getWizard();
+        }
+    }
+    
+    /**
+     * Add page validation logic here. Returning <code>true</code> means that
+     * the page is complete and the user can go to the next page.
+     * 
+     * @return
+     */
+    protected abstract boolean validatePage();
+
+    /**
+     * This method should be implemented by ModelWizardPage classes. This method
+     * is called after the <code>validatePage()</code> returns successfully.
+     * Update the model with the contents of the controls on the page.
+     */
+    protected abstract void updateModel();
+
+    /**
+     * Helper method to see if a field has some sort of text in it.
+     * @param value
+     * @return
+     */
+    protected boolean hasContents(String value) {
+        if (value == null || value.length() == 0) {
+            return false;
+        } 
+        
+        return true;
+    }
+    
+    /**
+     * This method is called right before a page is displayed.
+     * This occurs on user action (Next/Back buttons).
+     */
+    public abstract void pageDisplay();
+    
+	/**
+	 * This method is called on the concrete WizardPage after the user has
+	 * gone to the page after.
+	 */
+	public abstract void pageCleanup();
+	
+	/* (non-Javadoc)
+	 * @see org.eclipse.jface.dialogs.IDialogPage#setVisible(boolean)
+	 */
+	public void setVisible(boolean arg0) {
+	    
+		if (!arg0 && previousState) {
+			pageCleanup();
+		} else if (arg0 && !previousState) {
+			pageDisplay();
+		} else if (arg0 && previousState) {
+			pageDisplay();
+		}
+		
+		previousState = arg0;
+		
+		super.setVisible(arg0);
+	}
+	
+    public class ValidationListener implements SelectionListener, ModifyListener, Listener, ISelectionChangedListener, FocusListener {
+
+        /*
+         * (non-Javadoc)
+         * 
+         * @see org.eclipse.swt.events.SelectionListener#widgetSelected(org.eclipse.swt.events.SelectionEvent)
+         */
+        public void widgetSelected(SelectionEvent e) {
+//            validate();
+        }
+
+        /*
+         * (non-Javadoc)
+         * 
+         * @see org.eclipse.swt.events.SelectionListener#widgetDefaultSelected(org.eclipse.swt.events.SelectionEvent)
+         */
+        public void widgetDefaultSelected(SelectionEvent e) {
+        }
+
+        /*
+         * (non-Javadoc)
+         * 
+         * @see org.eclipse.swt.events.ModifyListener#modifyText(org.eclipse.swt.events.ModifyEvent)
+         */
+        public void modifyText(ModifyEvent e) {
+            validate();
+        }
+
+        public void validate() {                       
+            if (validatePage()) {
+                updateModel();
+                setPageComplete(true);
+                return;
+            }
+
+            setPageComplete(false);
+        }
+
+        /* (non-Javadoc)
+         * @see org.eclipse.swt.widgets.Listener#handleEvent(org.eclipse.swt.widgets.Event)
+         */
+        public void handleEvent(Event event) {
+            
+            validate();
+        }
+
+        public void selectionChanged(SelectionChangedEvent event) {
+            validate();
+        }
+
+		@Override
+		public void focusGained(FocusEvent e) {
+		}
+
+		@Override
+		public void focusLost(FocusEvent e) {
+			validate();
+		}
+    }
+}
-- 
1.7.9.5


