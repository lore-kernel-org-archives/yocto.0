Return-Path: <joe@deserted.net>
Received: from mail-qe0-f50.google.com (mail-qe0-f50.google.com
	[209.85.128.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E82A7E01770
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 07:49:51 -0800 (PST)
Received: by mail-qe0-f50.google.com with SMTP id 1so6378048qee.37
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 07:49:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=if4fu1rJ7tRe35KCgC7B9svSAOMmYcyVucxVqd/j2xc=;
	b=l32+X9wSS9uVs/mqLhu98ecPRJYjhpfqADtdK0V80AvB/l82hGhU13gAxzIcCck0Je
	pp/jm7TrGAdOzLBoBD9uTid8NB1oIEWpCMIg9T9JE1AyW6YSZV5l3qbG4+w6LBk84l4a
	talPaUm4av1L/hJ7fEiSxa+3FnCahLyeuM56DFHZLGt1g6JCYMt7Kx0QNDvnP5naeOpb
	6lu4ZohVS7T7YUTHdRdNMviYTjQLxmwh/9v7TGZlpWL73MQw0u4Kx7lsm+ijkYlH0rhs
	llWCHSJNysTsL/xauNKG4ZOtlOSLOm0rmlPCJYMNZRT56JK8RsNoQZ+5a/5pVO1BGQVq
	vF0A==
X-Gm-Message-State: ALoCoQmNmMt1YcQZWrMdiaNMya2NSPz9YZUiG+AemZXvJ7gVY+T55elPN5xBYr6nkJ3SWAjBedYD
X-Received: by 10.224.167.84 with SMTP id p20mr6485420qay.97.1383752990900;
	Wed, 06 Nov 2013 07:49:50 -0800 (PST)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id jw9sm70697035qeb.2.2013.11.06.07.49.49
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 06 Nov 2013 07:49:50 -0800 (PST)
Date: Wed, 6 Nov 2013 10:49:47 -0500
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131106154945.GB3791@deserted.net>
References: <1383179614-2457-1-git-send-email-flihp@twobit.us>
	<527A62BC.9060104@twobit.us>
MIME-Version: 1.0
In-Reply-To: <527A62BC.9060104@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH 0/3] Small dependency clean up.
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
X-List-Received-Date: Wed, 06 Nov 2013 15:49:52 -0000
X-Groupsio-MsgNum: 17002
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="hHWLQfXTYDoKhP50"
Content-Disposition: inline

--hHWLQfXTYDoKhP50
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Phil,

[Re: [meta-selinux][PATCH 0/3] Small dependency clean up.] On 13.11.06 (Wed=
 10:39) Philip Tricca wrote:

> Hey Joe,
>=20
> Have you had a chance to look at this one yet?

Not yet, no.  I'm just getting through the backlog of meta-selinux and
meta-networking stuff now.

-J.

>=20
> Thanks,
> - Philip
>=20
> On 10/30/2013 08:33 PM, Philip Tricca wrote:
> > This series adds the necessary run-time dependencies to the
> > selinux-config package. Some clean up follows removing the selinux
> > lib* packages from the packagegroups as they get pulled in by the
> > utilities anyways.
> >=20
> > Philip Tricca (3):
> >   Add RDEPENDS to selinux-config recipe.
> >   Remove unnecessary dependencies from minimal packagegroup.
> >   Remove unnecessary packages from packagegroup-core-selinux.
> >=20
> >  recipes-security/packagegroups/packagegroup-core-selinux.bb    |    7 =
-------
> >  recipes-security/packagegroups/packagegroup-selinux-minimal.bb |    8 =
--------
> >  recipes-security/selinux/selinux-config_0.1.bb                 |    8 =
++++++++
> >  3 files changed, 8 insertions(+), 15 deletions(-)
> >=20
>=20

--=20
-Joe MacDonald.
:wq

--hHWLQfXTYDoKhP50
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlJ6ZRkACgkQwFvcllog0XxXEQCeLpoA8vlbtRe8WL+cVnCpxHSp
cygAn2kY9ziCu7SOYl1KiGadpZJn7J8v
=0+Qv
-----END PGP SIGNATURE-----

--hHWLQfXTYDoKhP50--
