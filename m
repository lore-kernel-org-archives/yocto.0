Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28FF8E01423
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:21:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jun 2012 07:21:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158183459"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 19 Jun 2012 07:21:47 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jun 2012 07:21:32 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.237]) with mapi id
	14.01.0355.002; Tue, 19 Jun 2012 07:21:32 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] DOCS: Development manual: Some minor typoes in
	first couple chapters.
Thread-Index: AQHNTgATHAHYBqonXUie8U0ruYBZ5JcBsZtQ
Date: Tue, 19 Jun 2012 14:21:31 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A11605@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206190542390.29025@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206190542390.29025@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] DOCS: Development manual: Some minor typoes in first couple chapters.
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
X-List-Received-Date: Tue, 19 Jun 2012 14:21:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Implemented.  Thanks Robert

See http://git.yoctoproject.org/cgit.cgi/yocto-docs/log or http://www.yocto=
project.org/docs/latest/dev-manual/dev-manual.html.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Tuesday, June 19, 2012 2:44 AM
To: Yocto discussion list
Subject: [yocto] [PATCH] DOCS: Development manual: Some minor typoes in fir=
st couple chapters.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/=
dev-manual/dev-manual-intro.xml
index cf5471e..c5a173f 100644
--- a/documentation/dev-manual/dev-manual-intro.xml
+++ b/documentation/dev-manual/dev-manual-intro.xml
@@ -23,7 +23,7 @@

         <para>
             The Yocto Project Development Manual, however, does provide de=
tailed examples on how to create a
-            Board Support Package (BSP), change the kernel source code, an=
d re-configure the kernel.
+            Board Support Package (BSP), change the kernel source code, an=
d reconfigure the kernel.
             You can find this information in the appendices of the manual.
         </para>
     </section>
@@ -149,7 +149,7 @@
                         <listitem><para><ulink url=3D'&YOCTO_LISTS_URL;/li=
stinfo/poky'></ulink> for a
                             Yocto Project Discussions mailing list about t=
he Poky build system.</para></listitem>
                         <listitem><para><ulink url=3D'&YOCTO_LISTS_URL;/li=
stinfo/yocto-announce'></ulink>
-                            for a mailing list to receive offical Yocto Pr=
oject announcements for developments and
+                            for a mailing list to receive official Yocto P=
roject announcements for developments and
                             as well as Yocto Project milestones.</para></l=
istitem>
                     </itemizedlist></para></listitem>
                 <listitem><para><emphasis>Internet Relay Chat (IRC):</emph=
asis>
diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/=
dev-manual/dev-manual-start.xml
index 763582d..a379047 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -60,7 +60,7 @@
             <listitem><para><emphasis>Packages:</emphasis>  The Yocto Proj=
ect requires certain packages
                 exist on your development system (e.g. Python 2.6 or 2.7).
                 See "<ulink url=3D'&YOCTO_DOCS_QS_URL;#packages'>The Packa=
ges</ulink>"
-                section in the Yocto Project Quick start for the exact pac=
kage
+                section in the Yocto Project Quick Start for the exact pac=
kage
                 requirements and the installation commands to install them
                 for the supported distributions.</para></listitem>
             <listitem id=3D'local-yp-release'><para><emphasis>Yocto Projec=
t Release:</emphasis>
@@ -272,7 +272,7 @@
                 previous section.</para></listitem>
             <listitem><para>Initialize the build environment by sourcing a=
 build environment
                 script.</para></listitem>
-            <listitem><para>Optionally ensure the <filename>/conf/local.co=
nf</filename> configuration file,
+            <listitem><para>Optionally ensure the <filename>conf/local.con=
f</filename> configuration file,
                 which is found in the
                 <link linkend=3D'yocto-project-build-directory'>Yocto Proj=
ect Build Directory</link>,
                 is set up how you want it.
@@ -370,7 +370,7 @@
                 that runs with the root password disabled.
                 This allows you to use standard <filename>ssh</filename> a=
nd
                 <filename>scp</filename> commands.</para></listitem>
-            <listitem><para>The QEMU images also contain an embedded Netwo=
rk Files
+            <listitem><para>The QEMU images also contain an embedded Netwo=
rk File
                 System (NFS) server that exports the image's root filesyst=
em.
                 This allows you to make the filesystem available to the
                 host.</para></listitem>


rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

