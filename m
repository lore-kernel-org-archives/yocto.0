Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF7AE006E7; Sat,  2 Aug 2014 11:10:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5745FE004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 11:10:30 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140802181026992
	for <yocto@yoctoproject.org>; Sat, 02 Aug 2014 18:10:26 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=54334 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XDdl7-0005Ry-1R
	for yocto@yoctoproject.org; Sat, 02 Aug 2014 14:10:21 -0400
Date: Sat, 2 Aug 2014 14:10:17 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408021408350.16533@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: [yocto-docs][PATCH] dev-manual: Numerous tweaks to massive section 5.3
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
X-List-Received-Date: Sat, 02 Aug 2014 18:10:37 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 5f8da23..a0c730d 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -1313,7 +1313,7 @@
                     <listitem><para><emphasis>Functions:</emphasis>
                         Functions provide a series of actions to be performed.
                         You usually use functions to override the default
-                        implementation of a task function or to compliment
+                        implementation of a task function or to complement
                         a default function (i.e. append or prepend to an
                         existing function).
                         Standard functions use <filename>sh</filename> shell
@@ -1325,12 +1325,13 @@
      do_install () {
          autotools_do_install
          install -d ${D}${base_bindir}
-         mv ${D}${bindir}/sed ${D}${base_bindir}/sed.${PN}
+         mv ${D}${bindir}/sed ${D}${base_bindir}/sed
+         rmdir ${D}${bindir}/
      }
                         </literallayout>
                         It is also possible to implement new functions that
                         are called between existing tasks as long as the
-                        new functions are not replacing or complimenting the
+                        new functions are not replacing or complementing the
                         default functions.
                         You can implement functions in Python
                         instead of shell.
@@ -1481,7 +1482,6 @@
                         Use the <filename>_prepend</filename> operator to
                         prepend values to existing variables.
                         This operator does not add any additional space.
-                        This operator does not add any additional space.
                         Also, the operator is applied after all the
                         <filename>+=</filename>, and
                         <filename>=+</filename> operators have been applied and
@@ -1499,12 +1499,12 @@
                         only being performed for the specified target or
                         machine:
                         <literallayout class='monospaced'>
-     CFLAGS_prepend_sh4 = " file://fix-makefile.patch"
+     CFLAGS_prepend_sh4 = "-I${S}/myincludes "
                         </literallayout>
                         </para></listitem>
                     <listitem><para><emphasis>Overrides:</emphasis> -
                         You can use overrides to set a value conditionally,
-                        typically on how the recipe is being built.
+                        typically based on how the recipe is being built.
                         For example, to set the
                         <ulink url='&YOCTO_DOCS_REF_URL;#var-KBRANCH'><filename>KBRANCH</filename></ulink>
                         variable's value to "standard/base" for any target
@@ -1521,7 +1521,7 @@
                         For example, when setting variables such as
                         <ulink url='&YOCTO_DOCS_REF_URL;#var-FILES'><filename>FILES</filename></ulink>
                         and
-                        <ulink url='&YOCTO_DOCS_REF_URL;#var-RDEPENDS'><filename>RDEPENDS</filename></ulink>,
+                        <ulink url='&YOCTO_DOCS_REF_URL;#var-RDEPENDS'><filename>RDEPENDS</filename></ulink>
                         that are specific to individual packages produced by
                         a recipe, you should always use an override that
                         specifies the name of the package.
@@ -1570,7 +1570,7 @@
                 Creating a new recipe is usually an iterative process that
                 requires using BitBake to process the recipe multiple times in
                 order to progressively discover and add information to the
-                recipe.
+                recipe file.
             </para>

             <para>
@@ -1592,17 +1592,18 @@

             <para>
                 During the build, the OpenEmbedded build system creates a
-                temporary work directory for the recipe
+                temporary work directory for each recipe
                 (<filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-WORKDIR'><filename>WORKDIR</filename></ulink><filename>}</filename>)
                 where it keeps extracted source files, log files, intermediate
                 compilation and packaging files, and so forth.
             </para>

             <para>
-                The temporary work directory is constructed as follows and
+                The per-recipe temporary work directory is constructed as follows and
                 depends on several factors:
                 <literallayout class='monospaced'>
-     ${TMPDIR}/work/${MULTIMACH_TARGET_SYS}/${PN}/${EXTENDPE}${PV}-${PR}
+     BASE_WORKDIR ?= "${TMPDIR}/work"
+     WORKDIR = "${BASE_WORKDIR}/${MULTIMACH_TARGET_SYS}/${PN}/${EXTENDPE}${PV}-${PR}"
                 </literallayout>
                 As an example, assume a Source Directory top-level folder named
                 <filename>poky</filename>, a default Build Directory at
@@ -1680,7 +1681,7 @@
                 The
                 <ulink url='&YOCTO_DOCS_REF_URL;#ref-tasks-fetch'><filename>do_fetch</filename></ulink>
                 task uses the prefix of each entry in the
-                <filename>SRC_URI</filename> variable value to determine what
+                <filename>SRC_URI</filename> variable value to determine which
                 fetcher to use to get your source files.
                 It is the <filename>SRC_URI</filename> variable that triggers
                 the fetcher.
@@ -1710,7 +1711,7 @@

             <para>
                 Here is a simple example from the
-                <filename>meta/recipes-devtools/cdrtools/cdrtools-native_3.01a17.bb</filename>
+                <filename>meta/recipes-devtools/cdrtools/cdrtools-native_3.01a20.bb</filename>
                 recipe where the source comes from a single tarball.
                 Notice the use of the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-PV'><filename>PV</filename></ulink>
@@ -1817,7 +1818,7 @@

             <para>
                 This final example is a bit more complicated and is from the
-                <filename>meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.19.bb</filename>
+                <filename>meta/recipes-sato/rxvt-unicode/rxvt-unicode_9.20.bb</filename>
                 recipe.
                 The example's <filename>SRC_URI</filename> statement identifies
                 multiple files as the source files for the recipe: a tarball, a
@@ -1837,8 +1838,8 @@
                 The path is relative to the
                 <ulink url='&YOCTO_DOCS_REF_URL;#var-FILESPATH'><filename>FILESPATH</filename></ulink>
                 variable and searches specific directories in a certain order:
-                <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-BPN'><filename>BPN</filename></ulink><filename>}</filename>,
                 <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-BP'><filename>BP</filename></ulink><filename>}</filename>,
+                <filename>${</filename><ulink url='&YOCTO_DOCS_REF_URL;#var-BPN'><filename>BPN</filename></ulink><filename>}</filename>,
                 and <filename>files</filename>.
                 The directories are assumed to be subdirectories of the
                 directory in which the recipe or append file resides.
@@ -2427,7 +2428,7 @@
                         needs to inherit the
                         <ulink url='&YOCTO_DOCS_REF_URL;#ref-classes-systemd'><filename>systemd</filename></ulink>
                         class.
-                        See the <filename>systemd.class</filename> file
+                        See the <filename>systemd.bbclass</filename> file
                         located in your
                         <link linkend='source-directory'>Source Directory</link>.
                         section for more information.
@@ -2599,7 +2600,7 @@
             <para>
                 A post-installation function has the following structure:
                 <literallayout class='monospaced'>
-     pkg_postinst_PACKAGENAME () {
+     pkg_postinst_PACKAGENAME() {
      #!/bin/sh -e
      # Commands to carry out
      }
@@ -2622,7 +2623,7 @@
                 To delay script execution until boot time, use the following
                 structure in the post-installation script:
                 <literallayout class='monospaced'>
-     pkg_postinst_PACKAGENAME () {
+     pkg_postinst_PACKAGENAME() {
      #!/bin/sh -e
      if [ x"$D" = "x" ]; then
           # Actions to carry out on the device go here
@@ -2804,33 +2805,36 @@
                 <para>
                 In the following example, <filename>mtd-utils</filename> is a makefile-based package:
                     <literallayout class='monospaced'>
-     SUMMARY = "Tools for managing memory technology devices."
+     SUMMARY = "Tools for managing memory technology devices"
      SECTION = "base"
      DEPENDS = "zlib lzo e2fsprogs util-linux"
      HOMEPAGE = "http://www.linux-mtd.infradead.org/"
      LICENSE = "GPLv2+"
      LIC_FILES_CHKSUM = "file://COPYING;md5=0636e73ff0215e8d672dc4c32c317bb3 \
-                    file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"
+                         file://include/common.h;beginline=1;endline=17;md5=ba05b07912a44ea2bf81ce409380049c"

-     SRC_URI = "git://git.infradead.org/mtd-utils.git;protocol=git;tag=995cfe51b0a3cf32f381c140bf72b21bf91cef1b \
-	     	file://add-exclusion-to-mkfs-jffs2-git-2.patch"
+     # Use the latest version at 26 Oct, 2013
+     SRCREV = "9f107132a6a073cce37434ca9cda6917dd8d866b"
+     SRC_URI = "git://git.infradead.org/mtd-utils.git \
+                     file://add-exclusion-to-mkfs-jffs2-git-2.patch \
+     "

-     S = "${WORKDIR}/git/"
+     PV = "1.5.1+git${SRCPV}"

-     PR = "r1"
+     S = "${WORKDIR}/git/"

-     EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' \
-        'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
+     EXTRA_OEMAKE = "'CC=${CC}' 'RANLIB=${RANLIB}' 'AR=${AR}' 'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR' 'BUILDDIR=${S}'"

      do_install () {
-	     oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} \
-            INCLUDEDIR=${includedir}
-	     install -d ${D}${includedir}/mtd/
-	     for f in ${S}/include/mtd/*.h; do
-	     	install -m 0644 $f ${D}${includedir}/mtd/
-	     done
+             oe_runmake install DESTDIR=${D} SBINDIR=${sbindir} MANDIR=${mandir} INCLUDEDIR=${includedir}
      }

+     PACKAGES =+ "mtd-utils-jffs2 mtd-utils-ubifs mtd-utils-misc"
+
+     FILES_mtd-utils-jffs2 = "${sbindir}/mkfs.jffs2 ${sbindir}/jffs2dump ${sbindir}/jffs2reader ${sbindir}/sumtool"
+     FILES_mtd-utils-ubifs = "${sbindir}/mkfs.ubifs ${sbindir}/ubi*"
+     FILES_mtd-utils-misc = "${sbindir}/nftl* ${sbindir}/ftl* ${sbindir}/rfd* ${sbindir}/doc* ${sbindir}/serve_image ${sbindir}/recv_image"
+
      PARALLEL_MAKE = ""

      BBCLASSEXTEND = "native"

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


