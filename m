Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AC9CE01542
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2013 06:30:36 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id C154C402C2;
	Thu, 13 Jun 2013 14:34:45 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Thu, 13 Jun 2013 15:30:27 +0200
Message-Id: <c7b3c3b51dfe1b1597cc41c44ac34ab57b632c02.1371123125.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1273d2f43146b4358c82d9ca8b8ee886ce7a5301.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
	<53ccaeae06f287489ab1b46e5ebc217149dbcd62.1371123125.git.timo.mueller@bmw-carit.de>
	<d2fcb89f435332b6958583ccd22d2cbaa9a6b05c.1371123125.git.timo.mueller@bmw-carit.de>
	<4b8028eacf1dde7280092810620f4eab86383530.1371123125.git.timo.mueller@bmw-carit.de>
	<7e8f36f370b0c2904b71754d14d7d48b6fb970c5.1371123125.git.timo.mueller@bmw-carit.de>
	<1273d2f43146b4358c82d9ca8b8ee886ce7a5301.1371123125.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1371123125.git.timo.mueller@bmw-carit.de>
References: <cover.1371123125.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCH 6/7] plugins/sdk.ide: Add profile switch menu to the toolbar
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
X-List-Received-Date: Thu, 13 Jun 2013 13:30:37 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

If a project with a yocto nature is selected, the toolbar will show a
target profile menu which allows the user to switch the used target
profile of the project.

The content of this menu is dynamically created using the list of
globally defined target profiles.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../OSGI-INF/l10n/bundle.properties                |   2 +
 plugins/org.yocto.sdk.ide/plugin.xml               |  57 ++++++++++
 .../sdk/ide/TargetProfileContributionItem.java     | 121 +++++++++++++++++++++
 .../sdk/ide/actions/ProfileSwitchHandler.java      |  26 ++++-
 4 files changed, 205 insertions(+), 1 deletion(-)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 1191af6..f60df76 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -7,8 +7,10 @@ command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
 command.targetProfileSwitch.name = Change Target Profile
+command.targetProfileSwitch.label = Target Profiles
 command.targetProfileSwitch.description = Changes the target profile of a selected project
 command.targetProfileSwitch.parameter.name = Selected Target Profile
+command.targetProfileSwitch.projectSpeficic.label = Project Specific
 projectType.name.0 = Yocto Project ADT Autotools Project
 projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 62f1297..9ff8473 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -243,5 +243,62 @@
          </state>
       </command>
    </extension>
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
+         <command
+               commandId="org.yocto.sdk.ide.targetProfile.switch"
+               label="%command.targetProfileSwitch.projectSpeficic.label"
+               style="radio">
+            <parameter
+                  name="org.eclipse.ui.commands.radioStateParameter"
+                  value="project-specific">
+            </parameter>
+         </command>
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
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
new file mode 100644
index 0000000..88b4a11
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/TargetProfileContributionItem.java
@@ -0,0 +1,121 @@
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
+	@Override
+	protected IContributionItem[] getContributionItems() {
+		TreeSet<String> profiles = YoctoSDKUtils.getProfilesFromDefaultStore().getProfiles();
+		ArrayList<IContributionItem> items = new ArrayList<IContributionItem>();
+
+		CommandContributionItemParameter parameter;
+		for (String profile : profiles) {
+			parameter = new CommandContributionItemParameter(serviceLocator, 
+															null,
+															ProfileSwitchHandler.PROFILE_SWITCH_COMMAND,
+															CommandContributionItem.STYLE_RADIO);
+
+			HashMap<String, String> params = new HashMap<String, String>();
+			params.put(RadioState.PARAMETER_ID, profile);
+
+			parameter.label = profile;
+			parameter.parameters = params;
+
+			items.add(new CommandContributionItem(parameter));
+		}
+
+		updateSelection();
+
+		return items.toArray(new IContributionItem[profiles.size()]);
+	}
+
+	private void updateSelection() {
+		ICommandService commandService = (ICommandService) serviceLocator.getService(ICommandService.class);
+		Command command = commandService.getCommand(ProfileSwitchHandler.PROFILE_SWITCH_COMMAND);
+		IProject project = getSelectedProject();
+
+		try {
+			if (ProjectPreferenceUtils.getUseProjectSpecificOption(project)) {
+				HandlerUtil.updateRadioState(command, ProfileSwitchHandler.PROJECT_SPECIFIC_PARAMETER);
+				return;
+			}
+
+			String selectedProfile = ProjectPreferenceUtils.getProfiles(project).getSelectedProfile();
+			HandlerUtil.updateRadioState(command, selectedProfile);
+		} catch (ExecutionException e) {
+			// ignore
+		}
+	}
+
+	public IProject getSelectedProject() {
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
+}
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
index f751244..548458a 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
@@ -10,12 +10,16 @@
  *******************************************************************************/
 package org.yocto.sdk.ide.actions;
 
+import java.util.Map;
+
 import org.eclipse.cdt.core.model.ICElement;
 import org.eclipse.cdt.core.model.ICProject;
+import org.eclipse.core.commands.Command;
 import org.eclipse.core.commands.ExecutionEvent;
 import org.eclipse.core.commands.ExecutionException;
 import org.eclipse.core.commands.IHandler;
 import org.eclipse.core.commands.IHandlerListener;
+import org.eclipse.core.commands.State;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IResource;
 import org.eclipse.core.runtime.IAdaptable;
@@ -25,8 +29,11 @@ import org.eclipse.jface.preference.IPreferenceStore;
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
@@ -36,7 +43,7 @@ import org.yocto.sdk.ide.YoctoUIElement;
 import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
 import org.yocto.sdk.ide.utils.YoctoSDKUtils;
 
-public class ProfileSwitchHandler implements IHandler {
+public class ProfileSwitchHandler implements IHandler, IElementUpdater {
 	private static final String PROJECT_SPECIFIC_ERROR = "Preferences.Profile.ProjectSpecific.Error.Title";
 	private static final String PROJECT_SPECIFIC_ERROR_MESSAGE = "Preferences.Profile.ProjectSpecific.Error.Message";
 
@@ -127,4 +134,21 @@ public class ProfileSwitchHandler implements IHandler {
 
 	@Override
 	public void removeHandlerListener(IHandlerListener handlerListener) {}
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


