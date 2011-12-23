Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04022E00305
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 00:28:37 -0800 (PST)
Received: by wgbdt13 with SMTP id dt13so15687885wgb.11
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 00:28:36 -0800 (PST)
Received: by 10.216.131.220 with SMTP id m70mr13220708wei.31.1324628916174;
	Fri, 23 Dec 2011 00:28:36 -0800 (PST)
Received: from [172.20.1.19] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id u5sm12682885wbm.2.2011.12.23.00.28.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 23 Dec 2011 00:28:34 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1251.1)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4EF34776.9030002@gmail.com>
Date: Fri, 23 Dec 2011 09:28:31 +0100
Message-Id: <5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>
References: <4EF34776.9030002@gmail.com>
To: Jim Abernathy <jfabernathy@gmail.com>
X-Mailer: Apple Mail (2.1251.1)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: meta-ti?????
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 23 Dec 2011 08:28:38 -0000
X-Groupsio-MsgNum: 3988
Content-Type: multipart/signed;
	boundary="Apple-Mail=_34CF2DAC-8362-44BC-BF38-8DB610D94655";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_34CF2DAC-8362-44BC-BF38-8DB610D94655
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende geschreven:

> I know the examples in the documentation of Yocto use meta-intel a lot =
to get the board specific BSPs like meta-crownbay or meta-n450.
>=20
> Is there a meta-ti or similar that gets you the meta-beagleboard and =
meta-pandaboard?  If not how do you clone and checkout the pandaboard =
BPS?

=
http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstrument=
s/

It has a README in there on how to set it up, read it and follow it =
precisely.=

--Apple-Mail=_34CF2DAC-8362-44BC-BF38-8DB610D94655
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iEYEARECAAYFAk70O7EACgkQMkyGM64RGpFAVgCfbHpdljRN2mcHX8y1ubG/HdW9
l4QAoJxV9ZWTVYpMLpWk4DG4GxO7tdAh
=hJIc
-----END PGP SIGNATURE-----

--Apple-Mail=_34CF2DAC-8362-44BC-BF38-8DB610D94655--
