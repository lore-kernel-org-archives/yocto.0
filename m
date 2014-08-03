Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 272BCE007A2; Sun,  3 Aug 2014 02:42:26 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C79ABE004F2
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 02:42:19 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20140803094218219
	for <yocto@yoctoproject.org>; Sun, 03 Aug 2014 09:42:18 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=34476 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XDsIu-0002a5-Ph
	for yocto@yoctoproject.org; Sun, 03 Aug 2014 05:42:12 -0400
Date: Sun, 3 Aug 2014 05:42:08 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1408030539460.15332@localhost>
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
Subject: [yocto-docs][PATCH] dev-manual: tweaks to ch 5, sections 4-6
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
X-List-Received-Date: Sun, 03 Aug 2014 09:42:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  about to dive into the kernel sections of ch 5 so might as well pass
off these changes first to keep things manageable.

diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml b/documentation/dev-manual/dev-manual-common-tasks.xml
index 5f8da23..c20181a 100644
--- a/documentation/dev-manual/dev-manual-common-tasks.xml
+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
@@ -2983,7 +2983,7 @@
         <title>Adding a New Machine</title>

         <para>
-            Adding a new machine to the Yocto Project is a straight forward
+            Adding a new machine to the Yocto Project is a straightforward
             process.
             This section describes how to add machines that are similar
             to those that the Yocto Project already supports.
@@ -3023,7 +3023,8 @@

             <para>
                 The most important variables you must set in your machine
-                configuration file are as follows:
+                configuration file (or include from a lower-level configuration
+                file) are as follows:
                 <itemizedlist>
                     <listitem><para><filename><ulink url='&YOCTO_DOCS_REF_URL;#var-TARGET_ARCH'>TARGET_ARCH</ulink></filename>
                         (e.g. "arm")</para></listitem>
@@ -3181,41 +3182,47 @@
                 variables in the
                 <filename>meta/conf/bitbake.conf</filename> configuration file define how files installed
                 by the <filename>do_install</filename> task are packaged.
-                By default, the <filename>PACKAGES</filename> variable contains
-                <filename>${PN}-staticdev</filename>, which includes all static library files.
+                By default, the <filename>PACKAGES</filename> variable includes
+                <filename>${PN}-staticdev</filename>, which represents all static library files.
                 <note>
                     Some previously released versions of the Yocto Project
                     defined the static library files through
                     <filename>${PN}-dev</filename>.
                 </note>
-                Following, is part of the BitBake configuration file.
-                You can see where the static library files are defined:
+                Below is part of the BitBake configuration file, where
+                you can see how the static library files are defined:
                 <literallayout class='monospaced'>
-     PACKAGES = "${PN}-dbg ${PN} ${PN}-doc ${PN}-dev ${PN}-staticdev ${PN}-locale"
-     PACKAGES_DYNAMIC = "${PN}-locale-*"
+     PACKAGE_BEFORE_PN ?= ""
+     PACKAGES = "${PN}-dbg ${PN}-staticdev ${PN}-dev ${PN}-doc ${PN}-locale ${PACKAGE_BEFORE_PN} ${PN}"
+     PACKAGES_DYNAMIC = "^${PN}-locale-.*"
      FILES = ""

      FILES_${PN} = "${bindir}/* ${sbindir}/* ${libexecdir}/* ${libdir}/lib*${SOLIBS} \
                  ${sysconfdir} ${sharedstatedir} ${localstatedir} \
                  ${base_bindir}/* ${base_sbindir}/* \
                  ${base_libdir}/*${SOLIBS} \
+                 ${base_prefix}/lib/udev/rules.d ${prefix}/lib/udev/rules.d \
                  ${datadir}/${BPN} ${libdir}/${BPN}/* \
                  ${datadir}/pixmaps ${datadir}/applications \
                  ${datadir}/idl ${datadir}/omf ${datadir}/sounds \
                  ${libdir}/bonobo/servers"

+     FILES_${PN}-bin = "${bindir}/* ${sbindir}/*"
+
      FILES_${PN}-doc = "${docdir} ${mandir} ${infodir} ${datadir}/gtk-doc \
                  ${datadir}/gnome/help"
      SECTION_${PN}-doc = "doc"

-     FILES_${PN}-dev = "${includedir} ${libdir}/lib*${SOLIBSDEV} ${libdir}/*.la \
+     FILES_SOLIBSDEV ?= "${base_libdir}/lib*${SOLIBSDEV} ${libdir}/lib*${SOLIBSDEV}"
+     FILES_${PN}-dev = "${includedir} ${FILES_SOLIBSDEV} ${libdir}/*.la \
                      ${libdir}/*.o ${libdir}/pkgconfig ${datadir}/pkgconfig \
-                     ${datadir}/aclocal ${base_libdir}/*.o"
+                     ${datadir}/aclocal ${base_libdir}/*.o \
+                     ${libdir}/${BPN}/*.la ${base_libdir}/*.la"
      SECTION_${PN}-dev = "devel"
      ALLOW_EMPTY_${PN}-dev = "1"
      RDEPENDS_${PN}-dev = "${PN} (= ${EXTENDPKGV})"

-     FILES_${PN}-staticdev = "${libdir}/*.a ${base_libdir}/*.a"
+     FILES_${PN}-staticdev = "${libdir}/*.a ${base_libdir}/*.a ${libdir}/${BPN}/*.a"
      SECTION_${PN}-staticdev = "devel"
      RDEPENDS_${PN}-staticdev = "${PN}-dev (= ${EXTENDPKGV})"
                 </literallayout>
@@ -3245,7 +3252,7 @@
                 While the Multilib feature is most commonly used for 32 and 64-bit differences,
                 the approach the build system uses facilitates different target optimizations.
                 You could compile some binaries to use one set of libraries and other binaries
-                to use other different sets of libraries.
+                to use a different set of libraries.
                 The libraries could differ in architecture, compiler options, or other
                 optimizations.
             </para>
@@ -3304,8 +3311,9 @@
                     <ulink url='&YOCTO_DOCS_REF_URL;#var-RDEPENDS'><filename>RDEPENDS</filename></ulink>,
                     <ulink url='&YOCTO_DOCS_REF_URL;#var-RPROVIDES'><filename>RPROVIDES</filename></ulink>,
                     <ulink url='&YOCTO_DOCS_REF_URL;#var-RRECOMMENDS'><filename>RRECOMMENDS</filename></ulink>,
-                    <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGES'><filename>PACKAGES</filename></ulink>,
-                    and <filename>PACKAGES_DYNAMIC</filename> are automatically extended by the system.
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGES'><filename>PACKAGES</filename></ulink>, and
+                    <ulink url='&YOCTO_DOCS_REF_URL;#var-PACKAGES_DYNAMIC'><filename>PACKAGES_DYNAMIC</filename></ulink>
+                    are automatically extended by the system.
                     If you are extending any manual code in the recipe, you can use the
                     <filename>${MLPREFIX}</filename> variable to ensure those names are extended
                     correctly.
@@ -3349,7 +3357,7 @@
                     </literallayout>
                     You can also build Multilib packages specifically with a command like this:
                     <literallayout class='monospaced'>
-     $  bitbake lib32-connman
+     $ bitbake lib32-connman
                     </literallayout>
                 </para>
             </section>
@@ -3423,7 +3431,7 @@
             </para>

             <para>
-                The process is straight forward as long as the libraries use
+                The process is straightforward as long as the libraries use
                 proper versioning.
                 With properly versioned libraries, all you need to do to
                 individually specify the libraries is create separate,
@@ -3477,7 +3485,7 @@
             from existing OpenEmbedded build artifacts.
             Image generation is driven by partitioning commands contained
             in an Openembedded kickstart file (<filename>.wks</filename>)
-            specified either directly on the command-line or as one of a
+            specified either directly on the command line or as one of a
             selection of canned <filename>.wks</filename> files as shown
             with the <filename>wic list images</filename> command in the
             "<link linkend='using-a-provided-kickstart_file'>Using an Existing Kickstart File</link>"
@@ -3534,7 +3542,7 @@
                         standalone utility that initially provides
                         easier-to-use and more flexible replacements for a
                         couple bits of existing functionality in OE Core's
-                        <filename>directdisk.bbclass</filename> and
+                        <filename>boot-directdisk.bbclass</filename> and
                         <filename>mkefidisk.sh</filename> scripts.
                         The difference between
                         <filename>wic</filename> and those examples is
@@ -3639,7 +3647,7 @@
                 <literallayout class='monospaced'>
      $ wic list &lt;image&gt; help
                 </literallayout>
-                Where <filename>&lt;image&gt;</filename> is either
+                where <filename>&lt;image&gt;</filename> is either
                 <filename>directdisk</filename> or
                 <filename>mkefidisk</filename>.
             </para>
@@ -3687,7 +3695,7 @@
          Where:

              <replaceable>image_name</replaceable>.wks
-                               An an OpenEmbedded kickstart file.  You can provide
+                               An OpenEmbedded kickstart file.  You can provide
                                your own custom file or use a file from a set of
                                existing files as described by further options.

@@ -3719,7 +3727,7 @@
                                The path to the native sysroot containing the tools to use
                                to build the image.

-             -p, &dash;&dash;skip-build-check
+             -s, &dash;&dash;skip-build-check
                                Skips the build check.

              -D, &dash;&dash;debug
@@ -3794,13 +3802,13 @@
      # long-description: Creates a partitioned EFI disk image that the user
      # can directly dd to boot media.

-     part /boot &dash;&dash;source bootimg-efi &dash;&dash;ondisk sda &dash;&dash;active
+     part /boot --source bootimg-efi --ondisk sda --label msdos --active --align 1024

-     part / &dash;&dash;source rootfs &dash;&dash;ondisk sda &dash;&dash;fstype=ext3 &dash;&dash;label platform
+     part / --source rootfs --ondisk sda --fstype=ext3 --label platform --align 1024

-     part swap &dash;&dash;ondisk sda &dash;&dash;size 44 &dash;&dash;label swap1 &dash;&dash;fstype=swap
+     part swap --ondisk sda --size 44 --label swap1 --fstype=swap

-     bootloader  &dash;&dash;timeout=10  &dash;&dash;append="rootwait console=ttyPCH0,115200"
+     bootloader  --timeout=10  --append="rootwait rootfstype=ext3 console=ttyPCH0,115200 console=tty0 vmalloc=256MB snd-hda-intel.enable_msi=0"
                 </literallayout>
             </para>
         </section>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


