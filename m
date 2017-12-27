Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4B86E00D8F; Wed, 27 Dec 2017 11:07:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE1EFE00CE2
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 11:07:02 -0800 (PST)
Received: by mail-qt0-f174.google.com with SMTP id g9so48883481qth.9
	for <yocto@yoctoproject.org>; Wed, 27 Dec 2017 11:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Bn5qqCUx2zaiFEXW/JgA8x4FoYhqnZxBjIldO2LG+sw=;
	b=jlkEKZpU6vhRtBff5G8GUBTjEHzHlr81gB+fiy+F0MUJyZ0ofywVduz6VmtMGIwlJa
	8rNEHLNhTpsj0FC3jMQutIDfVyBIlZTPrti03mmyCrN8nP5T5Er4P0n+Y1u6/kX2UuXf
	4CKKXQLfry47ubaAaor0P8UXxduB8ZXRDmvMQ9QVB9tCnS3Xr3yHhvElDUuBwPi+WpcD
	uOo8gl+6ORWhzm4Yqd/0gt9YdaNs+QqZTtSoSPefJmFWMy0C/nMTwlpY87tyeREZ1ma8
	MyHhXMqmGBR4LdLJbONLPV23y/WA9P2aan8a9sNoD4D0Zh48a2vYmlVK5SNE57uA+E3L
	P5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Bn5qqCUx2zaiFEXW/JgA8x4FoYhqnZxBjIldO2LG+sw=;
	b=mNqK/baoKZ4oREL412XtKY3N0yppV1asWMD+vleB8anCaYaUDnYue+rVo+VrlrFnLh
	o4hY1/nEWxsrlNW/CfhSVtTjaUu8ssAk36eYXrwzIo7e+oaSLyaleEDp+SdXKmLqAV2G
	mL925ObP08RI2j7qbm60txvVKcBRnkuzx24sJjBHBiDe0qasjNMf/Lg+jSEs52Ah2rpH
	BrekEDzzE3JjLgW3/eG+63FDu6u2AI0oyGX3w217RXDXDCC20hfhoGycl7CwAM3qMMZn
	U9MLR/zB/DQz6GTfFfOBX8X4t2eiIdcAvK8BPxqn2LSg26t0zMPBKgwHA9vex+e5fZDF
	P3Xw==
X-Gm-Message-State: AKGB3mIp4otw/gPs08m2k6JB2QENKFSbQZ4Q4Iidf92mFpidBmNbDSk7
	Fgcu041hC3oq9/nBwikpbvAqCw2vMhHRBqaKBlw=
X-Google-Smtp-Source: ACJfBovkaa8lMJaxPGsAppDhaMSGbOWzcJsbzl6RNCoPjDByO4++/YpUcoZEod5FG4/H2ItlSHEk8121cGoyhdtPJi0=
X-Received: by 10.200.39.104 with SMTP id h37mr39420970qth.114.1514401621594; 
	Wed, 27 Dec 2017 11:07:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.202.146 with HTTP; Wed, 27 Dec 2017 11:07:01 -0800 (PST)
In-Reply-To: <CAFq4t4gqdfuqNRkmzGU_=VWZMDBDgegCUYK=3s8HKGhBUyg7Mg@mail.gmail.com>
References: <CAFq4t4gqdfuqNRkmzGU_=VWZMDBDgegCUYK=3s8HKGhBUyg7Mg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 27 Dec 2017 20:07:01 +0100
Message-ID: <CAGAf8LwC21vjOoMF-LJ8F3NVPFa2-MYwyaFMtctHvC3KDErNiw@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Issue populate_sdk_ext
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
X-List-Received-Date: Wed, 27 Dec 2017 19:07:03 -0000
Content-Type: text/plain; charset="UTF-8"

Interesting... I did the same thing with core-image-sato. Just to see
if it'll pass (YOCTO Project referent poky build)!?

CLI transcript follows:
_______

[user@localhost build]$ bitbake core-image-sato
WARNING: Host distribution "fedora-27" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Loading cache: 100%
|###############################################################################################|
Time: 0:00:00
Loaded 1275 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "qemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4+snapshot-20171227"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp
meta-mylayer         = "master:370483fce1c2429c81b19dcf8a36394dc3fc3d92"

Initialising tasks: 100%
|##########################################################################################|
Time: 0:00:24
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 7044 tasks of which 7040 didn't need to
be rerun and all succeeded.
NOTE: Writing buildhistory

Summary: There was 1 WARNING message shown.
[user@localhost build]$ bitbake core-image-sato
WARNING: Host distribution "fedora-27" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Parsing recipes: 100%
|#############################################################################################|
Time: 0:00:47
Parsing of 816 .bb files complete (0 cached, 816 parsed). 1273
targets, 44 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "fedora-27"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "qemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4+snapshot-20171227"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp
meta-mylayer         = "master:370483fce1c2429c81b19dcf8a36394dc3fc3d92"

NOTE: Fetching uninative binary shim from
http://downloads.yoctoproject.org/releases/uninative/1.7/x86_64-nativesdk-libc.tar.bz2;sha256sum=ed033c868b87852b07957a4400f3b744c00aef5d6470346ea1a59b6d3e03075e
Initialising tasks: 100%
|##########################################################################################|
Time: 0:00:24
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: core-image-sato-1.0-r0 do_rootfs: Package
packagegroup-core-ssh-dropbear, set to be excluded, is in
core-image-sato PACKAGE_INSTALL (['packagegroup-core-boot',
'packagegroup-base-extended', 'strace', 'openssh', 'ptest-runner',
'run-postinsts', 'rpm', 'dnf', 'psplash',
'packagegroup-core-ssh-dropbear', 'packagegroup-core-x11-base',
'packagegroup-core-x11-sato']).  It will be removed from the list.
NOTE: Tasks Summary: Attempted 7044 tasks of which 5615 didn't need to
be rerun and all succeeded.
NOTE: Writing buildhistory

Summary: There were 2 WARNING messages shown.
[user@localhost build]$
[user@localhost build]$
[user@localhost build]$
[user@localhost build]$ bitbake core-image-sato -c populate_sdk_ext
WARNING: Host distribution "fedora-27" has not been validated with
this version of the build system; you may possibly experience
unexpected failures. It is recommended that you use a tested
distribution.
Parsing recipes: 100%
|#############################################################################################|
Time: 0:00:51
Parsing of 816 .bb files complete (0 cached, 816 parsed). 1273
targets, 44 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           = "1.37.0"
BUILD_SYS            = "x86_64-linux"
NATIVELSBSTRING      = "universal"
TARGET_SYS           = "x86_64-poky-linux"
MACHINE              = "qemux86-64"
DISTRO               = "poky"
DISTRO_VERSION       = "2.4+snapshot-20171227"
TUNE_FEATURES        = "m64 core2"
TARGET_FPU           = ""
meta
meta-poky
meta-yocto-bsp
meta-mylayer         = "master:370483fce1c2429c81b19dcf8a36394dc3fc3d92"

Initialising tasks: 100%
|##########################################################################################|
Time: 0:00:19
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
WARNING: core-image-sato-1.0-r0 do_rootfs: Package
packagegroup-core-ssh-dropbear, set to be excluded, is in
core-image-sato PACKAGE_INSTALL (['packagegroup-core-boot',
'packagegroup-base-extended', 'strace', 'openssh', 'ptest-runner',
'run-postinsts', 'rpm', 'dnf', 'psplash',
'packagegroup-core-ssh-dropbear', 'packagegroup-core-x11-base',
'packagegroup-core-x11-sato']).  It will be removed from the list.
WARNING: core-image-sato-1.0-r0 do_populate_sdk_ext: Package
packagegroup-core-ssh-dropbear, set to be excluded, is in
core-image-sato PACKAGE_INSTALL (['packagegroup-core-boot',
'packagegroup-base-extended', 'strace', 'openssh', 'ptest-runner',
'run-postinsts', 'rpm', 'dnf', 'psplash',
'packagegroup-core-ssh-dropbear', 'packagegroup-core-x11-base',
'packagegroup-core-x11-sato']).  It will be removed from the list.
NOTE: Tasks Summary: Attempted 6179 tasks of which 6166 didn't need to
be rerun and all succeeded.
NOTE: Writing buildhistory

Summary: There were 3 WARNING messages shown.
[user@localhost build]$
_______

For me, it passed. I recommend/suggest to delete tmp/ and downloads/
directories in .../poky/build, then rebuild the whole thing in two
stages:
[1] bitbake core-image-minimal
[2] bitbake core-image-minimal -c populate_sdk_ext

Zoran

On Wed, Dec 27, 2017 at 1:44 PM, Peter Balazovic
<balazovic.peter@gmail.com> wrote:
> Hello,
>
> I follow recommendation to build and populate extensible SDK per Yocto
> manual.
>
> https://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#sdk-building-an-sdk-installer
>
> I am got stuck what's the problem to build?
>
> pokyuser@7ca01572e73f:/workdir/poky/build$ bitbake core-image-minimal -c
> populate_sdk_ext
> L
>
> getting this
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Failed to generate
> filtered task list for extensible SDK:
>
> ERROR: core-image-minimal-1.0-r0 do_populate_sdk_ext: Function failed:
> copy_buildsystem
> ERROR: Logfile of failure stored in:
> /workdir/poky/build/tmp/work/qemux86-poky-linux/core-image-minimal/1.0-r0/temp/log.do_populate_sdk_ext.151
> ERROR: Task
> (/workdir/poky/meta/recipes-core/images/core-image-minimal.bb:do_populate_sdk_ext)
> failed with exit code '1'
>
>
> what's the issue to do a clean build?
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

