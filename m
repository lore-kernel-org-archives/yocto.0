Received: from mail-yb1-f194.google.com (mail-yb1-f194.google.com [209.85.219.194])
 by mx.groups.io with SMTP id smtpd.web12.8246.1592981517482356792
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Jun 2020 23:51:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=nsH/sHyh;
 spf=pass (domain: linaro.org, ip: 209.85.219.194, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-yb1-f194.google.com with SMTP id j202so515737ybg.6
        for <yocto@lists.yoctoproject.org>; Tue, 23 Jun 2020 23:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=5am8SOqFWnye2y//j/lU5rqQQRR3a2A/WOHUMEI3wyA=;
        b=nsH/sHyhEIcXAEv4DTAJBe84ibiEfggAI1ImLlLvf/B2niCVmHXfNag1gFCaQkMqsP
         ijMwOa6SH03gY4TDGx9lvAEfx+P4BnvgaQ4wymI1sw/KKVjohQYgpZVBZXmP65oQxTj6
         ajHPsih1JW6OQlVWi0Xddl/5GaP/TuBpYegWaoKcCGqqfUgE9yPkYiZY9Z7S7wnDluQj
         Bjg4tUc2iHLIr2p0//KDHhuz+brykra7gFscNXznovZIcbphQ6a2YVqRVZPBaDeGRjfW
         BPdT+yHcMqGdH+2qbQYJ8jVPYIjQTOtDk8Ixue1i7E5ojMW4y7dY5Blgq6H69Re0fU5C
         vXag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=5am8SOqFWnye2y//j/lU5rqQQRR3a2A/WOHUMEI3wyA=;
        b=R/yHqtAiVEELjyHytlzkLQRW2kJhyN0AJpQ605ShE0tOPO6RzzNuKkccTBK27QVQhj
         6rqtFXRGqqT8RkwhKIfhp9WOKq2v1lHpQ1HgmsT3Gbllj9dC7Yr5g8O1fVvQWcAlbFoR
         YjxxiGT0+qbD1iq8OhrZkfbU5yJ70zpxDOuExE4DBPFPLmE0a8gt/I0HeiLFiHLhDADx
         jecKn7uupP7f2qZ2rHhv7il0Z3lBRuwfa/5qbbIb8/joMpr7DmfPRrb3vqnODavQ5Jd3
         Ns5yZnNielxMd1FvfGtzECvmEx/FlI8bkLVDypolSAsPAykJ1Tn9LbesJfYukeEdP8v3
         6M0w==
X-Gm-Message-State: AOAM531pD158FotSGyqAerFGvT+0U5fvcF2vCoKjUDZPT2XQbMUOThhl
	XFOF+hRjQoXVlq5kko1PJxiP215Ypt7kvIAl5KZC6yoP9e+Mfg==
X-Google-Smtp-Source: ABdhPJygFyw/4LHjVvHWv2tumRAosi5C2XecyYj3vDM+/4/Cgyc4TRHkvcp97iqpgmKCabZPCZIm5BHKnpH/Q1O3WGU=
X-Received: by 2002:a25:b8b:: with SMTP id 133mr43529799ybl.373.1592981516361;
 Tue, 23 Jun 2020 23:51:56 -0700 (PDT)
MIME-Version: 1.0
References: <DB6P192MB0214395F93E78A3751ABF4EFC3950@DB6P192MB0214.EURP192.PROD.OUTLOOK.COM>
 <CAP71WjyTZVWTJmd_CazWnyNpEYkTGhwCJubU=CSfq6PwApqYkg@mail.gmail.com> <ab193574-d16c-c135-7f98-11b62bf647b8@rsi-elektrotechnik.de>
In-Reply-To: <ab193574-d16c-c135-7f98-11b62bf647b8@rsi-elektrotechnik.de>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 24 Jun 2020 08:51:45 +0200
Message-ID: <CAP71WjxKZD2s97UVxQyAcdCO8pmSLXrQhL4LMBR3BzZE+Ch34A@mail.gmail.com>
Subject: Re: [yocto] Nested images, a.k.a. two-stage booting
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 24, 2020 at 8:42 AM Josef Holzmayr
<holzmayr@rsi-elektrotechnik.de> wrote:
>
> Howdy!
>
> Am 24.06.2020 um 07:48 schrieb Nicolas Dechesne:
> > On Wed, Jun 24, 2020 at 3:12 AM Peter Budny <pbudny@witekio.com> wrote=
:
> >>
> >> Hello all,
> >>
> >> I have an unusual and uncommon situation, and could use some help to =
get Yocto to do what I need.
> >>
> >> I'm working on a legacy system which is being ported to use Yocto and=
 Linux. The hardware architecture is complex, but the main detail to know i=
s that the processor I'm running on boots entirely from RAM. A co-processor=
 puts a FIT image into shared memory, which this processor uses to boot Lin=
ux and then decompress the initramfs, which is not an "initial" ramdisk but=
 is actually the only rootfs it uses. Unfortunately, RAM is quite limited, =
and the image has become large enough that Linux runs out of space decompre=
ssing it.
> >>
> >> The problem is that to decompress the rootfs, there has to be enough =
RAM for the compressed image, and the decompressed image, and working space=
 for the decompressor. However, I figured out a workaround: I can have a mi=
nimal initramfs that contains just enough to boot plus the desired compress=
ed rootfs. This way it only needs ~12MB free to decompress the outer rootfs=
. Once the kernel is done booting and has freed some memory used during boo=
t, there's enough free memory that it can decompress the inner rootfs and p=
ivot_root. It sounds a little crazy, but it does work.
> >>
> >> This is easy enough to do manually:
> >> * Create the inner rootfs as a .cpio.xz (or whatever)
> >> * Create the outer rootfs, which is similar to core-image-minimal-ini=
tramfs.
> >> * To the outer rootfs, manually add inner_rootfs.cpio.xz and a script=
 to decompress it and pivot_root.
> >>
> >> I can do that the evil way (by modifying the outer rootfs inside the =
build/tmp/work/ directory, which I know will confuse sstate) or in a nicer =
but still manual way (with a script run afterwards to decompress the outer =
rootfs, add the files, and recompress it... however, putting a bootable ima=
ge back together involves several extra steps on this baroque system, more =
than just building a CPIO and FIT image).
> >>
> >> The ideal way would be to put this into a recipe or class, and that's=
 where I'm stuck. There doesn't seem to be a way to do it with just an imag=
e recipe; you can't simply RDEPEND on it, nor do image recipes generate pac=
kage output that could be "installed" in another recipe. I was hoping that =
IMAGE_FSTYPES=3D"live" might get me close, but alas that depends on Syslinu=
x and is only for x86.
> >>
> >> Has anyone seen something like this two-stage boot or nested images b=
efore? I searched around but couldn't find anything useful to my situation.
> >
> > in the outer rootfs image recipe, you can create a task which creates
> > your custom 'bundle' (e.g. do_custom_image), and set:
> >
> > do_custom_image[depends] +=3D "inner-recipe:do_image_complete"
> >
> > It will ensure that your inner rootfs will exist in DEPLOY_DIR_IMAGE
> > before you run your outer custom bundle task, and at that point you
> > have both the inner and outer images available , and you can process
> > them as needed.
> >
> > Something similar is used in the kernel.bbclass, see:
> > d.appendVarFlag('do_bundle_initramfs', 'depends', '
> > ${INITRAMFS_IMAGE}:do_image_complete')
>
> Yet that actually only holds true if both images share DISTRO, MACHINE
> and local.conf.

which I assumed was the case here, given the description. But you're right=
.

>
> Generally I would rather advise to look into multiconfig builds.

Disclaimer: I am not familiar with multiconfig... I believe in this
use case the outer image need to be 'processed' e.g.:

=3D=3D * To the outer rootfs, manually add inner_rootfs.cpio.xz and a
script to decompress it and pivot_root.

Would you be able to do that with multiconfig?

>
> Greetz!
>
> >
> >>
> >> Assuming a class is the best way to do this, any suggestions on how t=
o implement this? I'm pretty competent with ordinary recipes, but the code =
for generating images is a lot more opaque, and I'm having a hard time figu=
ring out what will be required. (For instance, it's not even clear to me wh=
ether inner image should depend on outer image, or outer image should depen=
d on inner image.)
> >>
> >>
>
> --
> _____________________________________________________________
> R-S-I Elektrotechnik GmbH & Co. KG
> Woelkestrasse 11
> D-85301 Schweitenkirchen
> Fon: +49 8444 9204-0
> Fax: +49 8444 9204-50
> www.rsi-elektrotechnik.de
>
> _____________________________________________________________
> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
> USt-IdNr.: DE 128592548
>
>=20
