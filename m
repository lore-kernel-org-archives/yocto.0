Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23B6EC4332F
	for <webhook@archiver.kernel.org>; Wed, 13 Dec 2023 14:39:53 +0000 (UTC)
Subject: Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Dec 2023 06:39:45 -0800
Message-ID: <ZewZ.1702478385086388932.zVsO@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="msw6d93zajRdCFhTSsUj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Dec 2023 14:39:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61877

--msw6d93zajRdCFhTSsUj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've build a Yocto recipe to be used on a Raspberry Pi Zero W, have build i=
t and save to a SD Card. My recipe has the following layers:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/qu=
adfloor/release_1/src/poky/meta=C2=A0 =C2=A05
meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/re=
lease_1/src/poky/meta-poky=C2=A0 5
meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/pok=
y/meta-yocto-bsp=C2=A0 5
meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadflo=
or/release_1/src/meta-openembedded/meta-oe=C2=A0 5
meta-python=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/release=
_1/src/meta-openembedded/meta-python=C2=A0 5
meta-multimedia=C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/release_1/src/met=
a-openembedded/meta-multimedia=C2=A0 5
meta-networking=C2=A0 =C2=A0 =C2=A0 =C2=A0/home/quadfloor/release_1/src/met=
a-openembedded/meta-networking=C2=A0 5
meta-raspberrypi=C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/meta-ras=
pberrypi=C2=A0 9
meta-mender-core=C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/meta-men=
der/meta-mender-core=C2=A0 6
meta-mender-raspberrypi=C2=A0 /home/quadfloor/release_1/src/meta-mender/met=
a-mender-raspberrypi=C2=A0 10
meta-stargazer=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/quadfloor/release_1/src/met=
a-stargazer=C2=A0 6

The meta-stargazer has the custom network configuration:

meta-stargazer/conf$ cat layer.conf
# We have a conf and classes directory, add to BBPATH
BBPATH .=3D ":${LAYERDIR}"

# We have recipes-* directories, add to BBFILES
BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
${LAYERDIR}/recipes-*/*/*.bbappend"

BBFILE_COLLECTIONS +=3D "meta-stargazer"
BBFILE_PATTERN_meta-stargazer =3D "^${LAYERDIR}/"
BBFILE_PRIORITY_meta-stargazer =3D "6"

LAYERDEPENDS_meta-stargazer =3D "core"
LAYERSERIES_COMPAT_meta-stargazer =3D "kirkstone"

meta-stargazer/recipes-core$ cat systemd/systemd_%.bbappend
PACKAGECONFIG:append =3D " networkd resolved"
RDEPENDS:${PN}:append =3D " wpa-supplicant "

meta-stargazer/recipes-core$ cat systemd-conf/systemd-conf_%.bbappend
FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D " file://eth.network file://en.network file://wlan.network "

FILES:${PN} +=3D " ${sysconfdir}/systemd/network/eth.network ${sysconfdir}/=
systemd/network/en.network ${sysconfdir}/systemd/network/wlan.network "

do_install:append() {
install -d ${D}${sysconfdir}/systemd/network
install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/network
install -m 0644 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/network
install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/network
}

meta-stargazer/recipes-core$ cat systemd-conf/files/wlan.network
[Match]
Name=3Dwlan*
KernelCommandLine=3D!nfsroot

[Network]
DHCP=3Dv4

[DHCPv4]
UseHostname=3Dfalse

meta-stargazer/recipes-core$ cat systemd-conf/files/en.network
[Match]
Name=3Den*
KernelCommandLine=3D!nfsroot

[Network]
DHCP=3Dv4

[DHCPv4]
UseHostname=3Dfalse

meta-stargazer/recipes-core$ cat systemd-conf/files/eth.network
[Match]
Name=3Deth*
KernelCommandLine=3D!nfsroot

[Network]
DHCP=3Dv4

[DHCPv4]
UseHostname=3Dfalse

When I boot the Raspi, there are no error messages related to wlan in the l=
og ("dmesg | cat wlan" shows nothing), but when I issue ifconfig -a, I find=
 only the lo interface.

There are several posts on Raspi forum regarding updating the RaspiOS to so=
lve that, but I don't know how to handle that on Yocto. I'm stuck with no n=
etwork connection so any help is very much appreciated.

--msw6d93zajRdCFhTSsUj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I've build a Yocto recipe to be used on a Raspberry Pi Zero W, have build i=
t and save to a SD Card. My recipe has the following layers:<br /><br />
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div>
<div>meta&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; /ho=
me/quadfloor/release_1/src/poky/meta&nbsp; &nbsp;5</div>
<div>meta-poky&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/home/quadflo=
or/release_1/src/poky/meta-poky&nbsp; 5</div>
<div>meta-yocto-bsp&nbsp; &nbsp; &nbsp; &nbsp; /home/quadfloor/release_1/sr=
c/poky/meta-yocto-bsp&nbsp; 5</div>
<div>meta-oe&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/home/qu=
adfloor/release_1/src/meta-openembedded/meta-oe&nbsp; 5</div>
<div>meta-python&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;/home/quadfloor/re=
lease_1/src/meta-openembedded/meta-python&nbsp; 5</div>
<div>meta-multimedia&nbsp; &nbsp; &nbsp; &nbsp;/home/quadfloor/release_1/sr=
c/meta-openembedded/meta-multimedia&nbsp; 5</div>
<div>meta-networking&nbsp; &nbsp; &nbsp; &nbsp;/home/quadfloor/release_1/sr=
c/meta-openembedded/meta-networking&nbsp; 5</div>
<div>meta-raspberrypi&nbsp; &nbsp; &nbsp; /home/quadfloor/release_1/src/met=
a-raspberrypi&nbsp; 9</div>
<div>meta-mender-core&nbsp; &nbsp; &nbsp; /home/quadfloor/release_1/src/met=
a-mender/meta-mender-core&nbsp; 6</div>
<div>meta-mender-raspberrypi&nbsp; /home/quadfloor/release_1/src/meta-mende=
r/meta-mender-raspberrypi&nbsp; 10</div>
<div>meta-stargazer&nbsp; &nbsp; &nbsp; &nbsp; /home/quadfloor/release_1/sr=
c/meta-stargazer&nbsp; 6<br /><br />The meta-stargazer has the custom netwo=
rk configuration:<br /><br />
<div>meta-stargazer/conf$ cat layer.conf</div>
<div># We have a conf and classes directory, add to BBPATH</div>
<div>BBPATH .=3D ":${LAYERDIR}"</div>
<div>&nbsp;</div>
<div># We have recipes-* directories, add to BBFILES</div>
<div>BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ${LAYERDIR}/recipes-*/*/*.bb=
append"</div>
<div>&nbsp;</div>
<div>BBFILE_COLLECTIONS +=3D "meta-stargazer"</div>
<div>BBFILE_PATTERN_meta-stargazer =3D "^${LAYERDIR}/"</div>
<div>BBFILE_PRIORITY_meta-stargazer =3D "6"</div>
<div>&nbsp;</div>
<div>LAYERDEPENDS_meta-stargazer =3D "core"</div>
<div>LAYERSERIES_COMPAT_meta-stargazer =3D "kirkstone"<br /><br />
<div>meta-stargazer/recipes-core$ cat systemd/systemd_%.bbappend</div>
<div>PACKAGECONFIG:append =3D " networkd resolved"</div>
<div>RDEPENDS:${PN}:append =3D " wpa-supplicant "<br /><br />
<div>meta-stargazer/recipes-core$ cat systemd-conf/systemd-conf_%.bbappend<=
/div>
<div>FILESEXTRAPATHS:prepend :=3D "${THISDIR}/files:"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D " file://eth.network file://en.network file://wlan.networ=
k "</div>
<div>&nbsp;</div>
<div>FILES:${PN} +=3D " ${sysconfdir}/systemd/network/eth.network ${sysconf=
dir}/systemd/network/en.network ${sysconfdir}/systemd/network/wlan.network =
"</div>
<div>&nbsp;</div>
<div>do_install:append() {</div>
<div>install -d ${D}${sysconfdir}/systemd/network</div>
<div>install -m 0644 ${WORKDIR}/eth.network ${D}${sysconfdir}/systemd/netwo=
rk</div>
<div>install -m 0644 ${WORKDIR}/en.network ${D}${sysconfdir}/systemd/networ=
k</div>
<div>install -m 0644 ${WORKDIR}/wlan.network ${D}${sysconfdir}/systemd/netw=
ork</div>
<div>}<br /><br />
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/wlan.network</div>
<div>[Match]</div>
<div>Name=3Dwlan*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>&nbsp;</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>&nbsp;</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br /><br />
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/en.network</div>
<div>[Match]</div>
<div>Name=3Den*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>&nbsp;</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>&nbsp;</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br /><br />
<div>meta-stargazer/recipes-core$ cat systemd-conf/files/eth.network</div>
<div>[Match]</div>
<div>Name=3Deth*</div>
<div>KernelCommandLine=3D!nfsroot</div>
<div>&nbsp;</div>
<div>[Network]</div>
<div>DHCP=3Dv4</div>
<div>&nbsp;</div>
<div>[DHCPv4]</div>
<div>UseHostname=3Dfalse<br /><br /><br />When I boot the Raspi, there are =
no error messages related to wlan in the log ("dmesg | cat wlan" shows noth=
ing), but when I issue ifconfig -a, I find only the lo interface.<br /><br =
/>There are several posts on Raspi forum regarding updating the RaspiOS to =
solve that, but I don't know how to handle that on Yocto. I'm stuck with no=
 network connection so any help is very much appreciated.&nbsp;&nbsp;</div>
</div>
</div>
</div>
</div>
</div>
</div>

--msw6d93zajRdCFhTSsUj--

