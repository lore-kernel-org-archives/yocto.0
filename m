Return-Path: <alejandro.hernandez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0B23E00B01; Wed, 31 May 2017 17:41:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A471E00992
	for <yocto@yoctoproject.org>; Wed, 31 May 2017 17:41:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 May 2017 17:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,277,1493708400"; 
	d="scan'208,217";a="1155143317"
Received: from grayaspa-mobl.amr.corp.intel.com (HELO [10.252.254.172])
	([10.252.254.172])
	by fmsmga001.fm.intel.com with ESMTP; 31 May 2017 17:41:09 -0700
To: Khem Raj <raj.khem@gmail.com>, Bruce Ashfield <bruce.ashfield@gmail.com>
References: <20170530184434.35089-1-alejandro.hernandez@linux.intel.com>
	<1496174354.26945.54.camel@linux.intel.com>
	<d3161d0d-4452-20fb-c9fa-8b234dc1caa5@linux.intel.com>
	<CAJ86T=V0UGAjZOwC54bu0T=PoycdkTabZJJQvRf3_gn0Thnhsg@mail.gmail.com>
	<743ad939-371f-9396-c159-ac5844f9ebda@linux.intel.com>
	<CADkTA4PERsWGmb+Zq4nu4TVeAUdH-JSE4AvJpsJ0MZRcwfHvSA@mail.gmail.com>
	<CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com>
From: Alejandro Hernandez <alejandro.hernandez@linux.intel.com>
Message-ID: <80089ee8-d747-e95c-02f4-72dffc3fd3d2@linux.intel.com>
Date: Wed, 31 May 2017 19:41:08 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 01 Jun 2017 00:41:16 -0000
Content-Type: multipart/alternative;
	boundary="------------E8E647D6C0680E60E6367E18"
Content-Language: en-US

--------------E8E647D6C0680E60E6367E18
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/31/2017 01:46 PM, Khem Raj wrote:
>
>
> On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield 
> <bruce.ashfield@gmail.com <mailto:bruce.ashfield@gmail.com>> wrote:
> >
> >
> > On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez
> > <alejandro.hernandez@linux.intel.com 
> <mailto:alejandro.hernandez@linux.intel.com>> wrote:
> >>
> >> Hey Andy,
> >>
> >>
> >> On 05/30/2017 05:32 PM, Andre McCurdy wrote:
> >>>
> >>> On Tue, May 30, 2017 at 1:12 PM, Alejandro Hernandez
> >>> <alejandro.hernandez@linux.intel.com 
> <mailto:alejandro.hernandez@linux.intel.com>> wrote:
> >>>>
> >>>> Hey Leo,
> >>>>
> >>>> Nope, this change only applies to qemuARM, the other ARM based 
> BSPs are
> >>>> based on > ARMv6
> >>>>
> >>>> Alejandro
> >>>>
> >>>>
> >>>> On 05/30/2017 02:59 PM, Leonardo Sandoval wrote:
> >>>>>
> >>>>> Alex,
> >>>>>
> >>>>> is this change only applies to qemu arm? I wonder if the native arm
> >>>>> arch
> >>>>> needs a similar series.
> >>>>>
> >>>>> Leo
> >>>>>
> >>>>> On Tue, 2017-05-30 at 11:44 -0700, Alejandro Hernandez wrote:
> >>>>>>
> >>>>>> The SMP kernel config presents issues on qemuarm because:
> >>>>>>
> >>>>>> CONFIG_SMP=y
> >>>>>> Dependencies Missing:
> >>>>>>     - CPU_V6K or CPU_V7:
> >>>>>>       These are selected by setting:
> >>>>>>       CONFIG_ARCH_MULTI_V7=y
> >>>>>>       or
> >>>>>>       CONFIG_ARCH_MULTI_V6=y
> >>>>>>
> >>>>>> But our QEMU + ARM BSPs are based on armv4/v5 hence they are
> >>>>>> incompatible with CONFIG_SMP.
> >>>
> >>> Maybe time to think (again) about updating OE's qemu ARM builds to 
> ARMv7.
> >>
> >> I believe qemu has deep issues with newer ARMs, and thats why it's been
> >> kept like that.
> >
> >
> > Qemu itself should be fine with the newer ARMs .. but we've just 
> targeted a
> > lowest common
> > denominator (and simple) ARM arch for this target. Since the primary 
> goal
> > isn't testing the ISA or arch
> > specifics via qemuarm/qemuarm64 (rather, sanity, base arch support, 
> etc).
> >
>
> I think it will be more effective if we tested most used configuration 
> instead, it would help a larger community. GCC 7 also dropped armv5 ( 
> the t variants are still supported )
>
> I would think keep the name qemuarm but use armv7 based machine to 
> emulate would be an option I am sure meta Linaro has some work on this 
> that can be used in oe core
>
>
I would also assume they've got some work on this, it'd be nice to 
contact them and see if this can be done, although I asked on IRC 
several times to see what people thoughts were on if we should upgrade 
and I practically got no feedback.

> > That being said, as long as a newer platform/board was chosen that 
> had full
> > disk support
> > (something that the qemuarma9 lacks), then it is feasible to do an 
> update to
> > something
> > newer. Alternatively, we could keep the platform the same and update 
> the CPU
> > definition .. but
> > there's not a huge value in that.
> >
> > But if we did bring in something newer, we'd have to drop the existing
> > qemuarm and document that
> > we aren't doing any coverage on the older ARM arches.
> >
> > Bruce
> >
> >>
> >>
> >>>
> >>>>>> This patch fixes the script, and avoids offering SMP to the user
> >>>>>> when the created BSP is based on QEMU + ARM.
> >>>>>>
> >>>>>
> >>>>>> [YOCTO #11426]
> >>>>>>
> >>>>>> Signed-off-by: Alejandro Hernandez
> >>>>>> <alejandro.hernandez@linux.intel.com 
> <mailto:alejandro.hernandez@linux.intel.com>>
> >>>>>> ---
> >>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
> >>>>>> | 1 +
> >>>>>>
> >>>>>> 
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> >>>>>> | 1 +
> >>>>>>
> >>>>>>
> >>>>>> 
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend 
> | 1
> >>>>>> +
> >>>>>>
> >>>>>> 
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> >>>>>> | 1 +
> >>>>>>
> >>>>>> 
> .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> >>>>>> | 1 +
> >>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> >>>>>> | 1 +
> >>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
> >>>>>> | 1 +
> >>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> >>>>>> | 1 +
> >>>>>> .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> >>>>>> | 1 +
> >>>>>>    9 files changed, 9 insertions(+)
> >>>>>>
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
> >>>>>> index 7e3ce5ba12d..11105ebcc26 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
> >>>>>> SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> >>>>>> index 81392ce38ac..ad77a662682 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you 
> need SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
> >>>>>> index 29ad17b2009..9b5f8016841 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you 
> need SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> >>>>>> index a73b1aa132f..2fc992992cf 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you 
> need SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> >>>>>> index 7d40671fd43..868d12af04b 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Do you 
> need SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> >>>>>> index a9fd9ecff5a..13450f47438 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
> >>>>>> SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
> >>>>>> index 5873da4245c..e1af4976fc4 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
> >>>>>> SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> >>>>>> index cdee7737983..a2511ba197c 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
> >>>>>> SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> diff --git
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> >>>>>> index 24c28803ee7..fdf66bb4429 100644
> >>>>>> ---
> >>>>>>
> >>>>>> 
> a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> >>>>>> +++
> >>>>>>
> >>>>>> 
> b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend
> >>>>>> @@ -45,6 +45,7 @@ COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"
> >>>>>>    {{ if need_new_kbranch == "n": }}
> >>>>>>    KBRANCH_{{=machine}}  = "{{=existing_kbranch}}"
> >>>>>>    +{{ if qemuarch != "arm": }}
> >>>>>>    {{ input type:"boolean" name:"smp" prio:"30" msg:"Would you like
> >>>>>> SMP
> >>>>>> support? (y/n)" default:"y"}}
> >>>>>>    {{ if smp == "y": }}
> >>>>>>    KERNEL_FEATURES_append_{{=machine}} += " cfg/smp.scc"
> >>>>>> --
> >>>>>> 2.12.0
> >>>>>>
> >>>> --
> >>>> _______________________________________________
> >>>> yocto mailing list
> >>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >>>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> >
> >
> > --
> > "Thou shalt not follow the NULL pointer, for chaos and madness await 
> thee at
> > its end"
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > https://lists.yoctoproject.org/listinfo/yocto
> >


--------------E8E647D6C0680E60E6367E18
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    On 05/31/2017 01:46 PM, Khem Raj wrote:<br>
    <blockquote type="cite"
cite="mid:CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com">
      <div><br>
        <br>
        On Tue, May 30, 2017 at 6:15 PM, Bruce Ashfield &lt;<a
          href="mailto:bruce.ashfield@gmail.com" target="_blank"
          moz-do-not-send="true">bruce.ashfield@gmail.com</a>&gt; wrote:<br>
        &gt;<br>
        &gt;<br>
        &gt; On Tue, May 30, 2017 at 6:52 PM, Alejandro Hernandez<br>
        &gt; &lt;<a href="mailto:alejandro.hernandez@linux.intel.com"
          target="_blank" moz-do-not-send="true">alejandro.hernandez@linux.intel.com</a>&gt;
        wrote:<br>
        &gt;&gt;<br>
        &gt;&gt; Hey Andy,<br>
        &gt;&gt;<br>
        &gt;&gt;<br>
        &gt;&gt; On 05/30/2017 05:32 PM, Andre McCurdy wrote:<br>
        &gt;&gt;&gt;<br>
        &gt;&gt;&gt; On Tue, May 30, 2017 at 1:12 PM, Alejandro
        Hernandez<br>
        &gt;&gt;&gt; &lt;<a
          href="mailto:alejandro.hernandez@linux.intel.com"
          target="_blank" moz-do-not-send="true">alejandro.hernandez@linux.intel.com</a>&gt;
        wrote:<br>
        &gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt; Hey Leo,<br>
        &gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt; Nope, this change only applies to qemuARM, the
        other ARM based BSPs are<br>
        &gt;&gt;&gt;&gt; based on &gt; ARMv6<br>
        &gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt; Alejandro<br>
        &gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt; On 05/30/2017 02:59 PM, Leonardo Sandoval
        wrote:<br>
        &gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt; Alex,<br>
        &gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt; is this change only applies to qemu arm? I
        wonder if the native arm<br>
        &gt;&gt;&gt;&gt;&gt; arch<br>
        &gt;&gt;&gt;&gt;&gt; needs a similar series.<br>
        &gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt; Leo<br>
        &gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt; On Tue, 2017-05-30 at 11:44 -0700,
        Alejandro Hernandez wrote:<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; The SMP kernel config presents issues
        on qemuarm because:<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; CONFIG_SMP=y<br>
        &gt;&gt;&gt;&gt;&gt;&gt; Dependencies Missing:<br>
        &gt;&gt;&gt;&gt;&gt;&gt;     - CPU_V6K or CPU_V7:<br>
        &gt;&gt;&gt;&gt;&gt;&gt;       These are selected by setting:<br>
        &gt;&gt;&gt;&gt;&gt;&gt;       CONFIG_ARCH_MULTI_V7=y<br>
        &gt;&gt;&gt;&gt;&gt;&gt;       or<br>
        &gt;&gt;&gt;&gt;&gt;&gt;       CONFIG_ARCH_MULTI_V6=y<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; But our QEMU + ARM BSPs are based on
        armv4/v5 hence they are<br>
        &gt;&gt;&gt;&gt;&gt;&gt; incompatible with CONFIG_SMP.<br>
        &gt;&gt;&gt;<br>
        &gt;&gt;&gt; Maybe time to think (again) about updating OE's
        qemu ARM builds to ARMv7.<br>
        &gt;&gt;<br>
        &gt;&gt; I believe qemu has deep issues with newer ARMs, and
        thats why it's been<br>
        &gt;&gt; kept like that.<br>
        &gt;<br>
        &gt;<br>
        &gt; Qemu itself should be fine with the newer ARMs .. but we've
        just targeted a<br>
        &gt; lowest common<br>
        &gt; denominator (and simple) ARM arch for this target. Since
        the primary goal<br>
        &gt; isn't testing the ISA or arch<br>
        &gt; specifics via qemuarm/qemuarm64 (rather, sanity, base arch
        support, etc).<br>
        &gt;<br>
        <br>
      </div>
      <div>
        I think it will be more effective if we tested most used
        configuration instead, it would help a larger community. GCC 7
        also dropped armv5 ( the t variants are still supported )</div>
      <div><br>
      </div>
      <div>I would think keep the name qemuarm but use armv7 based
        machine to emulate would be an option I am sure meta Linaro has
        some work on this that can be used in oe core </div>
      <div><br>
        <br>
      </div>
    </blockquote>
    I would also assume they've got some work on this, it'd be nice to
    contact them and see if this can be done, although I asked on IRC
    several times to see what people thoughts were on if we should
    upgrade and I practically got no feedback.<br>
    <br>
    <blockquote type="cite"
cite="mid:CAMKF1srefrF0jZMm2hPUZ_q7TcfuxmMuRiVXcPVDsZNu51V88Q@mail.gmail.com">
      <div>
        &gt; That being said, as long as a newer platform/board was
        chosen that had full<br>
        &gt; disk support<br>
        &gt; (something that the qemuarma9 lacks), then it is feasible
        to do an update to<br>
        &gt; something<br>
        &gt; newer. Alternatively, we could keep the platform the same
        and update the CPU<br>
        &gt; definition .. but<br>
        &gt; there's not a huge value in that.<br>
        &gt;<br>
        &gt; But if we did bring in something newer, we'd have to drop
        the existing<br>
        &gt; qemuarm and document that<br>
        &gt; we aren't doing any coverage on the older ARM arches.<br>
        &gt;<br>
        &gt; Bruce<br>
        &gt;<br>
        &gt;&gt;<br>
        &gt;&gt;<br>
        &gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; This patch fixes the script, and avoids
        offering SMP to the user<br>
        &gt;&gt;&gt;&gt;&gt;&gt; when the created BSP is based on QEMU +
        ARM.<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; [YOCTO #11426]<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; Signed-off-by: Alejandro Hernandez<br>
        &gt;&gt;&gt;&gt;&gt;&gt; &lt;<a
          href="mailto:alejandro.hernandez@linux.intel.com"
          target="_blank" moz-do-not-send="true">alejandro.hernandez@linux.intel.com</a>&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;   
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend
        | 1<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;   
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;   
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;   
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;   
        .../target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; | 1 +<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    9 files changed, 9 insertions(+)<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 7e3ce5ba12d..11105ebcc26 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-dev.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Would you like<br>
        &gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 81392ce38ac..ad77a662682 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Do you need SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 29ad17b2009..9b5f8016841 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Do you need SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index a73b1aa132f..2fc992992cf 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Do you need SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 7d40671fd43..868d12af04b 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto-tiny_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Do you need SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index a9fd9ecff5a..13450f47438 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.1.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Would you like<br>
        &gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 5873da4245c..e1af4976fc4 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.10.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Would you like<br>
        &gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index cdee7737983..a2511ba197c 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.4.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Would you like<br>
        &gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; diff --git<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; index 24c28803ee7..fdf66bb4429 100644<br>
        &gt;&gt;&gt;&gt;&gt;&gt; ---<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
a/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; +++<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt;&gt;&gt;
b/scripts/lib/bsp/substrate/target/arch/qemu/recipes-kernel/linux/linux-yocto_4.8.bbappend<br>
        &gt;&gt;&gt;&gt;&gt;&gt; @@ -45,6 +45,7 @@
        COMPATIBLE_MACHINE_{{=machine}} = "{{=machine}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if need_new_kbranch == "n": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KBRANCH_{{=machine}}  =
        "{{=existing_kbranch}}"<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    +{{ if qemuarch != "arm": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ input type:"boolean" name:"smp"
        prio:"30" msg:"Would you like<br>
        &gt;&gt;&gt;&gt;&gt;&gt; SMP<br>
        &gt;&gt;&gt;&gt;&gt;&gt; support? (y/n)" default:"y"}}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    {{ if smp == "y": }}<br>
        &gt;&gt;&gt;&gt;&gt;&gt;    KERNEL_FEATURES_append_{{=machine}}
        += " cfg/smp.scc"<br>
        &gt;&gt;&gt;&gt;&gt;&gt; --<br>
        &gt;&gt;&gt;&gt;&gt;&gt; 2.12.0<br>
        &gt;&gt;&gt;&gt;&gt;&gt;<br>
        &gt;&gt;&gt;&gt; --<br>
        &gt;&gt;&gt;&gt; _______________________________________________<br>
        &gt;&gt;&gt;&gt; yocto mailing list<br>
        &gt;&gt;&gt;&gt; <a href="mailto:yocto@yoctoproject.org"
          target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
        &gt;&gt;&gt;&gt; <a
          href="https://lists.yoctoproject.org/listinfo/yocto"
          rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        &gt;&gt;<br>
        &gt;&gt;<br>
        &gt;&gt; --<br>
        &gt;&gt; _______________________________________________<br>
        &gt;&gt; yocto mailing list<br>
        &gt;&gt; <a href="mailto:yocto@yoctoproject.org"
          target="_blank" moz-do-not-send="true">yocto@yoctoproject.org</a><br>
        &gt;&gt; <a
          href="https://lists.yoctoproject.org/listinfo/yocto"
          rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        &gt;<br>
        &gt;<br>
        &gt;<br>
        &gt;<br>
        &gt; --<br>
        &gt; "Thou shalt not follow the NULL pointer, for chaos and
        madness await thee at<br>
        &gt; its end"<br>
        &gt;<br>
        &gt; --<br>
        &gt; _______________________________________________<br>
        &gt; yocto mailing list<br>
        &gt; <a href="mailto:yocto@yoctoproject.org" target="_blank"
          moz-do-not-send="true">yocto@yoctoproject.org</a><br>
        &gt; <a href="https://lists.yoctoproject.org/listinfo/yocto"
          rel="noreferrer" target="_blank" moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
        &gt;<br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------E8E647D6C0680E60E6367E18--
