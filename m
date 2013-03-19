Return-Path: <tom.zanussi@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9BE9E006C3
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 06:43:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 19 Mar 2013 06:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,872,1355126400"; d="scan'208";a="281632914"
Received: from unknown (HELO [10.255.13.116]) ([10.255.13.116])
	by orsmga001.jf.intel.com with ESMTP; 19 Mar 2013 06:43:02 -0700
Message-ID: <1363700581.901.18.camel@empanada>
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: "Maxin B. John" <maxin.john@enea.com>
Date: Tue, 19 Mar 2013 08:43:01 -0500
In-Reply-To: <20130319130619.GA41031@sestofb10.enea.se>
References: <20130319130619.GA41031@sestofb10.enea.se>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
X-Mailman-Approved-At: Tue, 19 Mar 2013 07:06:57 -0700
Cc: yocto@yoctoproject.org
Subject: Re: perf build breaks in poky master branch
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
X-List-Received-Date: Tue, 19 Mar 2013 13:43:04 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit


On Tue, 2013-03-19 at 14:06 +0100, Maxin B. John wrote:
> Hi,
> 
> Perf build fails while trying to build core-image-minimal for qemux86, 

Hi,

Richard has just pushed a fix for a thinko in the patch, please pull and
try again.

Tom

> $ git clone git://git.yoctoproject.org/poky
> $ cd poky
> $ source oe-init-build-env
> $ bitbake core-image-minimal
> Pseudo is not present but is required, building this first before the main build
> Loading cache: 100%
> |###############################################################################|
> ETA:  00:00:00
> Loaded 347 entries from dependency cache.
> ERROR: ExpansionError during parsing
> /home/majo/master/poky/meta/recipes-kernel/perf/perf.bb:
> Failure expanding variable do_package: ExpansionError: Failure
> expanding variable do_package, expression was
> bb.data.setVar('PKGV',
> '${@get_kernelversion('/home/majo/master/poky/build/tmp/sysroots/qemux86/usr/src/kernel').split("-")[0]}',
> d)
>     # Change the following version to cause sstate to invalidate the
>     # package
>     # cache.  This is useful if an item this class depends on changes
>     # in a
>     # way that the output of this class changes.  rpmdeps is a good
>     # example
>     # as any change to rpmdeps requires this to be rerun.
>     # PACKAGE_BBCLASS_VERSION = "1"
> 
>     # Init cachedpath
>     global cpath
>     cpath = oe.cachedpath.CachedPath()
> 
>     ###########################################################################
>     # Sanity test the setup
>     ###########################################################################
> 
>     packages = (d.getVar('PACKAGES', True) or "").split()
>     if len(packages) < 1:
>         bb.debug(1, "No packages to build, skipping do_package")
>         return
> 
>     workdir = d.getVar('WORKDIR', True)
>     outdir = d.getVar('DEPLOY_DIR', True)
>     dest = d.getVar('D', True)
>     dvar = d.getVar('PKGD', True)
>     pn = d.getVar('PN', True)
> 
>     if not workdir or not outdir or not dest or not dvar or not pn:
>         bb.error("WORKDIR, DEPLOY_DIR, D, PN and PKGD all must be
> defined, unable to package")
>         return
> 
>     bb.build.exec_func("package_get_auto_pr", d)
> 
>     ###########################################################################
>     # Optimisations
>     ###########################################################################
> 
>     # Contunually rexpanding complex expressions is inefficient,
>     # particularly when
>     # we write to the datastore and invalidate the expansion cache.
>     # This code
>     # pre-expands some frequently used variables
> 
>     def expandVar(x, d):
>         d.setVar(x, d.getVar(x, True))
> 
>     for x in 'PN', 'PV', 'BPN', 'TARGET_SYS', 'EXTENDPRAUTO':
>         expandVar(x, d)
> 
>     ###########################################################################
>     # Setup PKGD (from D)
>     ###########################################################################
> 
>     for f in (d.getVar('PACKAGEBUILDPKGD', True) or '').split():
>         bb.build.exec_func(f, d)
> 
>     ###########################################################################
>     # Split up PKGD into PKGDEST
>     ###########################################################################
> 
>     cpath = oe.cachedpath.CachedPath()
> 
>     for f in (d.getVar('PACKAGESPLITFUNCS', True) or '').split():
>         bb.build.exec_func(f, d)
> 
>     ###########################################################################
>     # Process PKGDEST
>     ###########################################################################
> 
>     # Build global list of files in each split package
>     global pkgfiles
>     pkgfiles = {}
>     packages = d.getVar('PACKAGES', True).split()
>     pkgdest = d.getVar('PKGDEST', True)
>     for pkg in packages:
>         pkgfiles[pkg] = []
>         for walkroot, dirs, files in cpath.walk(pkgdest + "/" + pkg):
>             for file in files:
>                 pkgfiles[pkg].append(walkroot + os.sep + file)
> 
>     for f in (d.getVar('PACKAGEFUNCS', True) or '').split():
>         bb.build.exec_func(f, d)
>  which triggered exception AttributeError: 'NoneType' object has no
> attribute 'split'
> NOTE: Error during finalise of
> /home/majo/master/poky/meta/recipes-kernel/perf/perf.bb
> ERROR: Command execution failed: Exited with 1
> 
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
>   



