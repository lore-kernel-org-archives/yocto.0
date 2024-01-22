Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0D38C46CD2
	for <webhook@archiver.kernel.org>; Mon, 22 Jan 2024 22:42:53 +0000 (UTC)
Subject: Re: [yocto] etherlab
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Rimini, Emilia-Romagna, IT (176.246.20.126)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Jan 2024 14:42:45 -0800
References: <54A04DD8-217F-4CD2-BAB1-0F8F1F6BEB44@arm.com>
In-Reply-To: <54A04DD8-217F-4CD2-BAB1-0F8F1F6BEB44@arm.com>
Message-ID: <29317.1705963365501549911@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ENXlYYsz8HQ8cwGblLu1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 22:42:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62227

--ENXlYYsz8HQ8cwGblLu1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 12:08 PM, Ross Burton wrote:

>=20
> Especially when someone is trying to be clever and wrap the kbuild
> infrastructure inside autotools.

Not me :)

Thank you very much, Ross. Now I have an ethercat-userspace.bb recipe with =
--disable-kernel, and the following ethercat-kernel.bb:

LICENSE =3D "GPL-2.0-only & LGPL-2.1-only"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D59530bdf33659b29e73d4adb9f9f6552=
 \
file://COPYING.LESSER;md5=3D4fbd65380cdd255951079008b364516c \
file://devices/e1000/LICENSE;md5=3De2643b73e47fa4b29cdfad24ee42bed6"

DEPENDS +=3D "pkgconfig-native"
RDEPENDS:${PN} +=3D "bash"

SRC_URI =3D "git://gitlab.com/etherlab.org/ethercat.git;protocol=3Dhttps;br=
anch=3Dmaster"

PV =3D "1.6.0-rc1+git${SRCPV}"
SRCREV =3D "420e6150f55b71b97a84c64831f4928e0859a0e9"

S =3D "${WORKDIR}/git"

inherit autotools
inherit module

EXTRA_OECONF =3D "--enable-generic --disable-igb --disable-8139too --with-l=
inux-dir=3D${STAGING_KERNEL_BUILDDIR}"

EXTRA_OEMAKE +=3D "-f Makefile.kbuild"

FILES:${PN} +=3D "${datadir}/*"

which fails, and in log.do_compile I find:

ERROR: oe_runmake failed
WARNING: exit code 1 from a shell command.
make: Makefile.kbuild: No such file or directory
make: *** No rule to make target 'Makefile.kbuild'.=C2=A0 Stop.

but a poky/build/tmp/work/intel_corei7_64-poky-linux/ethercat-kernel/1.6.0-=
rc1+git/git/Makefile.kbuild does exist, and

bitbake-getvar -r ethercat-kernel S

says

S=3D"/home/vboxuser/yocto/poky/build/tmp/work/intel_corei7_64-poky-linux/et=
hercat-kernel/1.6.0-rc1+git/git"

so it seems to be in the right place.

(By the way, I also find a yocto/poky/build/tmp/ work/corei7-64-poky-linux/=
ethercat-userspace/1.6.0-rc1+git/git/Makefile.kbuild
don't know why, and why is it in corei7-64-poky-linux instead of intel_core=
i7_64-poky-linux)

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--ENXlYYsz8HQ8cwGblLu1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 12:08 PM, Ross Burton wrote:<br />
<blockquote>Especially when someone is trying to be clever and wrap the kbu=
ild infrastructure inside autotools.</blockquote>
<div>&nbsp;Not me :)</div>
<div>&nbsp;</div>
<div>&nbsp;Thank you very much, Ross. Now I have an ethercat-userspace.bb r=
ecipe with --disable-kernel, and the following ethercat-kernel.bb:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">LICENSE =3D "GPL-2.0-only &amp; LGPL-2=
.1-only"</span></div>
<div><span style=3D"color: #0000ff;">LIC_FILES_CHKSUM =3D "file://COPYING;m=
d5=3D59530bdf33659b29e73d4adb9f9f6552 \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; file://COPYING.LESSER;md5=3D4fbd65380cdd255=
951079008b364516c \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; file://devices/e1000/LICENSE;md5=3De2643b73=
e47fa4b29cdfad24ee42bed6"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">DEPENDS +=3D "pkgconfig-native"</span>=
</div>
<div><span style=3D"color: #0000ff;">RDEPENDS:${PN} +=3D "bash"</span></div=
>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">SRC_URI =3D "git://gitlab.com/etherlab=
.org/ethercat.git;protocol=3Dhttps;branch=3Dmaster"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">PV =3D "1.6.0-rc1+git${SRCPV}"</span><=
/div>
<div><span style=3D"color: #0000ff;">SRCREV =3D "420e6150f55b71b97a84c64831=
f4928e0859a0e9"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">S =3D "${WORKDIR}/git"</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">inherit autotools</span></div>
<div><span style=3D"color: #0000ff;">inherit module</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OECONF =3D "--enable-generic --d=
isable-igb --disable-8139too --with-linux-dir=3D${STAGING_KERNEL_BUILDDIR}"=
</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">EXTRA_OEMAKE +=3D "-f Makefile.kbuild"=
</span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">FILES:${PN} +=3D "${datadir}/*"</span>=
</div>
<div>&nbsp;</div>
<div>which fails, and in log.do_compile I find:</div>
<div>&nbsp;</div>
<div><span style=3D"color: #ff0000;">ERROR: oe_runmake failed</span></div>
<div><span style=3D"color: #ff0000;">WARNING: exit code 1 from a shell comm=
and.</span></div>
<div><span style=3D"color: #ff0000;">make: Makefile.kbuild: No such file or=
 directory</span></div>
<div><span style=3D"color: #ff0000;">make: *** No rule to make target 'Make=
file.kbuild'.&nbsp; Stop.</span></div>
<div>&nbsp;</div>
<div>but a poky/build/tmp/work/intel_corei7_64-poky-linux/ethercat-kernel/1=
.6.0-rc1+git/git/Makefile.kbuild does exist, and</div>
<div>&nbsp;</div>
<div><span style=3D"color: #3366ff;">bitbake-getvar -r ethercat-kernel S</s=
pan></div>
<div>&nbsp;</div>
<div>says&nbsp;</div>
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">S=3D"/home/vboxuser/yocto/poky/build/t=
mp/work/intel_corei7_64-poky-linux/ethercat-kernel/1.6.0-rc1+git/git"</span=
></div>
<div>&nbsp;</div>
<div>so it seems to be in the right place.<br /><br />(By the way, I also f=
ind a&nbsp;<span style=3D"color: #800000;">yocto/poky/build/tmp/</span>work=
/corei7-64-poky-linux/ethercat-userspace/1.6.0-rc1+git/git/Makefile.kbuild<=
/div>
<div>don't know why, and why is it in corei7-64-poky-linux instead of intel=
_corei7_64-poky-linux)</div>
&nbsp;<br />-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--ENXlYYsz8HQ8cwGblLu1--

