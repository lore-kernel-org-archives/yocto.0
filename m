Return-Path: <Michael_E_Brown@Dell.com>
Received: from ausxipps301.us.dell.com (ausxipps301.us.dell.com
	[143.166.148.223])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D664E0059F
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2011 19:20:49 -0800 (PST)
X-Loopcount0: from 10.9.160.253
From: Michael E Brown <Michael_E_Brown@Dell.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Thu, 10 Nov 2011 21:20:47 -0600
In-Reply-To: <CAEsOVNcTkNVbXB6UtnJC32o=pa3XKW6ftTKEmmLUFB7sS5bZcg@mail.gmail.com>
References: <DB6E482E89290547898851B8CC9D81108D109394@AUSX7MCPS302.AMER.DELL.COM>
	<CAEsOVNcTkNVbXB6UtnJC32o=pa3XKW6ftTKEmmLUFB7sS5bZcg@mail.gmail.com>
Organization: Dell, Inc
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1320981647.23774.1.camel@phenom.localdomain>
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SH4 build failure fix
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Michael_E_Brown@Dell.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 11 Nov 2011 03:20:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-11-10 at 16:50 -0600, McClintock Matthew-B29882 wrote:
> On Thu, Nov 10, 2011 at 4:36 PM,  <Michael_E_Brown@dell.com> wrote:
> > I'm presently working on porting the build environment for three existing embedded projects over to use yocto. Unfortunately, the project which has to go first is based on an SH4 chip, which isn't on the officially supported yocto architecture list. I gave the compile a go, and ran into a build error in gcc-cross-intermediate:
> >
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find crti.o: No such file or directory
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find -lc
> > build-edison-sh4/tmp/sysroots/i686-linux/usr/bin/sh4-poky-linux/sh4-poky-linux-ld: cannot find crtn.o: No such file or directory
> >
> > Trying to figure out the source of this build error, I found that base openembedded does compile this package successfully, so I started focusing on the differences. I narrowed the build failure down to this line in gcc-cross4.inc, which is present in openembedded, but absent in yocto/poky:
> >    gcc-cross4.inc
> >    EXTRA_OECONF_append_sh4 = " --with-multilib-list= --enable-incomplete-targets "
> >
> > After I added this one line, I was able to sucessfully build a base yocto image for qemu sh4. Is it possible to get this added to the upstream yocto build?
> 
> Can you find the offending commit with 'git blame'?

Nope. It's been exactly that way since it was first checked in to poky,
as far as I can tell. All of the commits referencing this file are
missing this line.

Additionally, upstream openembedded has one additional
"sh4-multilib.patch" that isnt carried in poky. I dont know if I need
this, actually. It builds without it.

$  git log --follow  ./gcc-cross4.inc 
commit 29d6678fd546377459ef75cf54abeef5b969b5cf
Author: Richard Purdie <rpurdie@linux.intel.com>
Date:   Fri Aug 27 15:14:24 2010 +0100

    Major layout change to the packages directory
    
    Having one monolithic packages directory makes it hard to find
things
    and is generally overwhelming. This commit splits it into several
    logical sections roughly based on function, recipes.txt gives more
    information about the classifications used.
    
    The opportunity is also used to switch from "packages" to "recipes"
    as used in OpenEmbedded as the term "packages" can be confusing to
    people and has many different meanings.
    
    Not all recipes have been classified yet, this is just a first pass
    at separating things out. Some packages are moved to meta-extras as
    they're no longer actively used or maintained.
    
    Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>

commit 70abb2e3e8671b3d10c7db5a16e37d646014a4b6
Author: Richard Purdie <rpurdie@linux.intel.com>
Date:   Wed Mar 31 13:43:09 2010 +0100

    gcc-cross: Use NATIVEDEPS
    
    Signed-off-by: Richard Purdie <rpurdie@linux.intel.com>

commit 91d2e7d1bc725f2c3a39b4c7413bf96e85d17375
Author: Joshua Lock <josh@linux.intel.com>
Date:   Tue Dec 22 15:41:01 2009 +0000

    gcc: add gettext to dependencies
    
    Signed-off-by: Joshua Lock <josh@linux.intel.com>

commit b905e04eae5e557199c689ac63f56f996c3da27c
Author: Richard Purdie <richard@openedhand.com>
Date:   Tue Mar 18 10:44:24 2008 +0000

    gcc: Add missing files + changes from the last commit
    
    git-svn-id: https://svn.o-hand.com/repos/poky/trunk@4039
311d38ba-8fff-0310-9ca6-ca027cbcb966



