Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72813E00A3B; Mon, 27 Jul 2015 05:17:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 589CBE009D6
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:17:26 -0700 (PDT)
Received: by igbpg9 with SMTP id pg9so73910168igb.0
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 05:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=bhsrPqc3wjQ5J8Ev7srJEAWdzruWB7lRBW7t6lc6+rY=;
	b=Gb79az2Q1KVtCCbi9SwHw5hnEYJjeeorbTfUxgDgWdBjVMT5p+Q7ybHy7D5EllKOS2
	WFJXjn6y2tT73bs2WQuhk95RJWXSubeCqpxsuDv/0/JdhkRzo+3FKsRrifSm2I0roNR8
	WqU8HNQqHMcYXUQR6SbyRHcwuoOwrNAfKVrfENkuuFk5RmkjeUAqJbgLa32MqFWxgHGr
	6WBpSqi1ML18OpRcgSaIhw2nK5AQSacpzpvqE82s0sQyCOJWEOCB+8lsCj12LnEc+b7w
	XvUAst+TlrVTidoJUnrhzoDtGXdIzqVlaxzdMDN6t/3dyrYy4HgUiUTnrnP9SakVzqbA
	yhMQ==
X-Received: by 10.50.136.134 with SMTP id qa6mr17043193igb.26.1437999446048;
	Mon, 27 Jul 2015 05:17:26 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	q187sm11724880ioe.37.2015.07.27.05.17.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Jul 2015 05:17:25 -0700 (PDT)
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <55B5213D.9040604@gmail.com>
	<CAP71Wjz6LZ465Mjskx1gDLV5xpff=_jZiqogAJsm0=x3_o+e1w@mail.gmail.com>
	<55B61016.1030504@gmail.com>
	<CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55B62152.9080103@gmail.com>
Date: Mon, 27 Jul 2015 08:17:22 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAP71WjzRBHmATtczTV=5x6YoNhXuy66c4FVnhYJjSt-5QophQw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 12:17:31 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 07/27/15 08:04, Nicolas Dechesne wrote:
> On Mon, Jul 27, 2015 at 1:03 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>
>
> well, something's definitely wrong here.. are you doing a minimal
> OE-core build? can you try to reproduce / narrow down? Are you running
> recent master? I have no idea what the error means here.. but clearly,
> it works for me, so that could be something from your environment..

I agree.

The error appears to be some sort of "file not found". The command it is
running when it fails is:

     depmodwrapper
/z/layerindex/firefly/tmp/work/firefly_emmc_mainline-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs
4.0.0-rc1

Since the directory (/z/layerindex/firefly...) exists, it must be
failing because something is wrong with the version (?)

My kernel recipe's name is "firefly-mainline-kernel_4.0.bb" and it looks
like:

# Copyright (C) 2015 Trevor Woerner <twoerner@gmail.com>
# Released under the MIT license (see COPYING.MIT for the terms)

inherit kernel

DESCRIPTION = "Mainline Rockchip Linux kernel for Firefly"
HOMEPAGE =
"http://wiki.t-firefly.com/index.php/Firefly-RK3288/Mainline_Kernel/en"
LICENSE = "GPLv2"
LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
SECTION = "kernel"

DEPENDS = "rk2918-tools-native"

SRC_URI =
"git://github.com/TeeFirefly/linux-rockchip.git;branch=firefly;rev=cbbae6741c60c9e09f87521e3a79810abd6a2fda"
LINUX_VERSION ?= "4.0.0-rc1"
PV = "4.0.0-rc1+git${SRCPV}"
S = "${WORKDIR}/git"
B = "${S}"

COMPATIBLE_MACHINE = "firefly-emmc-mainline"

KERNEL_CONFIG_COMMAND = "cd ${S}; make rk3288_firefly_defconfig"
KERNEL_IMAGETYPE = "zImage"

do_compile_append () {
        make rk3288-firefly.dtb
}

do_install_append () {
        if [ ! -r arch/arm/boot/zImage ]; then
                echo "can't find 'arch/arm/boot/zImage'"
                exit 1
        fi 
        if [ ! -r arch/arm/boot/dts/rk3288-firefly.dtb ]; then
                echo "can't find 'arch/arm/boot/dts/rk3288-firefly.dtb'"
                exit 1
        fi 
        cat ${S}/arch/arm/boot/zImage
${S}/arch/arm/boot/dts/rk3288-firefly.dtb > ${S}/zImage-dtb

        rk2918_mkkrnlimg -a ${S}/zImage-dtb ${S}/kernel.img
}

inherit deploy

do_deploy_append () {
        install -d ${DEPLOYDIR}
        cp ${S}/kernel.img ${DEPLOYDIR}
}

addtask deploy before do_build after do_compile

