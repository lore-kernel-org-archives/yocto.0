Return-Path: <anthony.t.davies@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4281FE95A8E
	for <webhook@archiver.kernel.org>; Mon,  9 Oct 2023 08:48:18 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web10.57069.1696841297035543394
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Oct 2023 01:48:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F6Q/RdOm;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: anthony.t.davies@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-d81f35511e6so3623609276.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 01:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696841296; x=1697446096; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=g0JGBLlGxuq8nRPPt0S9Oon53MhFGWRP2ApBtK3Za4U=;
        b=F6Q/RdOm9rpBgDO4Zu3MbEeZQYHDFWeQFgbVp/5R2p5UcBhTSdQ2v0xfnt2fVLjour
         fboXuri8HcOaaCKqNPlQji7I99pVwmEHAKLu0QQwoUa1FiZFbbGctcr+1HWFbAJPeKNJ
         cpUajU+kgtVN7bCiGHh2CGOvPD1eNRiIKjwb9XFBtvsgXXIW5A2M4oNW7lrt0TFmyGco
         KZaJv1MoBF/WepSAbncyRxGbzIaxmy8afnT4AWZuZZ0mXMIIlVcy6zV7KbcqsIMq+jyW
         1O/WgRvtHzj9otcDnir2GFLUzpKqULmwudW0gLAoV8jFlyrK16vL4ZHhLMyydc/y4WTJ
         tOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696841296; x=1697446096;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g0JGBLlGxuq8nRPPt0S9Oon53MhFGWRP2ApBtK3Za4U=;
        b=cdBl4uI37c4eWnbYK70KYUisH6Box/1duY8gMzt+JyzvAc+oiblAeyPevDqcX4Y71L
         k0CPnCl6rmQNHoeACkXbTflZgPm1Pxor/+3qjPXEhVGRvOuphWK5Iw3puBXcyUyNH0cl
         QuIN+/D5N7yf25KVyyU4PqgeISs/dRgwMhu6BcLt7EpLMJeJripp+4RAxrCJqYZgh2Du
         RqryUjMAE1wffrYKacjha1yIBSrMkAv/0VSO5MuyvX9bpb/5ouRsNgcP7OsHCL0iNorh
         IAwy3nGYYnWjsBplFsQNldaIAK0WZOvtM27/FFSgmvp8+Ww1SYDxwPF8hOHAfaMpW5yE
         ODpA==
X-Gm-Message-State: AOJu0YwhR9LthYQUH6/evDZBQVCyaTbeGjTW4HFFtC92RCDF5ArVXIeO
	poer/wGWuKkb6aUj1Gp4Ma7pzNdTXxBKxzrbVGw=
X-Google-Smtp-Source: AGHT+IHCcr9Rc2bdw8T3+MvlNxUgvGfwUTf+9m1xGRD6Zi6q3rtV0wJ5ucNveVqr0AyRrO67YMuKAyaZ2+ffq3E9ZaE=
X-Received: by 2002:a25:c713:0:b0:d86:696d:bc0a with SMTP id
 w19-20020a25c713000000b00d86696dbc0amr7011779ybe.29.1696841296026; Mon, 09
 Oct 2023 01:48:16 -0700 (PDT)
MIME-Version: 1.0
References: <20231006232640.1157089-1-anthony.t.davies@gmail.com> <c014248c-b04c-4049-9c7b-992ab23562ce@theobroma-systems.com>
In-Reply-To: <c014248c-b04c-4049-9c7b-992ab23562ce@theobroma-systems.com>
From: Anthony Davies <anthony.t.davies@gmail.com>
Date: Mon, 9 Oct 2023 19:48:04 +1100
Message-ID: <CAL5F+oJ1CxihiHMb88SwWmG_26AmNkMPTNvvEmwdiPx9aqWuyQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] [PATCH v2] rock-3a add
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org, twoerner@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Oct 2023 08:48:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61282

Hi Quentin,

On Mon, 9 Oct 2023 at 19:25, Quentin Schulz
<quentin.schulz@theobroma-systems.com> wrote:
>
> Hi Anthony,
>
> On 10/7/23 01:26, Anthony Davies via lists.yoctoproject.org wrote:
> > From: Anthony Davies <anthony.t.davies@gmail.com>
> >
> > Add support for the Radxa Rock 3A
> > https://wiki.radxa.com/Rock3/3a
> >
> > The TF-A project does not currently have support for
> > the rk3568. Therefore, for the time-being, the only way to supply a
> > TPL/DDR-init for the rk3568 is to use the closed-source rkbin binaries
> > from Rockchip. If/when TF-A adds support for the rk3588 we can investigate
> > switching.
> >
> > recipes-bsp/rkbin/rockchip-rkbin_git.bb was modified to allow a machine
> > override to allow both rk3568 and rk3588s to use differnet binary blobs
> >
> > Signed-off-by: Anthony Davies <anthony.t.davies@gmail.com>
> > ---
> >   README                                  |  1 +
> >   conf/machine/include/rk3568.inc         | 17 +++++++++++++++++
> >   conf/machine/rock-3a.conf               | 12 ++++++++++++
> >   recipes-bsp/rkbin/rockchip-rkbin_git.bb | 16 +++++++++++++++-
> >   recipes-bsp/u-boot/u-boot%.bbappend     |  5 +++++
> >   5 files changed, 50 insertions(+), 1 deletion(-)
> >   create mode 100644 conf/machine/include/rk3568.inc
> >   create mode 100644 conf/machine/rock-3a.conf
> >
> > diff --git a/README b/README
> > index 8104474..3357b47 100644
> > --- a/README
> > +++ b/README
> > @@ -32,6 +32,7 @@ Status of supported boards:
> >               nanopi-r4s
> >               rock-5b
> >               nanopi-r2s
> > +    rock-3a
>
> Please use the same indentation here so it's aligned with the other boards.
>
> It's 2 tabs for the indentation there it seems.

This would be my vim converting my \t to spaces. I will update and resend.

>
> >       builds:
> >               marsboard-rk3066
> >               radxarock
> > diff --git a/conf/machine/include/rk3568.inc b/conf/machine/include/rk3568.inc
> > new file mode 100644
> > index 0000000..5382b58
> > --- /dev/null
> > +++ b/conf/machine/include/rk3568.inc
> > @@ -0,0 +1,17 @@
> > +MACHINEOVERRIDES =. "rk3568:"
> > +DEFAULTTUNE ?= "cortexa55"
> > +
> > +require conf/machine/include/arm/armv8-2a/tune-cortexa55.inc
> > +require conf/machine/include/rockchip-defaults.inc
> > +require conf/machine/include/rockchip-wic.inc
> > +
> > +KBUILD_DEFCONFIG ?= "defconfig"
> > +KERNEL_FEATURES:append:rk3568 = " bsp/rockchip/remove-non-rockchip-arch-arm64.scc"
> > +KERNEL_CLASSES ??= "kernel-fitimage"
> > +KERNEL_IMAGETYPE ??= "fitImage"
> > +
> > +PREFERRED_PROVIDER_trusted-firmware-a = "rockchip-rkbin"
> > +PREFERRED_PROVIDER_optee-os = "rockchip-rkbin"
> > +
> > +UBOOT_SUFFIX ?= "itb"
> > +UBOOT_ENTRYPOINT ?= "0x06000000"
> > diff --git a/conf/machine/rock-3a.conf b/conf/machine/rock-3a.conf
> > new file mode 100644
> > index 0000000..2ed83a3
> > --- /dev/null
> > +++ b/conf/machine/rock-3a.conf
> > @@ -0,0 +1,12 @@
> > +#@TYPE: Machine
> > +#@NAME: Radxa Rock 3a
> > +#@DESCRIPTION: ROCK3 is a series of Rockchip RK3566/RK3568 based
> > +#SBC(Single Board Computer) and Compute Module by Radxa.
> > +#https://wiki.radxa.com/Rock3
> > +
> > +require conf/machine/include/rk3568.inc
> > +
> > +KERNEL_DEVICETREE = "rockchip/rk3568-rock-3a.dtb"
> > +MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"
> > +
> > +UBOOT_MACHINE = "rock-3a-rk3568_defconfig"
> > diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > index 7fefb01..273f394 100644
> > --- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > +++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
> > @@ -14,6 +14,7 @@ S = "${WORKDIR}/git"
> >
> >   COMPATIBLE_MACHINE = ""
> >   COMPATIBLE_MACHINE:rk3588s = "rk3588s"
> > +COMPATIBLE_MACHINE:rk3568 = "rk3568"
> >
> >   PACKAGE_ARCH = "${MACHINE_ARCH}"
> >
> > @@ -25,7 +26,16 @@ do_install() {
> >   PACKAGES = "${PN}"
> >   ALLOW_EMPTY:${PN} = "1"
> >
> > -do_deploy() {
> > +do_deploy:rk3568() {
> > +     # Prebuilt TF-A
> > +     install -m 644 ${S}/bin/rk35/rk3568_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3568.elf
> > +     # Prebuilt OPTEE-OS
> > +     install -m 644 ${S}/bin/rk35/rk3568_bl32_v*.bin ${DEPLOYDIR}/tee-rk3568.bin
> > +     # Prebuilt U-Boot TPL (DDR init)
> > +     install -m 644 ${S}/bin/rk35/rk3568_ddr_1560MHz_v1.18.bin ${DEPLOYDIR}/ddr-rk3568.bin
> > +}
> > +
> > +do_deploy:rk3588s() {
> >       # Prebuilt TF-A
> >       install -m 644 ${S}/bin/rk35/rk3588_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3588.elf
> >       # Prebuilt OPTEE-OS
> > @@ -34,4 +44,8 @@ do_deploy() {
> >       install -m 644 ${S}/bin/rk35/rk3588_ddr_lp4_2112MHz_lp5_2736MHz_v*.bin ${DEPLOYDIR}/ddr-rk3588.bin
> >   }
> >
> > +do_deploy() {
> > +# Needed as a default perhaps a bb.fatal with a message saying an override needs to be set
> > +}
> > +
>
> Well, we could, but also... the recipe won't be used until you add to
> COMPATIBLE_MACHINE, which means the recipe should have been working by
> the time you add it. Not entirely sure how much we want to prevent users
> to shoot their own foot honestly. But I guess it's such a small change
> that adding it is probably better than just arguing whether we need it
> or not, so maybe send another patch to add the bb.fatal :) ?

If I am updating the other I will just add this to the existing patch.
I was tempted to add the obligatory "Don't know how I got here" but
didnt seem very useful and I had similar thoughts to you around if a
bb.fatal was actually required.

>
> Cheers,
> Quentin

