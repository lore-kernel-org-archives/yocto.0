Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f52.google.com (mail-ee0-f52.google.com [74.125.83.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3534E01489
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:07 -0700 (PDT)
Received: by mail-ee0-f52.google.com with SMTP id c13so1554815eek.25
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=yD7pgZFCkco1zudZs2wyI45gJQU2ilWycg909H1/Qi4=;
	b=iu6XQIzrWLhcXEzheGgEtFfCrHfNIL8VeJRP9M7bbqAMXFNLEmSN7C9G5aJjht5VBh
	iZRC50MBlziFA+GxlhpJVfAa/5kZNvRJPTs7Cs2OMT4w4BLoLNTOeynBD9sVVyybmFqE
	ZJ8JNlraVIUa0inpQ5vc4beUGxUGebcH2rSN3/rJtnY7Q28z+xPw9LlKCKeWp+ux6tqH
	cjVGYxBZGxoxO4LdHP2SlbluA6IXGrounJwJZKiYXGdEmh8pQlhR1uvflbw8EKesOci2
	j0mAkUq0PeI1UHwDVn7hjjfL+R0AkaPVeAl9xsDHotCU9GrK5321Uas8NH9Cbr+8n32t
	oiBQ==
X-Received: by 10.15.10.130 with SMTP id g2mr25457013eet.25.1369298406961;
	Thu, 23 May 2013 01:40:06 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.06
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:06 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:46 +0200
Message-Id: <1369298392-4076-8-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 07/13] plugins/cmake: Added the generation of toolchain.cmake
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
X-List-Received-Date: Thu, 23 May 2013 08:40:08 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

The generation of the toolchain.cmake file happens
just before the exectuion of the configure job.
The current environment of the project is used to
set the values in the toolchain.cmake file.
---
 .../YoctoCMakeMakefileGenerator.java               |  107 ++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
index d80f603..b77ae9e 100644
--- a/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
+++ b/plugins/org.yocto.cmake.managedbuilder/src/org/yocto/cmake/managedbuilder/YoctoCMakeMakefileGenerator.java
@@ -149,6 +149,8 @@ public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGener
 		}
 		monitor.setTaskName(taskName);
 
+		createToolchainCMakeFile(workingDir);
+
 		// Create the Makefiles by executing cmake
 		ExecuteConfigureJob job =
 				new ExecuteConfigureJob(
@@ -171,4 +173,109 @@ public class YoctoCMakeMakefileGenerator implements IManagedBuilderMakefileGener
 							YoctoCMakeMessages.getString("YoctoCMakeMakefileGenerator.error.makeFileGenerationFailed")), null); //$NON-NLS-1$
 		}
 	}
+
+	private String createCMakeSetStatement(String variable, String value, String cacheOption) {
+		String setStatement = "set("; //$NON-NLS-1$
+		setStatement += variable + " " + value; //$NON-NLS-1$
+		if(cacheOption != null && !cacheOption.equals("")) { //$NON-NLS-1$
+			setStatement += " " + cacheOption; //$NON-NLS-1$
+		}
+		setStatement += ")\n"; //$NON-NLS-1$
+		return setStatement;
+	}
+
+	// Considered poky's cmake.bbclass for this method
+	private void createToolchainCMakeFile(IPath workingDir) {
+		String toolchainCMakeFileContentAsString = "# CMake system name must be something like \"Linux\".\n" + //$NON-NLS-1$
+				"# This is important for cross-compiling.\n"; //$NON-NLS-1$
+
+		String targetArchValue = YoctoSDKUtils.getEnvValue(project, "TARGET_ARCH"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_SYSTEM_PROCESSOR", targetArchValue, null); //$NON-NLS-1$
+
+		String oeCMakeCCompilerValue = 	YoctoSDKUtils.getEnvValue(project, "OECMAKE_C_COMPILER"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_C_COMPILER", oeCMakeCCompilerValue, null); //$NON-NLS-1$
+
+		String oeCMakeCXXCompilerValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_CXX_COMPILER"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_CXX_COMPILER", oeCMakeCXXCompilerValue, null); //$NON-NLS-1$
+
+		String oeCMakeCFlagsValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_C_FLAGS"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_C_FLAGS", //$NON-NLS-1$
+				"\"" + oeCMakeCFlagsValue + "\"", "CACHE STRING \"CFLAGS\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		String oeCMakeCXXFlagsValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_CXX_FLAGS"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_CXX_FLAGS", //$NON-NLS-1$
+				"\"" + oeCMakeCXXFlagsValue + "\"", "CACHE STRING \"CXXFLAGS\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		String oeCMakeCFlagsReleaseValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_C_FLAGS_RELEASE"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_C_FLAGS_RELEASE", //$NON-NLS-1$
+				"\"" + oeCMakeCFlagsReleaseValue + "\"", "CACHE STRING \"CFLAGS for release\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		String oeCMakeCXXFlagsReleaseValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_CXX_FLAGS_RELEASE"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_CXX_FLAGS_RELEASE", //$NON-NLS-1$
+				"\"" + oeCMakeCXXFlagsReleaseValue + "\"", "CACHE STRING \"CXXFLAGS for release\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		String oeCMakeCLinkFlagsValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_C_LINK_FLAGS"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_C_LINK_FLAGS", //$NON-NLS-1$
+				"\"" + oeCMakeCLinkFlagsValue + "\"", "CACHE STRING \"LDFLAGS\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		String oeCMakeCXXLinkFlagsValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_CXX_LINK_FLAGS"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_CXX_LINK_FLAGS", //$NON-NLS-1$
+				"\"" + oeCMakeCXXLinkFlagsValue + "\"", "CACHE STRING \"LDFLAGS\""); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
+
+		toolchainCMakeFileContentAsString += "\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += "# only search in the paths provided so cmake doesnt pick\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += "# up libraries and tools from the native build machine\n"; //$NON-NLS-1$
+
+		String findRootPathValue = YoctoSDKUtils.getEnvValue(project, "STAGING_DIR_HOST"); //$NON-NLS-1$
+		findRootPathValue += " "; //$NON-NLS-1$
+		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "STAGING_DIR_NATIVE"); //$NON-NLS-1$
+		findRootPathValue += " "; //$NON-NLS-1$
+		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "CROSS_DIR"); //$NON-NLS-1$
+		findRootPathValue += " "; //$NON-NLS-1$
+		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "OECMAKE_PERLNATIVE_DIR"); //$NON-NLS-1$
+		findRootPathValue += " "; //$NON-NLS-1$
+		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "OECMAKE_EXTRA_ROOT_PATH"); //$NON-NLS-1$
+		findRootPathValue += " "; //$NON-NLS-1$
+		findRootPathValue += YoctoSDKUtils.getEnvValue(project, "EXTERNAL_TOOLCHAIN"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH", findRootPathValue, null); //$NON-NLS-1$
+
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH_MODE_PROGRAM", "ONLY", null); //$NON-NLS-1$ //$NON-NLS-2$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH_MODE_LIBRARY", "ONLY", null); //$NON-NLS-1$ //$NON-NLS-2$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_FIND_ROOT_PATH_MODE_INCLUDE", "ONLY", null); //$NON-NLS-1$ //$NON-NLS-2$
+		toolchainCMakeFileContentAsString += "\n"; //$NON-NLS-1$
+
+		toolchainCMakeFileContentAsString += "# Use qt.conf settings\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("ENV{QT_CONF_PATH}", "qt.conf", null); //$NON-NLS-1$ //$NON-NLS-2$
+		toolchainCMakeFileContentAsString += "\n"; //$NON-NLS-1$
+
+		toolchainCMakeFileContentAsString += "# We need to set the rpath to the correct directory as cmake does not provide any\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += "# directory as rpath by default\n"; //$NON-NLS-1$
+
+		String oeCMakeRPathValue = YoctoSDKUtils.getEnvValue(project, "OECMAKE_RPATH"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_INSTALL_RPATH", oeCMakeRPathValue, null); //$NON-NLS-1$
+
+		toolchainCMakeFileContentAsString += "\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += "# Use native cmake modules\n"; //$NON-NLS-1$
+
+		String stagingDatadirValue = YoctoSDKUtils.getEnvValue(project, "STAGING_DATADIR"); //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_MODULE_PATH", //$NON-NLS-1$
+				stagingDatadirValue + "/cmake/Modules/", null); //$NON-NLS-1$
+
+		toolchainCMakeFileContentAsString += "\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += "# add for non /usr/lib libdir, e.g. /usr/lib64\n"; //$NON-NLS-1$
+		toolchainCMakeFileContentAsString += createCMakeSetStatement("CMAKE_LIBRARY_PATH", //$NON-NLS-1$
+				"${libdir} ${base_libdir}", null); //$NON-NLS-1$
+
+		InputStream toolchainCMakeFileContent = new ByteArrayInputStream(toolchainCMakeFileContentAsString.getBytes());
+
+		IFile toolchainCMakeFile = project.getFile(TOOLCHAINCMAKE_FILE_NAME);
+		try {
+			if (toolchainCMakeFile.exists()) {
+				toolchainCMakeFile.delete(true, monitor);
+			}
+			toolchainCMakeFile.create(toolchainCMakeFileContent, true, monitor);
+		} catch (CoreException e) {
+			e.printStackTrace();
+		}
+	}
 }
-- 
1.7.9.5


