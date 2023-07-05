Return-Path: <przemek.recha@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FC2EB64DA
	for <webhook@archiver.kernel.org>; Wed,  5 Jul 2023 13:58:46 +0000 (UTC)
Subject: Re: Building Tailscale with Yocto #golang
To: yocto@lists.yoctoproject.org
From: "pszemoc" <przemek.recha@gmail.com>
X-Originating-Location: Krakow, Lesser Poland, PL (5.173.65.163)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 05 Jul 2023 06:58:42 -0700
References: <CA+EiEZKj4uE_xQZ=YZjpddB+F=qxPhq5FqD2hHYeXHXbyhxRPQ@mail.gmail.com>
In-Reply-To: <CA+EiEZKj4uE_xQZ=YZjpddB+F=qxPhq5FqD2hHYeXHXbyhxRPQ@mail.gmail.com>
Message-ID: <17045.1688565522386441557@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="6ia3wpbVcuEJ3V4qLec6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 13:58:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60519

--6ia3wpbVcuEJ3V4qLec6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'am using Mickledore, with Go 1.20.5

I got successful build with following recipe:

GO_IMPORT =3D "tailscale.com"
GO_WORKDIR =3D "${GO_IMPORT}"
GO_INSTALL =3D "\
${GO_IMPORT}/cmd/tailscale \
${GO_IMPORT}/cmd/tailscaled \
"

do_compile() {
${GO} install ${GOBUILDFLAGS} ${GO_INSTALL}
}

do_compile[network] =3D "1"

do_install() {
install -d ${D}/${bindir}
install -d ${D}/${sbindir}
install ${B}/bin/linux_arm/tailscale ${D}/${bindir}/tailscale
install ${B}/bin/linux_arm/tailscaled ${D}/${sbindir}/tailscaled
if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)};=
 then
install -d ${D}${sysconfdir}/default/
install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled=
.defaults ${D}${sysconfdir}/default/tailscaled
install -d ${D}${systemd_unitdir}/system
install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/tailscaled=
.service ${D}${systemd_unitdir}/system/tailscaled.service
install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants/
ln -s ${systemd_unitdir}/system/tailscaled.service ${D}${sysconfdir}/system=
d/system/multi-user.target.wants/tailscaled.service
fi
}

SYSTEMD_PACKAGES =3D "${PN}"
SYSTEMD_SERVICE:${PN} =3D "tailscaled.service"
SYSTEMD_AUTO_ENABLE =3D "enable"

It's using=C2=A0do_compile[network] =3D "1" as was mentioned in this topic =
to omit network isolation.

I'm not particularly pleased with defining compile task for this recipe as =
it should use task from go.bbclass, but without it it gave me following err=
or:

| 2023/07/05 12:35:55 duplicated definition of symbol tailscale.com/util/si=
ngleflight.(*Group[go.shape.string,go.shape.struct { tailscale.com/net/dnsc=
ache.ip net/netip.Addr; tailscale.com/net/dnscache.ip6 net/netip.Addr; tail=
scale.com/net/dnscache.allIPs []net/netip.Addr }]).doCall.func2, from tails=
cale.com/derp/derphttp and main

I'm not really familiar with Go, so I have no idea what's the cause of this=
 error.

--6ia3wpbVcuEJ3V4qLec6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>I'am using Mickledore, with Go 1.20.5</p>
<p>I got successful build with following recipe:</p>
<p>GO_IMPORT =3D "tailscale.com"<br />GO_WORKDIR =3D "${GO_IMPORT}"<br />GO=
_INSTALL =3D "\<br />&nbsp; &nbsp; ${GO_IMPORT}/cmd/tailscale \<br />&nbsp;=
 &nbsp; ${GO_IMPORT}/cmd/tailscaled \<br />"<br /><br /></p>
<p>do_compile() {<br /><span style=3D"white-space: normal;"><span style=3D"=
white-space: pre;"> </span>${GO} install ${GOBUILDFLAGS} ${GO_INSTALL}<br /=
></span>}<br /><br />do_compile[network] =3D "1"<br /><br />do_install() {<=
br />&nbsp; &nbsp; install -d ${D}/${bindir}<br />&nbsp; &nbsp; install -d =
${D}/${sbindir}<br />&nbsp; &nbsp; install ${B}/bin/linux_arm/tailscale ${D=
}/${bindir}/tailscale<br />&nbsp; &nbsp; install ${B}/bin/linux_arm/tailsca=
led ${D}/${sbindir}/tailscaled<br />&nbsp; &nbsp; if ${@bb.utils.contains('=
DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then<br />&nbsp; &nbsp; =
&nbsp; &nbsp; install -d ${D}${sysconfdir}/default/<br />&nbsp; &nbsp; &nbs=
p; &nbsp; install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailscaled/=
tailscaled.defaults ${D}${sysconfdir}/default/tailscaled<br />&nbsp; &nbsp;=
 &nbsp; &nbsp; install -d ${D}${systemd_unitdir}/system<br />&nbsp; &nbsp; =
&nbsp; &nbsp; install -m 0644 ${WORKDIR}/build/src/${GO_IMPORT}/cmd/tailsca=
led/tailscaled.service ${D}${systemd_unitdir}/system/tailscaled.service<br =
/>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/systemd/system/m=
ulti-user.target.wants/<br />&nbsp; &nbsp; &nbsp; &nbsp; ln -s ${systemd_un=
itdir}/system/tailscaled.service ${D}${sysconfdir}/systemd/system/multi-use=
r.target.wants/tailscaled.service<br />&nbsp; &nbsp; fi<br />}</p>
<p>SYSTEMD_PACKAGES =3D "${PN}"<br />SYSTEMD_SERVICE:${PN} =3D "tailscaled.=
service"<br />SYSTEMD_AUTO_ENABLE =3D "enable"<br /><br /><br />It's using&=
nbsp;do_compile[network] =3D "1" as was mentioned in this topic to omit net=
work isolation.<br /><br />I'm not particularly pleased with defining compi=
le task for this recipe as it should use task from go.bbclass, but without =
it it gave me following error:</p>
<p>| 2023/07/05 12:35:55 duplicated definition of symbol tailscale.com/util=
/singleflight.(*Group[go.shape.string,go.shape.struct { tailscale.com/net/d=
nscache.ip net/netip.Addr; tailscale.com/net/dnscache.ip6 net/netip.Addr; t=
ailscale.com/net/dnscache.allIPs []net/netip.Addr }]).doCall.func2, from ta=
ilscale.com/derp/derphttp and main<br /><br />I'm not really familiar with =
Go, so I have no idea what's the cause of this error.</p>

--6ia3wpbVcuEJ3V4qLec6--

