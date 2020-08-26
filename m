Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com [209.85.218.66])
 by mx.groups.io with SMTP id smtpd.web10.11503.1598446028898258790
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 05:47:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eI91wct1;
 spf=pass (domain: gmail.com, ip: 209.85.218.66, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f66.google.com with SMTP id d11so2610058ejt.13
        for <yocto@lists.yoctoproject.org>; Wed, 26 Aug 2020 05:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nphnLqMZBpDhZFZDfbUWNRKOqDgQiFb+uizI2DJH1xk=;
        b=eI91wct1zdk3e7bOtZMuNqujw99FakkMjNVtmNa7+Y9N7wU38CUCFY52pLF2WCUHdX
         VJPQ05qS9+gqmKsRVyWvLNf7ZpXYrH6Ii04FUyS9GmanuxedQz/2aJLBzMeH1DjvfAeM
         polbxDyC58aZYmqV+cc+enf+Xbw+S8yXTBvnBLU80Pur4GQ3DwFOV4rmraYK9Q4pfRWp
         HMk/WBuAFqUKiHaDnnEsTlwOYq5utR8+XztEFpSTrw4TCcoY1gwGqgZ7L4Tq9g+DUx5P
         pqtXAejNuSuPT1kN4AOVdRKo3K1bMBtpwh98iRCNahHhNd+2xuOzWnXzUalMXGSs+cbK
         ppEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nphnLqMZBpDhZFZDfbUWNRKOqDgQiFb+uizI2DJH1xk=;
        b=V0k+NlCrM5PY9Svvuq4Zcbh/rrsEwgh5xkXIpcTPFqGIHISgm7ZbsQWZLt3ylGQ6sv
         7XVnyiMsgZ2xWqosAVPpgMug3Sfl3Jw7z781efCq8XYl8nVx17uz1XjLeOqRw6ykBpuP
         kvE6uxS8NlNwvKM245yjFxKjF92lP6YYbBwWBymoTO5hJYRMfarh98RYlpM0g/UjGf6q
         UZVRwp1zKP2gluq/xe/XHfVlg72HB5hDw6AmXIyHVy/GpDoynI07kY7QBayctHlP918K
         iEGQ/bliscIDeJLk/vdIVyKmEWU61HoRNn+e0pJMNmnrYL7v3z5nMWsQO/Ks+fHVvAZZ
         VvDw==
X-Gm-Message-State: AOAM532czlKPYjoRwp6RYi95X/e8iKuPOfd9zRRlSIvW0f6GNdGcQ2NB
	gf8eHj+wJJ0vPR1P0hOtc2zl4GgIHTJ/Lv4YDpA=
X-Google-Smtp-Source: ABdhPJy3KIrNSayh21MFxtTj/PzHi8AuqnkbRF2PP/k3OCF4T3FyKZj510+BH5npY+t8Qvgl1QHc/9N/lUPgdNQ0TyM=
X-Received: by 2002:a17:906:1b:: with SMTP id 27mr15362732eja.517.1598446027121;
 Wed, 26 Aug 2020 05:47:07 -0700 (PDT)
MIME-Version: 1.0
References: <20200826061330.30586-1-kexin.hao@windriver.com>
In-Reply-To: <20200826061330.30586-1-kexin.hao@windriver.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 26 Aug 2020 08:44:59 -0400
Message-ID: <CADkTA4NSuRDHodH=gOJCs_PHficwOgiVUEg+nLAAJLqqVwTCVw@mail.gmail.com>
Subject: Re: [yocto] [PATCH] meta-yocto-bsp: Bump to the v5.8 kernel
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Yocto Project <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 26, 2020 at 2:22 AM Kevin Hao <kexin.hao@windriver.com> wrote:
>
> Boot test for all the supported boards. There is a kernel config
> check warning for beaglebone-yocto, the fix [1] has been sent to
> kernel-meta for merging.
>
> [1] https://lists.yoctoproject.org/g/linux-yocto/message/8992
>

Thanks Kevin! Most appreciated.

I'll have that meta data change merged today.

Cheers,

Bruce

> Signed-off-by: Kevin Hao <kexin.hao@windriver.com>
> ---
>  .../conf/machine/beaglebone-yocto.conf        |  2 +-
>  meta-yocto-bsp/conf/machine/edgerouter.conf   |  2 +-
>  .../linux/linux-yocto_5.8.bbappend            | 23 +++++++++++++++++++
>  3 files changed, 25 insertions(+), 2 deletions(-)
>  create mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
>
> diff --git a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> index 5b481434bd89..b7defb0d0170 100644
> --- a/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> +++ b/meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> @@ -24,7 +24,7 @@ SERIAL_CONSOLES ?= "115200;ttyS0 115200;ttyO0 115200;ttyAMA0"
>  SERIAL_CONSOLES_CHECK = "${SERIAL_CONSOLES}"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.4%"
> +PREFERRED_VERSION_linux-yocto ?= "5.8%"
>
>  KERNEL_IMAGETYPE = "zImage"
>  KERNEL_DEVICETREE = "am335x-bone.dtb am335x-boneblack.dtb am335x-bonegreen.dtb"
> diff --git a/meta-yocto-bsp/conf/machine/edgerouter.conf b/meta-yocto-bsp/conf/machine/edgerouter.conf
> index d6fd934fa583..75bc5e5f28e7 100644
> --- a/meta-yocto-bsp/conf/machine/edgerouter.conf
> +++ b/meta-yocto-bsp/conf/machine/edgerouter.conf
> @@ -11,7 +11,7 @@ KERNEL_ALT_IMAGETYPE = "vmlinux.bin"
>  KERNEL_IMAGE_STRIP_EXTRA_SECTIONS  = ".comment"
>
>  PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
> -PREFERRED_VERSION_linux-yocto ?= "5.4%"
> +PREFERRED_VERSION_linux-yocto ?= "5.8%"
>
>  SERIAL_CONSOLES = "115200;ttyS0"
>  USE_VT ?= "0"
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
> new file mode 100644
> index 000000000000..5d844423afce
> --- /dev/null
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.8.bbappend
> @@ -0,0 +1,23 @@
> +KBRANCH_genericx86  = "v5.8/standard/base"
> +KBRANCH_genericx86-64  = "v5.8/standard/base"
> +KBRANCH_edgerouter = "v5.8/standard/edgerouter"
> +KBRANCH_beaglebone-yocto = "v5.8/standard/beaglebone"
> +
> +KMACHINE_genericx86 ?= "common-pc"
> +KMACHINE_genericx86-64 ?= "common-pc-64"
> +KMACHINE_beaglebone-yocto ?= "beaglebone"
> +
> +SRCREV_machine_genericx86 ?= "912adf166eb0688e011154048f5fa0e5863249c3"
> +SRCREV_machine_genericx86-64 ?= "912adf166eb0688e011154048f5fa0e5863249c3"
> +SRCREV_machine_edgerouter ?= "912adf166eb0688e011154048f5fa0e5863249c3"
> +SRCREV_machine_beaglebone-yocto ?= "912adf166eb0688e011154048f5fa0e5863249c3"
> +
> +COMPATIBLE_MACHINE_genericx86 = "genericx86"
> +COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> +COMPATIBLE_MACHINE_edgerouter = "edgerouter"
> +COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
> +
> +LINUX_VERSION_genericx86 = "5.8.2"
> +LINUX_VERSION_genericx86-64 = "5.8.2"
> +LINUX_VERSION_edgerouter = "5.8.2"
> +LINUX_VERSION_beaglebone-yocto = "5.8.2"
> --
> 2.26.2
>
> 



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
