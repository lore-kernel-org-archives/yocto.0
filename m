Return-Path: <joe@deserted.net>
Received: from mail-ea0-f178.google.com (mail-ea0-f178.google.com
	[209.85.215.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF2C3E01664
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 07:57:15 -0700 (PDT)
Received: by mail-ea0-f178.google.com with SMTP id a15so3505627eae.23
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 07:57:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Qck4j1PkRFuyIw2ek6eiZb/8JVyuXkBZTeTA+KCu7dg=;
	b=brxmJEfehf4C5qXkCDsIW8iB1AyZbbRFBtxskRU94KaDQ/ac12DgpNRejkqAbmgyvT
	WIXorCv1IfQQ6q+xblf6WqHMXvH4o9ASnyRoeEpNAjFTJmRx64QBcT5mBpshm0PBAfBy
	hghnNw4fOWZlpIcpX5KRskVNImjeVno70n2eV5SxJtAOzdJIUEcNlB3PIAvZfERSi82A
	+bCMlfSTAY4X1TerRV6UpVAlx8ybbgShkusngqeNquGvpfIWP1cnoRtbzqJKrRRw2q+X
	gWeFFbX4fRmPGOoj8p4dSkxMWxd6do/ovzqNdyOEzsvjjH/VYvFAB9HKD+qcY9yQDzvM
	B5xg==
X-Gm-Message-State: ALoCoQlorxRi4aimBtp8GIjLp2jVTJTCTapp68aOq4FId5WYPs816lYvEl0cI8ziPWjx+zEb4dBz
X-Received: by 10.15.32.7 with SMTP id z7mr357073eeu.78.1382367434592;
	Mon, 21 Oct 2013 07:57:14 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id i1sm44755396eeg.0.2013.10.21.07.57.12
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 21 Oct 2013 07:57:13 -0700 (PDT)
Date: Mon, 21 Oct 2013 10:57:09 -0400
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Message-ID: <20131021145706.GA7162@deserted.net>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1382036771-30531-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [meta-selinux][PATCH 0/5] Resend: Remove python dependency from refpol.
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
X-List-Received-Date: Mon, 21 Oct 2013 14:57:17 -0000
X-Groupsio-MsgNum: 16627
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline

--a8Wt8u1KmwUX3Y2C
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Thought I'd best (finally) follow up to the list on this.  I've been
talking to Philip offline.  These are in the queue for integration but
some surprising things have cropped up along the way and the integration
is being delayed a bit.

I'll be grabbing the other meta-selinux update at the same time.

-J.

[[yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency from re=
fpol.] On 13.10.17 (Thu 19:06) Philip Tricca wrote:

> This is a resend of an earlier patch set that never made it to the list
> AFAIK.
>=20
> The reference policy package currently pulls in a lot of python stuff
> that isn't strictly necessary to boot an SELinux system and load a
> policy. AFAIK this is caused by the mix of python and C utilities in
> policycoreutils.
>=20
> This patch set breaks the policycoreutils recipe up into multiple
> packages, one for each utility. In this way we can have the refpol etc
> pull in only the utilities necessary for normal operation. This happens
> to be only the utilities written in C and thus we can remove python
> completely in a minimal image.
>=20
> I've attempted to localize these changes as much as possible so this
> patch set should have minimal impact on recipes outside of the
> policycoreutils. An example image reicpe is added to demonstrate a
> minimal image with only the utilities required to load a policy and
> manipulate the policy store (add / remove policy modules) at runtime.
>=20
> Regards,
> - Philip
>=20
> Philip Tricca (5):
>  Break policycoreutils out into separate
>  Remove unnecessary RDEPENDS_${BPN}.
>  Remove runtime dependency on
>  Add packagegroup and image recipe for
>  Add packagegroup for policycoreutils
>=20
>  .../images/core-image-selinux-minimal.bb           |   15 ++
>  .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
>  .../packagegroups/packagegroup-selinux-minimal.bb  |   26 +++
>  .../packagegroup-selinux-policycoreutils.bb        |   36 ++++
>  recipes-security/refpolicy/refpolicy_common.inc    |    2 +-
>  recipes-security/selinux/policycoreutils.inc       |  179 ++++++++++++++=
+++--
>  6 files changed, 245 insertions(+), 17 deletions(-)
>=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
-Joe MacDonald.
:wq

--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJlQLkACgkQwFvcllog0Xxn9QCfZkijCzHUaQV4XQF0jxoV7Jnt
0mQAnigPT67EM+AboVAI0qYLNHyN+Btd
=4DUr
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--
