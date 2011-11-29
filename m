Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DDB4E00307
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 13:39:12 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 29 Nov 2011 13:39:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,593,1315206000"; d="scan'208";a="90330380"
Received: from unknown (HELO envy.home) ([10.255.15.150])
	by fmsmga001.fm.intel.com with ESMTP; 29 Nov 2011 13:39:04 -0800
Message-ID: <4ED550FD.7090105@linux.intel.com>
Date: Tue, 29 Nov 2011 13:39:09 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: "Ashfield, Bruce" <Bruce.Ashfield@windriver.com>
X-Enigmail-Version: 1.3.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: linux-yocto: doesn't maintain patch order from SRC_URI?
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
X-List-Received-Date: Tue, 29 Nov 2011 21:39:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

I'm experimenting with Matt Fleming's EFI_STUB patches. The first 10 patches were working fine, but when I try to add the 11th, the do_patch fails. I found that it isn't trying to apply the patches in the order listed in the recipe - no in any other recognizable pattern for that matter.

The recipe contains:

# Add the efi-stub
SRC_URI += "file://0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch \
            file://0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch \
            file://0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch \
            file://0004-efi.h-Add-struct-definition-for-boot-time-services.patch \
            file://0005-efi.h-Add-efi_image_loaded_t.patch \
            file://0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch \
            file://0007-efi.h-Add-graphics-protocol-guids.patch \
            file://0008-efi.h-Add-boottime-locate_handle-search-types.patch \
            file://0009-efi-Add-EFI-file-I-O-data-types.patch \
            file://0010-x86-efi-EFI-boot-stub-support.patch \
	    file://0011-x86-efi-Break-up-large-initrd-reads.patch \
            "

do_patch fails with:
Log data follows:
| Deleted branch meta-temp (was 620917d).
| warning: could not find (or was already included): ktypes/yocto.scc
| ./0-standard-yocto-61b5e146f9d113375883df8c51449722.sco: line 14: yocto_68b329da9893e34099c7d8ad5cb9c940: command not found
| [INFO] validating against known patches  (standard-yocto-meta)
error: arch/x86/boot/compressed/eboot.c: does not exist in index09 %)
| To force apply this patch, use 'guilt push -f'
| [ERROR] unable to complete push
| pending patches are:
| Patches directory doesn't exist, try guilt-init
| ERROR. could not update git tree
| ERROR: Function 'do_patch' failed (see /build/poky/ie/tmp/work/ie_phase1-poky-linux/linux-yocto-ie-3.0.4+git1+d51b0e743599a41a42e119f29f8dfa89854b3b5e_1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r4/temp/log.do_patch.2768 for further information)

and meta/patches/standard/series contains:

$ cat standard/series 
links/scratch/obj/0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch
links/scratch/obj/0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch
links/scratch/obj/0004-efi.h-Add-struct-definition-for-boot-time-services.patch
links/scratch/obj/0005-efi.h-Add-efi_image_loaded_t.patch
links/scratch/obj/0011-x86-efi-Break-up-large-initrd-reads.patch

This needs to come after 10.

links/scratch/obj/0007-efi.h-Add-graphics-protocol-guids.patch
links/scratch/obj/0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch
links/scratch/obj/0009-efi-Add-EFI-file-I-O-data-types.patch
links/scratch/obj/0008-efi.h-Add-boottime-locate_handle-search-types.patch
links/scratch/obj/0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch
links/scratch/obj/0010-x86-efi-EFI-boot-stub-support.patch



-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

