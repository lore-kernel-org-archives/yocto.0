Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD603E00BAB; Wed,  9 Aug 2017 21:16:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.177 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.177 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mohammedaqdam[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f177.google.com (mail-yw0-f177.google.com
	[209.85.161.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40DFEE00B77
	for <yocto@yoctoproject.org>; Wed,  9 Aug 2017 21:16:53 -0700 (PDT)
Received: by mail-yw0-f177.google.com with SMTP id p68so51851711ywg.0
	for <yocto@yoctoproject.org>; Wed, 09 Aug 2017 21:16:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2Qk8WRhLo+5ityXdc6vLiX1HZmD3o3ZFvBlJuK0vcuY=;
	b=H00798nbGM1kbc5cwapuNbd4KzLZfKlGZT7PrpEoY7vYHb0rpqahcVlufmYImD4H61
	SrV4jkAk7i8HA5TRqwH3Auv1YUei394CDO60mZV9Q+vmhDkPHMvOKnPEVKzDuJZ+5C1R
	PrkY6p+fkM5gSq3kB9PRnHkldrpnMtdahbBAGzNpUennsRalVv3xjBpdxGLElltFA01J
	ww9aFQokmQTq12TU9lZCeXyNeeG2Xwq8c2Sl7+6PZAFo3fQqymv91CAeXXYFOKoLwoe+
	QF6tKCGI8ByD4jszJICtAbVGkmUHTozNJLvl0VDnhj239/EOLlH8+1kolBPq0BgllyUr
	98cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2Qk8WRhLo+5ityXdc6vLiX1HZmD3o3ZFvBlJuK0vcuY=;
	b=fJV0PxhgfHnpHVi6VUtNIJdASkJb/mT6jvi3hET7hTo6FHwi2Rt6zvOvHdZTbi0K9F
	Q/HTr+CfJA43grVHyxqI93eGlOxp6v9Ekjp0vCPUrDoYgH89PL763j5s41LuXslNSxHa
	O1Ax3B697Kj5LJfmpkGA0wHIt2bKaU3JGwIfVLO0McduP1PnIUk6kgoitOWYCQHtjfhO
	V6HLi7+9FIGTXhCZOFpRANHwfZ/1c38sfZHlunp/opvJB0wbXfUHvKOJ1LATjl0NZHFS
	elnXmO6g3R4FVoyUTuP6j6u5janK8sIbvfcTJt57f6Ase/1IXRBo8mXmpqoxI7uj6loW
	iXQg==
X-Gm-Message-State: AHYfb5i0f68qG7TCfG7imc+a1m6FANnYdD1ZbPDz6lvzjXoaWjdUCF2Q
	46TEoGdx/FwolHlgBTuqravrEJE1fw==
X-Received: by 10.129.197.73 with SMTP id o9mr8247608ywj.183.1502338613061;
	Wed, 09 Aug 2017 21:16:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.51.80 with HTTP; Wed, 9 Aug 2017 21:16:52 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Thu, 10 Aug 2017 09:46:52 +0530
Message-ID: <CAGsrAHfOmMFfZPNWgZ64U52h968Mri4VT-QUMXt1CpsN1b3uqg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
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
X-List-Received-Date: Thu, 10 Aug 2017 04:16:54 -0000
Content-Type: text/plain; charset="UTF-8"

i was building image for rpi 3.
so when i run bitbake -k rpi-basic-image i'm getting following error.
how to recover this error...

root@pcz-ee207837-2:/u/my_poky/poky/build# bitbake -k rpi-basic-image
Parsing recipes: 100%
|##########################################################################################################################################|
Time: 0:01:10
Parsing of 851 .bb files complete (0 cached, 851 parsed). 1320
targets, 73 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal-4.8"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "raspberrypi3"
DISTRO            = "poky"
DISTRO_VERSION    = "2.3.1"
TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
callconvention-hard cortexa7"
TARGET_FPU        = "hard"
meta
meta-poky
meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"

Initialising tasks: 100%
|#######################################################################################################################################|
Time: 0:00:06
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
ERROR: rpi-basic-image-1.0-r0 do_rootfs: Error executing a python
function in exec_python_func() autogenerated:

The stack trace of python calls that resulted in this exception/failure was:
File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
     0001:
 *** 0002:do_rootfs(d)
     0003:
File: '/u/my_poky/poky/meta/classes/image.bbclass', lineno: 270,
function: do_rootfs
     0266:
     0267:    progress_reporter.next_stage()
     0268:
     0269:    # generate rootfs
 *** 0270:    create_rootfs(d, progress_reporter=progress_reporter,
logcatcher=logcatcher)
     0271:
     0272:    progress_reporter.finish()
     0273:}
     0274:do_rootfs[dirs] = "${TOPDIR}"
File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 1005, function:
create_rootfs
     1001:        RpmRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
     1002:    elif img_type == "ipk":
     1003:        OpkgRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
     1004:    elif img_type == "deb":
 *** 1005:        DpkgRootfs(d, manifest_dir, progress_reporter,
logcatcher).create()
     1006:
     1007:    os.environ.clear()
     1008:    os.environ.update(env_bkp)
     1009:
File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 638, function: __init__
     0634:        bb.utils.remove(self.d.getVar('MULTILIB_TEMP_ROOTFS'), True)
     0635:        self.manifest = DpkgManifest(d, manifest_dir)
     0636:        self.pm = DpkgPM(d, d.getVar('IMAGE_ROOTFS'),
     0637:                         d.getVar('PACKAGE_ARCHS'),
 *** 0638:                         d.getVar('DPKG_ARCH'))
     0639:
     0640:
     0641:    def _create(self):
     0642:        pkgs_to_install = self.manifest.parse_initial_manifest()
File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno: 1245,
function: __init__
     1241:        self.all_arch_list = archs.split()
     1242:        all_mlb_pkg_arch_list =
(self.d.getVar('ALL_MULTILIB_PACKAGE_ARCHS') or "").split()
     1243:        self.all_arch_list.extend(arch for arch in
all_mlb_pkg_arch_list if arch not in self.all_arch_list)
     1244:
 *** 1245:        self._create_configs(archs, base_archs)
     1246:
     1247:        self.indexer = DpkgIndexer(self.d, self.deploy_dir)
     1248:
     1249:    """
File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno: 1483,
function: _create_configs
     1479:            if variant_arch not in base_arch_list:
     1480:                base_arch_list.append(variant_arch)
     1481:
     1482:        with open(self.apt_conf_file, "w+") as apt_conf:
 *** 1483:            with
open(self.d.expand("${STAGING_ETCDIR_NATIVE}/apt/apt.conf.sample")) as
apt_conf_sample:
     1484:                for line in apt_conf_sample.read().split("\n"):
     1485:                    match_arch = re.match("  Architecture
\".*\";$", line)
     1486:                    architectures = ""
     1487:                    if match_arch:
Exception: FileNotFoundError: [Errno 2] No such file or directory:
'/u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-basic-image/1.0-r0/recipe-sysroot-native/etc/apt/apt.conf.sample'

ERROR: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
ERROR: Logfile of failure stored in:
/u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-basic-image/1.0-r0/temp/log.do_rootfs.21760
ERROR: Task (/u/my_poky/poky/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb:do_rootfs)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 2312 tasks of which 2311 didn't need to
be rerun and 1 failed.

Summary: 1 task failed:
  /u/my_poky/poky/meta-raspberrypi/recipes-core/images/rpi-basic-image.bb:do_rootfs
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

