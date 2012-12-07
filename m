Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2AAAE006C9
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 05:05:02 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:43263 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tgxbx-0001BD-9i; Fri, 07 Dec 2012 08:05:01 -0500
Date: Fri, 7 Dec 2012 08:04:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANk525GkR-T=6OLvpac4p8gwQ8hG-oEEaZU7RC+5nu2JZw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212070744340.5574@oneiric>
References: <alpine.DEB.2.02.1212061650350.4116@oneiric>
	<CABcZAN=JuymHBYdL8kZUjcYjScfjKAJwYJibP6R=7Xkto1Gh1g@mail.gmail.com>
	<alpine.DEB.2.02.1212061731550.4523@oneiric>
	<CABcZANkhN-Nx_TfeRDnt2+96HtAwyb_Lp-fM7GBkKWs=a0Ad8A@mail.gmail.com>
	<alpine.DEB.2.02.1212061812580.3304@oneiric>
	<CABcZANk525GkR-T=6OLvpac4p8gwQ8hG-oEEaZU7RC+5nu2JZw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 07 Dec 2012 13:05:02 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1936067213-1354885501=:5574"

--8323329-1936067213-1354885501=:5574
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 6 Dec 2012, Chris Larson wrote:

> On Thu, Dec 6, 2012 at 4:16 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         ok, that's just silly (but that could be the 9% quebec beer
>       talking).  if i'm working with just one layer, then this:
>
>       FILESEXTRAPATHS_prepend := "rday"
>
>       works fine:
>
>       FILESPATH="rday/linux-gnueabi:rday/arm:rday/build-linux:rday/pn-netbase:...
>
>       if that fails with more than one layer, then that is, quite simply,
>       asinine.
>
>
> I really don't see why you're failing to grasp such a basic concept
> as a colon separated variable. Do you think you can add something to
> PATH without adding a colon?

  arrrrrrrgggghhhh ... i'll try this again.  as i read it (and i'm
willing to be corrected), the value of FILESEXTRAPATHS_prepend is not
used for a simple, textual prepend.  period.  end of discussion.

  rather, it is used as the basis for extending FILESPATH based on
*processing* that involves taking the value of OVERRIDES into
consideration.  using the example i was talking about yesterday (the
meta-ti layer and the netbase recipe), if my netbase .bbappend
contains *only* this:

FILESEXTRAPATHS_prepend := "/rday"

then if i use bitbake-env to see what happens with FILESPATH wrt to
that recipe, i see (replacing ":" with newlines for prettiness):

$ bitbake-env -r netbase FILESPATH | tr : '\n'
Parsing recipes..done.
# FILESPATH="${@base_set_filespath(["${FILE_DIRNAME}/${BP}",
"${FILE_DIRNAME}/${BPN}", "${FILE_DIRNAME}/files"], d)}"
FILESPATH="/rday/linux-gnueabi
/rday/arm
/rday/build-linux
/rday/pn-netbase
/rday/dm814x-evm
/rday/ti814x
/rday/armv7a
/rday/
/rday/class-target
/rday/forcevariable
/rday/libc-glibc
/rday/
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/linux-gnueabi
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/arm
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/build-linux
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/pn-netbase
... snip ...

  see?  how much clearer can i make this?  if you prefer adding the
silly colon to that line, as in:

FILESEXTRAPATHS_prepend := "/rday:"

it ends up making exactly *no* difference.  none.  zip.  squat.
you're quite welcome to add as many as you like:

FILESEXTRAPATHS_prepend := "/rday:::::::::::::::::"

and it will make no difference since, as i read it, you are not
specifying a value to be literally prepended to FILESPATH, you are
identifying a *directory* to be processed (by, i believe, def
base_set_filespath(path, d) in utils.bbclass).  if for some bizarre
reason you like to add that superfluous ":", knock yourself out, but
don't claim that it is somehow *necessary* because of a
colon-separated list of directories.

  on the other hand, it *is* useful if you want to add, say, *two*
dirtectories, as in:

FILESEXTRAPATHS_prepend := "/rday1:/rday2"

which will produce (predictably):

FILESPATH="/rday1/linux-gnueabi
/rday1/arm
/rday1/build-linux
/rday1/pn-netbase
/rday1/dm814x-evm
/rday1/ti814x
/rday1/armv7a
/rday1/
/rday1/class-target
/rday1/forcevariable
/rday1/libc-glibc
/rday1/
/rday2/linux-gnueabi
/rday2/arm
/rday2/build-linux
/rday2/pn-netbase
/rday2/dm814x-evm
/rday2/ti814x
/rday2/armv7a
/rday2/
/rday2/class-target
/rday2/forcevariable
/rday2/libc-glibc
/rday2/
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/linux-gnueabi
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/arm
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/build-linux
/home/rpjday/OE/dist/layers/oe-core/meta/recipes-core/netbase/netbase-5.0/pn-netbase
... snip ...

so why am i so fixated on this?  thanks for asking.

  i find the current, widespread usage of this form (with the colon):

FILESEXTRAPATHS_prepend := "${THISDIR}/patches:"

potentially misleading since people reading the .bbappend file will
(quite naturally) assume that, hey, that must represent a literal
prepend since it includes the colon.  and they will be wrong.  in
fact, i'm willing to bet that, based on that ubiquitous usage, many
people who wrote .bbappend files had no idea that that's what was
happening.

  i'm willing to bet that, in many cases, those people just added what
they thought was a simple overriding directory name, having no clue
that that was being expanded into multiple directories, one of which
just *happened* to match the directory name they supplied.  so things
worked out, but not for the reason they thought.

  as it stands, the way things are done now will work just fine, of
course.  but i think it's visually misleading, and not very well
explained.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-1936067213-1354885501=:5574--
