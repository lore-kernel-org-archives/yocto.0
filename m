Return-Path: <mohammedaqdam@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91D86E00C89; Sat, 12 Aug 2017 01:08:34 -0700 (PDT)
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
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.179 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99D44E00C0A
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 01:08:32 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id p68so33722491ywg.0
	for <yocto@yoctoproject.org>; Sat, 12 Aug 2017 01:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=LHmUnESGD5dtoaiuQbkI4sWAbW8fNo7dRZNa9r398es=;
	b=cfAsWeL2CXCbGmCz42UkT7KhLLNMjZIZsf1BRaKPEOWl6aPRIuHoVBd4Byl0kX/Qzf
	wZ0atiuyhyo5ZmPr0Rao6aWsu5hnlqTKqtp+qFv07ABdFU9WO9W0jJGUrPgAfi4OE2cM
	ErQrHbQp8qreJQVA3fRkQDdbc8MzmFd5D1knrZxMxhamXBLvITv0ItPmNAGh0Vp3Zzvy
	u9uPpu4bJtSadbd0UYOrc2gU897mZv9toMXOYzaek/165CtbI/PV5C4xwmMg1yON8uJr
	gKz/PlmOHsVAnqm+YE8AQLx/WoADXzsbA1bD/2iZHN+Q80wp2RDl+zG2mfMNkkGbQr6g
	BDqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=LHmUnESGD5dtoaiuQbkI4sWAbW8fNo7dRZNa9r398es=;
	b=BP8/caHyexHhwtOl/Ry4ePmhXnhZ+is1sAVJElD+sb4FelYQKwSRQLjPGV70j5b0Nv
	p7wexkCsVbWazo2tWq+4uVBsywYJmJuuOoCzPu2OaYtT9sQgb5xdRyA5OZCkIaMjXBkz
	+Uglm8dCRAmJn3vr+AsrrW2aQV5AgC8pShfMfax2B6I+7AE6cZKIXKSnvyNSLqnyhYFh
	ipb/HHn58PsrrWPRdxDKMreiKxbInbZtg7vgy4gnrh+oVblT9pimC7d07tRPsH6hTeOe
	GALZXM4IqnGjmRlvygGJWImxFcWVRloUTDqTBKL+xAtDcyj/XQvLvhmk0ue3/ET5Sw5i
	WGsA==
X-Gm-Message-State: AHYfb5hlaNAQ0Cqn4FmoZC/AsaUaCETxTMp8ApijrjvcXg4Q+A8yAlho
	8xKdYIMKikh1pZW1OZefPOpKifeflQ==
X-Received: by 10.37.125.199 with SMTP id y190mr14163551ybc.358.1502525311352; 
	Sat, 12 Aug 2017 01:08:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.51.80 with HTTP; Sat, 12 Aug 2017 01:08:31 -0700 (PDT)
From: mohammed aqdam <mohammedaqdam@gmail.com>
Date: Sat, 12 Aug 2017 13:38:31 +0530
Message-ID: <CAGsrAHdDiWSc3U9TFZOEJUaYo8iwuR3KMOv1n3cUsAp-Zv-OoQ@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Errors while tring rpi-test-image for rpi3
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
X-List-Received-Date: Sat, 12 Aug 2017 08:08:34 -0000
Content-Type: text/plain; charset="UTF-8"

 Hi There,
i was trying rpi-basic-image after adding meta-embedded layer in
bblayer.conf file then i got this warning

WARNING: No bb files matched BBFILE_PATTERN_meta-oe
'^/u/hope_poky/poky/meta-openembedded/'

root@(none):/u/hope_poky/poky/build# bitbake -k rpi-basic-image
Parsing recipes: 100%
|###################################################################################################################################|
Time: 0:03:27
Parsing of 863 .bb files complete (0 cached, 863 parsed). 1332
targets, 64 skipped, 0 masked, 0 errors.
WARNING: No bb files matched BBFILE_PATTERN_meta-oe
'^/u/hope_poky/poky/meta-openembedded/'
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "ubuntu-14.04"
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
meta-openembedded = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

how to resolve the above warning?


to enable camera i was trying with rpi-test-image, after adding
meta-openembedded layer into bblayer.conf, when i run bitbake i got
this errors...

root@(none):/u/hope_poky/poky_for_mon/poky/build# bitbake -k rpi-test-image
Parsing recipes: 100%
|###################################################################################################################################|
Time: 0:05:39
Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
targets, 159 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-1080p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-1080p']
NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
'bigbuckbunny-1080p']
NOTE: Runtime target 'rpi-test-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['rpi-test-image',
'packagegroup-rpi-test', 'bigbuckbunny-1080p']
ERROR: Nothing RPROVIDES 'crda' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'crda' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['crda']
ERROR: Nothing RPROVIDES 'bigbuckbunny-480p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-480p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-480p']
ERROR: Nothing RPROVIDES 'bigbuckbunny-720p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-720p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-720p']
ERROR: Nothing PROVIDES 'libomxil' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: libomxil was skipped: because it has a restricted license not
whitelisted in LICENSE_FLAGS_WHITELIST
NOTE: Runtime target 'omxplayer' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer', 'libomxil']
ERROR: Nothing PROVIDES 'libav' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
ERROR: Nothing PROVIDES 'samba' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: Nothing RPROVIDES 'omxplayer-dev' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-mulroot@(none):/u/hope_poky/poky_for_mon/poky/build#
bitbake -k rpi-test-image
Parsing recipes: 100%
|###################################################################################################################################|
Time: 0:05:39
Parsing of 1518 .bb files complete (0 cached, 1518 parsed). 2129
targets, 159 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'bigbuckbunny-1080p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-1080p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-1080p']
NOTE: Runtime target 'packagegroup-rpi-test' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['packagegroup-rpi-test',
'bigbuckbunny-1080p']
NOTE: Runtime target 'rpi-test-image' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['rpi-test-image',
'packagegroup-rpi-test', 'bigbuckbunny-1080p']
ERROR: Nothing RPROVIDES 'crda' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'crda' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['crda']
ERROR: Nothing RPROVIDES 'bigbuckbunny-480p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-480p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-480p']
ERROR: Nothing RPROVIDES 'bigbuckbunny-720p' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-core/packagegroups/packagegroup-rpi-test.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'bigbuckbunny-720p' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['bigbuckbunny-720p']
ERROR: Nothing PROVIDES 'libomxil' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: libomxil was skipped: because it has a restricted license not
whitelisted in LICENSE_FLAGS_WHITELIST
NOTE: Runtime target 'omxplayer' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer', 'libomxil']
ERROR: Nothing PROVIDES 'libav' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: ffmpeg PROVIDES libav but was skipped: because it has a
restricted license not whitelisted in LICENSE_FLAGS_WHITELIST
ERROR: Nothing PROVIDES 'samba' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
DEPENDS on or otherwise requires it)
ERROR: Nothing RPROVIDES 'omxplayer-dev' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-multimedia/omxplayer/omxplayer_git.bb
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'omxplayer-dev'
NOTE: Runtime target 'omxplayer-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer-dev']
ERROR: Nothing RPROVIDES 'python-imaging' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'python-imaging' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-imaging']
NOTE: Runtime target 'python-sense-hat' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-sense-hat',
'python-imaging']
ERROR: Nothing RPROVIDES 'python-sense-hat-dev' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'python-sense-hat-dev'
NOTE: Runtime target 'python-sense-hat-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-sense-hat-dev']

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "ubuntu-14.04"
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
meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

ERROR: All buildable tasks have been run but the build is incomplete
(--continue mode). Errors for the tasks that failed will have been
printed above.    | ETA:  0:00:09
ERROR: Command execution failed: 1

Summary: There were 12 ERROR messages shown, returning a non-zero exit
code.timedia/omxplayer/omxplayer_git.bb RDEPENDS on or otherwise
requires it)
ERROR: No eligible RPROVIDERs exist for 'omxplayer-dev'
NOTE: Runtime target 'omxplayer-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['omxplayer-dev']
ERROR: Nothing RPROVIDES 'python-imaging' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'python-imaging' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-imaging']
NOTE: Runtime target 'python-sense-hat' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-sense-hat',
'python-imaging']
ERROR: Nothing RPROVIDES 'python-sense-hat-dev' (but
/u/hope_poky/poky_for_mon/poky/meta-raspberrypi/recipes-devtools/python/python-sense-hat_2.1.0.bb
RDEPENDS on or otherwise requires it)
ERROR: No eligible RPROVIDERs exist for 'python-sense-hat-dev'
NOTE: Runtime target 'python-sense-hat-dev' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['python-sense-hat-dev']

Build Configuration:
BB_VERSION        = "1.34.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "ubuntu-14.04"
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
meta-oe           = "master:a8b54e300be027fefe8a774ca1861d0fb8e80d99"

ERROR: All buildable tasks have been run but the build is incomplete
(--continue mode). Errors for the tasks that failed will have been
printed above.    | ETA:  0:00:09
ERROR: Command execution failed: 1

Summary: There were 12 ERROR messages shown, returning a non-zero exit code.
how to solve this errors? is there any reciepy i have to change to use
rpi-test -image?

