Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web12.161.1616692264365133832
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 10:11:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="unable to parse pub key" header.i=@blade-group.com header.s=google header.b=VpE1Kofs;
 spf=pass (domain: blade-group.com, ip: 209.85.217.47, mailfrom: yann.dirson@blade-group.com)
Received: by mail-vs1-f47.google.com with SMTP id h25so1288857vso.2
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 10:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=blade-group.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OjaMlVKvAJ9rn5t03uL17soyHRwofXq2V9W3YLySfWM=;
        b=VpE1KofsxT9ZwkL4G4+0m0AJUJHKbgGalH+PVNF2/JGyHyepu2Tis7x0FEOPD9OI0K
         Uf4brNprm50Qat2mZYB7Rq8Hq2gifp/i6KH+gXQJDINabQ4YfRrz5RHZPsmXnMJgCjVv
         dimyEvW9kcg7f5lnCdiXb4//nYxgL7XF7TsgmtUbQR6IrKCEVVIYzXkzCZAUzAEi28jR
         f/wabBivxDBzRaDj0+a9d4wTMnzGtEddEQrMKjpMzTrU3J7PD/rxpoSqphEDdFVxzDQN
         PE1fJ+R3vFUVMG5p0U2KtGuLLS4WEA5vqj+581RzBcri0kD0kfOLvQk8hY7GP5adkqrw
         bQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OjaMlVKvAJ9rn5t03uL17soyHRwofXq2V9W3YLySfWM=;
        b=keDWo2h7ZWWBxd1h4elGNrtdqvDNo56gXQNGn8fkbOC7xxbIoL6LLvg5LqsiYSMhiB
         GVk1o7ASXvF53G5iclF06P0ApT2GrHQBJTYuvTlmd+IchHgak9ELRGIF7ZV+BYwaF8fh
         jjuI9k6Sw3x/eF0Xc33RtLKrlOHDIflQ2tWDwqunSh/4pU1DlVMJSePuYW5nUlDgwESn
         q3ZFfiFa6E00B7vzbNkUejXRbsRr1V6dF669j+/3qagcgpDp1ovzOMdYf5eUqkPrqmR4
         HmHl0+zn03TlbK68Fi3uwxqYwu6D4EINpzltS77HiacRJLVVkRU1Yq15oVZ3Y/dHm6vS
         nR7A==
X-Gm-Message-State: AOAM531KpUBkD21ohWE+/lg2+MwMjD1qyfPFu2O9w+CqGPfRWQhQ7D3Q
	8v5ZmaPZnpGrNtyAKB+NIpto4qkDrmJtF6J6tcKLvA==
X-Google-Smtp-Source: ABdhPJyfv2WbJj/s49xiErmSTPUmxi3K31pPU/pN0Ql6lRC/GiD28ft59GhTEkIAkCv6xFXrrknH6qpHYi/hJLL0+Hc=
X-Received: by 2002:a67:641:: with SMTP id 62mr5721379vsg.23.1616692263116;
 Thu, 25 Mar 2021 10:11:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210322134212.576790-1-yann@blade-group.com> <20210322144753.GA33662@localhost>
 <166EB22A27C12C43.28220@lists.yoctoproject.org> <CA+4=imZsRTr40jO+aOHDrXogiEqLRCdkB=5L-tWtOSREC+EDnQ@mail.gmail.com>
 <20210322155021.GA23379@localhost> <CA+4=imbGcUVwsz3kF411s1OeSRL=vrWt=Cpsb-3ud+P-86nkTw@mail.gmail.com>
 <20210324004055.GA26846@localhost>
In-Reply-To: <20210324004055.GA26846@localhost>
From: "Yann Dirson" <yann.dirson@blade-group.com>
Date: Thu, 25 Mar 2021 18:10:51 +0100
Message-ID: <CA+4=imZNwqt=b_nLgYK8XczMmeOmz3NQTYd2xPgXDZ1saU-7Rw@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip] defconfig alternatives
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

 =3D "Hi Trevor,

Le mer. 24 mars 2021 =C3=A0 01:41, Trevor Woerner <twoerner@gmail.com> a =
=C3=A9crit :
>
> On Tue 2021-03-23 @ 12:59:24 PM, Yann Dirson wrote:
> > Hi Trevor,
> >
> > Le lun. 22 mars 2021 =C3=A0 16:50, Trevor Woerner <twoerner@gmail.com> =
a =C3=A9crit :
> > > > BTW, I'm also unclear on what to do next to better support those
> > > > boards: with the default
> > > > kernel config only a subset of the hardware is supported, and for
> > > > state-of-the-art hw
> > > > support we'll also need patches not yet in upstream kernel (from eg=
.
> > > > armbian and libreelec).
> > > >
> > > > I feel it would be good to provide defconfig files for those machin=
es,
> > > > but then there are
> > > > several options to handle that.  Would a minimal hw-focused defconf=
ig
> > > > suitable for
> > > > `KCONFIG_MODE =3D "--allnoconfig"` be a good option ?
> > >
> > > I feel exactly the same way.
> > >
> > > By default all arm64 kernels are configured with the one, in-kernel, =
generic
> > > arm64 defconfig. That gives me a kernel that is over 11MB in size, an=
d
> > > includes all sorts of useless drivers.
> > >
> > > I've been working off-and-on on a mechanism for meta-rockchip that wo=
uld allow
> > > users to decide between the default in-kernel arm64 defconfig (which =
would
> > > be selected by doing nothing) or using a leaner defconfig that I have=
 been
> > > tweaking specifically for each board. Currently I only have a lean de=
fconfig
> > > for rock-pi-4b, but it was my hope to generate defconfigs for all sup=
ported
> > > boards.
> > >
> > > Ideally I had wanted to leverage the linux-yocto kmeta mechanism to g=
enerate
> > > defconfigs dynamically based on the specific machine and specific use=
r
> > > preferences, but that didn't go as smoothly as I was hoping, then I g=
ot
> > > distracted by other things.
> > >
> > > I had created a spreadsheet with a comparison between the various boa=
rds that
> > > would have been a basis for the individual kmeta pieces. Maybe I'll f=
ind some
> > > more time to poke at it later this week. I could also push my WIP stu=
ff to
> > > somewhere if you'd like to take a look.
> > >
> > > In any case, my point is, I'm very interested in something better tha=
n what
> > > currently exists :-)
> >
> > On my side I have a minimal defconfig for our own board, which is very =
similar
> > to the nanopi-m4, which could be used as a starting point for the latte=
r.
> >
> >
> > > One thing that I'd like to keep clear in meta-rockchip is to always a=
llow the
> > > user to choose between upstream and "extras". My feeling is: the simp=
lest
> > > build, if the user does nothing explicit, will always pull from pure =
upstream
> > > with no out-of-tree patches or vendor pieces. But I'm not opposed to =
having
> > > a mechanism whereby if the user does something explicit, they can cho=
ose to
> > > use a vendor tree or make use of out-of-tree patches for various thin=
gs.
> >
> > One possibility would be using a KERNEL_CONFIG_VARIANT variable, whose
> > values would select consistent sets of KBUILD_DEFCONFIG + KCONFIG_MODE
> > + SRC_URI_append.  Standard variants could include "mainline" as the
> > default, and
> > maybe "customhw" which would bring just the hw features for the board
> > in allnoconfig
> > mode.
> >
> > Or maybe we could try to fit such a selection mechanism in the PACKAGEC=
ONFIG
> > system, but I'm not sure it would really fit.
>
> The above (if I'm reading it correctly) sounds quite similar to something=
 I
> had already started a while back. So I'll go ahead and publish this
> work-in-progress. Maybe if I'm lucky it might spark some conversation wit=
h
> other BSP maintainers.
>
> https://github.com/twoerner/meta-rockchip__twoerner/tree/rockchip-kernel-=
config-WIP
>
> Here is the text I've added to the README, which I think helps clarify so=
me of
> my points:
>
>         Kernel configuration:
>         --------------------
>         When it comes to configuring the kernel, allow the user to choose=
 between:
>                 1. using the in-kernel defconfig
>                 2. using an in-layer defconfig + config fragments
>
>         The in-kernel defconfig is a very generic configuration meant to =
build a
>         kernel that could (theoretically) be run on a wide variety of dev=
ices of
>         the same architecture. I.e. a kernel built for one aarch64 machin=
e (e.g.
>         the Qualcomm-based DragonBoard 410c) could be used without modifi=
cation on
>         a completely different aarch64 machine (e.g. an Amlogic-based Odr=
oid-C4). As
>         you can imagine, the in-kernel configuration generates a very lar=
ge kernel.
>         Currently the in-kernel defconfig produces a kernel that is rough=
ly 12MB.
>
>         The in-layer defconfig + config fragments is meant to trim down t=
he kernel
>         configuration to remove all the hardware settings that aren't rel=
evant to the
>         specific MACHINE being built. I.e. a kernel built for the rock-pi=
-4b wouldn't
>         include, for example, Qualcomm-specific drivers or code.
>
>         Currently, option #2 is only available for the following MACHINE(=
s):
>                 - rock-pi-4b
>
>         The user indicates their intent via the RK_KERNEL_CONFIG_TYPE var=
iable. If
>         the user does nothing, the default behaviour is to use the in-ker=
nel
>         defconfig. If the user sets
>                 RK_KERNEL_CONFIG_TYPE =3D "inlayer"
>         then the in-layer defconfig + config fragments will be used.
>
> At this point I don't have everything that I'm wishing for. I had started=
 to
> try to add everything that I've wanted, but it wasn't working, so I pulle=
d
> back and only committed the parts that I was able to get working.
>
> Right now the user can toggle between the generic in-kernel defconfig, or=
 a
> leaner defconfig that I've defined by playing with the RK_KERNEL_CONFIG_T=
YPE
> variable (in local.conf, for example). Right now I've only done that for =
the
> rock-pi-4b, but ideally I'd add others as time goes on.
>
> I think it'll always be good to allow users to choose between the in-kern=
el
> defconfig and something custom. We'll always want to be able to say "does=
 it
> work with the in-kernel defconfig?".
>
> But better yet, instead of one big monolithic defconfig per board, ideall=
y the
> meta-rockchip BSP layer would contain a whole bunch of little kernel conf=
ig
> fragments for turning on just one thing. For example, there would be a ke=
rnel
> config fragment for turning on basic Rockchip support, another one to ena=
ble
> the RK808 pmic, and another one for the RK805 pmic. Others config fragmen=
ts
> would enable various ethernet options, wifi, bluetooth, etc. One would en=
able
> the ES8388 audio codec (found on the rock2-square) and another would enab=
le
> just the ES8316 audio codec (the one found on the rock-pi-4).
>
> Then, various parts on the configuration would enable the relevant kernel
> config fragments. Simply selecting, for example, rock-pi-e, would include
> the include/rk3328.inc, which would pull in basic rockchip/rk3328 support
> and some other default things. The rock-pi-e.conf would pull in the corre=
ct
> networking/bt options, and select the RK805 pmic. Eventually all the litt=
le
> fragments would be pulled in that would be necessary to generate the whol=
e
> defconfig for this board.
>
> That's the dream, anyway :-/

That sound fine :)

I think we can even do something like this with just standard-looking
overrides and no
specific anonymous python.  I'm thinking of something like (including
non-arm things, after all
there's no reason to reserve such a mechanism to the arm/rk world):

# how the kernel defconfigs are named
KBUILD_DEFCONFIG_inkernel =3D "defconfig"
KBUILD_DEFCONFIG_inkernel_x86-64 =3D "x86_64_defconfig"
# how the layer defconfigs are named
KBUILD_DEFCONFIG_inlayer =3D "defconfig"

RK_KERNEL_CONFIG_TYPE =3D "inlayer"

KBUILD_DEFCONFIG =3D "${KBUILD_DEFCONFIG_${RK_KERNEL_CONFIG_TYPE}}"

RK_KERNEL_CONFIG_URIS_inkernel =3D ""
RK_KERNEL_CONFIG_URIS_inlayer =3D "file://defconfig file://soc.cfg
file://board.cfg"

SRC_URI_append =3D "${RK_KERNEL_CONFIG_URIS_${RK_KERNEL_CONFIG_TYPE}}"


Then we could have in the recipe files:
- a single defconfig for all rockchip
- per-soc, eg. rk3399/soc.cfg
- per-machine, eg. nanopi-m4/board.cfg

How does that sound ?

>
> Technically, this information could be gleaned from the device tree for t=
his
> board=E2=80=A6 :-S
>
> Then we'll need to take a look at all the DT overlays to see how to
> incorporate them as well. Most of these boards have the "Raspberry Pi" 40=
-pin
> interface, so users will expect to be able to reconfigure the pins for th=
e
> various alternate devices.
--
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech
