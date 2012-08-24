Return-Path: <ioanax.grigoropol@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2C1AE01388
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:39:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 24 Aug 2012 08:39:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,304,1344236400"; d="scan'208";a="184516871"
Received: from ideapad (HELO localhost.localdomain) ([10.237.105.40])
	by azsmga001.ch.intel.com with ESMTP; 24 Aug 2012 08:39:21 -0700
From: Ioana Grigoropol <ioanax.grigoropol@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 24 Aug 2012 18:37:26 +0300
Message-Id: <1345822646-1755-1-git-send-email-ioanax.grigoropol@intel.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [PATCH] Yocto-BSP Properties - Layout, Grouping and Naming refactorization
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
X-List-Received-Date: Fri, 24 Aug 2012 15:39:24 -0000

	- re-grouped preferences by yocto-bsp logic
	- re-arranged & aligned controls

Signed-off-by: Ioana Grigoropol <ioanax.grigoropol@intel.com>
---
 .../sdk/remotetools/YoctoBspPropertyElement.java   |   23 +-
 .../sdk/remotetools/wizards/bsp/MainPage.java      |   11 +-
 .../remotetools/wizards/bsp/PropertiesPage.java    |  418 +++++++++++---------
 .../remotetools/wizards/bsp/YoctoBSPWizard.java    |    6 -
 4 files changed, 257 insertions(+), 201 deletions(-)

diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoBspPropertyElement.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoBspPropertyElement.java
index a67a5f8..e88b4bd 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoBspPropertyElement.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/YoctoBspPropertyElement.java
@@ -10,7 +10,7 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools;
 
-public class YoctoBspPropertyElement {
+public class YoctoBspPropertyElement implements Comparable<YoctoBspPropertyElement>{
 	private String name;
 	private String type;
 	private String value;
@@ -27,32 +27,39 @@ public class YoctoBspPropertyElement {
 	public String getName() {
 		return name;
 	}
-	
+
 	public void setName(String value) {
 		name = value;
 	}
-	
+
 	public String getType() {
 		return type;
 	}
-	
+
 	public void setType(String value) {
 		type = value;
 	}
-	
+
 	public String getDefaultValue() {
 		return defaultValue;
 	}
-	
+
 	public void setDefaultValue(String value) {
 		this.defaultValue = value;
 	}
-	
+
 	public String getValue() {
 		return value;
 	}
-	
+
 	public void setValue(String value) {
 		this.value = value;
 	}
+
+	@Override
+	public int compareTo(YoctoBspPropertyElement o) {
+		return type.compareTo(o.type);
+	}
+
+
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
index 4a1bbea..5899c8e 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/MainPage.java
@@ -79,7 +79,7 @@ public class MainPage extends WizardPage {
 	private YoctoBspElement bspElem;
 
 	public MainPage(YoctoBspElement element) {
-		super(PAGE_NAME, "yocto-bsp main page", null);
+		super(PAGE_NAME, "yocto-bsp Main page", null);
 
 		setMessage("Enter the required fields(with *) to create new Yocto Project BSP!");
 		this.bspElem = element;
@@ -89,15 +89,14 @@ public class MainPage extends WizardPage {
 	public void createControl(Composite parent) {
 		setErrorMessage(null);
 		Composite composite = new Composite(parent, SWT.NONE);
-		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		GridLayout layout = new GridLayout(2, false);
+		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
 		composite.setLayout(layout);
-
 		gd.horizontalSpan = 2;
 		composite.setLayoutData(gd);
 
 		labelMetadata = new Label(composite, SWT.NONE);
-		labelMetadata.setText("Meta_data location*: ");
+		labelMetadata.setText("Metadata location*: ");
 		Composite textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
 		textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
@@ -140,7 +139,7 @@ public class MainPage extends WizardPage {
 		});
 
 		labelBspOutput = new Label(composite, SWT.NONE);
-		labelBspOutput.setText("Bsp output location: ");
+		labelBspOutput.setText("BSP output location: ");
 
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
@@ -156,7 +155,7 @@ public class MainPage extends WizardPage {
 		setBtnBspOutLoc(addFileSelectButton(textContainer, textBspOutputLoc));
 
 		labelKArch = new Label(composite, SWT.NONE);
-		labelKArch.setText("kernel Architecture*: ");
+		labelKArch.setText("Kernel Architecture*: ");
 
 		textContainer = new Composite(composite, SWT.NONE);
 		textContainer.setLayout(new GridLayout(2, false));
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
index d5b38a4..13f17a3 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/PropertiesPage.java
@@ -10,6 +10,8 @@
  *******************************************************************************/
 package org.yocto.sdk.remotetools.wizards.bsp;
 
+import java.util.ArrayList;
+import java.util.Collections;
 import java.util.Enumeration;
 import java.util.HashSet;
 import java.util.Hashtable;
@@ -19,11 +21,8 @@ import org.eclipse.jface.dialogs.MessageDialog;
 import org.eclipse.jface.wizard.WizardPage;
 import org.eclipse.swt.SWT;
 import org.eclipse.swt.custom.ScrolledComposite;
-import org.eclipse.swt.events.ModifyEvent;
-import org.eclipse.swt.events.ModifyListener;
 import org.eclipse.swt.events.SelectionEvent;
 import org.eclipse.swt.events.SelectionListener;
-import org.eclipse.swt.layout.FillLayout;
 import org.eclipse.swt.layout.GridData;
 import org.eclipse.swt.layout.GridLayout;
 import org.eclipse.swt.widgets.Button;
@@ -39,7 +38,7 @@ import org.yocto.sdk.remotetools.YoctoBspPropertyElement;
 import org.yocto.sdk.remotetools.YoctoJSONHelper;
 /**
  *
- * Setting up the parameters for creating the new Yocto Bitbake project
+ * Setting up the parameters for creating the new Yocto BSP
  *
  * @author jzhang
  */
@@ -47,9 +46,9 @@ public class PropertiesPage extends WizardPage {
 	private static final String PAGE_NAME = "Properties";
 	private static final String VALUES_CMD_PREFIX = "yocto-bsp list ";
 	private static final String VALUES_CMD_SURFIX = " property  ";
-	private static final String KERNEL_CHOICE = "kernel_choice";
 	private static final String DEFAULT_KERNEL = "use_default_kernel";
 	private static final String SMP_NAME = "smp";
+	private static final String KERNEL_CHOICE = "kernel_choice";
 	private static final String EXISTING_KBRANCH_NAME = "existing_kbranch";
 	private static final String NEED_NEW_KBRANCH_NAME = "need_new_kbranch";
 	private static final String NEW_KBRANCH_NAME = "new_kbranch";
@@ -60,22 +59,28 @@ public class PropertiesPage extends WizardPage {
 
 	private Hashtable<YoctoBspPropertyElement, Control> propertyControlMap;
 	HashSet<YoctoBspPropertyElement> properties;
-	private Composite composite;
+
+	private ScrolledComposite composite;
+	private Composite controlContainer = null;
+
 	private YoctoBspElement bspElem = null;
-	private boolean karch_changed = false;
-	private Combo kcCombo;
-	private Combo kbCombo;
-	private Button newButton;
-	private Button existingButton;
+	private boolean kArchChanged = false;
+
+	private Combo kernelCombo;
+	private Combo branchesCombo;
+
+	private Button newBranchButton;
+	private Button existingBranchButton;
+
 	private Button smpButton;
-	private Composite kcContainer = null;
+
+	private Group kGroup = null;
 	private Group kbGroup = null;
-	private ScrolledComposite sc = null;
-	private Composite controlContainer = null;
+	private Group otherSettingsGroup = null;
 	private Group propertyGroup = null;
 
 	public PropertiesPage(YoctoBspElement element) {
-		super(PAGE_NAME, "yocto-bsp properties page", null);
+		super(PAGE_NAME, "yocto-bsp Properties page", null);
 		this.bspElem = element;
 	}
 
@@ -86,65 +91,25 @@ public class PropertiesPage extends WizardPage {
 		}
 
 		if (this.bspElem == null || this.bspElem.getKarch().isEmpty() || !this.bspElem.getKarch().contentEquals(element.getKarch())) {
-			karch_changed = true;
+			kArchChanged = true;
 		} else
-			karch_changed = false;
+			kArchChanged = false;
 
 		this.bspElem = element;
-		this.composite.setLayout(new FillLayout());
-		if (sc == null) {
-
-			sc = new ScrolledComposite(this.composite, SWT.H_SCROLL | SWT.V_SCROLL);
-
-			controlContainer = new Composite(sc, SWT.NONE);
-			controlContainer.setLayout(new GridLayout(1, false));
-			controlContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false));
-			if (kcContainer == null) {
-				kcContainer = new Composite(controlContainer, SWT.NONE);
-
-				kcContainer.setLayout(new FillLayout());
-				new Label (kcContainer, SWT.NONE).setText(KERNEL_CHOICE+":");
-				kcCombo = new Combo(kcContainer, SWT.DROP_DOWN | SWT.READ_ONLY);
-				smpButton = new Button(controlContainer, SWT.CHECK);
-				smpButton.setText("SMP Support");
-				smpButton.setSelection(true);
-
-				kbGroup= new Group(controlContainer, SWT.NONE);
-				kbGroup.setLayout(new FillLayout(SWT.VERTICAL));
-				kbGroup.setText("Kernel Branch Settings:");
-				newButton = new Button(kbGroup, SWT.RADIO);
-				newButton.setText("New");
-				newButton.setSelection(true);
-
-				existingButton = new Button(kbGroup, SWT.RADIO);
-				existingButton.setText("Existing");
-				existingButton.setSelection(false);
-
-				kbCombo = new Combo(kbGroup, SWT.DROP_DOWN | SWT.READ_ONLY);
-
-			}
-		}
-		if (karch_changed) {
-			kbCombo.removeAll();
-			newButton.setSelection(true);
-			existingButton.setSelection(false);
+		try {
+			if (kArchChanged) {
+				updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE);
 
-			updateKernelValues(KERNEL_CHOICES, KERNEL_CHOICE);
-		}
+				if (propertyGroup != null) {
+					for (Control cntrl : propertyGroup.getChildren()) {
+						cntrl.dispose();
+					}
+				}
 
-		try {
-			if (karch_changed) {
 				properties = YoctoJSONHelper.getProperties();
 
 				if (!properties.isEmpty()) {
 
-					if (propertyGroup != null) {
-						propertyGroup.dispose();
-					}
-					propertyGroup= new Group(controlContainer, SWT.NONE);
-					propertyGroup.setLayout(new FillLayout(SWT.VERTICAL));
-					propertyGroup.setText("Other Properties Settings:");
-
 					if (!element.getQarch().isEmpty()) {
 						YoctoBspPropertyElement qarch_elem = new YoctoBspPropertyElement();
 						qarch_elem.setName(QARCH_NAME);
@@ -153,115 +118,189 @@ public class PropertiesPage extends WizardPage {
 					}
 
 					propertyControlMap = new Hashtable<YoctoBspPropertyElement, Control>();
-					Iterator<YoctoBspPropertyElement> it = properties.iterator();
+
+					ArrayList<YoctoBspPropertyElement> propertiesList = new ArrayList<YoctoBspPropertyElement>(properties);
+					Collections.sort(propertiesList, Collections.reverseOrder());
+
+					Iterator<YoctoBspPropertyElement> it = propertiesList.iterator();
+					Composite comp = new Composite(propertyGroup, SWT.FILL);
+					GridLayout layout = new GridLayout(2, false);
+					GridData data = new GridData(GridData.FILL, GridData.FILL, true, false, 2, 1);
+					comp.setLayoutData(data);
+					comp.setLayout(layout);
 
 					while (it.hasNext()) {
 						// Get property
 						YoctoBspPropertyElement propElem = it.next();
-						String type  = propElem.getType();
+						String type = propElem.getType();
 						String name = propElem.getName();
 						if (type.contentEquals("edit")) {
-							Composite textContainer = new Composite(propertyGroup, SWT.NONE);
+							new Label (propertyGroup, SWT.FILL).setText(name + ":");
 
-							textContainer.setLayout(new FillLayout());
-							new Label (textContainer, SWT.NONE).setText(name+":");
+							Composite textContainer = new Composite(propertyGroup, SWT.NONE);
+							textContainer.setLayout(new GridLayout(1, false));
+							textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
 							Text text = new Text(textContainer, SWT.BORDER | SWT.SINGLE);
+							text.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 1, 1));
 							propertyControlMap.put(propElem, text);
 
 						} else if (type.contentEquals("boolean")) {
-							Composite booleanContainer = new Composite(propertyGroup, SWT.NONE);
-
-							booleanContainer.setLayout(new FillLayout(SWT.VERTICAL));
-
 							String default_value = propElem.getDefaultValue();
-							Button button = new Button(booleanContainer, SWT.CHECK);
+							Composite labelContainer = new Composite(propertyGroup, SWT.NONE);
+							labelContainer.setLayout(new GridLayout(2, false));
+							labelContainer.setLayoutData(new GridData(GridData.FILL_HORIZONTAL, GridData.FILL_VERTICAL, true, false, 2, 1));
+							Button button = new Button(propertyGroup, SWT.CHECK);
 							button.setText(name);
 							if (default_value.equalsIgnoreCase("y")) {
 								button.setSelection(true);
 							} else
 								button.setSelection(false);
 							propertyControlMap.put(propElem, button);
-
 						} else if (type.contentEquals("choicelist")) {
-							Composite choiceContainer = new Composite(propertyGroup, SWT.NONE);
-
-							choiceContainer.setLayout(new FillLayout());
-
-							new Label (choiceContainer, SWT.NONE).setText(name+":");
-							Combo combo = new Combo(choiceContainer, SWT.BORDER | SWT.READ_ONLY);
-							combo.setLayout(new FillLayout());
-
-							updateKernelValues(KERNEL_CHOICES, name);
+							new Label (propertyGroup, SWT.NONE).setText(name + ":");
 
+							Composite textContainer = new Composite(propertyGroup, SWT.NONE);
+							textContainer.setLayout(new GridLayout(1, false));
+							textContainer.setLayoutData(new GridData(SWT.FILL, SWT.CENTER, true, false, 1, 1));
+							Combo combo = new Combo(textContainer, SWT.READ_ONLY);
+							combo.setLayout(new GridLayout(2, false));
+							combo.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 1, 1));
+							combo.setItems(getBSPComboProperties(name));
 							propertyControlMap.put(propElem, combo);
 						}
 					}
 				}
-
+				composite.setMinSize(controlContainer.computeSize(SWT.DEFAULT, SWT.DEFAULT, true));
+				composite.computeSize(SWT.DEFAULT, SWT.DEFAULT);
+				controlContainer.pack();
+				this.composite.layout(true, true);
 			}
 		} catch (Exception e) {
 			e.printStackTrace();
 		}
-		sc.setContent(controlContainer);
-		sc.setExpandHorizontal(true);
-		sc.setExpandVertical(true);
-		sc.setMinSize(controlContainer.computeSize(SWT.DEFAULT, SWT.DEFAULT, true));
-		controlContainer.pack();
 
-		this.composite.layout(true, true);
-		kcCombo.addModifyListener(new ModifyListener() {
-			@Override
-			public void modifyText(ModifyEvent e) {
-				controlChanged(e.widget);
-			}
-		});
 
+	}
 
-		newButton.addSelectionListener(new SelectionListener() {
-			@Override
-			public void widgetDefaultSelected(SelectionEvent e) {}
+
+	@Override
+	public void createControl(Composite parent) {
+		this.composite = new ScrolledComposite(parent, SWT.H_SCROLL | SWT.V_SCROLL);
+		GridData gd = new GridData(SWT.FILL, SWT.FILL, true, false);
+		GridLayout layout = new GridLayout(2, true);
+		this.composite.setLayout(layout);
+
+		gd= new GridData(SWT.FILL, SWT.FILL, true, false);
+		gd.horizontalSpan = 2;
+		this.composite.setLayoutData(gd);
+
+		setControl(this.composite);
+
+		controlContainer = new Composite(composite, SWT.NONE);
+		controlContainer.setLayout(new GridLayout(1, true));
+		controlContainer.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false));
+
+		kGroup = new Group(controlContainer, SWT.FILL);
+		kGroup.setLayout(new GridLayout(2, false));
+		GridData data = new GridData(SWT.FILL, SWT.FILL, true, false, 2, 1);
+		kGroup.setLayoutData(data);
+		kGroup.setText("Kernel Settings:");
+
+		new Label (kGroup, SWT.NONE).setText("Kernel:");
+		Composite textContainer = new Composite(kGroup, SWT.NONE);
+		textContainer.setLayout(new GridLayout(1, false));
+		textContainer.setLayoutData(new GridData(GridData.FILL, GridData.CENTER, true, false, 1, 1));
+
+		kernelCombo = new Combo(textContainer, SWT.READ_ONLY);
+		kernelCombo.setLayout(new GridLayout(2, false));
+		kernelCombo.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 1, 1));
+
+		kernelCombo.addSelectionListener(new SelectionListener() {
 
 			@Override
 			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
 			}
+
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {
+			}
 		});
 
 
-		existingButton.addSelectionListener(new SelectionListener() {
-			@Override
-			public void widgetDefaultSelected(SelectionEvent e) {}
+		new Label(kGroup, SWT.NONE).setText("Kernel branch:");
+
+		textContainer = new Composite(kGroup, SWT.NONE);
+		textContainer.setLayout(new GridLayout(1, false));
+		textContainer.setLayoutData(new GridData(GridData.FILL, GridData.CENTER, true, false, 1, 1));
+		branchesCombo = new Combo(textContainer, SWT.READ_ONLY);
+		branchesCombo.setLayout(new GridLayout(2, false));
+		branchesCombo.setLayoutData(new GridData(SWT.FILL, SWT.FILL, true, false, 1, 1));
+		branchesCombo.addSelectionListener(new SelectionListener() {
 
 			@Override
 			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
 			}
-		});
 
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {
+			}
+		});
+		branchesCombo.setSize(200, 200);
+
+		kbGroup = new Group(kGroup, SWT.FILL);
+		kbGroup.setLayout(new GridLayout(1, true));
+		data = new GridData(SWT.FILL, SWT.FILL, true, false);
+		data.horizontalSpan = 2;
+		kbGroup.setLayoutData(data);
+		kbGroup.setText("Branch Settings:");
+
+		newBranchButton = new Button(kbGroup, SWT.RADIO);
+		newBranchButton.setText("Create a new branch from an existing one");
+		newBranchButton.setSelection(true);
+		SelectionListener listener = new SelectionListener() {
+			@Override
+			public void widgetDefaultSelected(SelectionEvent e) {}
 
-		kbCombo.addModifyListener(new ModifyListener() {
 			@Override
-			public void modifyText(ModifyEvent e) {
+			public void widgetSelected(SelectionEvent e) {
 				controlChanged(e.widget);
 			}
-		});
+		};
 
+		newBranchButton.addSelectionListener(listener);
 
-	}
+		existingBranchButton = new Button(kbGroup, SWT.RADIO);
+		existingBranchButton.setText("Use existing branch");
+		existingBranchButton.setSelection(false);
+		existingBranchButton.addSelectionListener(listener);
 
+		propertyGroup = new Group(controlContainer, SWT.NONE);
+		propertyGroup.setLayout(new GridLayout(2, false));
+		data = new GridData(GridData.FILL, GridData.FILL, true, false, 2, 1);
+		propertyGroup.setLayoutData(data);
+		propertyGroup.setText("BSP specific settings:");
 
-	@Override
-	public void createControl(Composite parent) {
-		this.composite = new Composite(parent, SWT.NONE);
-		GridData gd = new GridData(SWT.FILL, SWT.CENTER, true, false);
-		GridLayout layout = new GridLayout(2, false);
-		this.composite.setLayout(layout);
+		otherSettingsGroup = new Group(controlContainer, SWT.FILL);
+		otherSettingsGroup.setLayout(new GridLayout(2, true));
+		data = new GridData(SWT.FILL, SWT.FILL, true, false);
+		data.horizontalSpan = 2;
+		otherSettingsGroup.setLayoutData(data);
+		otherSettingsGroup.setText("Other Settings:");
 
-		gd= new GridData(SWT.FILL, SWT.CENTER, true, false);
-		gd.horizontalSpan= 2;
-		this.composite.setLayoutData(gd);
+		smpButton = new Button(otherSettingsGroup, SWT.CHECK);
+		smpButton.setText("Enable SMP support");
+		smpButton.setSelection(true);
 
-		setControl(this.composite);
+		this.composite.layout(true, true);
+
+		composite.setContent(controlContainer);
+		composite.setExpandHorizontal(true);
+		composite.setExpandVertical(true);
+		composite.setMinSize(controlContainer.computeSize(SWT.DEFAULT, SWT.DEFAULT, true));
+		controlContainer.pack();
+		composite.pack();
 	}
 
 	@Override
@@ -270,62 +309,62 @@ public class PropertiesPage extends WizardPage {
 	}
 
 	public HashSet<YoctoBspPropertyElement> getProperties() {
-		String kcSelection = kcCombo.getText();
-		String kbSelection = kbCombo.getText();
-		YoctoBspPropertyElement kc_element = new YoctoBspPropertyElement();
-		kc_element.setName(KERNEL_CHOICE);
-		kc_element.setValue(kcSelection);
-		properties.add(kc_element);
-		YoctoBspPropertyElement default_element = new YoctoBspPropertyElement();
-		default_element.setName(DEFAULT_KERNEL);
-		default_element.setValue("n");
-		properties.add(default_element);
-
-		YoctoBspPropertyElement smp_element = new YoctoBspPropertyElement();
-		smp_element.setName(SMP_NAME);
+		String kcSelection = kernelCombo.getText();
+		String kbSelection = branchesCombo.getText();
+		YoctoBspPropertyElement kcElement = new YoctoBspPropertyElement();
+		kcElement.setName(KERNEL_CHOICE);
+		kcElement.setValue(kcSelection);
+		properties.add(kcElement);
+		YoctoBspPropertyElement defaultElement = new YoctoBspPropertyElement();
+		defaultElement.setName(DEFAULT_KERNEL);
+		defaultElement.setValue("n");
+		properties.add(defaultElement);
+
+		YoctoBspPropertyElement smpElement = new YoctoBspPropertyElement();
+		smpElement.setName(SMP_NAME);
 		if (smpButton.getSelection())
-			smp_element.setValue("y");
+			smpElement.setValue("y");
 		else
-			smp_element.setValue("n");
-		properties.add(smp_element);
-
-		YoctoBspPropertyElement newkb_element = new YoctoBspPropertyElement();
-		YoctoBspPropertyElement kb_element = new YoctoBspPropertyElement();
-
-		newkb_element.setName(NEED_NEW_KBRANCH_NAME);
-		if (newButton.getSelection()) {
-			newkb_element.setValue("y");
-			properties.add(newkb_element);
-			kb_element.setName(NEW_KBRANCH_NAME);
-			kb_element.setValue(kbSelection);
-			properties.add(kb_element);
+			smpElement.setValue("n");
+		properties.add(smpElement);
+
+		YoctoBspPropertyElement newKbElement = new YoctoBspPropertyElement();
+		YoctoBspPropertyElement kbElement = new YoctoBspPropertyElement();
+
+		newKbElement.setName(NEED_NEW_KBRANCH_NAME);
+		if (newBranchButton.getSelection()) {
+			newKbElement.setValue("y");
+			properties.add(newKbElement);
+			kbElement.setName(NEW_KBRANCH_NAME);
+			kbElement.setValue(kbSelection);
+			properties.add(kbElement);
 		} else {
-			newkb_element.setValue("n");
-			properties.add(newkb_element);
-			kb_element.setName(EXISTING_KBRANCH_NAME);
-			kb_element.setValue(kbSelection);
-			properties.add(kb_element);
+			newKbElement.setValue("n");
+			properties.add(newKbElement);
+			kbElement.setName(EXISTING_KBRANCH_NAME);
+			kbElement.setValue(kbSelection);
+			properties.add(kbElement);
 		}
 
 		return properties;
 	}
 
 	public boolean validatePage() {
-		if (kcCombo == null)
+		if (kernelCombo == null)
 			return false;
 
-		if ((kcCombo != null) && (kbCombo != null)) {
-			String kcSelection = kcCombo.getText();
-			String kbSelection = kbCombo.getText();
+		if ((kernelCombo != null) && (branchesCombo != null)) {
+			String kcSelection = kernelCombo.getText();
+			String kbSelection = branchesCombo.getText();
 			if ((kcSelection == null) || (kbSelection == null) || (kcSelection.isEmpty()) || (kbSelection.isEmpty())) {
-				setErrorMessage("Please select kernel_choice and kernel_branch!");
+				setErrorMessage("Please choose a kernel and a specific branch!");
 				return false;
 			}
 		}
 		if ((propertyControlMap != null)) {
 			if (!propertyControlMap.isEmpty()) {
 				Enumeration<YoctoBspPropertyElement> keys = propertyControlMap.keys();
-				while( keys.hasMoreElements() ) {
+				while (keys.hasMoreElements()) {
 					YoctoBspPropertyElement key = keys.nextElement();
 					Control control = propertyControlMap.get(key);
 					String type = key.getType();
@@ -362,6 +401,7 @@ public class PropertiesPage extends WizardPage {
 
 	private void updateProperties(YoctoBspPropertyElement element) {
 		Iterator<YoctoBspPropertyElement> it = properties.iterator();
+
 		while (it.hasNext()) {
 			YoctoBspPropertyElement propElem = it.next();
 			if (propElem.getName().contentEquals(element.getName())) {
@@ -375,37 +415,28 @@ public class PropertiesPage extends WizardPage {
 	private void controlChanged(Widget widget) {
 		setErrorMessage(null);
 
-		String kernel_choice = kcCombo.getText();
+		String kernel_choice = kernelCombo.getText();
 		if ((kernel_choice == null) || (kernel_choice.isEmpty())) {
-			setErrorMessage("Please selecte kernel_choice!");
+			setErrorMessage("Please choose kernel !");
 			return;
 		}
-		if (widget == kcCombo) {
-			newButton.setSelection(true);
-			existingButton.setSelection(false);
-			kbCombo.removeAll();
-
+		if (widget == kernelCombo) {
 			updateKernelValues(KERNEL_BRANCHES, "\\\"" + kernel_choice + "\\\"." + NEW_KBRANCH_NAME);
-		} else if (widget == kbCombo) {
+		} else if (widget == branchesCombo) {
 			setErrorMessage(null);
-		} else if (widget == newButton) {
-
-			boolean newBranch = newButton.getSelection();
-
-			if (newBranch) {
+			branchesCombo.computeSize(SWT.DEFAULT, SWT.DEFAULT);
+		} else if (widget == newBranchButton || widget == existingBranchButton) {
+			System.out.println("aici " + widget.toString());
+			if (newBranchButton.getSelection()) {
 				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + NEW_KBRANCH_NAME);
 			} else {
 				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
 			}
-		} else if (widget == existingButton) {
-			boolean existingBranch = existingButton.getSelection();
-
-			if (existingBranch) {
-				updateKernelValues(KERNEL_BRANCHES, "\"" + kernel_choice + "\"." + EXISTING_KBRANCH_NAME);
-			}
 		}
 		canFlipToNextPage();
 		getWizard().getContainer().updateButtons();
+		this.composite.layout(true, true);
+		composite.pack();
 	}
 
 	private void updateKernelValues(final String value, String property) {
@@ -416,16 +447,41 @@ public class PropertiesPage extends WizardPage {
 			build_dir = bspElem.getBuildLoc();
 
 		String valuesCmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
-
 		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(),  new KernelBranchesGetter(valuesCmd), "Loading Kernel " + value);
 		progressDialog.run();
 		BSPAction action = progressDialog.getBspAction();
 		if (action.getItems() != null) {
-			if (value == KERNEL_CHOICES)
-				kcCombo.setItems(action.getItems());
-			else if (value == KERNEL_BRANCHES)
-				kbCombo.setItems(action.getItems());
+			if (value.equals(KERNEL_CHOICES)) {
+				kernelCombo.setItems(action.getItems());
+				kernelCombo.pack();
+			} else if (value.equals(KERNEL_BRANCHES)) {
+				branchesCombo.setItems(action.getItems());
+				branchesCombo.pack();
+			}
+			composite.setMinSize(controlContainer.computeSize(SWT.DEFAULT, SWT.DEFAULT, true));
 		} else if (action.getMessage() != null)
 			MessageDialog.openError(getShell(), "Yocto-BSP", action.getMessage());
+		composite.setMinSize(controlContainer.computeSize(SWT.DEFAULT, SWT.DEFAULT, true));
+	}
+
+	private String[] getBSPComboProperties(String property) {
+		String build_dir = "";
+		if ((bspElem.getBuildLoc() == null) || bspElem.getBuildLoc().isEmpty())
+			build_dir = bspElem.getMetadataLoc()+"/build";
+		else
+			build_dir = bspElem.getBuildLoc();
+
+		String valuesCmd = "export BUILDDIR=" + build_dir + ";" + bspElem.getMetadataLoc() + "/scripts/" + VALUES_CMD_PREFIX + bspElem.getKarch() + VALUES_CMD_SURFIX + property;
+		BSPProgressDialog progressDialog = new BSPProgressDialog(getShell(),  new KernelBranchesGetter(valuesCmd), "Loading property " + property + "values");
+		progressDialog.run();
+		BSPAction action = progressDialog.getBspAction();
+
+		if (action.getItems() != null) {
+			return action.getItems();
+		} else if (action.getMessage() != null) {
+			MessageDialog.openError(getShell(), "Yocto-BSP", action.getMessage());
+			return new String[]{};
+		}
+		return new String[]{};
 	}
 }
diff --git a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
index bf08413..f8e0781 100644
--- a/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
+++ b/plugins/org.yocto.sdk.remotetools/src/org/yocto/sdk/remotetools/wizards/bsp/YoctoBSPWizard.java
@@ -74,12 +74,6 @@ public class YoctoBSPWizard extends Wizard {
 			HashSet<YoctoBspPropertyElement> properties = propertiesPage.getProperties();
 			YoctoJSONHelper.createBspJSONFile(properties);
 
-//			BSPAction createPropertiesAction = createPropertiesFile();
-//			if (createPropertiesAction.getMessage() !=  null && !createPropertiesAction.getMessage().isEmpty()) {
-//				MessageDialog.openError(getShell(),"Yocto-BSP", createPropertiesAction.getMessage());
-//				return false;
-//			}
-
 			BSPAction createBSPAction = createBSP();
 			if (createBSPAction.getMessage() !=  null && !createBSPAction.getMessage().isEmpty()) {
 				MessageDialog.openError(getShell(),"Yocto-BSP", createBSPAction.getMessage());
-- 
1.7.9.5


