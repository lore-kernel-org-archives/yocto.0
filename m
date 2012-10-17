Return-Path: <evadeflow@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 277E6E0045D
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:58:05 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so9810881oag.35
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2012 14:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=y2e9cwWoWb+ygxO94x+8gufVR/baLMsSBimfi1SWLpI=;
	b=KmjkJwgo9FTZHCRB73wa66Hi1m3e1ucmRFF0+VqknbemRzhm+uBVNntQq5mIeSqkFq
	1vxse4yZJH2V5pi5WqumBORIdw3JJBvv6KHQMa7mP0TTo45eyxmhBYsb1eB3SLBMbKvJ
	F3SbDTAgHKXCr7JG4LCsLaNDcV1pLwaYkzfcWBmmdBmAe7NawdbKk62YQo/bDit5IgT+
	igEImVXKZZq1nnSxJ1ZITzJjw9Ijp0weeC9pfykpDXM7T/AvuAZ0kRBGo3+rDOiYoeNU
	vs9NeBvGGImxN8id2YZLEymwRPWCVkcc7OdpfxeDYYwJ478SeqzZFoHU17I3YxiYTOHS
	+KLw==
MIME-Version: 1.0
Received: by 10.60.171.114 with SMTP id at18mr16329108oec.24.1350511082526;
	Wed, 17 Oct 2012 14:58:02 -0700 (PDT)
Received: by 10.76.167.165 with HTTP; Wed, 17 Oct 2012 14:58:02 -0700 (PDT)
In-Reply-To: <CAMKF1sqOqo7hcDxPL3RhrfQSipSVBheKYe83uZ=OG1FunvSzQw@mail.gmail.com>
References: <CAMAb8ZNUDQZ_03=VTMGMft1Xggv2=6oELd3X-AnLmkxPr4-b=w@mail.gmail.com>
	<CAMKF1sqOqo7hcDxPL3RhrfQSipSVBheKYe83uZ=OG1FunvSzQw@mail.gmail.com>
Date: Wed, 17 Oct 2012 17:58:02 -0400
Message-ID: <CAMAb8ZNyfVqYCu94L+ZvFp2Xvajhozb5xJPthz9TtLwTKJChxg@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Tune qemuarm settings and build everything except the kernel?
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
X-List-Received-Date: Wed, 17 Oct 2012 21:58:05 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, again---I thought we were switching h/w platforms, but it turns out
we'll be sticking with this system for a bit longer.

> I am guessing its some sort of Tegra CPU which had FPU but no neon
> unit...

Right, it's a Tegra 2 T20, which lacks the NEON extension.

> we dont have default tunes available readily that are good for tegra
> but its not hard to create one

Erm. :-% I guess 'hard' is relative. Could you provide an extra hint
about this? Do you mean I should make a copy of 'tune-cortexa9.inc' and
change DEFAULTTUNE from 'cortexa9-neon' to 'cortexa9'? Or, is there a
way to include the existing file and override the default?

Also, I'm not sure what do to with the 'VFP Tunes'. I found this thread

  - http://www.mail-archive.com/openembedded-core@lists.openembedded.org/msg09497.html

which seems to talk about some of these issues. I think I need to add
'-mfpu=vfpv3-d16' to the compiler flags, but, as this is the first
'real' thing I've tried to do with bitbake, I'm unsure how to accomplish
this...



On Fri, Aug 31, 2012 at 7:00 PM, Khem Raj <raj.khem@gmail.com> wrote:
> Hi Evade,
>
> Glad it worked for you at first go. Thats quite an achievement for yocto
>
> On Fri, Aug 31, 2012 at 2:58 PM, Evade Flow <evadeflow@gmail.com> wrote:
>>
>> Now I'm wondering: is there any easy way to optimize for the actual
>> target(s) a bit more than the qemuarm MACHINE type does?  The example
>> Makefiles for the old project all contain this line:
>>
>>    CFLAGS = -g -mcpu=arm1136jf-s -O2 -pipe
>>
>> What's the best way to arrange for that '-mcpu' option to be used by all
>> recipes? Also, are there other optimizations I should consider?  I'm
>> appending some details about the board in question, as well as the
>> complete output from booting it to a prompt. I'd be ever so grateful if
>> someone could recommend sensible base settings for this system, and
>> explain how to create a Poky 'layer', or 'machine'---or whatever the
>> right nomenclature is---to apply these settings.
>>
>> Sorry for the long post, and thanks in advance for any advice!
>>
>>
>> ----------
>>
>> ~ # uname -a
>> Linux localhost 2.6.36.2-WR3.0.2ax_standard #1 SMP PREEMPT Wed Oct 19 21:58:54
>> EEST 2011 armv7l armv7l armv7l GNU/Linux ODBP D1.0.1 (10.11.2011)
>>
>> ~ # cat /proc/cpuinfo
>> Processor       : ARMv7 Processor rev 0 (v7l)
>> processor       : 0
>> BogoMIPS        : 1795.68
>>
>> Features        : swp half thumb fastmult vfp edsp vfpv3 vfpv3d16
>
>
> I am guessing its some sort of Tegra CPU which had FPU but no neon unit
> there is rich set of tuning available for arm.
>
> So you would create  configuration file for your machine. May be just
> start by making a copy of
> qemuarm.conf
>
> then you would select the right tuning
>
> require conf/machine/include/tune-arm926ejs.inc currently select arm926
> you might want something more appropriate.
>
> add
> conf/machine/include/tune-arm1136jf-s.inc
>
> this will get to what you had in old project
>
> and you can also go a step further and make it more appropriate for
> tegra cpu that you have
> we dont have default tunes available readily that are good for tegra
> but its not hard to create one
>
> Look at
>
> e.g on tune-cortexa9.inc
>
> you would create something similar for your cpu and then select proper
> default tunings.
>
> Have fun
>
> -Khem

