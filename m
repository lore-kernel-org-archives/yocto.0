Return-Path: <l.majewski@majess.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12E1DE00BC1; Sun, 13 Nov 2016 07:09:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.105.36.149 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0006]
X-Greylist: delayed 1064 seconds by postgrey-1.32 at yocto-www;
	Sun, 13 Nov 2016 07:09:34 PST
Received: from 4.mo179.mail-out.ovh.net (4.mo179.mail-out.ovh.net
	[46.105.36.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A70E1E009F0
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2016 07:09:34 -0800 (PST)
Received: from player729.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 8B780A360
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2016 15:51:49 +0100 (CET)
Received: from jawa (unknown [109.241.15.61])
	(Authenticated sender: l.majewski@majess.pl)
	by player729.ha.ovh.net (Postfix) with ESMTPSA id 52E1D5E0071
	for <yocto@yoctoproject.org>; Sun, 13 Nov 2016 15:51:49 +0100 (CET)
Date: Sun, 13 Nov 2016 15:51:41 +0100
From: Lukasz Majewski <l.majewski@majess.pl>
To: yocto@yoctoproject.org
Message-ID: <20161113155141.7c0ca5dc@jawa>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.25; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 9080664226200601257
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrfeelfedrtdekgdejudcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemuceftddtnecu
X-Mailman-Approved-At: Mon, 14 Nov 2016 08:26:32 -0800
Subject: [sysvinit] Problem with disabling sysvinit service
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
X-List-Received-Date: Sun, 13 Nov 2016 15:09:37 -0000
X-Groupsio-MsgNum: 32966
Content-Type: multipart/signed; micalg=pgp-sha1;
	boundary="Sig_/tyRuq3KZe+lpObQ.6=8+_EE";
	protocol="application/pgp-signature"

--Sig_/tyRuq3KZe+lpObQ.6=8+_EE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Dear All,

Maybe here I would find answer to question which puzzles me from some
time.

The problem:

Disable syslog service on startup of sysvinit based board.
(syslog is defined in e.g. /etc/rc5.d/S20syslog -> /etc/init.d/syslog)

Syslog on my setup is provided by busybox.

I was trying to find where 'update-rc.d ... syslog ...' is called in the
poky (2.1.2) source tree but without any success.

Then, I've discovered that it is appended to INITSCRIPT_NAME variable
and further processed by update-rc.d.bbclass


Is there any method/recipe which would allow just removing S20klogd
symlink from /etc/rcX.d from the created rootfs?

The goal is to have syslog installed (in this case built into busybox),
but disabled at boot up time.

Any help is more than welcome.

Tanks in advance,
=C5=81ukasz Majewski

--Sig_/tyRuq3KZe+lpObQ.6=8+_EE
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlgofgQACgkQf9/hG2YwgjGFKwCgwwUl0sBnuGHmSfxSXDp4o3Wt
occAn1a1GvwfIF1bS5U2/wGA6/YGeNWb
=hn0L
-----END PGP SIGNATURE-----

--Sig_/tyRuq3KZe+lpObQ.6=8+_EE--
