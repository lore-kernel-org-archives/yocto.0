Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CCC0E00E0A; Mon, 29 Jan 2018 14:25:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BDB1E00DA9
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 14:25:38 -0800 (PST)
Received: by mail-vk0-f48.google.com with SMTP id m197so5568902vka.3
	for <yocto@yoctoproject.org>; Mon, 29 Jan 2018 14:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=WJVhVo7DnP5tEIrGL4W2czMNJhxVIJSMKK2LCEGsFGA=;
	b=BpdMtJjcec/mDFztS5sD1WdD8tEMRYJ76vYo4w6xBn1RJBv7rq6PC8Q4nj9sUrI8vi
	WiyLU2caD9LU6QuuxmBmeWpck0shkjICgJYXf0M1PLctPSIDKoCWx29TtnMau2zizlA/
	kptt+p1dYzfHahiZ92wfSXAnbIIOjoQ1+kPBdbi4rUJzf3Z2xnqbR7GcCMasZFuotFyY
	Jfd7GnQ+y5R5JSEZ3xblLTXMjAAKv4KtNrxpkdQYtmy7AGFTkO2ldS7nR/HU9wm7hb+w
	KPABgv1OeeLOIUG4++UaKQGuuN53/HDquOIcbC47Sci7VtivmnAcnGNXIVpxsfK5b7Y5
	9WzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=WJVhVo7DnP5tEIrGL4W2czMNJhxVIJSMKK2LCEGsFGA=;
	b=NWEMFwBPODSivWemSSLSsDN+E2er0v9W4CmmfV+OQhPuA9XQSyS2yVHq2H+wjpOYrg
	OXbswr4FjZHOknzd4dQHxIbxQBH0SOBW8Ctvu+gCemkEmOrDaBc9KjU1CiS7kFs8WDds
	r9CetPZrEpVys5InppNCtqPaThIIUq6q1h3paIuobYC+4QAwl5MSFuKA+5OA/T+kTDap
	DxzcaB2GtejktsEuIW7DLM8p82MeaMhWcHP8Q2RdAGxsD/zFT8x+ojqmZdjiItBLxeo4
	xK0sXnPQ2hufb92zftLx63rDralV27Smq0f81PkZJPR42TGIoWmR6wOPd+/uktGrcyQH
	RL2A==
X-Gm-Message-State: AKwxytc6inwFQJbxTAxSPrwqTxspEMPnKg41TDPe4IxJ3f05IOI0eC3k
	usiV27EpmPbagTVQz9WW9YkpqtOFZ1UeU8yK6rHPhAoyRx8iJH97bb4Fl9esjogFNSRnuEG2BhD
	rCFzNcE7a3vokcdYeMPZ9mo58rg==
X-Google-Smtp-Source: AH8x227N4D7iKESfzg5aWFef+UCHLFeX+mwpFdzW5NdyAfb4nz4mtrPKoSZFsBxwjFLtuFAxaA9cvKTp0NhpjSr7Mc8=
X-Received: by 10.31.142.82 with SMTP id q79mr21401593vkd.144.1517264737548;
	Mon, 29 Jan 2018 14:25:37 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.82.196 with HTTP; Mon, 29 Jan 2018 14:25:37 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Mon, 29 Jan 2018 14:25:37 -0800
Message-ID: <CAOLNbFaq0sdcFSpwq3fTXMRmRERU_KdUs7ZFoHBpJsMuArrs_g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Fetching from local repostories
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
X-List-Received-Date: Mon, 29 Jan 2018 22:25:39 -0000
Content-Type: text/plain; charset="UTF-8"

We are storing some of the source code locally on a machine. Found
this on how to do it, https://stackoverflow.com/a/27834916/1636521,
but for some reason it doesn't work for me. I'm pretty sure I'm
missing something but don't know what exactly.

Here is my recipe

SUMMARY = ""
DESCRIPTION = ""
# Licensing Meta-data
LICENSE = "CLOSED"
LIC_FILES_CHKSUM = ""

# Modify these as desired
PV = "1.0+git${SRCPV}"
SRCREV = "${AUTOREV}"

S = "${WORKDIR}/git"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
SRC_URI += "            \
            file://app.tgz \
          "
DEPENDS += "\
    libevent \
    "

do_compile () {
  export SWROOT=${S}/../app
  oe_runmake
}

do_install () {
:
}

And here is the error that I'm getting:

Loading cache: 100%
|###########################################################################################################|
Time: 0:00:01
Loaded 3265 entries from dependency cache.
WARNING: /home/user/projects/petalinux-build-system/sources/core/../meta-piccard/recipes-piccard/cpe/cpe.bb:
Unable to get checksum for cpe SRC_URI entry app.tgz: file could not
be found
Parsing recipes: 100%
|#########################################################################################################|
Time: 0:00:04
Parsing of 2476 .bb files complete (2470 cached, 6 parsed). 3269
targets, 229 skipped, 0 masked, 0 errors.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION        = "1.32.0"
BUILD_SYS         = "x86_64-linux"
NATIVELSBSTRING   = "universal"
TARGET_SYS        = "arm-xilinx-linux-gnueabi"
MACHINE           = "zynq-generic"
DISTRO            = "petalinux"
DISTRO_VERSION    = "2017.3"
TUNE_FEATURES     = "arm armv7a vfp thumb neon
callconvention-hard       cortexa9"
TARGET_FPU        = "hard"
meta
meta-poky         = "HEAD:8506cec55de8950e89a4d3e786860f1086782587"
meta-perl
meta-systemd
meta-gpe
meta-python
meta-efl
meta-ruby
meta-filesystems
meta-gnome
meta-multimedia
meta-networking
meta-webserver
meta-xfce
meta-initramfs
meta-oe           = "HEAD:a9887ac249b81fcac3007244d0c807c71b73acef"
meta-linaro-toolchain = "HEAD:39860f6c7af0858981cc004bbe4f4c421f6be607"
meta-qt5          = "HEAD:eec778bfb9a0b5494d593a2d7bb02c027b641835"
meta-xilinx       = "HEAD:04a45809e0bc42b35c88f8a08305d82fd25e97cf"
meta-xilinx-tools = "HEAD:37eff634934efac72d3e2eabb7c4f8d0c8a36fbb"
meta-petalinux    = "HEAD:d74ceaef26e606c2761edfc3446d0ad3c3cc8b8e"
meta-virtualization = "HEAD:cbfd4376d5e9d229f857151ffdfb57fbc6c0c40d"
meta-openamp      = "HEAD:cfeca8988418e4967f0d6df828d23a1540ae25a0"
meta-swupdate     = "HEAD:6c066d36b1c3c6d46f16c09efe5fb7681bbf3dc5"
meta-piccard     = "master:9f114a33df76a3c3f40eca12b7195ff8ebaad876"
workspace         = "HEAD:51fa75c5477e29285bbbe810f4327b26d80d511d"


Here is the ls of the recipes directory,

$ ls ~/projects/petalinux-build-system/sources/meta-piccard/recipes-piccard/cpe/files

app  app.tgz

The output of

bitbake cpe -e | grep FILESEXTRAPATHS

produces the following line

FILESEXTRAPATHS="/home/userl/projects/petalinux-build-system/sources/core/../meta-piccard/recipes-piccard/cpe/files:__default:"

What am I missing?


-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*2350 Mission College Blvd. Suite #490
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



