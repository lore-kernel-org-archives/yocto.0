Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21FF4E01506
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 07:23:46 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r5BENkHc020693
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Jun 2013 07:23:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Tue, 11 Jun 2013 07:23:44 -0700
Message-ID: <51B732EF.9080902@windriver.com>
Date: Tue, 11 Jun 2013 10:23:43 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Javi Roman <javiroman@kernel-labs.org>
References: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
In-Reply-To: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Custom kernel in Yocto/dylan branch.
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
X-List-Received-Date: Tue, 11 Jun 2013 14:23:47 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-06-11 10:18 AM, Javi Roman wrote:
> Hi!
>
>
> I few years ago I used to work with OpenEmbedded (the classical
> branch). The addition of new kernel recipes was easy for me,
> nevertheless I'm unable to do similar things with the current
> Yocto-dylan branch.
>
> The current Yocto-dylan is based on Linux kernel 3.x branches, all the
> documentation regarding add custom kernels or new kernel features are
> based on those 3.x branches. However, I would like to use a 2.6.32
> Linux kernel (it's a constraint for my project).
>
> I'm using the following kernel recipe in my bsp:
>
> linux/
>        linux-yocto-abacus/
>                   defconfig
>         linux-yocto-abacus_2.6.32.bb
>
> #####  linux-yocto-abacus_2.6.32.bb ####
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> INHIBIT_PACKAGE_DEBUG_SPLIT =3D "1"
>
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI_append =3D "file://defconfig"
>
> PROVIDES =3D "virtual/kernel"
>
> SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
> it;protocol=3Dgit;nocheckout=3D1"
>
> LINUX_VERSION =3D "2.6.32"
> LINUX_VERSION_EXTENSION =3D "-abacus"
>
> # tag: v3.4    76e10d158efb6d4516018846f60c2ab5501900bc
> # tag: v2.6.32 459b3d520991ec1b8e5ba68fbc4b206d602fee6e
> SRCREV=3D"459b3d520991ec1b8e5ba68fbc4b206d602fee6e"
>
> PR =3D "r1"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE =3D "romley"
>
> ############ end ###################
>
> When I build the kernel with:
>
> # bitbake virtual/kernel
>
> The kernel is downloaded from kernel.org, with the correct git tag
> (v2.6.32) and is built with success. Nevertheless, the "defconfig" is
> not properly added in the kernel configuration. If I run:
>
> # bitbake virtual/kernel -c menuconfig
>
> The ncurses menuconfig is not using the "defconfig" added by me.
>
> The "defconfig" with all kernel configurations is a deprecated feature?
> Which is the correct way to add a new kernel recipe?

It definitely should still be working, we have plenty of defconfig
users (whether right or wong ;) and it is tested daily.

How did you specify your defconfig on the SRC_URI ?

Bruce

>
> Many thanks!
> Javi Roman
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


