Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8334AE00B47; Tue, 30 May 2017 15:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 276D4E00B31
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 15:32:52 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id k15so438677wmh.3
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 15:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/DO7aq8v2AEeoJyvPLWgpnpwaaTRYtNnvu3pgtO5SyQ=;
	b=JWhOOTpCJ5+ERtLLKcPT6o3oT2Gr2Erv03fbIkqJNJmnbJq3AzKkrYR8wYy7Q7xwRo
	4+4LrP/U1LPyalbYywVVvh5LKZ0U7VgAcbMP46rGHKwpiXPNARjcmZFu2NesSXKJ7nf0
	Zl6EdV29cGBmxxYESY/NPjGYtsNa1G3rSEym23GIZqWr1xa1PJE0M1BxZbu1dPvbfKoF
	Mdqw4G1KG0vEPQbNdDVAe+ml1PU+0cL+Acxk0dVv7AF3fse13WKxToEqIq54ZhuOkReF
	hWy1BLcFhlpAhzmCdxLt44lYluBnFxNLUFSN7ywYMjK9MqB+AV//ZQXRiSbhHgepBmXu
	YXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/DO7aq8v2AEeoJyvPLWgpnpwaaTRYtNnvu3pgtO5SyQ=;
	b=IlOGOMCoLdvoP2mY2ZTirKIpFzwu7rfar3Eu6ruoU6YHYaKkvxipYAFvbfV8LAIk7i
	hEs3XWWIFL+b5izVI8RYvmLbx0OubUdB2uaUuhd4FQGaS61ZklABlkhJEV4LFi3TZh6X
	vdvJI37s5e7lvvc+simTVz0t+fH4pYkTaz9ATdsY8/aHUCWDggZMwgA7Bh+fzY5N3OSf
	TYwuXKXSfxN/tYLd61X/ld7gWTatB5y/18p0PIaGEFt4whoK2L2iLaaSczotohwce6BQ
	3su82fIf27Nqyu0tsGsIndrn5syJGgKNa4uYeHhqLzyG9ShHrI4Ht1hrtcDpF7/Edbdh
	OF+g==
X-Gm-Message-State: AODbwcA/5j7OG5e3kgmCrJhRzZgVz5YKxt5u2gdk6aFJxk6lPTNKXAKL
	/lMfiSS9oeW7i7WXqyee1M/4BMCy+Q==
X-Received: by 10.28.14.17 with SMTP id 17mr3290008wmo.95.1496183571031; Tue,
	30 May 2017 15:32:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.148 with HTTP; Tue, 30 May 2017 15:32:50 -0700 (PDT)
In-Reply-To: <d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 30 May 2017 15:32:50 -0700
Message-ID: <CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 May 2017 22:32:54 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
<alejandro.hernandez@linux.intel.com> wrote:
> Hey Leo,
>
> Nope, this change only applies to qemuARM, the other ARM based BSPs are
> based on > ARMv6
>
> Alejandro
>
>
> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>
>> Alex,
>>
>> is this change only applies to qemu arm? I wonder if the native arm arch
>> needs a similar series.
>>
>> Leo
>>
>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>
>>> The SMP kernel config presents issues on qemuarm because:
>>>
>>> CONFIG_SMP=y
>>> Dependencies Missing:
>>>    - CPU_V6K or CPU_V7:
>>>      These are selected by setting:
>>>      CONFIG_ARCH_MULTI_V7=y
>>>      or
>>>      CONFIG_ARCH_MULTI_V6=y
>>>
>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>> incompatible with CONFIG_SMP.

Maybe time to think (again) about updating OE's qemu ARM builds to ARMv7.

>>> This patch fixes the script, and avoids offering SMP to the user
>>> when the created BSP is based on QEMU + ARM.
>>>
>>
>>
>>> [YOCTO #11426]
>>>
>>> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
>>> ---
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>> | 1 +
>>>
>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend | 1
>>> +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>> | 1 +
>>>   .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>> | 1 +
>>>   9 files changed, 9 insertions(+)
>>>
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>> index 7e3ce5ba12d..11105ebcc26 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>> index 81392ce38ac..ad77a662682 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>> index 29ad17b2009..9b5f8016841 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>> index a73b1aa132f..2fc992992cf 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>> index 7d40671fd43..868d12af04b 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>> index a9fd9ecff5a..13450f47438 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>> index 5873da4245c..e1af4976fc4 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>> index cdee7737983..a2511ba197c 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> diff --git
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>> index 24c28803ee7..fdf66bb4429 100644
>>> ---
>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>> +++
>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>   {{ if need_new_kbranch == "n": }}
>>>   KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>   +{{ if qemuarch != "arm": }}
>>>   {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>> support? (y/n)" default:"y"}}
>>>   {{ if smp == "y": }}
>>>   KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>> --
>>> 2.12.0
>>>
>>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

