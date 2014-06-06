Return-Path: <sgh@sgh.dk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 735A6E00A2F; Sat,  7 Jun 2014 03:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DATE_IN_PAST_24_48,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.10.10.13 listed in list.dnswl.org]
	* 0.5 DATE_IN_PAST_24_48 Date: is 24 to 48 hours before Received: date
Received: from mx-aarh-3.stofanet.dk (mx-aarh-3.stofanet.dk [212.10.10.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BF02E0073D
	for <yocto@yoctoproject.org>; Sat,  7 Jun 2014 03:11:52 -0700 (PDT)
Received: from 5634f347.rev.stofanet.dk ([86.52.243.71] helo=asrock)
	by mx-aarh-3.stofanet.dk (envelope-from <sgh@sgh.dk>)
	with esmtp id 1WtDbJ-0007Q1-23; Sat, 07 Jun 2014 12:11:50 +0200
Received: from koontz.localnet (localhost [127.0.0.1])
	by asrock (Postfix) with ESMTPS id E00247EE11;
	Fri,  6 Jun 2014 09:11:54 +0200 (CEST)
From: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
To: yocto@yoctoproject.org
Date: Fri, 06 Jun 2014 09:11:54 +0200
Message-ID: <87656353.F6r5FI3Bre@koontz>
User-Agent: KMail/4.13 (Linux/3.13.0-27-lowlatency; KDE/4.13.0; i686; ; )
In-Reply-To: <lmrmc7$vdr$1@ger.gmane.org>
References: <lmphm1$2bk$1@ger.gmane.org> <lmrmc7$vdr$1@ger.gmane.org>
MIME-Version: 1.0
Cc: Neuer User <auslands-kv@gmx.de>
Subject: Re: Problems with postinstall
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
X-List-Received-Date: Sat, 07 Jun 2014 10:12:05 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi=20

postinstall is afaik run during installation. And that could very well =
be on=20
the actual target. So ${S} etc. are not available. The step is just for=
 steps=20
that *need* to run on the actual target utilizing the files that where =
install=20
in do_install.


Fredag den 6. juni 2014 08:16:39 skrev Neuer User:
> Nobody using any postinstalls?
>=20
> I am still wondering why the postinstall does not work. I don't get a=
ny
> error messages. The files are just not installed.
>=20
> Am 05.06.2014 12:44, schrieb Neuer User:
> > Hi
> >=20
> > I am desperately trying to get some postinstall scripts working. Th=
ey
> > should replace some defualt files with custom files I have. They ar=
e all
> > in one package. The package looks like this:
> >=20
> > do_install() {
> >=20
> >     install -d ${D}${sbindir}
> >     install -m 0700 ${S}/sbin/* ${D}${sbindir}
> >    =20
> >     install -d ${D}${bindir}
> >     install -m 0755 ${S}/bin/LEDstatus ${D}${bindir}
> >    =20
> >     install -d ${D}/etc/udev/rules.d
> >     install -m 0644 ${S}/udev/* ${D}/etc/udev/rules.d/
> >    =20
> >     install -d ${D}/etc/ssh
> >     install -m 0600 ${S}/ssh/ssh_* ${D}/etc/ssh/
> >     install -m 0644 ${S}/ssh/authorized_keys ${D}/etc/ssh/
> >    =20
> >     install -d ${D}/etc/gnupg
> >     install -m 0600 ${S}/gnupg/trustedkeys.gpg ${D}/etc/gnupg/
> >=20
> > }
> >=20
> > # Overwrite some configuration data with specific files
> > pkg_postinst_${PN} () {
> >=20
> >     install -o root -g root -m 0600 ${S}/ssh/sshd_config ${D}/etc/s=
sh/
> >     install -m 0755 ${S}/etc/rc.local ${D}/etc/
> >     install -m 0644 ${S}/etc/watchdog.conf ${D}/etc/
> >     install -m 0400 ${S}/etc/shadow ${D}/etc/
> >     install -m 0440 ${S}/etc/sudoers ${D}/etc/
> >     install -d ${D}/etc/default
> >     install -o root -g root -m 0644 ${S}/etc/default-ntpdate
> >=20
> > ${D}/etc/default/ntpdate
> > }
> >=20
> > RDEPENDS_${PN} +=3D "ntpdate udev ssh sudo"
> >=20
> > FILES_${PN} +=3D "/*"
> >=20
> >=20
> > I even tried changing the ownership of the files, but that did not
> > change aything.
> >=20
> > Am I doing this completely wrong?
> >=20
> > Thanks for any hints
> >=20
> > Michael

--=20
S=F8ren Holm


