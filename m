Return-Path: <denton.gentry@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0659BE00F6E; Sat, 21 May 2016 10:22:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (denton.gentry[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEE98E00F6B
	for <yocto@yoctoproject.org>; Sat, 21 May 2016 10:22:05 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id y2so108210542vka.3
	for <yocto@yoctoproject.org>; Sat, 21 May 2016 10:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=HdxOpVGq/6OnGqsAO+SleiW4jiBbQg9Vs53nnflkJn0=;
	b=Bt9VswTkBnPqIuZ42osDvT8qfmsJogzGGoqX3NXjIFtu9ThARXiwf8cwl1GsBFhdfF
	Z8le0ZcRflUL+MtMBnHkMxW7cavEb22sLilI24N1aDhL62EQ7THpM4EY//v67morqpWn
	VUBc2gE3ridSmlvtwXJLor6Q+zjgClnpDNFzgYP/ZztoyMAM9SA77IBlFBG7nQugFBZM
	VsgTzbw1SWIF+90FM/rJTuW9e1CqvVpueV+hqAmZcgEummDHMk8nC8yKVSqmMvGX+t6n
	H1GgL+FtaxPX4Eogc7B3CMGANF7oz/9oEGmJbDioQ4T7eblamoQoUQoPTixaij7D4/rP
	Nsuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=HdxOpVGq/6OnGqsAO+SleiW4jiBbQg9Vs53nnflkJn0=;
	b=P9YHL9BCUuEHADwfHvGoFY/BzE0A//QVY0PPcn4Rs1tlIgKCM5eL1nPH7eXNdVfvcv
	04rZ/RcB3xam6i8KQFQo65GoQHKngdP/3lTDoYkjfkMxQV9riI4KhdQPuuCM6qyXC3+Y
	GnT5O+0q3gyKfCTYT042Rbw4IJ7BEBmhIVQyHfhZ8seM+jh9DQDdETd14hLRhealoXAq
	qf9sd79u1K8BBJ/ApZEBMrwar7L6CSMxY7pQeQS190j5xXxPTQpsa/aAuwcEcqoPCgkb
	CGGV8mdXKs7W9afMGM+1wlmIHzjGucxNTKfUhD9TmNb6XtUhDA8DNCFLs5uZ9cK06iOJ
	/3Nw==
X-Gm-Message-State: ALyK8tKvsiuXhTibKsdbTtWi6XpxLpeDzcAPknYprVyb0VB18A9ibtLwqbzxtPmZZrOUSEWfV1QdU+SiwpvsPQ==
MIME-Version: 1.0
X-Received: by 10.176.6.168 with SMTP id g37mr1812439uag.20.1463851324456;
	Sat, 21 May 2016 10:22:04 -0700 (PDT)
Received: by 10.31.14.2 with HTTP; Sat, 21 May 2016 10:22:04 -0700 (PDT)
Received: by 10.31.14.2 with HTTP; Sat, 21 May 2016 10:22:04 -0700 (PDT)
Date: Sat, 21 May 2016 10:22:04 -0700
Message-ID: <CABnBrYWyrOLiYD29oKx2uUNJThsL7BfH9RV_G+C=uCsWd03ZcA@mail.gmail.com>
From: Denton Gentry <denton.gentry@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 68, Issue 81z
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
X-List-Received-Date: Sat, 21 May 2016 17:22:09 -0000
Content-Type: multipart/alternative; boundary=94eb2c0433fe32c51b05335d72c0

--94eb2c0433fe32c51b05335d72c0
Content-Type: text/plain; charset=UTF-8

aXzzZdZx
On May 20, 2016 4:55 AM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics
>       driver: upgrade 4.4 kernel to 4.4.10 (Andrei Gherzan)
>    2. Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support for
>       vc4 graphics driver: upgrade 4.4 kernel to 4.4.10 (Herve Jourdain)
>    3. Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support for
>       vc4 graphics driver: upgrade 4.4 kernel to 4.4.10 (Andrei Gherzan)
>    4. [meta-raspberrypi][PATCH v2 00/13] Support for VC4 graphics
>       driver (Herve Jourdain)
>    5. [meta-raspberrypi][PATCH v2 01/13] rpi-default-providers.inc:
>       change default providers to support vc4graphics (Herve Jourdain)
>    6. [meta-raspberrypi][PATCH v2 02/13] rpi-base.inc: add
>       vc4-kms-v3d to the overlays to support vc4graphics (Herve Jourdain)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Fri, 20 May 2016 12:39:35 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Khem Raj <raj.khem@gmail.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for vc4
>         graphics driver: upgrade 4.4 kernel to 4.4.10
> Message-ID: <20160520103935.GI9848@resin.home>
> Content-Type: text/plain; charset="iso-8859-1"
>
> On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:
> > On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> > > On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M?ller wrote:
> > >> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain <
> herve.jourdain@neuf.fr> wrote:
> > >> > One thing I didn't make configurable, but that maybe could be, is
> the parameter passed to the overlay.
> > >> > I selected cma-256, based on experience from other people, and
> because my configuration is RPI2/3 with 1G of memory.
> > >> > I realize it might not work well with RPI0/1, which have less
> memory available...
> > >> > So even if I believe cma-256 is a good default value, it might be
> made selectable by the user, if we want to consider vc4 on RPI0/1.
> > >> I played around with vc4 to but did not manage to get it work for an
> > >> elder version 4.1 of kernel.
> > >>
> > >> I did in rpi-config:
> > >>
> > >> CMA_SIZE = "cma-256"
> > >> CMA_SIZE_raspberrypi = "cma-64"
> >
> >
> > >
> > > I sent reply about this too. This is definitely one solution would I
> > > would rather have a CMA_SIZE default value and a python function to
> > > check its match with board variant. Cause in this way a user might be
> > > able to use cma-96 on rapsberrypi.
> > >
> > >> CMA_SIZE_raspberrypi0 = "cma-128"
> >
> >
> > setting CMA_SIZE should be moved into machine.conf file IMO
> >
>
> That's actually a good idea. I would say to have it in machine as a
> default value for that specific machine. And then be able to overwrite
> it as user needs. Optionally have a python function to check that what
> user requested makes sense for the selected board.
>
> --
> Andrei Gherzan
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: signature.asc
> Type: application/pgp-signature
> Size: 819 bytes
> Desc: not available
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20160520/b258b04d/attachment-0001.pgp
> >
>
> ------------------------------
>
> Message: 2
> Date: Fri, 20 May 2016 12:47:40 +0200
> From: Herve Jourdain <herve.jourdain@neuf.fr>
> To: 'Andrei Gherzan' <andrei@gherzan.ro>, 'Khem Raj'
>         <raj.khem@gmail.com>
> Cc: 'Yocto Project' <yocto@yoctoproject.org>
> Subject: Re: [yocto] ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8]
>         Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
> Message-ID: <03f601d1b285$0a8c81f0$1fa585d0$@neuf.fr>
> Content-Type: text/plain; charset=iso-8859-1
>
> Hi Andrei, Khem,
>
> That's what I implemented in the upcoming v2 - except for the python
> checking function part.
> One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?
> I know CMA is kind of common, but we're using this only to trigger a
> parameter to the v4c overlay.
> Any opinion? (in the current implementation, I went with CMA_SIZE, but I
> have doubts...)
>
> Herve
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org]
> On Behalf Of Andrei Gherzan
> Sent: vendredi 20 mai 2016 12:40
> To: Khem Raj <raj.khem@gmail.com>
> Cc: Yocto Project <yocto@yoctoproject.org>
> Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for
> vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
>
> On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:
> > On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan <andrei@gherzan.ro>
> wrote:
> > > On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M?ller wrote:
> > >> On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain
> <herve.jourdain@neuf.fr> wrote:
> > >> > One thing I didn't make configurable, but that maybe could be, is
> the
> parameter passed to the overlay.
> > >> > I selected cma-256, based on experience from other people, and
> because my configuration is RPI2/3 with 1G of memory.
> > >> > I realize it might not work well with RPI0/1, which have less memory
> available...
> > >> > So even if I believe cma-256 is a good default value, it might be
> made selectable by the user, if we want to consider vc4 on RPI0/1.
> > >> I played around with vc4 to but did not manage to get it work for
> > >> an elder version 4.1 of kernel.
> > >>
> > >> I did in rpi-config:
> > >>
> > >> CMA_SIZE = "cma-256"
> > >> CMA_SIZE_raspberrypi = "cma-64"
> >
> >
> > >
> > > I sent reply about this too. This is definitely one solution would I
> > > would rather have a CMA_SIZE default value and a python function to
> > > check its match with board variant. Cause in this way a user might
> > > be able to use cma-96 on rapsberrypi.
> > >
> > >> CMA_SIZE_raspberrypi0 = "cma-128"
> >
> >
> > setting CMA_SIZE should be moved into machine.conf file IMO
> >
>
> That's actually a good idea. I would say to have it in machine as a default
> value for that specific machine. And then be able to overwrite it as user
> needs. Optionally have a python function to check that what user requested
> makes sense for the selected board.
>
> --
> Andrei Gherzan
>
>
>
> ------------------------------
>
> Message: 3
> Date: Fri, 20 May 2016 12:51:56 +0200
> From: Andrei Gherzan <andrei@gherzan.ro>
> To: Herve Jourdain <herve.jourdain@neuf.fr>
> Cc: 'Yocto Project' <yocto@yoctoproject.org>
> Subject: Re: [yocto] ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8]
>         Support for vc4 graphics driver: upgrade 4.4 kernel to 4.4.10
> Message-ID: <20160520105156.GK9848@resin.home>
> Content-Type: text/plain; charset="us-ascii"
>
> On Fri, May 20, 2016 at 12:47:40PM +0200, Herve Jourdain wrote:
> > Hi Andrei, Khem,
> >
> > That's what I implemented in the upcoming v2 - except for the python
> > checking function part.
> > One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?
> > I know CMA is kind of common, but we're using this only to trigger a
> > parameter to the v4c overlay.
> > Any opinion? (in the current implementation, I went with CMA_SIZE, but I
> > have doubts...)
> >
>
> Hint: Try to reply in line if possible. It is easier to follow the
> discussion in this way.
>
> I would vote for VC4_CMA_SIZE. It sounds safer.
>
> --
> Andrei Gherzan
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: signature.asc
> Type: application/pgp-signature
> Size: 819 bytes
> Desc: not available
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20160520/0874bb0c/attachment-0001.pgp
> >
>
> ------------------------------
>
> Message: 4
> Date: Fri, 20 May 2016 19:51:40 +0800
> From: Herve Jourdain <herve.jourdain@neuf.fr>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-raspberrypi][PATCH v2 00/13] Support for VC4
>         graphics driver
> Message-ID: <1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr>
>
> This v2 series addresses the following issues with the first series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to build
> (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d overlay,
> depending on the board (and the memory it has)
>
> This patch series enables the support for the VC4 graphics driver from
> Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it
> required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for
> 4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed
> unreasonable to support VC4 with 4.1 kernels.
>
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and
> later.
>
> This patch series proposes to support VC4 by only adding 'vc4graphics' to
> MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the
> necessary configuration/changes to use the VC4 driver, including
> mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed
> (support for .dtbo, and fix of the mesa packaging when there is no DRI
> driver).
> The memory reserved for the VC4 driver has default values depending on the
> version of the board used, but it can be configured by setting VC4_CMA_SIZE
> to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128',
> 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on boards
> with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>
> It was tested with wayland/weston, without the support for X11.
>
> This patch series depends on two other patch series previously posted,
> that enable the support for .dtbo overlay files.
>
> Herve Jourdain (13):
>   rpi-default-providers.inc: change default providers to support
>     vc4graphics
>   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   firmware.inc: bump version to support vc4graphics
>   rpi-config_git.bb: add v4c overlay to config.txt to support
>     vc4graphics
>   wayland/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   weston/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   mesa_%.bbappend: new file to add the correct configuration options to
>     support vc4graphics
>   linux-raspberrypi_4.4.bb: bump the kernel revision to 4.4.10 to
>     support vc4graphics
>   linux-rpi.inc: add the configuration options required to support
>     vc4graphics
>
>  conf/machine/include/rpi-base.inc              |  1 +
>  conf/machine/include/rpi-default-providers.inc |  8 ++++----
>  conf/machine/raspberrypi.conf                  |  2 ++
>  conf/machine/raspberrypi0.conf                 |  2 ++
>  conf/machine/raspberrypi2.conf                 |  2 ++
>  conf/machine/raspberrypi3.conf                 |  2 ++
>  recipes-bsp/bootfiles/rpi-config_git.bb        | 10 +++++++++-
>  recipes-bsp/common/firmware.inc                |  4 ++--
>  recipes-graphics/mesa/mesa_%.bbappend          |  4 ++++
>  recipes-graphics/wayland/weston_%.bbappend     |  6 ++----
>  recipes-graphics/weston/weston_%.bbappend      | 13 +++++++------
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb  |  4 ++--
>  recipes-kernel/linux/linux-rpi.inc             | 10 ++++++++++
>  13 files changed, 49 insertions(+), 19 deletions(-)
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 5
> Date: Fri, 20 May 2016 19:51:41 +0800
> From: Herve Jourdain <herve.jourdain@neuf.fr>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-raspberrypi][PATCH v2 01/13]
>         rpi-default-providers.inc: change default providers to support
>         vc4graphics
> Message-ID: <1463745113-55142-2-git-send-email-herve.jourdain@neuf.fr>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc
> b/conf/machine/include/rpi-default-providers.inc
> index cabbd43..0bc8838 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -3,8 +3,8 @@
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
>  PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
>  PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
> -PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
> +PREFERRED_PROVIDER_virtual/egl ?=
> "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa",
> "userland", d)}"
> +PREFERRED_PROVIDER_virtual/libgles2 ?=
> "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa",
> "userland", d)}"
> +PREFERRED_PROVIDER_virtual/libgl ?=
> "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl",
> d)}"
> +PREFERRED_PROVIDER_virtual/mesa ?=
> "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "mesa", "mesa-gl",
> d)}"
>  PREFERRED_PROVIDER_jpeg ?= "jpeg"
> --
> 2.7.4
>
>
>
> ------------------------------
>
> Message: 6
> Date: Fri, 20 May 2016 19:51:42 +0800
> From: Herve Jourdain <herve.jourdain@neuf.fr>
> To: yocto@yoctoproject.org
> Subject: [yocto] [meta-raspberrypi][PATCH v2 02/13] rpi-base.inc: add
>         vc4-kms-v3d to the overlays to support vc4graphics
> Message-ID: <1463745113-55142-3-git-send-email-herve.jourdain@neuf.fr>
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc
> b/conf/machine/include/rpi-base.inc
> index 2c9d8e0..23f8619 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -59,6 +59,7 @@ KERNEL_DEVICETREE_OVERLAYS_DTBO = " \
>      overlays/w1-gpio.dtbo \
>      overlays/w1-gpio-pullup.dtbo \
>      overlays/pi3-miniuart-bt.dtbo \
> +    overlays/vc4-kms-v3d.dtbo \
>      "
>
>  def cmpver_strings(ver1, ver2, truevalue, falsevalue):
> --
> 2.7.4
>
>
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 68, Issue 81
> *************************************
>

--94eb2c0433fe32c51b05335d72c0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">aXzzZdZx</p>
<div class=3D"gmail_quote">On May 20, 2016 4:55 AM,  &lt;<a href=3D"mailto:=
yocto-request@yoctoproject.org">yocto-request@yoctoproject.org</a>&gt; wrot=
e:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Send yocto mailin=
g list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org">yocto=
@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g">yocto-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
>yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Re: [meta-raspberrypi][PATCH 5/8] Support for vc4 graphics<=
br>
=C2=A0 =C2=A0 =C2=A0 driver: upgrade 4.4 kernel to 4.4.10 (Andrei Gherzan)<=
br>
=C2=A0 =C2=A02. Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support fo=
r<br>
=C2=A0 =C2=A0 =C2=A0 vc4 graphics driver: upgrade 4.4 kernel to 4.4.10 (Her=
ve Jourdain)<br>
=C2=A0 =C2=A03. Re: ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8] Support fo=
r<br>
=C2=A0 =C2=A0 =C2=A0 vc4 graphics driver: upgrade 4.4 kernel to 4.4.10 (And=
rei Gherzan)<br>
=C2=A0 =C2=A04. [meta-raspberrypi][PATCH v2 00/13] Support for VC4 graphics=
<br>
=C2=A0 =C2=A0 =C2=A0 driver (Herve Jourdain)<br>
=C2=A0 =C2=A05. [meta-raspberrypi][PATCH v2 01/13] rpi-default-providers.in=
c:<br>
=C2=A0 =C2=A0 =C2=A0 change default providers to support vc4graphics (Herve=
 Jourdain)<br>
=C2=A0 =C2=A06. [meta-raspberrypi][PATCH v2 02/13] rpi-base.inc: add<br>
=C2=A0 =C2=A0 =C2=A0 vc4-kms-v3d to the overlays to support vc4graphics (He=
rve Jourdain)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Fri, 20 May 2016 12:39:35 +0200<br>
From: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherza=
n.ro</a>&gt;<br>
To: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</=
a>&gt;<br>
Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for vc4<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 graphics driver: upgrade 4.4 kernel to 4.4.10<b=
r>
Message-ID: &lt;20160520103935.GI9848@resin.home&gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:<br>
&gt; On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; &gt; On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M?ller wrote:<b=
r>
&gt; &gt;&gt; On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain &lt;<a href=
=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt; wrote:<br=
>
&gt; &gt;&gt; &gt; One thing I didn&#39;t make configurable, but that maybe=
 could be, is the parameter passed to the overlay.<br>
&gt; &gt;&gt; &gt; I selected cma-256, based on experience from other peopl=
e, and because my configuration is RPI2/3 with 1G of memory.<br>
&gt; &gt;&gt; &gt; I realize it might not work well with RPI0/1, which have=
 less memory available...<br>
&gt; &gt;&gt; &gt; So even if I believe cma-256 is a good default value, it=
 might be made selectable by the user, if we want to consider vc4 on RPI0/1=
.<br>
&gt; &gt;&gt; I played around with vc4 to but did not manage to get it work=
 for an<br>
&gt; &gt;&gt; elder version 4.1 of kernel.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I did in rpi-config:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; CMA_SIZE =3D &quot;cma-256&quot;<br>
&gt; &gt;&gt; CMA_SIZE_raspberrypi =3D &quot;cma-64&quot;<br>
&gt;<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; I sent reply about this too. This is definitely one solution woul=
d I<br>
&gt; &gt; would rather have a CMA_SIZE default value and a python function =
to<br>
&gt; &gt; check its match with board variant. Cause in this way a user migh=
t be<br>
&gt; &gt; able to use cma-96 on rapsberrypi.<br>
&gt; &gt;<br>
&gt; &gt;&gt; CMA_SIZE_raspberrypi0 =3D &quot;cma-128&quot;<br>
&gt;<br>
&gt;<br>
&gt; setting CMA_SIZE should be moved into machine.conf file IMO<br>
&gt;<br>
<br>
That&#39;s actually a good idea. I would say to have it in machine as a<br>
default value for that specific machine. And then be able to overwrite<br>
it as user needs. Optionally have a python function to check that what<br>
user requested makes sense for the selected board.<br>
<br>
--<br>
Andrei Gherzan<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: signature.asc<br>
Type: application/pgp-signature<br>
Size: 819 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20160520/b258b04d/attachment-0001.pgp" rel=3D"noreferrer" target=3D"_bla=
nk">http://lists.yoctoproject.org/pipermail/yocto/attachments/20160520/b258=
b04d/attachment-0001.pgp</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Fri, 20 May 2016 12:47:40 +0200<br>
From: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a>&gt;<br>
To: &#39;Andrei Gherzan&#39; &lt;<a href=3D"mailto:andrei@gherzan.ro">andre=
i@gherzan.ro</a>&gt;, &#39;Khem Raj&#39;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.k=
hem@gmail.com</a>&gt;<br>
Cc: &#39;Yocto Project&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support for vc4 graphics driver: upgrade 4.4 ke=
rnel to 4.4.10<br>
Message-ID: &lt;03f601d1b285$0a8c81f0$1fa585d0$@<a href=3D"http://neuf.fr" =
rel=3D"noreferrer" target=3D"_blank">neuf.fr</a>&gt;<br>
Content-Type: text/plain; charset=3Diso-8859-1<br>
<br>
Hi Andrei, Khem,<br>
<br>
That&#39;s what I implemented in the upcoming v2 - except for the python<br=
>
checking function part.<br>
One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?<br>
I know CMA is kind of common, but we&#39;re using this only to trigger a<br=
>
parameter to the v4c overlay.<br>
Any opinion? (in the current implementation, I went with CMA_SIZE, but I<br=
>
have doubts...)<br>
<br>
Herve<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>]<br>
On Behalf Of Andrei Gherzan<br>
Sent: vendredi 20 mai 2016 12:40<br>
To: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</=
a>&gt;<br>
Cc: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: ***SPAM*** Re: [yocto] [meta-raspberrypi][PATCH 5/8] Support for<b=
r>
vc4 graphics driver: upgrade 4.4 kernel to 4.4.10<br>
<br>
On Thu, May 19, 2016 at 09:02:04AM -0700, Khem Raj wrote:<br>
&gt; On Thu, May 19, 2016 at 8:11 AM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; &gt; On Wed, May 18, 2016 at 11:46:39PM +0200, Andreas M?ller wrote:<b=
r>
&gt; &gt;&gt; On Wed, May 18, 2016 at 7:32 PM, Herve Jourdain<br>
&lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jourdain@neuf.fr</a>&gt=
; wrote:<br>
&gt; &gt;&gt; &gt; One thing I didn&#39;t make configurable, but that maybe=
 could be, is the<br>
parameter passed to the overlay.<br>
&gt; &gt;&gt; &gt; I selected cma-256, based on experience from other peopl=
e, and<br>
because my configuration is RPI2/3 with 1G of memory.<br>
&gt; &gt;&gt; &gt; I realize it might not work well with RPI0/1, which have=
 less memory<br>
available...<br>
&gt; &gt;&gt; &gt; So even if I believe cma-256 is a good default value, it=
 might be<br>
made selectable by the user, if we want to consider vc4 on RPI0/1.<br>
&gt; &gt;&gt; I played around with vc4 to but did not manage to get it work=
 for<br>
&gt; &gt;&gt; an elder version 4.1 of kernel.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I did in rpi-config:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; CMA_SIZE =3D &quot;cma-256&quot;<br>
&gt; &gt;&gt; CMA_SIZE_raspberrypi =3D &quot;cma-64&quot;<br>
&gt;<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt; I sent reply about this too. This is definitely one solution woul=
d I<br>
&gt; &gt; would rather have a CMA_SIZE default value and a python function =
to<br>
&gt; &gt; check its match with board variant. Cause in this way a user migh=
t<br>
&gt; &gt; be able to use cma-96 on rapsberrypi.<br>
&gt; &gt;<br>
&gt; &gt;&gt; CMA_SIZE_raspberrypi0 =3D &quot;cma-128&quot;<br>
&gt;<br>
&gt;<br>
&gt; setting CMA_SIZE should be moved into machine.conf file IMO<br>
&gt;<br>
<br>
That&#39;s actually a good idea. I would say to have it in machine as a def=
ault<br>
value for that specific machine. And then be able to overwrite it as user<b=
r>
needs. Optionally have a python function to check that what user requested<=
br>
makes sense for the selected board.<br>
<br>
--<br>
Andrei Gherzan<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Fri, 20 May 2016 12:51:56 +0200<br>
From: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherza=
n.ro</a>&gt;<br>
To: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jour=
dain@neuf.fr</a>&gt;<br>
Cc: &#39;Yocto Project&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.org">y=
octo@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] ***SPAM*** Re: [meta-raspberrypi][PATCH 5/8]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Support for vc4 graphics driver: upgrade 4.4 ke=
rnel to 4.4.10<br>
Message-ID: &lt;20160520105156.GK9848@resin.home&gt;<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
On Fri, May 20, 2016 at 12:47:40PM +0200, Herve Jourdain wrote:<br>
&gt; Hi Andrei, Khem,<br>
&gt;<br>
&gt; That&#39;s what I implemented in the upcoming v2 - except for the pyth=
on<br>
&gt; checking function part.<br>
&gt; One thing, shall I call the variable CMA_SIZE, or VC4_CMA_SIZE?<br>
&gt; I know CMA is kind of common, but we&#39;re using this only to trigger=
 a<br>
&gt; parameter to the v4c overlay.<br>
&gt; Any opinion? (in the current implementation, I went with CMA_SIZE, but=
 I<br>
&gt; have doubts...)<br>
&gt;<br>
<br>
Hint: Try to reply in line if possible. It is easier to follow the<br>
discussion in this way.<br>
<br>
I would vote for VC4_CMA_SIZE. It sounds safer.<br>
<br>
--<br>
Andrei Gherzan<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: signature.asc<br>
Type: application/pgp-signature<br>
Size: 819 bytes<br>
Desc: not available<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20160520/0874bb0c/attachment-0001.pgp" rel=3D"noreferrer" target=3D"_bla=
nk">http://lists.yoctoproject.org/pipermail/yocto/attachments/20160520/0874=
bb0c/attachment-0001.pgp</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Fri, 20 May 2016 19:51:40 +0800<br>
From: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [meta-raspberrypi][PATCH v2 00/13] Support for VC4<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 graphics driver<br>
Message-ID: &lt;<a href=3D"mailto:1463745113-55142-1-git-send-email-herve.j=
ourdain@neuf.fr">1463745113-55142-1-git-send-email-herve.jourdain@neuf.fr</=
a>&gt;<br>
<br>
This v2 series addresses the following issues with the first series:<br>
a. Fix the 4.4.10 kernel revision<br>
b. Effectively add vc4-kms-v3d overlay to the list of overlays to build (fo=
rgotten previously)<br>
c. Make the parameter to the v4c-kms-v3d overlay configurable<br>
d. Add default values for the cma parameter to the v4c-kms-v3d overlay, dep=
ending on the board (and the memory it has)<br>
<br>
This patch series enables the support for the VC4 graphics driver from Eric=
 Anholt.<br>
There was a previous patch series by Javier Martinez Canillas, but it requi=
red use of a different kernel.<br>
VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9=
+.<br>
The support in 4.1 exists, but it is NOT STABLE, so it has been deemed unre=
asonable to support VC4 with 4.1 kernels.<br>
<br>
THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and lat=
er.<br>
<br>
This patch series proposes to support VC4 by only adding &#39;vc4graphics&#=
39; to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger a=
ll the necessary configuration/changes to use the VC4 driver, including mes=
a/wayland/weston currently, and adding the overlay required.<br>
In order for this series to work, some previous patches are needed (support=
 for .dtbo, and fix of the mesa packaging when there is no DRI driver).<br>
The memory reserved for the VC4 driver has default values depending on the =
version of the board used, but it can be configured by setting VC4_CMA_SIZE=
 to a value supported by the overlay (&#39;cma-256&#39;, &#39;cma-192&#39;,=
 &#39;cma-128&#39;, &#39;cma-96&#39;, &#39;cma-64&#39;).<br>
&#39;cma-256&#39; is the recommended value, but it might not be possible on=
 boards with 512MB or DRAM, or less...<br>
&#39;cma-64&#39; is known to not being able to support FHD/1080p.<br>
<br>
It was tested with wayland/weston, without the support for X11.<br>
<br>
This patch series depends on two other patch series previously posted, that=
 enable the support for .dtbo overlay files.<br>
<br>
Herve Jourdain (13):<br>
=C2=A0 rpi-default-providers.inc: change default providers to support<br>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics=
<br>
=C2=A0 raspberrypi.conf: set the default value of VC4_CMA_SIZE to support<b=
r>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support<=
br>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support<=
br>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support<=
br>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 firmware.inc: bump version to support vc4graphics<br>
=C2=A0 <a href=3D"http://rpi-config_git.bb" rel=3D"noreferrer" target=3D"_b=
lank">rpi-config_git.bb</a>: add v4c overlay to config.txt to support<br>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 wayland/weston_%.bbappend: modify configuration options to support<b=
r>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 weston/weston_%.bbappend: modify configuration options to support<br=
>
=C2=A0 =C2=A0 vc4graphics<br>
=C2=A0 mesa_%.bbappend: new file to add the correct configuration options t=
o<br>
=C2=A0 =C2=A0 support vc4graphics<br>
=C2=A0 <a href=3D"http://linux-raspberrypi_4.4.bb" rel=3D"noreferrer" targe=
t=3D"_blank">linux-raspberrypi_4.4.bb</a>: bump the kernel revision to 4.4.=
10 to<br>
=C2=A0 =C2=A0 support vc4graphics<br>
=C2=A0 linux-rpi.inc: add the configuration options required to support<br>
=C2=A0 =C2=A0 vc4graphics<br>
<br>
=C2=A0conf/machine/include/rpi-base.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 |=C2=A0 1 +<br>
=C2=A0conf/machine/include/rpi-default-providers.inc |=C2=A0 8 ++++----<br>
=C2=A0conf/machine/raspberrypi.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 2 ++<br>
=C2=A0conf/machine/raspberrypi0.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
=C2=A0conf/machine/raspberrypi2.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
=C2=A0conf/machine/raspberrypi3.conf=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 2 ++<br>
=C2=A0recipes-bsp/bootfiles/<a href=3D"http://rpi-config_git.bb" rel=3D"nor=
eferrer" target=3D"_blank">rpi-config_git.bb</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 | 10 +++++++++-<br>
=C2=A0recipes-bsp/common/firmware.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 4 ++--<br>
=C2=A0recipes-graphics/mesa/mesa_%.bbappend=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 |=C2=A0 4 ++++<br>
=C2=A0recipes-graphics/wayland/weston_%.bbappend=C2=A0 =C2=A0 =C2=A0|=C2=A0=
 6 ++----<br>
=C2=A0recipes-graphics/weston/weston_%.bbappend=C2=A0 =C2=A0 =C2=A0 | 13 ++=
+++++------<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-raspberrypi_4.4.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-raspberrypi_4.4.bb</a>=C2=A0 |=C2=
=A0 4 ++--<br>
=C2=A0recipes-kernel/linux/linux-rpi.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| 10 ++++++++++<br>
=C2=A013 files changed, 49 insertions(+), 19 deletions(-)<br>
=C2=A0create mode 100644 recipes-graphics/mesa/mesa_%.bbappend<br>
<br>
--<br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Fri, 20 May 2016 19:51:41 +0800<br>
From: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [meta-raspberrypi][PATCH v2 01/13]<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 rpi-default-providers.inc: change default provi=
ders to support<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vc4graphics<br>
Message-ID: &lt;<a href=3D"mailto:1463745113-55142-2-git-send-email-herve.j=
ourdain@neuf.fr">1463745113-55142-2-git-send-email-herve.jourdain@neuf.fr</=
a>&gt;<br>
<br>
Signed-off-by: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr"=
>herve.jourdain@neuf.fr</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rpi-default-providers.inc | 8 ++++----<br>
=C2=A01 file changed, 4 insertions(+), 4 deletions(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/=
include/rpi-default-providers.inc<br>
index cabbd43..0bc8838 100644<br>
--- a/conf/machine/include/rpi-default-providers.inc<br>
+++ b/conf/machine/include/rpi-default-providers.inc<br>
@@ -3,8 +3,8 @@<br>
=C2=A0PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-raspberrypi&quot;<=
br>
=C2=A0PREFERRED_PROVIDER_u-boot ?=3D &quot;u-boot-rpi&quot;<br>
=C2=A0PREFERRED_PROVIDER_virtual/xserver ?=3D &quot;xserver-xorg&quot;<br>
-PREFERRED_PROVIDER_virtual/egl ?=3D &quot;userland&quot;<br>
-PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;userland&quot;<br>
-PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;mesa-gl&quot;<br>
-PREFERRED_PROVIDER_virtual/mesa ?=3D &quot;mesa-gl&quot;<br>
+PREFERRED_PROVIDER_virtual/egl ?=3D &quot;${@bb.utils.contains(&quot;MACHI=
NE_FEATURES&quot;, &quot;vc4graphics&quot;, &quot;mesa&quot;, &quot;userlan=
d&quot;, d)}&quot;<br>
+PREFERRED_PROVIDER_virtual/libgles2 ?=3D &quot;${@bb.utils.contains(&quot;=
MACHINE_FEATURES&quot;, &quot;vc4graphics&quot;, &quot;mesa&quot;, &quot;us=
erland&quot;, d)}&quot;<br>
+PREFERRED_PROVIDER_virtual/libgl ?=3D &quot;${@bb.utils.contains(&quot;MAC=
HINE_FEATURES&quot;, &quot;vc4graphics&quot;, &quot;mesa&quot;, &quot;mesa-=
gl&quot;, d)}&quot;<br>
+PREFERRED_PROVIDER_virtual/mesa ?=3D &quot;${@bb.utils.contains(&quot;MACH=
INE_FEATURES&quot;, &quot;vc4graphics&quot;, &quot;mesa&quot;, &quot;mesa-g=
l&quot;, d)}&quot;<br>
=C2=A0PREFERRED_PROVIDER_jpeg ?=3D &quot;jpeg&quot;<br>
--<br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Fri, 20 May 2016 19:51:42 +0800<br>
From: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr">herve.jo=
urdain@neuf.fr</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [meta-raspberrypi][PATCH v2 02/13] rpi-base.inc: add<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 vc4-kms-v3d to the overlays to support vc4graph=
ics<br>
Message-ID: &lt;<a href=3D"mailto:1463745113-55142-3-git-send-email-herve.j=
ourdain@neuf.fr">1463745113-55142-3-git-send-email-herve.jourdain@neuf.fr</=
a>&gt;<br>
<br>
Signed-off-by: Herve Jourdain &lt;<a href=3D"mailto:herve.jourdain@neuf.fr"=
>herve.jourdain@neuf.fr</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rpi-base.inc | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-b=
ase.inc<br>
index 2c9d8e0..23f8619 100644<br>
--- a/conf/machine/include/rpi-base.inc<br>
+++ b/conf/machine/include/rpi-base.inc<br>
@@ -59,6 +59,7 @@ KERNEL_DEVICETREE_OVERLAYS_DTBO =3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0overlays/w1-gpio.dtbo \<br>
=C2=A0 =C2=A0 =C2=A0overlays/w1-gpio-pullup.dtbo \<br>
=C2=A0 =C2=A0 =C2=A0overlays/pi3-miniuart-bt.dtbo \<br>
+=C2=A0 =C2=A0 overlays/vc4-kms-v3d.dtbo \<br>
=C2=A0 =C2=A0 =C2=A0&quot;<br>
<br>
=C2=A0def cmpver_strings(ver1, ver2, truevalue, falsevalue):<br>
--<br>
2.7.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 68, Issue 81<br>
*************************************<br>
</blockquote></div>

--94eb2c0433fe32c51b05335d72c0--
