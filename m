Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C31E01716
	for <yocto@yoctoproject.org>; Tue,  5 Nov 2013 10:10:53 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 05 Nov 2013 10:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="385016472"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by azsmga001.ch.intel.com with ESMTP; 05 Nov 2013 10:10:26 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.35]) with mapi id
	14.03.0123.003; Tue, 5 Nov 2013 10:10:25 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: A number of minor tweaks to ref manual
	ch 3, closer-look.xml
Thread-Index: AQHO2hq1zNBJCxOiC0OoYzMkTWE/7JoW8Clg
Date: Tue, 5 Nov 2013 18:10:24 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4466D@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311050629480.10829@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311050629480.10829@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: A number of minor tweaks to ref manual ch 3, closer-look.xml
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
X-List-Received-Date: Tue, 05 Nov 2013 18:10:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

This patch is applied.  Thanks for the close read and review.  You discover=
ed several little issues.=20

Best,=20
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Tuesday, November 05, 2013 3:32 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: A number of minor tweaks to ref manual ch
>3, closer-look.xml
>
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>diff --git a/documentation/ref-manual/closer-look.xml b/documentation/ref-
>manual/closer-look.xml
>index 25c03e0..4883981 100644
>--- a/documentation/ref-manual/closer-look.xml
>+++ b/documentation/ref-manual/closer-look.xml
>@@ -267,7 +267,7 @@
>
>         <para>
>             The previous section described the user configurations that
>-            define the BitBake's global behavior.
>+            define BitBake's global behavior.
>             This section takes a closer look at the layers the build syst=
em
>             uses to further control the build.
>             These layers provide Metadata for the software, machine, and =
@@ -
>363,7 +363,7 @@
>                 for what you typically find in the distribution layer:
>                 <itemizedlist>
>                     <listitem><para><emphasis>classes:</emphasis>
>-                        Class files (<filename>.bbclass</filename>) holds
>+                        Class files (<filename>.bbclass</filename>)
>+ hold
>                         common functionality that can be shared among
>                         recipes in the distribution.
>                         When your recipes inherit a class, they take on t=
he @@ -381,7
>+381,7 @@
>                     <listitem><para><emphasis>recipes-*:</emphasis>
>                         Recipes and append files that affect common
>                         functionality across the distribution.
>-                        This area could include recipes and append files =
to
>+                        This area could include recipes and append
>+ files
>                         to add distribution-specific configuration,
>                         initialization scripts, custom image recipes,
>                         and so forth.</para></listitem> @@ -421,7 +421,7 =
@@
>                 Metadata can exist for multiple formfactors, graphics
>                 support systems, and so forth.
>                 <note>
>-                    While the figure shows several <filename>recipe-*</fi=
lename>
>+                    While the figure shows several
>+ <filename>recipes-*</filename>
>                     directories, not all these directories appear in all
>                     BSP layers.
>                 </note>
>@@ -487,7 +487,7 @@
>
>         <para>
>             Another area that plays a significant role in where source fi=
les
>-            comes from is pointed to by the
>+            come from is pointed to by the
>             <link linkend=3D'var-DL_DIR'><filename>DL_DIR</filename></lin=
k>
>             variable.
>             This area is a cache that can hold previously downloaded sour=
ce.
>@@ -546,7 +546,7 @@
>                 The canonical method through which to include a local pro=
ject
>                 is to use the
>                 <link linkend=3D'ref-classes-
>externalsrc'><filename>externalsrc.bbclass</filename></link>
>-                class to include local project.
>+                class to include that local project.
>                 You use either the <filename>local.conf</filename> or a
>                 recipe's append file to override or set the
>                 recipe to point to the local directory on your disk to pu=
ll @@ -704,11
>+704,11 @@
>             </para>
>
>             <para>
>-                Unpacked source source files are pointed to by the
>+                Unpacked source files are pointed to by the
>                 <link linkend=3D'var-S'><filename>S</filename></link> var=
iable.
>                 Each recipe has an area in the Build Directory where the
>                 unpacked source code resides.
>-                The name of directory for any given recipe is defined fro=
m
>+                The name of that directory for any given recipe is
>+ defined from
>                 several different variables.
>                 You can see the variables that define these directories
>                 by looking at the figure:
>@@ -809,7 +809,7 @@
>                         variable.
>                         For information on how this variable works within
>                         that class, see the
>-                        <filename>meta/classes/autotools.bbclass</filenam=
e>.
>+                        <filename>meta/classes/autotools.bbclass</filenam=
e> file.
>                         </para></listitem>
>
><listitem><para><emphasis><filename>do_compile</filename>:</emphasis
>>
>                         Once a configuration task has been satisfied, Bit=
Bake @@ -818,8
>+818,8 @@
>                         Compilation occurs in the directory pointed to by=
 the
>                         <link linkend=3D'var-B'><filename>B</filename></l=
ink>
>                         variable.
>-                        Realize that the <filename>B</filename> directory=
, by
>-                        default, is the same as the
>+                        Realize that the <filename>B</filename> directory=
 is, by
>+                        default, the same as the
>                         <link linkend=3D'var-S'><filename>S</filename></l=
ink>
>                         directory.</para></listitem>
>
><listitem><para><emphasis><filename>do_install</filename>:</emphasis>
>@@ -948,7 +948,7 @@
>
>             <para>
>                 During image generation, the build system attempts to run
>-                all post installation scripts.
>+                all post-installation scripts.
>                 Any that fail to run on the build host are run on the
>                 target when the target system is first booted.
>                 If you are using a
>@@ -1052,7 +1052,7 @@
>         <para>
>             The images produced by the OpenEmbedded build system
>             are compressed forms of the
>-            root filesystems that are ready to boot on a target device.
>+            root filesystem that are ready to boot on a target device.
>             You can see from the
>             <link linkend=3D'general-yocto-environment-figure'>general Yo=
cto
>Project Development Environment figure</link>
>             that BitBake output in part consists of images.
>@@ -1062,14 +1062,14 @@
>
>         <para>
>             For a list of example images that the Yocto Project provides,
>-            the
>+            see the
>             "<link linkend=3D'ref-images'>Images</link>" chapter.
>         </para>
>
>         <para>
>             Images are written out to the
>             <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>Build
>Directory</ulink>
>-            inside the <filename>deploy/images/&lt;machine&gt;/</filename=
>
>+            inside the
>+ <filename>tmp/deploy/images/&lt;machine&gt;/</filename>
>             folder as shown in the figure.
>             This folder contains any files expected to be loaded on the
>             target device.
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

