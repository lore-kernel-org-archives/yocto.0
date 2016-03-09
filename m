Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FA70E00C4F; Wed,  9 Mar 2016 15:51:36 -0800 (PST)
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
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B2AE00BF5
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 15:51:34 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id u110so56748259qge.3
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 15:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZeB4fyHl0qtbZjef6EUSPoD2ifrxIO6YWxfnWQKoMA0=;
	b=WrJeegkrOyuxyzFD+4CfCKRjmdqHgx1vWQLDskVk01vVeVP26LdhhbZc10PrcPe5s+
	rB3jvmDIHZj/b06VDeuVim/kNd73+as6rwzycQ2hAyK/mLn0puY4oD57wIDVyuqogJn0
	l2TYsTDE6usZtR4f0HrpCGgdgZexMXtuEXA6WxQJOVqlYI9HPXYI5pvznKUauDzATnM+
	3iEyU5i8ZBOSIdq4Npp1Yc9QuZzSZRlpRpwqHvEhv9tx6RSmVxRQ1zM22MA5YvoR+s1Q
	0q0i73WGl1slVfKt6X36IbXEC3xlEDfayJNlhSf6afh7Mcv50SHTvoqNSDAo74JoNOrN
	59Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZeB4fyHl0qtbZjef6EUSPoD2ifrxIO6YWxfnWQKoMA0=;
	b=AOLZKAzNdAs6EGKvIHQpVNBPzvjFMDjbrKGoPxblVrlnb4JCWeyujfmUbCQfhcHGMc
	iPa9/hGyuAiDHpWzRO2HKbXpVHEzCTCrNPXH4UvRHHSb7V2faUcqRCXa7VhfPQ+9rftW
	YSGbfgN8FUvKoECECJ5962IQy6WLitaz076udN5A586TEZkwgNqEYYDcOFhQ0JIbmewS
	bsxai8H27WsjEBwRrQ9KlKfm+AIKW5ArVyWqdMFZJ0sq76gH96pDpmKKXio/ObKFN+JI
	KvRMleHrtu6Kgh0oRNrxO0kypY2ndnYDpipQC6W/Zcv2mgOksszXghpufSHsDZSNVYIv
	g8qA==
X-Gm-Message-State: AD7BkJL8jlzvviPPWsxjE9o7Q84WMGE2a9mNcHfmetFKk483genHf17IfBTyYf+K8iV5NcCZMz0RzHJNKKbnlQ==
X-Received: by 10.140.254.9 with SMTP id z9mr565277qhc.5.1457567493909; Wed,
	09 Mar 2016 15:51:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Wed, 9 Mar 2016 15:51:04 -0800 (PST)
In-Reply-To: <CAMKF1srXMXNrub5EraqVBj5GpShOraOjrOmHFEb1T0z1c4Fn=g@mail.gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<CAMKF1sri1-St4xbaZbLVXa89m4+L2mQ9ztuA6+fuAJv=yqWA3g@mail.gmail.com>
	<CAK18fxEJEiOOhCWVBS6QH71fe0SUzC348fSJ-rRdUTS76-_znA@mail.gmail.com>
	<CAMKF1srXMXNrub5EraqVBj5GpShOraOjrOmHFEb1T0z1c4Fn=g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 Mar 2016 06:51:04 +0700
Message-ID: <CAMKF1sqSYQwW=oRczDhZiXFSFfTZeFiM4CO2+fQwkRi7atR87g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 00/23] Kernel/userland upgrade wayland support and clang fixes
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
X-List-Received-Date: Wed, 09 Mar 2016 23:51:36 -0000
Content-Type: text/plain; charset=UTF-8

ping^2

On Wed, Mar 2, 2016 at 11:34 PM, Khem Raj <raj.khem@gmail.com> wrote:
> On Wed, Mar 2, 2016 at 7:47 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>> Hi Khen,
>>
>> I started to merge the ones that were obvious. The rest need rebasing,
>> conflict fixing and so on. And then I test them locally. So it will take a
>> while. But I'll merge as I test. So you can easily see the progress.
>
> You can use kraj/master branch from
>
> https://github.com/kraj/meta-raspberrypi/tree/kraj/master
>
> This is fully rebased on top of master. Should have no coflicts
>



>>
>> --
>> Andrei Gherzan
>>
>> On Wed, Mar 2, 2016 at 3:21 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> Andrei
>>>
>>> I see you merged few of patches from here
>>> What is status of rest of series ?
>>>
>>> This series has been tested to work with Webkit and weston images
>>> on Pi2
>>>
>>>
>>>
>>> On Sat, Feb 27, 2016 at 7:26 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>> > This patchset has been growing for a while, Adds recipes for kenrel 4.4
>>> > and switches
>>> > to use kernel 4.4
>>> > Fixes userland to compile with clang
>>> > Upgrade userland to latest
>>> > Add option to support GPU_MEM_1024
>>> > Upgrade firmware to latest
>>> >
>>> > Khem Raj (23):
>>> >   userland: Upgrade to latest git master
>>> >   userland: Fix build with clang compiler
>>> >   userland: Add wayland support
>>> >   weston: Enable rpi compositor backend
>>> >   rpi-gpio: Upgrade to 0.6.1 and fix build with clang
>>> >   eglinfo-x11,eglinfo-fb: Add EGLINFO_DEVICE via bbappends
>>> >   python-rtimu: Fix build with musl
>>> >   wiringPi: Fix build with musl
>>> >   Delete rpc flushing of thread in glEGLImageTargetTexture2DOES
>>> >   rpio: Include sys/types.h for caddr_t
>>> >   userland: Define PROJECT_APIVER and rprovide libgles2 libgl
>>> >   userland: Add wayland to deps if in DISTRO_FEATURES
>>> >   userland: Fix build race with wayland support
>>> >   gstreamer1.0-omx: Add raspberry pi optimization patches and config
>>> >     options
>>> >   weston: Specify egl and compositor options for rpi
>>> >   gstreamer1.0-omx: Backports and fixes for smooth video playback
>>> >   linux-raspberrypi: Upgrade 4.1 kernel to 4.1.17
>>> >   firmware: Upgrade to latest stable 20160209
>>> >   rpi-config: Upgrade to tip of tree to get GPU_MEM_1024
>>> >   linux-raspberrypi: Add recipe for 4.4 release
>>> >   userland: Upgrade to latest
>>> >   linux-raspberrypi: Upgrade 4.4.1 -> 4.4.2
>>> >   userland: Drop extern inline patches
>>> >
>>> >  README                                             |    2 +
>>> >  conf/machine/include/rpi-default-versions.inc      |    2 +-
>>> >  recipes-bsp/bootfiles/bcm2835-bootfiles.bb         |    2 +-
>>> >  recipes-bsp/bootfiles/rpi-config_git.bb            |    5 +-
>>> >  recipes-bsp/common/firmware.inc                    |    4 +-
>>> >  ...0001-include-asm-ioctl.h-for-ioctl-define.patch |   33 +
>>> >  recipes-devtools/python/python-rtimu_git.bb        |    4 +-
>>> >  .../rpi-gpio/0001-Remove-nested-functions.patch    |  294 +++
>>> >  .../{rpi-gpio_0.5.11.bb => rpi-gpio_0.6.1.bb}      |    6 +-
>>> >  ...-types.h-explicitly-for-getting-caddr_t-d.patch |   30 +
>>> >  recipes-devtools/python/rpio_0.10.0.bb             |    6 +-
>>> >  ...de-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch |   58 +
>>> >  recipes-devtools/wiringPi/wiringpi_git.bb          |    8 +-
>>> >  recipes-graphics/eglinfo/eglinfo-fb_%.bbappend     |    1 +
>>> >  recipes-graphics/eglinfo/eglinfo-x11_%.bbappend    |    1 +
>>> >  .../userland/0001-fix-gcc-5.x-inlines.patch        |   26 -
>>> >  .../userland/userland/0002-fix-musl-build.patch    |   22 -
>>> >  .../0002-set-VMCS_INSTALL_PREFIX-to-usr.patch      |    7 +-
>>> >  ...make-generate-and-install-pkgconfig-files.patch |   24 +-
>>> >  .../0003-fix-alloc-size-uninitialized.patch        |   13 -
>>> >  ...-applications-to-set-next-resource-handle.patch |  208 +++
>>> >  ...ayland-Add-support-for-the-Wayland-winsys.patch | 1880
>>> > ++++++++++++++++++++
>>> >  .../0007-wayland-Add-Wayland-example.patch         |  866 +++++++++
>>> >  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   28 +
>>> >  ...emove-faulty-assert-to-make-weston-happy-.patch |   29 +
>>> >  ...0-zero-out-wl-buffers-in-egl_surface_free.patch |   33 +
>>> >  ...011-initialize-front-back-wayland-buffers.patch |   34 +
>>> >  .../userland/userland/0012-Remove-RPC_FLUSH.patch  |   27 +
>>> >  .../userland/0013-fix-cmake-dependency-race.patch  |   78 +
>>> >  .../0014-Fix-enum-conversion-warnings.patch        |   99 ++
>>> >  recipes-graphics/userland/userland_git.bb          |   33 +-
>>> >  recipes-graphics/wayland/weston_%.bbappend         |    4 +
>>> >  recipes-graphics/weston/weston_%.bbappend          |    7 +
>>> >  recipes-kernel/linux/linux-raspberrypi_4.1.bb      |    4 +-
>>> >  ...raspberrypi_4.1.bb => linux-raspberrypi_4.4.bb} |    6 +-
>>> >  .../gstreamer1.0-omx/0001-config-files-path.patch  |  137 ++
>>> >  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |   47 +
>>> >  .../0003-fix-decoder-flushing.patch                |   15 +
>>> >  .../0003-no-timeout-on-get-state.patch             |   16 +
>>> >  ...erly-handle-drain-requests-while-flushing.patch |   69 +
>>> >  ...-gst_omx_video_dec_set_format-if-there-s-.patch |   30 +
>>> >  .../gstreamer/gstreamer1.0-omx_%.bbappend          |   22 +
>>> >  42 files changed, 4114 insertions(+), 106 deletions(-)
>>> >  create mode 100644
>>> > recipes-devtools/python/python-rtimu/0001-include-asm-ioctl.h-for-ioctl-define.patch
>>> >  create mode 100644
>>> > recipes-devtools/python/rpi-gpio/0001-Remove-nested-functions.patch
>>> >  rename recipes-devtools/python/{rpi-gpio_0.5.11.bb =>
>>> > rpi-gpio_0.6.1.bb} (70%)
>>> >  create mode 100644
>>> > recipes-devtools/python/rpio/0001-include-sys-types.h-explicitly-for-getting-caddr_t-d.patch
>>> >  create mode 100644
>>> > recipes-devtools/wiringPi/wiringpi/0001-include-asm-ioctl.h-directly-for-_IOC_SIZEBITS.patch
>>> >  create mode 100644 recipes-graphics/eglinfo/eglinfo-fb_%.bbappend
>>> >  create mode 100644 recipes-graphics/eglinfo/eglinfo-x11_%.bbappend
>>> >  delete mode 100644
>>> > recipes-graphics/userland/userland/0001-fix-gcc-5.x-inlines.patch
>>> >  delete mode 100644
>>> > recipes-graphics/userland/userland/0002-fix-musl-build.patch
>>> >  delete mode 100644
>>> > recipes-graphics/userland/userland/0003-fix-alloc-size-uninitialized.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0005-Allow-applications-to-set-next-resource-handle.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0006-wayland-Add-support-for-the-Wayland-winsys.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0007-wayland-Add-Wayland-example.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0008-wayland-egl-Add-bcm_host-to-dependencies.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0009-interface-remove-faulty-assert-to-make-weston-happy-.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0010-zero-out-wl-buffers-in-egl_surface_free.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0011-initialize-front-back-wayland-buffers.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0012-Remove-RPC_FLUSH.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0013-fix-cmake-dependency-race.patch
>>> >  create mode 100644
>>> > recipes-graphics/userland/userland/0014-Fix-enum-conversion-warnings.patch
>>> >  create mode 100644 recipes-graphics/wayland/weston_%.bbappend
>>> >  create mode 100644 recipes-graphics/weston/weston_%.bbappend
>>> >  copy recipes-kernel/linux/{linux-raspberrypi_4.1.bb =>
>>> > linux-raspberrypi_4.4.bb} (50%)
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>>> >  create mode 100644
>>> > recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
>>> >
>>> > --
>>> > 1.9.1
>>> >
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

