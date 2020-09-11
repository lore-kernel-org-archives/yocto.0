Subject: Re: #yocto - mongodb files missing
To: yocto@lists.yoctoproject.org
From: srijan.nandi@gmail.com
X-Originating-Location: Ahmedabad, Gujarat, IN (14.102.160.178)
X-Originating-Platform: Mac Safari 13.1
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Sep 2020 01:25:13 -0700
References: <CAB2nKc-Yzdkfi50JCw_LUmXDh3ZET+2bpEY1BRjFP30qGLPstQ@mail.gmail.com>
In-Reply-To: <CAB2nKc-Yzdkfi50JCw_LUmXDh3ZET+2bpEY1BRjFP30qGLPstQ@mail.gmail.com>
Message-ID: <22857.1599812713820570273@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="WrGYOAGV9cJ2K9woPtUb"

--WrGYOAGV9cJ2K9woPtUb
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, Vincent.

I was finally able to make a .bbappend file and here is what I have made.

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"

SRC_URI +=3D "file://mongod \
file://mongod.service \
file://mongod.conf \
"

inherit systemd useradd

USERADD_PACKAGES =3D "${PN}"
GROUPADD_PACKAGES =3D "${PN}"
GROUPADD_PARAM_${PN} =3D "${PN}"
USERADD_PARAM_${PN} =3D " \
--system --no-create-home \
--shell /bin/false \
-g ${PN} \
${PN}"

SYSTEMD_SERVICE_${PN} =3D "mongod.service"
SYSTEMD_AUTO_ENABLE =3D "enable"

do_install_append() {
install -d ${D}${sysconfdir}
install -d ${D}${localstatedir} ${D}${localstatedir}/log ${D}${localstated=
ir}/log/mongodb
chown -R mongodb:mongodb ${D}${localstatedir}/log/mongodb
install -d ${D}${sysconfdir}/sysconfig
install -c -m 0644 ${WORKDIR}/mongod.conf ${D}${sysconfdir}
chown mongodb:mongodb ${D}${sysconfdir}/mongod.conf
install -c -m 0644 ${WORKDIR}/mongod ${D}${sysconfdir}/sysconfig
chown mongodb:mongodb ${D}${sysconfdir}/sysconfig/mongod
install -d ${D}${localstatedir} ${D}${localstatedir}/lib ${D}${localstated=
ir}/lib/mongodb
chown -R mongodb:mongodb ${D}${localstatedir}/lib/mongodb

if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}=
; then
install -d ${D}${systemd_system_unitdir}
install -c -m 0644 ${WORKDIR}/mongod.service ${D}${systemd_system_unitdir}
fi
}

Thanks and Regards,
-=3DSrijan Nandi

--WrGYOAGV9cJ2K9woPtUb
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank you, Vincent.<br /><br />I was finally able to make a .bbappend file =
and here is what I have made.<br /><br />
<div>FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D "file://mongod \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://mongod.service \</di=
v>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file://mongod.conf \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;"</div>
<div>&nbsp;</div>
<div>inherit systemd useradd</div>
<div>&nbsp;</div>
<div>USERADD_PACKAGES =3D "${PN}"</div>
<div>GROUPADD_PACKAGES =3D "${PN}"</div>
<div>GROUPADD_PARAM_${PN} =3D "${PN}"</div>
<div>USERADD_PARAM_${PN} =3D " \</div>
<div>&nbsp; &nbsp; --system --no-create-home \</div>
<div>&nbsp; &nbsp; --shell /bin/false \</div>
<div>&nbsp; &nbsp; -g ${PN} \</div>
<div>&nbsp; &nbsp; ${PN}"</div>
<div>&nbsp;</div>
<div>SYSTEMD_SERVICE_${PN} =3D "mongod.service"</div>
<div>SYSTEMD_AUTO_ENABLE =3D "enable"</div>
<div>&nbsp;</div>
<div>do_install_append() {</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${localstatedir} ${D}${loc=
alstatedir}/log ${D}${localstatedir}/log/mongodb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; chown -R mongodb:mongodb ${D}${localstate=
dir}/log/mongodb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${sysconfdir}/sysconfig</d=
iv>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -c -m 0644 ${WORKDIR}/mongod.conf=
 ${D}${sysconfdir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; chown mongodb:mongodb ${D}${sysconfdir}/m=
ongod.conf</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -c -m 0644 ${WORKDIR}/mongod ${D}=
${sysconfdir}/sysconfig</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; chown mongodb:mongodb ${D}${sysconfdir}/s=
ysconfig/mongod</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${localstatedir} ${D}${loc=
alstatedir}/lib ${D}${localstatedir}/lib/mongodb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; chown -R mongodb:mongodb ${D}${localstate=
dir}/lib/mongodb</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if ${@bb.utils.contains('DISTRO_FEATURES'=
, 'systemd', 'true', 'false', d)}; then</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -d ${D}${systemd_sy=
stem_unitdir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; install -c -m 0644 ${WORKDI=
R}/mongod.service ${D}${systemd_system_unitdir}</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; fi</div>
<div>}<br /><br />Thanks and Regards,<br />-=3DSrijan Nandi</div>

--WrGYOAGV9cJ2K9woPtUb--
