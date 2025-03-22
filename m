Return-Path: <ndivecha@granitenet.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F96C36001
	for <webhook@archiver.kernel.org>; Sat, 22 Mar 2025 01:26:20 +0000 (UTC)
Subject: Re: [yocto] Install zabbix-proxy
To: "Gyorgy Sarvari" <skandigraun@gmail.com>, yocto@lists.yoctoproject.org
From: "Nitesh D" <ndivecha@granitenet.com>
X-Originating-Location: Troy, Michigan, US (143.59.9.147)
X-Originating-Platform: Mac Chrome 134
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Mar 2025 18:26:14 -0700
References: <b8dbe5fa-663e-4039-9c17-d93d919aa09c@gmail.com>
In-Reply-To: <b8dbe5fa-663e-4039-9c17-d93d919aa09c@gmail.com>
Message-ID: <22795.1742606774386014983@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JhKwf79GkX2EvMcE5kJ6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Mar 2025 01:26:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65006

--JhKwf79GkX2EvMcE5kJ6
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there,

So I have started my implementation but already running into an issue. My d=
istro is based on `kirkstone` branch which has Zabbix version 5.4.12 and I =
need Zabbix-proxy version 6 and above. Next stable branch for me is `Scarth=
gap` and has the right version 6.2.7. I did override by copying https://git=
.openembedded.org/meta-openembedded/tree/meta-oe/recipes-connectivity/zabbi=
x/zabbix_6.2.7.bb?h=3Dscarthgap and I was able to compile as-is without any=
 issues.

But I only need "zabbix-proxy" with sqlite3, so I created "zabbix_%.bbappen=
d" file with following:

>=20
>=20
>=20
> # Add required dependencies
>=20
>=20
>=20
> DEPENDS +=3D "sqlite3"
>=20
>=20
>=20
> # Add proxy to the list of packages
>=20
>=20
>=20
> PACKAGES +=3D "${PN}-proxy"
>=20
>=20
>=20
> # Define the files for the proxy package
>=20
>=20
>=20
> FILES:${PN}-proxy =3D "\
>=20
>=20
>=20
> ${sbindir}/zabbix_proxy \
>=20
>=20
>=20
> ${sysconfdir}/zabbix/zabbix_proxy.conf \
>=20
>=20
>=20
> ${systemd_system_unitdir}/zabbix-proxy.service \
>=20
>=20
>=20
> "
>=20
>=20
>=20
> # Add sqlite3 as a runtime dependency for the proxy
>=20
>=20
>=20
> RDEPENDS:${PN}-proxy +=3D "sqlite3"
>=20
>=20
>=20
> # Configure systemd for the proxy
>=20
>=20
>=20
> SYSTEMD_PACKAGES +=3D "${PN}-proxy"
>=20
>=20
>=20
> SYSTEMD_SERVICE:${PN}-proxy =3D "zabbix-proxy.service"
>=20
>=20
>=20
> SYSTEMD_AUTO_ENABLE:${PN}-proxy =3D "enable"
>=20
>=20
>=20
> # Add proxy configuration options
>=20
>=20
>=20
> EXTRA_OECONF +=3D " \
>=20
>=20
>=20
> --enable-proxy \
>=20
>=20
>=20
> --with-sqlite3 \
>=20
>=20
>=20
> "
>=20
>=20
>=20
> # Create proxy configuration file and systemd service
>=20
>=20
>=20
> SRC_URI +=3D "file://zabbix-proxy.service"
>=20
>=20

>=20
>=20
>=20
> do_install:append() {
>=20
>=20
>=20
> # Install zabbix proxy configuration file
>=20
>=20
>=20
> install -d ${D}${sysconfdir}/zabbix
>=20
>=20
>=20
> install -m 0644 ${S}/conf/zabbix_proxy.conf ${D}${sysconfdir}/zabbix/
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> # Install systemd service file for proxy
>=20
>=20
>=20
> if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)};
> then
>=20
>=20
>=20
> install -d ${D}${systemd_unitdir}/system
>=20
>=20
>=20
> install -m 0644 ${WORKDIR}/zabbix-proxy.service
> ${D}${systemd_unitdir}/system/
>=20
>=20
>=20
> sed -i -e 's#@SBINDIR@#${sbindir}#g'
> ${D}${systemd_unitdir}/system/zabbix-proxy.service
>=20
>=20
>=20
> fi
>=20
>=20
>=20
> }
>=20
>=20
>=20
>=20
>=20
>=20
>=20

But started to get errors:

>=20
>=20
>=20
> | checking for SSH2 support... no
>=20
>=20
>=20
> | configure: error: SSH2 library not found
>=20
>=20
>=20
> | NOTE: The following config.log files may provide further information.
>=20
>=20
>=20
> | checking for odbc_config... no
>=20
>=20
>=20
> | checking for SQLAllocHandle in -lodbc... no
>=20
>=20
>=20
> | configure: error: unixODBC library not found
>=20
>=20
>=20
> | NOTE: The following config.log files may provide further information.
>=20
>=20
>=20
> | checking for process shared libpthread support... no
>=20
>=20
>=20
> | checking for libevent support... configure: error: Unable to use
> libevent (libevent check failed)
>=20
>=20
>=20
> | NOTE: The following config.log files may provide further information.
>=20
>=20

I started adding following to EXTRA_OECONF:

>=20
>=20
>=20
> EXTRA_OECONF +=3D " \
>=20
>=20
>=20
> --enable-proxy \
>=20
>=20
>=20
> --with-sqlite3 \
>=20
>=20
>=20
> --without-unixodbc \
>=20
>=20
>=20
> --without-ssh2 \
>=20
>=20
>=20
> "
>=20
>=20

But now I'm in dead water... Any thoughts or suggestion?

Cheers,

--JhKwf79GkX2EvMcE5kJ6
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello there,&nbsp;</div>
<div>&nbsp;</div>
<div>So I have started my implementation but already running into an issue.=
 My distro is based on `kirkstone` branch which has Zabbix version 5.4.12 a=
nd I need Zabbix-proxy version 6 and above. Next stable branch for me is `S=
carthgap` and has the right version 6.2.7. I did override by copying <a hre=
f=3D"https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-co=
nnectivity/zabbix/zabbix_6.2.7.bb?h=3Dscarthgap" target=3D"_blank" rel=3D"n=
oopener">https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipe=
s-connectivity/zabbix/zabbix_6.2.7.bb?h=3Dscarthgap</a> and I was able to c=
ompile as-is without any issues.&nbsp;</div>
<div>&nbsp;</div>
<div>But I only need "zabbix-proxy" with sqlite3, so I created "zabbix_%.bb=
append" file with following:</div>
<div>&nbsp;</div>
<div>
<blockquote>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Add require=
d dependencies</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">DEPENDS +=3D =
"sqlite3"</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Add proxy t=
o the list of packages</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">PACKAGES +=3D=
 "${PN}-proxy"</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Define the =
files for the proxy package</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">FILES:${PN}-p=
roxy =3D "\</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>${sbindir}/zabbix_proxy \</=
span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>${sysconfdir}/zabbix/zabbix=
_proxy.conf \</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>${systemd_system_unitdir}/z=
abbix-proxy.service \</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">"</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Add sqlite3=
 as a runtime dependency for the proxy</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">RDEPENDS:${PN=
}-proxy +=3D "sqlite3"</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Configure s=
ystemd for the proxy</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">SYSTEMD_PACKA=
GES +=3D "${PN}-proxy"</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">SYSTEMD_SERVI=
CE:${PN}-proxy =3D "zabbix-proxy.service"</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">SYSTEMD_AUTO_=
ENABLE:${PN}-proxy =3D "enable"</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Add proxy c=
onfiguration options</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">EXTRA_OECONF =
+=3D " \</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--enable-proxy \</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--with-sqlite3 \</span></p>
<p class=3D"p2"><span style=3D"font-size: 12px;"><span class=3D"s1">"</span=
><span class=3D"s1"></span></span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"># Create prox=
y configuration file and systemd service</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;">SRC_URI +=3D =
"file://zabbix-proxy.service"</span></p>
</blockquote>
</div>
<blockquote>
<div>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">do_install:ap=
pend() {</span></p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span># Install zabbix proxy conf=
iguration file</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>install -d ${D}${sysconfdir=
}/zabbix</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>install -m 0644 ${S}/conf/z=
abbix_proxy.conf ${D}${sysconfdir}/zabbix/</span></p>
<p class=3D"p3">&nbsp;</p>
<p class=3D"p2"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span># Install systemd service f=
ile for proxy</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>if ${@bb.utils.contains('DI=
STRO_FEATURES','systemd','true','false',d)}; then</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; </span>install -d ${=
D}${systemd_unitdir}/system</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; </span>install -m 06=
44 ${WORKDIR}/zabbix-proxy.service ${D}${systemd_unitdir}/system/</span></p=
>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; &nbsp; &nbsp; </span>sed -i -e 's#=
@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/zabbix-proxy.service<=
/span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>fi</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">}</span></p>
<p class=3D"p1">&nbsp;</p>
</div>
</blockquote>
<div>But started to get errors:</div>
<div>
<blockquote>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| checking fo=
r SSH2 support... no</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| configure: =
error: SSH2 library not found</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| NOTE: The f=
ollowing config.log files may provide further information.</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| checking fo=
r odbc_config... no</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| checking fo=
r SQLAllocHandle in -lodbc... no</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| configure: =
error: unixODBC library not found</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| NOTE: The f=
ollowing config.log files may provide further information.</span></p>
<p class=3D"p1"><span class=3D"s1">|<span style=3D"font-size: 12px;"> check=
ing for process shared libpthread support... no</span></span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| checking fo=
r libevent support... configure: error: Unable to use libevent (libevent ch=
eck failed)</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">| NOTE: The f=
ollowing config.log files may provide further information.</span></p>
</blockquote>
</div>
<div>I started adding following to EXTRA_OECONF:</div>
<div>
<blockquote>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">EXTRA_OECONF =
+=3D " \</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--enable-proxy \</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--with-sqlite3 \</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--without-unixodbc \</span>=
</p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;"><span class=
=3D"Apple-converted-space">&nbsp; &nbsp; </span>--without-ssh2 \</span></p>
<p class=3D"p1"><span class=3D"s1" style=3D"font-size: 12px;">"</span></p>
</blockquote>
</div>
<div>But now I'm in dead water... Any thoughts or suggestion?&nbsp;</div>
<div>&nbsp;</div>
<div>Cheers,&nbsp;</div>

--JhKwf79GkX2EvMcE5kJ6--

