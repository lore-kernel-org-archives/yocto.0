Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B8F3E0140A
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 18:50:27 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 15 Apr 2013 18:48:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,480,1363158000"; d="scan'208";a="295410778"
Received: from wrk.jf.intel.com (HELO localhost) ([10.7.202.72])
	by orsmga001.jf.intel.com with ESMTP; 15 Apr 2013 18:50:26 -0700
Date: Mon, 15 Apr 2013 18:47:46 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: Mats Liljegren <mats.liljegren@enea.com>
Message-ID: <20130416014746.GB2583@wrk>
References: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
	<20130412191507.GA32099@wrk>
	<CA+xJJ1-gQst69uEivqCteJWyRPyEkcFrjNrPKLd9c1Lv8UEF2Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+xJJ1-gQst69uEivqCteJWyRPyEkcFrjNrPKLd9c1Lv8UEF2Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: How to archive source for a single package
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
X-List-Received-Date: Tue, 16 Apr 2013 01:50:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Apr 15, 2013 at 09:39:48AM +0200, Mats Liljegren wrote:
> I tried that but got the error shown below. This made me believe that
> archive-patched-source wasn't built for being included from a recipe:

Sorry, I had assumed you weren't using code that was any newer than
danny release. Lately we have been working on adding sstate support to
the various archive-*-source classes, so they are a bit more
complicated than they used to be.

I think your best bet is to inherit directly from archiver.bbclass and 
manually add the archive task in your kernel recipe.
For example:

  inherit archiver
  do_patch[postfuncs] += "do_archive_patched_sources "

Let me know if this does the trick.

-Kevin

> 
> $ bitbake virtual/kernel
> Loading cache: 100%
> |#######################################################################|
> ETA:  00:00:00
> Loaded 1234 entries from dependency cache.
> Parsing recipes: 100%
> |#####################################################################|
> Time: 00:00:00
> Parsing of 921 .bb files complete (920 cached, 1 parsed). 1232 targets, 86
> skipped, 7 masked, 0 errors.
> WARNING: No recipes available for:
> 
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-append/hv-cfg/hv-cfg_git.bbappend
> 
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-davinci-mainline.bbappend
> 
> /media/sdb1/fb/mlil/poky/meta-enea/recipes-kernel/linux/linux-qoriq-sdk.bbappend
> 
> Build Configuration:
> BB_VERSION        = "1.18.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.10"
> TARGET_SYS        = "arm-enea-linux-gnueabi"
> MACHINE           = "pandaboard"
> DISTRO            = "enea-lwrt-demo"
> DISTRO_VERSION    = "2.0"
> TUNE_FEATURES     = "armv7a vfp neon"
> TARGET_FPU        = "vfp-neon"
> meta              = "master-enea:312d568ef126816b1497cc097c93d8152b893732"
> meta-enea         = "master-enea:e81e7fe27b8ab3f9fe32faf2d6f95565d84945c0"
> meta-enea-lwrt    = "master-enea:b97c23337c29eb7b1fa72486ba67430a2975c98d"
> meta-ti           = "master:c14c386946e1ea341faeea292580e37d538d645d"
> 
> NOTE: Resolving any missing task queue dependencies
> NOTE: Preparing runqueue
> ERROR: An uncaught exception occured in runqueue, please see the failure
> below:
> ERROR: Running idle function
> Traceback (most recent call last):
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line 887, in
> RunQueue._execute_runqueue():
>                  else:
>     >                self.rqexe = RunQueueExecuteScenequeue(self)
> 
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/runqueue.py", line 1610, in
> RunQueueExecuteScenequeue.__init__(rq=<bb.runqueue.RunQueue instance at
> 0x89b1ab8>):
>                  locs = { "sq_fn" : sq_fn, "sq_task" : sq_taskname,
> "sq_hash" : sq_hash, "sq_hashfn" : sq_hashfn, "d" :
> self.cooker.configuration.data }
>     >            valid = bb.utils.better_eval(call, locs)
> 
>   File "/media/sdb1/fb/mlil/poky/bitbake/lib/bb/utils.py", line 341, in
> better_eval(source='sstate_checkhashes(sq_fn, sq_task, sq_hash, sq_hashfn,
> d)', locals={'sq_fn':
> ['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb'], 'sq_task': ['do_populate_sysroot', 'do_deploy',
> 'do_packagedata', 'do_package', 'do_package_write_ipk',
> 'do_dumpdata_create_diff_gz'], 'sq_hash':
> ['d701160f5f90ad867344decaa45e850c', '0e83bfbb44dd5f9bc1aab965401eafae',
> 'a043b351409fd10d0df4f4ef70ef5721', 'cccb256c759ec8ab2b45b033a8fd6fcb',
> '965fd06e4464ed8a1322b04c69e1e487', 'b71395177e7741c4182f3628ca82f6b9'],
> 'sq_hashfn': ['
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'],
> 'd': <bb.data_smart.DataSmart object at 0x28f31d0>}):
>      def better_eval(source, locals):
>     >    return eval(source, _context, locals)
> 
>   File "<string>", line 1, in <module>
>   File "sstate.bbclass", line 15, in
> sstate_checkhashes(sq_fn=['/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb',
> '/media/sdb1/fb/mlil/poky/meta-enea-lwrt/recipes-kernel/linux/
> linux-omap4_3.9.bb'], sq_task=['do_populate_sysroot', 'do_deploy',
> 'do_packagedata', 'do_package', 'do_package_write_ipk',
> 'do_dumpdata_create_diff_gz'], sq_hash=['d701160f5f90ad867344decaa45e850c',
> '0e83bfbb44dd5f9bc1aab965401eafae', 'a043b351409fd10d0df4f4ef70ef5721',
> 'cccb256c759ec8ab2b45b033a8fd6fcb', '965fd06e4464ed8a1322b04c69e1e487',
> 'b71395177e7741c4182f3628ca82f6b9'], sq_hashfn=['
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-', '
> sstate-linux-omap4-pandaboard-enea-linux-gnueabi-3.9-r0-pandaboard-3-'],
> d=<bb.data_smart.DataSmart object at 0x28f31d0>)
> KeyError: 'do_dumpdata_create_diff_gz'
> 
> NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun
> and all succeeded.
> 
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
> $
> 
> /Mats
> 
> 
> On Fri, Apr 12, 2013 at 9:15 PM, Kevin Strasser <
> kevin.strasser@linux.intel.com> wrote:
> 
> > Hi Mats,
> >
> > On Fri, Apr 12, 2013 at 03:58:01PM +0200, Mats Liljegren wrote:
> > > I need to archive source for virtual/kernel when building. This is needed
> > > for other builds that uses the bitbake build result.
> > >
> > > I saw that there is archive-patched-source class, which seems to do what
> > I
> > > want plus a lot more. The problem with it is that it seems to be intended
> > > for other use case than mine, which means that it does a lot more work
> > than
> > > I need.
> > >
> > The archive-*-source classes are primarily intended to assist in
> > providing materials for license compliance for the entire target
> > image. That being said, it shouldn't be too difficult to apply them
> > to a single package.
> >
> > > Is there a way to either tame archive-patched-source to only be
> > applicable
> > > for virtual/kernel, or is there other ways of accomplishing what I want?
> > >
> > I assume you have a line in your local.conf that looks something like:
> >
> >   INHERIT += "archive-patched-source"
> >
> > This means that the class will be inherited at the global level and
> > therefor applied to all packages. It's perfectly reasonable to inherit
> > the class in any specific package, by adding this line to its recipe:
> >
> >   inherit archive-patched-source
> >
> > I hope this gives you what you're looking for. Take a look at the
> > Yocto Project dev manual[1] for further information on the source
> > archiver.
> >
> > -Kevin
> >
> > [1]
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle
> >
> > > Regards
> > >   Mats
> >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

