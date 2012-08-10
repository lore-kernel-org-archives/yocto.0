Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA4E6E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 08:01:07 -0700 (PDT)
Received: by bkty5 with SMTP id y5so712773bkt.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 08:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=96Jo93CJ0hgjiLVB0oRecBk1Od2sweg6or3XdiT3hIw=;
	b=BN3yZK3V47WkKjgZFYhVGx6launF28GfX20JlamrY5QemSAYP+NxVEURabZWC1iWyC
	VFAZuXraf3qHn1dbRfNDtpXjCKStC0zCt6Jt2B8u/cK1odLFo96ZyxnzdwaO3rkuYMCL
	8eAFRloKaLxOki+v56fZk14BNNQT2qeB5IyE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent:x-gm-message-state;
	bh=96Jo93CJ0hgjiLVB0oRecBk1Od2sweg6or3XdiT3hIw=;
	b=VXs4Vd5w9kjbdwpscgSZBwjhw/MuCulsMogfjSZaMlK+yng0unTl2MOprI7B1Ridsq
	TI8A99ptEnP5OBscIH7jsNbcITD9lDpPlqP9/Q3EcmIG3NO6dXwzuq8SkFsTF5djE8c4
	5VGIGjePWwUn7/xr0d0KX29lnv7Rdp9qeb4W026cUc5b5zyRDUFv0/HfiGG3L0xvDs39
	6PIL4nMXvfhTfy2Lau4OnezZYXc88ujzNtnhC8C+iDEcy+wFYS4y6uJfMDzYJRnTL6WM
	DQGehCEvWCIOHy0SUmEUCH27KKjm33t0ViNzvNZGlE7NA24RDLDyRNUvFxFvQOj6x5sh
	Xqbg==
Received: by 10.204.145.82 with SMTP id c18mr1237950bkv.133.1344610866692;
	Fri, 10 Aug 2012 08:01:06 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id 14sm2198822bkq.12.2012.08.10.08.01.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Aug 2012 08:01:05 -0700 (PDT)
Date: Fri, 10 Aug 2012 17:01:01 +0200
From: Markus Hubig <mhubig@imko.de>
To: yocto@yoctoproject.org
Message-ID: <20120810113828.e2312ea9-e24a-4026-b7b4-e581d18a927a.mhubig@imko.de>
Mail-Followup-To: yocto@yoctoproject.org
References: <20120809155747.983f9270-e6b9-49c4-ae24-aff577803480.mhubig@imko.de>
	<CADkTA4PeF+pjmC=72NtxXq5odMUfsyhUa2-s+Az0zgbXh81cMA@mail.gmail.com>
	<20120809171242.f3f42cd3-3ca6-4924-88b1-a982a4bfe7e1.mhubig@imko.de>
	<5023F236.6030503@windriver.com> <50240B2C.1060801@windriver.com>
MIME-Version: 1.0
In-Reply-To: <50240B2C.1060801@windriver.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQlkNEnYs7ERmaByqd0Kb2UAklNzzlMgkgIXZvISuZqzIL8Q4IVznYkUCQgAQr5iKTBKmEX5
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
X-List-Received-Date: Fri, 10 Aug 2012 15:01:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 09, 2012 at 03:10:36PM -0400, Bruce Ashfield wrote:
> On 12-08-09 01:24 PM, Bruce Ashfield wrote:
> >On 12-08-09 12:32 PM, Markus Hubig wrote:
> >>On Thu, Aug 09, 2012 at 10:48:30AM -0400, Bruce Ashfield wrote:
> >>>On Thu, Aug 9, 2012 at 10:46 AM, Markus Hubig<mhubig@imko.de> wrote:
> >>
> >>If I ran the kconf_check manually I get an output, but not a very
> >>promissing one :(
> >>
> >>| This BSP sets 4 invalid/obsolete kernel options.
> >>| These config options are not offered anywhere within this kernel.
> >>| The full list can be found in your workspace at:
> >>| linux/meta/cfg/standard/default/portuxg20/invalid.cfg
> >>|
> >>| This BSP sets 10 kernel options that are possibly non-hardware related.
> >>| The full list can be found in your workspace at:
> >>| linux/meta/cfg/standard/default/portuxg20/specified_non_hdw.cfg
> >>|
> >>| WARNING: There were 17 hardware options requested that do not
> >>| have a corresponding value present in the final ".config" file.
> >>| This probably means you aren't getting the config you wanted.
> >>| The full list can be found in your workspace at:
> >>| linux/meta/cfg/standard/default/portuxg20/mismatch.cfg
> >>|
> >>| Waiting a second to make sure you get a chance to see this...
> >>| ** NOTE: There were 0 required options requested that do not
> 
> That's not all that bad for a first cut, that last "0" report is
> also fine, since nothing uses the "required" tag in denzil.

Hmm ok ...

> >>>If this is the same BSP, I can have a look and see about solving the
> >>>two problems at once.
> >>
> >>This would be very nice! I really stuck here ... The BSP can be found at:
> >>
> >>https://bitbucket.org/imko/meta-stamp9g20 (branch denzil)
> >
> >I have a clone and started a build. When I have some results .. I'll
> >send more email.
> 
> Aha. yes, I knew this looked familiar. It's a fall out from the old
> branch based triggers for the tools. Your BSP is configuring properly,
> the report just isn't all that useful.
> 
> It is (largely) fixed by this commit to the kern tools:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/yocto-kernel-tools/commit/?id=4b5dd4d5b541ff98110e8b58f6d33923893e0950
> 
> Porting this to denzil .. may be possible, and I can give it a try,
> but I can't drag back all of the kern-tools enhancements, and many
> of the changes depend on associated changes in other scripts.

Hmm no it's fine. I switched to 1.3_M3 and run a test build at the moment,
to give it a try ... (Hmm I actually didn't know if this commit is included
in the kernel 3.2 the 1.3_M3 branch uses ... )

Hmm just switching to the 1.3_M3 branch doesn't solve the warning, instead
the kernel build failed with error:

| DEBUG: Executing shell function do_kernel_configme
| [INFO] doing kernel configme
| [INFO] Configuring target/machine combo: "standard/portuxg20"
| [INFO] collecting configs in ./meta/meta-series
|   [##################################################]  (completed in 4 seconds)
| ERROR: could not sanitize configuration fragments
|    errors are logged in meta/cfg/standard/portuxg20/config.log
| ERROR: Function failed: do_kernel_configme (see poky/build/tmp/work/\
|  portuxg20-poky-linux-gnueabi/linux-yocto-3.2.18+git1+ \
|  486f7aec824b4127e91ef53228823e996b3696f0_1+\
|  7cc31a952f78b8f8e8469eed93c23e9675a8eeb5-r4.0.1/temp/ \
|  log.do_kernel_configme.12375 for further information)

I checked at meta/cfg/standard/portuxg20/config.log and found this:

| ...
| [INFO] Sanitizing meta/cfg/kernel-cache/features/fuse/fuse.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/ktypes/standard/standard.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/cfg/devtmpfs.cfg
| [INFO] Sanitizing meta/cfg/kernel-cache/cfg/debugfs.cfg
| [INFO] Sanitizing meta/cfgportuxg20
| [ERROR] Kern frag  does not exist

Hmm strange ... Now I cloned the tzanussi/yocto-bsp-master-update branch
from pocky-contrib (since I read the patch request from tzanussi on the ML)
and looked what his yocto-bsp script did.

The main difference I spotted was in stamp9g20-standard.scc

| define KMACHINE stamp9g20
| define KTYPE standard
| define KARCH arm
|
| include ktypes/standard
|-branch stamp9g20
|
| include stamp9g20.scc

But removing the branch statement didn't change the error (on the 1.3_M3
branch) so I switched to using the shine new 3.4 kernel.

But -> same error! OK maybe the 1.3_M3 is not that stable at all, so back
to denzil and 3.2. But with the branch statement removed ...

Damn now I hit another strange error:

| arm-poky-linux-gnueabi-ld: cannot find -lgcc
| make: *** [u-boot] Error 1
| ERROR: oe_runmake failed

See https://bitbucket.org/imko/meta-stamp9g20/changeset/ebf8f19ea1932e1b6ed33e549023be44618481e7
for further details ...

And the warnings 'still stays on' ...

> If you were to use a completely new branch (versus the re-use), the
> warning would also go a way (versus my current suggestion of
> ignoring it).

To do this I had to make some modification to my linux-yocto_3.2.bbappend
file, like this, right?

|  COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
| -KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
| +KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs/stamp9g20"
| +YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs/stamp9g20"
|  KMACHINE_stamp9g20  = "stamp9g20"

But do I need to set a YOCTO_KERNEL_EXTERNAL_BRANCH_stamp9g20?

> Was this BSP generating using the tooling, or by hand ?

Initially I tried to build one by hand but then I learned about the yocto-bsp
so I created the BSP with the tool and included my modifications.

Cheers, Markus

