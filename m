Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94091E00E3B; Wed, 16 Aug 2017 04:10:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mohammedaqdam[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 77935E00E39
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 04:10:26 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id l82so20333189ywc.2
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 04:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=wcqc5sDZuFL+vSVW834axmcNH8Yuw8jQOaQDfo0cctw=;
	b=ZcznWtnaDKtK8UjqBP4cYWrxC7Z/ZKPv9lrEwpK2EfAGboBl+nJx/4KtbEVees/dhS
	Sf/AY7FO7mnu0dAsBgAeyqatXptzakKvO1pL3WAs5abgUxWohIlfevBcV/bD1nRL9iaL
	Qa6E9mBWfGB+et0OwMvDU63rtRs7OYlt2kOKbX1Fk/sMtFVSZHyuahYVIGjpfYEiNUQh
	qiFXRS4YTMs2BQCN3nmBO2lygrFHhI2PJpM5928KzVyyAknaXIfi1AN2oncKNnBylAyl
	xEqGI9Q8t4aszr8DjjurdEW8fe6oN71L6xtZExbyai4mlybK3Sd+/TFA4J5y1ggqRhlo
	IBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=wcqc5sDZuFL+vSVW834axmcNH8Yuw8jQOaQDfo0cctw=;
	b=j6blMHckDFb6nGv8dgj5nMMgFyi7h5pGwfO9AFWfjJqVfhDvJVMZRBEg+GjlYBkO01
	UvYopq+zMynxA4pYcsph6PJZQ6XOAxAsdAVhq7NbJIF7/rn3PPAL47zFjj9s0CWFVgty
	aDb2o4So5ALy2wNdNdvJX8cwoeZ0hTq9OHvGnqub5OKR5LlaXz0zNpolIXAyF3tZYaVb
	amSFafo+MaMwmGY3rqP8i+XJIrUu6+zMAx0y7nxlxklhL8bQZcLRPLnX4gOFwevy8lW9
	+P1zePzTUiZsjArA7Dml7knxVrYFZMn1xDJSphYCMLhNaTxScXgeTAsHSQDXDAdzSshu
	HEfQ==
X-Gm-Message-State: AHYfb5hNOUtn0taRt8+tJgqmyvPx6d11zu09VDN/OlJZ2lkKD3xRuUCW
	zW8vg4742TN8av5m01O4XSyoI21Btg==
X-Received: by 10.129.168.9 with SMTP id f9mr1078406ywh.332.1502881825055;
	Wed, 16 Aug 2017 04:10:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.51.80 with HTTP; Wed, 16 Aug 2017 04:10:24 -0700 (PDT)
In-Reply-To: <CAGsrAHdQcogDa_07SqjwvgjLe4dTsJrQ0gUWnM2ih7LqZaPaDg@mail.gmail.com>
References: <CAGsrAHfOmMFfZPNWgZ64U52h968Mri4VT-QUMXt1CpsN1b3uqg@mail.gmail.com>
	<CAC+thW0rKv7C1u6Qgs_xLSPXq0H4WS8Q=-o2rerb9KwN9bC-kA@mail.gmail.com>
	<CAGsrAHcSAruiDr+QP=kkUQA5R4N7hSr7b2XXCxkKyvHv8WbinA@mail.gmail.com>
	<CAC+thW1VR-vHi7m3ydHeye_gwy1vjfV9r8qKw6qZUXfLmFmA-g@mail.gmail.com>
	<CAGsrAHcc483HCn5EYJu6fkbFsiPdowmrPr6nbJwwjDrsAd3nSw@mail.gmail.com>
	<CAC+thW3kJ6xedATm_iTg593b=oU-vb0_mJCZ2s_4VDKoGOSdKg@mail.gmail.com>
	<CAGsrAHeCVebxamT4hHwXq0fgDWb-P4-Dgc3eJEb1FCzhzBuSiA@mail.gmail.com>
	<CAC+thW0qk-_Yhx4hhRMnfq8m+0f_DUzof4WgdyKZ_7w6YrQwkA@mail.gmail.com>
	<CAGsrAHdpCnLpB9+pCZB6kSrvXsFBrU5=dxkcBgRGum=ONCCurw@mail.gmail.com>
	<CAGsrAHdQcogDa_07SqjwvgjLe4dTsJrQ0gUWnM2ih7LqZaPaDg@mail.gmail.com>
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Wed, 16 Aug 2017 16:40:24 +0530
Message-ID: <CAGsrAHcTF3uczqpxCqjJisdpABFf6Gevt-jKJQTk+9tWfgjRTg@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>, yocto@yoctoproject.org
Subject: Re: rpi-basic-image-1.0-r0 do_rootfs: Function failed: do_rootfs
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
X-List-Received-Date: Wed, 16 Aug 2017 11:10:27 -0000
Content-Type: text/plain; charset="UTF-8"

On 8/16/17, mohammed aqdam <mohammedaqdam@gmail.com> wrote:
> oot@pcz-ee207837-2:/u/my_poky/poky/build# bitbake rpi-hwup-image
> Parsing recipes: 100%
> |##########################################################################################################################################|
> Time: 0:03:19
> Parsing of 1963 .bb files complete (0 cached, 1963 parsed). 2716
> targets, 194 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
>
> Build Configuration:
> BB_VERSION        = "1.34.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.3.1"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
> meta-oe
> meta-python
> meta-multimedia
> meta-networking   = "pyro:5e82995148a2844c6f483ae5ddd1438d87ea9fb7"
> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
>
> Initialising tasks: 100%
> |#######################################################################################################################################|
> Time: 0:00:08
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Error executing a python
> function in exec_python_func() autogenerated:
>
> The stack trace of python calls that resulted in this exception/failure
> was:
> File: 'exec_python_func() autogenerated', lineno: 2, function: <module>
>      0001:
>  *** 0002:do_rootfs(d)
>      0003:
> File: '/u/my_poky/poky/meta/classes/image.bbclass', lineno: 270,
> function: do_rootfs
>      0266:
>      0267:    progress_reporter.next_stage()
>      0268:
>      0269:    # generate rootfs
>  *** 0270:    create_rootfs(d, progress_reporter=progress_reporter,
> logcatcher=logcatcher)
>      0271:
>      0272:    progress_reporter.finish()
>      0273:}
>      0274:do_rootfs[dirs] = "${TOPDIR}"
> File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 1005, function:
> create_rootfs
>      1001:        RpmRootfs(d, manifest_dir, progress_reporter,
> logcatcher).create()
>      1002:    elif img_type == "ipk":
>      1003:        OpkgRootfs(d, manifest_dir, progress_reporter,
> logcatcher).create()
>      1004:    elif img_type == "deb":
>  *** 1005:        DpkgRootfs(d, manifest_dir, progress_reporter,
> logcatcher).create()
>      1006:
>      1007:    os.environ.clear()
>      1008:    os.environ.update(env_bkp)
>      1009:
> File: '/u/my_poky/poky/meta/lib/oe/rootfs.py', lineno: 638, function:
> __init__
>      0634:        bb.utils.remove(self.d.getVar('MULTILIB_TEMP_ROOTFS'),
> True)
>      0635:        self.manifest = DpkgManifest(d, manifest_dir)
>      0636:        self.pm = DpkgPM(d, d.getVar('IMAGE_ROOTFS'),
>      0637:                         d.getVar('PACKAGE_ARCHS'),
>  *** 0638:                         d.getVar('DPKG_ARCH'))
>      0639:
>      0640:
>      0641:    def _create(self):
>      0642:        pkgs_to_install = self.manifest.parse_initial_manifest()
> File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno: 1245,
> function: __init__
>      1241:        self.all_arch_list = archs.split()
>      1242:        all_mlb_pkg_arch_list =
> (self.d.getVar('ALL_MULTILIB_PACKAGE_ARCHS') or "").split()
>      1243:        self.all_arch_list.extend(arch for arch in
> all_mlb_pkg_arch_list if arch not in self.all_arch_list)
>      1244:
>  *** 1245:        self._create_configs(archs, base_archs)
>      1246:
>      1247:        self.indexer = DpkgIndexer(self.d, self.deploy_dir)
>      1248:
>      1249:    """
> File: '/u/my_poky/poky/meta/lib/oe/package_manager.py', lineno: 1483,
> function: _create_configs
>      1479:            if variant_arch not in base_arch_list:
>      1480:                base_arch_list.append(variant_arch)
>      1481:
>      1482:        with open(self.apt_conf_file, "w+") as apt_conf:
>  *** 1483:            with
> open(self.d.expand("${STAGING_ETCDIR_NATIVE}/apt/apt.conf.sample")) as
> apt_conf_sample:
>      1484:                for line in apt_conf_sample.read().split("\n"):
>      1485:                    match_arch = re.match("  Architecture
> \".*\";$", line)
>      1486:                    architectures = ""
>      1487:                    if match_arch:
> Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '/u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/recipe-sysroot-native/etc/apt/apt.conf.sample'
>
> ERROR: rpi-hwup-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /u/my_poky/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/rpi-hwup-image/1.0-r0/temp/log.do_rootfs.8639
> ERROR: Task
> (/u/my_poky/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:do_rootfs)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 2320 tasks of which 6 didn't need to be
> rerun and 1 failed.
>
> Summary: 1 task failed:
>
> /u/my_poky/poky/meta-raspberrypi/recipes-core/images/rpi-hwup-image.bb:do_rootfs
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> what i'm missing here?
>
>
>
> On 8/12/17, mohammed aqdam <mohammedaqdam@gmail.com> wrote:
>>  Hi There,
>> i was trying rpi-basic-image after adding meta-embedded layer in
>> bblayer.conf file then i got this warning
>>
>> WARNING: No bb files matched BBFILE_PATTERN_meta-oe
>> '^/u/hope_poky/poky/meta-openembedded/'
>>
>> root@(none):/u/hope_poky/poky/build# bitbake -k rpi-basic-image
>> Parsing recipes: 100%
>> |###################################################################################################################################|
>> Time: 0:03:27
>> Parsing of 863 .bb files complete (0 cached, 863 parsed). 1332
>> targets, 64 skipped, 0 masked, 0 errors.
>> WARNING: No bb files matched BBFILE_PATTERN_meta-oe
>> '^/u/hope_poky/poky/meta-openembedded/'
>> NOTE: Resolving any missing task queue dependencies
>>
>> Build Configuration:
>> BB_VERSION        = "1.34.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "ubuntu-14.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "raspberrypi3"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.3.1"
>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"
>> TARGET_FPU        = "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
>> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
>> meta-openembedded = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
>>
>> how to resolve the above warning?
>>
>>
>> to enable camera i was trying with rpi-test-image, after adding
>> meta-openembedded layer into bblayer.conf, when i run bitbake i got
>> this errors...
>>
>> root@(none):/u/hope_poky/poky_for_mon/poky/build# bitbake -k
>> rpi-test-image
>> Parsing recipes: 100%
>> |###################################################################################################################################|
>> Time: 0:05:39
>> Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
>> targets, 159 skipped, 0 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-1080p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-1080p']
>> NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
>> 'bigbuckbunny-1080p']
>> NOTE: Runtime target 'rpi-test-image' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['rpi-test-image',
>> 'packagegroup-rpi-test', 'bigbuckbunny-1080p']
>> ERROR: Nothing RPROVIDES 'crda' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'crda' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['crda']
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-480p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-480p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-480p']
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-720p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-720p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-720p']
>> ERROR: Nothing PROVIDES 'libomxil' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: libomxil was skipped: because it has a restricted license not
>> whitelisted in LICENSE_FLAGS_WHITELIST
>> NOTE: Runtime target 'omxplayer' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['omxplayer', 'libomxil']
>> ERROR: Nothing PROVIDES 'libav' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
>> restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
>> ERROR: Nothing PROVIDES 'samba' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: Nothing RPROVIDES 'omxplayer-dev' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-mulroot@(none):/u/hope_poky/poky_for_mon/poky/build#
>> bitbake -k rpi-test-image
>> Parsing recipes: 100%
>> |###################################################################################################################################|
>> Time: 0:05:39
>> Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
>> targets, 159 skipped, 0 masked, 0 errors.
>> NOTE: Resolving any missing task queue dependencies
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-1080p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-1080p']
>> NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
>> 'bigbuckbunny-1080p']
>> NOTE: Runtime target 'rpi-test-image' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['rpi-test-image',
>> 'packagegroup-rpi-test', 'bigbuckbunny-1080p']
>> ERROR: Nothing RPROVIDES 'crda' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'crda' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['crda']
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-480p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-480p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-480p']
>> ERROR: Nothing RPROVIDES 'bigbuckbunny-720p' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'bigbuckbunny-720p' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['bigbuckbunny-720p']
>> ERROR: Nothing PROVIDES 'libomxil' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: libomxil was skipped: because it has a restricted license not
>> whitelisted in LICENSE_FLAGS_WHITELIST
>> NOTE: Runtime target 'omxplayer' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['omxplayer', 'libomxil']
>> ERROR: Nothing PROVIDES 'libav' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
>> restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
>> ERROR: Nothing PROVIDES 'samba' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> DEPENDS on or otherwise requires it)
>> ERROR: Nothing RPROVIDES 'omxplayer-dev' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
>> RDEPENDS on or otherwise requires it)
>> ERROR: No eligible RPROVIDERs exist for 'omxplayer-dev'
>> NOTE: Runtime target 'omxplayer-dev' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['omxplayer-dev']
>> ERROR: Nothing RPROVIDES 'python-imaging' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'python-imaging' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-imaging']
>> NOTE: Runtime target 'python-sense-hat' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-sense-hat',
>> 'python-imaging']
>> ERROR: Nothing RPROVIDES 'python-sense-hat-dev' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
>> RDEPENDS on or otherwise requires it)
>> ERROR: No eligible RPROVIDERs exist for 'python-sense-hat-dev'
>> NOTE: Runtime target 'python-sense-hat-dev' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-sense-hat-dev']
>>
>> Build Configuration:
>> BB_VERSION        = "1.34.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "ubuntu-14.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "raspberrypi3"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.3.1"
>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"
>> TARGET_FPU        = "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
>> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
>> meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
>>
>> ERROR: All buildable tasks have been run but the build is incomplete
>> (--continue mode). Errors for the tasks that failed will have been
>> printed above.    | ETA:  0:00:09
>> ERROR: Command execution failed: 1
>>
>> Summary: There were 12 ERROR messages shown, returning a non-zero exit
>> code.timedia/omxplayer/omxplayer_git.bb RDEPENDS on or otherwise
>> requires it)
>> ERROR: No eligible RPROVIDERs exist for 'omxplayer-dev'
>> NOTE: Runtime target 'omxplayer-dev' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['omxplayer-dev']
>> ERROR: Nothing RPROVIDES 'python-imaging' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
>> RDEPENDS on or otherwise requires it)
>> NOTE: Runtime target 'python-imaging' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-imaging']
>> NOTE: Runtime target 'python-sense-hat' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-sense-hat',
>> 'python-imaging']
>> ERROR: Nothing RPROVIDES 'python-sense-hat-dev' (but
>> /u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
>> RDEPENDS on or otherwise requires it)
>> ERROR: No eligible RPROVIDERs exist for 'python-sense-hat-dev'
>> NOTE: Runtime target 'python-sense-hat-dev' is unbuildable, removing...
>> Missing or unbuildable dependency chain was: ['python-sense-hat-dev']
>>
>> Build Configuration:
>> BB_VERSION        = "1.34.0"
>> BUILD_SYS         = "x86_64-linux"
>> NATIVELSBSTRING   = "ubuntu-14.04"
>> TARGET_SYS        = "arm-poky-linux-gnueabi"
>> MACHINE           = "raspberrypi3"
>> DISTRO            = "poky"
>> DISTRO_VERSION    = "2.3.1"
>> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
>> callconvention-hard cortexa7"
>> TARGET_FPU        = "hard"
>> meta
>> meta-poky
>> meta-yocto-bsp    = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a"
>> meta-raspberrypi  = "master:f6a2ca21c72b8d97cd0f89a0a436bf90b431698b"
>> meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"
>>
>> ERROR: All buildable tasks have been run but the build is incomplete
>> (--continue mode). Errors for the tasks that failed will have been
>> printed above.    | ETA:  0:00:09
>> ERROR: Command execution failed: 1
>>
>> Summary: There were 12 ERROR messages shown, returning a non-zero exit
>> code.
>> how to solve this errors? is there any reciepy i have to change to use
>> rpi-test -image?
>>
>

