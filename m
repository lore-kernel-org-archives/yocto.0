Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.15150.1581448612359652889
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Feb 2020 11:16:52 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=neutral (domain: crashcourse.ca, ip: 140.211.169.56, mailfrom: rpjday@crashcourse.ca)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5E1EE016D6; Tue, 11 Feb 2020 11:16:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from cpanel7.indieserve.net (cpanel7.indieserve.net [199.212.143.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC5ACE016D6
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2020 11:16:49 -0800 (PST)
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com ([174.114.57.56]:58100 helo=localhost.localdomain)
	by cpanel7.indieserve.net with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.92)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1j1b1b-00FqKl-K2
	for yocto@yoctoproject.org; Tue, 11 Feb 2020 14:16:48 -0500
Date: Tue, 11 Feb 2020 14:16:44 -0500 (EST)
From: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [PATCH] overview-manual: chs 1-3, various minor tweaks/cleanups
Message-ID: <alpine.LFD.2.21.2002111415130.53570@localhost.localdomain>
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel7.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel7.indieserve.net: authenticated_id: rpjday+crashcourse.ca/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: cpanel7.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Content-Type: multipart/mixed; boundary="8323328-844661782-1581448607=:53570"

--8323328-844661782-1581448607=:53570
Content-Type: text/plain; charset=ISO-8859-7
Content-Transfer-Encoding: quoted-printable


Minor fixes:

  - punctuation
  - capitalization
  - markup
  - wording

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/overview-manual/overview-manual-development-en=
vironment.xml b/documentation/overview-manual/overview-manual-development=
-environment.xml
index 2f1bd1610..dd12814fc 100644
--- a/documentation/overview-manual/overview-manual-development-environme=
nt.xml
+++ b/documentation/overview-manual/overview-manual-development-environme=
nt.xml
@@ -69,7 +69,7 @@
     <title>The Development Host</title>

     <para>
-        A development host or
+        A <firstterm>development host</firstterm> or
         <ulink url=3D'&YOCTO_DOCS_REF_URL;#hardware-build-system-term'>b=
uild host</ulink>
         is key to using the Yocto Project.
         Because the goal of the Yocto Project is to develop images or
@@ -389,7 +389,7 @@
         In summary, a single point of entry
         exists for changes into a "master" or development branch of the
         Git repository, which is controlled by the project=A2s maintaine=
r.
-        And, a set of developers exist who independently develop, test, =
and
+        In addition, a set of developers exist who independently develop=
, test, and
         submit changes to "contrib" areas for the maintainer to examine.
         The maintainer then chooses which changes are going to become a
         permanent part of the project.
diff --git a/documentation/overview-manual/overview-manual-yp-intro.xml b=
/documentation/overview-manual/overview-manual-yp-intro.xml
index dbf62cc16..87b7e40b3 100644
--- a/documentation/overview-manual/overview-manual-yp-intro.xml
+++ b/documentation/overview-manual/overview-manual-yp-intro.xml
@@ -89,7 +89,7 @@
                         Additionally, if you have used the Yocto Project=
 to
                         create an image or application and you find your=
self
                         not able to support it, commercial Linux vendors=
 such
-                        as Wind River, Mentor Graphics, Timesys, and ENE=
A could
+                        as Wind River, Mentor Graphics, Timesys, and Ene=
a could
                         take it and provide ongoing support.
                         These vendors have offerings that are built usin=
g
                         the Yocto Project.
@@ -127,7 +127,7 @@
                         not part of a standard toolchain, you can easily
                         customize that toolchain through specification o=
f
                         platform-specific tuning parameters.
-                        And, should you need to use a third-party toolch=
ain,
+                        In addition, should you need to use a third-part=
y toolchain,
                         mechanisms built into the Yocto Project allow fo=
r that.
                         </para></listitem>
                     <listitem><para>
@@ -273,7 +273,7 @@
                         <emphasis>Initial Build Times Can be Significant=
:</emphasis>
                         Long initial build times are unfortunately unavo=
idable
                         due to the large number of packages initially bu=
ilt
-                        from scratch for a fully functioning Linux syste=
m.
+                        from scratch for a fully-functioning Linux syste=
m.
                         Once that initial build is completed, however, t=
he
                         shared-state (sstate) cache mechanism Yocto Proj=
ect
                         uses keeps the system from rebuilding packages t=
hat
@@ -358,7 +358,7 @@
             To illustrate how layers are used to keep things modular, co=
nsider
             machine customizations.
             These types of customizations typically reside in a special =
layer,
-            rather than a general layer, called a BSP Layer.
+            rather than a general layer, called a <firstterm>BSP layer</=
firstterm>.
             Furthermore, the machine customizations should be isolated f=
rom
             recipes and Metadata that support a new GUI environment,
             for example.
@@ -852,9 +852,9 @@
         </para>

         <para>
-            This section provides an introduction to the choices or
+            This section provides an introduction to the choices of
             development methods you have when setting up your Build Host=
.
-            Depending on the your particular workflow preference and the
+            Depending on your particular workflow preference and the
             type of operating system your Build Host runs, several choic=
es
             exist that allow you to use the Yocto Project.
             <note>
@@ -1013,7 +1013,7 @@
         </para>

         <para>
-            Poky has a regular, well established, six-month release cycl=
e
+            Poky has a regular, well-established, six-month release cycl=
e
             under its own version.
             Major releases occur at the same time major releases (point
             releases) occur for the Yocto Project, which are typically i=
n the
@@ -1104,7 +1104,7 @@
                     select (DEB, RPM, or IPK) is used to roll up the sof=
tware.
                     </para></listitem>
                 <listitem><para>
-                    Different QA and sanity checks run throughout entire
+                    Different QA and sanity checks run throughout the en=
tire
                     build process.
                     </para></listitem>
                 <listitem><para>
@@ -1145,7 +1145,7 @@
                     user-defined variables, and hardware configuration
                     information.
                     These files tell the
-                    <ulink url=3D'&YOCTO_DOCS_REF_URL;#build-system-term=
'>Open-Embedded build system</ulink>
+                    <ulink url=3D'&YOCTO_DOCS_REF_URL;#build-system-term=
'>OpenEmbedded build system</ulink>
                     what to build and what to put into the image to supp=
ort a
                     particular platform.
                     </para></listitem>
@@ -1177,7 +1177,7 @@
                     <para>For more detailed information on layers, see t=
he
                     "<ulink url=3D'&YOCTO_DOCS_DEV_URL;#understanding-an=
d-creating-layers'>Understanding and Creating Layers</ulink>"
                     section in the Yocto Project Development Tasks Manua=
l.
-                    For a discussion specifically on BSP Layers, see the
+                    For a discussion specifically on BSP layers, see the
                     "<ulink url=3D'&YOCTO_DOCS_BSP_URL;#bsp-layers'>BSP =
Layers</ulink>"
                     section in the Yocto Project Board Support Packages =
(BSP)
                     Developer's Guide.
@@ -1234,7 +1234,7 @@
                     developed by the OpenEmbedded community that has bee=
n
                     pared down into a smaller, core set of continuously
                     validated recipes.
-                    The result is a tightly controlled and quality-assur=
ed
+                    The result is a tightly-controlled and quality-assur=
ed
                     core set of recipes.</para>

                     <para>You can see the Metadata in the
@@ -1303,7 +1303,7 @@
                     patches to apply.
                     Recipes describe dependencies for libraries or for o=
ther
                     recipes as well as configuration and compilation opt=
ions.
-                    Related recipes are consolidated into a layer.
+                    Related recipes are typically consolidated into a la=
yer.
                     </para></listitem>
             </itemizedlist>
         </para>

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

--8323328-844661782-1581448607=:53570--
