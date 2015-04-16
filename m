Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37913E008F6; Thu, 16 Apr 2015 07:22:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 105B2E00306
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 07:22:29 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.9) with ESMTP id t3GEMOY9012160
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Apr 2015 07:22:25 -0700 (PDT)
Received: from server.local (128.224.22.156) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.224.2;
	Thu, 16 Apr 2015 07:22:24 -0700
Message-ID: <552FC59F.2080603@windriver.com>
Date: Thu, 16 Apr 2015 10:22:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Wouter van Rooy <wouter.van.rooy@axon.tv>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
In-Reply-To: <AEC347BAFCE456419C9E7C9F50321CEF10E03514F5@IAD2MBX10.mex02.mlsrvr.com>
Subject: Re: [poky] Initramfs not appended to kernel image
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
X-List-Received-Date: Thu, 16 Apr 2015 14:22:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-16 6:23 AM, Wouter van Rooy wrote:
> Hello,
>
> For the last week or so I have been struggling to build a kernel image with an embedded initramfs using the mechanisms provided by Poky Daisy. In local.conf I have set INITRAMFS_IMAGE_BUNDLE to "1" and INITRAMFS_IMAGE to the name of my image recipe. When I try to build virtual/kernel no errors are shown, but the resulting kernel image does not contain an initramfs either.

I'm the proud owner of the bugzilla to document this process better,
so let's work through the issues and see if there's a bug, or something
that just isn't clearly described.

We are talking about the 1.6 release here .. so at least the recent changes
in kernel.bbclass processing won't be the cause of the breakage.

>
> I have traced this issue to the passing of the $use_alternate_initrd variable in kernel.bbclass. The run.do_bundle_initramfs log contains the following snippets:
>
> Lines 103..120:
>
> do_bundle_initramfs() {
>          if [ ! -z "sytxg1-bootmode-image" -a x"1" = x1 ]; then
>                  echo "Creating a kernel image with a bundled initramfs..."
>                  copy_initramfs
>                  if [ -e arch/powerpc/boot/uImage ] ; then
>                          mv -f arch/powerpc/boot/uImage arch/powerpc/boot/uImage.bak
>                  fi
>                  use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=/home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/linux-3.10.9/usr/sytxg1-bootmode-image-sytxg1.cpio
>                  kernel_do_compile
>                  mv -f arch/powerpc/boot/uImage arch/powerpc/boot/uImage.initramfs
>                  mv -f arch/powerpc/boot/uImage.bak arch/powerpc/boot/uImage
>                  # Update install area
>                  echo "There is kernel image bundled with initramfs: /home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/linux-3.10.9/arch/powerpc/boot/uImage.initramfs"
>                  install -m 0644 /home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/linux-3.10.9/arch/powerpc/boot/uImage.initramfs /home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/image/boot/uImage-initramfs-sytxg1.bin
>                  echo "/home/wouter/Source/Product/sytxg1-boot/tmp/work/sytxg1-oe-linux/linux-axon/3.10-9/linux-3.10.9/arch/powerpc/boot/uImage.initramfs"
>          fi
>   
> }
>
> Lines 164..171:
>
> kernel_do_compile() {
>          unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
>          oe_runmake uImage  CC="powerpc-oe-linux-gcc " LD="powerpc-oe-linux-ld.bfd "
>          if test "uImage.gz" = "uImage"; then
>                  gzip -9c < "uImage" > "arch/powerpc/boot/uImage"
>          fi
>   
> }
>
> So, it seems that although do_bundle_initramfs() sets the $use_alternate_initrd to the correct value it is not passed in the oe_runmake call in kernel_do_compile(). Judging from the contents of kernel.bbclass I would expect it to be appended after the LD="..." statement. For now I have found a workaround by copying the relevant oe_runmake call to do_bundle_initramfs(). The patch is included below.
Correct, and this definitely used to work. I can't see anything wrong by
inspection alone, but will launch some builds to see if I can confirm the
behaviour and that variable not making it down into the function call.

Bruce

>
> I cannot imagine this is the intended way to make things work. Could anyone please shed some light on what I am doing wrong in this matter?
>
> Kind regards,
>
> Wouter van Rooy
>
>
> diff --git a/meta/classes/kernel.bbclass b/meta/classes/kernel.bbclass
> index 19b159b..224e01e 100644
> --- a/meta/classes/kernel.bbclass
> +++ b/meta/classes/kernel.bbclass
> @@ -131,8 +131,11 @@ do_bundle_initramfs () {
>   		if [ -e ${KERNEL_OUTPUT} ] ; then
>   			mv -f ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}.bak
>   		fi
> -		use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=${B}/usr/${INITRAMFS_IMAGE}-${MACHINE}.cpio
> -		kernel_do_compile
> +		unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
> +		oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC="${KERNEL_CC}" LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS} CONFIG_INITRAMFS_SOURCE=${B}/usr/${INITRAMFS_IMAGE}-${MACHINE}.cpio
> +		if test "${KERNEL_IMAGETYPE_FOR_MAKE}.gz" = "${KERNEL_IMAGETYPE}"; then
> +			gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
> +		fi
>   		mv -f ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}.initramfs
>   		mv -f ${KERNEL_OUTPUT}.bak ${KERNEL_OUTPUT}
>   		# Update install area
> @@ -150,20 +153,7 @@ addtask bundle_initramfs after do_install before do_deploy
>   
>   kernel_do_compile() {
>   	unset CFLAGS CPPFLAGS CXXFLAGS LDFLAGS MACHINE
> -	# The $use_alternate_initrd is only set from
> -	# do_bundle_initramfs() This variable is specifically for the
> -	# case where we are making a second pass at the kernel
> -	# compilation and we want to force the kernel build to use a
> -	# different initramfs image.  The way to do that in the kernel
> -	# is to specify:
> -	# make ...args... CONFIG_INITRAMFS_SOURCE=some_other_initramfs.cpio
> -	if [ "$use_alternate_initrd" = "" ] && [ "${INITRAMFS_TASK}" != "" ] ; then
> -		# The old style way of copying an prebuilt image and building it
> -		# is turned on via INTIRAMFS_TASK != ""
> -		copy_initramfs
> -		use_alternate_initrd=CONFIG_INITRAMFS_SOURCE=${B}/usr/${INITRAMFS_IMAGE}-${MACHINE}.cpio
> -	fi
> -	oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC="${KERNEL_CC}" LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS} $use_alternate_initrd
> +	oe_runmake ${KERNEL_IMAGETYPE_FOR_MAKE} ${KERNEL_ALT_IMAGETYPE} CC="${KERNEL_CC}" LD="${KERNEL_LD}" ${KERNEL_EXTRA_ARGS}
>   	if test "${KERNEL_IMAGETYPE_FOR_MAKE}.gz" = "${KERNEL_IMAGETYPE}"; then
>   		gzip -9c < "${KERNEL_IMAGETYPE_FOR_MAKE}" > "${KERNEL_OUTPUT}"
>   	fi


