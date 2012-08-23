Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B8DBE002A5
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:18:29 -0700 (PDT)
Received: by bkty5 with SMTP id y5so329373bkt.35
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2012 09:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=RhTNpUYalzYhdxrJ0Y0mQikUdYE39Cby3fMecojNWdw=;
	b=OJQ2aX0ZscUgs2KLmIXaw9dwOqw6u4gGkWvbGU3DG61FgP+MKpG7ReqB6XBYKI94ta
	XmmYKZITEPO27S+u0xSFiYfu8AmjhLI047s+NkbffY+w16qf43+51uTmhHAu6DKrgExx
	mfF54bY8afiQkOMEtrxEa8uUvFnnZUSuMovbI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent:x-gm-message-state;
	bh=RhTNpUYalzYhdxrJ0Y0mQikUdYE39Cby3fMecojNWdw=;
	b=N2mPhtq0G+98cz6esm8HJVbjdd43hz5VdiOlCt9rMfi+a7i3dujgkBeonFmYHHwdM+
	mEwjqKPGGNLXdUYg0SAzZDIsFr4AMxjhdx/NYqD0QJ8n9ueg9W2ujey/tRxS5rL2zRcA
	OIGtFnEGIcs2dUBGPEnV3zegS9dl94yWM6cLLdbXtD7LFCOzIlIn6YSOk8uf+wCuRa8l
	5NfpFcRVGoktDvQuIqUyhogrlzpPlXpem3g5p8cksCnaCP6M2KlmCuj6sFNIrOFbJqCc
	qwEtrDggWNGK0O8PCiozdC7Cy40QqN/JcLxJO08eB4mVaAm98yWgZRomxZ98ZRtf+u4T
	28Sg==
Received: by 10.204.136.205 with SMTP id s13mr800980bkt.22.1345738707979;
	Thu, 23 Aug 2012 09:18:27 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id 14sm4974108bkw.15.2012.08.23.09.18.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 23 Aug 2012 09:18:26 -0700 (PDT)
Date: Thu, 23 Aug 2012 18:18:22 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120823163126.ddbd0076-38df-4053-a9ae-7fa318879d54.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120823151259.f1550eb3-e33f-4100-93dc-f39eab90e4b1.mhubig@imko.de>
	<503630A3.90606@windriver.com>
MIME-Version: 1.0
In-Reply-To: <503630A3.90606@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQnXkynGa31Zgc1j8MOf0BjHMrcTWcRJeF2js5YGt4kKNUxZLj1O3Uk4w7p7VTxEjRBHC3oa
Subject: Re: 1.3_M3 do_kernel_config failes, config_frag.txt is crippled.
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
X-List-Received-Date: Thu, 23 Aug 2012 16:18:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu, Aug 23, 2012 at 09:31:15AM -0400, Bruce Ashfield wrote:
> On 12-08-23 09:24 AM, Markus Hubig wrote:

<snipp>

> >And again a bit deeper I found that the file
> >
> >| ./meta/cfg/standard/portuxg20/config_frag.txt
> >
> >is somewhat crippled:
> >
> >| ...
> >| /kernel-cache/ktypes/standard/standard.cfg
> >| /kernel-cache/cfg/devtmpfs.cfg
> >| /kernel-cache/cfg/debugfs.cfg
> >| portuxg20
> >   ^^^^^^^^^

That was a typo. Fixed!

> >| hardware.cfg
> >| non-hardware.cfg

These files were living in "meta-stamp9g20/recipes-kernel/files"

> >| /kernel-cache/features/usb-net/usb-net.cfg

> >| portuxg20
> >| hardware.cfg
> >| non-hardware.cfg
> >| /kernel-cache/features/usb-net/usb-net.cfg

Here we have the same thing a second time.

> >| /hardware.cfg
> >| /non-hardware.cfg
> >| /portuxg20/portuxg20.cfg

And a third time, but with a correct path.

After changing my BSP-Kernel layout from:

| ▾ recipes-kernel/
|   ▾ linux/
|     ▾ files/
|         hardware.cfg
|         non-hardware.cfg
|       ▾ portuxg20/
|           portuxg20-preempt-rt.scc
|           portuxg20-standard.scc
|           portuxg20.cfg
|           portuxg20.scc
|       ▾ stamp9g20/
|           stamp9g20-preempt-rt.scc
|           stamp9g20-standard.scc
|           stamp9g20.cfg
|           stamp9g20.scc

To this:

| ▾ recipes-kernel/
|   ▾ linux/
|     ▾ files/
|       ▾ portuxg20/
|           hardware.cfg
|           non-hardware.cfg
|           portuxg20-preempt-rt.scc
|           portuxg20-standard.scc
|           portuxg20.cfg
|           portuxg20.scc
|       ▾ stamp9g20/
|           hardware.cfg
|           non-hardware.cfg
|           stamp9g20-preempt-rt.scc
|           stamp9g20-standard.scc
|           stamp9g20.cfg
|           stamp9g20.scc

and using

| SRC_URI_append_portuxg20 = "\
|         file://portuxg20-standard.scc   \
|         file://portuxg20-preempt-rt.scc \
|         file://portuxg20.scc            \
|         file://portuxg20.cfg            \
|         file://hardware.cfg             \
|         file://non-hardware.cfg         \
|         "
| 
| SRC_URI_append_stamp9g20 = "
|         file://stamp9g20-standard.scc   \
|         file://stamp9g20-preempt-rt.scc \
|         file://stamp9g20.scc            \
|         file://stamp9g20.cfg            \
|         file://hardware.cfg             \
|         file://non-hardware.cfg         \
|         "

instead of this:

| SRC_URI += "\
|         file://hardware.cfg             \
|         file://non-hardware.cfg         \
|         "
|
| SRC_URI_append_portuxg20 = "\
|         file://portuxg20-standard.scc   \
|         file://portuxg20-preempt-rt.scc \
|         file://portuxg20.scc            \
|         file://portuxg20.cfg            \
|         "
| 
| SRC_URI_append_stamp9g20 = "
|         file://stamp9g20-standard.scc   \
|         file://stamp9g20-preempt-rt.scc \
|         file://stamp9g20.scc            \
|         file://stamp9g20.cfg            \
|         "

I get this config_frag.txt but at the cost of duplicating the
hardware.cfg and non-hardware.cfg files.

| /kernel-cache/ktypes/base/base.cfg
| /kernel-cache/features/kgdb/kgdb.cfg
| /kernel-cache/features/lttng/lttng.cfg
| /kernel-cache/features/blktrace/blktrace.cfg
| /kernel-cache/features/systemtap/systemtap.cfg
| /kernel-cache/features/utrace/utrace.cfg
| /kernel-cache/arch/arm/arm.cfg
| /kernel-cache/features/hrt/hrt.cfg
| /kernel-cache/features/ftrace/ftrace.cfg
| /kernel-cache/features/unionfs/unionfs.cfg
| /kernel-cache/features/cgroups/cgroups.cfg
| /kernel-cache/features/namespaces/namespaces.cfg
| /kernel-cache/features/namespaces/namespaces-experimental.cfg
| /kernel-cache/features/fuse/fuse.cfg
| /kernel-cache/ktypes/standard/standard.cfg
| /kernel-cache/cfg/devtmpfs.cfg
| /kernel-cache/cfg/debugfs.cfg
| /portuxg20/portuxg20.cfg
| /portuxg20/hardware.cfg
| /portuxg20/non-hardware.cfg
| /kernel-cache/features/usb-net/usb-net.cfg
| /portuxg20/portuxg20.cfg
| /portuxg20/hardware.cfg
| /portuxg20/non-hardware.cfg
| /kernel-cache/features/usb-net/usb-net.cfg
| /kernel-cache/features/netfilter/netfilter.cfg
| /kernel-cache/features/taskstats/taskstats.cfg

Whitch looks way better! And now I get this config check again:

| This BSP sets 2 invalid/obsolete kernel options.
| These config options are not offered anywhere within this kernel.
| The full list can be found in your kernel src dir at:
| meta/cfg/standard/portuxg20/invalid.cfg
| 
| This BSP sets 11 kernel options that are possibly non-hardware related.
| The full list can be found in your kernel src dir at:
| meta/cfg/standard/portuxg20/specified_non_hdw.cfg
| 
| WARNING: There were 1 hardware options requested that do not
|          have a corresponding value present in the final ".config" file.
|          This probably means you aren't getting the config you wanted.
| The full list can be found in your kernel src dir at:
| meta/cfg/standard/portuxg20/mismatch.cfg
| 
| Waiting a second to make sure you get a chance to see this...

Surprisingly if I remove the *.cfg files from the SRC_URI

| SRC_URI_append_portuxg20 = "\
|         file://portuxg20-standard.scc   \
|         file://portuxg20-preempt-rt.scc \
|         file://portuxg20.scc            \
|         "
| 
| SRC_URI_append_stamp9g20 = "
|         file://stamp9g20-standard.scc   \
|         file://stamp9g20-preempt-rt.scc \
|         file://stamp9g20.scc            \

it also works ...

Some more tests showed that if I make a flat layout like
this:

| ▾ recipes-kernel/
|   ▾ linux/
|     ▾ files/
|         hardware.cfg
|         non-hardware.cfg
|         portuxg20-preempt-rt.scc
|         portuxg20-standard.scc
|         portuxg20.cfg
|         portuxg20.scc
|         stamp9g20-preempt-rt.scc
|         stamp9g20-standard.scc
|         stamp9g20.cfg
|         stamp9g20.scc

and change my linux-yocto_3.2.bbappend file so it just includes
the *.scc files

| FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
| 
| PR := "${PR}.1"
| 
| KEEPUIMAGE = "no"
| 
| COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
| KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
| KMACHINE_stamp9g20  = "stamp9g20"
| 
| COMPATIBLE_MACHINE_portuxg20 = "portuxg20"
| KBRANCH_portuxg20  = "standard/default/arm-versatile-926ejs"
| KMACHINE_portuxg20  = "portuxg20"
| 
| SRC_URI_append_portuxg20 = "\
|         file://portuxg20-standard.scc   \
|         file://portuxg20-preempt-rt.scc \
|         file://portuxg20.scc            \
|         "
| 
| SRC_URI_append_stamp9g20 = "\
|         file://stamp9g20-standard.scc   \
|         file://stamp9g20-preempt-rt.scc \
|         file://stamp9g20.scc            \
|         "

everything works. But it's a bit confusing! 

To summarize my expirience a bit:

All files in "FILESEXTRAPATHS_prepend" get copied to "meta/cfg/files",
but only the *.scc files I include into "SRC_URI" will be used to make
the kernel config file.

> Were you using yocto-bsp to create the BSP framework?

Yes but later I changed everything ... 

> I did some test builds of the layer you previously sent me, and I didn't
> reproduce the problem, but this is the same thing that you had seen last
> week.

Strange ...

> Do you have an updated layer that I can try against master ?

Yes in some hours, i'll send you a ping if I included my new changes.

Cheers, Markus

-- 
Human beings were created by water to transport it uphill.

