Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2A1DE00B3D; Tue, 30 May 2017 18:15:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_10_20, 
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.195 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.1 HTML_OBFUSCATE_10_20 BODY: Message is 10% to 20% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E37CFE00B3D
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:15:06 -0700 (PDT)
Received: by mail-qk0-f195.google.com with SMTP id u75so219024qka.1
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 18:15:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w09GeKYNKk8jVNGmRicUOMwQD3kn+yvuMmgJ/ZFtkKQ=;
	b=hyfxYjGVNg1Zrvr9tzr/TX8jFKbu9okTRj+4AdkkSpDDcnuMvxENS4EGX0tV6OQPKI
	HlWo00kujfMO4KTgoi22tNi+6w/y8/BrARo0/vdk++7O9FhHFyaCL31Z/pOSnl3lopUS
	kDG8ev1ntQezwXKGbYiv2e0Cw3esis9gWDYkVGVYwrHqxFcexi+dFadtZFLHIMUjFjkz
	OyHQK/5BYAquhfUvlInaak0le3zv8kjQ2k8MON09NoVaYhsJwb2yCj9Pb2iK8vSUgUJ6
	GTPADBOCzPNodFRIDpPEUX3UJN4oO6E8PZ8cpqwi6aFkZhBQ3gafE89o9qSwYQ7BefCX
	aVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w09GeKYNKk8jVNGmRicUOMwQD3kn+yvuMmgJ/ZFtkKQ=;
	b=bEscwzx/AftETAwZWvh2YhBHPMuNFovEpkK1BlZWj2M8iLiMCJktWMXe3XZp2JPGHU
	vJQrcCu04PwvcZc2ZvqzGwiEMHlsomb4NlTqpS4qOjbXUUuHBYPKm/xWYhrqGgTkMcAa
	3UlnzGbKSbmImSU1C2Vi8VlyDda50SyJIwbFkYuxROogy+Xbz42b6s5pGljxGodHMGwX
	grFY/4nIJuDk8goS6x3lf8/APIOgecmT7t94UzRjmZSlzq2k6arWr92AmEe0XEhu25IU
	O9hGFeQsv981yAkVGwf7Z4csd+qVMExOsMK/URoesBumhdGWC3vHcFlgC2qqVXVDhAGS
	g1JA==
X-Gm-Message-State: AODbwcA6DSkjCecO3Qchz+Zfw/SEHPRGXnyGPIVwaqqEQF52s/Jt4oqs
	k9tq/xBalBHsNKj9vM6T9IVjJpuM7w==
X-Received: by 10.55.187.196 with SMTP id l187mr26735066qkf.185.1496193305840; 
	Tue, 30 May 2017 18:15:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.182.109 with HTTP; Tue, 30 May 2017 18:15:05 -0700 (PDT)
In-Reply-To: <743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 30 May 2017 21:15:05 -0400
Message-ID: <CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
To: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: Fix QEMUARM based bsps to not offer SMP support
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
X-List-Received-Date: Wed, 31 May 2017 01:15:08 -0000
Content-Type: multipart/alternative; boundary="94eb2c049334828f220550c7a6ef"

--94eb2c049334828f220550c7a6ef
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez <
alejandro.hernandez@linux.intel.com> wrote:

> Hey Andy,
>
>
> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
>
>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
>> <alejandro.hernandez@linux.intel.com> wrote:
>>
>>> Hey Leo,
>>>
>>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>>> based on > ARMv6
>>>
>>> Alejandro
>>>
>>>
>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>>
>>>> Alex,
>>>>
>>>> is this change only applies to qemu arm? I wonder if the native arm arch
>>>> needs a similar series.
>>>>
>>>> Leo
>>>>
>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>>
>>>>> The SMP kernel config presents issues on qemuarm because:
>>>>>
>>>>> CONFIG_SMP=y
>>>>> Dependencies Missing:
>>>>>     - CPU_V6K or CPU_V7:
>>>>>       These are selected by setting:
>>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>>       or
>>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>>
>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>>> incompatible with CONFIG_SMP.
>>>>>
>>>> Maybe time to think (again) about updating OE's qemu ARM builds to
>> ARMv7.
>>
> I believe qemu has deep issues with newer ARMs, and thats why it's been
> kept like that.


Qemu itself should be fine with the newer ARMs .. but we've just targeted a
lowest common
denominator (and simple) ARM arch for this target. Since the primary goal
isn't testing the ISA or arch
specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, etc).

That being said, as long as a newer platform/board was chosen that had full
disk support
(something that the qemuarma9 lacks), then it is feasible to do an update
to something
newer. Alternatively, we could keep the platform the same and update the
CPU definition .. but
there's not a huge value in that.

But if we did bring in something newer, we'd have to drop the existing
qemuarm and document that
we aren't doing any coverage on the older ARM arches.

Bruce


>
>
>> This patch fixes the script, and avoids offering SMP to the user
>>>>> when the created BSP is based on QEMU + ARM.
>>>>>
>>>>>
>>>> [YOCTO #11426]
>>>>>
>>>>> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.int
>>>>> el.com>
>>>>> ---
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_
>>>>> 4.1.bbappend
>>>>> | 1 +
>>>>>
>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>>> | 1
>>>>> +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_
>>>>> 4.4.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_
>>>>> 4.8.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>> | 1 +
>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>> | 1 +
>>>>>    9 files changed, 9 insertions(+)
>>>>>
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-dev.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-dev.bbappend
>>>>> index 7e3ce5ba12d..11105ebcc26 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-dev.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-dev.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.1.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.1.bbappend
>>>>> index 81392ce38ac..ad77a662682 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.1.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.1.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.10.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.10.bbappend
>>>>> index 29ad17b2009..9b5f8016841 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.10.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.10.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.4.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.4.bbappend
>>>>> index a73b1aa132f..2fc992992cf 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.4.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.4.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.8.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.8.bbappend
>>>>> index 7d40671fd43..868d12af04b 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.8.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto-tiny_4.8.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.1.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.1.bbappend
>>>>> index a9fd9ecff5a..13450f47438 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.1.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.1.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.10.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.10.bbappend
>>>>> index 5873da4245c..e1af4976fc4 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.10.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.10.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.4.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.4.bbappend
>>>>> index cdee7737983..a2511ba197c 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.4.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.4.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> diff --git
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.8.bbappend
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.8.bbappend
>>>>> index 24c28803ee7..fdf66bb4429 100644
>>>>> ---
>>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.8.bbappend
>>>>> +++
>>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/
>>>>> linux/linux-yocto_4.8.bbappend
>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>    +{{ if qemuarch != "arm": }}
>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>>> support? (y/n)" default:"y"}}
>>>>>    {{ if smp == "y": }}
>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>> --
>>>>> 2.12.0
>>>>>
>>>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c049334828f220550c7a6ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez <span dir=3D"ltr">=
&lt;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank=
">alejandro.hernandez@linux.intel.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex">Hey Andy,<span class=3D""><br>
<br>
<br>
On 05/30/2017 05:32 PM, Andre McCurdy wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez<br>
&lt;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_blank=
">alejandro.hernandez@linux.int<wbr>el.com</a>&gt; wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hey Leo,<br>
<br>
Nope, this change only applies to qemuARM, the other ARM based BSPs are<br>
based on &gt; ARMv6<br>
<br>
Alejandro<br>
<br>
<br>
On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Alex,<br>
<br>
is this change only applies to qemu arm? I wonder if the native arm arch<br=
>
needs a similar series.<br>
<br>
Leo<br>
<br>
On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
The SMP kernel config presents issues on qemuarm because:<br>
<br>
CONFIG_SMP=3Dy<br>
Dependencies Missing:<br>
=C2=A0 =C2=A0 - CPU_V6K or CPU_V7:<br>
=C2=A0 =C2=A0 =C2=A0 These are selected by setting:<br>
=C2=A0 =C2=A0 =C2=A0 CONFIG_ARCH_MULTI_V7=3Dy<br>
=C2=A0 =C2=A0 =C2=A0 or<br>
=C2=A0 =C2=A0 =C2=A0 CONFIG_ARCH_MULTI_V6=3Dy<br>
<br>
But our QEMU + ARM BSPs are based on armv4/v5 hence they are<br>
incompatible with CONFIG_SMP.<br>
</blockquote></blockquote></blockquote>
Maybe time to think (again) about updating OE&#39;s qemu ARM builds to ARMv=
7.<br>
</blockquote></span>
I believe qemu has deep issues with newer ARMs, and thats why it&#39;s been=
 kept like that.</blockquote><div><br></div><div>Qemu itself should be fine=
 with the newer ARMs .. but we&#39;ve just targeted a lowest common</div><d=
iv>denominator (and simple) ARM arch for this target. Since the primary goa=
l isn&#39;t testing the ISA or arch</div><div>specifics via qemuarm/qemuarm=
64 (rather, sanity, base arch support, etc).</div><div><br></div><div>That =
being said, as long as a newer platform/board was chosen that had full disk=
 support=C2=A0</div><div>(something that the qemuarma9 lacks), then it is f=
easible to do an update to something</div><div>newer. Alternatively, we cou=
ld keep the platform the same and update the CPU definition .. but</div><di=
v>there&#39;s not a huge value in that.</div><div><br></div><div>But if we =
did bring in something newer, we&#39;d have to drop the existing qemuarm an=
d document that</div><div>we aren&#39;t doing any coverage on the older ARM=
 arches.</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">
This patch fixes the script, and avoids offering SMP to the user<br>
when the created BSP is based on QEMU + ARM.<br>
<br>
</blockquote>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
[YOCTO #11426]<br>
<br>
Signed-off-by: Alejandro Hernandez &lt;<a href=3D"mailto:alejandro.hernande=
z@linux.intel.com" target=3D"_blank">alejandro.hernandez@linux.int<wbr>el.c=
om</a>&gt;<br>
---<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto-dev=
.b<wbr>bappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto-tin=
y_<wbr>4.1.bbappend<br>
| 1 +<br>
<br>
.../target/arch/qemu/recipes-k<wbr>ernel/linux/linux-yocto-tiny_4<wbr>.10.b=
bappend | 1<br>
+<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto-tin=
y_<wbr>4.4.bbappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto-tin=
y_<wbr>4.8.bbappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto_4.1=
.b<wbr>bappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto_4.1=
0.<wbr>bbappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto_4.4=
.b<wbr>bappend<br>
| 1 +<br>
=C2=A0 =C2=A0.../target/arch/qemu/recipes-<wbr>kernel/linux/linux-yocto_4.8=
.b<wbr>bappend<br>
| 1 +<br>
=C2=A0 =C2=A09 files changed, 9 insertions(+)<br>
<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-dev.bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-dev.bbappend<br>
index 7e3ce5ba12d..11105ebcc26 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-dev.bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-dev.bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Would you like SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.1.<wbr>bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.1.<wbr>bbappend<br>
index 81392ce38ac..ad77a662682 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.1.<wbr>bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.1.<wbr>bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Do you need SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.10.<wbr>bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.10.<wbr>bbappend<br>
index 29ad17b2009..9b5f8016841 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.10.<wbr>bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.10.<wbr>bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Do you need SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.4.<wbr>bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.4.<wbr>bbappend<br>
index a73b1aa132f..2fc992992cf 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.4.<wbr>bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.4.<wbr>bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Do you need SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.8.<wbr>bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.8.<wbr>bbappend<br>
index 7d40671fd43..868d12af04b 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.8.<wbr>bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto-tiny_4.8.<wbr>bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Do you need SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.1.bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.1.bbappend<br>
index a9fd9ecff5a..13450f47438 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.1.bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.1.bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Would you like SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.10.bbappen<wbr>d<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.10.bbappen<wbr>d<br>
index 5873da4245c..e1af4976fc4 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.10.bbappen<wbr>d<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.10.bbappen<wbr>d<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Would you like SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.4.bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.4.bbappend<br>
index cdee7737983..a2511ba197c 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.4.bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.4.bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Would you like SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
diff --git<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.8.bbappend<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.8.bbappend<br>
index 24c28803ee7..fdf66bb4429 100644<br>
---<br>
a/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.8.bbappend<br>
+++<br>
b/scripts/lib/bsp/substrate/ta<wbr>rget/arch/qemu/recipes-kernel/<wbr>linux=
/linux-yocto_4.8.bbappend<br>
@@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}<wbr>} =3D &quot;{{=3Dmac=
hine}}&quot;<br>
=C2=A0 =C2=A0{{ if need_new_kbranch =3D=3D &quot;n&quot;: }}<br>
=C2=A0 =C2=A0KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quot;{{=3Dexisting_kbranch}}=
&quot;<br>
=C2=A0 =C2=A0+{{ if qemuarch !=3D &quot;arm&quot;: }}<br>
=C2=A0 =C2=A0{{ input type:&quot;boolean&quot; name:&quot;smp&quot; prio:&q=
uot;30&quot; msg:&quot;Would you like SMP<br>
support? (y/n)&quot; default:&quot;y&quot;}}<br>
=C2=A0 =C2=A0{{ if smp =3D=3D &quot;y&quot;: }}<br>
=C2=A0 =C2=A0KERNEL_FEATURES_append_{{=3Dmac<wbr>hine}} +=3D &quot; cfg/smp=
.scc&quot;<br>
--<br>
2.12.0<br>
<br>
</blockquote></blockquote>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</blockquote></blockquote>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Tho=
u shalt not follow the NULL pointer, for chaos and madness await thee at it=
s end&quot;</div>
</div></div>

--94eb2c049334828f220550c7a6ef--
