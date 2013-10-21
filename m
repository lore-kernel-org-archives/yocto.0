Return-Path: <joe@deserted.net>
Received: from mail-ee0-f54.google.com (mail-ee0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B31C6E0170E
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 13:02:02 -0700 (PDT)
Received: by mail-ee0-f54.google.com with SMTP id e53so3941332eek.13
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2013 13:02:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=8rY0TaZHZ4z09sbKTCNM4UkP8Q7etb2x2rCstpZ/4MA=;
	b=ka5fA0QYfN8ZSv/BlxEfOt+yY2W/PgTMIePfyrSZ5ChkWQsV1RBpY08ZqunrkZMA5k
	uQo+mnWGxz/JXqzOocuj5QVADBttMVz/NQ0vQy2x8YEOpZOaPF6pGlzRbe7Mdbsg9ss5
	6X2ZOezU3h81AX7wS6M6BsxK9lfNh2OBhoikA0jzbjLJ4pWcl/6Is2FDvAFRFv2UO1vU
	sDnzv4smwP8Aw6E+QjTfzUnI/Re+V9DXRRa/r3ox9ZXRW3tE7OXTvNY+iaoPnraYjp1F
	0ngOF54U4SOG5ig0HdDfN3y9yk48bixoCe+n0nbRf2ci0d6A5IMfdVAe/hKc2b4e7WdY
	bx6A==
X-Gm-Message-State: ALoCoQn2+Eq52fpmFgN3Q9bxlJHwZY6Rd1K0fxUzDpQyCUaMJDbE2U1UPhn2/xzWZ5F4O/2lHh6u
X-Received: by 10.14.89.7 with SMTP id b7mr24795724eef.10.1382385721910;
	Mon, 21 Oct 2013 13:02:01 -0700 (PDT)
Received: from deserted.net ([128.224.252.2]) by mx.google.com with ESMTPSA id
	r48sm47555262eev.14.2013.10.21.13.01.59 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Mon, 21 Oct 2013 13:02:01 -0700 (PDT)
Date: Mon, 21 Oct 2013 16:01:55 -0400
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org, Philip Tricca <flihp@twobit.us>
Message-ID: <20131021200152.GA27412@deserted.net>
References: <1382036771-30531-1-git-send-email-flihp@twobit.us>
	<20131021145706.GA7162@deserted.net>
MIME-Version: 1.0
In-Reply-To: <20131021145706.GA7162@deserted.net>
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
X-List-Received-Date: Mon, 21 Oct 2013 20:02:04 -0000
X-Groupsio-MsgNum: 16630
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="jRHKVT23PllUwdXP"
Content-Disposition: inline

--jRHKVT23PllUwdXP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency fro=
m refpol.] On 13.10.21 (Mon 10:57) Joe MacDonald wrote:

> Thought I'd best (finally) follow up to the list on this.  I've been
> talking to Philip offline.  These are in the queue for integration but
> some surprising things have cropped up along the way and the integration
> is being delayed a bit.
>=20
> I'll be grabbing the other meta-selinux update at the same time.

Further to this, I've finished the merge of this batch and the two other
submissions I've seen for meta-selinux today.  I haven't yet pushed them
to meta-selinux on git.yoctoproject.org.  I'm going to let it cool off
until at least tomorrow since this one proved to be much more
problematic than I think it should have been.  In the meantime, I've
pushed the pending changes to my github project:

   https://github.com/joeythesaint/meta-selinux.git

on the contrib/joeythesaint branch.

-J.

>=20
> -J.
>=20
> [[yocto] [meta-selinux][PATCH 0/5] Resend: Remove python dependency from =
refpol.] On 13.10.17 (Thu 19:06) Philip Tricca wrote:
>=20
> > This is a resend of an earlier patch set that never made it to the list
> > AFAIK.
> >=20
> > The reference policy package currently pulls in a lot of python stuff
> > that isn't strictly necessary to boot an SELinux system and load a
> > policy. AFAIK this is caused by the mix of python and C utilities in
> > policycoreutils.
> >=20
> > This patch set breaks the policycoreutils recipe up into multiple
> > packages, one for each utility. In this way we can have the refpol etc
> > pull in only the utilities necessary for normal operation. This happens
> > to be only the utilities written in C and thus we can remove python
> > completely in a minimal image.
> >=20
> > I've attempted to localize these changes as much as possible so this
> > patch set should have minimal impact on recipes outside of the
> > policycoreutils. An example image reicpe is added to demonstrate a
> > minimal image with only the utilities required to load a policy and
> > manipulate the policy store (add / remove policy modules) at runtime.
> >=20
> > Regards,
> > - Philip
> >=20
> > Philip Tricca (5):
> >  Break policycoreutils out into separate
> >  Remove unnecessary RDEPENDS_${BPN}.
> >  Remove runtime dependency on
> >  Add packagegroup and image recipe for
> >  Add packagegroup for policycoreutils
> >=20
> >  .../images/core-image-selinux-minimal.bb           |   15 ++
> >  .../packagegroups/packagegroup-core-selinux.bb     |    4 +-
> >  .../packagegroups/packagegroup-selinux-minimal.bb  |   26 +++
> >  .../packagegroup-selinux-policycoreutils.bb        |   36 ++++
> >  recipes-security/refpolicy/refpolicy_common.inc    |    2 +-
> >  recipes-security/selinux/policycoreutils.inc       |  179 ++++++++++++=
+++++--
> >  6 files changed, 245 insertions(+), 17 deletions(-)
> >=20
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>=20
--=20
-Joe MacDonald.
:wq

--jRHKVT23PllUwdXP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJliDAACgkQwFvcllog0XyPzgCdGdYEFM52nLvTX9a0ocEz81Kn
6xoAn2LJqV2cBti4UngelIAUk/0rav2/
=Owuq
-----END PGP SIGNATURE-----

--jRHKVT23PllUwdXP--
