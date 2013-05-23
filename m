Return-Path: <atanas.gegov.oss@gmail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 274E6E014E1
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:10 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id c1so1674496eek.12
	for <yocto@yoctoproject.org>; Thu, 23 May 2013 01:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=OfpsBI50wqa8s27TX8MQoAJVD6XVuCF6S+sLA5n5mtk=;
	b=m1uuAaBtx/py/BmuXy57ltnmEmKSp7TgQAxvuDfC+FfUTkvbIUMf6OiLJPFYRY9F20
	Swjs+68MhQqp/dPbUNTMxJvjQE+NfWRgYhhin9EroA1cT+kNOhvvT3m+Y7wKfviACnIK
	rSv915BJhNxQ5sdo0yMW0bBRNTmlSrYSNzubjYoELSVTyjKbE5qa1FnevPWC2FJ/Tksz
	5qgRLFRnPHjYHlF39Lsjm3phco3nk4iMnd96uUW+i8flyvZuHAYc6ft36yPQrGQLeCCP
	HyDM+D546mBTMuR7+QUMxS8qyUKGNanM7NLlG1iIpPOKlZ8tnMVbNWP4uCiSVGKP5kEj
	IH4g==
X-Received: by 10.15.108.6 with SMTP id cc6mr28751241eeb.28.1369298409279;
	Thu, 23 May 2013 01:40:09 -0700 (PDT)
Received: from ubuntu.bmw-carit.intra (mail.bmw-carit.de. [62.245.222.98])
	by mx.google.com with ESMTPSA id c41sm11438848eeu.8.2013.05.23.01.40.08
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 23 May 2013 01:40:08 -0700 (PDT)
From: Atanas Gegov <atanas.gegov.oss@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 23 May 2013 10:39:49 +0200
Message-Id: <1369298392-4076-11-git-send-email-atanas.gegov.oss@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
References: <1369298392-4076-1-git-send-email-atanas.gegov.oss@gmail.com>
Subject: [PATCH 10/13] plugins/cmake: Connect toolchain and new project category
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
X-List-Received-Date: Thu, 23 May 2013 08:40:10 -0000

From: Atanas Gegov <atanas.gegov@bmw-carit.de>

Defined a projectType that uses the new project
category. It takes the CMake toolchain to build
the project in a debug configuration. It is
possible to add further configurations (e.g.
"Release" with other option settings for the
configure tool).
---
 .../OSGI-INF/l10n/bundle.properties                |    4 +
 plugins/org.yocto.cmake.managedbuilder/plugin.xml  |   98 ++++++++++++++++++++
 2 files changed, 102 insertions(+)

diff --git a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
index d5d6dfe..b2c067f 100644
--- a/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
+++ b/plugins/org.yocto.cmake.managedbuilder/OSGI-INF/l10n/bundle.properties
@@ -24,6 +24,10 @@ builder.name=Yocto CMake Environment Builder
 # Toolchain
 toolchain=Yocto CMake Build (Toolchain)
 
+# Configuration names
+config.debug.name=Debug
+config.debug.description=Builds a version of the project which is ready for debugging
+
 # CMake configure
 cmakeconfigure.name=CMake configure
 cmakeconfigure.options=CMake Options
diff --git a/plugins/org.yocto.cmake.managedbuilder/plugin.xml b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
index af26e18..8718ae6 100644
--- a/plugins/org.yocto.cmake.managedbuilder/plugin.xml
+++ b/plugins/org.yocto.cmake.managedbuilder/plugin.xml
@@ -164,5 +164,103 @@
                 superClass="cdt.managedbuild.tool.gnu.c.linker">
             </tool>
         </toolChain>
+        <projectType
+            buildArtefactType="org.yocto.sdk.ide.buildArtefact.cmake.exe"
+            id="org.yocto.sdk.ide.projectTypeCMake"
+            isAbstract="false"
+            isTest="false">
+            <configuration
+                buildArtefactType="org.eclipse.cdt.build.core.buildArtefactType.exe"
+                buildProperties="org.eclipse.cdt.build.core.buildType=org.eclipse.cdt.build.core.buildType.debug"
+                cleanCommand="rm -rf"
+                description="%config.debug.description"
+                id="org.yocto.cmake.managedbuilder.configuration.gnu.exe.debug"
+                name="%config.debug.name"
+                parent="cdt.managedbuild.config.gnu.base">
+                <toolChain
+                    id="org.yocto.cmake.managedbuilder.toolchain.gnu.exe.debug"
+                    superClass="org.yocto.cmake.managedbuilder.toolchain.gnu.exe"
+                    supportsManagedBuild="true">
+                    <targetPlatform
+                        id="org.yocto.cmake.managedbuilder.target.gnu.exe.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.target.gnu.exe">
+                    </targetPlatform>
+                    <builder
+                        cleanBuildTarget="clean"
+                        id="org.yocto.cmake.managedbuilder.builder.gnu.exe.debug"
+                        isVariableCaseSensitive="false"
+                        superClass="org.yocto.cmake.managedbuilder.builder.gnu.exe">
+                    </builder>
+                    <tool
+                        commandLinePattern="${COMMAND} ${FLAGS} "
+                        id="org.yocto.cmake.managedbuilder.cmakeconfigure.gnu.exe.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.gnu.exe">
+                        <option
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.sourcepath.gnu.exe.debug"
+                            isAbstract="false"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.sourcepath">
+                        </option>
+                        <option
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.toolchaincmakefilepath.gnu.exe.debug"
+                            isAbstract="false"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.toolchaincmakefilepath">
+                        </option>
+                        <option
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.debugsymbols.gnu.exe.debug"
+                            isAbstract="false"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.debugsymbols">
+                        </option>
+                        <option
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.verbosemakefile.gnu.exe.debug"
+                            isAbstract="false"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.verbosemakefile">
+                        </option>
+                        <option
+                            defaultValue="FALSE"
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.enabledevwarn.gnu.exe.debug"
+                            isAbstract="false"
+                            resourceFilter="all"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.enabledevwarn"
+                            valueType="boolean">
+                        </option>
+                        <option
+                            defaultValue="TRUE"
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.suppressdevwarn.gnu.exe.debug"
+                            isAbstract="false"
+                            resourceFilter="all"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.suppressdevwarn"
+                            valueType="boolean">
+                        </option>
+                        <option
+                            id="org.yocto.cmake.managedbuilder.cmakeconfigure.options.otherflags.gnu.exe.debug"
+                            isAbstract="false"
+                            superClass="org.yocto.cmake.managedbuilder.cmakeconfigure.options.otherflags">
+                        </option>
+                    </tool>
+                    <tool
+                        id="org.yocto.cmake.managedbuilder.compiler.gnu.exe.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.compiler.gnu.exe">
+                    </tool>
+                    <tool
+                        id="org.yocto.cmake.managedbuilder.linker.gnu.exe.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.linker.gnu.exe">
+                    </tool>
+                    <tool
+                        id="org.yocto.cmake.managedbuilder.compiler.gnu.exe.c.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.compiler.gnu.c.exe">
+                    </tool>
+                    <tool
+                        id="org.yocto.cmake.managedbuilder.linker.gnu.exe.c.debug"
+                        isAbstract="false"
+                        superClass="org.yocto.cmake.managedbuilder.linker.gnu.c.exe">
+                    </tool>
+                </toolChain>
+            </configuration>
+        </projectType>
     </extension>
 </plugin>
-- 
1.7.9.5


