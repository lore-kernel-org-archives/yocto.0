Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F7AAE00D9F; Wed,  4 Sep 2019 23:05:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
	[209.85.160.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1454E00C25
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 23:05:45 -0700 (PDT)
Received: by mail-qt1-f196.google.com with SMTP id g13so990105qtj.4
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 23:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Z13p5L9Ndi1KpPMq/78WD0GXNh2WQkW3xZal5bpeBDU=;
	b=IoVPSXpuzxFTbMrlmeAcCwMiMaZU79lGllWrY7jmericz+jfaW7UYBVvAmjMe6eH2W
	DPQnhEXbrG1Mi7j85wE9pWzvWmfZrcDQ3LwA6MdfO7u/ckuheYP25tViPcUMhj2YQnNb
	kR8oKmeSeyKw4U18GhejqAtq4MsSMKsUAkqsd5kRPh/VPBDlk+1ZHLHSfuFISP59K+o/
	ZXWtUgJDsqkvfpZUsFvYL9F1V16/dwmokdELpVIxhAlryzVG/xLdh35+nasK+wlS+C8x
	hJk/kJUQFSX8/xPmCgAsq5pFdZof13RWH/rNa5j9rG6L7zUAIaqrMTrFR/UAJtR48IlM
	zQ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Z13p5L9Ndi1KpPMq/78WD0GXNh2WQkW3xZal5bpeBDU=;
	b=JOnb5AK8wRBowiks57mW55etNFk3z/sQumnC8rgABl9kfZthMVRJiQiUL62T5lWrxD
	ejMphjTCZk4ZraxE2TeZJ59pcJBKlQICBoPtUJD7qruC2k4FlTR2ThcNi41gAszna1om
	UdaNnNeN+URR0LbI8lbsIKea0Ygxprf601qeGB32Udsc8HLxh4vqajtteSvmvfOJJbdb
	Zzipsc3AO/p8UM0kd+6SKnpafgffpacdN0sW9cn2A9Sa6qlMeu9hunamO6uDe9Zydsj2
	aybjoOMo05Uv/rhyJuEu5tVnm/p0hl7CT4dzRkdMBDLs73w4tV7p2rjJAFNUHcXMyNSN
	TDfw==
X-Gm-Message-State: APjAAAXcTvSXAfA2TwVJRRaKIa6aihBo1mC9fNJugPoBwLJU6Gambmlo
	zVFYODhb33zhti12vzHwNAjjcir/R4HmydPAe3V+LcUdwcs=
X-Google-Smtp-Source: APXvYqzHW+5Gd8S2iL1ov3flGsrdfFhLX5L379jXdyn0ZKnsLiUao5lPDUHOr2B5nfMpWhqHLZy73/PbhStprSUVJZ0=
X-Received: by 2002:ac8:1e1c:: with SMTP id n28mr1887608qtl.78.1567663545004; 
	Wed, 04 Sep 2019 23:05:45 -0700 (PDT)
MIME-Version: 1.0
References: <5d1cad0e5416442aad80dd7faca08983@sakuraus.com>
	<CAGAf8LxEQiOsMsPaNRpzGNWFSKYUpfjzPQ-DbrrUCas9XkWqTA@mail.gmail.com>
	<CAEFUPH06j=f+9C3x3DebS-K9TAWxzSNwZHY9_fUa1bAScUpsng@mail.gmail.com>
	<CAGAf8LyAQa4v6tfGqBMO9=1VdrESxPXkSWSfTvq7WyJ7dMQfjw@mail.gmail.com>
In-Reply-To: <CAGAf8LyAQa4v6tfGqBMO9=1VdrESxPXkSWSfTvq7WyJ7dMQfjw@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 5 Sep 2019 08:05:33 +0200
Message-ID: <CAGAf8Lx9keGKZaGkEKxUNVWF4ogphQtT=2grSuBUqqQ7FDrDjw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, SIMON BABY <simonkbaby@gmail.com>
Subject: Re: No providers found in RDEPENDS_datatransfer-mgr? [file-rdeps]
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
X-List-Received-Date: Thu, 05 Sep 2019 06:05:47 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Simon,

As I am in EU time zone, and vast majority of YOCTO maintainers are in
USA time zone, here is my naive try to help you with this application
problem.

As I googled the problem, and sorted out the thoughts, you are missing
one important package (which is not added in your build).

The package is called libzipcpp or libzippp: C++ wrapper for libzip.

So, the premeditated steps to be done:

[1] You might find it here: https://github.com/ctabin/libzippp, or
maybe meta-oe layer does include it (you need to do the investigation
about this);
[2] You need to add in your local.conf something like this:
CORE_IMAGE_EXTRA_INSTALL += "libzipcpp" or "libzippp" (whatever you
find from [1]);
[3] And, the last step, in problematic recipe you need to add the line:
RDEPENDS_${PN} = "libzipcpp" or "libzippp"
or
RDEPENDS = "libzipcpp" or "libzippp"

Hope this helps!

Cheers,
Zoran
_______

On Thu, Sep 5, 2019 at 6:29 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Simon,
>
> I'll try to help you today. I am more (99%) BSP guy. There are much
> more versatile people for rootfs DEPENDS and RDEPENDS.
>
> Good practice is to post first to the list, then, after all, ask for
> private help.
>
> Best Regards,
> Zoran
> _______
>
> ---------- Forwarded message ---------
> From: SIMON BABY <simonkbaby@gmail.com>
> Date: Thu, Sep 5, 2019 at 5:14 AM
> Subject: Re: [yocto] [meta-raspberrypi] Error trying to generate
> Raspberry Pi initramfs
> To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
>
> Hello  Zoran,
>
> I am new to yocto and trying to fix the below build issue. Can you please help.
>
> ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA Issue:
> /usr/bin/DataTransferMgr contained in package datatransfer-mgr
> requires libzipcpp.so()(64bit), but no providers found in
> RDEPENDS_datatransfer-mgr? [file-rdeps]
> ERROR: datatransfer-mgr-1.0-r1 do_package_qa: QA run found fatal
> errors. Please consider fixing them.
> ERROR: datatransfer-mgr-1.0-r1 do_package_qa: Function failed: do_package_qa
>
>
> My recipe for datatransfer-mgr and shared library zipcpp are below.
> Please help me.
>
>
>
> DEPENDS = "zeromq cppzmq zipcpp protobuf json-c jsoncpp rapidjson"
> RDEPENDS_${PN} += "zipcpp"
> DESCRIPTION = "Wireless Data Transfer Manager for Evo"
> SECTION = "base"
> PRIORITY = "optional"
> LICENSE = "CLOSED"
> PR = "r1"
>
> SRC_URI = "git://git@elsvsapp02/GroundLink-Evo/DataTransferManager.git;protocol=ssh;branch=develop"
> #SRC_URI = "file:///home/tdy/DataTransferManager/DataTransferManager.tgz"
> SRCREV = "${AUTOREV}"
>
> CDT_CONFIGURATION ?= "Release"
> BUILD_ARTIFACT = "DataTransferMgr"
>
> S = "${WORKDIR}/git/DataTransferManager-1.0"
> #S = "${WORKDIR}/DataTransferManager-1.0"
>
> export STAGING_INCDIR
> export STAGING_LIBDIR
> export PV
> export PR
>
>
> do_compile() {
>         cd Release
>         oe_runmake STAGING_DIR_HOST=${STAGING_DIR_HOST}
> }
>
> do_install() {
> #       mkdir -p ${D}${bindir}
> #       install -m 755 ${S}/Release/${BUILD_ARTIFACT} ${D}${bindir}
>         install -d ${D}${bindir}
>         install -m 0755 ${S}/Release/${BUILD_ARTIFACT} ${D}${bindir}
> }
>
>
> FILES_${PN} = "${bindir}/${BUILD_ARTIFACT}"
> #PACKAGES = "${PN}"
>
>
> zipcpp recepe
> =================
> # This file is the zipcpp recipe.
> #
>
> DEPENDS = "zeromq cppzmq"
> SUMMARY = "ZeroMQ based IPC C++ library"
> SECTION = "base"
> LICENSE = "CLOSED"
>
> SRC_URI = "git://git@elsvsapp02/TDY/ZIPCpp.git;protocol=ssh;branch=develop"
> SRCREV = "${AUTOREV}"
>
> S = "${WORKDIR}/git"
>
> LIB_ARTIFACT = "libzipcpp.so"
> LIB_VERSION = "1"
>
> do_install() {
>     install -d ${D}${libdir}
>     install -m 0755 ${S}/bin/${LIB_ARTIFACT}.${LIB_VERSION}
> ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
>     ln -rs ${D}${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}
> ${D}${libdir}/${LIB_ARTIFACT}
>     install -d ${D}${includedir}
>     install -m 0644 ${S}/include/zipc.h ${D}${includedir}
>     install -m 0644 ${S}/include/logger.h ${D}${includedir}
>     install -d ${D}${includedir}/fmt
>     install -m 0644 ${S}/include/fmt/* ${D}${includedir}/fmt
> }
>
> #do_install_append() {
> #    rm -r ${D}/usr/share
> #}
>
> FILES_${PN} += "${libdir}/${LIB_ARTIFACT}.${LIB_VERSION}"
> FILES_${PN} += "${libdir}/${LIB_ARTIFACT}"
>
> #PACKAGES = "${PN}"
>
> Rgds
> Simon
>
> On Thu, Aug 29, 2019 at 8:21 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Greg,
> >
> > This, what I have posted as answer work for me on BBB (BeagleBone
> > Black) seamlessly.
> >
> > I did not try it on Sabre Automotive, but as we speak, I just
> > straightened out the optimal local.conf for it (with very rich
> > networking services on the top of Linux), and I am 100% sure the above
> > initramfs methodology will work on Sabre Automotive as well.
> >
> > I have no idea about specifics on RPI 3. Sorry for that.
> >
> > Best Regads,
> > Zoran
> > _______
> >
> > On Thu, Aug 29, 2019 at 7:40 PM Greg Wilson-Lindberg
> > <GWilson@sakuraus.com> wrote:
> > >
> > > Hi Zoran,
> > > Thanks for your comments.
> > >
> > > I'm adding [meta-raspberrypi] to the as I have realized that some might have missed this Raspberry-pi specific question.
> > >
> > > Thanks,
> > > Greg Wilson-Lindberg
> > >
> > > > -----Original Message-----
> > > > From: Zoran Stojsavljevic [mailto:zoran.stojsavljevic@gmail.com]
> > > > Sent: Wednesday, August 28, 2019 05:08 PM
> > > > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > > > Cc: Yocto list discussion <yocto@yoctoproject.org>
> > > > Subject: Re: [yocto] Error trying to generate Raspberry Pi initramfs
> > > >
> > > > Three things:
> > > > [1] The initramfs is NOT the initrd (te second one is the temp
> > > >       stage in booting the linux to mmcblk...); [2] There are some config parameters
> > > > you need to set up in
> > > >       your kernel .config file:
> > > >       https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/config-
> > > > initramfs
> > > > [3] The command line is formed in u-boot or in grub2, or in
> > > >       your Linux boot loader (you need to add some lines
> > > >       in ash u-boot config script, as the following example):
> > > >       https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/custom/u-boot.ash
> > > >
> > > > Good Luck,
> > > > Zoran
> > > > _______
> > > >
> > > >
> > > > On Wed, Aug 28, 2019 at 7:26 PM Greg Wilson-Lindberg
> > > > <GWilson@sakuraus.com> wrote:
> > > > >
> > > > > I'm trying to generate an initramfs for a raspberry pi 3 for a sumo build. We are
> > > > based off of the Qt boot2qt system.
> > > > >
> > > > > I have followed the instructions in the meta-raspberrypi.pdf documentation,
> > > > section 3.14 Image with Initramfs.
> > > > >
> > > > > I edited the meta-raspberrypi/recipes-kernel/linux/linux-raspberry.inc file and
> > > > added the variables into my local.conf file. I created a rpi-minimal-initramfs.bb
> > > > recipe and it is created when I build the system. But the command line that is put
> > > > into the boot partition is:
> > > > >
> > > > > dwc_otg.lpm_enable=0  root=/dev/mmcblk0p2 rootfstype=ext4 rootwait
> > > > fbcon=map:10 fbcon=font:VGA8x8
> > > > >
> > > > > No initramfs.
> > > > >
> > > > > In the linux-raspberry.inc file, after the insertion point for the new kernel variables,
> > > > there is a test for KERNEL_INITRAMFS. I tried setting this in my local.conf file, but
> > > > when I do I get an error for a missing file:
> > > > >
> > > > > | /home/..../tmp/deploy/images/raspberrypi3/uImage1-raspberrypi3.bin:
> > > > > | No such file or directory
> > > > >
> > > > > So, apparently that can't be set directly.
> > > > >
> > > > > There seems to be something missing in the instructions in the meta-
> > > > raspberrypi.pdf documentation. Anyone that has any experience with setting this up
> > > > and can help me figure out what I'm missing, I would greatly appreciate the help.
> > > > >
> > > > > Regards,
> > > > > Greg Wilson-Lindberg
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > >
> > > > > --
> > > > > _______________________________________________
> > > > > yocto mailing list
> > > > > yocto@yoctoproject.org
> > > > > https://lists.yoctoproject.org/listinfo/yocto
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

