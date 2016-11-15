Return-Path: <l.majewski@majess.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B272FE009BF; Tue, 15 Nov 2016 06:34:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.40.108 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 4208 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 Nov 2016 06:34:43 PST
Received: from 3.mo5.mail-out.ovh.net (3.mo5.mail-out.ovh.net [46.105.40.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF3E3E009A5
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 06:34:43 -0800 (PST)
Received: from player799.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo5.mail-out.ovh.net (Postfix) with ESMTP id E1CE143578
	for <yocto@yoctoproject.org>; Tue, 15 Nov 2016 10:54:16 +0100 (CET)
Received: from jawa (unknown [109.241.15.61])
	(Authenticated sender: l.majewski@majess.pl)
	by player799.ha.ovh.net (Postfix) with ESMTPSA id 604905200B8;
	Tue, 15 Nov 2016 10:54:14 +0100 (CET)
Date: Tue, 15 Nov 2016 10:54:05 +0100
From: Lukasz Majewski <l.majewski@majess.pl>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Message-ID: <20161115105405.4eea9271@jawa>
In-Reply-To: <CAHiDW_E5G6Sbeb__Kza3XGTXDh=v2670FOXKvfXKLkR4Ld7gAg@mail.gmail.com>
References: <20161113155141.7c0ca5dc@jawa>
	<CAHiDW_E5G6Sbeb__Kza3XGTXDh=v2670FOXKvfXKLkR4Ld7gAg@mail.gmail.com>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 15800879295484641931
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedruddvgddtfecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [sysvinit] Problem with disabling sysvinit service
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
X-List-Received-Date: Tue, 15 Nov 2016 14:34:45 -0000
X-Groupsio-MsgNum: 32981
Content-Type: multipart/signed; micalg=pgp-sha1;
	boundary="Sig_/iTO8C+EtTiVu7ODg0BLir6q";
	protocol="application/pgp-signature"

--Sig_/iTO8C+EtTiVu7ODg0BLir6q
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Jussi,

> On 13 November 2016 at 16:51, Lukasz Majewski <l.majewski@majess.pl>
> wrote:
>=20
> > Dear All,
> >
> > Maybe here I would find answer to question which puzzles me from
> > some time.
> >
> > The problem:
> >
> > Disable syslog service on startup of sysvinit based board.
> > (syslog is defined in e.g. /etc/rc5.d/S20syslog
> > -> /etc/init.d/syslog)
> >
> > Syslog on my setup is provided by busybox.
> >
> > I was trying to find where 'update-rc.d ... syslog ...' is called
> > in the poky (2.1.2) source tree but without any success.
> >
> > Then, I've discovered that it is appended to INITSCRIPT_NAME
> > variable and further processed by update-rc.d.bbclass
> >
>=20
> > Is there any method/recipe which would allow just removing S20klogd
> > symlink from /etc/rcX.d from the created rootfs?
> >
> >
> You should be able to modify (append) the busybox recipe to not
> create the symlinks in the first place. I'm not 100% sure what the
> correct line is but INITSCRIPT_PARAMS is the variable you want to
> modify. Maybe something like this?
>=20
> INITSCRIPT_PARAMS_${PN}-syslog =3D "start 80 . stop 20 0 1 6 ."
>=20
> (that should be the default except with all start runlevels removed)
>=20
>  - Jussi
>=20

Thanks for advice.=20

I've also thought about extending image.bbclass
to put function between do_rootfs and do_build.

In this way I could run update-rc.d in it.

Anyway, I will test your solution.

Thanks and best regards,
=C5=81ukasz Majewski

>=20
>=20
> > The goal is to have syslog installed (in this case built into
> > busybox), but disabled at boot up time.
> >
> > Any help is more than welcome.
> >
> > Tanks in advance,
> > =C5=81ukasz Majewski
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> >


--Sig_/iTO8C+EtTiVu7ODg0BLir6q
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlgq20QACgkQf9/hG2YwgjGj9gCeKmgA0ALZx1i+VYG/M2sdeKXB
l9cAnid5zP76eDuL8aud1+hvCj/ffHDW
=YdUi
-----END PGP SIGNATURE-----

--Sig_/iTO8C+EtTiVu7ODg0BLir6q--
