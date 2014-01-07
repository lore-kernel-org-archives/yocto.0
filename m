Return-Path: <reeve.yang@gmail.com>
Received: from mail-la0-f42.google.com (mail-la0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 930D1E0084B
	for <yocto@yoctoproject.org>; Mon,  6 Jan 2014 16:19:29 -0800 (PST)
Received: by mail-la0-f42.google.com with SMTP id ec20so10486628lab.1
	for <yocto@yoctoproject.org>; Mon, 06 Jan 2014 16:19:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=/cxkTT+6Oa5YSSgMDb0jG4JYiVMhAo6DIAISy3W9RgU=;
	b=RtoL0AREbjo5zcE5UAgNExeeqLZPEljL+7nHI7W2/eVmqBtxussaN2n/4/HACPj6TK
	+yGPiyW+ch9ZUwZ3dhgUt9+4DddWX14CmGdUHwgmu305v3QmZ8R6QiGrPWwtklYUMiE2
	s+UfWvpTND3wmJjSfdAbohdOaMKH1jTePHdg1ZqhQqcp9wzlt19yIwlYCJHMAq+eu/rI
	EdigLhuygFciSa6fKNuVG+G5t2c8AhTpKMLJMvNMiIg8sFWgMCAUuae0BrvbReS2Btb6
	Z+VlyqbGgLLZTKS/Oy8ozxS0g/yvtFDGRr3qGOkBsIIZdqCAvWT/AoFwdKSMsuoFVTws
	f5jw==
MIME-Version: 1.0
X-Received: by 10.112.138.98 with SMTP id qp2mr1354294lbb.82.1389053968057;
	Mon, 06 Jan 2014 16:19:28 -0800 (PST)
Received: by 10.152.25.137 with HTTP; Mon, 6 Jan 2014 16:19:28 -0800 (PST)
Date: Mon, 6 Jan 2014 16:19:28 -0800
Message-ID: <CAGNTBAXK-0hqLbyxdRo7RfS6MkPfxP+etmx0bE=P9vjF91tTgQ@mail.gmail.com>
From: Reeve Yang <reeve.yang@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem & Question about FILES_${PN}
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 07 Jan 2014 00:19:31 -0000
Content-Type: multipart/alternative; boundary=089e0116049e5707bc04ef565480

--089e0116049e5707bc04ef565480
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm facing a wearied issue while packaging syslog-ng ported from OE. (I
added meta-openembedded as a sub-module and use the recipe files from it
directly).

In my yocto build I enabled multi-lib for both 32-bits and 64-bits, default
tune is 64-bits. The libraries are installed under /usr/lib64. As you know,
syslog-ng_3.2.5 has plugin and I installed them under /usr/lib64/syslog-ng,
and add that path into FILES_${PN}:

FILES_${PN} = "${bindir}/* ${sbindir}/* ${libexecdir}/*
${libdir}/lib*${SOLIBS} \
    ${sysconfdir} ${sharedstatedir} ${localstatedir} \
    ${base_bindir}/* ${base_sbindir}/* \
    ${base_libdir}/*${SOLIBS} \
    ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \
    ${datadir}/include/scl/ ${datadir}/xsd"

 ${libdir}/${BPN}/*${SOLIBSDEV} is expanded as /usr/lib64/syslog-ng/*.so.
The funny thing is, the sys-log rpm doesn't have those files (I used rpm as
packaging scheme). I checked the generated spec file during "do_package",
those files are not added as "%files" for package "syslog-ng". I'm pretty
sure the files are installed.

My question is, why "FIELS_${PN}" is not effective for syslog-ng
particularly? How to control the spec if it's not? Attached is the
syslog-ng recipe file.

Thanks.
- Reeve

DESCRIPTION = "Alternative system logger daemon"
DEPENDS = "libol flex eventlog glib-2.0"
LICENSE = "GPL LGPL"
LIC_FILES_CHKSUM = "file://COPYING;md5=7ec1bcc46f28b11f4722e20d9b7dd4d5"

# syslog initscript is handled explicitly because order of
# update-rc.d and update-alternatives is important
RDEPENDS_${PN} += " ${@base_conditional("ONLINE_PACKAGE_MANAGEMENT",
"none", "", "update-rc.d", d)}"

INC_PR = "r12"

inherit autotools systemd

SRC_URI = "
http://www.balabit.com/downloads/files/syslog-ng/sources/${PV}/source/${PN}_${PV}.tar.gz
"

noipv6 = "${@base_contains('DISTRO_FEATURES', 'ipv6', '', '--disable-ipv6',
d)}"

EXTRA_OECONF = " \
    --with-libnet=${STAGING_BINDIR_CROSS} \
    --enable-dynamic-linking \
    ${noipv6} \
    --enable-ssl \
    --disable-sub-streams \
    --disable-pacct \
    --disable-linux-caps \
    --disable-pcre \
    --disable-sql \
"

EXTRA_OECONF += "${@base_contains('DISTRO_FEATURES', 'systemd',
'--with-systemdsystemunitdir=${systemd_unitdir}/system/',
'--without-systemdsystemunitdir', d)}"
EXTRA_OECONF += "${@base_contains('DISTRO_FEATURES', 'systemd',
'--enable-systemd', '--disable-systemd', d)}"

do_configure_prepend() {
    eval "${@base_contains('DISTRO_FEATURES', 'largefile', '', 'sed -i -e
"s/-D_LARGEFILE_SOURCE//" -e "s/-D_FILE_OFFSET_BITS=64//" ${S}/configure.in',
d)}"
}

# rename modules.conf because it breaks update-modules
# see
http://lists.linuxtogo.org/pipermail/openembedded-devel/2011-October/035537.html
do_install_append() {
    mv ${D}/${sysconfdir}/modules.conf ${D}/${sysconfdir}/scl-modules.conf
    sed -i "s#@include 'modules.conf'#@include 'scl-modules.conf'#g"
${D}/${sysconfdir}/scl.conf
    install -d ${D}/${sysconfdir}/${PN}
    install ${WORKDIR}/syslog-ng.conf ${D}${sysconfdir}/${PN}/${PN}.conf
    rm -rf ${D}${sysconfdir}/${PN}.conf
    install -d ${D}/${sysconfdir}/init.d
    install -m 755 ${WORKDIR}/initscript
${D}/${sysconfdir}/init.d/syslog.${PN}
    mv ${D}/usr/lib/${PN} ${D}/${libdir}
    rm -rf ${D}/usr/lib
}

FILES_${PN} = "${bindir}/* ${sbindir}/* ${libexecdir}/*
${libdir}/lib*${SOLIBS} \
    ${sysconfdir} ${sharedstatedir} ${localstatedir} \
    ${base_bindir}/* ${base_sbindir}/* \
    ${base_libdir}/*${SOLIBS} \
    ${datadir}/${BPN} ${libdir}/${BPN}/*${SOLIBSDEV} \
    ${datadir}/include/scl/ ${datadir}/xsd"
FILES_${PN}-dev += "${libdir}/${BPN}/lib*.la ${libdir}/${BPN}/*${SOLIBSDEV}"
CONFFILES_${PN} = "${sysconfdir}/${PN}/${PN}.conf ${sysconfdir}/scl.conf
${sysconfdir}/scl-modules.conf"

RPROVIDES_${PN} += "${PN}-systemd"
RREPLACES_${PN} += "${PN}-systemd"
RCONFLICTS_${PN} += "${PN}-systemd"
SYSTEMD_SERVICE_${PN} = "${PN}.service"

pkg_postinst_${PN} () {
    /etc/init.d/syslog stop
    update-alternatives --install ${sysconfdir}/init.d/syslog syslog-init
syslog.${PN} 200

    if test "x$D" != "x"; then
        OPT="-r $D"
    else
        OPT="-s"
    fi
    # remove all rc.d-links potentially created from alternative
    # syslog packages before creating new ones
    update-rc.d $OPT -f syslog remove
    update-rc.d $OPT syslog start 20 2 3 4 5 . stop 90 0 1 6 .
}

pkg_prerm_${PN} () {
    if test "x$D" = "x"; then
        if test "$1" = "upgrade" -o "$1" = "remove"; then
            /etc/init.d/syslog stop
        fi
    fi

    update-alternatives --remove syslog-init syslog.${PN}
}

pkg_postrm_${PN} () {
    if test "x$D" != "x"; then
        OPT="-r $D"
    else
        OPT=""
    fi
    if test "$1" = "remove" -o "$1" = "purge"; then
        if ! test -e "/etc/init.d/syslog"; then
            update-rc.d $OPT syslog remove
        fi
    fi
}

--089e0116049e5707bc04ef565480
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>I&#39;m facing a wearied issue =
while packaging syslog-ng ported from OE. (I added meta-openembedded as a s=
ub-module and use the recipe files from it directly).=A0</div><div><br></di=
v>
<div>In my yocto build I enabled multi-lib for both 32-bits and 64-bits, de=
fault tune is 64-bits. The libraries are installed under /usr/lib64. As you=
 know, syslog-ng_3.2.5 has plugin and I installed them under /usr/lib64/sys=
log-ng, and add that path into FILES_${PN}:</div>
<div><br></div><div><div>FILES_${PN} =3D &quot;${bindir}/* ${sbindir}/* ${l=
ibexecdir}/* ${libdir}/lib*${SOLIBS} \</div><div>=A0 =A0 ${sysconfdir} ${sh=
aredstatedir} ${localstatedir} \</div><div>=A0 =A0 ${base_bindir}/* ${base_=
sbindir}/* \</div>
<div>=A0 =A0 ${base_libdir}/*${SOLIBS} \</div><div>=A0 =A0 ${datadir}/${BPN=
} ${libdir}/${BPN}/*${SOLIBSDEV} \</div><div>=A0 =A0 ${datadir}/include/scl=
/ ${datadir}/xsd&quot;</div></div><div><br></div><div>=A0${libdir}/${BPN}/*=
${SOLIBSDEV} is expanded as /usr/lib64/syslog-ng/*.so. The funny thing is, =
the sys-log rpm doesn&#39;t have those files (I used rpm as packaging schem=
e). I checked the generated spec file during &quot;do_package&quot;, those =
files are not added as &quot;%files&quot; for package &quot;syslog-ng&quot;=
. I&#39;m pretty sure the files are installed.<br>
</div><div><br></div><div>My question is, why &quot;FIELS_${PN}&quot; is no=
t effective for syslog-ng particularly? How to control the spec if it&#39;s=
 not? Attached is the syslog-ng recipe file.</div><div><br></div><div>Thank=
s.</div>
<div>- Reeve</div><div><br></div><div><div>DESCRIPTION =3D &quot;Alternativ=
e system logger daemon&quot;</div><div>DEPENDS =3D &quot;libol flex eventlo=
g glib-2.0&quot;</div><div>LICENSE =3D &quot;GPL LGPL&quot;</div><div>LIC_F=
ILES_CHKSUM =3D &quot;file://COPYING;md5=3D7ec1bcc46f28b11f4722e20d9b7dd4d5=
&quot;</div>
<div><br></div><div># syslog initscript is handled explicitly because order=
 of</div><div># update-rc.d and update-alternatives is important</div><div>=
RDEPENDS_${PN} +=3D &quot; ${@base_conditional(&quot;ONLINE_PACKAGE_MANAGEM=
ENT&quot;, &quot;none&quot;, &quot;&quot;, &quot;update-rc.d&quot;, d)}&quo=
t;</div>
<div><br></div><div>INC_PR =3D &quot;r12&quot;</div><div><br></div><div>inh=
erit autotools systemd</div><div><br></div><div>SRC_URI =3D &quot;<a href=
=3D"http://www.balabit.com/downloads/files/syslog-ng/sources/${PV}/source/$=
{PN}_${PV}.tar.gz">http://www.balabit.com/downloads/files/syslog-ng/sources=
/${PV}/source/${PN}_${PV}.tar.gz</a>&quot;</div>
<div><br></div><div>noipv6 =3D &quot;${@base_contains(&#39;DISTRO_FEATURES&=
#39;, &#39;ipv6&#39;, &#39;&#39;, &#39;--disable-ipv6&#39;, d)}&quot;</div>=
<div><br></div><div>EXTRA_OECONF =3D &quot; \</div><div>=A0 =A0 --with-libn=
et=3D${STAGING_BINDIR_CROSS} \</div>
<div>=A0 =A0 --enable-dynamic-linking \</div><div>=A0 =A0 ${noipv6} \</div>=
<div>=A0 =A0 --enable-ssl \</div><div>=A0 =A0 --disable-sub-streams \</div>=
<div>=A0 =A0 --disable-pacct \</div><div>=A0 =A0 --disable-linux-caps \</di=
v><div>=A0 =A0 --disable-pcre \</div>
<div>=A0 =A0 --disable-sql \</div><div>&quot;</div><div><br></div><div>EXTR=
A_OECONF +=3D &quot;${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;system=
d&#39;, &#39;--with-systemdsystemunitdir=3D${systemd_unitdir}/system/&#39;,=
 &#39;--without-systemdsystemunitdir&#39;, d)}&quot;</div>
<div>EXTRA_OECONF +=3D &quot;${@base_contains(&#39;DISTRO_FEATURES&#39;, &#=
39;systemd&#39;, &#39;--enable-systemd&#39;, &#39;--disable-systemd&#39;, d=
)}&quot;</div><div><br></div><div>do_configure_prepend() {</div><div>=A0 =
=A0 eval &quot;${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;largefile&#=
39;, &#39;&#39;, &#39;sed -i -e &quot;s/-D_LARGEFILE_SOURCE//&quot; -e &quo=
t;s/-D_FILE_OFFSET_BITS=3D64//&quot; ${S}/<a href=3D"http://configure.in">c=
onfigure.in</a>&#39;, d)}&quot;</div>
<div>}</div><div><br></div><div># rename modules.conf because it breaks upd=
ate-modules=A0</div><div># see <a href=3D"http://lists.linuxtogo.org/piperm=
ail/openembedded-devel/2011-October/035537.html">http://lists.linuxtogo.org=
/pipermail/openembedded-devel/2011-October/035537.html</a></div>
<div>do_install_append() {</div><div>=A0 =A0 mv ${D}/${sysconfdir}/modules.=
conf ${D}/${sysconfdir}/scl-modules.conf</div><div>=A0 =A0 sed -i &quot;s#@=
include &#39;modules.conf&#39;#@include &#39;scl-modules.conf&#39;#g&quot; =
${D}/${sysconfdir}/scl.conf</div>
<div>=A0 =A0 install -d ${D}/${sysconfdir}/${PN}</div><div>=A0 =A0 install =
${WORKDIR}/syslog-ng.conf ${D}${sysconfdir}/${PN}/${PN}.conf</div><div>=A0 =
=A0 rm -rf ${D}${sysconfdir}/${PN}.conf</div><div>=A0 =A0 install -d ${D}/$=
{sysconfdir}/init.d</div>
<div>=A0 =A0 install -m 755 ${WORKDIR}/initscript ${D}/${sysconfdir}/init.d=
/syslog.${PN}</div><div>=A0 =A0 mv ${D}/usr/lib/${PN} ${D}/${libdir}</div><=
div>=A0 =A0 rm -rf ${D}/usr/lib</div><div>}</div><div><br></div><div>FILES_=
${PN} =3D &quot;${bindir}/* ${sbindir}/* ${libexecdir}/* ${libdir}/lib*${SO=
LIBS} \</div>
<div>=A0 =A0 ${sysconfdir} ${sharedstatedir} ${localstatedir} \</div><div>=
=A0 =A0 ${base_bindir}/* ${base_sbindir}/* \</div><div>=A0 =A0 ${base_libdi=
r}/*${SOLIBS} \</div><div>=A0 =A0 ${datadir}/${BPN} ${libdir}/${BPN}/*${SOL=
IBSDEV} \</div>
<div>=A0 =A0 ${datadir}/include/scl/ ${datadir}/xsd&quot;</div><div>FILES_$=
{PN}-dev +=3D &quot;${libdir}/${BPN}/lib*.la ${libdir}/${BPN}/*${SOLIBSDEV}=
&quot;</div><div>CONFFILES_${PN} =3D &quot;${sysconfdir}/${PN}/${PN}.conf $=
{sysconfdir}/scl.conf ${sysconfdir}/scl-modules.conf&quot;</div>
<div><br></div><div>RPROVIDES_${PN} +=3D &quot;${PN}-systemd&quot;</div><di=
v>RREPLACES_${PN} +=3D &quot;${PN}-systemd&quot;</div><div>RCONFLICTS_${PN}=
 +=3D &quot;${PN}-systemd&quot;</div><div>SYSTEMD_SERVICE_${PN} =3D &quot;$=
{PN}.service&quot;</div>
<div><br></div><div>pkg_postinst_${PN} () {</div><div>=A0 =A0 /etc/init.d/s=
yslog stop</div><div>=A0 =A0 update-alternatives --install ${sysconfdir}/in=
it.d/syslog syslog-init syslog.${PN} 200</div><div><br></div><div>=A0 =A0 i=
f test &quot;x$D&quot; !=3D &quot;x&quot;; then</div>
<div>=A0 =A0 =A0 =A0 OPT=3D&quot;-r $D&quot;</div><div>=A0 =A0 else</div><d=
iv>=A0 =A0 =A0 =A0 OPT=3D&quot;-s&quot;</div><div>=A0 =A0 fi</div><div>=A0 =
=A0 # remove all rc.d-links potentially created from alternative</div><div>=
=A0 =A0 # syslog packages before creating new ones</div>
<div>=A0 =A0 update-rc.d $OPT -f syslog remove</div><div>=A0 =A0 update-rc.=
d $OPT syslog start 20 2 3 4 5 . stop 90 0 1 6 .</div><div>}</div><div><br>=
</div><div>pkg_prerm_${PN} () {</div><div>=A0 =A0 if test &quot;x$D&quot; =
=3D &quot;x&quot;; then</div>
<div>=A0 =A0 =A0 =A0 if test &quot;$1&quot; =3D &quot;upgrade&quot; -o &quo=
t;$1&quot; =3D &quot;remove&quot;; then</div><div>=A0 =A0 =A0 =A0 =A0 =A0 /=
etc/init.d/syslog stop</div><div>=A0 =A0 =A0 =A0 fi</div><div>=A0 =A0 fi</d=
iv><div><br></div><div>=A0 =A0 update-alternatives --remove syslog-init sys=
log.${PN}</div>
<div>}</div><div><br></div><div>pkg_postrm_${PN} () {</div><div>=A0 =A0 if =
test &quot;x$D&quot; !=3D &quot;x&quot;; then</div><div>=A0 =A0 =A0 =A0 OPT=
=3D&quot;-r $D&quot;</div><div>=A0 =A0 else</div><div>=A0 =A0 =A0 =A0 OPT=
=3D&quot;&quot;</div><div>=A0 =A0 fi</div>
<div>=A0 =A0 if test &quot;$1&quot; =3D &quot;remove&quot; -o &quot;$1&quot=
; =3D &quot;purge&quot;; then</div><div>=A0 =A0 =A0 =A0 if ! test -e &quot;=
/etc/init.d/syslog&quot;; then</div><div>=A0 =A0 =A0 =A0 =A0 =A0 update-rc.=
d $OPT syslog remove</div>
<div>=A0 =A0 =A0 =A0 fi</div><div>=A0 =A0 fi</div><div>}</div></div><div><b=
r></div></div>

--089e0116049e5707bc04ef565480--
