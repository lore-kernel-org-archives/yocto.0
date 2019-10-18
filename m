Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09810E00D33; Fri, 18 Oct 2019 07:06:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [68.232.141.98 listed in list.dnswl.org]
Received: from esa2.mentor.iphmx.com (esa2.mentor.iphmx.com [68.232.141.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD934E00AAA
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2019 07:06:48 -0700 (PDT)
IronPort-SDR: dXxUtG0uMvUyYoYw0hpN1GRbwLOqH15uNu52OYLTmrdZ9FtDT/92cGJlQG6UVakyZU5pOsqTqO
	79c0nlXxOeOjIqsWEKPZ1dv5OYqh2Og//pAvlwOcxAN1DL+vpruho4/GR+HucG/DNhkd8HpgRi
	/bqC7jeTrLnNXeYUFjiUkwEcsVJXE60wa+vFjvCVUhAQg2YBRqR/nA+pQjoStoJ/mmAsOJUXFb
	I9xIq1wtMnCc7duHD4KLgbaN0osLQf/oywK6xDCe9LKds4LZvwcmj706IeAktm+57XcMJNvwZj
	NoE=
X-IronPort-AV: E=Sophos;i="5.67,312,1566892800"; 
	d="asc'?scan'208";a="42322077"
Received: from orw-gwy-01-in.mentorg.com ([192.94.38.165])
	by esa2.mentor.iphmx.com with ESMTP; 18 Oct 2019 06:06:48 -0800
IronPort-SDR: ikop1Y3RNDxrQyznr62c6Gz/diDGCgjglOhZQRrw7xKACx9gzM4pb1nQyTPCd8AAtx8dNbKhSs
	f9daRZqkiXhVV7yw+zBZw/JrdRCMa3v9iZDTIkHLW9iHeRD6xl0BPzoBYWiD4DzFrQaWReGXhz
	iuEZIwV55txryKDLw3y6ZYoW3FFNuUFQPyVyPKTBPpqHHFFEQcUnsPCsr6+wnbSG0XZgHLC14x
	vbRS4JdOmZMS9q4lVrzRkfk7iFYkqoozTPpanhxhWKqdUzHqRYgTiFy6xDSF0AON9NyDDfMbXP
	fx4=
Date: Fri, 18 Oct 2019 10:06:42 -0400
From: Joe MacDonald <joe@deserted.net>
To: Vincent Prince <vincent.prince.fr@gmail.com>
Message-ID: <20191018140639.GA33581@deserted.net>
References: <CAB2nKc8EdbGsO2bqcnRV+KRoOrQMdHSyXwF2fOhhogAHg-A3RQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAB2nKc8EdbGsO2bqcnRV+KRoOrQMdHSyXwF2fOhhogAHg-A3RQ@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-selinux] Warrior branch glib/meson problem
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
X-List-Received-Date: Fri, 18 Oct 2019 14:06:50 -0000
X-Groupsio-MsgNum: 46976
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="G4iJoqBmSsgzjUCe"
Content-Disposition: inline

--G4iJoqBmSsgzjUCe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Vincent,

[[yocto] [meta-selinux] Warrior branch glib/meson problem] On 19.10.17 (Thu=
 12:50) Vincent Prince wrote:

> Hi Team,
>=20
> I have a problem with meta-selinux layer on warrior branch, especially bu=
ilding
> glib-2.0 with meson.
> This commit introduces enabled/disabled flags instead of true/false:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?h=3Dwarrio=
r&id=3D
> bb0c9c3abcb935e4b362eb57985e1ee7fec0bfe0
>=20
> But current glib-2.0 is not 2.60 yet:
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/glib-2=
=2E0/?h=3D
> warrior
>=20
> Can we revert this patch on warrior?

Sorry, I've been away from meta-selinux the last couple of weeks, I'm
addressing the warrior (and other patches in the backlog) right now.

--=20
-Joe MacDonald.
:wq

--G4iJoqBmSsgzjUCe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iFwEABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCXanG0gAKCRDAW9yWWiDR
fJDlAJ9Giu+yxJ84su/eJ621C2uk6pDIsgCVG6A5QbECigy3Vhimwa1OmPwmvQ==
=Pdt+
-----END PGP SIGNATURE-----

--G4iJoqBmSsgzjUCe--
