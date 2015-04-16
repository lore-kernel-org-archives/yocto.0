Return-Path: <wouter.van.rooy@axon.tv>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DC8EE009C2; Thu, 16 Apr 2015 03:31:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [173.203.187.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 496 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Apr 2015 03:31:39 PDT
Received: from smtp94.iad3a.emailsrvr.com (smtp94.iad3a.emailsrvr.com
	[173.203.187.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC49E009A3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 03:31:39 -0700 (PDT)
Received: from smtp4.relay.iad3a.emailsrvr.com (localhost.localdomain
	[127.0.0.1])
	by smtp4.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id
	64577280187
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 06:23:22 -0400 (EDT)
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43])
	by smtp4.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTPS id
	54A86280160
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 06:23:17 -0400 (EDT)
X-Sender-Id: wouter.van.rooy@axon.tv
Received: from smtp192.mex02.mlsrvr.com (smtp192.mex02.mlsrvr.com
	[204.232.137.43]) (using TLSv1 with cipher AES128-SHA)
	by 0.0.0.0:25 (trex/5.4.2); Thu, 16 Apr 2015 10:23:22 GMT
Received: from IAD2MBX10.mex02.mlsrvr.com ([172.23.11.74]) by
	IAD2HUB03.mex02.mlsrvr.com ([172.23.10.67]) with mapi; Thu, 16 Apr 2015
	06:23:17 -0400
From: Wouter van Rooy <wouter.van.rooy@axon.tv>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 16 Apr 2015 06:23:15 -0400
Thread-Topic: [yocto] [poky] Initramfs not appended to kernel image
Thread-Index: AdB4L1k7qTpFDszuRKWIxTZr+yo9qg==
Message-ID: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Thu, 16 Apr 2015 10:31:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

For the last week or so I have been struggling to build a kernel image with=
 an embedded initramfs using the mechanisms provided by Poky Daisy. In loca=
l.conf I have set INITRAMFS_IMAGE_BUNDLE to "1" and INITRAMFS_IMAGE to the =
name of my image recipe. When I try to build virtual/kernel no errors are s=
hown, but the resulting kernel image does not contain an initramfs either.

I have traced this issue to the passing of the $use_alternate_initrd variab=
le in kernel.bbclass. The run.do_bundle_initramfs log contains the followin=
g snippets:

Lines 103..120:

do_bundle_initramfs() {
        if [ ! -z "sytxg1-bootmode-image" -a x"1" =3D x1 ]; then
                echo "Creating a kernel image with a bundled initramfs..."
                copy_initramfs
                if [ -e arch/powerpc/boot/uImage ] ; then
                        mv -f arch/powerpc/boot/uImage arch/powerpc/boot/uI=
mage.bak
                fi
                use_alternate_initrd=3DCONFIG_INITRAMFS_SOURCE=3D/home/wout=
er/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/li=
nux-3.10.9/usr/sytxg1-bootmode-image-sytxg1.cpio
                kernel_do_compile
                mv -f arch/powerpc/boot/uImage arch/powerpc/boot/uImage.ini=
tramfs
                mv -f arch/powerpc/boot/uImage.bak arch/powerpc/boot/uImage
                # Update install area
                echo "There is kernel image bundled with initramfs: /home/w=
outer/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9=
/linux-3.10.9/arch/powerpc/boot/uImage.initramfs"
                install -m 0644 /home/wouter/Source/Product/sytxg1-boot/tmp=
/work/sytxg1-oe-linux/linux-axon/3.10-9/linux-3.10.9/arch/powerpc/boot/uIma=
ge.initramfs /home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-lin=
ux/linux-axon/3.10-9/image/boot/uImage-initramfs-sytxg1.bin
                echo "/home/wouter/Source/Product/sytxg1-boot/tmp/work/sytx=
g1-oe-linux/linux-axon/3.10-9/linux-3.10.9/arch/powerpc/boot/uImage.initram=
fs"
        fi
=20
}

Lines 164..171:

kernel_do_compile() {
        unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
        oe_runmake uImage  CC=3D"powerpc-oe-linux-gcc " LD=3D"powerpc-oe-li=
nux-ld.bfd "
        if test "uImage.gz" =3D "uImage"; then
                gzip -9c < "uImage" > "arch/powerpc/boot/uImage"
        fi
=20
}

So, it seems that although do_bundle_initramfs() sets the $use_alternate_in=
itrd to the correct value it is not passed in the oe_runmake call in kernel=
_do_compile(). Judging from the contents of kernel.bbclass I would expect i=
t to be appended after the LD=3D"..." statement. For now I have found a wor=
karound by copying the relevant oe_runmake call to do_bundle_initramfs(). T=
he patch is included below.

I cannot imagine this is the intended way to make things work. Could anyone=
 please shed some light on what I am doing wrong in this matter?

Kind regards,

Wouter van Rooy


diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
index 19b159b..224e01e 100644
--- a/meta/classes/kernel.bbclass
+++ b/meta/classes/kernel.bbclass
@@ -131,8 +131,11 @@ do_bundle_initramfs () {
 		if [ -e ${KERNEL_OUTPUT} ] ; then
 			mv -f ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}.bak
 		fi
-		use_alternate_initrd=3DCONFIG_INITRAMFS_SOURCE=3D${B}/usr/${INITRAMFS_IM=
AGE}-${MACHINE}.cpio
-		kernel_do_compile
+		unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
+		oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC=3D"${=
KERNEL_CC}" LD=3D"${KERNEL_LD}" ${KERNEL_EXTRA_ARGS} CONFIG_INITRAMFS_SOURC=
E=3D${B}/usr/${INITRAMFS_IMAGE}-${MACHINE}.cpio
+		if test "${KERNEL_IMAGETYPE_FOR_MAKE}.gz" =3D "${KERNEL_IMAGETYPE}"; the=
n
+			gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
+		fi
 		mv -f ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}.initramfs
 		mv -f ${KERNEL_OUTPUT}.bak ${KERNEL_OUTPUT}
 		# Update install area
@@ -150,20 +153,7 @@ addtask bundle_initramfs after do_install before do_de=
ploy
=20
 kernel_do_compile() {
 	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
-	# The $use_alternate_initrd is only set from
-	# do_bundle_initramfs() This variable is specifically for the
-	# case where we are making a second pass at the kernel
-	# compilation and we want to force the kernel build to use a
-	# different initramfs image.  The way to do that in the kernel
-	# is to specify:
-	# make ...args... CONFIG_INITRAMFS_SOURCE=3Dsome_other_initramfs.cpio
-	if [ "$use_alternate_initrd" =3D "" ] && [ "${INITRAMFS_TASK}" !=3D "" ] =
; then
-		# The old style way of copying an prebuilt image and building it
-		# is turned on via INTIRAMFS_TASK !=3D ""
-		copy_initramfs
-		use_alternate_initrd=3DCONFIG_INITRAMFS_SOURCE=3D${B}/usr/${INITRAMFS_IM=
AGE}-${MACHINE}.cpio
-	fi
-	oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC=3D"${K=
ERNEL_CC}" LD=3D"${KERNEL_LD}" ${KERNEL_EXTRA_ARGS} $use_alternate_initrd
+	oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC=3D"${K=
ERNEL_CC}" LD=3D"${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
 	if test "${KERNEL_IMAGETYPE_FOR_MAKE}.gz" =3D "${KERNEL_IMAGETYPE}"; then
 		gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
 	fi

