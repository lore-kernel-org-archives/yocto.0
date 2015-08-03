Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FF6AE00A01; Mon,  3 Aug 2015 13:14:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f171.google.com (mail-pd0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35AEBE00902
	for <yocto@yoctoproject.org>; Mon,  3 Aug 2015 13:14:30 -0700 (PDT)
Received: by pdbbo16 with SMTP id bo16so20468269pdb.1
	for <yocto@yoctoproject.org>; Mon, 03 Aug 2015 13:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=NxaDgnCcIiVjDGZ8ENo/nqh04KliKfcG1tblHEVCQOw=;
	b=NcwXdFnZkWVXtGbGfpie0hn1e9ZgaKBtnye8Cfm0UcaPhjqghyXqZHCYn689YF6xhC
	7eSSjSgPxArRcDLToqWJOp9dZWe0JT/BrcEnUmTKmpeCfShI0G2Va5qO3vYAjdUG4yRf
	QH3nMcejo/3On7XlVmla9JElkTaXKbaVl9OGfYG2W7MU0PhakRwmH+7DrOTEpMlWqGje
	lvpNEVjkSE+6YMXo4NRoLgFeF9cPoBSFWPnFYPourm+N2jP6vOctXp7zMnqj0utkeDvV
	Ls43fyMYQ1kZBmiMcWRMCb1fS28sAqDnLUWFRPTgd32W2v7j0QvMpqfxOZPFK5cJ6ARC
	TUbA==
MIME-Version: 1.0
X-Received: by 10.70.89.199 with SMTP id bq7mr38240486pdb.168.1438632869180;
	Mon, 03 Aug 2015 13:14:29 -0700 (PDT)
Received: by 10.70.65.4 with HTTP; Mon, 3 Aug 2015 13:14:29 -0700 (PDT)
In-Reply-To: <1438245251-20437-6-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
Date: Mon, 3 Aug 2015 22:14:29 +0200
Message-ID: <CALbNGRSs3KQj4RYopow=+kwJXE-46yU-t5o-FWSbR0wqBoqESw@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Mon, 03 Aug 2015 20:14:37 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jul 30, 2015 at 10:34 AM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> From: Derek Foreman <derekf@osg.samsung.com>
>
> The Raspberry Pi boards can use one of two graphics stacks: The "userland"
> user-space driver or the VC4 drm/kms kernel driver. This patch allows the
> user to choose if the VC4 driver has to be used instead and set the right
> preferred providers for that case.
>
> Signed-off-by: Derek Foreman <derekf@osg.samsung.com>
> [javier: Extend commit msg and made conditional instead removing userland]
> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com>
>
> ---
>
>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>  conf/machine/include/rpi-default-versions.inc  | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index ee3a3acce7bd..233f177bd16e 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -3,8 +3,8 @@
>  PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
>  PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
> -PREFERRED_PROVIDER_virtual/egl ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
> -PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
> -PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
> +PREFERRED_PROVIDER_virtual/egl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
> +PREFERRED_PROVIDER_virtual/libgles2 ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'userland', d)}"
> +PREFERRED_PROVIDER_virtual/libgl ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
> +PREFERRED_PROVIDER_virtual/mesa ?= "${@bb.utils.contains('DISTRO_FEATURES', 'vc4-gfx', 'mesa', 'mesa-gl', d)}"
>  PREFERRED_PROVIDER_jpeg = "jpeg"
> diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
> index bcf78281b6ff..c07ecac5924b 100644
> --- a/conf/machine/include/rpi-default-versions.inc
> +++ b/conf/machine/include/rpi-default-versions.inc
> @@ -1,3 +1,3 @@
>  # RaspberryPi BSP default versions
>
> -PREFERRED_VERSION_linux-raspberrypi ?= "3.18.%"
> +PREFERRED_VERSION_linux-raspberrypi ?= "${@bb.utils.contains("DISTRO_FEATURES", "vc4-gfx", "4.1.%", "3.18.%", d)}"
> --
> 2.4.3
>
> --
This patch series is an exciting starter but I think it is incomplete:
Without further configuration mesa simply builds swrast which is not
what we want. We need some '--with-gallium-drivers=vc4' right? [1]

Andreas

[1] http://dri.freedesktop.org/wiki/VC4/

