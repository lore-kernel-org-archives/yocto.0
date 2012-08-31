Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAA5AE00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 16:00:57 -0700 (PDT)
Received: by wgx1 with SMTP id 1so2034313wgx.11
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 16:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=rXem8y1GIGfSuYZc0fPxCR0pnH06PQfaYYo8fxXMdEg=;
	b=vybKaIGuI+aucUfZADQo+7izWjEt88sA45uWR/Y6z+LdIm4p9u7qv24uVDG6f4Ryqa
	EGpTkoogY7rNYNL5/YK962eTvP8sjFanCP90k+h6RjbjUwBcJCv2jvGGZiDfBkGLPyKr
	hQFhh0nHw1FEQUOH/jdWnatlh6te9mhCT8FBgbxIk/O2X9+XYLSvU9vnok068JuBaLIS
	Do2NHYfS50l67h1hCHWw9ynpEPtuyHI6ANR8JzSQtKDQqhB6W4HaZGU4P7rv3/mAifH0
	hjvoHm6oxIUWufrszkDnSb7RelDb6mcpCGzXrI03tNOKxi9RsDxlUQuDSY4Pwocz4R3K
	fiSw==
Received: by 10.180.105.130 with SMTP id gm2mr7468415wib.6.1346454056218; Fri,
	31 Aug 2012 16:00:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.42.197 with HTTP; Fri, 31 Aug 2012 16:00:26 -0700 (PDT)
In-Reply-To: <CAMAb8ZNUDQZ_03=VTMGMft1Xggv2=6oELd3X-AnLmkxPr4-b=w@mail.gmail.com>
References: <CAMAb8ZNUDQZ_03=VTMGMft1Xggv2=6oELd3X-AnLmkxPr4-b=w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Aug 2012 16:00:26 -0700
Message-ID: <CAMKF1sqOqo7hcDxPL3RhrfQSipSVBheKYe83uZ=OG1FunvSzQw@mail.gmail.com>
To: Evade Flow <evadeflow@gmail.com>
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
X-List-Received-Date: Fri, 31 Aug 2012 23:01:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi Evade,

Glad it worked for you at first go. Thats quite an achievement for yocto

On Fri, Aug 31, 2012 at 2:58 PM, Evade Flow <evadeflow@gmail.com> wrote:
>
> Now I'm wondering: is there any easy way to optimize for the actual
> target(s) a bit more than the qemuarm MACHINE type does?  The example
> Makefiles for the old project all contain this line:
>
>    CFLAGS = -g -mcpu=arm1136jf-s -O2 -pipe
>
> What's the best way to arrange for that '-mcpu' option to be used by all
> recipes? Also, are there other optimizations I should consider?  I'm
> appending some details about the board in question, as well as the
> complete output from booting it to a prompt. I'd be ever so grateful if
> someone could recommend sensible base settings for this system, and
> explain how to create a Poky 'layer', or 'machine'---or whatever the
> right nomenclature is---to apply these settings.
>
> Sorry for the long post, and thanks in advance for any advice!
>
>
> ----------
>
> ~ # uname -a
> Linux localhost 2.6.36.2-WR3.0.2ax_standard #1 SMP PREEMPT Wed Oct 19 21:58:54
> EEST 2011 armv7l armv7l armv7l GNU/Linux ODBP D1.0.1 (10.11.2011)
>
> ~ # cat /proc/cpuinfo
> Processor       : ARMv7 Processor rev 0 (v7l)
> processor       : 0
> BogoMIPS        : 1795.68
>
> Features        : swp half thumb fastmult vfp edsp vfpv3 vfpv3d16


I am guessing its some sort of Tegra CPU which had FPU but no neon unit
there is rich set of tuning available for arm.

So you would create  configuration file for your machine. May be just
start by making a copy of
qemuarm.conf

then you would select the right tuning

require conf/machine/include/tune-arm926ejs.inc currently select arm926
you might want something more appropriate.

add
conf/machine/include/tune-arm1136jf-s.inc

this will get to what you had in old project

and you can also go a step further and make it more appropriate for
tegra cpu that you have
we dont have default tunes available readily that are good for tegra
but its not hard to create one

Look at

e.g on tune-cortexa9.inc

you would create something similar for your cpu and then select proper
default tunings.

Have fun

-Khem

