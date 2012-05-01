Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33D0FE01374
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 14:33:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 01 May 2012 14:33:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="137611942"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by azsmga001.ch.intel.com with ESMTP; 01 May 2012 14:33:02 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <1335904605.27056.161.camel@elmorro>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
	<1335884317.27056.93.camel@elmorro>
	<CACW_hTaf6QY0g-65=OqWcVVfZ55LG3vFvrMiSTfd17cVYXHFUg@mail.gmail.com>
	<1335904605.27056.161.camel@elmorro>
Date: Tue, 01 May 2012 16:33:03 -0500
Message-ID: <1335907983.27056.185.camel@elmorro>
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
X-List-Received-Date: Tue, 01 May 2012 21:33:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-01 at 15:36 -0500, Tom Zanussi wrote:
> On Tue, 2012-05-01 at 22:23 +0200, Frans Meulenbroeks wrote:
> > 2012/5/1 Tom Zanussi <tom.zanussi@intel.com>:
> > > Hi Frans,
> > >
> > > Thanks for your input, comments below...
> > >
> > > On Tue, 2012-05-01 at 16:21 +0200, Frans Meulenbroeks wrote:
> > >> Dear all,
> > >>
> > >> In this email I'd like to share my experiences wrt creating a new bsp.
> > >> I hope this is useful for someone (e.g. for updating the doc). Feel
> > >> free to point out the n00bish errors I made, or where I could have
> > >> improved.
> > >>
> > >> Aim was to bring my current board (powerpc mpc8313e based) onto yocto 1.2
> > >> This board is already working under oe classic.
> > >>
> > >> I started fetching poky-denzil-7.0.
> > >> Tested by building core-image-minimal. No problems here.
> > >>
> > >> Then I wanted to add my own bsp. Decided to use the bsp-guide as a starter.
> > >>
> > >> Tried to use yocto-bsp with the standard 7.0 setup (where there is a
> > >> poky-denzil-7.0-build dir adjacent to the soruce dir).
> > >> yocto-bsp when invoked complained with:
> > >> IOError: [Errno 2] No such file or directory:
> > >> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
> > >>
> > >
> > > This should be fixed by the fix for this bug:
> > >
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=2219
> > >
> > > which didn't make it into the release, and hasn't been pulled into
> > > master yet either...
> > >
> > > But actually that should only apply to yocto-kernel, not yocto-bsp.
> > >
> > > Can you provide more info on your exact setup and commands you used?
> > 
> > I just downloaded denzel according to the quickstart guide.
> > My build dir was outside the source tree.
> > 
> > I did
> >     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
> >      $ tar xjf poky-denzil-7.0.tar.bz2
> >      $ source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0-build
> > Tweaked local.conf a little (parallel make and bbthreads and rm_work).
> > Then build core-image-minimal for for the standard machine (x68 emu or so)
> > 
> > after that in the build dir I did (if I recall correctly)
> > yocto-bsp create mpc8313 powerpc
> > 
> > That gave the error.
> > I think the exact message is still on the console of my build system
> > at work. Will check, if so I can email it tomorrow.
> > 
> 
> No need, I just tried it myself here using the instructions from your
> e-mail of a few minutes ago and saw the error after a couple steps
> through.
> 
> The following patch fixed it:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-fixes-2219-2330
> 
> I can't fix it in the release of course, but I'll at least submit a
> patch to the release notes and the quick start...
> 

OK, there's now an entry for this in the Release Notes:

http://www.yoctoproject.org/download/yocto/yocto-project-1.2-release-notes-poky-7.0

Thanks for your input on this,

Tom


