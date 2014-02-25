Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 455BAE008F2
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:54:50 -0800 (PST)
Received: by mail-qc0-f171.google.com with SMTP id x3so832841qcv.2
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:54:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xAhhUkzL9PbdX09CaRk9Lx/+5q0X828QOYbnwr13R88=;
	b=P9o5gMzPCk93mDvLq5G2QIvtQkZBd3jnyx/S3EISMO0oiq+yELqcXS9C4R9zM15omM
	lFD6njdED9pfcJWmlCHLh+YJbqI5JKXR15wUspLvuQHlhlIPH83FDB+V+ndtoN8/bZqU
	a35ItL5qDr+fBuH5dt8OkA0NP/OHFdAjqkgtndhRsfZB11sP7P2DezrNRpqgPPmZcaTF
	Rt1VgMiw7Xf7hoV+5KSQbk2orNq88Brng/hj/CC2zPtd+WX8CFqXOhga3tbfdhdXKj42
	55iS/7iJNB3lJcvwDhCt8GWoamuVy+IqG9z1G7ziydluN9/xwH5+3kiy51QZBaWqYsb2
	AD8Q==
X-Gm-Message-State: ALoCoQkp1qploE8OHc57UfsN1+DFpjL93mSJm3CocoKLcfSa2R8DtCzgSqO/4O4ljSZ4m3LQTZJU
X-Received: by 10.140.98.203 with SMTP id o69mr1200337qge.102.1393347290175;
	Tue, 25 Feb 2014 08:54:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Tue, 25 Feb 2014 08:54:30 -0800 (PST)
In-Reply-To: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
References: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 25 Feb 2014 16:54:30 +0000
Message-ID: <CAJTo0Lb4-cT1ZoLh3pRKCVj=0Pj=S7sja_OcubxzRgS14KjVYw@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/2] mesa: Replace ugly fix for gles/egl
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
X-List-Received-Date: Tue, 25 Feb 2014 16:54:53 -0000
Content-Type: text/plain; charset=UTF-8

That's better! :)

Ross

On 25 February 2014 16:51, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Use instead, the special created recipe mesa-gl which provides on libgl.
>
> Change-Id: I5ed3c50a0a794f8ea63cc1906f0139ec47459fa6
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-providers.inc |  2 ++
>  recipes-graphics/mesa/mesa_9.2.5.bbappend      | 36 --------------------------
>  2 files changed, 2 insertions(+), 36 deletions(-)
>  delete mode 100644 recipes-graphics/mesa/mesa_9.2.5.bbappend
>
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index 3c5b294..ee3a3ac 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -5,4 +5,6 @@ PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
>  PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
>  PREFERRED_PROVIDER_virtual/egl ?= "userland"
>  PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
> +PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
> +PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
>  PREFERRED_PROVIDER_jpeg = "jpeg"
> diff --git a/recipes-graphics/mesa/mesa_9.2.5.bbappend b/recipes-graphics/mesa/mesa_9.2.5.bbappend
> deleted file mode 100644
> index 34da98f..0000000
> --- a/recipes-graphics/mesa/mesa_9.2.5.bbappend
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -PRINC := "${@int(PRINC) + 2}"
> -
> -#
> -# FIXME
> -# We need a way to disable EGL and GL ES2, these are provided by userland package
> -#
> -python __anonymous () {
> -    import re
> -
> -    machine = d.getVar('MACHINE', True)
> -    if machine == 'raspberrypi':
> -        # Remove egl and gles2 configure options
> -        extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> -        take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
> -        put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
> -        pattern = re.compile("--with-egl-platforms")
> -        new_extra_oeconf = []
> -        for i in extra_oeconf:
> -            if i not in take_out and not pattern.match(i):
> -                new_extra_oeconf.append(i)
> -        for i in put_in:
> -            new_extra_oeconf.append(i)
> -        d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> -
> -        # Remove egl and gles2 from provides
> -        provides = d.getVar('PROVIDES', True).split()
> -        take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
> -        new_provides = []
> -        for i in provides:
> -            if i not in take_out:
> -                new_provides.append(i)
> -        d.setVar('PROVIDES', ' '.join(new_provides))
> -
> -        # We are now machine specific
> -        d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
> -}
> --
> 1.8.1.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

