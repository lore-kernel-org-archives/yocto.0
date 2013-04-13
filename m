Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2EA6E00B0A
	for <yocto@yoctoproject.org>; Sat, 13 Apr 2013 13:39:27 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:41089 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UR7EI-0004Tl-2F; Sat, 13 Apr 2013 16:39:22 -0400
Date: Sat, 13 Apr 2013 16:39:19 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tom Zanussi <tom.zanussi@intel.com>
In-Reply-To: <1365870464.10664.17.camel@empanada>
Message-ID: <alpine.DEB.2.02.1304131321520.10291@oneiric>
References: <alpine.DEB.2.02.1304131112290.9253@oneiric>
	<1365870464.10664.17.camel@empanada>
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
Subject: Re: couple questions about kernel dev manual, section 2
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
X-List-Received-Date: Sat, 13 Apr 2013 20:39:29 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 13 Apr 2013, Tom Zanussi wrote:

> On Sat, 2013-04-13 at 11:20 -0400, Robert P. J. Day wrote:
> > some oddities in section 2.2.1 of the current kernel dev manual.
> > first, there's:
> >
> > "The append file should initially contain the following text:
> >
> >      FILESEXTRAPATHS := "${THISDIR}/${PN}"
> >
> >   i was under the impression that the standard line would be:
> >
> >      FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> >
> > would it not? to make sure you can support potential layers on top of
> > layers, no?  if you absolutely *know* that won't happen, then, sure,
> > that will work, but i think the wording above is unnecessarily
> > restrictive.
>
> Right, that should be changed to match the recommendation in the Poky
> Reference manual.
>
> >   also, right underneath that, one reads:
> >
> > "If you add any new files that modify the kernel recipe, you need to
> > place them in your layer in the following area:
> >
> >      <your-layer>/recipes-kernel/linux/linux-yocto/"
> >
> > IIRC, you *can* put them there but you don't *need* to. in fact, tom
> > zanussi's kernel labs place extra files simply under a "files/"
> > subdirectory (after setting FILESEXTRAPATHS to pick up that
> > directory). so, again, some wording that is unnecessarily strong and
> > somewhat misleading.
> >
> >   thoughts?
> >
>
> That text assumes you've used (the corrected) from the paragraph above:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

  that may be true, but it's not clear from the text that that claim
is based on the earlier (corrected) setting.  i just get itchy when i
see inappropriately strong claims.

> which means you do need to put the files in the linux-yocto/ subdir (for
> a linux-yocto bbappend), since we're dealing with a .bbappend here.
>
> If we were talking about a recipe, then yes, we wouldn't *need* to put
> them there but could also put them in any of the default subdirs such as
> files/.  There's a little more discussion about it here:
>
> https://lists.yoctoproject.org/pipermail/yocto/2013-February/014419.html
>
> Seems like it might be good to explicitly explain all this or at least
> point out the difference and help avoid the confusion...

  once upon a time, i dug into this whole FILESEXTRAPATHS issue and i
was surprised to find how it worked, which i documented:

http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files

it may be that i have to revisit that to make sure that page is up to
date, but i don't think any of the documentation makes it abundantly
clear how FILESEXTRAPATHS truly works -- that it adds an entire *set*
of additional directories to FILESPATH:

http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files#Examining_FILESPATH.2C_and_how_FILESEXTRAPATHS_works

certainly, the variable glossary doesn't seem to mention that:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-FILESEXTRAPATHS


unless, of course, i've misunderstood this completely.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

