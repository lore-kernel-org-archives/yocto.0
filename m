Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45054E01374
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 07:58:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 07:58:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138738152"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 07:58:37 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
Date: Tue, 01 May 2012 09:58:37 -0500
Message-ID: <1335884317.27056.93.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 14:58:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Frans,

Thanks for your input, comments below...

On Tue, 2012-05-01 at 16:21 +0200, Frans Meulenbroeks wrote:
> Dear all,
> 
> In this email I'd like to share my experiences wrt creating a new bsp.
> I hope this is useful for someone (e.g. for updating the doc). Feel
> free to point out the n00bish errors I made, or where I could have
> improved.
> 
> Aim was to bring my current board (powerpc mpc8313e based) onto yocto 1.2
> This board is already working under oe classic.
> 
> I started fetching poky-denzil-7.0.
> Tested by building core-image-minimal. No problems here.
> 
> Then I wanted to add my own bsp. Decided to use the bsp-guide as a starter.
> 
> Tried to use yocto-bsp with the standard 7.0 setup (where there is a
> poky-denzil-7.0-build dir adjacent to the soruce dir).
> yocto-bsp when invoked complained with:
> IOError: [Errno 2] No such file or directory:
> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
> 

This should be fixed by the fix for this bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=2219

which didn't make it into the release, and hasn't been pulled into
master yet either...

But actually that should only apply to yocto-kernel, not yocto-bsp.

Can you provide more info on your exact setup and commands you used?

> I resolved this for now by making /home/frans/poky-denzil-7.0/build/ a
> symlink to /home/frans/poky-denzil-7.0-build
> Not sure if that is the desired solution but anyway this allowed me to
> move forward
> 
> Reinvoked yocto-bsp create, this indeed gave progress.
> Now had to decide on the machine branch to start this on. As mpc8315
> is fairly close decide to start with that one.
> tuning support was a bit tough. The 8313 machine conf file in
> oe-classic said ppce300c3, so used ppce300c2 as a starter
> next modified the file that contains the device tree to the default 8313 dts.
> 
> That generated the layer.
> Still had to add the layer to bblayers.conf (I was somewhat surprised
> by this as the script before complained about not being able to find
> that file so I somehow expected it to be added automatically)
> 

The tools are conservative about changing anything outside of what they
generated - not sure it makes sense to have them changing
bblayers.conf...

> Also went to conf/machine in my bsp and changed it to use
> tune-ppce300c3 instead of c2, and created this include file by copying
> the c2 file to c3 and renaming all references to c2 by c3 (as these
> were the only changes when comparing the oe classic c2 and c3 tune inc
> files.
> 
> While building core-image-minimal, building the kernel failed because
> recipes-kernel/linux/linux-yocto_3.2.bbappend had some references to
> mpc8315*. Replaced these with mpc8313*. (not fully sure if that is
> fully sound though; anyway I need to hack the kernel part anyway).
> And now, while typing this, things are happily humming along, giving
> me time to type this message.
> 

The ppc template support is pretty much untested - I focused only on
platforms I had hardware support for and didn't do much with the others,
as mentioned in the submission.

So I'll be happy to change the templates to make them match reality and
be more useful out-of the box for those platforms I don't know much
about.

The other thing to note however is that the tool is meant to give a
starting point which will likely need to be tweaked in order to actually
work on the hardware.  It should at least compile, though...

Tom

> Next step is probably see if I can run the executables created; if so,
> move on to adding my own image recipe, and see if I can get that
> going.
> After that hack the kernel recipe (so it uses my own defconfig and
> device tree, and add our own drivers).
> I'll write a followup email if there are things that could e.g. be
> avoided by updating the docs.
> 
> Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



