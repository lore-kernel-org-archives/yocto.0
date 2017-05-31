Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26A81E00B01; Wed, 31 May 2017 11:47:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB2AAE00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 11:46:57 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id k15so5731405wmh.3
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 11:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yixTUIncYrJrdrXvv0n+IDhkTdNjQU96sOgJTnX4EUM=;
	b=QWHDkGN6Kjq7cZcXgmjHBmZVaRicGfnAAxT/1oz7XjwrWpTp1KDU82Szz3cqnrw/Qo
	JN5JPOset++pVnMRek2gEZMEXJg09TCcKIWheDu8+6SpjQ5zzotYKuK8Q2Ldk8wSAoGo
	BP8C6Ngg0KqwkqN2ddcDLv5gzY6iUSts1Cuap6GJyOerscB7chXdF0izTwRyS4IYdSmX
	kCGhjMG8XxXjH/n3ijpN7y/Zt5d1xHFvr3uoXQr/dQaGU1AkURI4m6NqQ5xOHl35gPIJ
	jFjZiud28kAd/Ktnffg45j+QhFZzWZXcSSGc8OgSPQij89U2V9NhVt1IxEWUjduAjeFP
	0Qlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yixTUIncYrJrdrXvv0n+IDhkTdNjQU96sOgJTnX4EUM=;
	b=iIsPQw28H43sxglo2Es0OVIlMPJv3dftzIUb4+8BA+nZdji7Iis9d10ydE1JuHVpKu
	uzdS+it1b1652qj5rsFOaqg6JFm+ZOmFQkWi6PiEwApXDtShN9yNfFS3hOao3HVJkU7D
	85yQGT0gwgjcNTuuiUgZ0FaFyJECUtSda6a45bUzZPIqHda2sWJLubmO2U3kLkpXP0rD
	elWwu7Mn+2f0GUXFkYwgpfSNymY9saiOgjGZAUBbNdXsfU6CibkbEJo+vdtzJKgWsPlH
	DBLV1hAmi1bO/XVnL4gv5H0jQLsq3lBMkvu3vUOkLi3+eLI1ZVW6AKVle1yAeXPqqAPF
	Mwsw==
X-Gm-Message-State: AODbwcCtNNqdE1gLhKHGKW6txUAJTWW4WzDq+4XF/HqPq64sYcpzKpqa
	bXgJSsUHtZTmVcSs5HkbP/V2Lf/KYQ==
X-Received: by 10.80.144.118 with SMTP id z51mr21273121edz.143.1496256416124; 
	Wed, 31 May 2017 11:46:56 -0700 (PDT)
MIME-Version: 1.0
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
	<CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
In-Reply-To: <CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 31 May 2017 18:46:45 +0000
Message-ID: <CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
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
X-List-Received-Date: Wed, 31 May 2017 18:47:01 -0000
Content-Type: multipart/alternative; boundary="94eb2c0dfec62d157e0550d658f6"

--94eb2c0dfec62d157e0550d658f6
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:
>
>
> On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com> wrote:
>>
>> Hey Andy,
>>
>>
>> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
>>>
>>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
>>> <alejandro.hernandez@linux.intel.com> wrote:
>>>>
>>>> Hey Leo,
>>>>
>>>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>>>> based on > ARMv6
>>>>
>>>> Alejandro
>>>>
>>>>
>>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>>>>
>>>>> Alex,
>>>>>
>>>>> is this change only applies to qemu arm? I wonder if the native arm
>>>>> arch
>>>>> needs a similar series.
>>>>>
>>>>> Leo
>>>>>
>>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>>>>
>>>>>> The SMP kernel config presents issues on qemuarm because:
>>>>>>
>>>>>> CONFIG_SMP=y
>>>>>> Dependencies Missing:
>>>>>>     - CPU_V6K or CPU_V7:
>>>>>>       These are selected by setting:
>>>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>>>       or
>>>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>>>
>>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>>>> incompatible with CONFIG_SMP.
>>>
>>> Maybe time to think (again) about updating OE's qemu ARM builds to
ARMv7.
>>
>> I believe qemu has deep issues with newer ARMs, and thats why it's been
>> kept like that.
>
>
> Qemu itself should be fine with the newer ARMs .. but we've just targeted
a
> lowest common
> denominator (and simple) ARM arch for this target. Since the primary goal
> isn't testing the ISA or arch
> specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, etc).
>

I think it will be more effective if we tested most used configuration
instead, it would help a larger community. GCC 7 also dropped armv5 ( the t
variants are still supported )

I would think keep the name qemuarm but use armv7 based machine to emulate
would be an option I am sure meta Linaro has some work on this that can be
used in oe core


> That being said, as long as a newer platform/board was chosen that had
full
> disk support
> (something that the qemuarma9 lacks), then it is feasible to do an update
to
> something
> newer. Alternatively, we could keep the platform the same and update the
CPU
> definition .. but
> there's not a huge value in that.
>
> But if we did bring in something newer, we'd have to drop the existing
> qemuarm and document that
> we aren't doing any coverage on the older ARM arches.
>
> Bruce
>
>>
>>
>>>
>>>>>> This patch fixes the script, and avoids offering SMP to the user
>>>>>> when the created BSP is based on QEMU + ARM.
>>>>>>
>>>>>
>>>>>> [YOCTO #11426]
>>>>>>
>>>>>> Signed-off-by: Alejandro Hernandez
>>>>>> <alejandro.hernandez@linux.intel.com>
>>>>>> ---
>>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>>> | 1 +
>>>>>>
>>>>>>
.../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>>>> | 1 +
>>>>>>
>>>>>>
>>>>>>
.../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend | 1
>>>>>> +
>>>>>>
>>>>>>
.../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>>>> | 1 +
>>>>>>
>>>>>>
.../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>>>> | 1 +
>>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>>> | 1 +
>>>>>>
.../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>>> | 1 +
>>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>> | 1 +
>>>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>>> | 1 +
>>>>>>    9 files changed, 9 insertions(+)
>>>>>>
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>>> index 7e3ce5ba12d..11105ebcc26 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
>>>>>> SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>>>> index 81392ce38ac..ad77a662682 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>>>> index 29ad17b2009..9b5f8016841 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>>>> index a73b1aa132f..2fc992992cf 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>>>> index 7d40671fd43..868d12af04b 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>>> index a9fd9ecff5a..13450f47438 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
>>>>>> SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>>> index 5873da4245c..e1af4976fc4 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
>>>>>> SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>> index cdee7737983..a2511ba197c 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
>>>>>> SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> diff --git
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>>> index 24c28803ee7..fdf66bb4429 100644
>>>>>> ---
>>>>>>
>>>>>>
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>>> +++
>>>>>>
>>>>>>
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>>>    {{ if need_new_kbranch == "n": }}
>>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>>>    +{{ if qemuarch != "arm": }}
>>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
>>>>>> SMP
>>>>>> support? (y/n)" default:"y"}}
>>>>>>    {{ if smp == "y": }}
>>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>>>> --
>>>>>> 2.12.0
>>>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await thee
at
> its end"
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c0dfec62d157e0550d658f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br>
<br>
On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield &lt;<a href=3D"mailto:bruce=
.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a>&gt; wro=
te:<br>
&gt;<br>
&gt;<br>
&gt; On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez<br>
&gt; &lt;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" target=3D"_=
blank">alejandro.hernandez@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hey Andy,<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On 05/30/2017 05:32 PM, Andre McCurdy wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:alejandro.hernandez@linux.intel.com" tar=
get=3D"_blank">alejandro.hernandez@linux.intel.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hey Leo,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Nope, this change only applies to qemuARM, the other ARM b=
ased BSPs are<br>
&gt;&gt;&gt;&gt; based on &gt; ARMv6<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Alejandro<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Alex,<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; is this change only applies to qemu arm? I wonder if t=
he native arm<br>
&gt;&gt;&gt;&gt;&gt; arch<br>
&gt;&gt;&gt;&gt;&gt; needs a similar series.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Leo<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez=
 wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; The SMP kernel config presents issues on qemuarm b=
ecause:<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; CONFIG_SMP=3Dy<br>
&gt;&gt;&gt;&gt;&gt;&gt; Dependencies Missing:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0- CPU_V6K or CPU_V7:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0These are selected by se=
tting:<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CONFIG_ARCH_MULTI_V7=3Dy=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0or<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0CONFIG_ARCH_MULTI_V6=3Dy=
<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; But our QEMU + ARM BSPs are based on armv4/v5 henc=
e they are<br>
&gt;&gt;&gt;&gt;&gt;&gt; incompatible with CONFIG_SMP.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Maybe time to think (again) about updating OE&#39;s qemu ARM b=
uilds to ARMv7.<br>
&gt;&gt;<br>
&gt;&gt; I believe qemu has deep issues with newer ARMs, and thats why it&#=
39;s been<br>
&gt;&gt; kept like that.<br>
&gt;<br>
&gt;<br>
&gt; Qemu itself should be fine with the newer ARMs .. but we&#39;ve just t=
argeted a<br>
&gt; lowest common<br>
&gt; denominator (and simple) ARM arch for this target. Since the primary g=
oal<br>
&gt; isn&#39;t testing the ISA or arch<br>
&gt; specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, et=
c).<br>
&gt;<br>
<br></div><div>
I think it will be more effective if we tested most used configuration inst=
ead, it would help a larger community. GCC 7 also dropped armv5 ( the t var=
iants are still supported )</div><div><br></div><div>I would think keep the=
 name qemuarm but use armv7 based machine to emulate would be an option I a=
m sure meta Linaro has some work on this that can be used in oe core=C2=A0<=
/div><div><br>
<br>
&gt; That being said, as long as a newer platform/board was chosen that had=
 full<br>
&gt; disk support<br>
&gt; (something that the qemuarma9 lacks), then it is feasible to do an upd=
ate to<br>
&gt; something<br>
&gt; newer. Alternatively, we could keep the platform the same and update t=
he CPU<br>
&gt; definition .. but<br>
&gt; there&#39;s not a huge value in that.<br>
&gt;<br>
&gt; But if we did bring in something newer, we&#39;d have to drop the exis=
ting<br>
&gt; qemuarm and document that<br>
&gt; we aren&#39;t doing any coverage on the older ARM arches.<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; This patch fixes the script, and avoids offering S=
MP to the user<br>
&gt;&gt;&gt;&gt;&gt;&gt; when the created BSP is based on QEMU + ARM.<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; [YOCTO #11426]<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Signed-off-by: Alejandro Hernandez<br>
&gt;&gt;&gt;&gt;&gt;&gt; &lt;<a href=3D"mailto:alejandro.hernandez@linux.in=
tel.com" target=3D"_blank">alejandro.hernandez@linux.intel.com</a>&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .../target/arch/qemu/recipes-kernel/l=
inux/linux-yocto-dev.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; .../target/arch/qemu/recipes-kernel/linux/linux-yo=
cto-tiny_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; .../target/arch/qemu/recipes-kernel/linux/linux-yo=
cto-tiny_4.10.bbappend | 1<br>
&gt;&gt;&gt;&gt;&gt;&gt; +<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; .../target/arch/qemu/recipes-kernel/linux/linux-yo=
cto-tiny_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; .../target/arch/qemu/recipes-kernel/linux/linux-yo=
cto-tiny_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .../target/arch/qemu/recipes-kernel/l=
inux/linux-yocto_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .../target/arch/qemu/recipes-kernel/l=
inux/linux-yocto_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .../target/arch/qemu/recipes-kernel/l=
inux/linux-yocto_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 .../target/arch/qemu/recipes-kernel/l=
inux/linux-yocto_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 9 files changed, 9 insertions(+)<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-dev.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-dev.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 7e3ce5ba12d..11105ebcc26 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-dev.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-dev.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Would you like<br>
&gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 81392ce38ac..ad77a662682 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Do you need SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 29ad17b2009..9b5f8016841 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Do you need SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index a73b1aa132f..2fc992992cf 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Do you need SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 7d40671fd43..868d12af04b 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Do you need SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index a9fd9ecff5a..13450f47438 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.1.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Would you like<br>
&gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 5873da4245c..e1af4976fc4 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.10.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Would you like<br>
&gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index cdee7737983..a2511ba197c 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.4.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Would you like<br>
&gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; index 24c28803ee7..fdf66bb4429 100644<br>
&gt;&gt;&gt;&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; a/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; +++<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; b/scripts/lib/bsp/substrate/target/arch/qemu/recip=
es-kernel/linux/linux-yocto_4.8.bbappend<br>
&gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=3Dmachine}=
} =3D &quot;{{=3Dmachine}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if need_new_kbranch =3D=3D &quot;n=
&quot;: }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KBRANCH_{{=3Dmachine}}=C2=A0 =3D &quo=
t;{{=3Dexisting_kbranch}}&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 +{{ if qemuarch !=3D &quot;arm&quot;:=
 }}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ input type:&quot;boolean&quot; nam=
e:&quot;smp&quot; prio:&quot;30&quot; msg:&quot;Would you like<br>
&gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
&gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)&quot; default:&quot;y&quot;}}<br>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 {{ if smp =3D=3D &quot;y&quot;: }}<br=
>
&gt;&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 KERNEL_FEATURES_append_{{=3Dmachine}}=
 +=3D &quot; cfg/smp.scc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt;&gt;&gt; 2.12.0<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; --<br>
&gt;&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
&gt;&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinf=
o/yocto</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto<=
/a><br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; &quot;Thou shalt not follow the NULL pointer, for chaos and madness aw=
ait thee at<br>
&gt; its end&quot;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</div>

--94eb2c0dfec62d157e0550d658f6--
