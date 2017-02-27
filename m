Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A6D7E007BA; Mon, 27 Feb 2017 01:07:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.196 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC00E007BA
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 01:07:50 -0800 (PST)
Received: by mail-io0-f196.google.com with SMTP id f84so3204116ioj.0
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2017 01:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=UHLkXi4egzIfe2TBfzAsyIvIxBMqCrm8A3UWoUmjjl4=;
	b=A8jhGdY5Dmtfx9H91wfNnVIIT2RByYfBfwQZllOg1CFVl2vacRSW4thl7n88lCpsyE
	cbH5edNin/FsKFmREmWzPBK/ehfX+pYpaQDvoZaF4PlPMTEpG+eOIoP3hUrGPCz8sSfU
	kAmAaHL6XCeQytdvvMGeG5MDu2n3quAqw9X8AKaQQ7fhDV3qzYaUJ9XdWPHjVHILcj0O
	rtt/osCFAva9cEjSLprT8RfaiJej0dzBsrrFEhcBSt4iFSQZRm+WaeHeRhIK26zWXVlE
	dwmJBoRHPJv2mTdOZLN1eAEVidv4Q1A5PLxLMdHUrpxpMlRtaLsxHdMgYBT+ZAKLj1l9
	XLgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=UHLkXi4egzIfe2TBfzAsyIvIxBMqCrm8A3UWoUmjjl4=;
	b=Dit0rLKr8XFpaNJjCpf6b+kiPgkyFz+1xLn0fkXD7xOxp+jTijJMNnoeDPeA5LVkjr
	2qUbWz4sGRwa6On4vSpSRrHAF8Aoa+3qSaTXYkOfVpARPWEAzuuDmnHzL2Q9lGbJpULU
	2D/HirDuINm2KCUXDn1Pl/Md1Q0G/hrPIpEYxekNcFJg1VBOYbZPfF7HETHHudTu6aHE
	As9/9uDBWTfSq9Ar4RGpQjk2YQh5L4ilrTAF8/HWs/7qeuKwdRUp5XAEOD+vCI9x8G8p
	JAV2f9ne7Kp8WsPKnypFLimxqkwoI00uK+MI5Kasv9wJzgPAlghEWvtgeko6h5nMGP7d
	0tdA==
X-Gm-Message-State: AMke39m5g2A/PejaUlkcfYpIS4xaZz0TciL2QhN/6a13LyEct06BXI4Cxqd2SvSj3wyR0g==
X-Received: by 10.107.15.78 with SMTP id x75mr1009857ioi.225.1488186469936;
	Mon, 27 Feb 2017 01:07:49 -0800 (PST)
Received: from linux-uys3 ([45.72.250.10])
	by smtp.gmail.com with ESMTPSA id 78sm4140911ity.7.2017.02.27.01.07.49
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 27 Feb 2017 01:07:49 -0800 (PST)
Date: Mon, 27 Feb 2017 04:07:47 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Message-ID: <20170227090747.GA1959@linux-uys3>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
	<CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
	<CAHUNapSvaH+a2=J09Nx6ff5Kt1LWxf4qtQs6B10YLG+CvOdV6w@mail.gmail.com>
	<CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJrj+DO3DfJmDzJAkUAVOf3ja8jvmuEH00+o+u64m=k5N537Wg@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Mon, 27 Feb 2017 09:07:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2017-02-22 @ 10:06:23 PM, Eddie Cai wrote:
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "firefly-rk3288"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2.1"
> TUNE_FEATURES     = "arm armv7ve vfp  neon  vfpv4  callconvention-hard
>  cortexa17"
> TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "HEAD:6a1f33cc40bfac33cf030fe41e1a8efd1e5fad6f"
> meta-rockchip     =
> "review-uboot-gtpimg-v2:5e181d4e74c50e290b507b1a990b1517eaffcea6"
> 
> BBLAYERS ?= " \
>   ${BSPDIR}/src/poky/meta \
>   ${BSPDIR}/src/poky/meta-poky \
>   ${BSPDIR}/src/poky/meta-yocto-bsp \
>   ${BSPDIR}/src/meta-rockchip \

I can't reproduce the issue you're seeing, and your meta-rockchip branch
sounds suspicious. In a completely fresh location with a fresh shell could you
please try the following?

	$ mkdir -p ~/tmp/rockchip/layers
	$ cd ~/tmp/rockchip/layers
	$ git clone git://git.openembedded.org/openembedded-core
	$ git clone git://git.openembedded.org/bitbake
	$ git clone git://git.yoctoproject.org/meta-rockchip
	$ cd meta-rockchip
	$ git checkout devs/twoerner/feb-updates-2
	$ cd ~/tmp/rockchip
	$ . layers/openembedded-core/oe-init-build-env build layers/bitbake
	$ echo "BBLAYERS += \"$HOME/tmp/rockchip/layers/meta-rockchip\"" >> conf/bblayers.conf
	set conf/local.conf to:
		MACHINE ?= "firefly-rk3288"
		DISTRO ?= "nodistro"
		DL_DIR = "/opt/Downloads"
		DEFAULTTUNE_rk3288 = "cortexa17hf-neon-vfpv4"
		PACKAGE_CLASSES ?= "package_ipk"
		EXTRA_IMAGE_FEATURES ?= "debug-tweaks"
		USER_CLASSES ?= "buildstats image-mklibs image-prelink"
		PATCHRESOLVE = "noop"
		BB_DISKMON_DIRS = "\
		    STOPTASKS,${TMPDIR},1G,100K \
		    STOPTASKS,${DL_DIR},1G,100K \
		    STOPTASKS,${SSTATE_DIR},1G,100K \
		    STOPTASKS,/tmp,100M,100K \
		    ABORT,${TMPDIR},100M,1K \
		    ABORT,${DL_DIR},100M,1K \
		    ABORT,${SSTATE_DIR},100M,1K \
		    ABORT,/tmp,10M,1K"
		PACKAGECONFIG_append_pn-qemu-native = " sdl"
		PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
		ASSUME_PROVIDED += "libsdl-native"
		CONF_VERSION = "1" 
	$ bitbake virtual/bootloader

The build configuration should look like:
	Build Configuration:
	BB_VERSION        = "1.33.1"
	BUILD_SYS         = "x86_64-linux"
	NATIVELSBSTRING   = "opensuse-42.2"
	TARGET_SYS        = "arm-oe-linux-gnueabi"
	MACHINE           = "firefly-rk3288"
	DISTRO            = "nodistro"
	DISTRO_VERSION    = "nodistro.0"
	TUNE_FEATURES     = "arm armv7ve vfp neon vfpv4 callconvention-hard cortexa17"
	TARGET_FPU        = "hard"
	meta              = "master:65cfc8aca3ff7e39453977a0215a350d13cb85ef"
	meta-rockchip     = "devs/twoerner/feb-updates-2:c252843cf2bf8326ccf2b552b59209f7a2ac3f16"

