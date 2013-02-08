Return-Path: <timo.mueller@oss.bmw-carit.de>
Received: from linuxmail.bmw-carit.de (mail.bmw-carit.de [62.245.222.98])
	(using TLSv1 with cipher ADH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E993CE0047F
	for <yocto@yoctoproject.org>; Fri,  8 Feb 2013 05:28:22 -0800 (PST)
Received: from localhost (mysterion.bmw-carit.intra [192.168.101.53])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: timo.mueller)
	by linuxmail.bmw-carit.de (Postfix) with ESMTPSA id 0ED214009D;
	Fri,  8 Feb 2013 13:47:55 +0100 (CET)
From: Timo Mueller <mail@timomueller.eu>
To: yocto@yoctoproject.org
Date: Fri,  8 Feb 2013 14:28:16 +0100
Message-Id: <0c05c26bf5ec89ec5d2e0d65ca747b4f7e39575a.1360326418.git.timo.mueller@bmw-carit.de>
X-Mailer: git-send-email 1.7.11.7
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
In-Reply-To: <cover.1360326418.git.timo.mueller@bmw-carit.de>
References: <cover.1360326418.git.timo.mueller@bmw-carit.de>
Cc: Timo Mueller <timo.mueller@bmw-carit.de>
Subject: [RFC v1 1/5] plugins/sdk.ide: Allow storage of yocto settings in project preferences
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
X-List-Received-Date: Fri, 08 Feb 2013 13:28:23 -0000

From: Timo Mueller <timo.mueller@bmw-carit.de>

The added functions allow storing the yocto settings in the
preferences store of a project. Project-specific yocto settings as
well as the used profiles can be stored.

Signed-off-by: Timo Mueller <timo.mueller@bmw-carit.de>
---
 .../src/org/yocto/sdk/ide/YoctoSDKUtils.java       | 110 +++++++++++++++++++++
 1 file changed, 110 insertions(+)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
index 12af7e3..857928c 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/YoctoSDKUtils.java
@@ -32,9 +32,13 @@ import org.eclipse.cdt.core.settings.model.ICConfigurationDescription;
 import org.eclipse.cdt.core.settings.model.ICProjectDescription;
 import org.eclipse.core.resources.IProject;
 import org.eclipse.core.resources.IProjectDescription;
+import org.eclipse.core.resources.ProjectScope;
 import org.eclipse.core.runtime.CoreException;
 import org.eclipse.core.runtime.IProgressMonitor;
+import org.eclipse.core.runtime.preferences.IEclipsePreferences;
+import org.eclipse.core.runtime.preferences.IScopeContext;
 import org.eclipse.jface.preference.IPreferenceStore;
+import org.osgi.service.prefs.BackingStoreException;
 import org.yocto.sdk.ide.preferences.PreferenceConstants;
 
 public class YoctoSDKUtils {
@@ -62,6 +66,7 @@ public class YoctoSDKUtils {
 		Other
 	};
 
+	private static final String PROJECT_SCOPE = "org.yocto.sdk.ide";
 	private static final String POKY_DEVICE_EMPTY = "Poky.SDK.Device.Empty";
 	private static final String TOOLCHAIN_LOCATION_EMPTY     = "Poky.SDK.Location.Empty";
 	private static final String SDK_TARGET_EMPTY      = "Poky.SDK.Target.Empty";
@@ -397,6 +402,74 @@ public class YoctoSDKUtils {
 
 	}
 
+	/* Get POKY Preference settings from project's preference store */
+	public static YoctoUIElement getElemFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return getElemFromProjectEnv(project);
+		}
+
+		YoctoUIElement elem = new YoctoUIElement();
+		elem.setStrToolChainRoot(projectNode.get(PreferenceConstants.TOOLCHAIN_ROOT,""));
+		elem.setStrTarget(projectNode.get(PreferenceConstants.TOOLCHAIN_TRIPLET,""));
+		elem.setStrQemuKernelLoc(projectNode.get(PreferenceConstants.QEMU_KERNEL,""));
+		elem.setStrSysrootLoc(projectNode.get(PreferenceConstants.SYSROOT,""));
+		elem.setStrQemuOption(projectNode.get(PreferenceConstants.QEMU_OPTION,""));
+		String sTemp = projectNode.get(PreferenceConstants.TARGET_ARCH_INDEX,"");
+		if (!sTemp.isEmpty())
+			elem.setIntTargetIndex(Integer.valueOf(sTemp).intValue());
+		if (projectNode.get(PreferenceConstants.SDK_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
+		{
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_SDK_MODE);
+		}
+		else
+			elem.setEnumPokyMode(YoctoUIElement.PokyMode.POKY_TREE_MODE);
+
+		if(projectNode.get(PreferenceConstants.TARGET_MODE,"").equalsIgnoreCase(IPreferenceStore.TRUE))
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.QEMU_MODE);
+		else
+			elem.setEnumDeviceMode(YoctoUIElement.DeviceMode.DEVICE_MODE);
+		return elem;
+	}
+
+	/* Save POKY Preference settings to project's preference store */
+	public static void saveElemToProjectPreferences(YoctoUIElement elem, IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return;
+		}
+
+		projectNode.putInt(PreferenceConstants.TARGET_ARCH_INDEX, elem.getIntTargetIndex());
+		if (elem.getEnumPokyMode() == YoctoUIElement.PokyMode.POKY_SDK_MODE)
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.TRUE);
+		else
+			projectNode.put(PreferenceConstants.SDK_MODE, IPreferenceStore.FALSE);
+		projectNode.put(PreferenceConstants.QEMU_KERNEL, elem.getStrQemuKernelLoc());
+		projectNode.put(PreferenceConstants.QEMU_OPTION, elem.getStrQemuOption());
+		projectNode.put(PreferenceConstants.SYSROOT, elem.getStrSysrootLoc());
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE)
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.TRUE);
+		else
+			projectNode.put(PreferenceConstants.TARGET_MODE, IPreferenceStore.FALSE);
+		projectNode.put(PreferenceConstants.TOOLCHAIN_ROOT, elem.getStrToolChainRoot());
+		projectNode.put(PreferenceConstants.TOOLCHAIN_TRIPLET, elem.getStrTarget());
+
+		try
+		{
+			projectNode.flush();
+		} catch (BackingStoreException e)
+		{
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
+
 	/* Get POKY Preference settings from project's environment */
 	public static YoctoUIElement getElemFromProjectEnv(IProject project)
 	{
@@ -689,6 +762,27 @@ public class YoctoSDKUtils {
 		saveProfilesToStore(profileElement, YoctoSDKPlugin.getDefault().getPreferenceStore());
 	}
 
+	/* Save profiles and selected profile to the project's preference store */
+	public static void saveProfilesToProjectPreferences(YoctoProfileElement profileElement, IProject project) {
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectPreferences = projectScope.getNode(PROJECT_SCOPE);
+		if (projectPreferences == null) {
+			return;
+		}
+
+		projectPreferences.put(PreferenceConstants.PROFILES, profileElement.getProfilesAsString());
+		projectPreferences.put(PreferenceConstants.SELECTED_PROFILE, profileElement.getSelectedProfile());
+
+		try
+		{
+			projectPreferences.flush();
+		} catch (BackingStoreException e)
+		{
+			// TODO Auto-generated catch block
+			e.printStackTrace();
+		}
+	}
+
 	/* Save profiles and selected profile to a specific preference store */
 	public static void saveProfilesToStore(YoctoProfileElement profileElement, IPreferenceStore store)
 	{
@@ -710,4 +804,20 @@ public class YoctoSDKUtils {
 
 		return new YoctoProfileElement(profiles, selectedProfile);
 	}
+
+	/* Get profiles and selected profile from the project's preference store */
+	public static YoctoProfileElement getProfilesFromProjectPreferences(IProject project)
+	{
+		IScopeContext projectScope = new ProjectScope(project);
+		IEclipsePreferences projectNode = projectScope.getNode(PROJECT_SCOPE);
+		if (projectNode == null)
+		{
+			return getProfilesFromDefaultStore();
+		}
+
+		String profiles = projectNode.get(PreferenceConstants.PROFILES, "");
+		String selectedProfile = projectNode.get(PreferenceConstants.SELECTED_PROFILE, "");
+
+		return new YoctoProfileElement(profiles, selectedProfile);
+	}
 }
-- 
1.7.11.7


