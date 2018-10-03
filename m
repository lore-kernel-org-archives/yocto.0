Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A340E00994; Wed,  3 Oct 2018 01:16:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
	[209.85.222.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F215EE0095C
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 01:16:18 -0700 (PDT)
Received: by mail-qk1-f194.google.com with SMTP id c126-v6so2889713qkd.7
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2018 01:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=E1kkWpKTp+E1TYuR7izQ/QuSYFsu4rL/OKwHDviRSik=;
	b=GFw6ruEG2vbB7ecCYESa+ifM4tXwVbQW8f5A29r/x8zaan8AlVGsXUm863dEdeeei9
	IB2PzBn4IG4NcVDlmNKf8VbGDjOwg423ajvd1Kaxc23GvvS6gLW+Jrx0jMudYoxvnPPj
	kXWnShwEcvn5Rj5H7jeHozUZ/5LhTdBpJvMQhNWvpV9Crq8/tPU+tZzFHWm9GGXmJ0rk
	RAmRcLEQscxEIvkFF27+aTfmxpSScLFEL6/xOKnwKUgVWzjfhm5IOqRxC9yI3yuoIdGL
	ia3nMB9bpG8ofPofV2fLIaUK69+Sceo+BgfWbmUVLeuVF+uF0fvhXZKu8qWgvRO/i5VC
	SUow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=E1kkWpKTp+E1TYuR7izQ/QuSYFsu4rL/OKwHDviRSik=;
	b=ZKAvzCsnPlVqDU9p/9xJcL3dy+Gi1LjD1mO7q6w3DtBsMa9NlRp5iVgaUbetLElI2X
	+BnzXnYemJ9JZzgEvRPBv8Df3TVLVvpA7hBfStnWfqp0bdfCynyLFGW6c2GNktq2nI/r
	33b6iVLO4NQ2ceGhrcIM4hfqI4ms2J4BwDnj41D2kL12D+1pHTQeduQ/nl5FfqQURfYH
	lqiAcjvGjCyiSLQNQcpOi8uNievIkHjc7uFoHPNB7xGY4bVqHgPKf5cRnhapUl4DcB9T
	zpqxFqsnePbfojfbcaxKeGPkGDtHgT4Zu+ISOKoglB00gyDnRxUtutkqNyyMwMbcvARN
	7Usg==
X-Gm-Message-State: ABuFfoiYrnJ6V1596ecbLrFiLiFHz/uy3IKnIpd53MHpFy6qXBLphhK1
	XelqKz3gqpJmqubXch7qn4ITXNRemzv2FsAf1BcvvWkYuk8=
X-Google-Smtp-Source: ACcGV61tV8CT8Js1l0V/7AFXPB3HMrzVp/KWqqC+dcS5b8nSexf3Bkso3XMqM5mX3KDkjQNhwTLi33nBvR+NA9DbAto=
X-Received: by 2002:a37:98c3:: with SMTP id
	a186-v6mr260301qke.128.1538554577983; 
	Wed, 03 Oct 2018 01:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
In-Reply-To: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 3 Oct 2018 10:16:06 +0200
Message-ID: <CAGAf8LzFnwi_WJUmW__LxgJ4XLgyOCXRARwyQ-dnec1GeKKgzg@mail.gmail.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Wed, 03 Oct 2018 08:16:21 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Greg,

Not sure if this can help, since I do Sumo. This works for Sumo, no
idea if ths works for Morty.
https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file

Hope this helps,
Zoran
_______

On Tue, Oct 2, 2018 at 11:39 PM Greg Wilson-Lindberg
<GWilson@sakuraus.com> wrote:
>
> I'm trying to change some kernel configuration flags in a raspberrypi3 Morty build and I get warnings that it isn't working.
>
>
> Here is the build info and warnings:
>
>
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "b2qt"
> DISTRO_VERSION    = "2.2.4"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4 callconvention-hard cortexa7"
> TARGET_FPU        = "hard"
> SDKMACHINE        = "x86_64"
> meta
> meta-poky         = "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
> meta-raspberrypi  = "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
> meta-oe
> meta-python
> meta-networking
> meta-initramfs
> meta-multimedia   = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> meta-boot2qt
> meta-raspberrypi-extras = "<unknown>:<unknown>"
> meta-mingw        = "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
> meta-qt5          = "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
> meta-sakura       = "<unknown>:<unknown>"
>
> Initialising tasks: 100% |#############################################################################################################################################| Time: 0:00:00
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0 do_kernel_configcheck: [kernel config]: specified values did not make it into the kernel's final configuration:
>
> ---------- CONFIG_SND_SOC_MAX9768 -----------------
> Config: CONFIG_SND_SOC_MAX9768
> From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_SND_SOC_MAX9768=y
> Actual value:
>
> Config 'SND_SOC_MAX9768' has the following conditionals:
>
> Dependency values are:
>
>
> ---------- CONFIG_MAX1363 -----------------
> Config: CONFIG_MAX1363
> From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_MAX1363=m
> Actual value:     # CONFIG_MAX1363 is not set
>
> Config 'MAX1363' has the following conditionals:
>   I2C (value: "y")
> Dependency values are:
>   I2C [y]
>
> ---------- CONFIG_CAN_EMS_USB -----------------
> Config: CONFIG_CAN_EMS_USB
> From: /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work-shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> Requested value:  CONFIG_CAN_EMS_USB=m
> Actual value:     # CONFIG_CAN_EMS_USB is not set
>
> Config 'CAN_EMS_USB' has the following conditionals:
>   (none)
> Dependency values are:
>
>
> Here is my linux-raspberrypi_4.4.bbappend for the kernel:
>
> # Scribe additions to Kernel configuration
>
> FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/files:"
> FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/${PN}:"
>
> SRC_URI += "file://Scribe.scc"
> SRC_URI += "file://mcp251x.c.patch"
>
>
> The Scribe.scc file:
>
> # Scribe additions to kernel configuration
> kconf hardware Scribe.cfg
>
>
> And the Scribe.cfg file:
>
> # Scribe additions to kernel configuration
>
> # Enable MAX9768
> #CONFIG_SOC_ALL_CODECS=m
> #CONFIG_COMPILE_TEST=y
> CONFIG_SND_SOC_MAX9768=y
>
> # Enable MAX11606
> #IIO=y
> CONFIG_MAX1363=m
>
> # Enable EMS CPC-USB
> CONFIG_CAN_EMS_USB=m
>
> Here is my directory tree:
>
> Qt-5.9.6
>
>      Yocto-mirror                                                     # Yocto build mirror
>      Yocto-build-RPi3                                              # Yocto build root
>                 build-raspberrypi                                   # build directory
>                 sources                                                 # yocto sources
>                        meta-sakura                                   # our recipes
>                                recipes-kernel                        # directory for kernel changes
>                                        linux                               # directory that contains linux-raspberrypi_4.4.bbappend
>                                               files                         # directory that contains .scc & .cfg files
>
> As seen above none of the changes are accepted although there is nothing that blocks any of them.
>
> Any help understanding this would be greatly appreciated.
>
> Regards,
>
> Greg Wilson-Lindberg
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

