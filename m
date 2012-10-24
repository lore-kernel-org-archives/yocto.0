Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8680E00346
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 13:02:08 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 24 Oct 2012 13:01:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,642,1344236400"; d="scan'208";a="160048121"
Received: from unknown (HELO [10.255.14.152]) ([10.255.14.152])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Oct 2012 13:01:52 -0700
Message-ID: <1351108912.27553.45.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Wed, 24 Oct 2012 15:01:52 -0500
In-Reply-To: <4514ef8ee878fa1e7577b816a8fd71cd46101833.1351053026.git.dvhart@linux.intel.com>
References: <18eb222d35f55fbf3cbd16afb6509ecffe30b7ca.1351053026.git.dvhart@linux.intel.com>
	<4514ef8ee878fa1e7577b816a8fd71cd46101833.1351053026.git.dvhart@linux.intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] fri2: Add grub-efi workaround for USB keyboard initialization
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
X-List-Received-Date: Wed, 24 Oct 2012 20:02:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-10-23 at 21:31 -0700, Darren Hart wrote:
> The Fastboot firmware will sometimes fail to init the USB keyboard when
> connected directly in 1.0 mode (works fine through a 2.0 hub). By adding
> the USB modules to the grub-efi build, we can ensure the keyboard will
> be available in the grub menu at the expense of about a second in boot
> time.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>

Acked-by: Tom Zanussi <tom.zanussi@intel.com>

> ---
>  .../recipes-bsp/grub/grub-efi-native_2.00.bbappend |   11 +++++++++++
>  1 files changed, 11 insertions(+), 0 deletions(-)
>  create mode 100644 meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend
> 
> diff --git a/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend b/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend
> new file mode 100644
> index 0000000..c6904ef
> --- /dev/null
> +++ b/meta-fri2/recipes-bsp/grub/grub-efi-native_2.00.bbappend
> @@ -0,0 +1,11 @@
> +# The Intel provided Fast Boot Firmware may not initialize the USB keyboard
> +# before launching the grub.efi payload. Ensure GRUB has keyboard control by
> +# building in the usb, usb_keyboard, and ohci modules.
> +
> +do_mkimage() {
> +	./grub-mkimage -p /EFI/BOOT -d ./grub-core/ \
> +	               -O ${GRUB_TARGET}-efi -o ./${GRUB_IMAGE} \
> +	               boot linux ext2 fat serial part_msdos part_gpt normal efi_gop \
> +	               usb usb_keyboard ohci
> +}
> +



