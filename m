Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3C4DE0044A
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2012 09:32:27 -0700 (PDT)
Received: by bkty5 with SMTP id y5so289780bkt.35
	for <yocto@yoctoproject.org>; Thu, 09 Aug 2012 09:32:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=ukWUpQ7g0nqWf0bTjbOD3UA9Jg6BKLl+T2jwUYXBNsY=;
	b=MxInT5g5Y3VUHh4JZjET33UzXpnPYW7nKbPVtYyVCwOVsfY3TjjFdCsCGdiv5ev52L
	8mtbznjlThrAUaBF+8S3fTJTxBu9khami+khmfj/IbBGA8M7oyr7RENXNL/I/JaV5W6B
	FUptuq3nC8VaOAB/Bx8tfxdkBdZx/23uR6JYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=ukWUpQ7g0nqWf0bTjbOD3UA9Jg6BKLl+T2jwUYXBNsY=;
	b=hjq3qN+zI0TSAJzIUU4kbXlgAO7vjoxjBrcqKTjWSAQQxwCxF1Gz7/OwkBDUiKFqCX
	ixN99baTqfW0O++YKmxvdZUXljaw/bbID8SkkFKLa8Cg5EUa1A3jiy6cx2Vm1TBxknHm
	trhnanZZSlk3N1ttrV6VxMC0uRwf3gX+W1WZPizwx+EwQWVF/o+zoyULBpKazBvCP8tV
	0DUxDSjtlNBU+n71DXLn5yfzwx4QYAx03Psbitmw0nMld1EaJSIOPD9+ewfehls0MEE7
	PhKgCH75pitXwFUyQ1i0cu3efL7LPSqaIapLVJL4zgfcqapBOmjmC6ppAbk674vd8zVj
	wYCw==
Received: by 10.204.149.217 with SMTP id u25mr4876675bkv.107.1344529946455;
	Thu, 09 Aug 2012 09:32:26 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id he8sm925266bkc.3.2012.08.09.09.32.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Aug 2012 09:32:25 -0700 (PDT)
Date: Thu, 9 Aug 2012 18:32:19 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120809171242.f3f42cd3-3ca6-4924-88b1-a982a4bfe7e1.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
	<CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQmjGtXI6qqRpn6fE56C2G5t6rey90pFsrn5UvlQbUYGNNZAahjq7HSzlanaiBCOx9O4/7+Z
Subject: Re: Problem with BSP supporting different machines
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
X-List-Received-Date: Thu, 09 Aug 2012 16:32:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 09, 2012 at 10:48:30AM -0400, Bruce Ashfield wrote:
> On Thu, Aug 9, 2012 at 10:46 AM, Markus Hubig <mhubig@imko.de> wrote:

<snip>

> > Comparing the output of "bitbake -e linux-yocto" for both MACHINE settings
> > I notice that for stamp9g20 KMACHINE is "stamp9g20" but for portuxg20 it's
> > "common-pc", which results in these "updateme" command:
> >
> > | updateme --branch standard/default/arm-versatile-926ejs -DKDESC=common-pc:standard
> > |  --feature features/netfilter --feature features/taskstats arm common-pc
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/hardware.cfg
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/non-hardware.cfg
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.cfg
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-preempt-rt.scc
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20.scc
> > |  poky/meta-stamp9g20/recipes-kernel/linux/files/portuxg20/portuxg20-standard.scc
> >
> > Which again (I think ...) leads to a kernel compile error ...
> >
> > Unfortunately I was not able to find out why the KMACHINE variable is not setup
> > correctly with my BSP for PortuxG20 ...

Damn! Found the problem, just a typo :-)

| -KMACHINE_portux9g20  = "portuxg20"
| +KMACHINE_portuxg20  = "portuxg20"

> Is this the same BSP producing the kconf check warnings on denzil ? I
> ran tests this morning and denzil itself is clean, so there's definitely
> something wrong in the layer.

Yes it's the same BSP and the kconf_check warnings are persistent!

| WARNING: Can't find any BSP hardware or required configuration fragments.
| WARNING: Looked at 
|  linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
| and
|  linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
| in directory:
|  linux/meta/cfg/standard/default/arm-versatile-926ejs

As I mentiond before the files kconf_check should (IMHO) have a look
at are in:

| linux/meta/cfg/standard/default/portuxg20

If I ran the kconf_check manually I get an output, but not a very
promissing one :(

| This BSP sets 4 invalid/obsolete kernel options.
| These config options are not offered anywhere within this kernel.
| The full list can be found in your workspace at:
|  linux/meta/cfg/standard/default/portuxg20/invalid.cfg
| 
| This BSP sets 10 kernel options that are possibly non-hardware related.
| The full list can be found in your workspace at:
|  linux/meta/cfg/standard/default/portuxg20/specified_non_hdw.cfg
| 
| WARNING: There were 17 hardware options requested that do not
|          have a corresponding value present in the final ".config" file.
|          This probably means you aren't getting the config you wanted.
| The full list can be found in your workspace at:
|  linux/meta/cfg/standard/default/portuxg20/mismatch.cfg
| 
| Waiting a second to make sure you get a chance to see this...
| ** NOTE: There were 0 required options requested that do not
|          have a corresponding value present in the final ".config" file.
|          This is a violation of the policy defined by the higher level config
| The full list can be found in your workspace at:
|  linux/meta/cfg/standard/default/portuxg20/missing_required.cfg

So I'm not shure if my BSP is creating the kernel I wanna have ...

> If this is the same BSP, I can have a look and see about solving the
> two problems at once.

This would be very nice! I really stuck here ... The BSP can be found at:

https://bitbucket.org/imko/meta-stamp9g20 (branch denzil)

Cheers, Markus

