Subject: Re: Yocto recipe for Tailscale #yocto #golang
To: yocto@lists.yoctoproject.org
From: "Mike Thompson" <mthompson@dustyrobotics.com>
X-Originating-Location: Palo Alto, California, US (157.22.13.92)
X-Originating-Platform: Windows Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Oct 2020 11:51:13 -0700
References: <15104.1600836543637853360@lists.yoctoproject.org>
In-Reply-To: <15104.1600836543637853360@lists.yoctoproject.org>
Message-ID: <11004.1602615073598026525@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rTg3AYQJ74YCdITiP59w"

--rTg3AYQJ74YCdITiP59w
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

A follow up on a Yocto recipe for building a Tailscale package for others w=
ho have an interest in this.

Although the final recipe I created appears to successfully build the Tail=
scale utility and daemon without warnings or errors, the resulting 'tailsca=
led' daemon crashes when used.

Investigating this issue further I discovered that Tailscale maintains the=
ir own GoLang repository ( https://github.com/tailscale/go/tree/build-56db7=
6510f9640d2ad652f206ae6e41c1a5d63ca ) with changes needed to support Tailsc=
ale. I suspect, but haven't proven, using the standard Yocto supported vers=
ions of GoLang to build Tailscale results in the crashes I see.=C2=A0 Unfor=
tunately, I don't have enough of an understanding of GoLang to determine ho=
w to build Tailscale with the unique version of GoLang maintained by the Ta=
ilscale folks..

Instead of resolving this build issue, I instead created a Yocto recipe th=
at utilizes the released binaries from Tailscale ( https://pkgs.tailscale.c=
om/stable/#static ) to create a Yocto package.=C2=A0 This isn't ideal as I =
would much rather build from source, but solves my short term needs.=C2=A0 =
This alternate recipe to build a Yocto package from binaries is included be=
low.

------------------------------------------------------------------------

tailscale_1.0.5.bb

SUMMARY =3D "Tailscale client and daemon for Linux from Tailscale pre-buil=
t binaries"

HOMEPAGE =3D "github.com/tailscale/tailscale"

SECTION =3D "net"

LICENSE =3D "CLOSED"

COMPATIBLE_HOST =3D "x86_64.*-linux"

# Archive URL:

#=C2=A0 =C2=A0https://pkgs.tailscale.com/stable/tailscale_1.0.5_amd64.tgz

#

# Archive contents:

#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd

#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd/tailscaled.service

#=C2=A0 =C2=A0tailscale_1.0.5_amd64/systemd/tailscaled.defaults

#=C2=A0 =C2=A0tailscale_1.0.5_amd64/tailscaled

#=C2=A0 =C2=A0tailscale_1.0.5_amd64/tailscale

#

# Set SRC_URI subdir to ${P} so that files are unpacked into ${S}

SRC_URI =3D "https://pkgs.tailscale.com/stable/${BPN}_${PV}_amd64.tgz;subd=
ir=3D${P}"

SRC_URI[md5sum] =3D "fad1e5317ec567b77c3a0b53b8b976cf"

SRC_URI[sha256sum] =3D "ecfcda12068d6ecb2be72eba5572ab09406643bcc73c0cd482=
ae88060720c430"

inherit systemd

FILES_${PN} +=3D "${systemd_unitdir}/*"

do_install() {

install -d ${D}/${bindir}

install -d ${D}/${sbindir}

install ${S}/${PN}_${PV}_amd64/tailscale ${D}/${bindir}/tailscale

install ${S}/${PN}_${PV}_amd64/tailscaled ${D}/${sbindir}/tailscaled

if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}=
; then

install -d ${D}${sysconfdir}/default/

install -m 0644 ${S}/${PN}_${PV}_amd64/systemd/tailscaled.defaults ${D}${s=
ysconfdir}/default/tailscaled

install -d ${D}${systemd_unitdir}/system

install -m 0644 ${S}/${PN}_${PV}_amd64/systemd/tailscaled.service ${D}${sy=
stemd_unitdir}/system/tailscaled.service

install -d ${D}${sysconfdir}/systemd/system/multi-user.target.wants/

ln -s ${systemd_unitdir}/system/tailscaled.service ${D}${sysconfdir}/syste=
md/system/multi-user.target.wants/tailscaled.service

fi

}

SYSTEMD_PACKAGES =3D "${PN}"

SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"

SYSTEMD_AUTO_ENABLE =3D "enable"

------------------------------------------------------------------------

Mike Thompson

--rTg3AYQJ74YCdITiP59w
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>A follow up on a Yocto recipe for building a Tailscale package for other=
s who have an interest in this.</p>
<p>Although the final recipe I created appears to successfully build the T=
ailscale utility and daemon without warnings or errors, the resulting 'tail=
scaled' daemon crashes when used.</p>
<p>Investigating this issue further I discovered that Tailscale maintains =
their own <a href=3D"https://github.com/tailscale/go/tree/build-56db76510f9=
640d2ad652f206ae6e41c1a5d63ca" target=3D"_blank" rel=3D"noopener">GoLang re=
pository</a> with changes needed to support Tailscale. I suspect, but haven=
't proven, using the standard Yocto supported versions of GoLang to build T=
ailscale results in the crashes I see.&nbsp; Unfortunately, I don't have en=
ough of an understanding of GoLang to determine how to build Tailscale with=
 the unique version of GoLang maintained by the Tailscale folks..</p>
<p>Instead of resolving this build issue, I instead created a Yocto recipe=
 that utilizes the <a href=3D"https://pkgs.tailscale.com/stable/#static" ta=
rget=3D"_blank" rel=3D"noopener">released binaries from Tailscale</a> to cr=
eate a Yocto package.&nbsp; This isn't ideal as I would much rather build f=
rom source, but solves my short term needs.&nbsp; This alternate recipe to =
build a Yocto package from binaries is included below.<br /><br /></p>
<p>-----------------------------------------------------------------------=
-</p>
<p>tailscale_1.0.5.bb</p>
<p>SUMMARY =3D "Tailscale client and daemon for Linux from Tailscale pre-b=
uilt binaries"</p>
<p>HOMEPAGE =3D "github.com/tailscale/tailscale"</p>
<p>SECTION =3D "net"</p>
<p>LICENSE =3D "CLOSED"</p>
<p>&nbsp;</p>
<p>COMPATIBLE_HOST =3D "x86_64.*-linux"</p>
<p>&nbsp;</p>
<p># Archive URL:</p>
<p>#&nbsp; &nbsp;https://pkgs.tailscale.com/stable/tailscale_1.0.5_amd64.t=
gz</p>
<p>#</p>
<p># Archive contents:</p>
<p>#&nbsp; &nbsp;tailscale_1.0.5_amd64/systemd</p>
<p>#&nbsp; &nbsp;tailscale_1.0.5_amd64/systemd/tailscaled.service</p>
<p>#&nbsp; &nbsp;tailscale_1.0.5_amd64/systemd/tailscaled.defaults</p>
<p>#&nbsp; &nbsp;tailscale_1.0.5_amd64/tailscaled</p>
<p>#&nbsp; &nbsp;tailscale_1.0.5_amd64/tailscale</p>
<p>#</p>
<p># Set SRC_URI subdir to ${P} so that files are unpacked into ${S}</p>
<p>SRC_URI =3D "https://pkgs.tailscale.com/stable/${BPN}_${PV}_amd64.tgz;s=
ubdir=3D${P}"</p>
<p>SRC_URI[md5sum] =3D "fad1e5317ec567b77c3a0b53b8b976cf"</p>
<p>SRC_URI[sha256sum] =3D "ecfcda12068d6ecb2be72eba5572ab09406643bcc73c0cd=
482ae88060720c430"</p>
<p>&nbsp;</p>
<p>inherit systemd</p>
<p>&nbsp;</p>
<p>FILES_${PN} +=3D "${systemd_unitdir}/*"</p>
<p>&nbsp;</p>
<p>do_install() {</p>
<p>&nbsp; &nbsp; install -d ${D}/${bindir}</p>
<p>&nbsp; &nbsp; install -d ${D}/${sbindir}</p>
<p>&nbsp; &nbsp; install ${S}/${PN}_${PV}_amd64/tailscale ${D}/${bindir}/t=
ailscale</p>
<p>&nbsp; &nbsp; install ${S}/${PN}_${PV}_amd64/tailscaled ${D}/${sbindir}=
/tailscaled</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'tr=
ue', 'false', d)}; then</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/default/</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${S}/${PN}_${PV}_amd64/syst=
emd/tailscaled.defaults ${D}${sysconfdir}/default/tailscaled</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${systemd_unitdir}/system</p=
>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -m 0644 ${S}/${PN}_${PV}_amd64/syst=
emd/tailscaled.service ${D}${systemd_unitdir}/system/tailscaled.service</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/systemd/system=
/multi-user.target.wants/</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; ln -s ${systemd_unitdir}/system/tailscaled.=
service ${D}${sysconfdir}/systemd/system/multi-user.target.wants/tailscaled=
.service</p>
<p>&nbsp; &nbsp; fi</p>
<p>}</p>
<p>&nbsp;</p>
<p>SYSTEMD_PACKAGES =3D "${PN}"</p>
<p>SYSTEMD_SERVICE_${PN} =3D "tailscaled.service"</p>
<p>&nbsp;</p>
<p>SYSTEMD_AUTO_ENABLE =3D "enable"</p>
<p>-----------------------------------------------------------------------=
-</p>
<p>&nbsp;</p>
<p>Mike Thompson</p>

--rTg3AYQJ74YCdITiP59w--
