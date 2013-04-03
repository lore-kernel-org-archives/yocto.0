Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26A33E01550
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 11:01:40 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Apr 2013 10:59:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,402,1363158000"; d="scan'208";a="311864302"
Received: from unknown (HELO helios.amr.corp.intel.com) ([10.255.13.159])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2013 11:01:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  3 Apr 2013 19:01:24 +0100
Message-Id: <96006c6b9d257a121a02caebadee3cfc058fe9f9.1365011998.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1365011998.git.paul.eggleton@linux.intel.com>
References: <cover.1365011998.git.paul.eggleton@linux.intel.com>
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [yocto-docs][PATCH 4/5] Update layer.conf examples to reflect current practice
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
X-List-Received-Date: Wed, 03 Apr 2013 18:01:40 -0000

* BBFILES should be appended to with +=
* BBPATH should be appended to with .=
* Immediate expansion is not necessary for BBFILE_PRIORITY
* Immediate expansion is not necessary for references in layer.conf
  to LAYERDIR since these are automatically expanded at the end of
  parsing the file (and have been for some time).
* Add collection name override to BBFILE_PRIORITY example
* Fix comments referring to old structure ("packages directory" or
  "recipes directory")

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 documentation/bsp-guide/bsp.xml                    |   10 ++++----
 .../dev-manual/dev-manual-common-tasks.xml         |   27 +++++++++-----------
 documentation/ref-manual/ref-variables.xml         |    6 ++---
 3 files changed, 19 insertions(+), 24 deletions(-)

diff --git a/documentation/bsp-guide/bsp.xml b/documentation/bsp-guide/bsp.xml
index 5c34bfd..8c0a344 100644
--- a/documentation/bsp-guide/bsp.xml
+++ b/documentation/bsp-guide/bsp.xml
@@ -312,14 +312,14 @@
             <para>
                <literallayout class='monospaced'>
      # We have a conf and classes directory, add to BBPATH
-     BBPATH := "${BBPATH}:${LAYERDIR}"
+     BBPATH .= ":${LAYERDIR}"
 
-     # We have a recipes directory, add to BBFILES
-     BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*.bb \
+     # We have recipes-* directories, add to BBFILES
+     BBFILES += "${LAYERDIR}/recipes-*/*.bb \
                  ${LAYERDIR}/recipes-*/*.bbappend"
 
      BBFILE_COLLECTIONS += "bsp"
-     BBFILE_PATTERN_bsp := "^${LAYERDIR}/"
+     BBFILE_PATTERN_bsp = "^${LAYERDIR}/"
      BBFILE_PRIORITY_bsp = "6"
                 </literallayout>
             </para>
@@ -329,7 +329,7 @@
                 Bay <filename>conf/layer.conf</filename> file:
                <literallayout class='monospaced'>
      BBFILE_COLLECTIONS += "crownbay"
-     BBFILE_PATTERN_crownbay := "^${LAYERDIR}/"
+     BBFILE_PATTERN_crownbay = "^${LAYERDIR}/"
      BBFILE_PRIORITY_crownbay = "6"
                 </literallayout>
             </para>
diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 43dc61f..a697b8c 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -106,14 +106,14 @@
                        required syntax:
                        <literallayout class='monospaced'>
      # We have a conf and classes directory, add to BBPATH
-     BBPATH := "${BBPATH}:${LAYERDIR}"
+     BBPATH .= ":${LAYERDIR}"
 
-     # We have a packages directory, add to BBFILES
-     BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+     # We have recipes-* directories, add to BBFILES
+     BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
                  ${LAYERDIR}/recipes-*/*/*.bbappend"
 
      BBFILE_COLLECTIONS += "yoctobsp"
-     BBFILE_PATTERN_yoctobsp := "^${LAYERDIR}/"
+     BBFILE_PATTERN_yoctobsp = "^${LAYERDIR}/"
      BBFILE_PRIORITY_yoctobsp = "5"
                         </literallayout></para>
                         <para>Here is an explanation of the example:
@@ -148,9 +148,9 @@
                                 used to match files from
                                 <filename>BBFILES</filename> into a particular
                                 layer.
-                                In this case, immediate expansion of
+                                In this case,
                                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-LAYERDIR'>LAYERDIR</ulink></filename>
-                                sets <filename>BBFILE_PATTERN</filename> to the
+                                is used to make <filename>BBFILE_PATTERN</filename> match within the
                                 layer's path.</para></listitem>
                             <listitem><para>The
                                 <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-BBFILE_PRIORITY'>BBFILE_PRIORITY</ulink></filename>
@@ -162,10 +162,7 @@
                         </itemizedlist></para>
                         <para>Note the use of the
                         <filename><ulink url='&YOCTO_DOCS_REF_URL;#var-LAYERDIR'>LAYERDIR</ulink></filename>
-                        variable with the immediate expansion operator.
-                        The <filename>LAYERDIR</filename> variable expands to the directory of the current layer and
-                        requires the immediate expansion operator so that BitBake does not wait to expand the variable
-                        when it's parsing a different directory.</para>
+                        variable, which expands to the directory of the current layer.</para>
                         <para>Through the use of the <filename>BBPATH</filename> variable,
                         BitBake locates <filename>.bbclass</filename> files, configuration
                         files, and files that are included with <filename>include</filename>
@@ -402,7 +399,7 @@
                 variable.
                 For example:
                 <literallayout class='monospaced'>
-     BBFILE_PRIORITY := "1"
+     BBFILE_PRIORITY_mylayer = "1"
                 </literallayout>
             </para>
 
@@ -1938,14 +1935,14 @@
                         the <filename>layer.conf</filename> file as follows:
                         <literallayout class='monospaced'>
      # We have a conf and classes directory, add to BBPATH
-     BBPATH := "${BBPATH}:${LAYERDIR}"
+     BBPATH .= ":${LAYERDIR}"
 
-     # We have a packages directory, add to BBFILES
-     BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+     # We have recipes-* directories, add to BBFILES
+     BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
                  ${LAYERDIR}/recipes-*/*/*.bbappend"
 
      BBFILE_COLLECTIONS += "mylayer"
-     BBFILE_PATTERN_mylayer := "^${LAYERDIR}/"
+     BBFILE_PATTERN_mylayer = "^${LAYERDIR}/"
      BBFILE_PRIORITY_mylayer = "5"
                          </literallayout>
                          Notice <filename>mylayer</filename> as part of the last three
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index f81ab62..a56cdd8 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -1868,10 +1868,8 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
             <glossdef>
                 <para>When used inside the <filename>layer.conf</filename> configuration
                     file, this variable provides the path of the current layer.
-                    This variable requires immediate expansion
-                    (see the BitBake manual) as lazy expansion can result in
-                    the expansion happening in the wrong directory and therefore
-                    giving the wrong value.</para>
+                    This variable is not available outside of <filename>layer.conf</filename>
+                    and references are expanded immediately when parsing of the file completes.</para>
             </glossdef>
         </glossentry>
 
-- 
1.7.10.4


