Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0630E006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 16:55:15 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAU0tDsK029103
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 29 Nov 2011 16:55:13 -0800 (PST)
Received: from [128.224.21.117] (128.224.21.117) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 29 Nov 2011 16:55:12 -0800
Message-ID: <4ED57EED.7040309@windriver.com>
Date: Tue, 29 Nov 2011 19:55:09 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4ED550FD.7090105@linux.intel.com> <4ED5673D.4070304@windriver.com>
	<4ED57CCE.2090309@linux.intel.com>
In-Reply-To: <4ED57CCE.2090309@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: linux-yocto: doesn't maintain patch order from SRC_URI?
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
X-List-Received-Date: Wed, 30 Nov 2011 00:55:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-29 07:46 PM, Darren Hart wrote:
>
>
> On 11/29/2011 03:14 PM, Bruce Ashfield wrote:
>> On 11-11-29 04:39 PM, Darren Hart wrote:
>>> I'm experimenting with Matt Fleming's EFI_STUB patches. The first 10 patches were working fine, but when I try to add the 11th, the do_patch fails. I found that it isn't trying to apply the patches in the order listed in the recipe - no in any other recognizable pattern for that matter.
>>>
>>
>> It's shell order.
>
> Oh, how is this shell order?

s/shell/modification time order/

There's a find that locates the patches. The order returned by find
is what is returned used to generate an auto-scc file that is then
used to merge with the rest of the infrastructure.

I did a couple of minor changes here, sorting the patch location,
and support for directories of patches. But there's only so far
that I'm going to go for now.

What I'm trying to implement is a mode that the core patch class
will simply dump me a list of patches, that way I don't duplicate any
code, but can feed that into the scripts. I'm not there yet, but am
still working on it, since we can work around this for now, I'll try
and get this right before pushing out any changes.

Cheers,

Bruce

>
> $ ls *patch
> 0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch
> 0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch
> 0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch
> 0004-efi.h-Add-struct-definition-for-boot-time-services.patch
> 0005-efi.h-Add-efi_image_loaded_t.patch
> 0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch
> 0007-efi.h-Add-graphics-protocol-guids.patch
> 0008-efi.h-Add-boottime-locate_handle-search-types.patch
> 0009-efi-Add-EFI-file-I-O-data-types.patch
> 0010-x86-efi-EFI-boot-stub-support.patch
> 0011-x86-efi-Break-up-large-initrd-reads.patch
>
> This is the order I would expect and seems to match shell order...
>
> --
> Darren
>
>> You really should just create a .scc file, put IT
>> on the SRC_URI and list the patches. You'll have no problems after
>> that.
>>
>> I do have a fix for this, but can't send it right now due to travel.
>>
>> You are using the compatibility mode for more than I originally intended
>> it for. So just dropping a .scc file into place will fix things
>> up nicely.
>>
>> Bruce
>>
>>> The recipe contains:
>>>
>>> # Add the efi-stub
>>> SRC_URI += "file://0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch \
>>>               file://0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch \
>>>               file://0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch \
>>>               file://0004-efi.h-Add-struct-definition-for-boot-time-services.patch \
>>>               file://0005-efi.h-Add-efi_image_loaded_t.patch \
>>>               file://0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch \
>>>               file://0007-efi.h-Add-graphics-protocol-guids.patch \
>>>               file://0008-efi.h-Add-boottime-locate_handle-search-types.patch \
>>>               file://0009-efi-Add-EFI-file-I-O-data-types.patch \
>>>               file://0010-x86-efi-EFI-boot-stub-support.patch \
>>> 	    file://0011-x86-efi-Break-up-large-initrd-reads.patch \
>>>               "
>>>
>>> do_patch fails with:
>>> Log data follows:
>>> | Deleted branch meta-temp (was 620917d).
>>> | warning: could not find (or was already included): ktypes/yocto.scc
>>> | ./0-standard-yocto-61b5e146f9d113375883df8c51449722.sco: line 14: yocto_68b329da9893e34099c7d8ad5cb9c940: command not found
>>> | [INFO] validating against known patches  (standard-yocto-meta)
>>> error: arch/x86/boot/compressed/eboot.c: does not exist in index09 %)
>>> | To force apply this patch, use 'guilt push -f'
>>> | [ERROR] unable to complete push
>>> | pending patches are:
>>> | Patches directory doesn't exist, try guilt-init
>>> | ERROR. could not update git tree
>>> | ERROR: Function 'do_patch' failed (see /build/poky/ie/tmp/work/ie_phase1-poky-linux/linux-yocto-ie-3.0.4+git1+d51b0e743599a41a42e119f29f8dfa89854b3b5e_1+6b2c7d65b844e686eae7d5cccb9b638887afe28e-r4/temp/log.do_patch.2768 for further information)
>>>
>>> and meta/patches/standard/series contains:
>>>
>>> $ cat standard/series
>>> links/scratch/obj/0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch
>>> links/scratch/obj/0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch
>>> links/scratch/obj/0004-efi.h-Add-struct-definition-for-boot-time-services.patch
>>> links/scratch/obj/0005-efi.h-Add-efi_image_loaded_t.patch
>>> links/scratch/obj/0011-x86-efi-Break-up-large-initrd-reads.patch
>>>
>>> This needs to come after 10.
>>>
>>> links/scratch/obj/0007-efi.h-Add-graphics-protocol-guids.patch
>>> links/scratch/obj/0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch
>>> links/scratch/obj/0009-efi-Add-EFI-file-I-O-data-types.patch
>>> links/scratch/obj/0008-efi.h-Add-boottime-locate_handle-search-types.patch
>>> links/scratch/obj/0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch
>>> links/scratch/obj/0010-x86-efi-EFI-boot-stub-support.patch
>>>
>>>
>>>
>>
>


