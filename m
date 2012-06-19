Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D8DDE01304
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 07:21:20 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Jun 2012 07:21:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="158183213"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by azsmga001.ch.intel.com with ESMTP; 19 Jun 2012 07:21:19 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 19 Jun 2012 07:21:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.217]) with mapi id
	14.01.0355.002; Tue, 19 Jun 2012 07:21:19 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Docs, Development manual: Typoes/fixes to
	chapter 3.
Thread-Index: AQHNTgYySs60OPFmCU6pL+iCKFZXo5cBsNKQ
Date: Tue, 19 Jun 2012 14:21:18 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A115FA@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206190626320.29371@oneiric>
In-Reply-To: <alpine.DEB.2.02.1206190626320.29371@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Docs, Development manual: Typoes/fixes to chapter 3.
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
X-List-Received-Date: Tue, 19 Jun 2012 14:21:20 -0000
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
Sent: Tuesday, June 19, 2012 3:28 AM
To: Yocto discussion list
Subject: [yocto] [PATCH] Docs, Development manual: Typoes/fixes to chapter =
3.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-newbie.xml b/documentation=
/dev-manual/dev-manual-newbie.xml
index 1f41d1e..9b1636c 100644
--- a/documentation/dev-manual/dev-manual-newbie.xml
+++ b/documentation/dev-manual/dev-manual-newbie.xml
@@ -23,7 +23,7 @@
         Open source philosophy is characterized by software development di=
rected by peer production
         and collaboration through an active community of developers.
         Contrast this to the more standard centralized development models =
used by commercial software
-        companies where a finite set of developers produce a product for s=
ale using a defined set
+        companies where a finite set of developers produces a product for =
sale using a defined set
         of procedures that ultimately result in an end product whose archi=
tecture and source material
         are closed to the public.
     </para>
@@ -97,7 +97,7 @@
     <para>
         Most teams have many pieces of software undergoing active developm=
ent at any given time.
         You can derive large benefits by putting these pieces under the co=
ntrol of a source
-        control system that is compatible with the Yocto Project (i.e. Git=
 or Subversion (SVN).
+        control system that is compatible with the Yocto Project (i.e. Git=
 or Subversion (SVN)).
         You can then set the autobuilder to pull the latest revisions of t=
he packages
         and test the latest commits by the builds.
         This practice quickly highlights issues.
@@ -239,14 +239,14 @@
                 tools and utilities that allow you to develop software for=
 targeted architectures.
                 This toolchain contains cross-compilers, linkers, and debu=
ggers that are specific to
                 an architecture.
-                You can use the Yocto Project to build cross-development t=
oolchains in tarball form that when
-                unpacked contain the development tools you need to cross-c=
ompile and test your software.
+                You can use the Yocto Project to build cross-development t=
oolchains in tarball form that, when
+                unpacked, contain the development tools you need to cross-=
compile and test your software.
                 The Yocto Project ships with images that contain toolchain=
s for supported architectures
                 as well.
                 Sometimes this toolchain is referred to as the meta-toolch=
ain.</para></listitem>
             <listitem><para><emphasis>Image:</emphasis> An image is the re=
sult produced when
                 BitBake processes a given collection of recipes and relate=
d metadata.
-                Images are the binary output that runs on specific hardwar=
e and for specific
+                Images are the binary output that run on specific hardware=
 and for specific
                 use cases.
                 For a list of the supported image types that the Yocto Pro=
ject provides, see the
                 "<ulink url=3D'&YOCTO_DOCS_REF_URL;#ref-images'>Reference:=
 Images</ulink>"
@@ -530,9 +530,9 @@
      $ git checkout -b &DISTRO_NAME; origin/&DISTRO_NAME;
             </literallayout>
             In this example, the name of the top-level directory of your l=
ocal Yocto Project
-            Files Git repository is <filename>poky</filename>.
-            And, the name of the local working area (or local branch) you =
have created and checked
-            out is named <filename>&DISTRO_NAME;</filename>.
+            Files Git repository is <filename>poky</filename>,
+            and the name of the local working area (or local branch) you h=
ave created and checked
+            out is <filename>&DISTRO_NAME;</filename>.
             The files in your repository now reflect the same files that a=
re in the
             <filename>&DISTRO_NAME;</filename> development branch of the Y=
octo Project's
             <filename>poky</filename> repository.

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

