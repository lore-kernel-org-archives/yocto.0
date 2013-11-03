Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 877A2E0178C
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 02:16:46 -0800 (PST)
Received: from [173.34.6.101] (port=48070 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vcujc-0008Vo-SC; Sun, 03 Nov 2013 05:16:44 -0500
Date: Sun, 3 Nov 2013 05:16:38 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1311030512340.31045@oneiric>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
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
Subject: [RFC] variable glossary in ref manual, lots of little fixes
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
X-List-Received-Date: Sun, 03 Nov 2013 10:16:49 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  before submitting as a patch, open for comments on anything i should
adjust first. a collection of typo fixes, grammar fixes,
clarifications (i hope), updates of examples to match current dora
tarball, and on and on and on.

  based on fairly quick first pass and i made a list of things which
i'm not sure what to do about and will post those separately shortly.
so ... thoughts? once i deal with feedback, i'll submit as official
patch. enjoy.

diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index f3211f8..70f731b 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -53,15 +53,16 @@
                    By default, BitBake does not produce empty packages.
                    This default behavior can cause issues when there is an
                    <link linkend='var-RDEPENDS'><filename>RDEPENDS</filename></link> or
-                   some other runtime hard-requirement on the existence of the package.
+                   some other hard runtime requirement on the existence of the package.
                 </para>

                 <para>
                    Like all package-controlling variables, you must always use them in
-                   conjunction with a package name override.
-                   Here is an example:
+                   conjunction with a package name override, as in:
                    <literallayout class='monospaced'>
      ALLOW_EMPTY_${PN} = "1"
+     ALLOW_EMPTY_${PN}-dev = "1"
+     ALLOW_EMPTY_${PN}-staticdev = "1"
                    </literallayout>
                 </para>
             </glossdef>
@@ -234,9 +235,9 @@
                     in which the OpenEmbedded build system places generated
                     objects during a recipe's build process.
                     By default, this directory is the same as the <link linkend='var-S'><filename>S</filename></link>
-                    directory:
+                    directory, which is defined as:
                     <literallayout class='monospaced'>
-     B = "${WORKDIR}/${BPN}/{PV}/"
+     S = "${WORKDIR}/${BP}/"
                     </literallayout>
                     You can separate the (<filename>S</filename>) directory
                     and the directory pointed to by the <filename>B</filename>
@@ -503,7 +504,7 @@
                     the Git repositories is not the default action by the
                     OpenEmbedded build system.
                     <literallayout class='monospaced'>
-     BB_Generate_MIRROR_TARBALLS = "1"
+     BB_GENERATE_MIRROR_TARBALLS = "1"
                     </literallayout>
                     Set this variable in your <filename>local.conf</filename>
                     file in the
@@ -515,7 +516,7 @@
         <glossentry id='var-BB_NUMBER_THREADS'><glossterm>BB_NUMBER_THREADS</glossterm>
             <glossdef>
                 <para>The maximum number of tasks BitBake should run in parallel at any one time.
-                    If your host development system supports multiple cores a good rule of thumb
+                    If your host development system supports multiple cores, a good rule of thumb
                     is to set this variable to twice the number of cores.</para>
             </glossdef>
         </glossentry>
@@ -591,7 +592,7 @@
                     for a layer with no dependencies, is the lowest defined priority + 1
                     (or 1 if no priorities are defined).</para>
                 <tip>
-                    You can use the command <filename>bitbake-layers show_layers</filename> to list
+                    You can use the command <filename>bitbake-layers show-layers</filename> to list
                     all configured layers along with their priorities.
                 </tip>
             </glossdef>
@@ -1085,7 +1086,7 @@ Core layer for images cannot be removed
                     <filename><link linkend='var-TARGET_CFLAGS'>TARGET_CFLAGS</link></filename>
                     and <filename><link linkend='var-CFLAGS'>CFLAGS</link></filename> when compiling
                     a system for debugging.
-                    This variable defaults to "-O -fno-omit-frame-pointer -g".
+                    This variable defaults to "-O -fno-omit-frame-pointer ${DEBUG_FLAGS} -pipe".
                 </para>
             </glossdef>
         </glossentry>
@@ -1108,7 +1109,7 @@ Core layer for images cannot be removed
                     The bias provided by <filename>DEFAULT_PREFERENCE</filename>
                     is weak and is overridden by
                     <filename><link linkend='var-BBFILE_PRIORITY'>BBFILE_PRIORITY</link></filename>
-                    if the that variable is different between two layers
+                    if that variable is different between two layers
                     that contain different versions of the same recipe.
                 </note>
             </glossdef>
@@ -1156,7 +1157,7 @@ Core layer for images cannot be removed
                     files that are ready to be used outside of the build system.
                     By default, this directory resides within the
                     <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
-                    as <filename>tmp/deploy</filename>.
+                    as <filename>${TMPDIR}/deploy</filename>.
                 </para>

                 <para>
@@ -1183,7 +1184,7 @@ Core layer for images cannot be removed
                     <filename>${MACHINE}</filename> name.
                     By default, this directory resides within the
                     <ulink url='&YOCTO_DOCS_DEV_URL;#build-directory'>Build Directory</ulink>
-                    as <filename>tmp/deploy/images/${MACHINE}/</filename>.
+                    as <filename>${DEPLOY_DIR}/images/${MACHINE}/</filename>.
                 </para>

                 <para>
@@ -1320,7 +1321,7 @@ Core layer for images cannot be removed

         <glossentry id='var-DISTRO_VERSION'><glossterm>DISTRO_VERSION</glossterm>
             <glossdef>
-                <para>the version of the distribution.</para>
+                <para>The version of the distribution.</para>
             </glossdef>
         </glossentry>

@@ -1621,7 +1622,7 @@ Core layer for images cannot be removed
                 <para>Sometimes a recipe is required to build the final image but is not
                     needed in the root filesystem.
                     You can use the <filename>EXTRA_IMAGEDEPENDS</filename> variable to
-                    list these recipes and thus, specify the dependencies.
+                    list these recipes and thus specify the dependencies.
                     A typical example is a required bootloader in a machine configuration.
                 </para>
                 <note>
@@ -1675,8 +1676,8 @@ Core layer for images cannot be removed
                 <note>
                     When specifying paths as part of the <filename>FILES</filename> variable,
                     it is good practice to use appropriate path variables.
-                    For example, <filename>${sysconfdir}</filename> rather than
-                    <filename>/etc</filename> or <filename>${bindir}</filename> rather
+                    For example, use <filename>${sysconfdir}</filename> rather than
+                    <filename>/etc</filename>, or <filename>${bindir}</filename> rather
                     than <filename>/usr/bin</filename>.
                     You can find a list of these variables at the top of the
                     <filename>/meta/conf/bitbake.conf</filename> file in the
@@ -1849,7 +1850,7 @@ Core layer for images cannot be removed
                     is located in the <filename>meta/files</filename> folder in the
                     <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink>.
                     If you create your own file permissions setting table, you should place it in your
-                    layer or the distros layer.
+                    layer or the distro's layer.
                 </para>
                 <para>
                     You define the <filename>FILESYSTEM_PERMS_TABLES</filename> variable in the
@@ -1875,7 +1876,7 @@ Core layer for images cannot be removed
                     and <filename><link linkend='var-CFLAGS'>CFLAGS</link></filename>
                     when compiling an optimized system.
                     This variable defaults to
-                    "-fexpensive-optimizations -fomit-frame-pointer -frename-registers -O2".
+                    "-O2 -pipe ${DEBUG_FLAGS}".
                 </para>
             </glossdef>
         </glossentry>
@@ -1982,7 +1983,7 @@ Core layer for images cannot be removed
                 </para>

                 <para>
-                    For example that shows how to customize your image by
+                    For an example that shows how to customize your image by
                     using this variable, see the
                     "<ulink url='&YOCTO_DOCS_DEV_URL;#usingpoky-extend-customimage-imagefeatures'>Customizing Images Using Custom <filename>IMAGE_FEATURES</filename> and <filename>EXTRA_IMAGE_FEATURES</filename></ulink>"
                     section in the Yocto Project Development Manual.
@@ -1998,7 +1999,7 @@ Core layer for images cannot be removed
                     For example, setting <filename>IMAGE_FSTYPES</filename>
                     as follows causes the build system to create root
                     filesystems using two formats: <filename>.ext3</filename>
-                    and <filename>tar.bz2</filename>:
+                    and <filename>.tar.bz2</filename>:
                     <literallayout class='monospaced'>
      IMAGE_FSTYPES = "ext3 tar.bz2"
                     </literallayout>
@@ -2036,7 +2037,7 @@ Core layer for images cannot be removed
                     <filename>+=</filename> operation against <filename>IMAGE_INSTALL</filename>
                     will result in unexpected behavior when used in
                     <filename>/conf/local.conf</filename>.
-                    Furthermore, the same operation from with an image recipe may or may not
+                    Furthermore, the same operation from within an image recipe may or may not
                     succeed depending on the specific situation.
                     In both these cases, the behavior is contrary to how most users expect
                     the <filename>+=</filename> operator to work.
@@ -2048,7 +2049,7 @@ Core layer for images cannot be removed
      IMAGE_INSTALL_append = " package-name"
                     </literallayout>
                     Be sure to include the space between the quotation character and the start of the
-                    package name.
+                    package name or names.
                 </para>
             </glossdef>
         </glossentry>
@@ -2134,9 +2135,9 @@ Core layer for images cannot be removed

                 <para>
                     Alternatively, you can ensure a specific amount of free disk space is added
-                    to the image by using
+                    to the image by using the
                     <filename><link linkend='var-IMAGE_ROOTFS_EXTRA_SPACE'>IMAGE_ROOTFS_EXTRA_SPACE</link></filename>
-                    the variable.
+                    variable.
                 </para>
             </glossdef>
         </glossentry>
@@ -2189,6 +2190,14 @@ Core layer for images cannot be removed
      IMAGE_ROOTFS_EXTRA_SPACE = "5242880"
                     </literallayout>
                 </para>
+
+                <para>
+                    For example, the Yocto Project Build Appliance specifically requests 40 Gbytes
+                    of extra space with the line:
+                    <literallayout class='monospaced'>
+     IMAGE_ROOTFS_EXTRA_SPACE = "41943040"
+                    </literallayout>
+                </para>
             </glossdef>
         </glossentry>

@@ -2409,7 +2418,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 </para>
                 <para>
                     This variable is used in recipes when using <filename>update-rc.d.bbclass</filename>.
-                    The variable is Mandatory.
+                    The variable is mandatory.
                 </para>
             </glossdef>
         </glossentry>
@@ -3088,11 +3097,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
      MACHINE ?= "qemux86"
      MACHINE ?= "qemux86-64"
      MACHINE ?= "genericx86"
+     MACHINE ?= "genericx86-64"
      MACHINE ?= "beagleboard"
      MACHINE ?= "mpc8315e-rdb"
      MACHINE ?= "routerstationpro"
                     </literallayout>
-                    The last four are Yocto Project reference hardware boards, which
+                    The last five are Yocto Project reference hardware boards, which
                     are provided in the <filename>meta-yocto-bsp</filename> layer.
                     <note>Adding additional Board Support Package (BSP) layers
                         to your configuration adds new possible settings for
@@ -3471,7 +3481,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                     <note>
                         Some recommended packages might be required for certain
                         system functionality, such as kernel modules.
-                        It is up to you to add packages with
+                        It is up to you to add packages with the
                         <link linkend='var-IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></link>
                         variable.
                     </note>
@@ -3650,7 +3660,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                 <para>Enables easily adding packages to
                 <filename><link linkend='var-PACKAGES'>PACKAGES</link></filename>
                 before <filename>${<link linkend='var-PN'>PN</link>}</filename>
-                so that the packages can pick up files that would normally be
+                so that those added packages can pick up files that would normally be
                 included in the default package.</para>
             </glossdef>
         </glossentry>
@@ -3868,7 +3878,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR = "${INC_PR}.3"
                             <literallayout class='monospaced'>
      PACKAGECONFIG="f4 f5"
                             </literallayout>
-                            Or, you can just amended the variable:
+                            Or, you can just append the variable:
                             <literallayout class='monospaced'>
      PACKAGECONFIG_append = " f4"
                             </literallayout></para></listitem>
@@ -4083,6 +4093,11 @@ PARALLEL_MAKEINST with the description ".
                     <filename>do_packagedata</filename> task packages
                     data for each recipe and installs it into this temporary,
                     shared area.
+                    This directory defaults to the following:
+                    <literallayout class='monospaced'>
+     ${STAGING_DIR_HOST}/pkgdata
+                    </literallayout>
+                    Do not change this default.
                 </para>
             </glossdef>
         </glossentry>
@@ -4168,9 +4183,11 @@ PARALLEL_MAKEINST with the description ".
                     provided item, and you should set it to the
                     <link linkend='var-PN'><filename>PN</filename></link>
                     of the recipe to which you want to give precedence.
-                    Here is an example:
+                    Some examples:
                     <literallayout class='monospaced'>
+     PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
      PREFERRED_PROVIDER_virtual/xserver = "xserver-xf86"
+     PREFERRED_PROVIDER_virtual/libgl ?= "mesa"
                     </literallayout>
                 </para>
             </glossdef>
@@ -4183,7 +4200,7 @@ PARALLEL_MAKEINST with the description ".
                     variable determines which recipe should be given preference.
                     You must always suffix the variable with the
                     <link linkend='var-PN'><filename>PN</filename></link>
-                    you want to select, and you should set to the
+                    you want to select, and you should set the
                     <link linkend='var-PV'><filename>PV</filename></link>
                     accordingly for precedence.
                     You can use the "<filename>%</filename>" character as a
@@ -4192,8 +4209,8 @@ PARALLEL_MAKEINST with the description ".
                     numbers that could potentially change.
                     Here are two examples:
                     <literallayout class='monospaced'>
-     PREFERRED_VERSION_python = "2.6.6"
-     PREFERRED_VERSION_linux-yocto = "3.0+git%"
+     PREFERRED_VERSION_python = "2.7.3"
+     PREFERRED_VERSION_linux-yocto = "3.10%"
                     </literallayout>
                 </para>
             </glossdef>
@@ -4251,7 +4268,7 @@ PARALLEL_MAKEINST with the description ".
                     dynamically increment.
                     This increment minimizes the impact of layer ordering.</para>
                 <para>In order to ensure multiple <filename>.bbappend</filename> files can co-exist,
-                    <filename>PRINC</filename> should be self referencing.
+                    <filename>PRINC</filename> should be self-referencing.
                     This variable defaults to 0.</para>
                 <para>Following is an example that increments <filename>PR</filename> by two:
                     <literallayout class='monospaced'>
@@ -5226,7 +5243,7 @@ PARALLEL_MAKEINST with the description ".
                     Source Directory defines <filename>PV</filename> as
                     follows:
                     <literallayout class='monospaced'>
-     PV = "1.5.0+git${SRCPV}"
+     PV = "0.12-git${SRCPV}"
                     </literallayout>
                 </para>
             </glossdef>
@@ -5837,7 +5854,7 @@ PARALLEL_MAKEINST with the description ".
                     For packages that are not dependent on a particular machine,
                     <filename>WORKDIR</filename> is defined as follows:
                     <literallayout class='monospaced'>
- ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
+     ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
                     </literallayout>
                     As an example, assume a
                     <ulink url='&YOCTO_DOCS_DEV_URL;#source-directory'>Source Directory</ulink> top-level
@@ -5853,7 +5870,7 @@ PARALLEL_MAKEINST with the description ".

                 <para>
                     For packages that are dependent on a particular machine, <filename>WORKDIR</filename>
-                    is defined slightly different:
+                    is defined slightly differently:
                     <literallayout class='monospaced'>
  ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
                     </literallayout>


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

