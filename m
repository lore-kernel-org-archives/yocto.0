Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03987E0150F
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864269"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:21 +0100
Message-Id: <c73a7b84167f40dbf1508773e256f5adb9adb5df.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 1/5] ref-manual: add buildhistory SDK contents collection
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
X-List-Received-Date: Wed, 03 Apr 2013 18:01:37 -0000

Buildhistory can now collect information on SDK contents, so add this to
the appropriate section.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/ref-manual/usingpoky.xml |   62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index de672b5..c8bee36 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -631,6 +631,68 @@
             </para>
         </section>
 
+        <section id='build-history-sdk-information'>
+            <title>Build History SDK Information</title>
+            <para>
+                Build history collects similar information on the contents
+                of SDKs (for example, <filename>meta-toolchain</filename>
+                or <filename>bitbake -c populate_sdk imagename</filename>)
+                to that which it collects for images.
+                The files produced for each SDK are as follows:
+                <itemizedlist>
+                    <listitem><para><filename>files-in-sdk.txt:</filename>
+                        A list of files in the SDK with permissions,
+                        owner, group, size, and symlink information.
+                        This includes both the host and target parts
+                        of the SDK.
+                        </para></listitem>
+                    <listitem><para><filename>sdk-info.txt:</filename>
+                        A text file containing name-value pairs with information
+                        about the SDK.
+                        See the following listing example for more information.
+                        </para></listitem>
+                    <listitem><para>Under each of the <filename>host</filename> and 
+                        <filename>target</filename> directories (for the portions of the
+                        SDK that run on the host and on the target respectively):
+                        <itemizedlist>
+                            <listitem><para><filename>depends.dot:</filename>
+                                Dependency graph for the SDK that is
+                                compatible with <filename>graphviz</filename>.
+                                </para></listitem>
+                            <listitem><para><filename>installed-package-names.txt:</filename>
+                                A list of installed packages by name only.</para></listitem>
+                            <listitem><para><filename>installed-package-sizes.txt:</filename>
+                                A list of installed packages ordered by size.
+                                </para></listitem>
+                            <listitem><para><filename>installed-packages.txt:</filename>
+                                A list of installed packages with full package
+                                filenames.</para></listitem>
+                            </itemizedlist>
+                        </para></listitem>
+                </itemizedlist>
+            </para>
+
+            <para>
+                Here is an example of <filename>sdk-info.txt</filename>:
+                <literallayout class='monospaced'>
+DISTRO = poky
+DISTRO_VERSION = 1.3+snapshot-20130327
+SDK_NAME = poky-eglibc-i686-arm
+SDK_VERSION = 1.3+snapshot
+SDKMACHINE = 
+SDKIMAGE_FEATURES = dev-pkgs dbg-pkgs
+BAD_RECOMMENDATIONS = 
+SDKSIZE = 352712
+                </literallayout>
+                Other than <filename>SDKSIZE</filename>, which is the
+                total size of the files in the SDK in Kbytes, the
+                name-value pairs are variables that may have influenced the
+                content of the SDK.
+                This information is often useful when you are trying to determine
+                why a change in the package or file listings has occurred.
+            </para>
+        </section>
+
         <section id='examining-build-history-information'>
             <title>Examining Build History Information</title>
 
-- 
1.7.10.4


