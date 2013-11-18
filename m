Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9026E002AC
	for <yocto@yoctoproject.org>; Mon, 18 Nov 2013 03:51:13 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5A872F811E8; Mon, 18 Nov 2013 04:51:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 43166F811E7;
	Mon, 18 Nov 2013 04:51:12 -0700 (MST)
Message-ID: <5289FF3A.7020600@mlbassoc.com>
Date: Mon, 18 Nov 2013 04:51:22 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
In-Reply-To: <CANwz6nykaRgLf+4TUDUe3WGpfPpn35d-kO2O5XidzM5nYquQpg@mail.gmail.com>
Subject: Re: wrong version of busybox after adding new layers.
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
X-List-Received-Date: Mon, 18 Nov 2013 11:51:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-11-17 17:17, Edward Vidal wrote:
> Hello,
> MACHINE=zedboard bitbake core-image-sato builds okay.
>
> Build Configuration:
> BB_VERSION        = "1.19.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Fedora-18"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "zedboard"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.4+snapshot-20131117"
> TUNE_FEATURES     = " armv7a vfp neon zynq"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
> meta-xilinx
> meta-kc705
> meta-zc702
> meta-zedboard     = "wkg:46f4c79d6d55b556a90bb0fd89c2c09acf2aebff"
> meta-yocto-bsp    = "wkg:3dee534f1e25109e0bdb681de0746c336f4b8840"
>
> NOTE: Running noexec task 5589 of 5595 (ID: 3428, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/gst-meta-base_0.10.bb <http://gst-meta-base_0.10.bb>,
> do_build)
> NOTE: Running noexec task 5590 of 5595 (ID: 3103, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-multimedia/gstreamer/gst-plugins-good_0.10.31.bb
> <http://gst-plugins-good_0.10.31.bb>, do_build)
> NOTE: Running noexec task 5591 of 5595 (ID: 2804, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/owl-video-widget/libowl-av_git.bb <http://libowl-av_git.bb>, do_build)
> NOTE: Running noexec task 5592 of 5595 (ID: 1583, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/gaku/gaku_git.bb <http://gaku_git.bb>, do_build)
> NOTE: Running noexec task 5593 of 5595 (ID: 313, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/packagegroups/packagegroup-core-x11-sato.bb
> <http://packagegroup-core-x11-sato.bb>, do_build)
> NOTE: Running task 5594 of 5595 (ID: 7, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/core-image-sato.bb <http://core-image-sato.bb>, do_rootfs)
> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Started
> NOTE: recipe core-image-sato-1.0-r0: task do_rootfs: Succeeded
> NOTE: Running noexec task 5595 of 5595 (ID: 12, /home/vidal/POKY/build111613_zedboard/poky/meta/recipes-sato/images/core-image-sato.bb <http://core-image-sato.bb>, do_build)
> NOTE: Tasks Summary: Attempted 5595 tasks of which 404 didn't need to be rerun and all succeeded.
>
> busybox:
>    meta                 1.21.1
> was used.
>
> After adding these 2 lines to bblayers.conf
>    /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe \
>    /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia \
>
> bitbake-layers show-layers
> layer                 path                                      priority
> ==========================================================================
> meta                  /home/vidal/POKY/build111613_zedboard/poky/meta  5
> meta-yocto            /home/vidal/POKY/build111613_zedboard/poky/meta-yocto  5
> meta-oe               /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe  6
> meta-multimedia       /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-multimedia  6
> meta-xilinx           /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx  8
> meta-kc705            /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-kc705  8
> meta-zc702            /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zc702  8
> meta-zedboard         /home/vidal/POKY/build111613_zedboard/poky/meta-xilinx/meta-zedboard  8
> meta-yocto-bsp        /home/vidal/POKY/build111613_zedboard/poky/meta-yocto-bsp  5
> [vidal@ws009 build]$ bitbake-layers show-recipes
> Parsing recipes..ERROR: No recipes available for:
>    /home/vidal/POKY/build111613_zedboard/poky/meta-oe/meta-oe/recipes-core/busybox/busybox_1.20.2.bbappend
> What is the procedure to us busybox_1.20.2 with the new layers?
> Any and all help is appreciated.
> Thanks

Refresh your meta-oe layer - this recipe has been updated to match oe-core.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

