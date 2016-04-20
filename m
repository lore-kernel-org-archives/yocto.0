Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11173E00ED1; Wed, 20 Apr 2016 12:01:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96800E00E3E
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 12:00:42 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160420190039394_0484;
	Wed, 20 Apr 2016 19:00:39 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=38465 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1asxO1-0002lY-8l; Wed, 20 Apr 2016 15:02:05 -0400
Date: Wed, 20 Apr 2016 15:00:28 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Martin Jansa <martin.jansa@gmail.com>
In-Reply-To: <20160420180421.GD2561@jama>
Message-ID: <alpine.LFD.2.20.1604201453090.1020@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Wed, 20 Apr 2016 19:01:02 -0000
Content-Type: text/plain; charset=US-ASCII

On Wed, 20 Apr 2016, Martin Jansa wrote:

> On Wed, Apr 20, 2016 at 12:42:42PM -0400, Robert P. J. Day wrote:
> >
> >   (i'm using wind river linux for this, but i'm getting the impression
> > that this might be coming from YP, so i'm going to ask here.)
> >
> >   while i'm trying to reduce this to a minimal test case, here's the
> > really annoying issue i'm running into.
> >
> >   i created a BSP layer, and under recipes-kernel/linux/ i created
> > three subdirs to hold SRC_URI content:
> >
> >  * linux-windriver-3.14/         (3.14-specific)
> >  * linux-windriver-4.1/          (4.1-specific)
> >  * linux-windriver/              (applicable to either kernel)
> >
> > in addition, i have subdirectories for three possible target boards,
> > and i also extended MACHINEOVERRIDES to define a common grouping for
> > two of those boards. and here's the problem.
> >
> >   i have files:
> >
> >  * uio.scc
> >  * uio.cfg
> >  * uio.patch
> >
> > that used to apply to the two common boards, but should now apply to
> > all three, for all kernels.  so i used to have the directory
> > structure:
> >
> >   linux-windriver/
> >     common/               (represents the 2 out of 3 related boards)
> >       uio.scc
> >       uio.cfg
> >       uio.patch
> >
> > and the uio stuff was located just fine when building for either of
> > the two target boards for which "common" was my extension to
> > MACHINEOVERRIDES.
> >
> >   now that it applies to all three boards, i did this just as a test
> > (as you can see, unnecessary duplication of the uio files):
> >
> >   linux-windriver/
> >     uio.scc
> >     uio.cfg
> >     uio.patch
> >     common/
> >       uio.scc
> >       uio.cfg
> >       uio.patch
> >
> > and all three boards can now build. however, when i went to get rid of
> > the redundant stuff and reduce it to:
> >
> >   linux-windriver/
> >     uio.scc
> >     uio.cfg
> >     uio.patch
> >     common/
> >       ... remaining stuff that still applies only to common ...
> >
> > i can still build that third board, but now the two "common" boards
> > fail to process the kernel fragment uio.cfg. having moved that
> > completely common uio content out of the subdirectory and right under
> > linux-windriver now breaks the boards for which there is still a
> > subdirectory, for no reason that i can see.
> >
> >   it's as if, once the build process sees a more specific
> > MACHINEOVERRIDES directory from which to get content, it will no
> > longer look elsewhere, even above for more generically appropriate
> > content.
> >
> >   am i misunderstanding something? it seems that the common thread
> > running through all my problems with this is *.cfg files at the top
> > level of one of these directories.
> >
> >   anyone seen anything like this?
>
> Did you check FILESPATH variable to see order of directories how they
> are searched?
>
> e.g.:
> $ bitbake -e sed | grep ^FILESPATH= | sed "s/FILESPATH=\"//g; s/\"$//g; s/:/\n/g;"
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/nodistro
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/nodistro
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/nodistro
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qemux86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemux86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemux86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qemuall
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemuall
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemuall
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/x86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/x86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/x86
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/i586
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/i586
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/i586
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/
> /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/

  BTW, my (heavily-snipped) FILESPATH includes:

/home/rpjday/swe/recipes-kernel/linux/linux-windriver-4.1/mxeiii
/home/rpjday/swe/recipes-kernel/linux/linux-windriver/mxeiii
/home/rpjday/swe/recipes-kernel/linux/linux-windriver-4.1/
/home/rpjday/swe/recipes-kernel/linux/linux-windriver/

i chopped out quite a number of lines that have no value to this
build, but you can see the search order, particularly the second and
fourth lines:

/home/rpjday/swe/recipes-kernel/linux/linux-windriver/mxeiii
/home/rpjday/swe/recipes-kernel/linux/linux-windriver/

which, as i understand it, means it will look in that mxeiii-specific
directory and, failing that, then look in the higher level one. that's
how i'm reading FILESPATH, what am i somehow misinterpreting?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================




