Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94208E00990; Fri,  1 Jul 2016 08:02:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 571DBE00978
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2016 08:02:14 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id t2so931112qkh.2
	for <yocto@yoctoproject.org>; Fri, 01 Jul 2016 08:02:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=oR/5+pkRJvB8t1xVIukukTFWeT64xgNgmRuMtgTBcJg=;
	b=XO5lVMua92uFGyi9OJwmo++aEf4A3a2tX9r961is8uQ8i9ytZzbfOXlxJol0vky5Pw
	X9rrXRpE7DWhfQ99iPcuPLd4no1/U9HK46ViyOpHzWoe+0pC0Ip6fx9vmap8JI9xuV9E
	xF9FNWA2ktKSTRncUEr3XJLLS563h4V3ehZpYIu4hyWghQeG/nuJy9zx7FLzM3SHuYMc
	CXRsteXZj0V4KB2vcmLUfrS9ZZq8QwJwXZh07UyNdz+lmfFIbX+mH1qa/zFYahv/H0OI
	F9ljyr46MJ5z0xBFnOKX88KWCEPY8SN0TF+HTvH8z/nFm9bKItKWggBdOg/q2gWxt0KJ
	KPfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=oR/5+pkRJvB8t1xVIukukTFWeT64xgNgmRuMtgTBcJg=;
	b=eIF1rODIBZZYfz1t20DQkW56OJLgfbk2rrJh+7tjEoHgrwZmxAU08oIfMrdfFKh0wG
	hNyvqWEYA1IRFV2X1wQKuQQNoVsRadRyzB6Ov53/uQbPEKE32ittdQR8oHmTNcdPwF57
	8LnMzrGOCuwTR3Kp7fQBkk+wcZRXg1kGnHW43c5EL+hXofA4Au8gjXDREpkggFbWmC1t
	nBmpE6/Fs5m1IuGXMO9sF8Zx6sDePP5aQpjA7AwUznzUQbiWL3Lw1tI8BIy4OfjBbV6Z
	1NfQgRWesMVQnAsUKnElALgiNGJED02dHuiQQk8tGHffLs0MS3d98mJNTnYCXsrMHrE0
	ZBPw==
X-Gm-Message-State: ALyK8tLZELkv3EEl23MknWlwJlXLwL93OtbVo9PDlywWs6tknBInEclyHqUKi3B5jwu0dlQPWmtEGzEG7I932A==
X-Received: by 10.55.178.195 with SMTP id b186mr3765106qkf.81.1467385333331;
	Fri, 01 Jul 2016 08:02:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Fri, 1 Jul 2016 08:01:44 -0700 (PDT)
In-Reply-To: <FD3EC9758442224FA81FA20FD6F1AE8C64431B8C@mx01.dti.lan>
References: <FD3EC9758442224FA81FA20FD6F1AE8C64431B8C@mx01.dti.lan>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 1 Jul 2016 08:01:44 -0700
Message-ID: <CAMKF1sqqduaAFkr8Hf3CfVfQ6xWdQd25qJ1ZVo2QYjbPBVz0AA@mail.gmail.com>
To: Allan Chandler <allan.chandler@dti.com.au>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Xorg failing with SEGV after Krogoth update
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
X-List-Received-Date: Fri, 01 Jul 2016 15:02:18 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 30, 2016 at 10:24 PM, Allan Chandler
<allan.chandler@dti.com.au> wrote:
> We recently did (attempted? ) an upgrade of our Yocto embedded build system
> from Fido to Krogoth and, other than one rather massive issue, it all went
> well.
>
>
>
> The massive issue is the fact that  X11 is apparently not starting
> correctly. The embedded device boots okay since we can see in via a serial
> console as well as connecting via SSH.
>
>
>
> We've narrowed the actual issue down to the Xorg executable, after following
> the process the the rc5.d Xserver satrtup scripts and xinit - basically,
> Xorg is dumping core with the following output:
>

may be you can enable coredump and collect it for offline post mortem
setting ulimit -c unlimited e.g. when you run the suspected program will dump it

>
>
>     X.Org X Server 1.18.0
>
>     Release Date: 2015-11-09
>
>     X Protocol Version 11, Revision 0
>
>     Build Operating System: Linux 3.19.0-25-generic x86_64
>
>     Current Operating System: Linux imx6 3.14.28+g2b0ab6d #1 SMP PREEMPT Thu
> Jun 30 12:20:09 AWST 2016 armv7l
>
>     Kernel command line: console=ttymxc0,115200 consoleblank=0
> root=/dev/mmcblk3p2 rootwait
>
>     Build Date: 30 June 2016  01:38:24PM
>
>
>
>     Current version of pixman: 0.32.8
>
>             Before reporting problems, check http://wiki.x.org
>
>             to make sure that you have the latest version.
>
>     Markers: (--) probed, (**) from config file, (==) default setting,
>
>             (++) from command line, (!!) notice, (II) informational,
>
>             (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
>     (==) Log file: "/var/log/Xorg.0.log", Time: Fri Jul  1 00:12:43 2016
>
>     (==) Using config file: "/etc/X11/xorg.conf"
>
>     (==) Using system config directory "/usr/share/X11/xorg.conf.d"
>
>     (==) No Layout section.  Using the first Screen section.
>
>     (==) No screen section available. Using defaults.
>
>     (**) |-->Screen "Default Screen Section" (0)
>
>     (**) |   |-->Monitor "<default monitor>"
>
>     (==) No device specified for screen "Default Screen Section".
>
>             Using the first device section listed.
>
>     (**) |   |-->Device "i.MX Accelerated Framebuffer Device"
>
>     (==) No monitor specified for screen "Default Screen Section".
>
>             Using a default monitor configuration.
>
>     (**) Option "BlankTime" "0"
>
>     (**) Option "StandbyTime" "0"
>
>     (**) Option "SuspendTime" "0"
>
>     (**) Option "OffTime" "0"
>
>     (==) Automatically adding devices
>
>     (==) Automatically enabling devices
>
>     (==) Automatically adding GPU devices
>
>     (==) Max clients allowed: 256, resource mask: 0x1fffff
>
>     (WW) The directory "/usr/share/fonts/X11/misc/" does not exist.
>
>             Entry deleted from font path.
>
>     (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
>
>             Entry deleted from font path.
>
>     (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
>
>             Entry deleted from font path.
>
>     (WW) The directory "/usr/share/fonts/X11/Type1/" does not exist.
>
>             Entry deleted from font path.
>
>     (WW) The directory "/usr/share/fonts/X11/100dpi/" does not exist.
>
>             Entry deleted from font path.
>
>     (WW) The directory "/usr/share/fonts/X11/75dpi/" does not exist.
>
>             Entry deleted from font path.
>
>     (==) FontPath set to:
>
>
>
>     (==) ModulePath set to "/usr/lib/xorg/modules"
>
>     (II) The server relies on udev to provide the list of input devices.
>
>             If no devices become available, reconfigure udev or disable
> AutoAddDevices.
>
>     (II) Loader magic: 0x1c3a20
>
>     (II) Module ABI versions:
>
>             X.Org ANSI C Emulation: 0.4
>
>             X.Org Video Driver: 20.0
>
>             X.Org XInput driver : 22.1
>
>             X.Org Server Extension : 9.0
>
>     (II) xfree86: Adding drm device (/dev/dri/card0)
>
>     (II) no primary bus or device found
>
>             falling back to /sys/devices/platform/Vivante GCCore/drm/card0
>
>     (II) LoadModule: "glx"
>
>     (II) Loading /usr/lib/xorg/modules/extensions/libglx.so
>
>     (II) Module glx: vendor="X.Org Foundation"
>
>             compiled for 1.18.0, module version = 1.0.0
>
>             ABI class: X.Org Server Extension, version 9.0
>
>     (==) AIGLX enabled
>
>     (II) LoadModule: "vivante"
>
>     (II) Loading /usr/lib/xorg/modules/drivers/vivante_drv.so
>
>     (II) Module vivante: vendor="X.Org Foundation"
>
>             compiled for 1.18.0, module version = 1.0.0
>
>             Module class: X.Org Video Driver
>
>             ABI class: X.Org Video Driver, version 20.0
>
>     (II) VIVANTE: driver for vivante fb: VivanteGC500, VivanteGC2100,
>
>             VivanteGCCORE
>
>     (--) using VT number 3
>
>
>
>     (WW) Falling back to old probe method for vivante
>
>     (II) Loading sub module "fbdevhw"
>
>     (II) LoadModule: "fbdevhw"
>
>     (II) Loading /usr/lib/xorg/modules/libfbdevhw.so
>
>     (II) Module fbdevhw: vendor="X.Org Foundation"
>
>             compiled for 1.18.0, module version = 0.0.2
>
>             ABI class: X.Org Video Driver, version 20.0
>
>     (II) VIVANTE(0): using default device
>
>     (II) VIVANTE(0): Device preferred mode 'fb0':U:1024x768p-60
>
>     (II) VIVANTE(0): Creating default Display subsection in Screen section
>
>             "Default Screen Section" for depth/fbbpp 16/16
>
>     (==) VIVANTE(0): Depth 16, (==) framebuffer bpp 16
>
>     (==) VIVANTE(0): RGB weight 565
>
>     (==) VIVANTE(0): Default visual is TrueColor
>
>     (==) VIVANTE(0): Using gamma correction (1.0, 1.0, 1.0)
>
>     (**) VIVANTE(0): Option "fbdev" "/dev/fb0"
>
>     (II) VIVANTE(0): checking modes against framebuffer device...
>
>     (II) VIVANTE(0): checking modes against monitor...
>
>     (II) VIVANTE(0): Use built in mode (bpp 16)
>
>     (--) VIVANTE(0): Virtual size is 0x0 (pitch 0)
>
>     (==) VIVANTE(0): DPI set to (96, 96)
>
>     (II) Loading sub module "fb"
>
>     (II) LoadModule: "fb"
>
>     (II) Loading /usr/lib/xorg/modules/libfb.so
>
>     (II) Module fb: vendor="X.Org Foundation"
>
>             compiled for 1.18.0, module version = 1.0.0
>
>             ABI class: X.Org ANSI C Emulation, version 0.4
>
>     (II) Loading sub module "exa"
>
>     (II) LoadModule: "exa"
>
>     (II) Loading /usr/lib/xorg/modules/libexa.so
>
>     (II) Module exa: vendor="X.Org Foundation"
>
>             compiled for 1.18.0, module version = 2.6.0
>
>             ABI class: X.Org Video Driver, version 20.0
>
>     (II) VIVANTE(0): printing discovered frame buffer 'fb0' supported modes:
>
>     (II) VIVANTE(0): Modeline "U:1024x768p-60"x0.0   65.00  1024 1064 1124
> 1344  768 775 785 806 -hsync -vsync -csync (48.4 kHz eP)
>
>     (II) VIVANTE(0): Output DISP4 BG has no monitor section
>
>     (II) VIVANTE(0): Printing probed modes for output DISP4 BG
>
>     (II) VIVANTE(0): Modeline "U:1024x768p-60"x60.0   65.00  1024 1064 1124
> 1344  768 775 785 806 -hsync -vsync -csync (48.4 kHz eP)
>
>     (II) VIVANTE(0): Output DISP4 BG connected
>
>     (II) VIVANTE(0): Using exact sizes for initial modes
>
>     (II) VIVANTE(0): Output DISP4 BG using initial mode U:1024x768p-60 +0+0
>
>     (II) VIVANTE(0): imxDisplayPreInit: virtual set 1024 x 768, display
> width 0
>
>     (II) VIVANTE(0): FBDevPreInit: adjust display width 1024
>
>     (**) VIVANTE(0): PreInit done
>
>     (II) VIVANTE(0): Init mode for fb device
>
>     (II) VIVANTE(0): hardware: DISP4 BG (video memory: 8164kB)
>
>     (II) VIVANTE(0): FB Start = 0x75da6000  FB Base = 0x75da6000  FB Offset
> = (nil) FB PhyBase 0x3c500000
>
>     (II) VIVANTE(0): reserve 4177920 bytes for on screen frame buffer; total
> fb memory size 8359936 bytes; offset of shadow buffer 4177920
>
>     (II) VIVANTE(0): hardware: DISP4 BG (video memory: 8164kB)
>
>     (WW) VIVANTE(0): FBIOPAN_DISPLAY: Invalid argument
>
>     (II) VIVANTE(0): test Initializing EXA
>
>     (EE)
>
>     (EE) Backtrace:
>
>     (EE)
>
>     (EE) Segmentation fault at address 0xc
>
>     (EE)
>
>     Fatal server error:
>
>     (EE) Caught signal 11 (Segmentation fault). Server aborting
>
>     (EE)
>
>     (EE)
>
>     Please consult the The X.Org Foundation support
>
>              at http://wiki.x.org
>
>      for help.
>
>     (EE) Please also check the log file at "/var/log/Xorg.0.log" for
> additional information.
>
>     (EE)
>
>     (EE) Server terminated with error (1). Closing log file.
>
>     Aborted
>
>
>
> You can see in the final dozen lines or so that it gets a SIGSEGV. I've
> searched for a solution online but the only close one I've discovered
> (https://community.nxp.com/thread/327339) is for a different error.
>
>
>
> For what it's worth, the working Fido variant is much the same (though with
> different version numbers for components, primarily Xorg 1.16.3) but it
> carries on after the "test Initializing EXA" line:
>
>
>
>     [2750328.650] (II) VIVANTE(0): test Initializing EXA
>
>     [2750328.650] (II) VIVANTE(0): (driver build from:
> f2cae50cf6c3c924be2e06c43c819cb23ca1bf5c)
>
>     [2750328.654] (II) EXA(0): Driver allocated offscreen pixmaps
>
>     [2750328.654] (II) EXA(0): Driver registered support for the following
> operations:
>
>     [2750328.654] (II)         Solid
>
>     [2750328.654] (II)         Copy
>
>     [2750328.654] (II)         Composite (RENDER acceleration)
>
>     [2750328.654] (II)         UploadToScreen
>
>     [2750328.670] (II) VIVANTE(0): Init SHM pixmap support
>
>     [2750328.670] (==) VIVANTE(0): Backing store enabled
>
>     [2750328.673] (==) VIVANTE(0): DPMS enabled
>
>     [2750328.673] (II) VIVANTE(0): RandR 1.2 enabled, ignore the following
> RandR disabled message.
>
>     [2750328.674] drmOpenDevice: node name is /dev/dri/card0
>
>     [2750328.674] drmOpenDevice: open result is 11, (OK)
>
>     [2750328.674] drmOpenDevice: node name is /dev/dri/card0
>
>     [2750328.674] drmOpenDevice: open result is 11, (OK)
>
>     [2750328.674] drmOpenByBusid: Searching for BusID platform:Vivante
> GCCore:00
>
>     [2750328.674] drmOpenDevice: node name is /dev/dri/card0
>
>     [2750328.674] drmOpenDevice: open result is 11, (OK)
>
>     [2750328.674] drmOpenByBusid: drmOpenMinor returns 11
>
>     [2750328.674] drmOpenByBusid: drmGetBusid reports platform:Vivante
> GCCore:00
>
>     [2750328.674] (II) [drm] DRM interface version 1.4
>
>     [2750328.674] (II) [drm] DRM open master succeeded.
>
>     [2750328.674] (II) VIVANTE(0): [drm] Using the DRM lock SAREA also for
> drawables.
>
>     [2750328.674] (II) VIVANTE(0): [drm] framebuffer handle = 0x44700000
>
>     [2750328.674] (II) VIVANTE(0): [drm] added 1 reserved context for kernel
>
>     [2750328.674] (II) VIVANTE(0): X context handle = 0x1
>
>     [2750328.675] (II) VIVANTE(0): [drm] installed DRM signal handler
>
>     [2750328.675] (II) VIVANTE(0): [DRI] installation complete
>
>     [2750328.675] (--) RandR disabled
>
>     [2750328.702] (II) AIGLX: Screen 0 is not DRI2 capable
>
>     [2750328.702] (EE) AIGLX: reverting to software rendering
>
>     [2750328.751] (II) AIGLX: Loaded and initialized swrast
>
>     [2750328.751] (II) GLX: Initialized DRISWRAST GL provider for screen 0
>
>     [2750328.753] (II) VIVANTE(0): Setting screen physical size to 270 x 203
>
>
>
> I'd appreciate any pointers on how best to debug/resolve this issue since I
> cannot appear to get any more detailed information out of `Xorg` itself. Or,
> alternatively, if anyone has seen this same (or very similar) problem, how
> was it solved?
>
>
>
> Cheers,
>
> Al.
>
>
>
> Allan Chandler | Software Engineer
>
> DTI Group Ltd | Transit Security & Surveillance
>
> 31 Affleck Road, Perth Airport, WA 6105, AU
>
> P | F | allan.chandler@dti.com.au
>
>
>
> Visit our website www.dti.com.au
>
> The information contained in this email is confidential. If you receive this
> email in error, please inform DTI Group Ltd via the above contact details.
> If you are not the intended recipient, you may not use or disclose the
> information contained in this email or attachments.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

