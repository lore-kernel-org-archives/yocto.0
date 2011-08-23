Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A9AE01235
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 08:31:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 23 Aug 2011 08:31:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,270,1312182000"; d="scan'208";a="43313435"
Received: from unknown (HELO helios.ger.corp.intel.com) ([10.255.18.129])
	by fmsmga002.fm.intel.com with ESMTP; 23 Aug 2011 08:31:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Aug 2011 16:30:40 +0100
Message-Id: <90017baddb3bb8eefbdf701ac21226ef6338fdf9.1314113115.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.4.1
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1314113115.git.paul.eggleton@linux.intel.com>
References: <cover.1314113115.git.paul.eggleton@linux.intel.com>
Subject: [PATCH 07/14] documentation: improve LIC_FILES_CHKSUM documentation
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
X-List-Received-Date: Tue, 23 Aug 2011 15:31:07 -0000

Document that LIC_FILES_CHKSUM is mandatory, when gets validated, and
improve some wording.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/poky-ref-manual/extendpoky.xml    |   37 +++++++++++++----------
 documentation/poky-ref-manual/ref-variables.xml |    8 ++--
 2 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/documentation/poky-ref-manual/extendpoky.xml b/documentation/poky-ref-manual/extendpoky.xml
index e9835f2..9035842 100644
--- a/documentation/poky-ref-manual/extendpoky.xml
+++ b/documentation/poky-ref-manual/extendpoky.xml
@@ -901,25 +901,25 @@ SRC_URI += "file://NAME-OF-PATCH.patch"
     </section>
 
     <section id="usingpoky-configuring-LIC_FILES_CHKSUM">
-        <title>Track License Change</title>
+        <title>Tracking License Changes</title>
         <para>
-        The license of an upstream project might change in the future.
-        Poky uses the <glossterm><link linkend='var-LIC_FILES_CHKSUM'>LIC_FILES_CHKSUM</link></glossterm> variable
-        to track license changes.
+        The license of an upstream project might change in the future. In order to prevent these changes
+        going unnoticed, Poky provides a <glossterm><link linkend='var-LIC_FILES_CHKSUM'>LIC_FILES_CHKSUM</link></glossterm>
+        variable to track changes to the license text. The checksums are validated at the end of the configure
+        step, and if the checksums do not match, the build will fail.
         </para>
 
         <section id="usingpoky-specifying-LIC_FILES_CHKSUM">
             <title>Specifying the LIC_FILES_CHKSUM Variable</title>
             <para>
                 The <glossterm><link linkend='var-LIC_FILES_CHKSUM'>LIC_FILES_CHKSUM</link></glossterm>
-                variable contains checksums of the license text in the recipe source code. 
-                Poky uses this to track changes in the license text of the source code files.
-                Following is an example of LIC_FILES_CHKSUM:
+                variable contains checksums of the license text in the source code for the recipe.
+                Following is an example of how to specify LIC_FILES_CHKSUM:
             </para>
             <programlisting>
-LIC_FILES_CHKSUM = "file://COPYING; md5=xxxx \
-                    file://licfile1.txt; beginline=5; endline=29;md5=yyyy \
-                    file://licfile2.txt; endline=50;md5=zzzz \
+LIC_FILES_CHKSUM = "file://COPYING;md5=xxxx \
+                    file://licfile1.txt;beginline=5;endline=29;md5=yyyy \
+                    file://licfile2.txt;endline=50;md5=zzzz \
                     ..."
             </programlisting>
             <para>
@@ -942,6 +942,10 @@ LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
                 <glossterm><link linkend='var-WORKDIR'>WORKDIR</link></glossterm>, which is the parent
                 of <glossterm><link linkend='var-S'>S</link></glossterm>.
             </para>
+            <para>
+                Note that this variable is mandatory for all recipes, unless the LICENSE variable is set to
+                "CLOSED".
+            </para>
         </section>
 
         <section id="usingpoky-LIC_FILES_CHKSUM-explanation-of-syntax">
@@ -949,8 +953,9 @@ LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
             <para>
                 As mentioned in the previous section the LIC_FILES_CHKSUM variable lists all the 
                 important files that contain the license text for the source code. 
-                Using this variable you can specify the line on which the license text starts and ends
-                by supplying "beginline" and "endline" parameters. 
+                It is possible to specify a checksum for an entire file, or a specified section of a
+                file (specified by beginning and ending line numbers). The latter is useful for source
+                files with license notice header, README documents, etc.
                 If you do not use the "beginline" parameter then it is assumed that the text begins on the 
                 first line of the file. 
                 Similarly, if you do not use the "endline" parameter it is assumed that the license text 
@@ -959,18 +964,18 @@ LIC_FILES_CHKSUM = "file://../license.html;md5=5c94767cedb5d6987c902ac850ded2c6"
             <para>
                 The "md5" parameter stores the md5 checksum of the license text. 
                 If the license text changes in any way as compared to this parameter
-                then a mis-match occurs. 
+                then a mismatch occurs.
                 This mismatch triggers a build failure and notifies the developer.
                 Notification allows the developer to review and address the license text changes.
-                Also note that if a mis-match occurs during the build, the correct md5 
-                checksum is placed in the build log and can be easily copied to a .bb file.
+                Also note that if a mismatch occurs during the build, the correct md5 
+                checksum is placed in the build log and can be easily copied to the recipe.
             </para>
             <para>
                 There is no limit to how many files you can specify using the LIC_FILES_CHKSUM variable.
                 Generally, however, every project requires a few specifications for license tracking. 
                 Many projects have a "COPYING" file that stores the license information for all the source 
                 code files.
-                This practice allow you to just track the "COPYING" file as long as it is kept up to date. 
+                This practice allows you to just track the "COPYING" file as long as it is kept up to date. 
             </para>
             <tip>
                 If you specify an empty or invalid "md5" parameter, BitBake returns an md5 mis-match 
diff --git a/documentation/poky-ref-manual/ref-variables.xml b/documentation/poky-ref-manual/ref-variables.xml
index cb7a0e4..095ccf6 100644
--- a/documentation/poky-ref-manual/ref-variables.xml
+++ b/documentation/poky-ref-manual/ref-variables.xml
@@ -539,11 +539,11 @@ recipes-graphics/xorg-font/fiont-alias_1.0.2.bb:PR - "$(INC_PR).0"
                 <para>Checksums of the license text in the recipe source code.
                 </para>
                 <para>This variable tracks changes in license text of the source
-                code files. If the license text is changed, it will trigger the build
+                code files. If the license text is changed, it will trigger a build
                 failure, which gives developer an opportunity to review any 
-                license change</para>
-                <para> This is an optional variable now, and the plan is to make
-                it a required variable in the future </para>
+                license change.</para>
+                <para> This variable must be defined for all recipes (unless LICENSE
+                is set to "CLOSED")</para>
                 <para>See "meta/package/zlib/zlib_${PV}.bb" file for an example</para>
 
                 <para>More information in <link
-- 
1.7.4.1


