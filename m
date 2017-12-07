Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9720E00D6A; Wed,  6 Dec 2017 23:21:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx24lb.world4you.com (mx24lb.world4you.com [81.19.149.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58A28E00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:21:13 -0800 (PST)
Received: from [81.19.149.42] (helo=webmail.world4you.com)
	by mx24lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1eMqUZ-0000nz-TX; Thu, 07 Dec 2017 08:21:11 +0100
MIME-Version: 1.0
Date: Thu, 07 Dec 2017 08:21:11 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: Jerry Lian <jerry.lian@gmail.com>
In-Reply-To: <CAE0QtjMkS-hWknAiO1s0n8H=_6iA8YAJQqRCj7mDj4kGFum16A@mail.gmail.com>
References: <CAE0QtjMkS-hWknAiO1s0n8H=_6iA8YAJQqRCj7mDj4kGFum16A@mail.gmail.com>
Message-ID: <f6cc998fff629c30ebcbe2791a66e6d1@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.42
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx24lb.world4you.com);
	SAEximRunCond expanded to false
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Build error: "u-boot-imx_2017.03.bb:do_compile" failed ( freescale I.MX 6 on Ubuntu 16.04) ?
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
X-List-Received-Date: Thu, 07 Dec 2017 07:21:14 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello Jerry,

U-Boot depends on Python but the dependency is not included in the 
U-Boot recipe AFAIK.
I have already sent a patchset which was not complete at that time to 
the yocto mailinglist. Ross meant one needs to inherit from Python 
U-Boot class in the recipe not just include a dependency o/w it will not 
be in path.
The error only comes up because you do not have Python installed on your 
system I think.

Cheers
Eric

Am 06.12.2017 18:13, schrieb Jerry Lian:

> I got an error when trying to build for freescale I.MX6 on Ubuntu 
> 16.04.(see below)
> (I just follow the guide from http://freescale.github.io)
> 
> Anybody got hints?
> 
> Thanks!
> 
> Jerry
> 
> =======================================================================
> ................
> | tools/libfdt_wrap.c:147:21: fatal error: Python.h: No such file or 
> directory
> | compilation terminated.
> | error: command 'x86_64-linux-gnu-gcc' failed with exit status 1
> | 
> /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/tools/Makefile:123: 
> recipe for target 'tools/_libfdt.so' failed
> | make[2]: *** [tools/_libfdt.so] Error 1
> | 
> /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git/Makefile:1229: 
> recipe for target 'tools' failed
> | make[1]: *** [tools] Error 2
> | make[1]: Leaving directory 
> '/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/build/mx6qsabresd_config'
> | Makefile:150: recipe for target 'sub-make' failed
> | make: *** [sub-make] Error 2
> | make: Leaving directory 
> '/home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/git'
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_compile (log file is located at 
> /home/jerry/fsl-release-bsp/build-x11/tmp/work/imx6qsabresd-poky-linux-gnueabi/u-boot-imx/2017.03-r0/temp/log.do_compile.9339)
> ERROR: Task 
> (/home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_compile) 
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4851 tasks of which 3009 didn't need to 
> be rerun and 1 failed.
> 
> Summary: 1 task failed:
> /home/jerry/fsl-release-bsp/sources/meta-fsl-bsp-release/imx/meta-bsp/recipes-bsp/u-boot/u-boot-imx_2017.03.bb:do_compile
> ..........................
> ========================================================================

