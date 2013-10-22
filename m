Return-Path: <joe@deserted.net>
Received: from mail-ea0-f169.google.com (mail-ea0-f169.google.com
	[209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 508D0E01688
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 08:38:03 -0700 (PDT)
Received: by mail-ea0-f169.google.com with SMTP id k11so4339223eaj.14
	for <yocto@yoctoproject.org>; Tue, 22 Oct 2013 08:38:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=JEpRp6Pjm7bSJQ7lWrMTxVb7VivjgZgPBCz+DN+J1+s=;
	b=ImIkvwumpYGSyLA/C3n7kZqoX6KMb2qNUUG00bEqBtKK8dfPAJ/CPf1ZBXanCQQ9VQ
	bAf3u3XTp+4hrSj6AUGQdccyA3lwZHtP2a6xsF+PnliqGYxGBVt5DkNO/SXzwkuu/gOO
	9eNxw/eYEcgKGIeRuGRWxZY5mrHM6DzEYzd0qvku8Uj0IUCCzClZ1EQmelHmQdIsMRYk
	PrrgF3Fme2xMjzdVADYGxKoZVoipHIGqiyoGEEkl2SALlJb1G8rUq+hUp0JGYXc6M4l2
	2g+sPtmvkHnG3P8zWD/ZZF91Cbs+YkRGrUkgCjzFZ9J8ZBKT+L7gZObjNkI5ED02oaDj
	BQWQ==
X-Gm-Message-State: ALoCoQnzVGr7lO05vqvXmAerzv4cArzpcIMMKVetRS088TcwdKjLa6lvwPOmgB3Lc4vz2qqBov06
X-Received: by 10.14.180.73 with SMTP id i49mr9370027eem.55.1382456282026;
	Tue, 22 Oct 2013 08:38:02 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	u46sm58120218eep.17.2013.10.22.08.37.59 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 22 Oct 2013 08:38:00 -0700 (PDT)
Date: Tue, 22 Oct 2013 11:37:55 -0400
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org, Philip Tricca <flihp@twobit.us>
Message-ID: <20131022153754.GE3728@deserted.net>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
	<20131021145706.GA7162@deserted.net>
	<20131021200152.GA27412@deserted.net>
MIME-Version: 1.0
In-Reply-To: <20131021200152.GA27412@deserted.net>
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
X-List-Received-Date: Tue, 22 Oct 2013 15:38:04 -0000
X-Groupsio-MsgNum: 16652
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="o0ZfoUVt4BxPQnbU"
Content-Disposition: inline

--o0ZfoUVt4BxPQnbU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency fro=
m refpol.] On 13.10.21 (Mon 16:01) Joe MacDonald wrote:

> [Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency f=
rom refpol.] On 13.10.21 (Mon 10:57) Joe MacDonald wrote:
>=20
> > Thought I'd best (finally) follow up to the list on this.  I've been
> > talking to Philip offline.  These are in the queue for integration but
> > some surprising things have cropped up along the way and the integration
> > is being delayed a bit.
> >=20
> > I'll be grabbing the other meta-selinux update at the same time.
>=20
> Further to this, I've finished the merge of this batch and the two other
> submissions I've seen for meta-selinux today.  I haven't yet pushed them
> to meta-selinux on git.yoctoproject.org.  I'm going to let it cool off
> until at least tomorrow since this one proved to be much more
> problematic than I think it should have been.  In the meantime, I've
> pushed the pending changes to my github project:
>=20
>    https://github.com/joeythesaint/meta-selinux.git
>=20
> on the contrib/joeythesaint branch.

Six of the seven commits that were on that branch are now in the
official meta-selinux master branch.  The last is the bzip-compressed
policy update.

Thanks Philip.

-J.

>=20
> -J.
>=20
> >=20
> > -J.
> >=20
> > [[yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency fro=
m refpol.] On 13.10.17 (Thu 19:06) Philip Tricca wrote:
> >=20
> > > This is a resend of an earlier patch set that never made it to the li=
st
> > > AFAIK.
> > >=20
> > > The reference policy package currently pulls in a lot of python stuff
> > > that isn't strictly necessary to boot an SELinux system and load a
> > > policy. AFAIK this is caused by the mix of python and C utilities in
> > > policycoreutils.
> > >=20
> > > This patch set breaks the policycoreutils recipe up into multiple
> > > packages, one for each utility. In this way we can have the refpol etc
> > > pull in only the utilities necessary for normal operation. This happe=
ns
> > > to be only the utilities written in C and thus we can remove python
> > > completely in a minimal image.
> > >=20
> > > I've attempted to localize these changes as much as possible so this
> > > patch set should have minimal impact on recipes outside of the
> > > policycoreutils. An example image reicpe is added to demonstrate a
> > > minimal image with only the utilities required to load a policy and
> > > manipulate the policy store (add / remove policy modules) at runtime.
> > >=20
> > > Regards,
> > > - Philip
> > >=20
> > > Philip Tricca (5):
> > >  Break policycoreutils out into separate
> > >  Remove unnecessary RDEPENDS_${BPN}.
> > >  Remove runtime dependency on
> > >  Add packagegroup and image recipe for
> > >  Add packagegroup for policycoreutils
> > >=20
> > >  .../images/core-image-selinux-minimal.bb           |   15 ++
> > >  .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
> > >  .../packagegroups/packagegroup-selinux-minimal.bb  |   26 +++
> > >  .../packagegroup-selinux-policycoreutils.bb        |   36 ++++
> > >  recipes-security/refpolicy/refpolicy_common.inc    |    2 +-
> > >  recipes-security/selinux/policycoreutils.inc       |  179 ++++++++++=
+++++++--
> > >  6 files changed, 245 insertions(+), 17 deletions(-)
> > >=20
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >=20
--=20
-Joe MacDonald.
:wq

--o0ZfoUVt4BxPQnbU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJmm9IACgkQwFvcllog0XwwcQCgmKmsHlDCDc5SfsoggBgDZwFO
hk0AoIbSy9JLU7k6fFGuvluLrPcjSuB8
=wc8+
-----END PGP SIGNATURE-----

--o0ZfoUVt4BxPQnbU--
