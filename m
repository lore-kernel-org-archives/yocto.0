Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5F27E00B47; Tue, 30 May 2017 15:52:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D916E00B31
	for <yocto@yoctoproject.org>; Tue, 30 May 2017 15:52:05 -0700 (PDT)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 May 2017 15:52:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,420,1491289200"; d="scan'208";a="108900298"
Received: from lrperezc-mobl1.amr.corp.intel.com (HELO [10.252.250.132])
	([10.252.250.132])
	by fmsmga006.fm.intel.com with ESMTP; 30 May 2017 15:52:02 -0700
To: Andre McCurdy <armccurdy@gmail.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
Date: Tue, 30 May 2017 17:52:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 May 2017 22:52:09 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hey Andy,


On 05/30/2017 05:32 PM, Andre McCurdy wrote:
> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
> <alejandro.hernandez@linux.intel.com> wrote:
>> Hey Leo,
>>
>> Nope, this change only applies to qemuARM, the other ARM based BSPs are
>> based on > ARMv6
>>
>> Alejandro
>>
>>
>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
>>> Alex,
>>>
>>> is this change only applies to qemu arm? I wonder if the native arm arch
>>> needs a similar series.
>>>
>>> Leo
>>>
>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
>>>> The SMP kernel config presents issues on qemuarm because:
>>>>
>>>> CONFIG_SMP=y
>>>> Dependencies Missing:
>>>>     - CPU_V6K or CPU_V7:
>>>>       These are selected by setting:
>>>>       CONFIG_ARCH_MULTI_V7=y
>>>>       or
>>>>       CONFIG_ARCH_MULTI_V6=y
>>>>
>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
>>>> incompatible with CONFIG_SMP.
> Maybe time to think (again) about updating OE's qemu ARM builds to ARMv7.
I believe qemu has deep issues with newer ARMs, and thats why it's been 
kept like that.
>
>>>> This patch fixes the script, and avoids offering SMP to the user
>>>> when the created BSP is based on QEMU + ARM.
>>>>
>>>
>>>> [YOCTO #11426]
>>>>
>>>> Signed-off-by: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
>>>> ---
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>> | 1 +
>>>>
>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend | 1
>>>> +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>> | 1 +
>>>>    .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>> | 1 +
>>>>    9 files changed, 9 insertions(+)
>>>>
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>> index 7e3ce5ba12d..11105ebcc26 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>> index 81392ce38ac..ad77a662682 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>> index 29ad17b2009..9b5f8016841 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>> index a73b1aa132f..2fc992992cf 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>> index 7d40671fd43..868d12af04b 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you need SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>> index a9fd9ecff5a..13450f47438 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>> index 5873da4245c..e1af4976fc4 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>> index cdee7737983..a2511ba197c 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> diff --git
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>> index 24c28803ee7..fdf66bb4429 100644
>>>> ---
>>>> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>> +++
>>>> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
>>>>    {{ if need_new_kbranch == "n": }}
>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
>>>>    +{{ if qemuarch != "arm": }}
>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like SMP
>>>> support? (y/n)" default:"y"}}
>>>>    {{ if smp == "y": }}
>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
>>>> --
>>>> 2.12.0
>>>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


