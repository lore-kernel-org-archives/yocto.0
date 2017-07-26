Return-Path: <tom.rini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E353AE00C69; Wed, 26 Jul 2017 12:32:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.173 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.173 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yw0-f173.google.com (mail-yw0-f173.google.com
	[209.85.161.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6216CE00C5D
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 12:32:45 -0700 (PDT)
Received: by mail-yw0-f173.google.com with SMTP id x125so93971638ywa.0
	for <yocto@yoctoproject.org>; Wed, 26 Jul 2017 12:32:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=v8YxsxxuApvSsCRz064w5uMfKlwkOluugECORB1uG9w=;
	b=CtN1FQ6Dt/RoomMHG1OlilJ1YadzPA/lKlFH8H7E1qlihuUjf05ZOI13RG23y0hzft
	jtC6mglZgdVh2+NOmPA/ytDeW3Svv3J73HtZMgSucxdZwo21X62fbpvdNQG5zpqGcsCr
	NxKngRRwOWEfdUaiaE5rRx7wJtTuvLra5ahVnJGgNdZDdg4zCHnAjLxbDtIMDXWeYdeL
	jXUee2KzrQrACtDhbcQTDyhKq3ASb0SmePNC7ZGGWpAMs99loX3ihNcdgk2czfOvl3FX
	lQKucMjrm8vaD2ubMF2rk/WAFjpITrlUguxQsy1YcfFzKvHhH7PCwULX3O7VQD9gSNxx
	Ebig==
X-Gm-Message-State: AIVw111vWx2AEsufxY3qdqTK9wM0kBYzEPFd45BYVRBOulrWtXrDSKaC
	zQ+E4qXlhr9QhzHP
X-Received: by 10.13.230.22 with SMTP id p22mr1749308ywe.297.1501097565076;
	Wed, 26 Jul 2017 12:32:45 -0700 (PDT)
Received: from localhost.localdomain (cpe-174-106-0-58.ec.res.rr.com.
	[174.106.0.58]) by smtp.gmail.com with ESMTPSA id
	b195sm6287662ywb.21.2017.07.26.12.32.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 26 Jul 2017 12:32:44 -0700 (PDT)
From: Tom Rini <trini@konsulko.com>
To: yocto@yoctoproject.org
Date: Wed, 26 Jul 2017 15:34:01 -0400
Message-Id: <1501097641-15737-1-git-send-email-trini@konsulko.com>
X-Mailer: git-send-email 1.9.1
Cc: Scott Rifenbark <srifenbark@gmail.com>
Subject: [PATCH] dev-manual, ref-manual: Update for vmdk/vdi/qcow2/u-boot image changes
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
X-List-Received-Date: Wed, 26 Jul 2017 19:32:47 -0000

Recently a number of changes have happened on the implementation side of
some image formats, and a few have been renamed.  The u-boot image
signing code is now always available and no longer in a stand-alone
file.  The vmdk/vdi/qcow2 images have been removed and are now just a
conversion type that is applied to wic images.

Signed-off-by: Tom Rini <trini@konsulko.com>
---
Please note that while the u-boot image changes are live the
vmdk/vdi/qcow2 portions are not yet merged.  But given that they are
user visible changes I promised to provide documentation updates along
with the implementation changes, so these shouldn't be applied until
they have been merged.  Thanks!
---
 documentation/dev-manual/dev-manual-qemu.xml |  6 +++---
 documentation/ref-manual/ref-classes.xml     | 32 +++++-----------------------
 documentation/ref-manual/ref-tasks.xml       | 10 ---------
 documentation/ref-manual/ref-variables.xml   |  9 +++-----
 documentation/ref-manual/usingpoky.xml       |  8 +++----
 5 files changed, 15 insertions(+), 50 deletions(-)

diff --git a/documentation/dev-manual/dev-manual-qemu.xml b/documentation/dev-manual/dev-manual-qemu.xml
index ed4040ca60d8..2b3383c40482 100644
--- a/documentation/dev-manual/dev-manual-qemu.xml
+++ b/documentation/dev-manual/dev-manual-qemu.xml
@@ -168,13 +168,13 @@
                             </para></listitem>
                         <listitem><para>
                             This example specifies to boot a virtual machine image
-                            (<filename>.vmdk</filename> file).
-                            From the <filename>.vmdk</filename>,
+                            (<filename>.wic.vmdk</filename> file).
+                            From the <filename>.wic.vmdk</filename>,
                             <filename>runqemu</filename> determines the QEMU
                             architecture (<replaceable>MACHINE</replaceable>) to be
                             "qemux86" and the root filesystem type to be "vmdk".
                             <literallayout class='monospaced'>
-     $ runqemu /home/scott-lenovo/vm/core-image-minimal-qemux86.vmdk
+     $ runqemu /home/scott-lenovo/vm/core-image-minimal-qemux86.wic.vmdk
                             </literallayout>
                             </para></listitem>
                     </itemizedlist>
diff --git a/documentation/ref-manual/ref-classes.xml b/documentation/ref-manual/ref-classes.xml
index 1801faf501ee..b177902b776a 100644
--- a/documentation/ref-manual/ref-classes.xml
+++ b/documentation/ref-manual/ref-classes.xml
@@ -1286,14 +1286,13 @@
         <filename>image_types</filename> must also appear in
         <filename>IMAGE_CLASSES</filename>.
     </para>
-</section>
-
-<section id='ref-classes-image_types_uboot'>
-    <title><filename>image_types_uboot.bbclass</filename></title>
 
     <para>
-        The <filename>image_types_uboot</filename> class
-        defines additional image types specifically for the U-Boot bootloader.
+	This class also handles conversion and compression of images as well.
+	Note that to build a VMware VMDK image you need to add "wic.vmdk" to
+	<link linkend='var-IMAGE_FSTYPES'><filename>IMAGE_FSTYPES</filename></link>.
+	This would also be similar for Virtual Box Virtual Disk Image ("vdi")
+	and QEMU Copy On Write Version 2 ("qcow2") images.
     </para>
 </section>
 
@@ -1370,27 +1369,6 @@
     </para>
 </section>
 
-<section id='ref-classes-image-vm'>
-    <title><filename>image-vm.bbclass</filename></title>
-
-    <para>
-        The <filename>image-vm</filename> class supports building VM
-        images.
-    </para>
-</section>
-
-<section id='ref-classes-image-vmdk'>
-    <title><filename>image-vmdk.bbclass</filename></title>
-
-    <para>
-        The <filename>image-vmdk</filename> class supports building VMware
-        VMDK images.
-        Normally, you do not use this class directly.
-        Instead, you add "vmdk" to
-        <link linkend='var-IMAGE_FSTYPES'><filename>IMAGE_FSTYPES</filename></link>.
-    </para>
-</section>
-
 <section id='ref-classes-insane'>
     <title><filename>insane.bbclass</filename></title>
 
diff --git a/documentation/ref-manual/ref-tasks.xml b/documentation/ref-manual/ref-tasks.xml
index 99e9f52b8651..1fe175e10453 100644
--- a/documentation/ref-manual/ref-tasks.xml
+++ b/documentation/ref-manual/ref-tasks.xml
@@ -838,16 +838,6 @@
             section in the Yocto Project Development Manual.
         </para>
     </section>
-
-    <section id='ref-tasks-vmdkimg'>
-        <title><filename>do_vmdkimg</filename></title>
-
-        <para>
-            Creates a <filename>.vmdk</filename> image for use with
-            <ulink url='http://www.vmware.com/'>VMware</ulink>
-            and compatible virtual machine hosts.
-        </para>
-    </section>
 </section>
 
 <section id='kernel-related-tasks'>
diff --git a/documentation/ref-manual/ref-variables.xml b/documentation/ref-manual/ref-variables.xml
index ff8f4e73d041..54a9ff5ab85e 100644
--- a/documentation/ref-manual/ref-variables.xml
+++ b/documentation/ref-manual/ref-variables.xml
@@ -3864,14 +3864,14 @@
 
         <glossentry id='var-EFI_PROVIDER'><glossterm>EFI_PROVIDER</glossterm>
             <info>
-                EFI_PROVIDER[doc] = "When building bootable images (i.e. where hddimg or vmdk is in IMAGE_FSTYPES), the EFI_PROVIDER variable specifies the EFI bootloader to use."
+                EFI_PROVIDER[doc] = "When building bootable images (i.e. where hddimg, iso or live is in IMAGE_FSTYPES), the EFI_PROVIDER variable specifies the EFI bootloader to use."
             </info>
             <glossdef>
                 <para role="glossdeffirst">
 <!--                <para role="glossdeffirst"><imagedata fileref="figures/define-generic.png" /> -->
                     When building bootable images (i.e. where
-                    <filename>hddimg</filename> or <filename>vmdk</filename>
-                    is in
+		    <filename>hddimg</filename>, <filename>iso</filename> or
+		    <filename>live</filename> is in
                     <link linkend='var-IMAGE_FSTYPES'><filename>IMAGE_FSTYPES</filename></link>),
                     the <filename>EFI_PROVIDER</filename> variable specifies
                     the EFI bootloader to use.
@@ -6190,7 +6190,6 @@
      jffs2
      jffs2.sum
      multiubi
-     qcow2
      squashfs
      squashfs-lzo
      squashfs-xz
@@ -6201,8 +6200,6 @@
      tar.xz
      ubi
      ubifs
-     vdi
-     vmdk
      wic
      wic.bz2
      wic.gz
diff --git a/documentation/ref-manual/usingpoky.xml b/documentation/ref-manual/usingpoky.xml
index c323d3831831..ef2e611c9a26 100644
--- a/documentation/ref-manual/usingpoky.xml
+++ b/documentation/ref-manual/usingpoky.xml
@@ -1245,11 +1245,11 @@
        runqemu qemux86-64 core-image-sato ext4
        runqemu qemux86-64 wic-image-minimal wic
        runqemu path/to/bzImage-qemux86.bin path/to/nfsrootdir/ serial
-       runqemu qemux86 iso/hddimg/vmdk/qcow2/vdi/ramfs/cpio.gz...
+       runqemu qemux86 iso/hddimg/wic.vmdk/wic.qcow2/wic.vdi/ramfs/cpio.gz...
        runqemu qemux86 qemuparams="-m 256"
        runqemu qemux86 bootparams="psplash=false"
-       runqemu path/to/&lt;image&gt;-&lt;machine&gt;.vmdk
        runqemu path/to/&lt;image&gt;-&lt;machine&gt;.wic
+       runqemu path/to/&lt;image&gt;-&lt;machine&gt;.wic.vmdk
             </literallayout>
         </para>
     </section>
@@ -1276,9 +1276,9 @@
                 <listitem><para>
                     <filename><replaceable>VM</replaceable></filename>:
                     The virtual machine image, which must be a
-                    <filename>.vmdk</filename> file.
+                    <filename>.wic.vmdk</filename> file.
                     Use this option when you want to boot a
-                    <filename>.vmdk</filename> image.
+                    <filename>.wic.vmdk</filename> image.
                     The image filename you provide must contain one of the
                     following strings: "qemux86-64", "qemux86", "qemuarm",
                     "qemumips64", "qemumips", "qemuppc", or "qemush4".
-- 
1.9.1


