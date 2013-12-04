Return-Path: <joe@deserted.net>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F4CBE00779
	for <yocto@yoctoproject.org>; Wed,  4 Dec 2013 07:18:52 -0800 (PST)
Received: by mail-ea0-f172.google.com with SMTP id q10so10812572ead.3
	for <yocto@yoctoproject.org>; Wed, 04 Dec 2013 07:18:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=SkdAQX/t6fNOWPETAZP2c4V8PW8tksyzNZ2Tzun1EJs=;
	b=TQ5lwk5Vx1t5tIaiABAq6EMUh3Luc+h3/WcKqxYloiQlvo/R31g26PDBao0uQbFOqi
	MajGj9edRGDS12iL7K05BM/mfCSnPdNzJaBNU7WdkUguTmmAnrljtdvLWDpQsv/MGDVk
	U4UIwTjKf9xrRUqj0RO+PLVKFKiyn4frw1cyrwt3U6cuqjIHvoLJzHs3MzZR03RG8ny+
	sy06KV4tYUZtR/rIu7+9hiQQEF+JH7srxOmd3/g03vthUfeTVYtXmkKq3S15edGIA3nE
	w9P4WJoM0dwOyIt4pPdZKchF9Tv65wdRBpsuwxp0Gv19GPlX0uEt6p0DKwIaf9BnY8k8
	JUTw==
X-Gm-Message-State: ALoCoQmayf+DZiP6QfZKV7UWf9SqgVH90Slr3RPyzn4NHb60UF9LQcPHnOiF5jPkFbAVg/Hbfk3+
X-Received: by 10.14.5.12 with SMTP id 12mr76622075eek.9.1386170331691;
	Wed, 04 Dec 2013 07:18:51 -0800 (PST)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id p45sm5455436eeg.1.2013.12.04.07.18.49
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 04 Dec 2013 07:18:50 -0800 (PST)
Date: Wed, 4 Dec 2013 10:18:45 -0500
From: Joe MacDonald <joe@deserted.net>
To: Philip Tricca <flihp@twobit.us>
Message-ID: <20131204151842.GC5677@deserted.net>
References: <1384628650-15034-1-git-send-email-flihp@twobit.us>
MIME-Version: 1.0
In-Reply-To: <1384628650-15034-1-git-send-email-flihp@twobit.us>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH v2 0/6] Bump versions to catch up with oe-core master.
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
X-List-Received-Date: Wed, 04 Dec 2013 15:18:57 -0000
X-Groupsio-MsgNum: 17428
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="iFRdW5/EC4oqxDHL"
Content-Disposition: inline

--iFRdW5/EC4oqxDHL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.

-J.

[[meta-selinux][PATCH v2 0/6] Bump versions to catch up with oe-core master=
=2E] On 13.11.16 (Sat 19:04) Philip Tricca wrote:

> This series includes the low impact changes necessary to bring meta-selin=
ux
> up to speed with a few upgrades in oe-core master. The bulk of this is ju=
st
> renaming bbappends and minor tweaks to existing patches. I've omitted the
> work necessary to get tar from 1.26 to 1.27 on account of the addition of
> support for attrs/xattrs/acls in the new version. ACLs don't look to work
> out of the box so that new work should be in a separate patch.
>=20
> Philip Tricca (6):
>   glib-2.0: rename bbappend from 2.38.0 to 2.38.1
>   mesa: rename bbappend from 9.1.6 to 9.2.2
>   gnupg: rename bbappend from 2.0.21 to 2.0.22
>   openssh: rename bbappend from 6.2p2 to 6.4p1
>   sudo: rename bbappend from 1.8.7 to 1.8.8
>   at: bump from 3.1.13 to 3.1.14
>=20
>  recipes-connectivity/openssh/openssh_6.2p2.bbappend |   13 -------------
>  recipes-connectivity/openssh/openssh_6.4p1.bbappend |   13 +++++++++++++
>  recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend      |    1 -
>  recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend      |    1 +
>  recipes-extended/at/at/at-3.1.13-selinux.patch      |    4 ++--
>  recipes-extended/at/at_3.1.13.bbappend              |    7 -------
>  recipes-extended/at/at_3.1.14.bbappend              |    7 +++++++
>  recipes-extended/sudo/sudo_1.8.7.bbappend           |    3 ---
>  recipes-extended/sudo/sudo_1.8.8.bbappend           |    3 +++
>  recipes-graphics/mesa/mesa_9.1.6.bbappend           |    1 -
>  recipes-graphics/mesa/mesa_9.2.2.bbappend           |    1 +
>  recipes-support/gnupg/gnupg_2.0.21.bbappend         |    5 -----
>  recipes-support/gnupg/gnupg_2.0.22.bbappend         |    5 +++++
>  13 files changed, 32 insertions(+), 32 deletions(-)
>  delete mode 100644 recipes-connectivity/openssh/openssh_6.2p2.bbappend
>  create mode 100644 recipes-connectivity/openssh/openssh_6.4p1.bbappend
>  delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
>  create mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
>  delete mode 100644 recipes-extended/at/at_3.1.13.bbappend
>  create mode 100644 recipes-extended/at/at_3.1.14.bbappend
>  delete mode 100644 recipes-extended/sudo/sudo_1.8.7.bbappend
>  create mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
>  delete mode 100644 recipes-graphics/mesa/mesa_9.1.6.bbappend
>  create mode 100644 recipes-graphics/mesa/mesa_9.2.2.bbappend
>  delete mode 100644 recipes-support/gnupg/gnupg_2.0.21.bbappend
>  create mode 100644 recipes-support/gnupg/gnupg_2.0.22.bbappend
>=20
--=20
-Joe MacDonald.
:wq

--iFRdW5/EC4oqxDHL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlKfR9IACgkQwFvcllog0XztKwCfQPXFfWMztaeSrgMtcZu2IGiB
EJIAnjTYlDSXAJhBfAglUJlsS5VOgaws
=PH+b
-----END PGP SIGNATURE-----

--iFRdW5/EC4oqxDHL--
