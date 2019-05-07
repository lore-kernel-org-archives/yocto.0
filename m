Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7672EE00C37; Mon,  6 May 2019 17:13:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1F93E00950
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 17:13:24 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id q65so22020441itg.2
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 17:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kdhaLVjTRdpZEYX+7cKPgljC4YJwO3WTI9bik6q7/OY=;
	b=eev+2OuVdR7UHWyp0VzzFTzfZYWN5aeV0WaVOI6Xm3SCALemL1soFS1ZLj7IvAfvmM
	j14rveSuo6WAvrZolE0TmsE/SKxsU1pOJYD9Lr4/xtAcCa6TGkASuTWOkDYIpIhkWYaM
	K1QSgZEzr8eX2jvELF0mRppNPm9khW6gEvRi6HdAcn0iU1m18AD1V8T6px+hvDuI5uRy
	ywrBaVL9TfBW259tc0jKCdsJOa/2sCWlqldsxczvr7zOaOs0mUdCkYmv9oD6VbFsm6pf
	xKXQb6CcrdiYIphSybXq9EYs+XTIiJ6Rz1REX1NlUsBIsGZiRQeHaKFijw+ZjSlozHY5
	UeBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kdhaLVjTRdpZEYX+7cKPgljC4YJwO3WTI9bik6q7/OY=;
	b=o2MSHTNMNd5UHoes4e407WtqLnzkkrcK6dFiqd1KbnsOSDxro2k3hEMIKYmCn7drQ/
	nrEOoLnZLF5P0W8eN1ltdxIGpmhwn/YwbQIMNHtYsC33yqJ4V78i3ZVv0fPeLX5InIDl
	5JJkZZmuHebm146FVYQVgiHINzTxqKQMeBMiBih/Zk058mUFyLaOjOVMSvLIBwdqqwgL
	q+IuVAoPiV4JhrsI8jNprw0kRUTPP/sx+Up/DOXF8+/UXfiLwf7v0ovlm6PmBza/p0r9
	IOJp2XUvwvxCN7Ng3YfOCZ8kjk/RJmng9csHBbzDpHd7Ku/Uq6DzT7fXxfVpdbvK7rkR
	fCyA==
X-Gm-Message-State: APjAAAWiNQW+odfiwaRwudMF5HXXMScHvVgie4Hw8DvpJYMzHXLOjQMg
	ammn0wW9kzA8Cub5fjPdKqvPasREvzvaiMeThDReJfg+
X-Google-Smtp-Source: APXvYqyBly92eaq+UTvsGevIMlgw94N/wyf1EhlpX3OGLpxRkmqvynt9YJyAwOJmFWAbCV5NDj1OGTRypagfh2wMudQ=
X-Received: by 2002:a24:2c8a:: with SMTP id i132mr9640868iti.130.1557188004300;
	Mon, 06 May 2019 17:13:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP;
	Mon, 6 May 2019 17:13:23 -0700 (PDT)
In-Reply-To: <008fb84a-45f1-3574-5c5a-ca22c9abaea1@basmevissen.nl>
References: <CAA=hcWR21J-UDPXOSrMjMDXfx8f_NbCB4YA_7-UBVzZ-9Ea45w@mail.gmail.com>
	<008fb84a-45f1-3574-5c5a-ca22c9abaea1@basmevissen.nl>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 7 May 2019 10:13:23 +1000
Message-ID: <CAA=hcWQ40ZCRwSnvxpqTGkBR24TwL6MsqvsqpruoFFaut+MjeA@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: yocto@yoctoproject.org
Subject: Re: How to define and build device tree in Yocto?
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
X-List-Received-Date: Tue, 07 May 2019 00:13:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Bas and Gabriele,

Thank you so much for you advice.

> My usual way of doing it is as follows:
>
> I usually don't need to make large modifications to the kernel source,
> so I don't need to clone the kernel, but use the default kernel for the
> SoC with some patches.

So do I.

> I use a platform support layer and add a .bbappend file for the (arm)
> kernel to add a custom dts and .config files, together with some small
> patches:
>
> *** File meta-<platform>/recipes-kernel/linux/linux-<version>_%.bbappend:
>
> THISAPPENDFILESDIR := "${THISDIR}/files"
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> require linux-set-custom-defconfig.inc
> require linux-add-custom-dts.inc
>
> # The first patch simply appends my custom DTS to the list of DTD files
> in the Makefile
> SRC_URI += \
>          "file://add-custom-dts.patch \
>           file://some_other.patch \
>           file://another_driver_patch.patch \
>          "
>
> *** File meta-<platform>/recipes-kernel/linux/linux-add-custom-dts.inc
>
> do_add_platform_dts() {
> 	cp -f "${THISAPPENDFILESDIR}/custom.dts" \
>              "${WORKDIR}/git/arch/arm/boot/dts"
> }

That is exactly I am looking for the proper location of the dts files,
thank you so much.

> addtask add_platform_dts before do_preconfigure after do_patch
>
> *** File
> meta-<platform>/recipes-kernel/linux/linux-set-custom-defconfig.inc
>
> do_set_custom_defconfig() {
>          cp -f "${THISAPPENDFILESDIR}/defconfig" "${WORKDIR}/defconfig"
> }
>
> addtask set_custom_defconfig before do_preconfigure after do_patch

Good advice, I missed that one, how did you do the defconfig usually?
Compile it in kernel source like using following command?

make ARCH=arm imx_v6_v7_defconfig

> It is maybe a bit complex, but it saves cloning the kernel for the sake
> of just adding a single DTS with defconfig and a few patches.

That is procedure I was looking for.

> Hope this helps,

Great helps, thank you so much.

- jupiter

> Bas.
>

