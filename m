Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2682EE00576; Mon, 14 Jul 2014 08:20:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD35DE0030A;
	Mon, 14 Jul 2014 08:20:17 -0700 (PDT)
Received: by mail-qg0-f48.google.com with SMTP id i50so791433qgf.35
	for <multiple recipients>; Mon, 14 Jul 2014 08:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GdxHLcpS0kLnI7Y2xWPBTNIzYLLm/n5lacJcOzgsYi8=;
	b=hxFdLfSO8JHLWEIOg+JDTiwu8twBMRYOTXkS68yflM73KczeyH2xfloOfgWLvT498C
	sWoBm32DG1IRM4Vk4v9XSkHvZ88Hzu28QQzfV4TzeHN6v1rWa10pE1vwNQa14dHxwtZl
	LbV/TEuzDs6DckaX6F2gxSd2jPMLogH9PNvGsOKrDv69iDZQIBDnIca8bPEqeZ2dGfBB
	B77BWZJuvny+79RTxfVlBilWtPoVrXAa6+Y5NKCwxk+7IiuktgQwSkghjg5wEypQXDQM
	Uv+IY0abeTD62Ps8Dwp6ExJMmmo6eouXIPUDVFBz2bD0Gm+qttJO0RRH+TnY3BzallAp
	G53w==
MIME-Version: 1.0
X-Received: by 10.224.160.83 with SMTP id m19mr23152297qax.95.1405351217333;
	Mon, 14 Jul 2014 08:20:17 -0700 (PDT)
Received: by 10.224.37.133 with HTTP; Mon, 14 Jul 2014 08:20:17 -0700 (PDT)
Date: Mon, 14 Jul 2014 20:50:17 +0530
Message-ID: <CAP3RZojz+v3uDix=a2XaAYhO36BCgVN7XoWr700To5HmCTjmyA@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: yocto@yoctoproject.org, meta-freescale@yoctoproject.org
Subject: Yocto build is taking too long time in kernel do_package and do_populate_sysroots
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
X-List-Received-Date: Mon, 14 Jul 2014 15:20:25 -0000
Content-Type: text/plain; charset=UTF-8

I am a newbie to yocto. For the purpose of check in code on svn, I
have deleted all .git, .gitignore and .repo file from yocto before
built. Then i have checked out that code from svn and started the
yocto built.

But my compilation used to stop at below point for more than an hour.

Currently 2 running tasks (1771 of 1777):
    0: linux-imx-3.10.17-r0 do_package (pid 4011)
    1: linux-imx-3.10.17-r0 do_populate_sysroot (pid 19696)
I am building the core-image-minimal for imx6sl evk.

Some modification i have done for the kernel and u-boot. I am not
taking kernel and u-boot from the git. Instead i have changed the
SRC_URI, and i have given there the path for kernel and u-boot to take
it from local system.

Things i have modified as per below.
originally linux-imx.inc was having,

LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"

inherit kernel

# Put a local version until we have a true SRCREV to point to
LOCALVERSION ?= "+yocto"
SCMVERSION ?= "y"

SRC_URI = "git://git.freescale.com/imx/linux-2.6-imx.git;branch=${SRCBRANCH} \
           file://defconfig \
"

S = "${WORKDIR}/git"

I have changed it to,

#LICENSE = "GPLv2"
#LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
LICENSE = "CLOSED"

inherit kernel

SRC_URI = "file://${BSPDIR}/kernel \
           file://defconfig \
"
S = "${BSPDIR}/kernel"

Can anyone point me if i have done any wrong configuration.
PS: Before chevk in on svn, Kernel compilation was taking that much
long time while building images.

Thanks,
Jags

