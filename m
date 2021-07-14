Subject: Sysvinit recipe with custom package group Build ERROR #dunfell
To: yocto@lists.yoctoproject.org
From: "Abdelrahman El-Gammal" <a.elgammal2019@gmail.com>
X-Originating-Location: Abu Dhabi, AE (94.56.175.42)
X-Originating-Platform: Linux Chrome 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 13 Jul 2021 23:45:22 -0700
Message-ID: <PVZb.1626245122592215796.vxy2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="jP8uoI7ZgEt20kivsizy"

--jP8uoI7ZgEt20kivsizy
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there,
I am building a sysvinit recipe for a startup app. And add into the image =
using custom package groups. Both the package group and recipe when built o=
n their own, the build succeeds. But, when building the image, I got error =
in do_rootfs task.
Here is the error msg:
The following packages have unmet dependencies:
packagegroup-custom-apps : Depends: demoappstartup but it is not installab=
le
E: Unable to correct problems, you have held broken packages. Here is the =
Sysvinit recipe:
SUMMARY =3D "startup_script"
DESCRIPTION =3D "This recipe builds startup applications"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0b=
cf8506ecda2f7b4f302"

SRC_URI =3D "file://demoapp_startup.sh"

INITSCRIPT_NAME =3D "demoapp_startup.sh"
INITSCRIPT_PARAMS =3D "start 99 5 2 . stop 20 0 1 6 ."

inherit update-rc.d
S =3D "${WORKDIR}"

do_install () {
install -d ${D}${sysconfdir}/init.d/
install -c -m 755 ${WORKDIR}/${INITSCRIPT_NAME} ${D}${sysconfdir}/init.d/$=
{INITSCRIPT_NAME}
}
Here is the shell script for the app, demoapp_startup.sh:
#! /bin/sh
# /etc/init.d/start_sample_app
#

# Carry out specific functions when asked to by the system
case "$1" in
start)
echo "Starting sampleApp "
exec /opt/trial1/bin/trial1 -s &
;;
stop)
echo "Stopping sampleApp"
start-stop-daemon --stop --name trial1 --quiet
;;
(*))
echo "Usage: /etc/init.d/start_sample_app {start|stop}"
exit 1
;;
esac
exit 0

--jP8uoI7ZgEt20kivsizy
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello there,<br />I am building a sysvinit recipe for a startup app. And ad=
d into the image using custom package groups. Both the package group and re=
cipe when built on their own, the build succeeds. But, when building the im=
age, I got error in do_rootfs task.<br />
<div>Here is the error msg:<br /><hr />The following packages have unmet d=
ependencies:</div>
<div>&nbsp;packagegroup-custom-apps : Depends: demoappstartup but it is no=
t installable</div>
<div>E: Unable to correct problems, you have held broken packages.<hr />He=
re is the Sysvinit recipe:<br />
<div>SUMMARY =3D "startup_script"</div>
<div>DESCRIPTION =3D "This recipe builds startup applications"</div>
<div>LICENSE =3D "MIT"</div>
<div>LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade6=
98e0bcf8506ecda2f7b4f302"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>SRC_URI =3D "file://demoapp_startup.sh"</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>INITSCRIPT_NAME =3D "demoapp_startup.sh"</div>
<div>INITSCRIPT_PARAMS =3D "start 99 5 2 . stop 20 0 1 6 ."</div>
<div>&nbsp;</div>
<div>inherit update-rc.d</div>
<div>S =3D "${WORKDIR}"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>do_install () {</div>
<div>&nbsp; &nbsp;install -d ${D}${sysconfdir}/init.d/</div>
<div>&nbsp; &nbsp;install -c -m 755 ${WORKDIR}/${INITSCRIPT_NAME} ${D}${sy=
sconfdir}/init.d/${INITSCRIPT_NAME}</div>
<div>&nbsp; }</div>
<div><hr />Here is the shell script for the app, demoapp_startup.sh:<br />
<div>#! /bin/sh</div>
<div># /etc/init.d/start_sample_app</div>
<div>#</div>
<div>&nbsp;</div>
<div># Carry out specific functions when asked to by the system</div>
<div>case "$1" in</div>
<div>start)</div>
<div>&nbsp; &nbsp;echo "Starting sampleApp "</div>
<div>&nbsp; &nbsp;exec /opt/trial1/bin/trial1 -s &amp;</div>
<div>&nbsp; &nbsp; &nbsp; ;;</div>
<div>stop)</div>
<div>&nbsp; &nbsp;echo "Stopping sampleApp"</div>
<div>&nbsp; &nbsp;start-stop-daemon --stop --name trial1 --quiet</div>
<div>&nbsp; &nbsp;;;</div>
<div>(*))</div>
<div>&nbsp; &nbsp;echo "Usage: /etc/init.d/start_sample_app {start|stop}"<=
/div>
<div>&nbsp; &nbsp;exit 1</div>
<div>&nbsp; &nbsp;;;</div>
<div>esac</div>
<div>exit 0<br /><hr /></div>
</div>
</div>

--jP8uoI7ZgEt20kivsizy--
