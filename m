Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54B9CE006B7; Mon, 14 Jul 2014 11:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2322CE004FF;
	Mon, 14 Jul 2014 11:27:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s6EIRfMk019159
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 14 Jul 2014 11:27:41 -0700 (PDT)
Received: from [128.224.56.48] (128.224.56.48) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Mon, 14 Jul 2014 11:27:41 -0700
Message-ID: <53C42119.8000406@windriver.com>
Date: Mon, 14 Jul 2014 14:27:37 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: jags gediya <jags.gediya@gmail.com>, <yocto@yoctoproject.org>,
	<meta-freescale@yoctoproject.org>
References: <CAP3RZojz+v3uDix=a2XaAYhO36BCgVN7XoWr700To5HmCTjmyA@mail.gmail.com>
In-Reply-To: <CAP3RZojz+v3uDix=a2XaAYhO36BCgVN7XoWr700To5HmCTjmyA@mail.gmail.com>
Subject: Re: Yocto build is taking too long time in kernel do_package and do_populate_sysroots
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
X-List-Received-Date: Mon, 14 Jul 2014 18:27:56 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-07-14 11:20 AM, jags gediya wrote:
> I am a newbie to yocto. For the purpose of check in code on svn, I
> have deleted all .git, .gitignore and .repo file from yocto before
> built. Then i have checked out that code from svn and started the
> yocto built.
>
> But my compilation used to stop at below point for more than an hour.

Depending on the speed of your machine, the disk, memory, etc .. yes,
those tasks can take a long time.

We've been working on improving kernel build and packaging time for
several releases now, and are still continuing in the upcoming
1.7 release.

The sheer amount of files, i/o and packaging required for the kernel
build, sysroot, kernel modules and packages simply takes time.

For incremental development, and testing workflow. Look into only
running the single task you need (i.e. just compile), or look at using
"externalsrc" support. Both those options will significant speed up
your iterative development time.

Bruce

>
> Currently 2 running tasks (1771 of 1777):
>      0: linux-imx-3.10.17-r0 do_package (pid 4011)
>      1: linux-imx-3.10.17-r0 do_populate_sysroot (pid 19696)
> I am building the core-image-minimal for imx6sl evk.
>
> Some modification i have done for the kernel and u-boot. I am not
> taking kernel and u-boot from the git. Instead i have changed the
> SRC_URI, and i have given there the path for kernel and u-boot to take
> it from local system.
>
> Things i have modified as per below.
> originally linux-imx.inc was having,
>
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>
> inherit kernel
>
> # Put a local version until we have a true SRCREV to point to
> LOCALVERSION ?= "+yocto"
> SCMVERSION ?= "y"
>
> SRC_URI = "git://git.freescale.com/imx/linux-2.6-imx.git;branch=${SRCBRANCH} \
>             file://defconfig \
> "
>
> S = "${WORKDIR}/git"
>
> I have changed it to,
>
> #LICENSE = "GPLv2"
> #LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
> LICENSE = "CLOSED"
>
> inherit kernel
>
> SRC_URI = "file://${BSPDIR}/kernel \
>             file://defconfig \
> "
> S = "${BSPDIR}/kernel"
>
> Can anyone point me if i have done any wrong configuration.
> PS: Before chevk in on svn, Kernel compilation was taking that much
> long time while building images.
>
> Thanks,
> Jags
>


