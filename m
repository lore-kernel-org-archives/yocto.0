Return-Path: <mhubig@imko.de>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB42E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 11:20:13 -0700 (PDT)
Received: by eabd1 with SMTP id d1so558630eab.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 11:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=ugHP0gEP2wUNf64Ih7kcHudRepgK/wcn4hATqdT2aBM=;
	b=gjC6RqFBOBq0U1fTXDWW2GWL3xJ0SmZ7NuBA0fxPVTzHKhyuWcqwCbdH48MDPjWfN2
	YECxat+HUZOV5NgyoHrfm+pS2yZz3hRZMGxrGLmHRRRBg0W94M+oZ8arGEDaSFgaZq2+
	WYFpSJs7sToXz5Dce3jj7gcM+RHikV5NucWrE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=ugHP0gEP2wUNf64Ih7kcHudRepgK/wcn4hATqdT2aBM=;
	b=n/i2m347NFNgrHPkN2SV1P8Pth8h+g0aylrIILgCLWt3LOzH0+Bdbd1+C6B4ofwSH8
	sQji7QtuKIbNIzqe55M0mCcvGYscAKmYGDnCS3/gGYQrVo7wwBYqVJo0SYKDRLS5oUJO
	s/Hmu4OHX0UwcP74mvSUGlTgnjjqpFdnlMsiPBQO0gd8//sQsk0Yzn0GyXBoYrMcyQ0r
	8/CASkFoVoFW5Wj35ZVJXdTG9w5WeOpd6++/PTGU+K0brvz0INgU3m77Lnn3H4l3F6NP
	1Iranhnt460mhgf2I3MhgVO/Nw4Q78/g/p4ckgG/Su7PuKhY9xkMNItCfMh7q+nh7grg
	s+tw==
Received: by 10.14.223.72 with SMTP id u48mr116481eep.37.1344622812398;
	Fri, 10 Aug 2012 11:20:12 -0700 (PDT)
Received: from mh.fritz.box ([2a01:1e8:e100:8289:8541:ea1e:64f9:c990])
	by mx.google.com with ESMTPS id 9sm13141797eei.12.2012.08.10.11.20.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 11:20:11 -0700 (PDT)
Date: Fri, 10 Aug 2012 20:20:06 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120810201121.87EECD0B-13FC-41CC-AEDE-9E0954A3D458.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
	<CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
	<20120809171242.f3f42cd3-3ca6-4924-88b1-a982a4bfe7e1.mhubig@imko.de>
	<5023F236.6030503@windriver.com> <50240B2C.1060801@windriver.com>
	<20120810113828.e2312ea9-e24a-4026-b7b4-e581d18a927a.mhubig@imko.de>
	<CADkTA4MG66kBHHPFiKUgr_bhEnFJVCg+S5=mgDg=U+f1dzz56w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADkTA4MG66kBHHPFiKUgr_bhEnFJVCg+S5=mgDg=U+f1dzz56w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQm+293UvU3B3d1ZeQmvgtvmpiWSNQOhCuFtner0bvKyMcDmR9t0AgFXF9wpRZ2fiOker0LD
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
X-List-Received-Date: Fri, 10 Aug 2012 18:20:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 10, 2012 at 12:50:00PM -0400, Bruce Ashfield wrote:
> On Fri, Aug 10, 2012 at 11:01 AM, Markus Hubig <mhubig@imko.de> wrote:
> > On Thu, Aug 09, 2012 at 03:10:36PM -0400, Bruce Ashfield wrote:
> >> On 12-08-09 01:24 PM, Bruce Ashfield wrote:
> >> >On 12-08-09 12:32 PM, Markus Hubig wrote:
> >> >>On Thu, Aug 09, 2012 at 10:48:30AM -0400, Bruce Ashfield wrote:
> >> >>>On Thu, Aug 9, 2012 at 10:46 AM, Markus Hubig<mhubig@imko.de> wrote:
> >
> > Hmm just switching to the 1.3_M3 branch doesn't solve the warning, instead
> > the kernel build failed with error:
> >
> > | DEBUG: Executing shell function do_kernel_configme
> > | [INFO] doing kernel configme
> > | [INFO] Configuring target/machine combo: "standard/portuxg20"
> > | [INFO] collecting configs in ./meta/meta-series
> > |   [##################################################]  (completed in 4 seconds)
> > | ERROR: could not sanitize configuration fragments
> > |    errors are logged in meta/cfg/standard/portuxg20/config.log
> > | ERROR: Function failed: do_kernel_configme (see poky/build/tmp/work/\
> > |  portuxg20-poky-linux-gnueabi/linux-yocto-3.2.18+git1+ \
> > |  486f7aec824b4127e91ef53228823e996b3696f0_1+\
> > |  7cc31a952f78b8f8e8469eed93c23e9675a8eeb5-r4.0.1/temp/ \
> > |  log.do_kernel_configme.12375 for further information)
> >
> > I checked at meta/cfg/standard/portuxg20/config.log and found this:
> >
> > | ...
> > | [INFO] Sanitizing meta/cfg/kernel-cache/features/fuse/fuse.cfg
> > | [INFO] Sanitizing meta/cfg/kernel-cache/ktypes/standard/standard.cfg
> > | [INFO] Sanitizing meta/cfg/kernel-cache/cfg/devtmpfs.cfg
> > | [INFO] Sanitizing meta/cfg/kernel-cache/cfg/debugfs.cfg
> > | [INFO] Sanitizing meta/cfgportuxg20
> > | [ERROR] Kern frag  does not exist
> >
> > Hmm strange ... Now I cloned the tzanussi/yocto-bsp-master-update branch
> > from pocky-contrib (since I read the patch request from tzanussi on the ML)
> > and looked what his yocto-bsp script did.
> 
> That is interesting. I means something was detected as a configuration
> fragment ...

| [INFO] Sanitizing meta/cfgportuxg20
                    ^^^^^^^^^^^^^^^^^
              Something get's crippled here!

> that wasn't, or didn't get migrated to the source tree. I can
> reproduce this with the layer that you provided before ?

Yes, but please pull bevor. I have two branches now 1.3_M3 and denzil.
I got this error with 1.3_M3 (both poky and my bsp) and linux 3.2 & 3.4.

> >
> > The main difference I spotted was in stamp9g20-standard.scc
> >
> > | define KMACHINE stamp9g20
> > | define KTYPE standard
> > | define KARCH arm
> > |
> > | include ktypes/standard
> > |-branch stamp9g20
> > |
> > | include stamp9g20.scc
> >
> > But removing the branch statement didn't change the error (on the 1.3_M3
> > branch) so I switched to using the shine new 3.4 kernel.
> >
> > But -> same error! OK maybe the 1.3_M3 is not that stable at all, so back
> > to denzil and 3.2. But with the branch statement removed ...
> 
> That really is strange, Tom and I have both tested this recently. I'll need to
> take another look.
>
> > Damn now I hit another strange error:
> >
> > | arm-poky-linux-gnueabi-ld: cannot find -lgcc
> > | make: *** [u-boot] Error 1
> > | ERROR: oe_runmake failed
> >
> > See https://bitbucket.org/imko/meta-stamp9g20/changeset/ebf8f19ea1932e1b6ed33e549023be44618481e7
> > for further details ...
> >
> > And the warnings 'still stays on' ...
> >
> >> If you were to use a completely new branch (versus the re-use), the
> >> warning would also go a way (versus my current suggestion of
> >> ignoring it).
> >
> > To do this I had to make some modification to my linux-yocto_3.2.bbappend
> > file, like this, right?
> >
> > |  COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
> > | -KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
> > | +KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs/stamp9g20"
> > | +YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs/stamp9g20"
> > |  KMACHINE_stamp9g20  = "stamp9g20"
> >
> > But do I need to set a YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20?
> 
> In 3.2 you would. I'm out of the office today, but you shouldn't still
> be seeing errors with master or with 3.2.
> 
> I'll do a complete build of your machine to see if bugs crept in.

Nice, Thanks!

Cheers, Markus

