Return-Path: <joe@deserted.net>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86665E00794
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:54:25 -0800 (PST)
Received: by mail-ie0-f179.google.com with SMTP id rl12so237382iec.24
	for <yocto@yoctoproject.org>; Wed, 12 Feb 2014 16:54:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=KzlVY1rYJRTmY11jc7/cylAn4ZyqIV4y4XnEFWWtpgc=;
	b=TaL6NdwIMDQSg3uwIqHuS0nSFhqLLIAiK7vq0hGaZtzwU/upibKWMUTbzTI/XzLrN/
	ske/lHO0yWV6GI9IR6TeM4sTRedQJqHe8MWlRjso/Ze4fn0P0ay8N+SXlFm2/6WyRTP7
	zC5GBy39yH11pEUqQKqgCJFAfb7jFUriICTMPvFpc1cDklfcOOQF4iF4SoQCd/0y46zE
	XpdwYVU1laDptnzhsakDRMP1ZCIjzRQUOSJVC4z4hazx9dSzJyK6Sa4utUAO+2MQU/I/
	/OJSbxFYsI0PQ458RzDvGtCP+FIVsL4G4mbR9cOxnzrhE1qTxbkzbRIHYFn//NPMWu84
	TVYg==
X-Gm-Message-State: ALoCoQn7oehgUZQsrxi4nDJ34gWHQNid7KRqO9EcHWEtFfdpZ8pQuZ4I9/oqrMs8vbotrTf+r6au
X-Received: by 10.50.182.170 with SMTP id ef10mr596749igc.9.1392252864948;
	Wed, 12 Feb 2014 16:54:24 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	om7sm1496390igb.10.2014.02.12.16.54.23 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Wed, 12 Feb 2014 16:54:24 -0800 (PST)
Date: Wed, 12 Feb 2014 19:54:21 -0500
From: Joe MacDonald <joe@deserted.net>
To: rongqing.li@windriver.com
Message-ID: <20140213005418.GC23405@deserted.net>
References: <cover.1392002007.git.rongqing.li@windriver.com>
MIME-Version: 1.0
In-Reply-To: <cover.1392002007.git.rongqing.li@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/1] refpolicy: backport two patches
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
X-List-Received-Date: Thu, 13 Feb 2014 00:54:29 -0000
X-Groupsio-MsgNum: 18082
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="q9KOos5vDmpwPx9o"
Content-Disposition: inline

--q9KOos5vDmpwPx9o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[[yocto] [meta-selinux][PATCH 0/1] refpolicy: backport two patches] On 14.0=
2.10 (Mon 15:12) rongqing.li@windriver.com wrote:

> From: Roy Li <rongqing.li@windriver.com>
>=20
> The following changes since commit 13266999932edaa334b24c18c79815eb19559b=
86:
>=20
>   refpolicy: Allow ping to get/set capabilities (2014-01-28 16:41:59 +080=
0)
>=20
> are available in the git repository at:
>=20
>   git://git.pokylinux.org/poky-contrib roy/refpolicy-backport-dhclient-ho=
stname
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Droy/refpolicy-b=
ackport-dhclient-hostname
>=20
> Roy Li (1):
>   refpolicy: backport two patches to fix dhclient, hostname and
>     ifconfig
>=20
>  ...-not-audit-attempts-by-hostname-to-read-a.patch |   59 ++++++++++++++=
++++++
>  ...dhcpc-binds-socket-to-random-high-udp-por.patch |   41 ++++++++++++++
>  .../refpolicy/refpolicy_2.20130424.inc             |    2 +
>  3 files changed, 102 insertions(+)
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/hostn=
ame-do-not-audit-attempts-by-hostname-to-read-a.patch
>  create mode 100644 recipes-security/refpolicy/refpolicy-2.20130424/sysne=
twork-dhcpc-binds-socket-to-random-high-udp-por.patch
>=20

Merged, thanks Roy.

--=20
-Joe MacDonald.
:wq

--q9KOos5vDmpwPx9o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL8F7oACgkQwFvcllog0XycKQCfbIUJAlaCj8NdZeEt/rQ+Mob9
6REAoIL6vZaOTQvyqF6TD2qxP1eW1+uT
=E1/Z
-----END PGP SIGNATURE-----

--q9KOos5vDmpwPx9o--
