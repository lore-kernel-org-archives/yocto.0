Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F962E00561
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 03:57:13 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 18 Nov 2013 03:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="410509740"
Received: from unknown (HELO helios.localnet) ([10.252.121.158])
	by orsmga001.jf.intel.com with ESMTP; 18 Nov 2013 03:57:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 18 Nov 2013 11:57:11 +0000
Message-ID: <3135869.AjjxWFArVx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311160410010.8101@oneiric>
References: <alpine.DEB.2.02.1311150538110.30641@oneiric>
	<CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
	<alpine.DEB.2.02.1311160410010.8101@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: undocumented MACHINE_FEATURES, and what makes something a MACHINE feature?
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
X-List-Received-Date: Mon, 18 Nov 2013 11:57:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Saturday 16 November 2013 04:46:13 Robert P. J. Day wrote:
> On Fri, 15 Nov 2013, Burton, Ross wrote:
> > On 15 November 2013 10:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> > >   as you can see, the only tests for 'wifi' involve either
> > > 
> > > DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
> > > individually. under the circumstances, then, can 'wifi' be
> > > considered a legitimate MACHINE feature if it's never being tested
> > > in that context? (the same can be said for 'bluetooth', by the
> > > way.)
> > 
> > COMBINED_FEATURES is a union of MACHINE_ and DISTRO_FEATURES, so it
> > does make sense for them to be listed as MACHINE_FEATURES as
> > otherwise they can't be combined...  No point building wifi in the
> > distro if the machine doesn't support it, and the machine supporting
> > wifi isn't a reason to enable it in the distro.
> 
>   ok, let me take a shot at clarifying DISTRO_FEATURES versus
> MACHINE_FEATURES since i think there might be some errors in how
> things are being defined, but i'm always delighted to be proven wrong.
> 
>   first, MACHINE_FEATURES. as i read it (and how it's explained in
> section 10.2 of the ref manual), this variable defines simply the
> features for which there is hardware support for any given machine,
> yes? the value of MACHINE_FEATURES says nothing about whether you
> might want to *select* support for that particular feature, it simply
> states the H/W features that are subsequently selectable, is that
> about right?

Yes.

>   because of this, it would *seem* that there's little point in a user
> manipulating the value of this variable outside of the context of an
> actual machine definition file, yes? i mean, if you claim to be
> building for machine "foo", the machine definition file for "foo"
> should set MACHINE_FEATURES properly and that's what you get to work
> with in terms of building your image. so far, so good?

Correct.

>   OTOH, the DISTRO_FEATURES variable allows you to dictate what
> software support you want included in your image, yes? and here's
> where you deal with two cases of selection.
> 
>   in the simpler case, you can select DISTRO features that are
> independent of machine characteristics -- things like ipsec or nfs
> or smbfs. the second case, however, is trickier. the second case deals
> with selectable DISTRO features that require the underlying MACHINE
> feature; otherwise, it wouldn't make any sense(?).

Right.
 
>   example (as before): bluetooth. it makes no sense to select a DISTRO
> feature of bluetooth unless there is underlying hardware for it, and
> that's where this snippet of bitbake.conf comes in:
> 
> COMBINED_FEATURES = "\
>     ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "alsa", d)}
> \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "bluetooth",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "ext2",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "vfat",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "irda",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pcmcia",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pci",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES",
> "usbgadget", d)} \ ${@base_both_contain("DISTRO_FEATURES",
> "MACHINE_FEATURES", "usbhost", d)} \
> ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "wifi", d)}"
> COMBINED_FEATURES[vardeps] += "DISTRO_FEATURES MACHINE_FEATURES"
> 
> and that's the part i was missing before -- the fact that there is an
> *explicit* list of features for which *both* selections need to be
> true for it to make any sense. so the COMBINED feature of "bluetooth"
> is based on it being both supported in hardware *and* selected as a
> DISTRO feature. (so COMBINED_FEATURES is *not* simply a "union" of
> those other two variables.) and here are some of the apparent
> consequences and oddities i see.
> 
>   first, it would seem that any image definition shouldn't care about
> the setting of MACHINE_FEATURES, should it? as i see it, an image
> should consult only the values of DISTRO_FEATURES and
> COMBINED_FEATURES to see what needs to be included. as ross himself
> wrote:
> 
> "... the machine supporting wifi isn't a reason to enable it in the
> distro."
> 
>   but if i look at, say, oe-core's packagegroup-base.bb recipe file, i
> can see:
> 
> RDEPENDS_packagegroup-base = "\
>     packagegroup-distro-base \
>     packagegroup-machine-base \
>     \
>     sysfsutils \
>     module-init-tools \
>     ${@base_contains('MACHINE_FEATURES', 'apm', 'packagegroup-base-apm',
> '',d)} \ ${@base_contains('MACHINE_FEATURES', 'acpi',
> 'packagegroup-base-acpi', '',d)} \ ${@base_contains('MACHINE_FEATURES',
> 'keyboard', 'packagegroup-base-keyboard', '',d)} \
> ${@base_contains('MACHINE_FEATURES', 'phone', 'packagegroup-base-phone',
> '',d)} \ ... snip ...
> 
> why are those features being included in the image if they are simply
> defined in MACHINE_FEATURES? that just seems ... wrong somehow.

I suspect rather than having a hard-and-fast rule that all features should be 
accessed via COMBINED_FEATURES, the features that are accessible there have 
been added on a case-by-case basis. This is probably sensible since not all 
MACHINE_FEATURES should be optional - e.g. if your machine supports ACPI it's 
unlikely that you'd want to opt out of the software that supports that, not in 
packagegroup-base at least. I doubt that much active maintenance of the 
COMBINED_FEATURES list has gone on since it was introduced, though.

>   also, right below that in that same recipe file, we have the
> explicit tests for the COMBINED_FEATURES:
> 
>     ${@base_contains('COMBINED_FEATURES', 'alsa', 'packagegroup-base-alsa',
> '',d)} \ ${@base_contains('COMBINED_FEATURES', 'ext2',
> 'packagegroup-base-ext2', '',d)} \ ${@base_contains('COMBINED_FEATURES',
> 'vfat', 'packagegroup-base-vfat', '',d)} \
> ${@base_contains('COMBINED_FEATURES', 'irda', 'packagegroup-base-irda',
> '',d)} \ ${@base_contains('COMBINED_FEATURES', 'pci',
> 'packagegroup-base-pci', '',d)} \ ${@base_contains('COMBINED_FEATURES',
> 'pcmcia', 'packagegroup-base-pcmcia', '',d)} \
> ${@base_contains('COMBINED_FEATURES', 'usbgadget',
> 'packagegroup-base-usbgadget', '',d)} \
> ${@base_contains('COMBINED_FEATURES', 'usbhost',
> 'packagegroup-base-usbhost', '',d)} \ ${@base_contains('COMBINED_FEATURES',
> 'bluetooth', 'packagegroup-base-bluetooth', '',d)} \
> ${@base_contains('COMBINED_FEATURES', 'wifi', 'packagegroup-base-wifi',
> '',d)} \ ${@base_contains('COMBINED_FEATURES', '3g',
> 'packagegroup-base-3g', '',d)} \ ${@base_contains('COMBINED_FEATURES',
> 'nfc', 'packagegroup-base-nfc', '',d)} \
> 
> but if you look in oe-core's bitbake.conf file, you see:
> 
> COMBINED_FEATURES = "\
>     ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "alsa", d)}
> \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "bluetooth",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "ext2",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "vfat",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "irda",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pcmcia",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "pci",
> d)} \ ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES",
> "usbgadget", d)} \ ${@base_both_contain("DISTRO_FEATURES",
> "MACHINE_FEATURES", "usbhost", d)} \
> ${@base_both_contain("DISTRO_FEATURES", "MACHINE_FEATURES", "wifi", d)}"
> 
> there are no entries for either "3g" or "nfc", which seems
> inconsistent.
> 
>   oh, gack, i just read further down in packagegroup-base.bb where i
> can see explicit tests for things like:
> 
>   if "3g" in distro_features and not "3g" in machine_features ...
> 
> *sigh*.  apparently, i have more reading to do. all of this has the
> potential for confusion.

I agree. Patches welcome...

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

