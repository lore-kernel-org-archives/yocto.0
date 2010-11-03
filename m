Return-Path: <qing.he@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 820944C803A5
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 03:03:07 -0500 (CDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Nov 2010 01:03:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,288,1286175600"; d="scan'208";a="623044242"
Received: from qhe2-db.sh.intel.com ([10.239.13.109])
	by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2010 01:02:55 -0700
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PDYEr-000749-DR; Wed, 03 Nov 2010 15:58:33 +0800
Date: Wed, 3 Nov 2010 15:58:33 +0800
From: Qing He <qing.he@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20101103075833.GA26968@qhe2-db>
References: <20101021083308.GB18344@qhe2-db> <4CC059D9.8050208@windriver.com>
	<20101022014714.GE18344@qhe2-db> <4CCEDE9F.7000707@windriver.com>
MIME-Version: 1.0
In-Reply-To: <4CCEDE9F.7000707@windriver.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: zypper and poky architectures
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 08:03:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, 2010-11-01 at 23:37 +0800, Mark Hatle wrote:
> (Sorry for the late response, today's my first day back from CELF)
> 
> On 10/21/10 8:47 PM, Qing He wrote:
> > On Thu, 2010-10-21 at 23:18 +0800, Mark Hatle wrote:
> >> On 10/21/10 3:33 AM, Qing He wrote:
> >>>     1. what uses for independent packages is called "noarch", "all" is not
> >>>        recognized, something depends on update-rc.d won't be installed
> >>>        because of missing dependency
> >>
> >> We can certainly look into translating "all" to "noarch" post 0.9.  That might
> >> make it easier for people coming from the RPM world, to understand what is in
> >> the package.
> >>
> >>>     1. rename *.all.rpm to *.noarch.rpm
> >>
> >> We can certainly do this easily.
> >
> > If noarch is universally used in RPM word, I think we should use it.
> 
> My preference is staying with the Poky 'arch' naming...  but renaming to noarch 
> is fine, and unless Richard or someone else sees an issue it could be used as a 
> temporary workaround.  (There are a few places like rootfs generation that we'll 
> have to translate "all" to "noarch".. if we decide to do this.)

This is good. I may test if this works and let's see if Richard has any
comments on it.

> > Thanks for the info. If we are going for dynamic platform specs, it
> > doesn't really matter whether we have things like qemuarm or not, does it?
> 
> Ya, if we are able to do things dynamically, then the naming is no longer 
> important.  That's really my hope as to how we implement the RPM components.

It seems to be an elegant solution, but need some efforts to find out
how this can fit in current zypper.

> 
> >>
> >>
> >>> That would be some work to do, maybe 1.0 is a good time to get zypper
> >>> and package upgrade truely working.
> >>
> >> Yes, we also need to get multi-arch as well.. (i.e. 32-bit and 64-bit at the
> >> same time) working.  I'm guessing there will be some Zypper interactions there
> >> as well.
> >>
> >
> > I don't really have ideas how this is done. I think on debian this is
> > actually avoided and i386 packages are repackaged as lib32xxx for x86_64
> > platform.
> 
> Since Poky does not yet have the ability to deal with Multiarch builds, this is 
> something we will have to work on designing as we get closer to Yocto 1.0.
> 
> Within RPM, the rpm package manager understands all of the "types" of each file 
> in the system.  When you ask to install (note, not upgrade) two packages of the 
> same name the system checks the files.
> 
> When a conflict is identified, if the contents of the files are the same, 
> nothing is done -- no error is generated.
> 
> If the contents of the file are different, and the file is tagged as a 
> configuration file, then either first or last in wins (I don't remember which) 
> -- no error is generated.
> 
> If the contents of the file are different, and the file type is NOT ELF (and the 
> above has no already detected), then an error is generated and installation stops.
> 
> if the contents of the file are different, and the file type is ELF... then 
> there is a weighting algorithm that is used.  Depending on the configuration the 
> following could happen:
> 
> multiarch is not allowed -- an error is generated
> 
> multiarch is allowed -- one of the components though is not an allowed multiarch 
> -- an error is generated (this could be the mips case of o32, n32 and n64 on the 
> same system.  You could prevent someone from installing say o32 binaries.)
> 
> multiarch is allowed -- a 'winner' is chosen based on the system configuration. 
>   The winner is installed, and the loser is not installed -- no error is generated.
> 

Hmm, this is not quite what I've been thinking about. The problem is
the shared library, and the library path renaming.

The above winner works fine for executables, nobody needs different arch
versions of a same binary, but it's possible that several different
archs are used for different binaries, that's where the library problem
comes in.

Let's say we have an i586 `ls', and an x86_64 `cp' that coexist in the same
box, they would possibly link to two different ld-linux.so and libc.so (this
scenario is common requirement on x86, esp. x86_64). If 32bit rpms can
be installed to 64bit platforms directly without any modification, that
would be great.

I guess the deb way to solve this is to create a special kind of
package, namely `lib32c_2.10.1-r1.x86_64.deb', which installs something
like /lib32/ld-linux-i586.so.2. If the executable can links to it, the
dedicated ld.so cache can get most of its library path right. However,
sadly, this special lib32 and maybe the 32bit executable package, may
not be installable on pure i586 archs.


So should this kind of multiarch be concerned, where multiarch packages
coexist instead of being exlusive?

Thanks,
Qing



