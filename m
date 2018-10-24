Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9528AE009AA; Mon, 29 Oct 2018 05:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_96_XX,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* 3.4 DATE_IN_PAST_96_XX Date: is 96 hours or more before Received:
	date
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00B5DE00718
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 05:45:35 -0700 (PDT)
Received: from svr-orw-mbx-02.mgc.mentorg.com ([147.34.90.202])
	by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
	id 1gH6vG-0002y9-S2 from joe@deserted.net ;
	Mon, 29 Oct 2018 05:45:34 -0700
Received: from svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) by
	svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) with Microsoft SMTP
	Server (TLS) id 15.0.1320.4; Mon, 29 Oct 2018 05:45:24 -0700
Received: from burninator.cal.mentorg.com (147.34.91.1) by
	svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) with Microsoft SMTP
	Server id
	15.0.1320.4 via Frontend Transport; Mon, 29 Oct 2018 05:45:24 -0700
Received: by burninator.cal.mentorg.com (Postfix, from userid 5844)
	id 843E028A2420; Wed, 24 Oct 2018 19:49:21 -0400 (EDT)
Date: Thu, 25 Oct 2018 00:49:21 +0100
From: Joe MacDonald <joe@deserted.net>
To: Mark Hatle <mark.hatle@windriver.com>
Message-ID: <20181024234913.GA11980@deserted.net>
References: <ead8ad97-856d-03bb-4444-dc6e4a472d61@kernel.org>
	<20181017232705.HQN68.75473.root@cdptpa-web09>
	<CAKRytNw_TCeqAfN9TG2y6L6WAO+FNZkzE2S7DWyBM9OzWZQ18Q@mail.gmail.com>
	<004d01d466e9$3c7daf70$b5790e50$@san.rr.com>
	<0cba098f-4179-ec8a-73a5-bb2815806e59@kernel.org>
	<9dd76a25-1560-5bca-64d3-e6dd57a44ccc@windriver.com>
	<20181018190803.GB25172@mentor.com>
MIME-Version: 1.0
In-Reply-To: <20181018190803.GB25172@mentor.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-800 http://www.vim.org
User-Agent: Mutt/1.9.4 (2018-02-28)
Cc: yocto@yoctoproject.org
Subject: Re: [selinux] sumo compilation
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
X-List-Received-Date: Mon, 29 Oct 2018 12:45:36 -0000
X-Groupsio-MsgNum: 42936
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey all,

I just thought I should quickly follow up on this.  I have a change set
ready that includes tagging and a minor tweak for sumo, integration of
the current outstanding patch list and a tag for thud and a couple of
additional things (possibly) for post-thud.  I'll send out a set for
sumo and maybe an additional one for thud/post- possibly tomorrow or
after I get home on Friday.

-J.

[Re: [yocto] [selinux] sumo compilation] On 18.10.18 (Thu 15:08) Joe MacDon=
ald wrote:

> [Re: [yocto] [selinux] sumo compilation] On 18.10.18 (Thu 11:00) Mark Hat=
le wrote:
>=20
> > On 10/18/18 9:49 AM, Sinan Kaya wrote:
> > > CC'ing the selinux maintainers:
> > >=20
> > > I was told that using the master branch and reverting the e2fs change
> > > (http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/commit/?id=3D=
78eca8242ea5397c4dc0654d62244453b4260151)=20
> > > works on sumo.
> > >=20
> > > Stefano's suggestion unfortunately didn't work.
> > >=20
> > > Maybe, it is time to create the sumo branch?
> >=20
> > Sorry, I thought it had been created.  I'm going to be traveling the
> > next few days to ELC-E, but I will try to get to it if someone else
> > does not first.
>=20
> Yeah, Mark and I are both going to be at ELC-E this week, we'll get it
> sorted out.
>=20
> -J.
>=20
> >=20
> > --Mark
> >=20
> > > On 10/18/2018 9:48 AM, Steve Scott wrote:
> > >> I did not try it on sumo.
> > >>
> > >>  =20
> > >>
> > >> From: Stefano Cappa [mailto:stefano.cappa.ks89@gmail.com]
> > >> Sent: Wednesday, October 17, 2018 11:15 PM
> > >> To: sscott@san.rr.com
> > >> Cc: Sinan Kaya <okaya@kernel.org>; yocto@yoctoproject.org
> > >> Subject: Re: [yocto] [selinux] sumo compilation
> > >>
> > >>  =20
> > >>
> > >> Exactly the same issue since September.
> > >>
> > >>  =20
> > >>
> > >> Here is my discussion https://lists.yoctoproject.org/pipermail/yocto=
/2018-September/042711.html. With that trick did you find a solution also o=
n sumo?
> > >>
> > >>  =20
> > >>
> > >> Il gio 18 ott 2018, 01:42 <sscott@san.rr.com <mailto:sscott@san.rr.c=
om> > ha scritto:
> > >>
> > >>
> > >> It was broken in rocko too. I added this to local.conf to workaround=
 the problem:
> > >>
> > >> PREFERRED_VERSION_refpolicy-standard =3D "2.20170204"
> > >>
> > >> -steve
> > >>
> > >> ---- Sinan Kaya <okaya@kernel.org <mailto:okaya@kernel.org> > wrote:
> > >>> Hi,
> > >>>
> > >>> We realized today that SELinux does not compile on sumo branch.
> > >>>
> > >>> Is it possible for someone to branch the last working version to a =
sumo branch?
> > >>>
> > >>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-selinux/refs/
> > >>>
> > >>> NOTE: Running task 352 of 2707
> > >>> (virtual:native:/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsp=
rogs_1.43.8.bb <http://e2fsprogs_1.43.8.bb> :do_patch)
> > >>> NOTE: recipe e2fsprogs-native-1.43.8-r0: task do_patch: Started
> > >>> NOTE: Running task 1413 of 2707
> > >>> (/sources/poky/meta/recipes-devtools/e2fsprogs/e2fsprogs_1.43.8.bb:=
do_patch)
> > >>> NOTE: recipe e2fsprogs-1.43.8-r0: task do_patch: Started
> > >>> ERROR: e2fsprogs-native-1.43.8-r0 do_patch: Command Error: 'quilt -=
-quiltrc
> > >>> Applying patch misc_create_inode.c-label_rootfs.patch
> > >>> patching file misc/create_inode.c
> > >>> Hunk #1 FAILED at 979.
> > >>> Hunk #2 FAILED at 987.
> > >>>
> > >>> Sinan
> > >>> --=20
> > >>> _______________________________________________
> > >>> yocto mailing list
> > >>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> > >>> https://lists.yoctoproject.org/listinfo/yocto
> > >>
> > >=20
> >=20



> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--qMm9M+Fa2AknHoGS
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iF0EABECAB0WIQRjqRhJknEwCqrWVXzAW9yWWiDRfAUCW9EE+QAKCRDAW9yWWiDR
fEjUAJ997KW4jBqLJeDkCGeJfJ987miYpQCgjRzqtQlplubpEyfuwr2DZIGNOFA=
=qrHZ
-----END PGP SIGNATURE-----

--qMm9M+Fa2AknHoGS--
