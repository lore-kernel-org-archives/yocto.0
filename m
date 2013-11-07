Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6161CE01822
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 10:47:51 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Nov 2013 10:47:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,653,1378882800"; d="scan'208";a="429600243"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga002.fm.intel.com with ESMTP; 07 Nov 2013 10:47:50 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.55]) with mapi id
	14.03.0123.003; Thu, 7 Nov 2013 10:47:50 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] Documentation: Partial proofing of ref manual, ch 6
Thread-Index: AQHO2yhQNMu5mkFO906pL4Z+IlpF5JoaHSaA
Date: Thu, 7 Nov 2013 18:47:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F4512D@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311061438110.14212@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311061438110.14212@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation: Partial proofing of ref manual, ch 6
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
X-List-Received-Date: Thu, 07 Nov 2013 18:47:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I looked these over and applied them all.   Pseudodone no longer applies an=
d I took care of that separately.

Thanks,
Scott

>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Wednesday, November 06, 2013 11:42 AM
>To: Yocto discussion list
>Cc: Rifenbark, Scott M
>Subject: [PATCH] Documentation: Partial proofing of ref manual, ch 6
>
>
>Significant tweaks:
>
>* removal of (confusing) leading slashes from YP filenames
>* deletion of reference to non-existent "build/tmp/pkgdata/"
>
>Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
>---
>
>  i didn't do the entire chapter, i think someone else should go through i=
t to
>verify that what's listed is what's actually generated these days.
>
>  for example, there's a listing for "build/pseudodone" that i don't even =
see
>anymore.
>
>diff --git a/documentation/ref-manual/ref-structure.xml
>b/documentation/ref-manual/ref-structure.xml
>index 0872461..977bf57 100644
>--- a/documentation/ref-manual/ref-structure.xml
>+++ b/documentation/ref-manual/ref-structure.xml
>@@ -101,7 +101,7 @@
>     </section>
>
>     <section id=3D'handbook'>
>-        <title><filename>documentation</filename></title>
>+        <title><filename>documentation/</filename></title>
>
>         <para>
>             This directory holds the source for the Yocto Project documen=
tation
>@@ -109,7 +109,7 @@
>             versions of the manuals.
>             Each manual is contained in a sub-folder.
>             For example, the files for this manual reside in
>-            <filename>ref-manual</filename>.
>+            the <filename>ref-manual/</filename> directory.
>         </para>
>     </section>
>
>@@ -179,9 +179,9 @@
>         </para>
>
>         <para>
>-            The <filename>scripts</filename> directory has useful scripts=
 that
>assist contributing
>-            back to the Yocto Project, such as
><filename>create_pull_request</filename> and
>-            <filename>send_pull_request</filename>.
>+            The <filename>scripts</filename> directory has useful scripts=
 that
>assist in contributing
>+            back to the Yocto Project, such as <filename>create-pull-
>request</filename> and
>+            <filename>send-pull-request</filename>.
>         </para>
>     </section>
>
>@@ -209,7 +209,8 @@
>         <para>
>             By default, running this script without a
>             <ulink url=3D'&YOCTO_DOCS_DEV_URL;#build-directory'>Build
>Directory</ulink>
>-            argument creates the <filename>build</filename> directory.
>+            argument creates the <filename>build</filename> directory
>+            in your current working directory.
>             If you provide a Build Directory argument when you
>             <filename>source</filename> the script, you direct the
>OpenEmbedded
>             build system to create a Build Directory of your choice.
>@@ -354,7 +355,7 @@
>             <filename><link linkend=3D'var-MACHINE'>MACHINE</link></filen=
ame>
>             for which you want to build, which package types you wish to =
use
>             (<link linkend=3D'var-
>PACKAGE_CLASSES'><filename>PACKAGE_CLASSES</filename></link>),
>-            the location from which you want to downloaded files
>+            the location from which you want to access downloaded files
>             (<filename><link linkend=3D'var-DL_DIR'>DL_DIR</link></filena=
me>),
>             and how you want your host machine to use resources
>             (<link linkend=3D'var-
>BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></lin
>k>
>@@ -376,9 +377,9 @@
>         <para>
>             The source <filename>local.conf.sample</filename> file used
>             depends on the <filename>$TEMPLATECONF</filename> script
>variable,
>-            which defaults to <filename>/meta-yocto/conf</filename>
>+            which defaults to <filename>meta-yocto/conf</filename>
>             when you are building from the Yocto Project development
>-            environment and defaults to <filename>/meta/conf</filename> w=
hen
>+            environment and defaults to <filename>meta/conf</filename>
>+ when
>             you are building from the OpenEmbedded Core environment.
>             Because the script variable points to the source of the
>             <filename>local.conf.sample</filename> file, this implies tha=
t @@ -
>395,11 +396,11 @@
>             <note>
>                 You can see how the <filename>TEMPLATECONF</filename> var=
iable
>                 is used by looking at the
>-                <filename>/scripts/oe-setup-builddir</filename> script in=
 the
>+                <filename>scripts/oe-setup-builddir</filename> script
>+ in the
>                 <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>Sour=
ce
>Directory</ulink>.
>                 You can find the Yocto Project version of the
>                 <filename>local.conf.sample</filename> file in the
>-                <filename>/meta-yocto/conf</filename> directory.
>+                <filename>meta-yocto/conf</filename> directory.
>             </note>
>         </para>
>     </section>
>@@ -432,9 +433,9 @@
>         <para>
>             The source <filename>bblayers.conf.sample</filename> file use=
d
>             depends on the <filename>$TEMPLATECONF</filename> script
>variable,
>-            which defaults to <filename>/meta-yocto/conf</filename>
>+            which defaults to <filename>meta-yocto/conf</filename>
>             when you are building from the Yocto Project development
>-            environment and defaults to <filename>/meta/conf</filename> w=
hen
>+            environment and defaults to <filename>meta/conf</filename>
>+ when
>             you are building from the OpenEmbedded Core environment.
>             Because the script variable points to the source of the
>             <filename>bblayers.conf.sample</filename> file, this implies =
that @@
>-449,11 +450,11 @@
>             values for all <filename>##OEROOT##</filename> values.
>             <note>
>                 You can see how the <filename>TEMPLATECONF</filename> var=
iable
>-                <filename>/scripts/oe-setup-builddir</filename> script in=
 the
>+                <filename>scripts/oe-setup-builddir</filename> script
>+ in the
>                 <ulink url=3D'&YOCTO_DOCS_DEV_URL;#source-directory'>Sour=
ce
>Directory</ulink>.
>                 You can find the Yocto Project version of the
>                 <filename>bblayers.conf.sample</filename> file in the
>-                <filename>/meta-yocto/conf</filename> directory.
>+                <filename>meta-yocto/conf</filename> directory.
>             </note>
>         </para>
>     </section>
>@@ -495,7 +496,7 @@
>         <title><filename>build/tmp/</filename></title>
>
>         <para>
>-            This directory receives all the OpenEmbedded build system's o=
utput.
>+            This directory receives all of the OpenEmbedded build system'=
s
>output.
>             BitBake creates this directory if it does not exist.
>             As a last resort, to clean up a build and start it from scrat=
ch (other than
>the downloads),
>             you can remove everything in the <filename>tmp</filename> dir=
ectory
>or get rid of the @@ -559,6 +560,14 @@
>         </para>
>     </section>
>
>+    <section id=3D'structure-build-tmp-deploy-ipk'>
>+        <title><filename>build/tmp/deploy/ipk/</filename></title>
>+
>+        <para>
>+            This directory receives <filename>.ipk</filename> packages pr=
oduced
>by
>+            the build process.</para>
>+    </section>
>+
>     <section id=3D'structure-build-tmp-deploy-licenses'>
>         <title><filename>build/tmp/deploy/licenses/</filename></title>
>
>@@ -605,14 +614,6 @@
>         </para>
>     </section>
>
>-    <section id=3D'structure-build-tmp-deploy-ipk'>
>-        <title><filename>build/tmp/deploy/ipk/</filename></title>
>-
>-        <para>
>-            This directory receives <filename>.ipk</filename> packages pr=
oduced
>by
>-            the build process.</para>
>-    </section>
>-
>     <section id=3D'structure-build-tmp-sysroots'>
>         <title><filename>build/tmp/sysroots/</filename></title>
>
>@@ -654,15 +655,6 @@
>         </para>
>     </section>
>
>-    <section id=3D'structure-build-tmp-pkgdata'>
>-        <title><filename>build/tmp/pkgdata/</filename></title>
>-
>-        <para>
>-            This directory contains intermediate packaging data that is u=
sed later in
>the packaging process.
>-            For more information, see the "<link linkend=3D'ref-classes-
>package'>Packaging - package*.bbclass</link>" section.
>-        </para>
>-    </section>
>-
>     <section id=3D'structure-build-tmp-work'>
>         <title><filename>build/tmp/work/</filename></title>
>
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

