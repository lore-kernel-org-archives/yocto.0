Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECE9EE00D0A; Wed, 20 Apr 2016 12:05:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.86 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp486.redcondor.net (smtp486.redcondor.net [208.80.204.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89117E0071E
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 12:05:55 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp486.redcondor.net ({6695537a-536a-45f9-a249-877c85428649})
	via TCP (outbound) with ESMTPS id 20160420190550830_0486;
	Wed, 20 Apr 2016 19:05:50 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=27808 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1asxT1-0003KS-Hs; Wed, 20 Apr 2016 15:07:15 -0400
Date: Wed, 20 Apr 2016 15:05:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
Message-ID: <alpine.LFD.2.20.1604201501330.1788@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
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
X-List-Received-Date: Wed, 20 Apr 2016 19:05:57 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1211792477-1461179142=:1788"

--8323328-1211792477-1461179142=:1788
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 20 Apr 2016, Bruce Ashfield wrote:

>
>
> On Wed, Apr 20, 2016 at 2:31 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>       On Wed, 20 Apr 2016, Martin Jansa wrote:
>
>       > On Wed, Apr 20, 2016 at 12:42:42PM -0400, Robert P. J. Day wrote:
>       > >
>       > >   (i'm using wind river linux for this, but i'm getting the impression
>       > > that this might be coming from YP, so i'm going to ask here.)
>       > >
>       > >   while i'm trying to reduce this to a minimal test case, here's the
>       > > really annoying issue i'm running into.
>       > >
>       > >   i created a BSP layer, and under recipes-kernel/linux/ i created
>       > > three subdirs to hold SRC_URI content:
>       > >
>       > >  * linux-windriver-3.14/         (3.14-specific)
>       > >  * linux-windriver-4.1/          (4.1-specific)
>       > >  * linux-windriver/              (applicable to either kernel)
>       > >
>       > > in addition, i have subdirectories for three possible target boards,
>       > > and i also extended MACHINEOVERRIDES to define a common grouping for
>       > > two of those boards. and here's the problem.
>       > >
>       > >   i have files:
>       > >
>       > >  * uio.scc
>       > >  * uio.cfg
>       > >  * uio.patch
>       > >
>       > > that used to apply to the two common boards, but should now apply to
>       > > all three, for all kernels.  so i used to have the directory
>       > > structure:
>       > >
>       > >   linux-windriver/
>       > >     common/               (represents the 2 out of 3 related boards)
>       > >       uio.scc
>       > >       uio.cfg
>       > >       uio.patch
>       > >
>       > > and the uio stuff was located just fine when building for either of
>       > > the two target boards for which "common" was my extension to
>       > > MACHINEOVERRIDES.
>       > >
>       > >   now that it applies to all three boards, i did this just as a test
>       > > (as you can see, unnecessary duplication of the uio files):
>       > >
>       > >   linux-windriver/
>       > >     uio.scc
>       > >     uio.cfg
>       > >     uio.patch
>       > >     common/
>       > >       uio.scc
>       > >       uio.cfg
>       > >       uio.patch
>       > >
>       > > and all three boards can now build. however, when i went to get rid of
>       > > the redundant stuff and reduce it to:
>       > >
>       > >   linux-windriver/
>       > >     uio.scc
>       > >     uio.cfg
>       > >     uio.patch
>       > >     common/
>       > >       ... remaining stuff that still applies only to common ...
>       > >
>       > > i can still build that third board, but now the two "common" boards
>       > > fail to process the kernel fragment uio.cfg. having moved that
>       > > completely common uio content out of the subdirectory and right under
>       > > linux-windriver now breaks the boards for which there is still a
>       > > subdirectory, for no reason that i can see.
>       > >
>       > >   it's as if, once the build process sees a more specific
>       > > MACHINEOVERRIDES directory from which to get content, it will no
>       > > longer look elsewhere, even above for more generically appropriate
>       > > content.
>       > >
>       > >   am i misunderstanding something? it seems that the common thread
>       > > running through all my problems with this is *.cfg files at the top
>       > > level of one of these directories.
>       > >
>       > >   anyone seen anything like this?
>       >
>       > Did you check FILESPATH variable to see order of directories how they
>       > are searched?
>       >
>       > e.g.:
>       > $ bitbake -e sed | grep ^FILESPATH= | sed "s/FILESPATH=\"//g; s/\"$//g; s/:/\n/g;"
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/nodistro
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/nodistro
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/nodistro
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qemux86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemux86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemux86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qemuall
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemuall
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemuall
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/x86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/x86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/x86
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/i586
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/i586
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/i586
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/
>       > /OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/
>
>   yes, and they all look fine, but here's the latest development which
> should clarify things.
>
>   here's the structure of the generic linux-windriver/ directory,
> under which the search should look for anything which hasn't matched
> anything more specific in terms of a kernel version:
>
> linux-windriver/
> ├── 0001-UIO-support-for-FPGA-select-CONFIG_UIO_XII_FPGA-y.patch
> ├  mxeiii
>    ... mxe board specific stuff but *no* uio-related stuff
> ├── uio.cfg
> └── uio.scc
>
>   so what we have is the UIO stuff *immediately* under
> linux-windriver/, which is where it should be found (there is no other
> UIO content anywhere else in the recipe directory).
>
>   after doing the configure, here's the content of
> bitbake_build/tmp/work-shared/ax/kernel-source/.kernel-meta/cfg/standard/ax/config.log:
>
> [INFO] Sanitizing .kernel-meta/cfg/ax/new_board.cfg
> [INFO] Sanitizing .kernel-meta/cfg/linux-windriver/uio.cfg
> [INFO] Sanitizing .kernel-meta/cfg/kernel-meta/cfg/systemd.cfg
>
> note carefully how that second line shows clearly where the uio.cfg
> file is being found(?): linux-windriver/uio.cfg
>
> and that's for the board that works.
>
>   however, for the second board (the mxeiii for which there *is* a
> subdirectory that should be examined), here's the equivalent
> config.log file:
>
> [INFO] Sanitizing .kernel-meta/cfg/mxeiii/new_board.cfg
> [INFO] Sanitizing .kernel-meta/cfg/uio.cfg
> [ERROR] Kern frag .kernel-meta/cfg/uio.cfg does not exist
>
> note the difference in the second line in the two cases -- the
> subdirectory name "linux-windriver" has disappeared, hence the second
> case fails miserably in locating the config fragment file uio.cfg.
>
>   it's as if (and i'm just making this up now) the fact that a more
> specific "mxeiii" subdirectory under linux-windriver/ somehow screws
> up the search process. (if i redundantly duplicate those UIO files in
> the mxeiii/ subdirectory, then everything works fine, but that should
> *not* be necessary.)
>
>   is there something about the SRC_URI search order that i'm unaware
> of? should each SRC_URI item start a brand new, independent search?
> i've been fighting with this for a while, and it simply makes no sense
> to me.
>
> You haven't supplied your SRC_URI in the question ... what does it
> look like ?

the first part is:

SRC_URI += " \
        file://new_board.scc \
        file://uio.scc \
"

there's more but the above is where the problem appears.

> It has no relation to the SRC_URI, probably a run of the mill bug in
> the processing code. I'd suggest taking it up with Wind River
> support.

  already have, the person i chatted with muttered something about
backtracking to YP code which is why i thought i would ask here. i've
seen problems related to this before which seem related to kernel
config fragment files being at the very top of a kernel recipe
subdirectory.

> Alternatively, if you have this somewhere that I clone and launch a
> test build, I can help you out .. but I won't be able to easily
> reproduce that situation from scratch.

  i'm building a minimal test case to see if i can duplicate this. but
i've definitely reproduced this issue several times today alone.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1211792477-1461179142=:1788--
