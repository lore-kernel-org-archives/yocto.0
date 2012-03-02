Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43024E003E4
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 09:19:46 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 02 Mar 2012 09:19:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113896206"
Received: from unknown (HELO [10.255.15.122]) ([10.255.15.122])
	by azsmga001.ch.intel.com with ESMTP; 02 Mar 2012 09:19:45 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4F50F6C4.2050007@linux.intel.com>
References: <cover.1330663414.git.tom.zanussi@intel.com>
	<873e25e86273c9263e32c02c296d96d06230e70e.1330663414.git.tom.zanussi@intel.com>
	<4F50F6C4.2050007@linux.intel.com>
Date: Fri, 02 Mar 2012 11:19:18 -0600
Message-ID: <1330708758.2319.79.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/8] yocto-bsp: add BSP template files
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
X-List-Received-Date: Fri, 02 Mar 2012 17:19:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-03-02 at 08:35 -0800, Darren Hart wrote:
> 
> On 03/01/2012 11:01 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > BSP template files for all supported Yocto architectures, plus qemu
> > versions of the same.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  .../target/arch/arm/conf/machine/{{=machine}}.conf |   87 +++++
> >  .../{{ if xserver == \"y\": }} xorg.conf"          |   34 ++
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-non_hardware.cfg      |   30 ++
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  336 ++++++++++++++++++++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    7 +
> >  .../arm/recipes-kernel/linux/kernel-list.noinstall |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  .../bsp/substrate/target/arch/common/COPYING.MIT   |   17 +
> >  .../lib/bsp/substrate/target/arch/common/README    |  118 +++++++
> >  .../substrate/target/arch/common/README.sources    |   17 +
> >  .../substrate/target/arch/common/conf/layer.conf   |   10 +
> >  .../formfactor/formfactor/{{=machine}}/machconfig  |    5 +
> >  .../recipes-bsp/formfactor/formfactor_0.0.bbappend |    3 +
> >  .../tasks/task-core-tools-profile.bbappend         |    2 +
> >  .../arch/i386/conf/machine/{{=machine}}.conf       |   44 +++
> >  ...erver_choice == \"xserver_emgd\": }} xorg.conf" |   48 +++
> >  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
> >  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   54 ++++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   30 ++
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  .../arch/mips/conf/machine/{{=machine}}.conf       |   28 ++
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |    1 +
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    8 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  .../arch/powerpc/conf/machine/{{=machine}}.conf    |   53 +++
> >  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |  163 ++++++++++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   11 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  .../arch/qemu/conf/machine/{{=machine}}.conf       |   59 ++++
> >  .../xserver-xf86-config/{{=machine}}/xorg.conf     |   69 ++++
> >  ..."x86_64\": }} xserver-xf86-config_0.1.bbappend" |    2 +
> >  .../recipes-kernel/linux/files/user-config.cfg     |    4 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |   30 ++
> >  .../linux/files/{{=machine}}-standard.scc          |   30 ++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |    6 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   32 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   32 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   34 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  .../arch/x86_64/conf/machine/{{=machine}}.conf     |   29 ++
> >  ...erver_choice == \"xserver_i915\": }} xorg.conf" |   26 ++
> >  ...erver_choice == \"xserver_vesa\": }} xorg.conf" |   26 ++
> >  ... == \"y\": }} xserver-xf86-config_0.1.bbappend" |    3 +
> >  .../linux/files/{{=machine}}-preempt-rt.scc        |    8 +
> >  .../linux/files/{{=machine}}-standard.scc          |    8 +
> >  .../recipes-kernel/linux/files/{{=machine}}.cfg    |   47 +++
> >  .../recipes-kernel/linux/files/{{=machine}}.scc    |   17 +
> >  .../recipes-kernel/linux/kernel-list.noinstall     |    3 +
> >  ...yocto-rt_3.0\": }} linux-yocto-rt_3.0.bbappend" |   34 ++
> >  ...yocto-rt_3.2\": }} linux-yocto-rt_3.2.bbappend" |   34 ++
> >  ...linux-yocto_3.0\": }} linux-yocto_3.0.bbappend" |   36 ++
> >  ...linux-yocto_3.2\": }} linux-yocto_3.2.bbappend" |   34 ++
> >  80 files changed, 2436 insertions(+), 0 deletions(-)
> 
> 
> WOW! I suppose this is the initial patch, so a files are going in whole
> - but WOW! Are all of these created by hand? I'm thinking about
> supporting this going forward, will we have to create 10+ new files for
> every kernel release manually?
> 

Yeah, as I was fleshing things out, I noticed some unnecessary
duplication that it would make sense to try and factor out.  They are
however template files, so are kind of expected to be 'wordy' by nature,
and they do each require small custom tweaks, so there may be a
practical limit to how much it really makes sense to modularize.

Also, as far as the total number of files, I expect similar numbers to
be retired each round as well, so the total would stay relatively
constant.  And I'd say 10 files per kernel upgrade is fairly reasonable,
considering it happens once every cycle essentially.

> A few comments inline below...
> 
> ...
> 
> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
> > new file mode 100644
> > index 0000000..361343b
> > --- /dev/null
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}-non_hardware.cfg
> > @@ -0,0 +1,30 @@
> > +#
> > +# Miscellaneous filesystems
> > +#
> > +CONFIG_NFS_DEF_FILE_IO_SIZE=1024
> > +
> > +#
> > +# Multiple Device Support
> > +#
> > +# CONFIG_MD is not set
> > +
> > +# Kernel Features
> > +#
> > +CONFIG_NO_HZ=y
> > +
> > +#
> > +# CPUIdle
> > +#
> > +CONFIG_CPU_IDLE=y
> > +CONFIG_CPU_IDLE_GOV_LADDER=y
> > +CONFIG_CPU_IDLE_GOV_MENU=y
> > +
> > +#
> > +# Kernel hacking
> > +#
> > +CONFIG_DEBUG_FS=y
> > +
> > +#
> > +# Power management options
> > +#
> > +CONFIG_PM_DEBUG=y
> 
> 
> This seems odd to be defined in the bsp tool. This appears to be all
> policy related, which should really be defined by the ktype scc file in
> the linux-yocto meta branch.
> 

I agree - this is definitely something we can and should tweak depending
on what the goals are for this tool i.e. there are tradeoffs between
creating something immediately useful boot-wise for the user vs a
minimalistic canonical starting point.  I guess my bent has so far been
the former, assuming the user understands that this is just a starting
point and they'll probably need to go in and tweak settings, possibly
deeply, in order to get things running on actual hardware.

> > diff --git a/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
> > new file mode 100644
> > index 0000000..994e034
> > --- /dev/null
> > +++ b/scripts/lib/bsp/substrate/target/arch/arm/recipes-kernel/linux/files/{{=machine}}.cfg
> > @@ -0,0 +1,336 @@
> > +#
> > +# System Type
> > +#
> > +CONFIG_ARCH_OMAP=y
> > +CONFIG_HAVE_PWM=y
> > +CONFIG_ARM_L1_CACHE_SHIFT_6=y
> > +
> 
> ...
> 
> Again, default settings for an architecture the linux-yocto meta data
> already supports. We should be able to specify this with scc inclusions
> right?
> 
> My concern here is having to manage "policy" and "defaults" in both the
> linux-yocto meta data AND in the yocto-bsp template files.
> 

Right, we need to sort this out and decide what should and should not go
into the template files.  This was a first pass and especially for the
non-x86 and x86_64 architectures I knew these settings would have to be
changed.

The i386 and x86_64 architectures do however work out of the box on my
generic systems here, which is why I chose the initial settings there
for those...

Tom

> 
> Comments would be basically the same from here on down...
> 
> <snip>
> 



