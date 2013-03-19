Return-Path: <Maxin.John@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id A979BE0147F
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 06:06:22 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Tue, 19 Mar 2013 14:06:19 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id 0B560288B02;
	Tue, 19 Mar 2013 14:06:20 +0100 (CET)
Date: Tue, 19 Mar 2013 14:06:20 +0100
From: "Maxin B. John" <maxin.john@enea.com>
To: <tom.zanussi@linux.intel.com>
Message-ID: <20130319130619.GA41031@sestofb10.enea.se>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX03.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: yocto@yoctoproject.org
Subject: perf build breaks in poky master branch
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
X-List-Received-Date: Tue, 19 Mar 2013 13:06:23 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

Hi,

Perf build fails while trying to build core-image-minimal for qemux86, 
$ git clone git://git.yoctoproject.org/poky
$ cd poky
$ source oe-init-build-env
$ bitbake core-image-minimal
Pseudo is not present but is required, building this first before the main build
Loading cache: 100%
|###############################################################################|
ETA:  00:00:00
Loaded 347 entries from dependency cache.
ERROR: ExpansionError during parsing
/home/majo/master/poky/meta/recipes-kernel/perf/perf.bb:
Failure expanding variable do_package: ExpansionError: Failure
expanding variable do_package, expression was
bb.data.setVar('PKGV',
'${@get_kernelversion('/home/majo/master/poky/build/tmp/sysroots/qemux86/usr/src/kernel').split("-")[0]}',
d)
    # Change the following version to cause sstate to invalidate the
    # package
    # cache.  This is useful if an item this class depends on changes
    # in a
    # way that the output of this class changes.  rpmdeps is a good
    # example
    # as any change to rpmdeps requires this to be rerun.
    # PACKAGE_BBCLASS_VERSION = "1"

    # Init cachedpath
    global cpath
    cpath = oe.cachedpath.CachedPath()

    ###########################################################################
    # Sanity test the setup
    ###########################################################################

    packages = (d.getVar('PACKAGES', True) or "").split()
    if len(packages) < 1:
        bb.debug(1, "No packages to build, skipping do_package")
        return

    workdir = d.getVar('WORKDIR', True)
    outdir = d.getVar('DEPLOY_DIR', True)
    dest = d.getVar('D', True)
    dvar = d.getVar('PKGD', True)
    pn = d.getVar('PN', True)

    if not workdir or not outdir or not dest or not dvar or not pn:
        bb.error("WORKDIR, DEPLOY_DIR, D, PN and PKGD all must be
defined, unable to package")
        return

    bb.build.exec_func("package_get_auto_pr", d)

    ###########################################################################
    # Optimisations
    ###########################################################################

    # Contunually rexpanding complex expressions is inefficient,
    # particularly when
    # we write to the datastore and invalidate the expansion cache.
    # This code
    # pre-expands some frequently used variables

    def expandVar(x, d):
        d.setVar(x, d.getVar(x, True))

    for x in 'PN', 'PV', 'BPN', 'TARGET_SYS', 'EXTENDPRAUTO':
        expandVar(x, d)

    ###########################################################################
    # Setup PKGD (from D)
    ###########################################################################

    for f in (d.getVar('PACKAGEBUILDPKGD', True) or '').split():
        bb.build.exec_func(f, d)

    ###########################################################################
    # Split up PKGD into PKGDEST
    ###########################################################################

    cpath = oe.cachedpath.CachedPath()

    for f in (d.getVar('PACKAGESPLITFUNCS', True) or '').split():
        bb.build.exec_func(f, d)

    ###########################################################################
    # Process PKGDEST
    ###########################################################################

    # Build global list of files in each split package
    global pkgfiles
    pkgfiles = {}
    packages = d.getVar('PACKAGES', True).split()
    pkgdest = d.getVar('PKGDEST', True)
    for pkg in packages:
        pkgfiles[pkg] = []
        for walkroot, dirs, files in cpath.walk(pkgdest + "/" + pkg):
            for file in files:
                pkgfiles[pkg].append(walkroot + os.sep + file)

    for f in (d.getVar('PACKAGEFUNCS', True) or '').split():
        bb.build.exec_func(f, d)
 which triggered exception AttributeError: 'NoneType' object has no
attribute 'split'
NOTE: Error during finalise of
/home/majo/master/poky/meta/recipes-kernel/perf/perf.bb
ERROR: Command execution failed: Exited with 1

Summary: There were 2 ERROR messages shown, returning a non-zero exit
code.
  

