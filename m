Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 592DDE01426
	for <yocto@yoctoproject.org>; Mon, 28 May 2012 06:12:49 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 28 May 2012 06:12:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="105049833"
Received: from unknown (HELO helios.localnet) ([10.252.120.22])
	by AZSMGA002.ch.intel.com with ESMTP; 28 May 2012 06:12:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: giovanni.pavoni@exorint.it
Date: Mon, 28 May 2012 14:12:46 +0100
Message-ID: <2460439.PjbaxxI4Ls@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.2.0-24-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <OFE026F14C.CD47DB28-ONC1257A08.00323D36-C1257A08.00325870@Sitek.it>
References: <OFE026F14C.CD47DB28-ONC1257A08.00323D36-C1257A08.00325870@Sitek.it>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Help in building an ad-hoc qte image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 28 May 2012 13:12:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Giovanni,

On Thursday 24 May 2012 11:09:54 giovanni.pavoni@exorint.it wrote:
> this is to ask for help in building an ad-hoc qte image. My image bb sets
> as DEPENDS a custom "task-qt4e-xyz" task. Where task-qt4e-xyz.bb looks as 
> follow:
> 
> //---------------------//
> 
> DESCRIPTION = "QT4 embedded xyz base image feed"
> PR = "r1"
> LICENSE = "MIT"
> 
> LIC_FILES_CHKSUM = "file://$
> {COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58 \
>                     file://$
> {COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
> 
> PR = "r3"
> 
> inherit task
> 
> TOUCH = ' ${@base_contains("MACHINE_FEATURES", "touchscreen", "tslib 
> tslib-calibrate", "",d)}'
> 
> PACKAGES += " \
>         ${PN}-base \
>         "
> DEPENDS = "qt4-embedded"
> 
> RDEPENDS_${PN}-base = " \
>         qt4-embedded-conf \
>         libqt-embeddedcore4 \
>         libqt-embeddeddbus4 \
>         libqt-embeddedgui4 \
>         libqt-embeddedmultimedia4 \
>         libqt-embeddednetwork4 \
>         libqt-embeddedscript4 \
>         libqt-embeddedscripttools4 \
>         libqt-embeddedsvg4 \
>         libqt-embeddedxml4 \
>         qt4-embedded-fonts-ttf-dejavu \
>         qt4-embedded-fonts-ttf-vera \
>         qt4-embedded-plugin-iconengine-svgicon \
>         qt4-embedded-plugin-imageformat-gif \
>         qt4-embedded-plugin-imageformat-ico \
>         qt4-embedded-plugin-imageformat-jpeg \
>         qt4-embedded-plugin-imageformat-mng \
>         qt4-embedded-plugin-imageformat-svg \
>         qt4-embedded-plugin-imageformat-tiff \
>         qt4-embedded-plugin-mousedriver-tslib \
>         qt4-embedded-plugin-script-dbus \
>         ${TOUCH} \
>         "
>  
> RDEPENDS_${PN}-base_ANOTHERBOARD  = " \
>         libqt-embeddedphonon4 \
>         qt4-embedded-plugin-phonon-backend-gstreamer \
>         "
>  
> RRECOMMENDS_${PN}-base = " \
>         libqt-embeddedwebkit4 \
>         libqt-embeddedxmlpatterns4 \
>         "
> //---------------------//
> 
> The problem: I am getting in my image gstreamer contents (see below for 
> files in my rootfs)
> but I unable to trace what gets it in. I need to build gstreamer to add to 
> ANOTHERBOARD
> (thus would expect to add it to RDEPENDS_${PN}-base_ANOTHERBOARD) but do 
> not need it by default.

If I understand correctly in that you have more than one machine and you need 
gstreamer on ANOTHERBOARD and all other machines don't need it, I think the 
problem here may be that the task package is not being built as machine-
specific; thus if task-qt4e-xyz is built for ANOTHERBOARD first then it will 
bring in qt4-embedded-plugin-phonon-backend-gstreamer which pulls in 
gstreamer. You may find that the problem goes away if you add this to the task 
recipe:

PACKAGE_ARCH = "${MACHINE_ARCH}"

It's worth noting however that you don't have to add qt4-embedded-plugin-
phonon-backend-gstreamer here at all in order to have it built - the qt4 
recipes always build it; so if you were adding it here just to make it build 
and you don't need it installed by default, none of this is necessary at all.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

