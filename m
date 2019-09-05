Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16B35E00E14; Thu,  5 Sep 2019 13:03:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [68.232.141.98 listed in list.dnswl.org]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Thu, 05 Sep 2019 13:03:18 PDT
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC77FE00AE6
	for <yocto@yoctoproject.org>; Thu,  5 Sep 2019 13:03:18 -0700 (PDT)
IronPort-SDR: rmqHAAPESefSBCcWwgO9s2HHwbqaDsSKGx5zF2X7NljlA5OJNaZS20+Ks02C1ZuN4eD+h17raA
	UrU79onJ8oURTUhxNJbj+0yRx/7GukAWKT8bZ9HN/9xJGxIRpJX1VUNn4nBj7IFULjDXAQZK7Q
	xBXproOY7dBtm3t2jaCDxv0oJyikFtNtIhP/G4+wAk8R4BIKH913a6GdLtEdj4ecfg2+9V1V8+
	PB6S8VSVeIS8XURupLqVvoa9BV4JbCxuBoF1i7a7gnkGV0VwTwpFvYFAAESTLDqGW//yjswuyQ
	RmM=
X-IronPort-AV: E=Sophos;i="5.64,471,1559548800"; d="scan'208";a="41063243"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa2.mentor.iphmx.com with ESMTP; 05 Sep 2019 12:02:15 -0800
IronPort-SDR: APOXqaORdH0KLE4KZicxQYLV4FILqtd3DgLlcaRh02qGDq7vKWtqiWhvgC+Z7IwPDUMDHX1oGR
	VXt5AuATb6qGswNem39644Fkyoyt4F673sMzNpQljagPPzdP1fzSsDjYj8Ejq21e/Z3P/X8RK0
	BaVzr+p4MBDcOvQuL/rMj+pp90/N+mtY0e2vbD7Yqv8rMfs2cN9cFtfuakcJiQ03Kki1MH/2aN
	LNAKhhDpqz+t/ZjqKPIKx/V0O1lSQf/qO0UVjZn0EVW3bo0k69J3vpD5qoK0pv9g9yF91wVzTB
	WhU=
Date: Thu, 5 Sep 2019 16:02:11 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Mark Asselstine <mark.asselstine@windriver.com>
Message-ID: <20190905200210.GB6759@mentor.com>
References: <20190823181953.19102-1-mark.asselstine@windriver.com>
	<2699541.DOkOTGASKR@yow-masselst-lx1>
MIME-Version: 1.0
In-Reply-To: <2699541.DOkOTGASKR@yow-masselst-lx1>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH] selinux-init: use systemd (re)labelling
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
X-List-Received-Date: Thu, 05 Sep 2019 20:03:20 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH] selinux-init: use systemd (re)labelling]=
 On 19.09.05 (Thu 13:55) Mark Asselstine wrote:

> On Friday, August 23, 2019 2:19:53 P.M. EDT Mark Asselstine wrote:
> > Boot loops were being seen when booting with selinux enabled, when the
> > init system in use is systemd. Once logs were retrieved from the
> > failing system the error was found to be
> >=20
> > selinux-init.sh[284]: /sbin/restorecon: Could not set context for
> > /sys/fs/cgroup/cpuacct:  Read-only file system selinux-init.sh[284]:
> > /sbin/restorecon: Could not set context for /sys/fs/cgroup/cpu:  Read-o=
nly
> > file system
> >=20
> > Systemd mounts /sys/fs/cgroup read-only and the (re)labelling code
> > used by selinux-init.sh is unable to handle this. On top of this the
> > system is basically presenting two methods of (re)labelling; using the
> > built in systemd approach via selinux-autorelabel.service *and* the
> > code we have in selinux-init.sh. This can get confusing especially
> > given that most online resources will speak to the systemd approach
> > using selinux-autorelabel.service and /.autorelabel.
> >=20
> > These changes leave the current approach in place when sysvinit is the
> > init system used, but if systemd is being used we make use of it's
> > internal (re)labelling functionality. Overall the workflow remains the
> > same but we now avoid boot loops (systemd remounts /sys/fs/cgroup rw
> > during the (re)labelling procedure).
> >=20
> > Signed-off-by: Mark Asselstine <mark.asselstine@windriver.com>
> > ---
>=20
> Joe, any thoughts on this change?

Not especially, it sounded good to me, seemed to work on a quick test
for my use-case, and I merged it:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=3Db0d31db=
104d9a4e94bc1409c2ffcc1d82f4a780f

Is there something else I should've considered?  Or did you want it on a
different branch too?

-J.

>=20
> MarkA
>=20
> >  .../selinux/selinux-init/selinux-init.sh           | 14 +-------------
> >  .../selinux/selinux-init/selinux-init.sh.sysvinit  | 14 ++++++++++++++
> >  recipes-security/selinux/selinux-init_0.1.bb       |  8 +++++---
> >  recipes-security/selinux/selinux-initsh.inc        |  8 ++++++++
> >  4 files changed, 28 insertions(+), 16 deletions(-)
> >  create mode 100644
> > recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
> >=20
> > diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh
> > b/recipes-security/selinux/selinux-init/selinux-init.sh index
> > ead4f00..f93d231 100644
> > --- a/recipes-security/selinux/selinux-init/selinux-init.sh
> > +++ b/recipes-security/selinux/selinux-init/selinux-init.sh
> > @@ -33,18 +33,6 @@ check_rootfs()
> >  	/sbin/shutdown -f -h now
> >  }
> >=20
> > -# If first booting, the security context type of init would be
> > -# "kernel_t", and the whole file system should be relabeled.
> > -if [ "`${SECON} -t --pid 1`" =3D "kernel_t" ]; then
> > -	echo "Checking SELinux security contexts:"
> > -	check_rootfs
> > -	echo " * First booting, filesystem will be relabeled..."
> > -	test -x /etc/init.d/auditd && /etc/init.d/auditd start
> > -	${SETENFORCE} 0
> > -	${RESTORECON} -RF /
> > -	${RESTORECON} -F /
> > -	echo " * Relabel done, rebooting the system."
> > -	/sbin/reboot
> > -fi
> > +# sysvinit firstboot relabel placeholder HERE
> >=20
> >  exit 0
> > diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh.sysv=
init
> > b/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit new fi=
le
> > mode 100644
> > index 0000000..d4f3f71
> > --- /dev/null
> > +++ b/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
> > @@ -0,0 +1,14 @@
> > +# Contents will be added to selinux-init.sh to support relabelling with
> > sysvinit +# If first booting, the security context type of init would be
> > +# "kernel_t", and the whole file system should be relabeled.
> > +if [ "`${SECON} -t --pid 1`" =3D "kernel_t" ]; then
> > +	echo "Checking SELinux security contexts:"
> > +	check_rootfs
> > +	echo " * First booting, filesystem will be relabeled..."
> > +	test -x /etc/init.d/auditd && /etc/init.d/auditd start
> > +	${SETENFORCE} 0
> > +	${RESTORECON} -RF /
> > +	${RESTORECON} -F /
> > +	echo " * Relabel done, rebooting the system."
> > +	/sbin/reboot
> > +fi
> > diff --git a/recipes-security/selinux/selinux-init_0.1.bb
> > b/recipes-security/selinux/selinux-init_0.1.bb index 38b5900..78f571c
> > 100644
> > --- a/recipes-security/selinux/selinux-init_0.1.bb
> > +++ b/recipes-security/selinux/selinux-init_0.1.bb
> > @@ -14,9 +14,11 @@ ${PN}_RDEPENDS =3D " \
> >      policycoreutils-setfiles \
> >  "
> >=20
> > -SRC_URI =3D "file://${BPN}.sh \
> > -		file://${BPN}.service \
> > -	"
> > +SRC_URI =3D " \
> > +    file://${BPN}.sh \
> > +    file://${BPN}.sh.sysvinit \
> > +    file://${BPN}.service \
> > +"
> >=20
> >  INITSCRIPT_PARAMS =3D "start 01 S ."
> >=20
> > diff --git a/recipes-security/selinux/selinux-initsh.inc
> > b/recipes-security/selinux/selinux-initsh.inc index bcdd449..8e31cda 10=
0644
> > --- a/recipes-security/selinux/selinux-initsh.inc
> > +++ b/recipes-security/selinux/selinux-initsh.inc
> > @@ -17,9 +17,15 @@ inherit update-rc.d systemd
> >=20
> >  SYSTEMD_SERVICE_${PN} =3D "${SELINUX_SCRIPT_SRC}.service"
> >=20
> > +FILES_${PN} +=3D "/.autorelabel"
> > +
> >  do_install () {
> >  	install -d ${D}${sysconfdir}/init.d/
> >  	install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh
> > ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST} +	# Insert the relabelli=
ng
> > code which is only needed with sysvinit +	sed -i -e '/HERE/r
> > ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh.sysvinit' \ +	       -e '/.*HERE$/d=
' -e
> > '/.*Contents.*sysvinit/d' \
> > +	       ${D}${sysconfdir}/init.d/${SELINUX_SCRIPT_DST}
> >=20
> >  	install -d ${D}${systemd_unitdir}/system
> >  	install -m 0644 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.service
> > ${D}${systemd_unitdir}/system @@ -27,6 +33,8 @@ do_install () {
> >  	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true',=20
> 'false',
> > d)}; then install -d ${D}${bindir}
> >  		install -m 0755 ${WORKDIR}/${SELINUX_SCRIPT_SRC}.sh ${D}$
> {bindir}
> > +		sed -i -e '/.*HERE$/d' ${D}${bindir}/$
> {SELINUX_SCRIPT_SRC}.sh
> > +		echo "# first boot relabelling" > ${D}/.autorelabel
> >  	fi
> >  }
>=20
>=20
>=20
>=20

--=20
-Joe MacDonald.
Linux Architect | Mentor=AE A Siemens Business
:wq

