Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2114BE006B0
	for <yocto@yoctoproject.org>; Tue, 29 Nov 2011 17:22:01 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 29 Nov 2011 17:21:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,595,1315206000"; d="scan'208";a="42317974"
Received: from unknown (HELO envy.home) ([10.255.15.150])
	by AZSMGA002.ch.intel.com with ESMTP; 29 Nov 2011 17:21:54 -0800
Message-ID: <4ED58537.5030702@intel.com>
Date: Tue, 29 Nov 2011 17:21:59 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4ED550FD.7090105@linux.intel.com> <4ED5673D.4070304@windriver.com>
	<4ED57BD2.8010009@linux.intel.com> <4ED58399.2030609@intel.com>
In-Reply-To: <4ED58399.2030609@intel.com>
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
X-List-Received-Date: Wed, 30 Nov 2011 01:22:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 11/29/2011 05:15 PM, Darren Hart wrote:
> On 11/29/2011 04:41 PM, Darren Hart wrote:
>>
>>
>> On 11/29/2011 03:14 PM, Bruce Ashfield wrote:
>>> On 11-11-29 04:39 PM, Darren Hart wrote:
>>>> I'm experimenting with Matt Fleming's EFI_STUB patches. The first 10 patches were working fine, but when I try to add the 11th, the do_patch fails. I found that it isn't trying to apply the patches in the order listed in the recipe - no in any other recognizable pattern for that matter.
>>>>
>>>
>>> It's shell order. You really should just create a .scc file, put IT
>>> on the SRC_URI and list the patches. You'll have no problems after
>>> that.
>>>
>>> I do have a fix for this, but can't send it right now due to travel.
>>>
>>> You are using the compatibility mode for more than I originally intended
>>> it for. So just dropping a .scc file into place will fix things
>>> up nicely.
>>
>> OK, I like that better than the monolith patch I plugged the leak with :-)
> 
> So I'm trying this:
> 
> $ cat linux-yocto-dvhart/efi-stub.scc
> patch 0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch
> patch 0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch
> patch 0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch
> patch 0004-efi.h-Add-struct-definition-for-boot-time-services.patch
> patch 0005-efi.h-Add-efi_image_loaded_t.patch
> patch 0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch
> patch 0007-efi.h-Add-graphics-protocol-guids.patch
> patch 0008-efi.h-Add-boottime-locate_handle-search-types.patch
> patch 0009-efi-Add-EFI-file-I-O-data-types.patch
> patch 0010-x86-efi-EFI-boot-stub-support.patch
> patch 0011-x86-efi-Break-up-large-initrd-reads.patch
> 
> And in the recipe:
> SRC_URI += "file://efi-stub.scc"
> 
> In the meta-series I see:
> 
> # _mark efi_stub_947530aea4d2a819b340fe2b49d765de start
> # _mark efi_stub_947530aea4d2a819b340fe2b49d765de end
> 
> But the patches do not get applied.
> 
> The Yocto Kernel Architecture and Use Manual does not appear to cover
> this case. Do I need to do something more?

Ah, I need to include the patches explicitly too. That makes sense from
a bitbake perspective. OK, I'm rolling again, nice.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

