Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 725B7E01347
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 15:44:21 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKe70-00051l-SD; Sun, 30 Oct 2011 18:44:19 -0400
Date: Sun, 30 Oct 2011 18:44:11 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110301838110.5141@localhost6.localdomain6>
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
Subject: [PATCH] Numerous typo/grammatical/URL fixes to Yocto Quick Start guide.
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
X-List-Received-Date: Sun, 30 Oct 2011 22:44:21 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


A number of cosmetic fixes for the Yocto Quick Start Guide:

  * spelling/grammar fixes
  * Updating URLs to point at new location of downloads/toolchains.
  * Correct name of toolchains, prefix of "yocto" -> "poky"

... and more.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  Not quite done with the QS guide, more cosmetic cleanup coming
shortly but it would be nice if Scott could apply this stuff unless
someone has objections.

  I made it as far as the kernel section -- that's going to need a
bit of tidying up as well.


diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 41da903..6c140e0 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -130,7 +130,7 @@
             <para>A host system running a supported Linux distribution (i.e. recent releases of
                 Fedora, openSUSE, Debian, and Ubuntu).
                 If the host system supports multiple cores and threads, you can configure the
-                Yocto Project build system to increase the time needed to build images
+                Yocto Project build system to reduce the time needed to build images
                 significantly.
             </para>
         </listitem>
@@ -149,7 +149,7 @@
             The Yocto Project team is continually verifying more and more Linux
             distributions with each release.
             In general, if you have the current release minus one of the following
-            distributions you should no problems.
+            distributions you should have no problems.
             <itemizedlist>
                 <listitem><para>Ubuntu</para></listitem>
                 <listitem><para>Fedora</para></listitem>
@@ -275,10 +275,10 @@

     <itemizedlist>
         <listitem>
-            <para>Build an image and run it in the QEMU emulator</para>
+            <para>Build an image and run it in the QEMU emulator, or</para>
         </listitem>
         <listitem>
-            <para>Or, use a pre-built image and run it in the QEMU emulator</para>
+            <para>Use a pre-built image and run it in the QEMU emulator.</para>
         </listitem>
     </itemizedlist>

@@ -323,7 +323,7 @@

          <para>
              <literallayout class='monospaced'>
-     $ wget http://www.yoctoproject.org/downloads/poky/poky-edison-6.0.tar.bz2
+     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-6.0.tar.bz2
      $ tar xjf poky-edison-6.0.tar.bz2
      $ source poky-edison-6.0/oe-init-build-env edison-6.0-build
              </literallayout>
@@ -331,9 +331,8 @@

          <tip><para>
              To help conserve disk space during builds, you can add the following statement
-             to your <filename>local.conf</filename> file in the Yocto Project build
-             directory, which for this example
-             is <filename>edison-6.0-build</filename>.
+             to your project's configuration file, which for this example
+             is <filename>edison-6.0-build/conf/local.conf</filename>.
              Adding this statement deletes the work directory used for building a package
              once the package is built.
              <literallayout class='monospaced'>
@@ -342,15 +341,14 @@
          </para></tip>

          <itemizedlist>
-             <listitem><para>The first command retrieves the Yocto Project release tarball from the
-                 source repositories.
-                 Notice, the example uses the <filename>wget</filename> shell command.
-                 Alternatively, you can go to the
-                 <ulink url='http://www.yoctoproject.org'>Yocto Project website</ulink> downloads
-                 area to retrieve the tarball.</para></listitem>
-             <listitem><para>The second command extracts the files from the tarball and places
-                 them into a directory named <filename>poky-edison-6.0</filename> in the current
-                 directory.
+             <listitem><para>The first command above retrieves the Yocto Project
+                 release tarball from the source repositories using the
+                 <filename>wget</filename> command.  Alternatively, you can go to the
+                 <ulink url='http://downloads.yoctoproject.org'>Yocto Project website
+                 downloads area</ulink> to retrieve the tarball.</para></listitem>
+             <listitem><para>The second command extracts the files from the tarball
+                 and places them into a directory named <filename>poky-edison-6.0</filename>
+                 in the current directory.
                </para></listitem>
              <listitem><para>The third command runs the Yocto Project environment setup script.
                  Running this script defines Yocto Project build environment settings needed to
@@ -364,19 +362,18 @@
                  </para></listitem>
          </itemizedlist>
          <para>
-             Take some time to examine your <filename>conf/local.conf</filename> file found in the
-             Yocto Project build directory.
-             The defaults in the <filename>local.conf</filename> should work fine.
-             However, there are some variables of interest at which you might look.
+             Take some time to examine the <filename>local.conf</filename> file
+             in your project's configuration directory.
+             The defaults in that file should work fine;
+             however, there are some variables of interest at which you might look.
          </para>

          <para>
              By default, the target architecture for the build is <filename>qemux86</filename>,
-             which is an image that can be used in the QEMU emulator and is targeted for an
-             <trademark class='registered'>Intel</trademark> 32-bit based architecture.
-             To change this default, edit the value of the <filename>MACHINE</filename> variable in the
-             <filename>conf/local.conf</filename> file in the build directory before
-             launching the build.
+             which produces an image that can be used in the QEMU emulator and is targeted at an
+             <trademark class='registered'>Intel</trademark> 32-bit architecture.
+             To change this default, edit the value of the <filename>MACHINE</filename>
+             variable in that file before launching the build.
          </para>

          <para>
@@ -384,12 +381,12 @@
              <ulink url='http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#var-BB_NUMBER_THREADS'><filename>BB_NUMBER_THREADS</filename></ulink> and the
              <ulink url='http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#var-PARALLEL_MAKE'><filename>PARALLEL_MAKE</filename></ulink> variables.
              By default, these variables are commented out.
-             However, if you have a multi-core CPU you might want to remove the comment
-             and set the variable
+             However, if you have a multi-core CPU you might want to uncomment
+             these lines and set the variable
              <filename>BB_NUMBER_THREADS</filename> equal to twice the number of your
              host's processor cores.
-             Also, you could set the variable <filename>PARALLEL_MAKE</filename> equal to the number
-             of processor cores.
+             Also, you could set the variable <filename>PARALLEL_MAKE</filename> equal
+             to 1.5 * the number of processor cores.
              Setting these variables can significantly shorten your build time.
          </para>

@@ -471,10 +468,10 @@
             <title>Installing the Toolchain</title>
             <para>
                 You can download the pre-built toolchain, which includes the <filename>runqemu</filename>
-                script and support files, from
-                <ulink url='http://yoctoproject.org/downloads/yocto-1.1/toolchain/'></ulink>.
+                script and support files, from the appropriate directory under
+                <ulink url='http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/toolchain/'></ulink>.
                 Toolchains are available for 32-bit and 64-bit development systems from the
-                <filename>i686</filename> and <filename>x86_64</filename> folders, respectively.
+                <filename>i686</filename> and <filename>x86_64</filename> directories, respectively.
                 Each type of development system supports five target architectures.
                 The tarball files are named such that a string representing the host system appears
                 first in the filename and then is immediately followed by a string representing
@@ -482,7 +479,7 @@
             </para>

             <literallayout class='monospaced'>
-     yocto-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arch</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.bz2
+     poky-eglibc-&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arch</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.bz2

      Where:
          &lt;<emphasis>host_system</emphasis>&gt; is a string representing your development system:
@@ -500,7 +497,7 @@
             </para>

             <literallayout class='monospaced'>
-     yocto-eglibc-x86_64-i586-toolchain-gmae-1.1.tar.bz2
+     poky-eglibc-x86_64-i586-toolchain-gmae-1.1.tar.bz2
             </literallayout>

             <para>
@@ -513,7 +510,7 @@
             <para>
                 <literallayout class='monospaced'>
      $ cd /
-     $ sudo tar -xvjf ~/toolchains/yocto-eglibc-x86_64-i586-toolchain-gmae-1.1.tar.bz2
+     $ sudo tar -xvjf ~/toolchains/poky-eglibc-x86_64-i586-toolchain-gmae-1.1.tar.bz2
                 </literallayout>
             </para>

@@ -522,7 +519,7 @@
                 "<ulink url='http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.html#using-an-existing-toolchain-tarball'>Using a Cross-Toolchain Tarball</ulink>" and
                 "<ulink url='http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.html#using-the-toolchain-from-within-the-build-tree'>Using BitBake and the Yocto Project Build Tree</ulink>" sections in
                 <ulink url='http://www.yoctoproject.org/docs/1.1/adt-manual/adt-manual.html'>The Yocto Project
-                Application Development Toolkit (ADT) Development Manual</ulink>.
+                Application Development Toolkit (ADT) User's Guide</ulink>.
             </para>
         </section>


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

