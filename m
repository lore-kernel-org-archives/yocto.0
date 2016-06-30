Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B459E00E18; Thu, 30 Jun 2016 01:06:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD93FE00D2D
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 01:06:28 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id E27BA68A01A; Thu, 30 Jun 2016 09:06:26 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id F359868A019;
	Thu, 30 Jun 2016 09:06:25 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id A06756740102;
	Thu, 30 Jun 2016 10:06:25 +0200 (CEST)
To: Khem Raj <raj.khem@gmail.com>
References: <5773AC2F.6050306@mlbassoc.com>
	<CAMKF1spxmk5G1v60bQU5QiNphd8PVVWEzTkcFeDECfNEPSsdgQ@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5774D301.3050801@mlbassoc.com>
Date: Thu, 30 Jun 2016 10:06:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1spxmk5G1v60bQU5QiNphd8PVVWEzTkcFeDECfNEPSsdgQ@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain build errors
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
X-List-Received-Date: Thu, 30 Jun 2016 08:06:32 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-06-29 17:27, Khem Raj wrote:
> On Jun 29, 2016 4:10 AM, "Gary Thomas" <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>  >
>  > I just [successfully] built a large image for my target (details):
>  > BB_VERSION        = "1.31.0"
>  > BUILD_SYS         = "x86_64-linux"
>  > NATIVELSBSTRING   = "Ubuntu-15.10"
>  > TARGET_SYS        = "arm-amltd-linux-gnueabi"
>  > MACHINE           = "teton-p0382"
>  > DISTRO            = "amltd"
>  > DISTRO_VERSION    = "2.1+snapshot-20160629"
>  > TUNE_FEATURES     = "arm armv7a vfp thumb neon       callconvention-hard       cortexa9"
>  > TARGET_FPU        = "hard"
>  > meta              = "master:c6d50b272936b61b98a056ea2e1de5d0f4ef53ce"
>  >   ... platform specifics removed ...
>  >
>  > Then I tried 'bitbake meta-toolchain' immediately afterwards, only
>  > to be assaulted by a barrage of messages like this:
>  >
>  > ERROR: nativesdk-libsdl-1.2.15-r3 do_populate_sysroot: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses
> b05a369a00869fc70fe9ba2cc28e7259 for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>  > ERROR: Taskhash mismatch 8ac6cdc4e26ea7fb43e76f0f9ce3def0 verses b05a369a00869fc70fe9ba2cc28e7259 for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-graphics/libsdl/libsdl_1.2.15.bb.do_populate_sysroot
>  > ERROR: nativesdk-bash-completion-2.1-r0 do_compile: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses
> 0223876e7a4bc1e57f93a44631b4e4aa for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>  > ERROR: Taskhash mismatch 2e063c5bac7bf922fbff59be5120a62e verses 0223876e7a4bc1e57f93a44631b4e4aa for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_compile
>  > ERROR: nativesdk-bash-completion-2.1-r0 do_install: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses
> 0b4e83ecda4ce5560e50891715d6a5d1 for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>  > ERROR: Taskhash mismatch a9932697b29f5fbd06feafedea44d7d4 verses 0b4e83ecda4ce5560e50891715d6a5d1 for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_install
>  > ERROR: nativesdk-bash-completion-2.1-r0 do_package: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses
> fe3108a63774b61b3910e75495fb4d5d for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>  > ERROR: Taskhash mismatch 3cdba66cd643484bed95676b5a4cdc21 verses fe3108a63774b61b3910e75495fb4d5d for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-support/bash-completion/bash-completion_2.1.bb.do_package
>  > ERROR: nativesdk-qemu-2.6.0-r1 do_configure: Taskhash mismatch c8c576da0ae11886e518efa4bc406f18 verses
> ad6e2e5d7704e6002f3b4ec56bc2d92b for
> virtual:nativesdk:/local/poky-cutting-edge/meta/recipes-devtools/qemu/qemu_2.6.0.bb.do_configure
>  >    ...
>  > NOTE: Tasks Summary: Attempted 2047 tasks of which 865 didn't need to be rerun and all succeeded.
>  > Summary: There were 1212 ERROR messages shown, returning a non-zero exit code.
>  >
>  > There were too many error lines to copy :-(
>  >
>  > What does this mean and how do I get my toolchain?
>
> Bitbake -cpopulate_sdk your-image

I tried that and it seems to have worked, but I still got similar error messages:
ERROR: imx6-demo-image-1.0-r0 do_populate_sdk: Taskhash mismatch 5313c03c1d0cdd396e6128d6400e41e7 verses 
96756bc7f74f66f35df9cb2fe9a596d0 for 
/local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk
ERROR: Taskhash mismatch 5313c03c1d0cdd396e6128d6400e41e7 verses 96756bc7f74f66f35df9cb2fe9a596d0 for 
/local/poky-cutting-edge/meta-teton-imx6-p0382/packages/images/imx6-demo-image.bb.do_populate_sdk

What file(s) can I look at to see why the mismatch happened?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

