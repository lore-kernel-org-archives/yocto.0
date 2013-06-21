Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E9BE013DE
	for <yocto@yoctoproject.org>; Fri, 21 Jun 2013 05:44:56 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 7328B402C2;
	Fri, 21 Jun 2013 13:48:31 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri, 21 Jun 2013 14:44:45 +0200
Message-Id: <2424730fff49a5becf5921c4df6d01a4c9c5d78a.1371818609.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <bf0b2d82c7810aac76794cc7ce511e217d447ec3.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
	<8747086bfca592129ab38a4f0a90182488e5cc9c.1371818609.git.timo.mueller@bmw-carit.de>
	<3febae446e2129227471238802a4185719bddc99.1371818609.git.timo.mueller@bmw-carit.de>
	<eb8b7614daafd5a2c359a83dae533c62e2667bf6.1371818609.git.timo.mueller@bmw-carit.de>
	<8759d4ba2272a2f923431e7d761c8957ac594d60.1371818609.git.timo.mueller@bmw-carit.de>
	<bf0b2d82c7810aac76794cc7ce511e217d447ec3.1371818609.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371818609.git.timo.mueller@bmw-carit.de>
References: <cover.1371818609.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv2 6/8] plugins/sdk.ide: Add profile switch menu to the toolbar
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
X-List-Received-Date: Fri, 21 Jun 2013 12:44:57 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a project with a yocto nature is selected, the toolbar will show a
target profile menu which allows the user to switch the used target
profile of the project.

The content of this menu is dynamically created using the list of
globally defined target profiles. Additionally it will also contain
the project specific profile.

If the project specific profile is not yet defined for the selected
project, the button will be greyed out.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../OSGI-INF/l10n/bundle.properties                |   1 +
 plugins/org.yocto.sdk.ide/plugin.xml               |  57 +++++++++-
 .../sdk/ide/ProjectSpecificContributionItem.java   |  89 +++++++++++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 125 +++++++++++++++++++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   1 +
 .../sdk/ide/actions/ProfileSwitchHandler.java      |  26 ++++-
 6 files changed, 297 insertions(+), 2 deletions(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 1191af6..2031154 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -7,6 +7,7 @@ command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
 command.targetProfileSwitch.name = Change Target Profile
+command.targetProfileSwitch.label = Target Profiles
 command.targetProfileSwitch.description = Changes the target profile of a selected project
 command.targetProfileSwitch.parameter.name = Selected Target Profile
 projectType.name.0 = Yocto Project ADT Autotools Project
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 62f1297..aaa0a35 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -81,6 +81,10 @@
             id="org.yocto.sdk.ide.command.reconfigYocto"
             name="%command.name">
       </command>
+      <command
+            id="org.yocto.sdk.ide.command.disabled"
+            name="DisabledCommand">
+      </command>
    </extension>
    <extension
          point="org.eclipse.ui.handlers">
@@ -243,5 +247,56 @@
          </state>
       </command>
    </extension>
-
+   <extension
+         point="org.eclipse.ui.menus">
+      <menuContribution
+            allPopups="true"
+            locationURI="toolbar:org.eclipse.ui.main.toolbar?after=additions">
+         <toolbar
+               id="org.yocto.sdk.ide.profiles.toolbar">
+            <command
+                  commandId="org.yocto.sdk.ide.command.reconfigYocto"
+                  id="org.yocto.sdk.ide.profiles.toolbar.dropdown"
+                  label="%command.targetProfileSwitch.label"
+                  mode="FORCE_TEXT"
+                  style="pulldown"
+                  tooltip="%command.targetProfileSwitch.description">
+               <visibleWhen
+                     checkEnabled="false">
+                  <and>
+	                  <count
+	                        value="1">
+	                  </count>
+	                  <iterate
+	                        operator="and">
+	                     <adapt
+	                           type="org.eclipse.core.resources.IResource">
+	                        <test
+	                              property="org.eclipse.core.resources.projectNature"
+	                              value="org.yocto.sdk.ide.YoctoSDKNature">
+	                        </test>
+	                     </adapt>
+	                  </iterate>
+	               </and>
+               </visibleWhen>
+            </command>
+         </toolbar>
+      </menuContribution>
+      <menuContribution
+            allPopups="false"
+            locationURI="menu:org.yocto.sdk.ide.profiles.toolbar.dropdown">
+         <dynamic
+               class="org.yocto.sdk.ide.ProjectSpecificContributionItem"
+               id="org.yocto.sdk.ide.dynamic.projectSpecific.targetProfile">
+         </dynamic>
+         <separator
+               name="org.yocto.sdk.ide.profiles.separator"
+               visible="true">
+         </separator>
+         <dynamic
+               class="org.yocto.sdk.ide.TargetProfileContributionItem"
+               id="org.yocto.sdk.ide.dynamic.targetProfile">
+         </dynamic>
+      </menuContribution>
+   </extension>
 </plugin>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
new file mode 100644
index 0000000..41374a6
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/ProjectSpecificContributionItem.java
@@ -0,0 +1,89 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial implementation
+ *******************************************************************************/
+
+package org.yocto.sdk.ide;
+
+import java.util.ArrayList;
+
+import org.eclipse.core.commands.Command;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.jface.action.IContributionItem;
+import org.eclipse.ui.commands.ICommandService;
+import org.eclipse.ui.handlers.HandlerUtil;
+import org.eclipse.ui.menus.CommandContributionItem;
+import org.eclipse.ui.menus.CommandContributionItemParameter;
+import org.eclipse.ui.services.IServiceLocator;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.actions.ProfileSwitchHandler;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
+
+public class ProjectSpecificContributionItem extends TargetProfileContributionItem {
+	private static final String PROJECT_SPECIFIC_PROFILE =
+			"Preferences.Profile.ProjectSpecific.Profile.Label"; //$NON-NLS-N$
+	private static final String DISABLED_COMMAND_ID = "org.yocto.sdk.ide.command.disabled"; //$NON-NLS-N$
+
+	private IServiceLocator serviceLocator;
+
+	public ProjectSpecificContributionItem() {}
+
+	public ProjectSpecificContributionItem(String id) {
+		super(id);
+	}
+
+	@Override
+	protected IContributionItem[] getContributionItems() {
+		ArrayList<IContributionItem> items = new ArrayList<IContributionItem>();
+
+		IProject project = getSelectedProject(serviceLocator);
+		YoctoUIElement yoctoUIElement = ProjectPreferenceUtils.getElem(project);
+		SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(yoctoUIElement);
+
+		if ((result != SDKCheckResults.SDK_PASS)) {
+			CommandContributionItemParameter parameter = new CommandContributionItemParameter(serviceLocator,
+															null,
+															DISABLED_COMMAND_ID,
+															CommandContributionItem.STYLE_PUSH);
+
+			parameter.label = YoctoSDKMessages.getString(PROJECT_SPECIFIC_PROFILE);
+
+			items.add(new CommandContributionItem(parameter));
+		} else {
+			items.add(super.createProfileItem(serviceLocator, ProfileSwitchHandler.PROJECT_SPECIFIC_PARAMETER,
+												YoctoSDKMessages.getString(PROJECT_SPECIFIC_PROFILE)));
+		}
+
+		updateSelection();
+
+		return items.toArray(new IContributionItem[items.size()]);
+	}
+
+	@Override
+	public void initialize(IServiceLocator serviceLocator) {
+		this.serviceLocator = serviceLocator;
+	}
+
+	private void updateSelection() {
+		ICommandService commandService = (ICommandService) serviceLocator.getService(ICommandService.class);
+		Command command = commandService.getCommand(ProfileSwitchHandler.PROFILE_SWITCH_COMMAND);
+		IProject project = getSelectedProject(serviceLocator);
+
+		if (!ProjectPreferenceUtils.getUseProjectSpecificOption(project)) {
+			return;
+		}
+
+		try {
+			HandlerUtil.updateRadioState(command, ProfileSwitchHandler.PROJECT_SPECIFIC_PARAMETER);
+		} catch (ExecutionException e) {
+			// ignore
+		}
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
new file mode 100644
index 0000000..6e78e58
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
@@ -0,0 +1,125 @@
+/*******************************************************************************
+ * Copyright (c) 2013 BMW Car IT GmbH.
+ * All rights reserved. This program and the accompanying materials
+ * are made available under the terms of the Eclipse Public License v1.0
+ * which accompanies this distribution, and is available at
+ * http://www.eclipse.org/legal/epl-v10.html
+ *
+ * Contributors:
+ * BMW Car IT - initial implementation
+ *******************************************************************************/
+package org.yocto.sdk.ide;
+
+import java.util.ArrayList;
+import java.util.HashMap;
+import java.util.TreeSet;
+
+import org.eclipse.cdt.core.model.ICElement;
+import org.eclipse.cdt.core.model.ICProject;
+import org.eclipse.core.commands.Command;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IResource;
+import org.eclipse.core.runtime.IAdaptable;
+import org.eclipse.jface.action.IContributionItem;
+import org.eclipse.jface.viewers.ISelection;
+import org.eclipse.jface.viewers.ITreeSelection;
+import org.eclipse.ui.ISelectionService;
+import org.eclipse.ui.actions.CompoundContributionItem;
+import org.eclipse.ui.commands.ICommandService;
+import org.eclipse.ui.handlers.HandlerUtil;
+import org.eclipse.ui.handlers.RadioState;
+import org.eclipse.ui.menus.CommandContributionItem;
+import org.eclipse.ui.menus.CommandContributionItemParameter;
+import org.eclipse.ui.menus.IWorkbenchContribution;
+import org.eclipse.ui.services.IServiceLocator;
+import org.yocto.sdk.ide.actions.ProfileSwitchHandler;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+
+public class TargetProfileContributionItem extends CompoundContributionItem implements IWorkbenchContribution {
+	private IServiceLocator serviceLocator;
+
+	public TargetProfileContributionItem() {}
+
+	public TargetProfileContributionItem(String id) {
+		super(id);
+	}
+
+	protected CommandContributionItem createProfileItem(IServiceLocator serviceLocator,
+														String parameter, String label) {
+		CommandContributionItemParameter itemParameter;
+		itemParameter = new CommandContributionItemParameter(serviceLocator,
+														null,
+														ProfileSwitchHandler.PROFILE_SWITCH_COMMAND,
+														CommandContributionItem.STYLE_RADIO);
+
+		HashMap<String, String> params = new HashMap<String, String>();
+		params.put(RadioState.PARAMETER_ID, parameter);
+
+		itemParameter.label = label;
+		itemParameter.parameters = params;
+
+		return new CommandContributionItem(itemParameter);
+	}
+
+	@Override
+	protected IContributionItem[] getContributionItems() {
+		TreeSet<String> profiles = YoctoSDKUtils.getProfilesFromDefaultStore().getProfiles();
+		ArrayList<IContributionItem> items = new ArrayList<IContributionItem>();
+
+		for (String profile : profiles) {
+			items.add(createProfileItem(serviceLocator, profile, profile));
+		}
+
+		updateSelection();
+
+		return items.toArray(new IContributionItem[profiles.size()]);
+	}
+
+	public IProject getSelectedProject(IServiceLocator serviceLocator) {
+		ISelectionService selectionService = (ISelectionService) serviceLocator.getService(ISelectionService.class);
+		ISelection selection = selectionService.getSelection();
+
+		if (selection instanceof ITreeSelection) {
+			Object selectedItem = ((ITreeSelection) selection).getFirstElement();
+			if (selectedItem instanceof IResource) {
+				return ((IResource) selectedItem).getProject();
+			} else if (selectedItem instanceof ICElement) {
+				ICProject cProject = ((ICElement) selectedItem).getCProject();
+				if (cProject != null) {
+					return cProject.getProject();
+				}
+			} else if (selectedItem instanceof IAdaptable) {
+				Object projectObject = ((IAdaptable) selectedItem).getAdapter(IProject.class);
+				if (projectObject != null && projectObject instanceof IProject) {
+					return ((IProject) projectObject);
+				}
+			}
+		}
+
+		return null;
+	}
+
+	@Override
+	public void initialize(IServiceLocator serviceLocator) {
+		this.serviceLocator = serviceLocator;
+	}
+
+	private void updateSelection() {
+		ICommandService commandService = (ICommandService) serviceLocator.getService(ICommandService.class);
+		Command command = commandService.getCommand(ProfileSwitchHandler.PROFILE_SWITCH_COMMAND);
+		IProject project = getSelectedProject(serviceLocator);
+
+		if (ProjectPreferenceUtils.getUseProjectSpecificOption(project)) {
+			return;
+		}
+
+		try {
+			String selectedProfile = ProjectPreferenceUtils.getProfiles(project).getSelectedProfile();
+			HandlerUtil.updateRadioState(command, selectedProfile);
+		} catch (ExecutionException e) {
+			// ignore
+		}
+	}
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index d6b5cdb..e71b7dd 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -88,6 +88,7 @@ Preferences.Profile.Standard.Modification.Message = Standard cross development p
 
 Preferences.Profile.ProjectSpecific.Title = Use project specific settings
 Preferences.Profile.ProjectSpecific.Group.Title = Project specific settings:
+Preferences.Profile.ProjectSpecific.Profile.Label = Project specific profile
 
 Preferences.Profile.ProjectSpecific.Error.Title = Could not change to project specific target profile
 Preferences.Profile.ProjectSpecific.Error.Message = The project specific target profile is not defined for the project "{0}".\nYou can define it in the project's property page.  
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
index 38e3e6d..bd16a0a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
@@ -10,11 +10,15 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.actions;
 
+import java.util.Map;
+
 import org.eclipse.cdt.core.model.ICElement;
 import org.eclipse.cdt.core.model.ICProject;
 import org.eclipse.core.commands.AbstractHandler;
+import org.eclipse.core.commands.Command;
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.core.commands.State;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IAdaptable;
@@ -24,8 +28,11 @@ import org.eclipse.jface.preference.IPreferenceStore;
 import org.eclipse.jface.viewers.ISelection;
 import org.eclipse.jface.viewers.ITreeSelection;
 import org.eclipse.swt.widgets.Display;
+import org.eclipse.ui.commands.ICommandService;
+import org.eclipse.ui.commands.IElementUpdater;
 import org.eclipse.ui.handlers.HandlerUtil;
 import org.eclipse.ui.handlers.RadioState;
+import org.eclipse.ui.menus.UIElement;
 import org.yocto.sdk.ide.YoctoProfileElement;
 import org.yocto.sdk.ide.YoctoSDKChecker;
 import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
@@ -35,7 +42,7 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
-public class ProfileSwitchHandler extends AbstractHandler {
+public class ProfileSwitchHandler extends AbstractHandler implements IElementUpdater {
 	private static final String PROJECT_SPECIFIC_ERROR = "Preferences.Profile.ProjectSpecific.Error.Title";
 	private static final String PROJECT_SPECIFIC_ERROR_MESSAGE = "Preferences.Profile.ProjectSpecific.Error.Message";
 
@@ -107,4 +114,21 @@ public class ProfileSwitchHandler extends AbstractHandler {
 			ProjectPreferenceUtils.saveProfiles(profileSettings, project);
 		}
 	}
+
+	/*
+	 * Workaround for BUG 398647 to allow checking radio items
+	 * in a dynamic contribution
+	 *
+	 * https://bugs.eclipse.org/bugs/show_bug.cgi?id=398647
+	 */
+	@Override
+	public void updateElement(UIElement element, @SuppressWarnings("rawtypes") Map parameters) {
+			ICommandService service = (ICommandService) element.getServiceLocator().getService(ICommandService.class);
+			String state = (String) parameters.get(RadioState.PARAMETER_ID);
+			Command command = service.getCommand(PROFILE_SWITCH_COMMAND);
+			State commandState = command.getState(RadioState.STATE_ID);
+			if (commandState.getValue().equals(state)) {
+				element.setChecked(true);
+			}
+	}
 }
-- 
1.8.1.4


