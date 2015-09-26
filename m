Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CD71E00B4F; Sat, 26 Sep 2015 10:55:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDFAE006D5
	for <yocto@yoctoproject.org>; Sat, 26 Sep 2015 10:55:06 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so134769486pac.0
	for <yocto@yoctoproject.org>; Sat, 26 Sep 2015 10:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=d0fNHSyEPBEMS1i1tNwlH+KGyiSueJHnMCJM2IdimNI=;
	b=y3bunO5fMImqyB7FI6buxU8MdE6kSKVItNPCtF4m5rEKSTyWDYueBv8qgi/OACPqgx
	nOF8fbKqCj210qdhHbikjlFyie/rg+mfz4s88Au8v8Q72Ra/arWxymQPrr3fTjeqrvza
	WKuT4Q1npQ34PZFIwtuAbuP7I8t2fWdYAHO6pH7sqlhf3885rdwUddNmVfHPMO/S2HZF
	TBn5+mXtHyFo2ycI/mDh1Erv8zbqU4ZSy22G6nv6t1UKeOYhHpxFEcdAv6r2aFDovHu6
	s3xW59LU1gJDj6fyHAnuqIHHKHcOvlDcOm6Y1vl+4tunVHJ/84sru+Tc8/wGaSiNxi+n
	+B0A==
X-Received: by 10.68.109.2 with SMTP id ho2mr15870153pbb.158.1443290105848;
	Sat, 26 Sep 2015 10:55:05 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:414c:6720:90ab:795b?
	([2601:646:8601:4580:414c:6720:90ab:795b])
	by smtp.gmail.com with ESMTPSA id
	kh7sm10267862pbc.93.2015.09.26.10.55.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 26 Sep 2015 10:55:04 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <9442195A2002444AA4EDA23A47FEAE09@PAULD>
Date: Sat, 26 Sep 2015 10:54:55 -0700
Message-Id: <60B7F68D-8325-47A6-936B-6CE9DA574210@gmail.com>
References: <9442195A2002444AA4EDA23A47FEAE09@PAULD>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: What's mounting this partition?
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
X-List-Received-Date: Sat, 26 Sep 2015 17:55:12 -0000
X-Groupsio-MsgNum: 26585
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B8E0FBDB-97F5-4269-9B68-AD46335AD2CF";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B8E0FBDB-97F5-4269-9B68-AD46335AD2CF
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Sep 26, 2015, at 10:39 AM, Paul D. DeRocco <pderocco@ix.netcom.com> =
wrote:
>=20
> My x86 system, built with Yocto Fido, boots from /dev/sda2 on a USB =
flash
> drive. There's another partition on /dev/sda1 which I wish to mount =
with a
> systemd mount unit, or with a line in /etc/fstab. But either way is
> failing because /dev/sda1 is already mounted on /media/sda1. Lennart =
over
> at the systemd list suggested it might be udisks doing this, but I =
don't
> see any files matching *udisks* anywhere in my file system, or even in =
my
> build tree.
>=20
> An older version of this system, built two years ago with Dylan, =
doesn't
> have this problem. Nothing relevant changed in my meta-data, so =
somewhere
> else in this gigantic universe something has changed. Does anyone know
> what bit of software would be responsible for automounting my =
/dev/sda1
> partition, which is not my root file system, and doing so before fstab =
or
> systemd mounts are processed?

are you installing udev-extraconf into image? IIRC that was doing it in =
my cases
some time ago.

>=20
> Also, when /dev/sda2 (my root file system) is mounted, it gets certain
> default options. Is there a way to modify these options? I'd like to
> include noatime, to avoid needless writes to my flash drive.
>=20
> --
>=20
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B8E0FBDB-97F5-4269-9B68-AD46335AD2CF
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYG2/cACgkQuwUzVZGdMxQjuACeI/kf9TA07lUAtFeu4MUXHdkY
66wAnR7bbt4NTU6AvfieXDalJuIKb/W2
=8aDC
-----END PGP SIGNATURE-----

--Apple-Mail=_B8E0FBDB-97F5-4269-9B68-AD46335AD2CF--
