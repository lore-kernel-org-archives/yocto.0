Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0D16E0030A
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 11:11:03 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by yenq8 with SMTP id q8so604565yen.35
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 11:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Pk2Kxt6lqwdE0i1s6dVSHYr2CKqFGvOAlMdWkE16yo8=;
	b=iIlh++eAdVx9ZrWc6hxyTAAE3z7wQIsT/iW3W7AB1FTj/kO6oWTFU0yrstV4mvD8in
	Q/53be3rFSRYSn5Ci2U5tQdyOj/Mnr2mfKYSQL0XUIxtyTtMvHs9VJF9JKe77jmBASL3
	1k9M2FVJuw7llPHtuwjVpOE7q0yVVIuqRaACA=
MIME-Version: 1.0
Received: by 10.68.35.103 with SMTP id g7mr9776185pbj.53.1322680262690; Wed,
	30 Nov 2011 11:11:02 -0800 (PST)
Received: by 10.142.121.40 with HTTP; Wed, 30 Nov 2011 11:11:02 -0800 (PST)
In-Reply-To: <4ED58537.5030702@intel.com>
References: <4ED550FD.7090105@linux.intel.com> <4ED5673D.4070304@windriver.com>
	<4ED57BD2.8010009@linux.intel.com> <4ED58399.2030609@intel.com>
	<4ED58537.5030702@intel.com>
Date: Wed, 30 Nov 2011 14:11:02 -0500
Message-ID: <CADkTA4MhJnLipwwurQKv3igW+Jy0Y=nYs7G_QLyCTu=n4S69kA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Darren Hart <darren.hart@intel.com>
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
X-List-Received-Date: Wed, 30 Nov 2011 19:11:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 29, 2011 at 8:21 PM, Darren Hart <darren.hart@intel.com> wrote:
> On 11/29/2011 05:15 PM, Darren Hart wrote:
>> On 11/29/2011 04:41 PM, Darren Hart wrote:
>>>
>>>
>>> On 11/29/2011 03:14 PM, Bruce Ashfield wrote:
>>>> On 11-11-29 04:39 PM, Darren Hart wrote:
>>>>> I'm experimenting with Matt Fleming's EFI_STUB patches. The first 10 =
patches were working fine, but when I try to add the 11th, the do_patch fai=
ls. I found that it isn't trying to apply the patches in the order listed i=
n the recipe - no in any other recognizable pattern for that matter.
>>>>>
>>>>
>>>> It's shell order. You really should just create a .scc file, put IT
>>>> on the SRC_URI and list the patches. You'll have no problems after
>>>> that.
>>>>
>>>> I do have a fix for this, but can't send it right now due to travel.
>>>>
>>>> You are using the compatibility mode for more than I originally intend=
ed
>>>> it for. So just dropping a .scc file into place will fix things
>>>> up nicely.
>>>
>>> OK, I like that better than the monolith patch I plugged the leak with =
:-)
>>
>> So I'm trying this:
>>
>> $ cat linux-yocto-dvhart/efi-stub.scc
>> patch 0001-x86-Add-missing-bzImage-fields-to-struct-setup_heade.patch
>> patch 0002-x86-efi-Make-efi_call_phys_prelog-CONFIG_RELOCATABLE.patch
>> patch 0003-x86-Don-t-use-magic-strings-for-EFI-loader-signature.patch
>> patch 0004-efi.h-Add-struct-definition-for-boot-time-services.patch
>> patch 0005-efi.h-Add-efi_image_loaded_t.patch
>> patch 0006-efi.h-Add-allocation-types-for-boottime-allocate_pag.patch
>> patch 0007-efi.h-Add-graphics-protocol-guids.patch
>> patch 0008-efi.h-Add-boottime-locate_handle-search-types.patch
>> patch 0009-efi-Add-EFI-file-I-O-data-types.patch
>> patch 0010-x86-efi-EFI-boot-stub-support.patch
>> patch 0011-x86-efi-Break-up-large-initrd-reads.patch
>>
>> And in the recipe:
>> SRC_URI +=3D "file://efi-stub.scc"
>>
>> In the meta-series I see:
>>
>> # _mark efi_stub_947530aea4d2a819b340fe2b49d765de start
>> # _mark efi_stub_947530aea4d2a819b340fe2b49d765de end
>>
>> But the patches do not get applied.
>>
>> The Yocto Kernel Architecture and Use Manual does not appear to cover
>> this case. Do I need to do something more?
>
> Ah, I need to include the patches explicitly too. That makes sense from
> a bitbake perspective. OK, I'm rolling again, nice.

Glad to hear you got to this, after I sent that email and headed for some s=
leep,
I realized that I forgot to point out that detail.

Cheers

Bruce

>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

