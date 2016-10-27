Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B00AE00CC7; Thu, 27 Oct 2016 15:51:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [178.33.253.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 5111 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Oct 2016 15:51:41 PDT
Received: from 7.mo4.mail-out.ovh.net (7.mo4.mail-out.ovh.net [178.33.253.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFEDCE00CA6
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 15:51:41 -0700 (PDT)
Received: from player159.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with ESMTP id AB77F1A2C1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 22:26:14 +0200 (CEST)
Received: from nuc.betafive.co.uk
	(cpc11-shep11-2-0-cust130.8-3.cable.virginm.net [86.27.96.131])
	(Authenticated sender: paul@betafive.co.uk)
	by player159.ha.ovh.net (Postfix) with ESMTPSA id 5FD10480098;
	Thu, 27 Oct 2016 22:26:13 +0200 (CEST)
Date: Thu, 27 Oct 2016 21:26:10 +0100
From: Paul Barker <paul@paulbarker.me.uk>
To: Karim ATIKI <karim_atiki@hotmail.com>
Message-ID: <20161027212610.33d285b0@nuc.betafive.co.uk>
In-Reply-To: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <HE1PR01MB1883A54CB9FBC20C3EC9225692AB0@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 7126383461024369056
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelvddrjedugddugeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi3] Failed to build gstreamer1.0-plugins-bad with minimal configuration
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
X-List-Received-Date: Thu, 27 Oct 2016 22:51:45 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed, 26 Oct 2016 12:56:11 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi all,
> 
> 
> I'm currently unable to build gstreamer1.0-plugins-bad with a clean
> checkout of poky-krogoth and also poky-master with
> DISTRO_FEATURES_remove = " x11 wayland"
> 
> 
> It fails during the do_compile() task  of gstreamer1.0-plugins-bad
> with the following error message:
> 
> 
> undefined reference to graphics_get_display_size().
> 
> 
> This function comes with libbcmhost which is however installed with
> userland in sysroot.
> 
> 
> In addition, the log.do_configure of gstreamer1.0-plugins-bad detects
> bcm_host as well.
> 
> 
> If I change DISTRO_FEATURES_remove = " x11" it will work.
> 
> 
> I have tested with a minimal configuration & layers:
> 
> 
> Build Configuration:
> BB_VERSION        = "1.32.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Debian-8.2"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "raspberrypi3"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.2"
> TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
> callconvention-hard cortexa7" TARGET_FPU        = "hard"
> meta
> meta-poky
> meta-yocto-bsp    = "master:ef627ab364d52fe19994c94c1a78fbe21620a32c"
> meta-raspberrypi  = "master:de016ceef63028f5578191785c50529695f76a1a"
> meta-oe
> meta-multimedia   = "master:8ba31c9ba214802b1305aabbc0be0353cba0bc3e
> 
> 
> and simply launched:
> 
> 
> bitbake -k  gstreamer1.0-plugins-bad
> 
> 

I've managed to reproduce your issue. Here's the interesting bits of a
diff between the do_configure logs, lines removed only exist in the
successful build, lines added only exist in the failed build:

    @@ -1289,24 +1013,33 @@
     checking for winsock2.h... no
     checking for X... no
     configure: No package 'x11' found
    +checking for GLES2... yes
     checking EGL/fbdev_window.h usability... no
     checking EGL/fbdev_window.h presence... no
     checking for EGL/fbdev_window.h... no
    -checking for bcm_host_init in -lbcm_host... no
    +checking for bcm_host_init in -lbcm_host... yes
    +checking bcm_host.h usability... yes
    +checking bcm_host.h presence... yes
    +checking for bcm_host.h... yes
    +checking for eglGetProcAddress in -lEGL... yes
    +checking EGL/egl.h usability... yes
    +checking EGL/egl.h presence... yes
    +checking for EGL/egl.h... yes
    +checking for glEnable in -lGLESv2... yes
    +checking GLES2/gl2.h usability... yes
    +checking GLES2/gl2.h presence... yes
    +checking for GLES2/gl2.h... yes
     checking for WAYLAND_EGL... no
     checking libdrm/drm_fourcc.h usability... no
     checking libdrm/drm_fourcc.h presence... no
     checking for libdrm/drm_fourcc.h... no
     checking for GST_ALLOCATORS... yes
    -host is arm-oe-linux-gnueabi
    +host is arm-poky-linux-gnueabi
     configure: WARNING: X or Wayland is required for OpenGL support
    -configure: WARNING: Either OpenGL or OpenGL|ES is required for
    OpenGL support -configure: WARNING: Could not find any OpenGL
    platforms to use such as CGL, WGL or GLX -configure: WARNING: Could
    not find any window systems to use such as Cocoa, Win32API or X11
    -checking for GLeglImageOES... no -checking for GLchar... no
    -checking for GLsizeiptr... no
    -checking for GLintptr... no
    +checking for GLeglImageOES... yes
    +checking for GLchar... yes
    +checking for GLsizeiptr... yes
    +checking for GLintptr... yes
     checking for GLsync... no
     checking for GLuint64... no
     checking for GLint64... no
    @@ -1610,7 +1343,7 @@

     configure: *** checking feature: gl elements ***
     configure: *** for plug-ins: gl ***
    -configure: *** These plugins will not be built: gl
    +configure: *** These plugins will be built: gl

     configure: *** checking feature: Gtk+ elements ***
     configure: *** for plug-ins: gtk ***
    @@ -2101,6 +1834,7 @@
            dtls
            dvb
            fbdevsink
    +       gl
            hls
            neonhttpsrc
            rsvg
    @@ -2131,7 +1865,6 @@
            faad
            flite
            fluidsynth
    -       gl
            gme
            gsmenc gsmdec
            gtk

ie. In the successful build GLES wasn't detected, which led to the gl
plugin not being built, which led to the problem not occurring. That's
probably not helpful if you want to be able to use the gl plugin though!

I'm trying to narrow down the differences between these two builds,
I'll let you know if I find out any more!

Thanks,
Paul

