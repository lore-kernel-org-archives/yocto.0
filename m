Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C73EAE00901; Thu,  6 Nov 2014 15:26:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6A0FE0084E
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 15:26:11 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 83F01F811E5; Thu,  6 Nov 2014 16:26:11 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 6EB7FF811E4;
	Thu,  6 Nov 2014 16:26:09 -0700 (MST)
Message-ID: <545C0397.3030304@mlbassoc.com>
Date: Thu, 06 Nov 2014 16:26:15 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
In-Reply-To: <CACgAsMcN=jdAEgDj1G5XACGAec4K0PKYPhdSKwChXRBht6-BYw@mail.gmail.com>
Subject: Re: ERROR: gtest not found in the base feed
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
X-List-Received-Date: Thu, 06 Nov 2014 23:26:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 2014-11-06 16:01, Kevyn-Alexandre Paré wrote:
> Hi,
>
> I'm just trying to add a recipe that I found here
>
> https://github.com/webOS-ports/meta-webos-ports/blob/master/recipes-upstreamable/gtest/gtest_1.7.0.bb
>
> for gtest as part of my image:
>
> bitbake -e gtest | grep ^PACKAGES=
> PACKAGES="gtest-dbg gtest-staticdev gtest-dev gtest-doc gtest-locale  gtest"
>
> Adding it:
> IMAGE_INSTALL += "gtest"
>
> ERROR: gtest not found in the base feeds (overo armv7a-vfp-neon
> armv7a-vfp armv7a armv6-vfp armv6 armv5e-vfp armv5e armv5-vfp armv5
> armv4 arm noarch any all).
>
> Since in
>
> ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms/armv7a_vfp_neon/
> gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_neon.rpm

Where is the gtest-1.7.0-r0.armv7a_vfp_neon.rpm??

I suspect that the build didn't work correctly, or at least it generated
no installable objects which by default will not generate an empty package.

>
> and
>
> tree tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/packages-split/
> tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/packages-split/
> ├── gtest
> ├── gtest-dbg
> ├── gtest-dev
> │   └── usr
> │       ├── include
> │       │   └── gtest
> │       │       ├── gtest-death-test.h
> │       │       ├── gtest.h
> │       │       ├── gtest-message.h
> │       │       ├── gtest-param-test.h
> │       │       ├── gtest_pred_impl.h
> │       │       ├── gtest-printers.h
> │       │       ├── gtest_prod.h
> │       │       ├── gtest-spi.h
> │       │       ├── gtest-test-part.h
> │       │       ├── gtest-typed-test.h
> │       │       └── internal
> │       │           ├── gtest-death-test-internal.h
> │       │           ├── gtest-filepath.h
> │       │           ├── gtest-internal.h
> │       │           ├── gtest-linked_ptr.h
> │       │           ├── gtest-param-util-generated.h
> │       │           ├── gtest-param-util.h
> │       │           ├── gtest-port.h
> │       │           ├── gtest-string.h
> │       │           ├── gtest-tuple.h
> │       │           └── gtest-type-util.h
> │       └── src
> │           └── gtest
> │               ├── cmake
> │               │   └── internal_utils.cmake
> │               ├── CMakeLists.txt
> │               └── src
> │                   ├── gtest-all.cc
> │                   ├── gtest.h
> │                   └── gtest_main.cc
> ├── gtest-doc
> ├── gtest-locale
> └── gtest-staticdev
>
> I replace gtest with gtest-dev.
>
>
> ERROR: Unable to install packages. Command
> '/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/x86_64-linux/usr/bin/smart
> --data-dir=/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/work/overo-poky-linux-gnueabi/builder-console-image/1.0-r0/rootfs/var/lib/smart
> install -y alsa-utils@armv7a_vfp_neon psplash@armv7a_vfp_neon
> mtdev@armv7a_vfp_neon tar@armv7a_vfp_neon less@armv7a_vfp_neon
> iputils@armv7a_vfp_neon mtd-utils-ubifs@armv7a_vfp_neon
> sudo@armv7a_vfp_neon nirsd@armv7a_vfp_neon u-boot-fw-utils@overo
> raw2rgbpnm@armv7a_vfp_neon vim@armv7a_vfp_neon
> media-ctl@armv7a_vfp_neon findutils@armv7a_vfp_neon
> rpm@armv7a_vfp_neon cpufrequtils@armv7a_vfp_neon
> packagegroup-cli-tools@all bzip2@armv7a_vfp_neon
> v4l-utils@armv7a_vfp_neon cmake@armv7a_vfp_neon nano@armv7a_vfp_neon
> g++-symlinks@armv7a_vfp_neon gcc-dev@armv7a_vfp_neon
> gcc-doc@armv7a_vfp_neon psplash-brainsight@armv7a_vfp_neon tzdata@all
> coreutils@armv7a_vfp_neon g++@armv7a_vfp_neon gcov@armv7a_vfp_neon
> init-ifupdown@overo tcpdump@armv7a_vfp_neon
> systemd-analyze@armv7a_vfp_neon packagegroup-core-boot@overo
> memtester@armv7a_vfp_neon yavta@armv7a_vfp_neon
> cpp-symlinks@armv7a_vfp_neon libts-1.0-0@armv7a_vfp_neon
> gcc-plugin-dev@armv7a_vfp_neon gzip@armv7a_vfp_neon
> packagegroup-core-ssh-openssh@all ntp@armv7a_vfp_neon
> libev4@armv7a_vfp_neon packagegroup-cli-tools-debug@all
> gcc@armv7a_vfp_neon u-boot@overo cpp@armv7a_vfp_neon
> gtest-dev@armv7a_vfp_neon iw@armv7a_vfp_neon wget@armv7a_vfp_neon
> shadow@armv7a_vfp_neon zygoted@armv7a_vfp_neon
> gcc-plugins@armv7a_vfp_neon grep@armv7a_vfp_neon zip@armv7a_vfp_neon
> diffutils@armv7a_vfp_neon valgrind@armv7a_vfp_neon
> linux-firmware-sd8787@all linux-firmware-sd8686@all
> smartpm@armv7a_vfp_neon gcc-dbg@armv7a_vfp_neon
> gcc-symlinks@armv7a_vfp_neon packagegroup-base-extended@overo
> u-boot-mkimage@armv7a_vfp_neon base-passwd@armv7a_vfp_neon
> locale-base-en-us@armv7a_vfp_neon' returned 1:
> Loading cache...
> Updating cache...               ######################################## [100%]
>
> Computing transaction...error: Can't install
> gtest-dev-1.7.0-r0@armv7a_vfp_neon: no package provides gtest =
> 1.7.0-r0
>
>
> ERROR: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/work/overo-poky-linux-gnueabi/builder-console-image/1.0-r0/temp/log.do_rootfs.11446
> ERROR: Task 7 (/home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/poky/meta-nirs/recipes-images/gumstix/builder-console-image.bb,
> do_rootfs) failed with exit code '1'
>
>
> But I see them
> ls tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/gtest/1.7.0-r0/deploy-rpms/armv7a_vfp_neon/
> gtest-dbg-1.7.0-r0.armv7a_vfp_neon.rpm  gtest-dev-1.7.0-r0.armv7a_vfp_neon.rpm
>
> Any clue what I'm missing?
>
> BR,
>
> -KA
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

