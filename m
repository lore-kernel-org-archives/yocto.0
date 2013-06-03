Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-bk0-f51.google.com (mail-bk0-f51.google.com
	[209.85.214.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABB7EE004CF
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 01:30:08 -0700 (PDT)
Received: by mail-bk0-f51.google.com with SMTP id ji2so387841bkc.24
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2013 01:30:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=NECEIz4nGAn342vx+4dartbMqPhQhxa2Tt1rmSAz69o=;
	b=hKH9MhLr0cUtM+P3u68h9lHJ4GHrNneZ2Wyi7fjxqSPR1I+VJC+VFejQ+YYGpHnuCx
	nzpC4tHoDh0bme3JdcJy+98ZqoxkHQkv71dgPsSK2dxf1nCUeWDya561gaclGJxKTYgJ
	Aylnj5WMeChLDBPN/Pxutnos0qOFPdBvTIYZc4xMN/8+HxZ7WCWEJT9Ej3vp2IpdTX59
	uif9PSMa/bEUYolOaqZI5Uz/F1IkqMoS8pFx+jLuXnwebWv8KgIViLAlOlTmsPd8xQ2x
	VqYBEpxc6bSpb89F8uL5xi8F8nN3BuvnYVOyH5PZk8G4LxlZsGh7Bt7y8maf8H5xZpQM
	x9Sw==
X-Received: by 10.205.21.10 with SMTP id qq10mr6151218bkb.133.1370248207782;
	Mon, 03 Jun 2013 01:30:07 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id
	jm15sm19449666bkb.13.2013.06.03.01.30.06 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Jun 2013 01:30:07 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Mon,  3 Jun 2013 10:29:52 +0200
Message-Id: <1370248197-4243-3-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1370248197-4243-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 2/7] plugins/sdk.ide: Extracted launchers creation
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
X-List-Received-Date: Mon, 03 Jun 2013 08:30:09 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The creation of the RemoteDebug launcher and the
Qemu launcher is extracted in an own method. The
creation of both launchers should be decoupled
from the setting of the project environment. This
is done in the next patch.
---
 .../src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java |   44 ++++++++++++--------
 1 file changed, 26 insertions(+), 18 deletions(-)

diff --git a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
index 01b1288..76bac26 100644
--- a/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
+++ b/plugins/org.yocto.sdk.ide/src/org/yocto/sdk/ide/utils/YoctoSDKUtils.java
@@ -231,30 +231,38 @@ public class YoctoSDKUtils {
 
 		setEnvVars(cpdesc, elem, envMap);
 
+		createRemoteDebugAndQemuLaunchers(project, elem);
 		try {
-			ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
-			ILaunchConfigurationType configType =
-				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
-			ILaunchConfigurationType debug_configType =
-				lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
-
-			String sPath = envMap.get("PATH");
-			String sDebugName = envMap.get("GDB");
-			String sysroot_str = elem.getStrSysrootLoc();
-			if (configType == null || debug_configType == null)
-				throw new YoctoGeneralException("Failed to get program or remote debug launcher!");
-			createRemoteDebugLauncher(project, lManager, debug_configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
-
-			ArrayList<String> listValue = new ArrayList<String>();
-			listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
-			if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
-				createQemuLauncher(project, configType, listValue, sFileName, elem);
-			}
 			CoreModel.getDefault().setProjectDescription(project,cpdesc);
 		} catch (CoreException e) {
 			e.printStackTrace();
 		}
 	}
+	
+	public static void createRemoteDebugAndQemuLaunchers(IProject project, YoctoUIElement elem) throws YoctoGeneralException {
+		ILaunchManager lManager = DebugPlugin.getDefault().getLaunchManager();
+		ILaunchConfigurationType configType =
+				lManager.getLaunchConfigurationType("org.eclipse.ui.externaltools.ProgramLaunchConfigurationType");
+		ILaunchConfigurationType debug_configType =
+				lManager.getLaunchConfigurationType("org.eclipse.cdt.launch.remoteApplicationLaunchType");
+
+		String sPath = getEnvValue(project, "PATH");
+		String sDebugName = getEnvValue(project, "GDB");
+		String sysroot_str = elem.getStrSysrootLoc();
+
+		if (configType == null || debug_configType == null) {
+			throw new YoctoGeneralException("Failed to get program or remote debug launcher!");
+		}
+		createRemoteDebugLauncher(project, lManager, debug_configType, elem.getStrTarget(), sPath, sDebugName, sysroot_str);
+
+		ArrayList<String> listValue = new ArrayList<String>();
+		listValue.add(new String("org.eclipse.ui.externaltools.launchGroup"));
+
+		if (elem.getEnumDeviceMode() == YoctoUIElement.DeviceMode.QEMU_MODE) {
+			String sFileName = getEnvironmentSetupFileFullPath(elem);
+			createQemuLauncher(project, configType, listValue, sFileName, elem);
+		}
+	}
 
 	protected static void createRemoteDebugLauncher(IProject project,
 			ILaunchManager lManager, ILaunchConfigurationType configType,
-- 
1.7.9.5


