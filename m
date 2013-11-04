Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DEF3E016D8
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 10:22:41 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 04 Nov 2013 10:22:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="316854534"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by AZSMGA002.ch.intel.com with ESMTP; 04 Nov 2013 10:22:39 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.25]) with mapi id
	14.03.0123.003; Mon, 4 Nov 2013 10:22:39 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: Lots of little fixes for variable
	glossary of ref manual
Thread-Index: AQHO2S6KQffdJFG1SUy2/4y6tt0LOZoVYfvA
Date: Mon, 4 Nov 2013 18:22:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44103@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311040218050.7690@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311040218050.7690@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Lots of little fixes for variable glossary of ref manual
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
X-List-Received-Date: Mon, 04 Nov 2013 18:22:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

You found a lot of little things here.  Thanks for taking the time to creat=
e this patch.  I have applied it to both the dora and master branches.

Here is the patch on master: http://git.yoctoproject.org/cgit/cgit.cgi/yoct=
o-docs/commit/?id=3D3d719af78c9d4b7260b399c98b7630ddf11c326b

Thanks,=20
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Sunday, November 03, 2013 11:21 PM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: Lots of little fixes for variable glossary=
 of ref
>manual
>
>
>Fixes include:
>
> * typoes
> * grammar fixes
> * updated package and version references
> * clarifications
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/ref-variables.xml
>b/documentation/ref-manual/ref-variables.xml
>index f3211f8..81624ba 100644
>--- a/documentation/ref-manual/ref-variables.xml
>+++ b/documentation/ref-manual/ref-variables.xml
>@@ -53,15 +53,16 @@
>                    By default, BitBake does not produce empty packages.
>                    This default behavior can cause issues when there is a=
n
>                    <link linkend=3D'var-
>RDEPENDS'><filename>RDEPENDS</filename></link> or
>-                   some other runtime hard-requirement on the existence o=
f the
>package.
>+                   some other hard runtime requirement on the existence o=
f the
>package.
>                 </para>
>
>                 <para>
>                    Like all package-controlling variables, you must alway=
s use them in
>-                   conjunction with a package name override.
>-                   Here is an example:
>+                   conjunction with a package name override, as in:
>                    <literallayout class=3D'monospaced'>
>      ALLOW_EMPTY_${PN} =3D "1"
>+     ALLOW_EMPTY_${PN}-dev =3D "1"
>+     ALLOW_EMPTY_${PN}-staticdev =3D "1"
>                    </literallayout>
>                 </para>
>             </glossdef>
>@@ -234,9 +235,9 @@
>                     in which the OpenEmbedded build system places generat=
ed
>                     objects during a recipe's build process.
>                     By default, this directory is the same as the <link l=
inkend=3D'var-
>S'><filename>S</filename></link>
>-                    directory:
>+                    directory, which is defined as:
>                     <literallayout class=3D'monospaced'>
>-     B =3D "${WORKDIR}/${BPN}/{PV}/"
>+     S =3D "${WORKDIR}/${BP}/"
>                     </literallayout>
>                     You can separate the (<filename>S</filename>) directo=
ry
>                     and the directory pointed to by the <filename>B</file=
name> @@ -
>503,7 +504,7 @@
>                     the Git repositories is not the default action by the
>                     OpenEmbedded build system.
>                     <literallayout class=3D'monospaced'>
>-     BB_Generate_MIRROR_TARBALLS =3D "1"
>+     BB_GENERATE_MIRROR_TARBALLS =3D "1"
>                     </literallayout>
>                     Set this variable in your <filename>local.conf</filen=
ame>
>                     file in the
>@@ -515,7 +516,7 @@
>         <glossentry id=3D'var-
>BB_NUMBER_THREADS'><glossterm>BB_NUMBER_THREADS</glossterm>
>             <glossdef>
>                 <para>The maximum number of tasks BitBake should run in p=
arallel at
>any one time.
>-                    If your host development system supports multiple cor=
es a good
>rule of thumb
>+                    If your host development system supports multiple
>+ cores, a good rule of thumb
>                     is to set this variable to twice the number of cores.=
</para>
>             </glossdef>
>         </glossentry>
>@@ -591,7 +592,7 @@
>                     for a layer with no dependencies, is the lowest defin=
ed priority + 1
>                     (or 1 if no priorities are defined).</para>
>                 <tip>
>-                    You can use the command <filename>bitbake-layers
>show_layers</filename> to list
>+                    You can use the command <filename>bitbake-layers
>+ show-layers</filename> to list
>                     all configured layers along with their priorities.
>                 </tip>
>             </glossdef>
>@@ -969,8 +970,8 @@ Core layer for images cannot be removed
>                     Then, provide a space-separated list of files.
>                     Here is an example:
>                     <literallayout class=3D'monospaced'>
>-  CONFFILES_${PN} +=3D "${sysconfdir}/file1 \
>-     ${sysconfdir}/file2 ${sysconfdir}/file3"
>+     CONFFILES_${PN} +=3D "${sysconfdir}/file1 \
>+        ${sysconfdir}/file2 ${sysconfdir}/file3"
>                     </literallayout>
>                 </para>
>
>@@ -1085,7 +1086,7 @@ Core layer for images cannot be removed
>                     <filename><link linkend=3D'var-
>TARGET_CFLAGS'>TARGET_CFLAGS</link></filename>
>                     and <filename><link linkend=3D'var-
>CFLAGS'>CFLAGS</link></filename> when compiling
>                     a system for debugging.
>-                    This variable defaults to "-O -fno-omit-frame-pointer=
 -g".
>+                    This variable defaults to "-O -fno-omit-frame-pointer
>${DEBUG_FLAGS} -pipe".
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -1108,7 +1109,7 @@ Core layer for images cannot be removed
>                     The bias provided by
><filename>DEFAULT_PREFERENCE</filename>
>                     is weak and is overridden by
>                     <filename><link linkend=3D'var-
>BBFILE_PRIORITY'>BBFILE_PRIORITY</link></filename>
>-                    if the that variable is different between two layers
>+                    if that variable is different between two layers
>                     that contain different versions of the same recipe.
>                 </note>
>             </glossdef>
>@@ -1156,7 +1157,7 @@ Core layer for images cannot be removed
>                     files that are ready to be used outside of the build =
system.
>                     By default, this directory resides within the
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>B=
uild
>Directory</ulink>
>-                    as <filename>tmp/deploy</filename>.
>+                    as <filename>${TMPDIR}/deploy</filename>.
>                 </para>
>
>                 <para>
>@@ -1183,7 +1184,7 @@ Core layer for images cannot be removed
>                     <filename>${MACHINE}</filename> name.
>                     By default, this directory resides within the
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>B=
uild
>Directory</ulink>
>-                    as <filename>tmp/deploy/images/${MACHINE}/</filename>=
.
>+                    as <filename>${DEPLOY_DIR}/images/${MACHINE}/</filena=
me>.
>                 </para>
>
>                 <para>
>@@ -1320,7 +1321,7 @@ Core layer for images cannot be removed
>
>         <glossentry id=3D'var-
>DISTRO_VERSION'><glossterm>DISTRO_VERSION</glossterm>
>             <glossdef>
>-                <para>the version of the distribution.</para>
>+                <para>The version of the distribution.</para>
>             </glossdef>
>         </glossentry>
>
>@@ -1621,7 +1622,7 @@ Core layer for images cannot be removed
>                 <para>Sometimes a recipe is required to build the final i=
mage but is
>not
>                     needed in the root filesystem.
>                     You can use the <filename>EXTRA_IMAGEDEPENDS</filenam=
e>
>variable to
>-                    list these recipes and thus, specify the dependencies=
.
>+                    list these recipes and thus specify the dependencies.
>                     A typical example is a required bootloader in a machi=
ne
>configuration.
>                 </para>
>                 <note>
>@@ -1668,15 +1669,15 @@ Core layer for images cannot be removed
>                     files you want included as part of the resulting pack=
age.
>                     Here is an example:
>                     <literallayout class=3D'monospaced'>
>-  FILES_${PN} +=3D "${bindir}/mydir1/ ${bindir}/mydir2/myfile"
>+     FILES_${PN} +=3D "${bindir}/mydir1/ ${bindir}/mydir2/myfile"
>                     </literallayout>
>                 </para>
>
>                 <note>
>                     When specifying paths as part of the <filename>FILES<=
/filename>
>variable,
>                     it is good practice to use appropriate path variables=
.
>-                    For example, <filename>${sysconfdir}</filename> rathe=
r than
>-                    <filename>/etc</filename> or <filename>${bindir}</fil=
ename>
>rather
>+                    For example, use <filename>${sysconfdir}</filename> r=
ather than
>+                    <filename>/etc</filename>, or
>+ <filename>${bindir}</filename> rather
>                     than <filename>/usr/bin</filename>.
>                     You can find a list of these variables at the top of =
the
>                     <filename>/meta/conf/bitbake.conf</filename> file in =
the @@ -
>1849,7 +1850,7 @@ Core layer for images cannot be removed
>                     is located in the <filename>meta/files</filename> fol=
der in the
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>=
Source
>Directory</ulink>.
>                     If you create your own file permissions setting table=
, you should
>place it in your
>-                    layer or the distros layer.
>+                    layer or the distro's layer.
>                 </para>
>                 <para>
>                     You define the
><filename>FILESYSTEM_PERMS_TABLES</filename> variable in the @@ -
>1875,7 +1876,7 @@ Core layer for images cannot be removed
>                     and <filename><link linkend=3D'var-
>CFLAGS'>CFLAGS</link></filename>
>                     when compiling an optimized system.
>                     This variable defaults to
>-                    "-fexpensive-optimizations -fomit-frame-pointer -fren=
ame-
>registers -O2".
>+                    "-O2 -pipe ${DEBUG_FLAGS}".
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -1982,7 +1983,7 @@ Core layer for images cannot be removed
>                 </para>
>
>                 <para>
>-                    For example that shows how to customize your image by
>+                    For an example that shows how to customize your
>+ image by
>                     using this variable, see the
>                     "<ulink url=3D'&YOCTO_DOCS_DEV_URL;#usingpoky-extend-
>customimage-imagefeatures'>Customizing Images Using Custom
><filename>IMAGE_FEATURES</filename> and
><filename>EXTRA_IMAGE_FEATURES</filename></ulink>"
>                     section in the Yocto Project Development Manual.
>@@ -1998,7 +1999,7 @@ Core layer for images cannot be removed
>                     For example, setting <filename>IMAGE_FSTYPES</filenam=
e>
>                     as follows causes the build system to create root
>                     filesystems using two formats: <filename>.ext3</filen=
ame>
>-                    and <filename>tar.bz2</filename>:
>+                    and <filename>.tar.bz2</filename>:
>                     <literallayout class=3D'monospaced'>
>      IMAGE_FSTYPES =3D "ext3 tar.bz2"
>                     </literallayout>
>@@ -2036,7 +2037,7 @@ Core layer for images cannot be removed
>                     <filename>+=3D</filename> operation against
><filename>IMAGE_INSTALL</filename>
>                     will result in unexpected behavior when used in
>                     <filename>/conf/local.conf</filename>.
>-                    Furthermore, the same operation from with an image re=
cipe may
>or may not
>+                    Furthermore, the same operation from within an
>+ image recipe may or may not
>                     succeed depending on the specific situation.
>                     In both these cases, the behavior is contrary to how =
most users
>expect
>                     the <filename>+=3D</filename> operator to work.
>@@ -2048,7 +2049,7 @@ Core layer for images cannot be removed
>      IMAGE_INSTALL_append =3D " package-name"
>                     </literallayout>
>                     Be sure to include the space between the quotation ch=
aracter and
>the start of the
>-                    package name.
>+                    package name or names.
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -2134,9 +2135,9 @@ Core layer for images cannot be removed
>
>                 <para>
>                     Alternatively, you can ensure a specific amount of fr=
ee disk space is
>added
>-                    to the image by using
>+                    to the image by using the
>                     <filename><link linkend=3D'var-
>IMAGE_ROOTFS_EXTRA_SPACE'>IMAGE_ROOTFS_EXTRA_SPACE</link></file
>name>
>-                    the variable.
>+                    variable.
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -2189,6 +2190,14 @@ Core layer for images cannot be removed
>      IMAGE_ROOTFS_EXTRA_SPACE =3D "5242880"
>                     </literallayout>
>                 </para>
>+
>+                <para>
>+                    For example, the Yocto Project Build Appliance specif=
ically
>requests 40 Gbytes
>+                    of extra space with the line:
>+                    <literallayout class=3D'monospaced'>
>+     IMAGE_ROOTFS_EXTRA_SPACE =3D "41943040"
>+                    </literallayout>
>+                </para>
>             </glossdef>
>         </glossentry>
>
>@@ -2409,7 +2418,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>                 </para>
>                 <para>
>                     This variable is used in recipes when using <filename=
>update-
>rc.d.bbclass</filename>.
>-                    The variable is Mandatory.
>+                    The variable is mandatory.
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -3088,11 +3097,12 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR
>=3D "${INC_PR}.3"
>      MACHINE ?=3D "qemux86"
>      MACHINE ?=3D "qemux86-64"
>      MACHINE ?=3D "genericx86"
>+     MACHINE ?=3D "genericx86-64"
>      MACHINE ?=3D "beagleboard"
>      MACHINE ?=3D "mpc8315e-rdb"
>      MACHINE ?=3D "routerstationpro"
>                     </literallayout>
>-                    The last four are Yocto Project reference hardware bo=
ards, which
>+                    The last five are Yocto Project reference hardware
>+ boards, which
>                     are provided in the <filename>meta-yocto-bsp</filenam=
e> layer.
>                     <note>Adding additional Board Support Package (BSP) l=
ayers
>                         to your configuration adds new possible settings =
for @@ -3471,7
>+3481,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =3D
>"${INC_PR}.3"
>                     <note>
>                         Some recommended packages might be required for c=
ertain
>                         system functionality, such as kernel modules.
>-                        It is up to you to add packages with
>+                        It is up to you to add packages with the
>                         <link linkend=3D'var-
>IMAGE_INSTALL'><filename>IMAGE_INSTALL</filename></link>
>                         variable.
>                     </note>
>@@ -3650,7 +3660,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>                 <para>Enables easily adding packages to
>                 <filename><link linkend=3D'var-
>PACKAGES'>PACKAGES</link></filename>
>                 before <filename>${<link linkend=3D'var-PN'>PN</link>}</f=
ilename>
>-                so that the packages can pick up files that would normall=
y be
>+                so that those added packages can pick up files that
>+ would normally be
>                 included in the default package.</para>
>             </glossdef>
>         </glossentry>
>@@ -3868,7 +3878,7 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>                             <literallayout class=3D'monospaced'>
>      PACKAGECONFIG=3D"f4 f5"
>                             </literallayout>
>-                            Or, you can just amended the variable:
>+                            Or, you can just append the variable:
>                             <literallayout class=3D'monospaced'>
>      PACKAGECONFIG_append =3D " f4"
>                             </literallayout></para></listitem>
>@@ -3978,15 +3988,6 @@ recipes-graphics/xorg-font/font-alias_1.0.3.bb:PR =
=3D
>"${INC_PR}.3"
>             </glossdef>
>         </glossentry>
>
>-
>-
>-
>-PARALLEL_MAKEINST with the description ".
>-
>-
>-
>-
>-
>         <glossentry id=3D'var-
>PATCHRESOLVE'><glossterm>PATCHRESOLVE</glossterm>
>             <glossdef>
>                 <para>
>@@ -4083,6 +4084,11 @@ PARALLEL_MAKEINST with the description ".
>                     <filename>do_packagedata</filename> task packages
>                     data for each recipe and installs it into this tempor=
ary,
>                     shared area.
>+                    This directory defaults to the following:
>+                    <literallayout class=3D'monospaced'>
>+     ${STAGING_DIR_HOST}/pkgdata
>+                    </literallayout>
>+                    Do not change this default.
>                 </para>
>             </glossdef>
>         </glossentry>
>@@ -4168,9 +4174,11 @@ PARALLEL_MAKEINST with the description ".
>                     provided item, and you should set it to the
>                     <link linkend=3D'var-PN'><filename>PN</filename></lin=
k>
>                     of the recipe to which you want to give precedence.
>-                    Here is an example:
>+                    Some examples:
>                     <literallayout class=3D'monospaced'>
>+     PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto"
>      PREFERRED_PROVIDER_virtual/xserver =3D "xserver-xf86"
>+     PREFERRED_PROVIDER_virtual/libgl ?=3D "mesa"
>                     </literallayout>
>                 </para>
>             </glossdef>
>@@ -4183,7 +4191,7 @@ PARALLEL_MAKEINST with the description ".
>                     variable determines which recipe should be given pref=
erence.
>                     You must always suffix the variable with the
>                     <link linkend=3D'var-PN'><filename>PN</filename></lin=
k>
>-                    you want to select, and you should set to the
>+                    you want to select, and you should set the
>                     <link linkend=3D'var-PV'><filename>PV</filename></lin=
k>
>                     accordingly for precedence.
>                     You can use the "<filename>%</filename>" character as=
 a @@ -
>4192,8 +4200,8 @@ PARALLEL_MAKEINST with the description ".
>                     numbers that could potentially change.
>                     Here are two examples:
>                     <literallayout class=3D'monospaced'>
>-     PREFERRED_VERSION_python =3D "2.6.6"
>-     PREFERRED_VERSION_linux-yocto =3D "3.0+git%"
>+     PREFERRED_VERSION_python =3D "2.7.3"
>+     PREFERRED_VERSION_linux-yocto =3D "3.10%"
>                     </literallayout>
>                 </para>
>             </glossdef>
>@@ -4251,7 +4259,7 @@ PARALLEL_MAKEINST with the description ".
>                     dynamically increment.
>                     This increment minimizes the impact of layer ordering=
.</para>
>                 <para>In order to ensure multiple <filename>.bbappend</fi=
lename>
>files can co-exist,
>-                    <filename>PRINC</filename> should be self referencing=
.
>+                    <filename>PRINC</filename> should be self-referencing=
.
>                     This variable defaults to 0.</para>
>                 <para>Following is an example that increments
><filename>PR</filename> by two:
>                     <literallayout class=3D'monospaced'> @@ -4719,7 +4727=
,7 @@
>PARALLEL_MAKEINST with the description ".
>                     (<filename><link linkend=3D'var-PV'>PV</link></filena=
me>) as
>                     follows:
>                     <literallayout class=3D'monospaced'>
>- ${WORKDIR}/${PN}-${PV}
>+     ${WORKDIR}/${PN}-${PV}
>                     </literallayout>
>                     As an example, assume a
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>=
Source
>Directory</ulink> @@ -4729,7 +4737,7 @@ PARALLEL_MAKEINST with the
>description ".
>                     to keep the unpacked recipe for <filename>db</filenam=
e>
>                     is the following:
>                     <literallayout class=3D'monospaced'>
>- ~/poky/build/tmp/work/qemux86-poky-linux/db/5.1.19-r3/db-5.1.19
>+     ~/poky/build/tmp/work/qemux86-poky-linux/db/5.1.19-r3/db-5.1.19
>                     </literallayout>
>                 </para>
>             </glossdef>
>@@ -5226,7 +5234,7 @@ PARALLEL_MAKEINST with the description ".
>                     Source Directory defines <filename>PV</filename> as
>                     follows:
>                     <literallayout class=3D'monospaced'>
>-     PV =3D "1.5.0+git${SRCPV}"
>+     PV =3D "0.12-git${SRCPV}"
>                     </literallayout>
>                 </para>
>             </glossdef>
>@@ -5837,7 +5845,7 @@ PARALLEL_MAKEINST with the description ".
>                     For packages that are not dependent on a particular m=
achine,
>                     <filename>WORKDIR</filename> is defined as follows:
>                     <literallayout class=3D'monospaced'>
>- ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-
>${PR}
>+     ${TMPDIR}/work/${PACKAGE_ARCH}-poky-${TARGET_OS}/${PN}/${PV}-
>${PR}
>                     </literallayout>
>                     As an example, assume a
>                     <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>=
Source
>Directory</ulink> top-level @@ -5853,9 +5861,9 @@ PARALLEL_MAKEINST
>with the description ".
>
>                 <para>
>                     For packages that are dependent on a particular machi=
ne,
><filename>WORKDIR</filename>
>-                    is defined slightly different:
>+                    is defined slightly differently:
>                     <literallayout class=3D'monospaced'>
>- ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
>+     ${TMPDIR}/work/${MACHINE}-poky-${TARGET_OS}/${PN}/${PV}-${PR}
>                     </literallayout>
>                     As an example, again assume a Source Directory top-le=
vel folder
>                     named <filename>poky</filename> and a default Build D=
irectory
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

