Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39066E0132F
	for <yocto@yoctoproject.org>; Sat,  3 Mar 2012 05:34:56 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S3p6s-0007Af-GH
	for yocto@yoctoproject.org; Sat, 03 Mar 2012 08:34:54 -0500
Date: Sat, 3 Mar 2012 08:34:46 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203030832470.31021@oneiric>
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
Subject: [PATCH] Documentation: Some trivial tweaks to Quick Start Guide
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
X-List-Received-Date: Sat, 03 Mar 2012 13:34:56 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-169825003-1330781691=:31021"

--8323329-169825003-1330781691=:31021
Content-Type: TEXT/PLAIN; charset=ISO-8859-7
Content-Transfer-Encoding: QUOTED-PRINTABLE


Nothing major, just some simple cleanup in the QS Guide.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/document=
ation/yocto-project-qs/yocto-project-qs.xml
index 0f2ecf4..b3e7595 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -6,7 +6,7 @@

 <section id=3D'fake-title'>
     <title>Yocto Project Quick Start</title>
-    <para>Copyright &copy; 2010-2011 Linux Foundation</para>
+    <para>Copyright &copy; 2010-2012 Linux Foundation</para>
 </section>

 <section id=3D'welcome'>
@@ -34,7 +34,7 @@
         rich Yocto Project Development Community into which you can tap.
     </para>
     <para>
-        Finally, you might find the Frequently Asked Questions (FAQ) for t=
he Yocto Project
+        Finally, you can find the Frequently Asked Questions (FAQ) for the=
 Yocto Project
         at <ulink url=3D'https://wiki.yoctoproject.org/wiki/FAQ'>Yocto Pro=
ject FAQ</ulink> and
         the FAQ appendix located in
         <ulink url=3D'http://www.yoctoproject.org/docs/latest/poky-ref-man=
ual/poky-ref-manual.html'>
@@ -470,8 +470,8 @@
         </para>

         <itemizedlist>
-            <listitem><para>Install the stand-alone Yocto toolchain tarbal=
l.</para></listitem>
-            <listitem><para>Download the pre-built image that will boot wi=
th QEMU.
+            <listitem><para>Install the appropriate stand-alone Yocto tool=
chain tarball.</para></listitem>
+            <listitem><para>Download the pre-built kernel image that will =
boot with QEMU.
                 You need to be sure to get the QEMU image that matches you=
r target machine=A2s
                 architecture (e.g. x86, ARM, etc.).</para></listitem>
             <listitem><para>Download the filesystem image for your target =
machine's architecture.
@@ -487,7 +487,7 @@
                 script and support files, from the appropriate directory u=
nder
                 <ulink url=3D'http://downloads.yoctoproject.org/releases/y=
octo/yocto-1.1/toolchain/'></ulink>.
                 Toolchains are available for 32-bit and 64-bit development=
 systems from the
-                <filename>i686</filename> and <filename>x86_64</filename> =
directories, respectively.
+                <filename>i686</filename> and <filename>x86-64</filename> =
directories, respectively.
                 Each type of development system supports five target archi=
tectures.
                 The tarball files are named such that a string representin=
g the host system appears
                 first in the filename and then is immediately followed by =
a string representing
@@ -495,7 +495,7 @@
             </para>

             <literallayout class=3D'monospaced'>
-     poky-eglibc&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>arc=
h</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.bz=
2
+     poky-eglibc-&lt;<emphasis>host_system</emphasis>&gt;-&lt;<emphasis>ar=
ch</emphasis>&gt;-toolchain-gmae-&lt;<emphasis>release</emphasis>&gt;.tar.b=
z2

      Where:
          &lt;<emphasis>host_system</emphasis>&gt; is a string representing=
 your development system:
@@ -548,7 +548,7 @@
                 Be sure to use the kernel that matches the architecture yo=
u want to simulate.
                 Download areas exist for the five supported machine archit=
ectures:
                 <filename>qemuarm</filename>, <filename>qemumips</filename=
>, <filename>qemuppc</filename>,
-                <filename>qemux86</filename>, and <filename>qemux86_64</fi=
lename>.
+                <filename>qemux86</filename>, and <filename>qemux86-64</fi=
lename>.
             </para>

             <para>
@@ -639,13 +639,13 @@
             </para>

             <para>
-                Continuing with the example, the following two commands se=
tup the emulation
+                Continuing with the example, the following two commands se=
t up the emulation
                 environment and launch QEMU.
                 This example assumes the root filesystem tarball has been =
downloaded and expanded, and
                 that the kernel and filesystem are for a 32-bit target arc=
hitecture.
                 <literallayout class=3D'monospaced'>
      $ source /opt/poky/1.1/environment-setup-i686-poky-linux
-     $ runqemu qemux86 bzImage-3.0-qemux86-1.1.bin \
+     $ runqemu qemux86 bzImage-qemux86.bin \
      core-image-sato-qemux86.ext3
                 </literallayout>
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

--8323329-169825003-1330781691=:31021--
