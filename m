Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22406E01554
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2013 08:33:49 -0700 (PDT)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.105])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 9735C402B3;
	Tue, 25 Jun 2013 16:37:08 +0200 (CEST)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Tue, 25 Jun 2013 17:33:43 +0200
Message-Id: <9301cceee7ee98f3d4b306ffc7e4df37de2f32c5.1372170704.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <3136367127ec958a69d3f812bf6f6cffb3d23b42.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
	<8919d96da8a2ff55ff0bea99af6ba4f931e79300.1372170704.git.timo.mueller@bmw-carit.de>
	<773e9adacf475c19c2ff25d8812b54a417415dc6.1372170704.git.timo.mueller@bmw-carit.de>
	<38f1a1a86e0d37470ef7779e0be4bf04f941ce10.1372170704.git.timo.mueller@bmw-carit.de>
	<3136367127ec958a69d3f812bf6f6cffb3d23b42.1372170704.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1372170704.git.timo.mueller@bmw-carit.de>
References: <cover.1372170704.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [PATCHv3 5/8] plugins/sdk.ide: Add command to switch the target profile
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
X-List-Received-Date: Tue, 25 Jun 2013 15:33:49 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The command can be used in a radio group to switch the target profile
of a selected project.

Radio items should call this command handing over the name of the
target profile as the command's parameter.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../OSGI-INF/l10n/bundle.properties                |   3 +
 plugins/org.yocto.sdk.ide/plugin.xml               |  18 ++++
 .../org/yocto/sdk/ide/YoctoSDKMessages.properties  |   3 +
 .../sdk/ide/actions/ProfileSwitchHandler.java      | 110 +++++++++++++++++++++
 4 files changed, 134 insertions(+)
 create mode 100644 plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java

diff --git a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
index 48eb653..1191af6 100644
--- a/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.sdk.ide/OSGI-INF/l10n/bundle.properties
@@ -6,6 +6,9 @@ extension.name.2 = YoctoSDKCMakeNature
 command.name = ReconfigureYoctoProject
 command.label.0 = Change Yocto Project Settings
 command.mnemonic = C
+command.targetProfileSwitch.name = Change Target Profile
+command.targetProfileSwitch.description = Changes the target profile of a selected project
+command.targetProfileSwitch.parameter.name = Selected Target Profile
 projectType.name.0 = Yocto Project ADT Autotools Project
 projectProperties.label.0 = Yocto Project Settings
 Bundle-Vendor = yoctoproject.org
diff --git a/plugins/org.yocto.sdk.ide/plugin.xml b/plugins/org.yocto.sdk.ide/plugin.xml
index 7ea55c7..62f1297 100644
--- a/plugins/org.yocto.sdk.ide/plugin.xml
+++ b/plugins/org.yocto.sdk.ide/plugin.xml
@@ -225,5 +225,23 @@
          </filter>
       </page>
    </extension>
+   <extension
+         point="org.eclipse.ui.commands">
+      <command
+            defaultHandler="org.yocto.sdk.ide.actions.ProfileSwitchHandler"
+            description="%command.targetProfileSwitch.description"
+            id="org.yocto.sdk.ide.targetProfile.switch"
+            name="%command.targetProfileSwitch.name">
+         <commandParameter
+               id="org.eclipse.ui.commands.radioStateParameter"
+               name="%command.targetProfileSwitch.parameter.name"
+               optional="false">
+         </commandParameter>
+         <state
+               class="org.eclipse.ui.handlers.RadioState:project-specific"
+               id="org.eclipse.ui.commands.radioState">
+         </state>
+      </command>
+   </extension>
 
 </plugin>
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
index 4ff1574..a953d6f 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKMessages.properties
@@ -89,6 +89,9 @@ Preferences.Profile.Standard.Modification.Message = Standard cross development p
 Preferences.Profile.ProjectSpecific.Title = Use project specific settings
 Preferences.Profile.ProjectSpecific.Group.Title = Project specific settings:
 
+Preferences.Profile.ProjectSpecific.Error.Title = Could not change to project specific target profile
+Preferences.Profile.ProjectSpecific.Error.Message = The project specific target profile is not defined for the project "{0}".\nYou can define it in the project's property page.
+
 Console.SDK.Name = Yocto Project Console
 
 LaunchConfig.Type.Name = org.eclipse.ui.externaltools.ProgramLaunchConfigurationType
diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
new file mode 100644
index 0000000..e12597e
--- /dev/null
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/actions/ProfileSwitchHandler.java
@@ -0,0 +1,110 @@
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
+package org.yocto.sdk.ide.actions;
+
+import org.eclipse.cdt.core.model.ICElement;
+import org.eclipse.cdt.core.model.ICProject;
+import org.eclipse.core.commands.AbstractHandler;
+import org.eclipse.core.commands.ExecutionEvent;
+import org.eclipse.core.commands.ExecutionException;
+import org.eclipse.core.resources.IProject;
+import org.eclipse.core.resources.IResource;
+import org.eclipse.core.runtime.IAdaptable;
+import org.eclipse.core.runtime.Status;
+import org.eclipse.jface.dialogs.ErrorDialog;
+import org.eclipse.jface.preference.IPreferenceStore;
+import org.eclipse.jface.viewers.ISelection;
+import org.eclipse.jface.viewers.ITreeSelection;
+import org.eclipse.swt.widgets.Display;
+import org.eclipse.ui.handlers.HandlerUtil;
+import org.eclipse.ui.handlers.RadioState;
+import org.yocto.sdk.ide.YoctoProfileElement;
+import org.yocto.sdk.ide.YoctoSDKChecker;
+import org.yocto.sdk.ide.YoctoSDKChecker.SDKCheckResults;
+import org.yocto.sdk.ide.YoctoSDKMessages;
+import org.yocto.sdk.ide.YoctoSDKPlugin;
+import org.yocto.sdk.ide.YoctoUIElement;
+import org.yocto.sdk.ide.utils.ProjectPreferenceUtils;
+import org.yocto.sdk.ide.utils.YoctoSDKUtils;
+
+public class ProfileSwitchHandler extends AbstractHandler {
+	private static final String PROJECT_SPECIFIC_ERROR = "Preferences.Profile.ProjectSpecific.Error.Title";
+	private static final String PROJECT_SPECIFIC_ERROR_MESSAGE = "Preferences.Profile.ProjectSpecific.Error.Message";
+
+	public static final String PROFILE_SWITCH_COMMAND = "org.yocto.sdk.ide.targetProfile.switch"; //$NON-NLS-N$
+	public static final String PROJECT_SPECIFIC_PARAMETER = "##PROJECT_SPECIFIC_PROFILE##"; //$NON-NLS-N$
+
+	@Override
+	public Object execute(ExecutionEvent event) throws ExecutionException {
+		if(HandlerUtil.matchesRadioState(event)) {
+			return null;
+		}
+
+		String currentState = event.getParameter(RadioState.PARAMETER_ID);
+		HandlerUtil.updateRadioState(event.getCommand(), currentState);
+
+		switchProfile(getSelectedProject(event), currentState);
+
+		return null;
+	}
+
+	public IProject getSelectedProject(ExecutionEvent event) {
+		ISelection selection = HandlerUtil.getCurrentSelection(event);
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
+	private void switchProfile(IProject project, String selectedProfile) {
+		if (PROJECT_SPECIFIC_PARAMETER.equals(selectedProfile)) {
+			YoctoUIElement yoctoUIElement = ProjectPreferenceUtils.getElem(project);
+			SDKCheckResults result = YoctoSDKChecker.checkYoctoSDK(yoctoUIElement);
+
+			if ((result != SDKCheckResults.SDK_PASS)) {
+				Display display = Display.getCurrent();
+				ErrorDialog.openError(display.getActiveShell(),
+										YoctoSDKMessages.getString(PROJECT_SPECIFIC_ERROR),
+										YoctoSDKMessages.getFormattedString(PROJECT_SPECIFIC_ERROR_MESSAGE,
+															project.getName()),
+										new Status(Status.ERROR, YoctoSDKPlugin.PLUGIN_ID, result.getMessage()));
+				return;
+			}
+
+			ProjectPreferenceUtils.saveElemToProjectEnv(yoctoUIElement, project);
+			ProjectPreferenceUtils.saveUseProjectSpecificOption(project, true);
+		} else {
+			IPreferenceStore store = YoctoSDKPlugin.getProfilePreferenceStore(selectedProfile);
+			YoctoUIElement yoctoUIElement = YoctoSDKUtils.getElemFromStore(store);
+			ProjectPreferenceUtils.saveElemToProjectEnv(yoctoUIElement, project);
+			ProjectPreferenceUtils.saveUseProjectSpecificOption(project, false);
+
+			YoctoProfileElement profileSettings = ProjectPreferenceUtils.getProfiles(project);
+			profileSettings.setSelectedProfile(selectedProfile);
+			ProjectPreferenceUtils.saveProfiles(profileSettings, project);
+		}
+	}
+}
-- 
1.8.1.4


