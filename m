Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4628BE00CB7; Sun, 27 Aug 2017 12:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f175.google.com (mail-wr0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF980E00C8F
	for <yocto@yoctoproject.org>; Sun, 27 Aug 2017 12:29:01 -0700 (PDT)
Received: by mail-wr0-f175.google.com with SMTP id z91so12846049wrc.1
	for <yocto@yoctoproject.org>; Sun, 27 Aug 2017 12:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pvh1tcNVqcmIxsl6OdN207Y0gzSUNBVbqQPR3dvf4ec=;
	b=bQZPfJsOpSsdL8/uJVvbhrk5FP1lMB8AYzEjhsIIVa/PK3I+Y2POVqULSiBcn6u+6h
	j4t/+376nfl504crabBNpJWmnFcuOIywN8MqtBMuoWGnLdpy/7OyXSpIUn/10aYUs4jD
	3+b++CWLcUF+1Y0UpwyBZubzrSR0b4L1QiA649QSOr9pyirJV5niUZoGwxNX5uBkoJnq
	+qCFTyNna7TW37mO1FnbZvD9t5kAfGJ8SjgVNh3PWq0yJcmMS8HI7ngtzWk15PCsLKmm
	6hS6RTPcP/C2RtNR7mrMOhyuBSYWh9nsohy+IVwgW+H8BHwmFpq57mfmQ5hOyGkQfM1u
	gnxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pvh1tcNVqcmIxsl6OdN207Y0gzSUNBVbqQPR3dvf4ec=;
	b=pZuIT8y6y7z+KJg2hbxIwO24p50H2KiRnNo8xR5Ci0hlyHXbS60Gk6QjfjJoAoE5r4
	J4TRDeC8G2p8DiFz0IW/ovJXNuKWHfvBSrEvtI/0sCTsZTqhOzbMzKExwNRAjh1cJL+t
	BtNwVj0C1uBMayNf3E117oHE4sA+yMKL9bWgfYUHkWL+RebGIyxnow827Y7UmlXWcGFO
	I4PjqnUu+FpTtTuU312mesNQulyxOQ7EaWKFxQeklC6p63ARZRKwFaCczD2LDw+K2vgB
	p83oKqIGsZM0rBgG54GzRk/7tMG+EarpnV4nsobUvYs4xkmnGZwnKNlF882ThZn3d901
	Vt8w==
X-Gm-Message-State: AHYfb5hqYfun4DVAbhoemvdCNW9Fobg3RND37D/uCnhuHqYl0Fvs4A3H
	TY2VRuv4JAHjtIWLZjkJlAf4DnJ+rQ==
X-Received: by 10.223.150.48 with SMTP id b45mr3151478wra.139.1503862140616;
	Sun, 27 Aug 2017 12:29:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.199.195 with HTTP; Sun, 27 Aug 2017 12:28:59 -0700 (PDT)
In-Reply-To: <CAGm1_ks-gk4aMeEYtDPnf_AGu=KfR_NYY7JGuS1ZSpppEe-3gg@mail.gmail.com>
References: <CAGm1_ks-gk4aMeEYtDPnf_AGu=KfR_NYY7JGuS1ZSpppEe-3gg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Sun, 27 Aug 2017 21:28:59 +0200
Message-ID: <CAAfyv36thUd79C=T5vtvidxgyEb7x8_mUMNL9EhkBCh_M2xmPg@mail.gmail.com>
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: richard@openedhand.com, Yocto <yocto@yoctoproject.org>
Subject: Re: Custom FIT image: circular dependencies issue
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
X-List-Received-Date: Sun, 27 Aug 2017 19:29:03 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Yegor,

On Mon, Aug 7, 2017 at 9:00 AM, Yegor Yefremov
<yegorslists@googlemail.com> wrote:
> I've switched to Yocto's master branch from Krogoth and get now
> circular dependencies for my kernel recipe:
>
> ERROR: 502 unbuildable tasks were
> found.#####################################################################
>
>                                       | ETA:  0:00:08
> These are usually caused by circular dependencies and any circular
> dependency chains found will be printed below. Increase the debug
> level to see a list of unbuildable tasks.
>
> Identifying dependency loops (this may take a short while)...
>
> ERROR:
> Dependency loop #1 found:
>   Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_create_fitimage
> (dependent Tasks ['linux-yocto-custom.bb:do_deploy'])
>   Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_packagedata
> (dependent Tasks ['linux-yocto-custom.bb:do_package',
> 'linux-yocto-custom.bb:do_create_fitimage'])
>   Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_deploy
> (dependent Tasks ['linux-yocto-custom.bb:do_bundle_initramfs',
> 'depmodwrapper-cross_1.0.bb:do_populate_sysroot',
> 'linux-yocto-custom.bb:do_populate_sysroot',
> 'linux-yocto-custom.bb:do_packagedata'])

This is my just rough explanation why you see this error. As you have
defined task do_create_fitimage before do_packagedata after do_deploy
new circular dependency check added in commit 7821f225 is creating
error showed above. When changing to following everything seems to
works fine:
-addtask create_fitimage before do_packagedata after do_deploy
+
+addtask create_fitimage before do_install after do_compile

As you simply copy its file + create dtb you can create
do_deploy_append method and create those steps there and you don't
need separate task. Hope this helps.
>
>
> ERROR: Command execution failed: 1
>
> My kernel recipe:
>
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> python __anonymous () {
>         depends = d.getVar("DEPENDS", True)
>         depends = "%s u-boot-mkimage-native dtc-native" % depends
>         d.setVar("DEPENDS", depends)
> }
>
> do_create_fitimage() {
>         cp ${THISDIR}/linux-yocto-custom/kernel-fit.its ${DEPLOY_DIR_IMAGE}
>         uboot-mkimage -f ${DEPLOY_DIR_IMAGE}/kernel-fit.its
> ${DEPLOY_DIR_IMAGE}/kernel-fit.itb
> }
>
> addtask create_fitimage before do_packagedata after do_deploy
>
> KBRANCH = "linux-3.18.y"
> KCONFIG_MODE = "--alldefconfig"
>
> SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;protocol=git;bareclone=1;branch=${KBRANCH}"
> SRC_URI += "file://defconfig"
> SRC_URI += "file://baltos.scc \
>            "
>
> LINUX_VERSION ?= "3.18"
> LINUX_VERSION_EXTENSION ?= ""
>
> SRCREV="v3.18.32"
>
> PV = "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE_baltos = "baltos"
>
> Any idea?
>
> Regards,
> Yegor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

