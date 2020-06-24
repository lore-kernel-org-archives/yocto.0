Received: from mail-yb1-f195.google.com (mail-yb1-f195.google.com [209.85.219.195])
 by mx.groups.io with SMTP id smtpd.web12.7651.1592977749975382901
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 22:49:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Jh8jKMu7;
 spf=pass (domain: linaro.org, ip: 209.85.219.195, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f195.google.com with SMTP id k18so430900ybm.13
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jun 2020 22:49:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=XB+Ztrs6GXFyqwkigh1PYEXMXqLEAtjgQtnxDfJFOw4=;
        b=Jh8jKMu7eJBMFNjKF2fbc7JNcgnBSlGdf8F3Gtr1Cu2WElJydjZa5Ohs9l6S1+jRqL
         heZ84+M7m9YiKPxONmI0TU3kfXtqhayPesrgN7ISTnid/UggJ+1XqRr3nuwoz/iOgC3K
         zZN2JjIlcXDd7bolWuS9AkkLOM6XHSdCWQA4IIxcDPEn0qpn4a2uYyb6Sk/ulgFgWV+i
         NBU3np/v/Hb+EL4hLTw9kDOKMeHH10qWHwDeOCi5QJTqcUur9y4iTj2RjXfAR4V8VaKT
         JDhD+q1zK7rWwOokNU3VYoNuVFnE725xPz8HRQHvpyQPC8ae43crHR/hY9N6rVwgPBlo
         vFMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=XB+Ztrs6GXFyqwkigh1PYEXMXqLEAtjgQtnxDfJFOw4=;
        b=EVzLlGLXLEEsEUxRwvLePHPJeYHWWnZ7cBfau3inYIcl2DfX9kci+Q1UEKqfgPg3gH
         c+ICmPMbnBY/boJpBIwoplLrTsbYxNuuh8168WQTSko2kdZIZk3Ken6iSHW+Ship6Lc3
         DAP4fKuibDpwyfCdeYPd7z6DR5qPMzLLawQYKiLksqPJTRaq2IEvvH9S0JkJNNxVLvw3
         mrAm7HC9Tjxvpa6ILoY6tbASPnkXYomkfeo49YlnPf+aWrcqiXKToG0ZJV2wg4O648J7
         f7+TxU0YUWtFDd9rplMGUp0v/RmqfBQpQAPvYLAYfgImzc+AKa5eRKVd0+1LCeNNes1g
         q2TA==
X-Gm-Message-State: AOAM533ubFWQZg8Z5v4HI0kGSNSNDl6Biz5Jeb7spIef0rPWbN8YmX9S
	To+K8z6F1Ol+vzLzQDhqI27bE7wf8du9UOo2LfiPqw==
X-Google-Smtp-Source: ABdhPJwlBe9gHAlmfc6JlS4iPl/npX7A3reFRaeAR9USa3tq1ZeQkYXbIlF4+H+GO1N05esK6ulRLm0x2rMA5d3qmYg=
X-Received: by 2002:a25:84cc:: with SMTP id x12mr39322018ybm.454.1592977749022;
 Tue, 23 Jun 2020 22:49:09 -0700 (PDT)
MIME-Version: 1.0
References: <DB6P192MB0214395F93E78A3751ABF4EFC3950@DB6P192MB0214.EURP192.PROD.OUTLOOK.COM>
In-Reply-To: <DB6P192MB0214395F93E78A3751ABF4EFC3950@DB6P192MB0214.EURP192.PROD.OUTLOOK.COM>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 24 Jun 2020 07:48:57 +0200
Message-ID: <CAP71WjyTZVWTJmd_CazWnyNpEYkTGhwCJubU=CSfq6PwApqYkg@mail.gmail.com>
Subject: Re: [yocto] Nested images, a.k.a. two-stage booting
To: Peter Budny <pbudny@witekio.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2020 at 3:12 AM Peter Budny <pbudny@witekio.com> wrote:
>
> Hello all,
>
> I have an unusual and uncommon situation, and could use some help to get=
 Yocto to do what I need.
>
> I'm working on a legacy system which is being ported to use Yocto and Li=
nux. The hardware architecture is complex, but the main detail to know is t=
hat the processor I'm running on boots entirely from RAM. A co-processor pu=
ts a FIT image into shared memory, which this processor uses to boot Linux =
and then decompress the initramfs, which is not an "initial" ramdisk but is=
 actually the only rootfs it uses. Unfortunately, RAM is quite limited, and=
 the image has become large enough that Linux runs out of space decompressi=
ng it.
>
> The problem is that to decompress the rootfs, there has to be enough RAM=
 for the compressed image, and the decompressed image, and working space fo=
r the decompressor. However, I figured out a workaround: I can have a minim=
al initramfs that contains just enough to boot plus the desired compressed =
rootfs. This way it only needs ~12MB free to decompress the outer rootfs. O=
nce the kernel is done booting and has freed some memory used during boot, =
there's enough free memory that it can decompress the inner rootfs and pivo=
t_root. It sounds a little crazy, but it does work.
>
> This is easy enough to do manually:
> * Create the inner rootfs as a .cpio.xz (or whatever)
> * Create the outer rootfs, which is similar to core-image-minimal-initra=
mfs.
> * To the outer rootfs, manually add inner_rootfs.cpio.xz and a script to=
 decompress it and pivot_root.
>
> I can do that the evil way (by modifying the outer rootfs inside the bui=
ld/tmp/work/ directory, which I know will confuse sstate) or in a nicer but=
 still manual way (with a script run afterwards to decompress the outer roo=
tfs, add the files, and recompress it... however, putting a bootable image =
back together involves several extra steps on this baroque system, more tha=
n just building a CPIO and FIT image).
>
> The ideal way would be to put this into a recipe or class, and that's wh=
ere I'm stuck. There doesn't seem to be a way to do it with just an image r=
ecipe; you can't simply RDEPEND on it, nor do image recipes generate packag=
e output that could be "installed" in another recipe. I was hoping that IMA=
GE_FSTYPES=3D"live" might get me close, but alas that depends on Syslinux a=
nd is only for x86.
>
> Has anyone seen something like this two-stage boot or nested images befo=
re? I searched around but couldn't find anything useful to my situation.

in the outer rootfs image recipe, you can create a task which creates
your custom 'bundle' (e.g. do_custom_image), and set:

do_custom_image[depends] +=3D "inner-recipe:do_image_complete"

It will ensure that your inner rootfs will exist in DEPLOY_DIR_IMAGE
before you run your outer custom bundle task, and at that point you
have both the inner and outer images available , and you can process
them as needed.

Something similar is used in the kernel.bbclass, see:
d.appendVarFlag('do_bundle_initramfs', 'depends', '
${INITRAMFS_IMAGE}:do_image_complete')

>
> Assuming a class is the best way to do this, any suggestions on how to i=
mplement this? I'm pretty competent with ordinary recipes, but the code for=
 generating images is a lot more opaque, and I'm having a hard time figurin=
g out what will be required. (For instance, it's not even clear to me wheth=
er inner image should depend on outer image, or outer image should depend o=
n inner image.)
