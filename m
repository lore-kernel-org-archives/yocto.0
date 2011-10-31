Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ADD4E013A0
	for <yocto@yoctoproject.org>; Sun, 30 Oct 2011 18:39:16 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.2.77] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RKgqG-0003Dz-VT; Sun, 30 Oct 2011 21:39:13 -0400
Date: Sun, 30 Oct 2011 21:39:04 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110302135370.7509@localhost6.localdomain6>
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
Subject: [PATCH] Final cosmetic/grammar/URL patches for QS Guide
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
X-List-Received-Date: Mon, 31 Oct 2011 01:39:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  One more set of patches for the QS Guide, covering the remainder of
the Guide from the kernel section to the end; mostly updating
filenames and URLs to reflect what actually exists these days.

Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  nothing earth-shaking here, just thought i'd finish off the QS guide
so i can move on to the next one.  let me know if any of this is
incorrect.


diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/documentation/yocto-project-qs/yocto-project-qs.xml
index 41da903..169b66a 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -531,7 +531,7 @@

             <para>
                 You can download the pre-built Linux kernel suitable for running in the QEMU emulator from
-                <ulink url='http://yoctoproject.org/downloads/yocto-1.1/machines/qemu'></ulink>.
+                <ulink url='http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu'></ulink>.
                 Be sure to use the kernel that matches the architecture you want to simulate.
                 Download areas exist for the five supported machine architectures:
                 <filename>qemuarm</filename>, <filename>qemumips</filename>, <filename>qemuppc</filename>,
@@ -541,19 +541,15 @@
             <para>
                 Most kernel files have one of the following forms:
                 <literallayout class='monospaced'>
-     *zImage-&lt;<emphasis>kernel-rev</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;-&lt;<emphasis>release</emphasis>&gt;*.bin
-     vmlinux-&lt;<emphasis>kernel-rev</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;-&lt;<emphasis>release</emphasis>&gt;*.bin
+     *zImage-qemu&lt;<emphasis>arch</emphasis>&gt;.bin
+     vmlinux-qemu&lt;<emphasis>arch</emphasis>&gt;.bin

      Where:
-         &lt;<emphasis>kernel-rev</emphasis>&gt; is the base Linux kernel revision
-                (e.g. 2.6.37).
-
          &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture:
                 x86, x86-64, ppc, mips, or arm.
-
-         &lt;<emphasis>release</emphasis>&gt; is the version of Yocto Project.
                 </literallayout>
             </para>
+

             <para>
                 You can learn more about downloading a Yocto Project kernel in the
@@ -568,7 +564,7 @@

             <para>
                 You can also download the filesystem image suitable for your target architecture from
-                <ulink url='http://yoctoproject.org/downloads/yocto-1.1/machines/qemu'></ulink>.
+                <ulink url='http://downloads.yoctoproject.org/releases/yocto/yocto-1.1/machines/qemu'></ulink>.
                 Again, be sure to use the filesystem that matches the architecture you want
                 to simulate.
             </para>
@@ -581,19 +577,17 @@
                 The <filename>tar</filename> form can be flattened out in your host development system
                 and used for Yocto Project build purposes.
                 <literallayout class='monospaced'>
-     yocto-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;-&lt;<emphasis>release</emphasis>&gt;.rootfs.ext3.bz2
-     yocto-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;-&lt;<emphasis>release</emphasis>&gt;.rootfs.tar.bz2
+     core-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;.ext3
+     core-image-&lt;<emphasis>profile</emphasis>&gt;-qemu&lt;<emphasis>arch</emphasis>&gt;.tar.bz2

      Where:
          &lt;<emphasis>profile</emphasis>&gt; is the filesystem image's profile:
-                   lsb, lsb-dev, lsb-sdk, minimal, minimal-dev, sato, sato-dev, or sato-sdk.
+                   lsb, lsb-dev, lsb-sdk, lsb-qt3, minimal, minimal-dev, sato, sato-dev, or sato-sdk.
                    For information on these types of image profiles, see
                    <ulink url='http://www.yoctoproject.org/docs/1.1/poky-ref-manual/poky-ref-manual.html#ref-images'>Reference: Images</ulink> in the Yocto Project Reference Manual.

          &lt;<emphasis>arch</emphasis>&gt; is a string representing the target architecture:
                 x86, x86-64, ppc, mips, or arm.
-
-         &lt;<emphasis>release</emphasis>&gt; is the version of Yocto Project.
                 </literallayout>
             </para>
         </section>
@@ -639,8 +633,8 @@
                 that the kernel and filesystem are for a 32-bit target architecture.
                 <literallayout class='monospaced'>
      $ source /opt/poky/1.1/environment-setup-i686-poky-linux
-     $ runqemu qemux86 bzImage-3.0-qemux86-1.1.bin \
-     yocto-image-sato-qemux86-1.1.rootfs.ext3
+     $ runqemu qemux86 bzImage-qemux86.bin \
+     core-image-sato-qemux86.ext3
                 </literallayout>
             </para>

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

