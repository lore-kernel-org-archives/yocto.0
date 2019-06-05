Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2F14E00D48; Wed,  5 Jun 2019 07:59:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.33.250.45 listed in list.dnswl.org]
X-Greylist: delayed 5398 seconds by postgrey-1.32 at yocto-www;
	Wed, 05 Jun 2019 07:59:32 PDT
Received: from 2.mo179.mail-out.ovh.net (2.mo179.mail-out.ovh.net
	[178.33.250.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76498E009EA
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 07:59:32 -0700 (PDT)
Received: from player797.ha.ovh.net (unknown [10.109.159.222])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id D34DF12DCD2
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 15:04:28 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player797.ha.ovh.net (Postfix) with ESMTPSA id 049BF6A12B6E;
	Wed,  5 Jun 2019 13:04:25 +0000 (UTC)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <192ab27f-b9e0-246f-63bf-c49bd49516f2@3mdeb.com>
Date: Wed, 5 Jun 2019 15:04:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
X-Ovh-Tracer-Id: 13680809770785582686
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduuddrudegvddgiedtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Cc: marmarek@invisiblethingslab.com,
	=?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>
Subject: git fetcher - AUTOREV and best practices
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
X-List-Received-Date: Wed, 05 Jun 2019 14:59:33 -0000
X-Groupsio-MsgNum: 45494
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="TCur2JfUHHxcmG2amRSuOYNpA8yc7kGbj"

--TCur2JfUHHxcmG2amRSuOYNpA8yc7kGbj
Content-Type: multipart/mixed; boundary="5FWrTz1dJTgicWtB7joMG1gjk3MruLQhb";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: =?UTF-8?Q?Piotr_Kr=c3=b3l?= <piotr.krol@3mdeb.com>,
 marmarek@invisiblethingslab.com
Message-ID: <192ab27f-b9e0-246f-63bf-c49bd49516f2@3mdeb.com>
Subject: git fetcher - AUTOREV and best practices

--5FWrTz1dJTgicWtB7joMG1gjk3MruLQhb
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hello,

As explained in the mega manual [1], when using the git:// fetcher,
setting the
SRCREV to ${AUTOREV} will result in building the latest commit from
given git
branch (master, if not specified otherwise).

Using AUTOREV feature in recipe has following implications as far as I
can see:

- the same recipe might get built using different git commit, depending
on when
=C2=A0 the build was run, which breaks the reproducibility,
- it imposes some potential security risk - by specifying the exact
commit in
=C2=A0 the recipe, we can at least say that this revision of this package=
 is fine
=C2=A0 and we want to build it; with AUTOREV we might not be aware of the=

code we're
=C2=A0 fetching

I'm wondering whether there are any best practices or strict rules
written down
for recipes getting upstream to follow in this area. When inspecting some=
 of
the layers from the git.yoctoprojects.org, it appears that the AUTOREV
feature
is almost not used, besides a few exceptions.

I'm wondering whether it would make sense to raise a warning when git
fetcher
with AUTOREV is used, so it would be easier to build on top OE / Yocto wi=
th
reproducibility / security in mind.

I understand that this feature is mostly meant for development purposes. =
I'm
just looking for a tools how one could easily make sure that each
fetched source code
is verified prior compilation.

I've already looked at the https:// fetcher (which is mostly used for
fetching tarballs).
It requires the recipe to contain valid md5 and sha256 sums. Even if we
suppress the
error in case checksum mismatch in the recipe by setting the
BB_STRICT_CHECKSUM
to 0, we are still getting the warning, which is the desired behavior I
believe.


[1]:
https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var=
-AUTOREV
[2]:
https://www.yoctoproject.org/docs/2.0.1/bitbake-user-manual/bitbake-user-=
manual.html#var-BB_STRICT_CHECKSUM

--=20
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com



--5FWrTz1dJTgicWtB7joMG1gjk3MruLQhb--

--TCur2JfUHHxcmG2amRSuOYNpA8yc7kGbj
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJc973YAAoJEPFAHS4cyxnv+mYP/3UOyYFgXgEcEtOxrsoojIxQ
xr7P/xyS2nZiP1wYqdtndzQ3LhSJrbq9V+1SW1imrHMZZwexzX51djOLGXdW9oQ8
+SDC6TrWgfnAkjxQiHbsvMtBQkMspoVWuTKmoUfu1GCMJaydWCWkkzZgpV4iaaws
W0vkM0WOXbl0EZsDAx86FsCr9EFrXZ2lRFczMBQWrcx678OMvXV7QvwgV/NlR694
sJkWc3Z5sgONLGdCLg8F/Oi/r+LNEojOL40eBV7zIeNktarbwFEoDWyIl8FUUNaw
fWuORCQpamQISjhzhNDk/2T34fjtoyKvaP/3hX9ZYHm24QxY5A+PmXdJ97FALja7
7uW+rcFTTn80EDbG1aTfiu9xnjPb0KfdiKE7DJY+wNa9wJAS4nj8CbvaaEOxx/83
3KlmS0es8mNCHtcphJBjWlXp1+82IDmkU8ZqfzLpI3Xa3k5MuprUAO0KeLUx3CgZ
i4uJhUukZTo4bjIhfdWWSYhd4UX6nLyqxPwttwn43iPHfk65qgNcuVok4wYjFBm9
RhSVG+U4shpFuECNGGCic/BCd71NlZvY1WE1iFclqM4xDtam5HracpNvlN40ea3L
XBlZQKrIirjkJv4InItSHpy6g19LeOsefmYxzG7tLC+PLuzTPPADuJMREjD+ehct
0GWyVxq3R3dFjXYQQZSK
=8HML
-----END PGP SIGNATURE-----

--TCur2JfUHHxcmG2amRSuOYNpA8yc7kGbj--
