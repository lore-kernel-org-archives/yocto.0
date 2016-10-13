Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E258FE00DF0; Thu, 13 Oct 2016 01:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED1A0E00C81
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:06:47 -0700 (PDT)
Received: by mail-vk0-f65.google.com with SMTP id 2so3153786vkb.1
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 01:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IJM5LFwUDd5+68Rpw92fIHYo0wGs5RMuGaM/gE8xK2w=;
	b=0xzltlojJrU5S3XYz7fR/EdbJ//ZHqi1c2z7V+n1qwCDKGO8iX6TzFDo3LR7CvXOuR
	8Z1McwsuTD9jKXATfA5wTZzKIyARQ+ruxUup+13gsl9xwObH5L/1KZZKviULXJqEJGXi
	xx1ar7etbiWih6alrarCaO08z/ceNuvi6UGE+fLrRQ+1v2DqjIHMSUJn57nxyO1JaH9w
	d2+YkZW1dJpsohQN2lHYT3nXaKevYOGweGZvPDktRCTAT11YoKy5FG2fCFNwMK8Gjp/z
	Pb0YXX6Twc2jlp/B6kgayet+4hAnWZtgU2uk4hLalhm5zEzfjS6WMcHHKWvlisVFs8ha
	LRiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IJM5LFwUDd5+68Rpw92fIHYo0wGs5RMuGaM/gE8xK2w=;
	b=Jw6l4bZdnkzRfsOPLDPpInKnAbZFA83OrjSaXLtQ/GerOEmG12MoTWXRE4l9soRxl7
	NVVwH+JSysEmgzlnieZwtXTXszlK6F8RgTGdybXgY/Z8bIAin9lj1VFpnDYG3h8xjHo+
	7U7fH7p7jgv9V8Gh2G616Cg6YPhvDMeoKgiKYetUifQR+P85j0MjB88uuSa79f4xaOQb
	dV7ohznA0kk8j//O7KBZyZDcQo04+n5zAv68s2q6bOVOILayhB6NlrdSenSC+zrDofQQ
	RRg5odFPDxW7JclxhmNfBpL/M/w1IdB06LJTpjyYsxn0cpnaNxq5ZWaMPdIusx28Fi/m
	JJmg==
X-Gm-Message-State: AA6/9Rn3PPYTAaa+KFHgcWuleQkQ3BSuSNpvwhdO/KrqaFpmNSpO96m4yTS10QDWsgwJ+EOQ6BmUIMz9oMSZgg==
X-Received: by 10.31.233.6 with SMTP id g6mr3509400vkh.148.1476346006501; Thu,
	13 Oct 2016 01:06:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.206 with HTTP; Thu, 13 Oct 2016 01:06:16 -0700 (PDT)
In-Reply-To: <20161012235407.GA20761@resin>
References: <20161007043946.10158-1-raj.khem@gmail.com>
	<20161012235407.GA20761@resin>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 13 Oct 2016 10:06:16 +0200
Message-ID: <CAMKF1soMdK2xtitNuwaryeR-oUkQeyjekRQJ=FQ=vfDaOT7Yvg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Add recipes and patches for 4.8 release
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
X-List-Received-Date: Thu, 13 Oct 2016 08:06:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 13, 2016 at 1:55 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Oct 06, 2016 at 09:39:46PM -0700, Khem Raj wrote:
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../0001-fix-dtbo-rules.patch                      | 44 ++++++++++++++++++++++
>>  ...835-camera-fix-compilation-warning-werror.patch | 35 +++++++++++++++++
>>  recipes-kernel/linux/linux-raspberrypi_4.8.bb      | 10 +++++
>>  3 files changed, 89 insertions(+)
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
>>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.8.bb
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
>> new file mode 100644
>> index 0000000..5113e23
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-fix-dtbo-rules.patch
>> @@ -0,0 +1,44 @@
>> +From 13c8784da3dbd977f64cec740eba775b6fab11c2 Mon Sep 17 00:00:00 2001
>> +From: Herve Jourdain <herve.jourdain@neuf.fr>
>> +Date: Fri, 20 May 2016 16:02:23 +0800
>> +Subject: [yocto][meta-raspberrypi][PATCH v4 4/5] linux-raspberrypi_4.4.inc:
>> + support for .dtbo files for dtb overlays
>> +
>> +Upstream-Status: Pending
>> +
>> +Kernel 4.4.6+ on RaspberryPi support .dtbo files for overlays, instead of .dtb.
>> +Patch the kernel, which has faulty rules to generate .dtbo the way yocto does
>> +
>> +Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> +---
>> + .../0001-fix-dtbo-rules.patch                      | 27 ++++++++++++++++++++++
>> + 1 file changed, 27 insertions(+)
>> + create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0001-fix-dtbo-rules.patch
>> +
>> +diff --git a/arch/arm/Makefile b/arch/arm/Makefile
>> +index a2e7cf7..673c1cb 100644
>> +--- a/arch/arm/Makefile
>> ++++ b/arch/arm/Makefile
>> +@@ -333,6 +333,8 @@ $(INSTALL_TARGETS):
>> +
>> + %.dtb: | scripts
>> +     $(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
>> ++%.dtbo: | scripts
>> ++    $(Q)$(MAKE) $(build)=$(boot)/dts MACHINE=$(MACHINE) $(boot)/dts/$@
>> +
>> + PHONY += dtbs dtbs_install
>> +
>> +diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
>> +index 3079c4f..6cc3766 100644
>> +--- a/scripts/Makefile.lib
>> ++++ b/scripts/Makefile.lib
>> +@@ -293,7 +293,8 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
>> +     $(call if_changed_dep,dtc)
>> +
>> + quiet_cmd_dtco = DTCO    $@
>> +-cmd_dtco = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
>> ++cmd_dtco = mkdir -p $(dir ${dtc-tmp}) ; \
>> ++    $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
>> +     $(objtree)/scripts/dtc/dtc -@ -H epapr -O dtb -o $@ -b 0 \
>> +             -i $(dir $<) $(DTC_FLAGS) \
>> +             -d $(depfile).dtc.tmp $(dtc-tmp) ; \
>> diff --git a/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
>> new file mode 100644
>> index 0000000..ea9778f
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi-4.8/0001-media-bcm2835-camera-fix-compilation-warning-werror.patch
>> @@ -0,0 +1,35 @@
>> +From a8151cbe5d92d7487b7994522cbc83fed04ae1f9 Mon Sep 17 00:00:00 2001
>> +From: Khem Raj <raj.khem@gmail.com>
>> +Date: Thu, 6 Oct 2016 19:42:55 -0700
>> +Subject: [PATCH] [media]: bcm2835-camera: fix compilation warning/werror
>> +
>> +| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm2835-camera.c:656:17: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types
>> +]
>> +|   .queue_setup = queue_setup,
>> +|                  ^~~~~~~~~~~
>> +| /a/builder/mnt/build/tmp-glibc/work-shared/raspberrypi3/kernel-source/drivers/media/platform/bcm2835/bcm28
>> +35-camera.c:656:17: note: (near initialization for 'bm2835_mmal_video_qops.queue_setup')
>> +
>> +use struct device* instead of void*
>> +
>> +Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> +---
>> + drivers/media/platform/bcm2835/bcm2835-camera.c | 2 +-
>> + 1 file changed, 1 insertion(+), 1 deletion(-)
>> +
>> +diff --git a/drivers/media/platform/bcm2835/bcm2835-camera.c b/drivers/media/platform/bcm2835/bcm2835-camera.c
>> +index 70f4db2..cb5bab6 100644
>> +--- a/drivers/media/platform/bcm2835/bcm2835-camera.c
>> ++++ b/drivers/media/platform/bcm2835/bcm2835-camera.c
>> +@@ -244,7 +244,7 @@ static struct mmal_fmt *get_format(struct v4l2_format *f)
>> +
>> + static int queue_setup(struct vb2_queue *vq,
>> +                    unsigned int *nbuffers, unsigned int *nplanes,
>> +-                   unsigned int sizes[], void *alloc_ctxs[])
>> ++                   unsigned int sizes[], struct device *alloc_ctxs[])
>> + {
>> +     struct bm2835_mmal_dev *dev = vb2_get_drv_priv(vq);
>> +     unsigned long size;
>> +--
>> +2.10.0
>> +
>> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.8.bb b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> new file mode 100644
>> index 0000000..92a69ad
>> --- /dev/null
>> +++ b/recipes-kernel/linux/linux-raspberrypi_4.8.bb
>> @@ -0,0 +1,10 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>> +
>> +LINUX_VERSION ?= "4.8.0"
>> +
>> +SRCREV = "2fb843e0e50b2330e76acea03ff63a5b2b1e411f"
>
> They seem to rebase the repository pretty often and we already have
> problems with 4.7 so I'm not sure how should we manage this in the
> future. The rebase only happens on `in development` branches.

Yes, I see thats sort of problematic.
I try to keep the srcrevs uptodate but this may not work all the time
especially with release branches. One option to have is to use AUTOREV
but I do not like that option
as much either but it would be good to have a dev kernel in layer too
so we know any issues impacting us
early on and new features which depend on latest kernels e.g. vcgraphics
I am fine to carry it locally, or may be we can have a bleeding branch
to have these sort of stuff


>
>> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.8.y \
>> +           file://0001-fix-dtbo-rules.patch \
>> +           file://0001-media-bcm2835-camera-fix-compilation-warning-werror.patch \
>> +"
>> +require linux-raspberrypi.inc
>> --
>> 2.10.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan

