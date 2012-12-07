Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C936E006C9
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 06:00:03 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 07 Dec 2012 06:00:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,237,1355126400"; d="scan'208";a="260483682"
Received: from unknown (HELO helios.localnet) ([10.252.122.207])
	by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2012 06:00:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 07 Dec 2012 13:59:59 +0000
Message-ID: <5235127.r6SHoQ9lR8@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1212070744340.5574@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZANk525GkR-T=6OLvpac4p8gwQ8hG-oEEaZU7RC+5nu2JZw@mail.gmail.com>
	<alpine.DEB.2.02.1212070744340.5574@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: FILESEXTRAPATHS needs to be explained *way* better
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
X-List-Received-Date: Fri, 07 Dec 2012 14:00:03 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 07 December 2012 08:04:58 Robert P. J. Day wrote:
> On Thu, 6 Dec 2012, Chris Larson wrote:
> > On Thu, Dec 6, 2012 at 4:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> 
wrote:
> >         ok, that's just silly (but that could be the 9% quebec beer
> >       talking).  if i'm working with just one layer, then this:
> >       
> >       FILESEXTRAPATHS_prepend := "rday"
> >       
> >       works fine:
> >       
> >       FILESPATH="rday/linux-gnueabi:rday/arm:rday/build-linux:rday/pn-netb
> >       ase:...
> >       
> >       if that fails with more than one layer, then that is, quite simply,
> >       asinine.
> > 
> > I really don't see why you're failing to grasp such a basic concept
> > as a colon separated variable. Do you think you can add something to
> > PATH without adding a colon?
> 
>   arrrrrrrgggghhhh ... i'll try this again.  as i read it (and i'm
> willing to be corrected), the value of FILESEXTRAPATHS_prepend is not
> used for a simple, textual prepend.  period.  end of discussion.
> 
>   rather, it is used as the basis for extending FILESPATH based on
> *processing* that involves taking the value of OVERRIDES into
> consideration.  using the example i was talking about yesterday (the
> meta-ti layer and the netbase recipe), if my netbase .bbappend
> contains *only* this:
> 
> FILESEXTRAPATHS_prepend := "/rday"
> 
> then if i use bitbake-env to see what happens with FILESPATH wrt to
> that recipe, i see (replacing ":" with newlines for prettiness):
> 
> $ bitbake-env -r netbase FILESPATH | tr : '\n'
> Parsing recipes..done.
> # FILESPATH="${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
> "${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
> FILESPATH="/rday/linux-gnueabi
> /rday/arm
> /rday/build-linux
> /rday/pn-netbase
> /rday/dm814x-evm
> /rday/ti814x
> /rday/armv7a
> /rday/
> /rday/class-target
> /rday/forcevariable
> /rday/libc-glibc
> /rday/
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/li
> nux-gnueabi
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/a
> rm
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/b
> uild-linux
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/p
> n-netbase ... snip ...
> 
>   see?  how much clearer can i make this?  if you prefer adding the
> silly colon to that line, as in:
> 
> FILESEXTRAPATHS_prepend := "/rday:"
> 
> it ends up making exactly *no* difference.  none.  zip.  squat.
> you're quite welcome to add as many as you like:
> 
> FILESEXTRAPATHS_prepend := "/rday:::::::::::::::::"
> 
> and it will make no difference since, as i read it, you are not
> specifying a value to be literally prepended to FILESPATH, you are
> identifying a *directory* to be processed (by, i believe, def
> base_set_filespath(path, d) in utils.bbclass).  if for some bizarre
> reason you like to add that superfluous ":", knock yourself out, but
> don't claim that it is somehow *necessary* because of a
> colon-separated list of directories.
> 
>   on the other hand, it *is* useful if you want to add, say, *two*
> dirtectories, as in:
> 
> FILESEXTRAPATHS_prepend := "/rday1:/rday2"

Right, and this is what you'll get if two layers bbappend the same recipe and 
both prepend to FILESEXTRAPATHS, which is not an unlikely situation. If you 
want that to work correctly then you *must* include the trailing colon. The 
easiest thing is to just include it every time you prepend to FILESEXTRAPATHS.

> which will produce (predictably):
> 
> FILESPATH="/rday1/linux-gnueabi
> /rday1/arm
> /rday1/build-linux
> /rday1/pn-netbase
> /rday1/dm814x-evm
> /rday1/ti814x
> /rday1/armv7a
> /rday1/
> /rday1/class-target
> /rday1/forcevariable
> /rday1/libc-glibc
> /rday1/
> /rday2/linux-gnueabi
> /rday2/arm
> /rday2/build-linux
> /rday2/pn-netbase
> /rday2/dm814x-evm
> /rday2/ti814x
> /rday2/armv7a
> /rday2/
> /rday2/class-target
> /rday2/forcevariable
> /rday2/libc-glibc
> /rday2/
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/li
> nux-gnueabi
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/a
> rm
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/b
> uild-linux
> /home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/p
> n-netbase ... snip ...
> 
> so why am i so fixated on this?  thanks for asking.
> 
>   i find the current, widespread usage of this form (with the colon):
> 
> FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"
> 
> potentially misleading since people reading the .bbappend file will
> (quite naturally) assume that, hey, that must represent a literal
> prepend since it includes the colon.  

It *is* a literal prepend - to FILESEXTRAPATHS. In your discussion above you 
are conflating FILESPATH with FILESEXTRAPATHS. The former is constructed based 
on the latter in conjuction with OVERRIDES; they are not the same variable.

>   i'm willing to bet that, in many cases, those people just added what
> they thought was a simple overriding directory name, having no clue
> that that was being expanded into multiple directories, one of which
> just *happened* to match the directory name they supplied.  so things
> worked out, but not for the reason they thought.

By saying "just happened" you're implying that it is somehow accidental or 
incidental that the directory that the user has specified is added - it is 
nothing of the sort. It is completely deliberate and if it did not do so in 
fact almost no recipe that used this construct would work.

We know this isn't a particularly self-evident structure; if it makes it 
easier, consider it as just a single line of boilerplate when you want to add 
or override any file in SRC_URI within a bbappend.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

