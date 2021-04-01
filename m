Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web09.5256.1617268679223806535
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Apr 2021 02:17:59 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=qBW+e1xB;
 spf=pass (domain: blade-group.com, ip: 209.85.222.46, mailfrom: yann.dirson@blade-group.com)
Received: by mail-ua1-f46.google.com with SMTP id u11so317816uaw.2
        for <yocto@lists.yoctoproject.org>; Thu, 01 Apr 2021 02:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Say7G2RNtA5LhUNgfbnVAOaR5aB8EpnMaNf7kKeSKdo=;
        b=qBW+e1xBjvFM9l6Zs3ujNMKNPWkwYOouFam5RHvIj293gPyQbVxy+SkO6yqf93Ensb
         GOlOjkfGJOQmT5teBhfh8H1539ZXoPEXo3bRatud0iK8lGgmV/PB2FsxMX1XXLyVlhMj
         jriwI9+klm6V6u4soZZXQbWlcjuk2PuTi/MaYK1EXrao7vubwhG158ki+ByjZo7+YSpm
         A4DKWWGwtKXfjpornGZLgWpfQ7FvgdRAXZn5hMKYo/gB6f3Zk4mWVxRL9fEEmen+EU9P
         sB8WRo3Q/Tw4AbPqCV/VmlA718JU4rj3a0WQxVGkevibmeWyQbZstVI4Lsj6AW9AlI/K
         LsLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Say7G2RNtA5LhUNgfbnVAOaR5aB8EpnMaNf7kKeSKdo=;
        b=g13bz2Od6tGT6r3AXdV53b2Yq0+KpXcGQnJUuPfvUfSB/rJt5P9MOI0tghWuu5Bf0A
         xoJa+6CQM4UQ5MDcBcnk5xyUsbPBMhvn15aCNK+s7SXfWKDRWdu674zs3fN5e2YtBUMg
         SaUaE+30MlaxvTj5QCMq+lM582TumU8bwnov6U2hl33oD3aSCCQ1c1bfwYR9v4qKf9Hy
         Vsxv45ZlvOwDwAZB+KKyeJ6yhFIActaPff45T1dvBYAqUy08t3SewNf5LWVU/o/k72kG
         uBgRxthdOISmClEi2NRcy3HQ4G0npyc7wHlDvWfCJD0A9QOMXGsVQ4F6sX/Ogo4IAvgc
         U+6w==
X-Gm-Message-State: AOAM532L811hy/9uiltJYOASg/fcrDkyip5U3IKQOBn5tvY0Q7rxiV4o
	lCTsZ6STJ8fl8apS8e13Lqi8egGmVJoMJkaGrXzKqw==
X-Google-Smtp-Source: ABdhPJykvBmDiSXoLPY3oxpqngOkvLAYrIhpuKv0k/GzXyAwG5NJ8Ra/7/VuVJ88CAO4mOKRfFAR4u5LZgdWIcafcJw=
X-Received: by 2002:a9f:2341:: with SMTP id 59mr3894954uae.30.1617268678256;
 Thu, 01 Apr 2021 02:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org> <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
 <20210322155021.GA23379@localhost> <CA+4=imbGcUVwsz3kF411s1OeSRL=vrWt=Cpsb-3ud+P-86nkTw@mail.gmail.com>
 <20210324004055.GA26846@localhost> <166FA50C98CCB357.21604@lists.yoctoproject.org>
In-Reply-To: <166FA50C98CCB357.21604@lists.yoctoproject.org>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Thu, 1 Apr 2021 11:17:47 +0200
Message-ID: <CA+4=imZcRBKNA8gkNX+gxzXyPdK_is-mb6-1MM-mtmK9OvfDmQ@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] defconfig alternatives
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org, Bruce Ashfield <bruce.ashfield@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

My thoughts on this after working on this for the nanopi-m4 have
changed a bit: it looks
like the existing kmeta system already provides us with everything we need=
:

- the kmeta BSP mechanism already provides the way to declare all the plat=
form
features in "hardware features"
- a minimal kernel can then be obtained with KCONFIG_MODE=3D"--allnoconfig=
"
and KBUILD_DEFCONFIG=3D"", with some support from
PREFERRED_PROVIDER_virtual/kernel=3D"linux-yocto-tiny"

Above this, downstream layers can easily add the additional features they =
need,
by appending kmeta features as needed, or their own .cfg snippets if no ex=
isting
feature matches.

Did i overlook some use-case that would not be covered ?


Le jeu. 25 mars 2021 =C3=A0 18:11, Yann Dirson via lists.yoctoproject.org
<yann.dirson=3Dblade-group.com@lists.yoctoproject.org> a =C3=A9crit :
>
>  =3D "Hi Trevor,
>
> Le mer. 24 mars 2021 =C3=A0 01:41, Trevor Woerner <twoerner@gmail.com> a=
 =C3=A9crit :
> >
> > On Tue 2021-03-23 @ 12:59:24 PM, Yann Dirson wrote:
> > > Hi Trevor,
> > >
> > > Le lun. 22 mars 2021 =C3=A0 16:50, Trevor Woerner <twoerner@gmail.co=
m> a =C3=A9crit :
> > > > > BTW, I'm also unclear on what to do next to better support those
> > > > > boards: with the default
> > > > > kernel config only a subset of the hardware is supported, and fo=
r
> > > > > state-of-the-art hw
> > > > > support we'll also need patches not yet in upstream kernel (from=
 eg.
> > > > > armbian and libreelec).
> > > > >
> > > > > I feel it would be good to provide defconfig files for those mac=
hines,
> > > > > but then there are
> > > > > several options to handle that.  Would a minimal hw-focused defc=
onfig
> > > > > suitable for
> > > > > `KCONFIG_MODE =3D "--allnoconfig"` be a good option ?
> > > >
> > > > I feel exactly the same way.
> > > >
> > > > By default all arm64 kernels are configured with the one, in-kerne=
l, generic
> > > > arm64 defconfig. That gives me a kernel that is over 11MB in size,=
 and
> > > > includes all sorts of useless drivers.
> > > >
> > > > I've been working off-and-on on a mechanism for meta-rockchip that=
 would allow
> > > > users to decide between the default in-kernel arm64 defconfig (whi=
ch would
> > > > be selected by doing nothing) or using a leaner defconfig that I h=
ave been
> > > > tweaking specifically for each board. Currently I only have a lean=
 defconfig
> > > > for rock-pi-4b, but it was my hope to generate defconfigs for all =
supported
> > > > boards.
> > > >
> > > > Ideally I had wanted to leverage the linux-yocto kmeta mechanism t=
o generate
> > > > defconfigs dynamically based on the specific machine and specific =
user
> > > > preferences, but that didn't go as smoothly as I was hoping, then =
I got
> > > > distracted by other things.
> > > >
> > > > I had created a spreadsheet with a comparison between the various =
boards that
> > > > would have been a basis for the individual kmeta pieces. Maybe I'l=
l find some
> > > > more time to poke at it later this week. I could also push my WIP =
stuff to
> > > > somewhere if you'd like to take a look.
> > > >
> > > > In any case, my point is, I'm very interested in something better =
than what
> > > > currently exists :-)
> > >
> > > On my side I have a minimal defconfig for our own board, which is ve=
ry similar
> > > to the nanopi-m4, which could be used as a starting point for the la=
tter.
> > >
> > >
> > > > One thing that I'd like to keep clear in meta-rockchip is to alway=
s allow the
> > > > user to choose between upstream and "extras". My feeling is: the s=
implest
> > > > build, if the user does nothing explicit, will always pull from pu=
re upstream
> > > > with no out-of-tree patches or vendor pieces. But I'm not opposed =
to having
> > > > a mechanism whereby if the user does something explicit, they can =
choose to
> > > > use a vendor tree or make use of out-of-tree patches for various t=
hings.
> > >
> > > One possibility would be using a KERNEL_CONFIG_VARIANT variable, who=
se
> > > values would select consistent sets of KBUILD_DEFCONFIG + KCONFIG_MO=
DE
> > > + SRC_URI_append.  Standard variants could include "mainline" as the
> > > default, and
> > > maybe "customhw" which would bring just the hw features for the boar=
d
> > > in allnoconfig
> > > mode.
> > >
> > > Or maybe we could try to fit such a selection mechanism in the PACKA=
GECONFIG
> > > system, but I'm not sure it would really fit.
> >
> > The above (if I'm reading it correctly) sounds quite similar to someth=
ing I
> > had already started a while back. So I'll go ahead and publish this
> > work-in-progress. Maybe if I'm lucky it might spark some conversation =
with
> > other BSP maintainers.
> >
> > https://github.com/twoerner/meta-rockchip__twoerner/tree/rockchip-kern=
el-config-WIP
> >
> > Here is the text I've added to the README, which I think helps clarify=
 some of
> > my points:
> >
> >         Kernel configuration:
> >         --------------------
> >         When it comes to configuring the kernel, allow the user to cho=
ose between:
> >                 1. using the in-kernel defconfig
> >                 2. using an in-layer defconfig + config fragments
> >
> >         The in-kernel defconfig is a very generic configuration meant =
to build a
> >         kernel that could (theoretically) be run on a wide variety of =
devices of
> >         the same architecture. I.e. a kernel built for one aarch64 mac=
hine (e.g.
> >         the Qualcomm-based DragonBoard 410c) could be used without mod=
ification on
> >         a completely different aarch64 machine (e.g. an Amlogic-based =
Odroid-C4). As
> >         you can imagine, the in-kernel configuration generates a very =
large kernel.
> >         Currently the in-kernel defconfig produces a kernel that is ro=
ughly 12MB.
> >
> >         The in-layer defconfig + config fragments is meant to trim dow=
n the kernel
> >         configuration to remove all the hardware settings that aren't =
relevant to the
> >         specific MACHINE being built. I.e. a kernel built for the rock=
-pi-4b wouldn't
> >         include, for example, Qualcomm-specific drivers or code.
> >
> >         Currently, option #2 is only available for the following MACHI=
NE(s):
> >                 - rock-pi-4b
> >
> >         The user indicates their intent via the RK_KERNEL_CONFIG_TYPE =
variable. If
> >         the user does nothing, the default behaviour is to use the in-=
kernel
> >         defconfig. If the user sets
> >                 RK_KERNEL_CONFIG_TYPE =3D "inlayer"
> >         then the in-layer defconfig + config fragments will be used.
> >
> > At this point I don't have everything that I'm wishing for. I had star=
ted to
> > try to add everything that I've wanted, but it wasn't working, so I pu=
lled
> > back and only committed the parts that I was able to get working.
> >
> > Right now the user can toggle between the generic in-kernel defconfig,=
 or a
> > leaner defconfig that I've defined by playing with the RK_KERNEL_CONFI=
G_TYPE
> > variable (in local.conf, for example). Right now I've only done that f=
or the
> > rock-pi-4b, but ideally I'd add others as time goes on.
> >
> > I think it'll always be good to allow users to choose between the in-k=
ernel
> > defconfig and something custom. We'll always want to be able to say "d=
oes it
> > work with the in-kernel defconfig?".
> >
> > But better yet, instead of one big monolithic defconfig per board, ide=
ally the
> > meta-rockchip BSP layer would contain a whole bunch of little kernel c=
onfig
> > fragments for turning on just one thing. For example, there would be a=
 kernel
> > config fragment for turning on basic Rockchip support, another one to =
enable
> > the RK808 pmic, and another one for the RK805 pmic. Others config frag=
ments
> > would enable various ethernet options, wifi, bluetooth, etc. One would=
 enable
> > the ES8388 audio codec (found on the rock2-square) and another would e=
nable
> > just the ES8316 audio codec (the one found on the rock-pi-4).
> >
> > Then, various parts on the configuration would enable the relevant ker=
nel
> > config fragments. Simply selecting, for example, rock-pi-e, would incl=
ude
> > the include/rk3328.inc, which would pull in basic rockchip/rk3328 supp=
ort
> > and some other default things. The rock-pi-e.conf would pull in the co=
rrect
> > networking/bt options, and select the RK805 pmic. Eventually all the l=
ittle
> > fragments would be pulled in that would be necessary to generate the w=
hole
> > defconfig for this board.
> >
> > That's the dream, anyway :-/
>
> That sound fine :)
>
> I think we can even do something like this with just standard-looking
> overrides and no
> specific anonymous python.  I'm thinking of something like (including
> non-arm things, after all
> there's no reason to reserve such a mechanism to the arm/rk world):
>
> # how the kernel defconfigs are named
> KBUILD_DEFCONFIG_inkernel =3D "defconfig"
> KBUILD_DEFCONFIG_inkernel_x86-64 =3D "x86_64_defconfig"
> # how the layer defconfigs are named
> KBUILD_DEFCONFIG_inlayer =3D "defconfig"
>
> RK_KERNEL_CONFIG_TYPE =3D "inlayer"
>
> KBUILD_DEFCONFIG =3D "${KBUILD_DEFCONFIG_${RK_KERNEL_CONFIG_TYPE}}"
>
> RK_KERNEL_CONFIG_URIS_inkernel =3D ""
> RK_KERNEL_CONFIG_URIS_inlayer =3D "file://defconfig file://soc.cfg
> file://board.cfg"
>
> SRC_URI_append =3D "${RK_KERNEL_CONFIG_URIS_${RK_KERNEL_CONFIG_TYPE}}"
>
>
> Then we could have in the recipe files:
> - a single defconfig for all rockchip
> - per-soc, eg. rk3399/soc.cfg
> - per-machine, eg. nanopi-m4/board.cfg
>
> How does that sound ?
>
> >
> > Technically, this information could be gleaned from the device tree fo=
r this
> > board=E2=80=A6 :-S
> >
> > Then we'll need to take a look at all the DT overlays to see how to
> > incorporate them as well. Most of these boards have the "Raspberry Pi"=
 40-pin
> > interface, so users will expect to be able to reconfigure the pins for=
 the
> > various alternate devices.
> --
> Yann Dirson <yann@blade-group.com>
> Blade / Shadow -- http://shadow.tech
>
>=20
>


--
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
