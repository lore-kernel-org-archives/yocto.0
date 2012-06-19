Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13C95E00746
	for <yocto@yoctoproject.org>; Tue, 19 Jun 2012 02:44:00 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:60194 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sguyd-0004nN-Fg
	for yocto@yoctoproject.org; Tue, 19 Jun 2012 05:43:59 -0400
Date: Tue, 19 Jun 2012 05:43:51 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1206190542390.29025@oneiric>
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
Subject: [PATCH] DOCS: Development manual: Some minor typoes in first couple chapters.
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
X-List-Received-Date: Tue, 19 Jun 2012 09:44:00 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/dev-manual/dev-manual-intro.xml b/documentation/dev-manual/dev-manual-intro.xml
index cf5471e..c5a173f 100644
--- a/documentation/dev-manual/dev-manual-intro.xml
+++ b/documentation/dev-manual/dev-manual-intro.xml
@@ -23,7 +23,7 @@

         <para>
             The Yocto Project Development Manual, however, does provide detailed examples on how to create a
-            Board Support Package (BSP), change the kernel source code, and re-configure the kernel.
+            Board Support Package (BSP), change the kernel source code, and reconfigure the kernel.
             You can find this information in the appendices of the manual.
         </para>
     </section>
@@ -149,7 +149,7 @@
                         <listitem><para><ulink url='&YOCTO_LISTS_URL;/listinfo/poky'></ulink> for a
                             Yocto Project Discussions mailing list about the Poky build system.</para></listitem>
                         <listitem><para><ulink url='&YOCTO_LISTS_URL;/listinfo/yocto-announce'></ulink>
-                            for a mailing list to receive offical Yocto Project announcements for developments and
+                            for a mailing list to receive official Yocto Project announcements for developments and
                             as well as Yocto Project milestones.</para></listitem>
                     </itemizedlist></para></listitem>
                 <listitem><para><emphasis>Internet Relay Chat (IRC):</emphasis>
diff --git a/documentation/dev-manual/dev-manual-start.xml b/documentation/dev-manual/dev-manual-start.xml
index 763582d..a379047 100644
--- a/documentation/dev-manual/dev-manual-start.xml
+++ b/documentation/dev-manual/dev-manual-start.xml
@@ -60,7 +60,7 @@
             <listitem><para><emphasis>Packages:</emphasis>  The Yocto Project requires certain packages
                 exist on your development system (e.g. Python 2.6 or 2.7).
                 See "<ulink url='&YOCTO_DOCS_QS_URL;#packages'>The Packages</ulink>"
-                section in the Yocto Project Quick start for the exact package
+                section in the Yocto Project Quick Start for the exact package
                 requirements and the installation commands to install them
                 for the supported distributions.</para></listitem>
             <listitem id='local-yp-release'><para><emphasis>Yocto Project Release:</emphasis>
@@ -272,7 +272,7 @@
                 previous section.</para></listitem>
             <listitem><para>Initialize the build environment by sourcing a build environment
                 script.</para></listitem>
-            <listitem><para>Optionally ensure the <filename>/conf/local.conf</filename> configuration file,
+            <listitem><para>Optionally ensure the <filename>conf/local.conf</filename> configuration file,
                 which is found in the
                 <link linkend='yocto-project-build-directory'>Yocto Project Build Directory</link>,
                 is set up how you want it.
@@ -370,7 +370,7 @@
                 that runs with the root password disabled.
                 This allows you to use standard <filename>ssh</filename> and
                 <filename>scp</filename> commands.</para></listitem>
-            <listitem><para>The QEMU images also contain an embedded Network Files
+            <listitem><para>The QEMU images also contain an embedded Network File
                 System (NFS) server that exports the image's root filesystem.
                 This allows you to make the filesystem available to the
                 host.</para></listitem>


rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

