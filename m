Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74D25E00894; Mon, 26 Jan 2015 18:46:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B56BE0083A
	for <yocto@yoctoproject.org>; Mon, 26 Jan 2015 18:46:04 -0800 (PST)
Received: from svr-orw-fem-05.mgc.mentorg.com ([147.34.97.43])
	by relay1.mentorg.com with esmtp 
	id 1YFwAF-00012s-Go from Joe_MacDonald@mentor.com ;
	Mon, 26 Jan 2015 18:46:03 -0800
Received: from burninator (147.34.91.1) by svr-orw-fem-05.mgc.mentorg.com
	(147.34.97.43) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 26 Jan 2015 18:46:03 -0800
Received: by burninator (Postfix, from userid 1000)	id 5B78D5810A4; Mon, 26
	Jan 2015 21:45:59 -0500 (EST)
Date: Mon, 26 Jan 2015 21:45:59 -0500
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20150127024558.GK4791@mentor.com>
References: <1421290778-11490-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1421290778-11490-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][ 0/3] v2 More recipe updates.
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
X-List-Received-Date: Tue, 27 Jan 2015 02:46:07 -0000
X-Groupsio-MsgNum: 23180
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fDERRRNgB4on1jOB"
Content-Disposition: inline

--fDERRRNgB4on1jOB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[meta-selinux][ 0/3] v2 More recipe updates.] On 15.01.15 (Thu 02:59) Phil=
ip Tricca wrote:

> Greetings,
>=20
> Three more recipe udpates to get meta-selinux building with oe-core master
> again. These are mostly mundane though the move from findutils from 4.4.x
> to 4.5.x removes the need for patches that have since gone upstream. This
> v2 patch set takes into account comments from Mark w/r to removing PRs due
> to the uprev.
>=20
> Best,
> Philip

Thanks for these, Philip, I'd been starting to do the same work myself
but got distracted while auditing the findutils patches.  Merged.

-J.

>=20
> Philip Tricca (3):
>   findutils: Upgrade recipe to 4.5 and use wildcard for pico version.
>   logrotate: Use wildcard for version number.
>   tar: Use wildcard for version number in bbappend.
>=20
>  .../findutils-with-selinux-gnulib.patch            |   55 --
>  .../findutils-4.4.2/findutils-with-selinux.patch   |  528 --------------=
------
>  .../findutils/findutils_4.4.2.bbappend             |   14 -
>  .../findutils/findutils_4.5.%.bbappend             |    2 +
>  recipes-extended/logrotate/logrotate_%.bbappend    |    5 +
>  .../logrotate/logrotate_3.8.7.bbappend             |    7 -
>  recipes-extended/tar/tar_%.bbappend                |   11 +
>  recipes-extended/tar/tar_1.27.1.bbappend           |   13 -
>  8 files changed, 18 insertions(+), 617 deletions(-)
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-=
with-selinux-gnulib.patch
>  delete mode 100644 recipes-extended/findutils/findutils-4.4.2/findutils-=
with-selinux.patch
>  delete mode 100644 recipes-extended/findutils/findutils_4.4.2.bbappend
>  create mode 100644 recipes-extended/findutils/findutils_4.5.%.bbappend
>  create mode 100644 recipes-extended/logrotate/logrotate_%.bbappend
>  delete mode 100644 recipes-extended/logrotate/logrotate_3.8.7.bbappend
>  create mode 100644 recipes-extended/tar/tar_%.bbappend
>  delete mode 100644 recipes-extended/tar/tar_1.27.1.bbappend
>=20
--=20
-Joe MacDonald.
:wq

--fDERRRNgB4on1jOB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUxvvmAAoJEEn8ffcsOfaWSZ8H+QGlQNVrhy+RHAaxbG1FkBeC
AVp2dMSiiZgvcSkuDZrjlNRQeDM46Vx+1RFx2p0gb+V68utEoIFpNRdyPaGL9RSv
6p39OkyLaQdQSkLfUVX5x5SXBoA6XUuiZ4/gYRKFgPaLe7q/ODUlsy7bGGGlfeEN
oGNjbmcbfU/HOsTmLpL+UoiPtfdjkrRfOSY4Ai+6gYMfNgxNq4FEPwMYzadhkmTL
qYCqSie8UDOjaBpTvv4qmsCkH97CdAyuyrRFJwAfQzsNoT3VFDtL6d1Hy0IIBUYz
nG1eADSjZAqVghztZf+eY9ZyvWOuX0adJTaJRItH+VIU2vLm+f37BciDQzh41UM=
=Ig8n
-----END PGP SIGNATURE-----

--fDERRRNgB4on1jOB--
