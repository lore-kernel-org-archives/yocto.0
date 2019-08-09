Return-Path: <baisch@tau-tec.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D9E0E00DED; Fri,  9 Aug 2019 10:35:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [85.13.130.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from dd5802.kasserver.com (dd5802.kasserver.com [85.13.130.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB8FE00AB6
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 10:35:06 -0700 (PDT)
Received: from dd5802.kasserver.com (dd0802.kasserver.com [85.13.143.1])
	by dd5802.kasserver.com (Postfix) with ESMTPSA id 877B736872B9
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2019 19:35:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tau-tec.com;
	s=kas201903211716; t=1565372105;
	bh=8CSUCuoDiJlbR1FQOEK/uxnEqCbQ5OUQ8rjjbAH6SjY=;
	h=Subject:From:To:Date:From;
	b=NMxYVDzBd+ilweeNqpGdRd1+0JEj3aDucRyyBzakkmfy9y7HGpezCix40I+MjvXB+
	YBzrIhjMD7t/dMw2d1spviRfFqoswp/N1UmXSJxgVDrNZfZluP+uvUBbSn2bsMy4QT
	GdvhK3Ne+wG/x/AzFimyrV5rzo6nK3L+OjnBU0t/LSfaETljpay+c+asbTNGM8Nlx4
	rJ88np3/CtfZKbkKYITWjohapea1AswrubpiQlg0RipapqgMN1AlCWdDIRwuKki7+q
	5ZgRC4JfFh1yr/A2zM2F9DauH0CrJHQ7FxAKB9xcEraF57tPEqpZH8//zIwBlST5C6
	Oys3mXQE4EdFA==
MIME-Version: 1.0
X-SenderIP: 84.136.102.136
User-Agent: ALL-INKL Webmail 2.11
From: baisch@tau-tec.com
To: yocto@yoctoproject.org
Message-Id: <20190809173505.877B736872B9@dd5802.kasserver.com>
Date: Fri,  9 Aug 2019 19:35:05 +0200 (CEST)
Subject: Using extensible SDK with multilib
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
X-List-Received-Date: Fri, 09 Aug 2019 17:35:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit


Hello everyone,

Short version:

I have an 64 bit Yocto Raspberry build with a piece of 32 bit software with
multilib. The goal is now to be able to use the eSDK to build 32 bit
software for that system. After building and installing the eSDK there are
even two files environment-setup-aarch64-poky-linux and
environment-setup-armv7ve-vfp-pokymllib32-linux-gnueabi. After sourcing the
32bit armv7ve environment file, devtool is still building my software as 64
bit. Why doesn't it work?

Long version:

The multilib definition in my local config looks like this:

require conf/multilib.conf
MULTILIBS = "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 = "armv7ve"
IMAGE_INSTALL_append_raspberrypi3-64 = " lib32-software-dummy"


The software-dummy "hello world" project builds fine in 32 bit.

Now on to the eSDK: The
environment-setup-armv7ve-vfp-pokymllib32-linux-gnueabi actually didn't work
out of the box, I needed to add the bottom of
environment-setup-aarch64-poky-linux to
environment-setup-armv7ve-vfp-pokymllib32-linux-gnueabi, so devtool is
found.

This part was missing from the armv7ve environment file:

. /workdir/sdk/rpi/buildtools/environment-setup*
export OE_SKIP_SDK_CHECK=1
export DEPLOY_DIR_IMAGE=/workdir/sdk/rpi/tmp/deploy/images/raspberrypi3-64
export PATH=/workdir/sdk/rpi/sysroots/x86_64-pokysdk-linux/usr/bin:$PATH
printf 'SDK environment now set up; additionally you may now run devtool to
perform development tasks.
Run devtool --help for further details.
'
(which bitbake > /dev/null 2>&1 && echo 'WARNING: attempting to use the
extensible SDK in an environment set up to run bitbake - this may lead to
unexpected results. Please source this script in a new shell session
instead.') || true


Another thing I noticed that SDKTARGETSYSROOT in both files point to
/workdir/sdk/rpi/tmp/sysroots/raspberrypi3-64 which is maybe not correct.
Also not very sure about DEPLOY_DIR_IMAGE.


Eg. in environment-setup-aarch64-poky-linux we have:

export CC="aarch64-poky-linux-gcc --sysroot=$SDKTARGETSYSROOT"
export CXX="aarch64-poky-linux-g++ --sysroot=$SDKTARGETSYSROOT"
…
export ARCH=arm64
export CROSS_COMPILE=aarch64-poky-linux-


while in environment-setup-armv7ve-vfp-pokymllib32-linux-gnueabi:

export CC="arm-pokymllib32-linux-gnueabi-gcc -march=armv7ve -mfpu=vfp
-mfloat-abi=softfp --sysroot=$SDKTARGETSYSROOT"
export CXX="arm-pokymllib32-linux-gnueabi-g++ -march=armv7ve -mfpu=vfp
-mfloat-abi=softfp --sysroot=$SDKTARGETSYSROOT"
…
export ARCH=arm
export CROSS_COMPILE=arm-pokymllib32-linux-gnueabi-


After sourcing the armv7ve environment file, building the software I added
with devtool, it's still building in 64 bit. Looking at the run.do_install
logfile I see this:

export AR="aarch64-poky-linux-ar"
export AS="aarch64-poky-linux-as "
…
export CC="aarch64-poky-linux-gcc -fstack-protector-strong
-D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/workdir/sdk/rpi/tmp/work/aarch64-poky-linux/cmake-test/1.0-r0/recipe-sysroot"
…
export CCLD="aarch64-poky-linux-gcc -fstack-protector-strong
-D_FORTIFY_SOURCE=2 -Wformat -Wformat-security -Werror=format-security
--sysroot=/workdir/sdk/rpi/tmp/work/aarch64-poky-linux/cmake-test/1.0-r0/recipe-sysroot"


for some reason it's all 64 bit in there and I don't know where this comes
from. The armv7ve environment file also has
/workdir/sdk/rpi/tmp/sysroots/x86_64/usr/bin/arm-pokymllib32-linux-gnueabi
in it's PATH, where the 32 bit compilers seem to live.


The only way I found to build my software is to build a little script that
calls bitbake directly or to add IMAGE_INSTALL_append_raspberrypi3-64 = "
lib32-cmake-test" to the local.config and build the image with devtool. Both
are not nice solutions.

Thank you for any help!

Regards,

- Michael
--



