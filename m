Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.386.1595349651793642716
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 09:40:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BB48w3p8Fz5tlF;
	Tue, 21 Jul 2020 18:40:48 +0200 (CEST)
Date: Tue, 21 Jul 2020 18:40:47 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: jjvazha@yahoo.com, yocto@lists.yoctoproject.org
Subject: Re: [yocto] meta-kirkwood layer #yocto
Message-ID: <20200721164047.yrs7uwls3xb3isce@qschulz>
References: <fn2D.1594142718853789763.EJrE@lists.yoctoproject.org>
 <80dee997-087c-6e74-2e1e-d88ae5ee63a9@gmail.com>
MIME-Version: 1.0
In-Reply-To: <80dee997-087c-6e74-2e1e-d88ae5ee63a9@gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 21, 2020 at 09:34:16AM -0700, Khem Raj wrote:
>=20
>=20
> On 7/7/20 10:25 AM, jjvazha via lists.yoctoproject.org wrote:
> > I saw this message thread (
> > https://lists.yoctoproject.org/g/yocto/topic/61257317)=A0 and wonderi=
ng
> > how can I get this yocto compatible=A0 layer=A0 for marwell kirkwood =
?
> > I want to build a linux ketnel for marwell kirk wood=A0 ( using the
> > sheevaplug.conf for machine) using yocto 2.7.3
> > I down loaded this layer
> > (https://github.com/kelvinlawson/meta-kirkwood)=A0=A0 this is opnembe=
dded
> > based , however upon building in yocto=A0 it failed with the followin=
g
> > message
> >=20
> > Entering directory `/home/jojan.vazhaeparampil/workspace/distro/build=
_zion/tmp/work-shared/sheevaplug/kernel-source'
> > |=A0=A0 GEN     /home/jojan.vazhaeparampil/workspace/distro/build_zio=
n/tmp/work/sheevaplug-poky-linux-gnueabi/linux-kirkwood/2.6.35-rc1-r14/bu=
ild/Makefile
> > | make[2]: *** No rule to make target `oldnoconfig'.=A0 Stop.
> > | make[1]: *** [oldnoconfig] Error 2
> > | make: *** [sub-make] Error 2
> > | make: Leaving directory `/home/jojan.vazhaeparampil/workspace/distr=
o/build_zion/tmp/work-shared/sheevaplug/kernel-source'
> > | ERROR: oe_runmake failed
> >=20
> >=20
> > When I checked the "sheevaplug/kernel-source' directory it is empty ?
> >=20
>=20
> meta-kirkwood is kind of stale, last commit was 7 years, 9 months ago,
> perhaps look around for another machine layer or fix this one
>=20

I also see that there's only a kernel recipe. IIRC, kirkwood devices are
supported in upstream linux, so you're probably fine using linux-yocto,
copy paste and slightly modify the machine configuration files if need
be and start from there instead of using this ultra old Linux kernel
(come on... 2.6?).

Good luck :)

Quentin

N.B.: https://elixir.bootlin.com/linux/latest/source/arch/arm/boot/dts/ki=
rkwood-sheevaplug.dts
