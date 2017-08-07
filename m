Return-Path: <yegorslists@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A991E00AD0; Mon,  7 Aug 2017 00:00:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yegorslists[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f182.google.com (mail-ua0-f182.google.com
	[209.85.217.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80D98E009A4
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 00:00:26 -0700 (PDT)
Received: by mail-ua0-f182.google.com with SMTP id w45so26762488uac.5
	for <yocto@yoctoproject.org>; Mon, 07 Aug 2017 00:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=JSGc0tVw6pqkIZ8/09+MM5DZiaHCZuJNpbKzSnxZ5Mw=;
	b=rEhBEouoVpdL+2BGcp6W0WhrWMUl6chN/numskmIrwN47VsOR+JocCEjuOmOTri2pq
	wsTgeclNuQIXrsJHN5S9rhBqMACNauwBbNkiafhp17zE9FjU2mYtCPXRNVC3zPemgGLZ
	MC5QxS4CkMyXaso40gStuGMTeMZ9CnVUTibMEsk0/GgofghivqRw7UB0/3ZdpvluUCjo
	PHCthb76MK3eoIFtfvNVwv7Dr7+vKVh6ZXFHLURHDOqWSd4ecgY+HnBmY6XsqlMH2FmL
	egeZTFDd9b5dTXnM0t6JMtTwTcWJBLddNf+SJtfFjor0cdbgql8hkCKCbm0egtqfQu0N
	Fhpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=JSGc0tVw6pqkIZ8/09+MM5DZiaHCZuJNpbKzSnxZ5Mw=;
	b=MYO7X20vLOh9Yie3daAgVJ16XqB1nI/rM2MymOSvJ+iGi83DLWrKB4uCZuEOeS6VZO
	eQTrT9JuOkLPvgIICWt3WknzHoDIegRJeM12v5leq1iJrZi5MR0s36YglTu1KH8fwf4C
	i7Btz0o93O6bAB5Ht0/4CjlEPJs1WR/XewNJpfkaCoT/6iukIX3eB7vV6lY08uxQCvme
	/ssZHu3h5jjd+6u2szlehr6LRH8NuCTcvc/4T20/AtlHV5isZbWzD7m1EsDhI3KHQ4QC
	sva2biuMPedrJRXFD2FBYfIrWwc6akGMLe+Fwd5OZZSqNoPA4D/jPi723tNAx36A1yF9
	ooog==
X-Gm-Message-State: AHYfb5in08hysCQhP5zuHZc88+ZpgvWANV4AVTASGkdrM7zsF+pxMzJw
	4XSZiJ97Pn1teas4nd4+fqAozDv5qzmB
X-Received: by 10.176.25.45 with SMTP id v45mr7540671uag.16.1502089225630;
	Mon, 07 Aug 2017 00:00:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.73.115 with HTTP; Mon, 7 Aug 2017 00:00:05 -0700 (PDT)
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Mon, 7 Aug 2017 09:00:05 +0200
Message-ID: <CAGm1_ks-gk4aMeEYtDPnf_AGu=KfR_NYY7JGuS1ZSpppEe-3gg@mail.gmail.com>
To: Yocto <yocto@yoctoproject.org>
Subject: Custom FIT image: circular dependencies issue
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
X-List-Received-Date: Mon, 07 Aug 2017 07:00:27 -0000
Content-Type: text/plain; charset="UTF-8"

I've switched to Yocto's master branch from Krogoth and get now
circular dependencies for my kernel recipe:

ERROR: 502 unbuildable tasks were
found.#####################################################################

                                      | ETA:  0:00:08
These are usually caused by circular dependencies and any circular
dependency chains found will be printed below. Increase the debug
level to see a list of unbuildable tasks.

Identifying dependency loops (this may take a short while)...

ERROR:
Dependency loop #1 found:
  Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_create_fitimage
(dependent Tasks ['linux-yocto-custom.bb:do_deploy'])
  Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_packagedata
(dependent Tasks ['linux-yocto-custom.bb:do_package',
'linux-yocto-custom.bb:do_create_fitimage'])
  Task /home/user/MyProjects/oss/yocto/poky/meta-baltos/recipes-kernel/linux/linux-yocto-custom.bb:do_deploy
(dependent Tasks ['linux-yocto-custom.bb:do_bundle_initramfs',
'depmodwrapper-cross_1.0.bb:do_populate_sysroot',
'linux-yocto-custom.bb:do_populate_sysroot',
'linux-yocto-custom.bb:do_packagedata'])


ERROR: Command execution failed: 1

My kernel recipe:

inherit kernel
require recipes-kernel/linux/linux-yocto.inc

python __anonymous () {
        depends = d.getVar("DEPENDS", True)
        depends = "%s u-boot-mkimage-native dtc-native" % depends
        d.setVar("DEPENDS", depends)
}

do_create_fitimage() {
        cp ${THISDIR}/linux-yocto-custom/kernel-fit.its ${DEPLOY_DIR_IMAGE}
        uboot-mkimage -f ${DEPLOY_DIR_IMAGE}/kernel-fit.its
${DEPLOY_DIR_IMAGE}/kernel-fit.itb
}

addtask create_fitimage before do_packagedata after do_deploy

KBRANCH = "linux-3.18.y"
KCONFIG_MODE = "--alldefconfig"

SRC_URI = "git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git;protocol=git;bareclone=1;branch=${KBRANCH}"
SRC_URI += "file://defconfig"
SRC_URI += "file://baltos.scc \
           "

LINUX_VERSION ?= "3.18"
LINUX_VERSION_EXTENSION ?= ""

SRCREV="v3.18.32"

PV = "${LINUX_VERSION}+git${SRCPV}"

COMPATIBLE_MACHINE_baltos = "baltos"

Any idea?

Regards,
Yegor

