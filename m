Return-Path: <joe@deserted.net>
Received: from mail-qg0-f45.google.com (mail-qg0-f45.google.com
	[209.85.192.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04A46E00B74
	for <yocto@yoctoproject.org>; Thu,  3 Apr 2014 11:52:23 -0700 (PDT)
Received: by mail-qg0-f45.google.com with SMTP id j5so2214228qga.4
	for <yocto@yoctoproject.org>; Thu, 03 Apr 2014 11:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=WUZf2HUqrXm3RdkmcaYkyGndOFJbRtKAGtm30PDIWlo=;
	b=HI0/dhCqxDs4WQ9FXY7zfo47VsOmUqEe8ND4v5p0QFf9QGhzwN764CvEvO/6KwkgOy
	E5JXAc3QmAOCURjqFNowy7n4dKoGp1a/ETgXNNmA0J6vY5bmbgMqAtgGWIaSWUPndu4G
	1zmbN5IGBS3NCMy1EKBN7hrgdxvGXXUaz+9qVXYJmb7fHmserF+769hS6RjRkiTA1dKE
	o8pASwez3UMCkAxhX8Vx/f209w8zmxZV6lz5yU8X6yXqhYnHCu1AKyezZRH2O+EtdPXk
	Jl2VR5aVB8ypNhkWm13A8fcqsQLMy3u+6JfdV0t1dmt56qzZWaRDZCqKkunRfT8OzQX8
	tncQ==
X-Gm-Message-State: ALoCoQma6fuSXiHEZyMu+G9yRYtoY7zXjVfyw7kyYcH7S1f37A5bVikwVgDoiWSAqIFJOJlIB9E2
X-Received: by 10.140.51.106 with SMTP id t97mr8823151qga.50.1396551143101;
	Thu, 03 Apr 2014 11:52:23 -0700 (PDT)
Received: from deserted.net ([128.224.252.2])
	by mx.google.com with ESMTPSA id b4sm11247503qaw.26.2014.04.03.11.52.21
	for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Thu, 03 Apr 2014 11:52:22 -0700 (PDT)
Date: Thu, 3 Apr 2014 14:52:19 -0400
From: Joe MacDonald <joe@deserted.net>
To: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
Message-ID: <20140403185217.GE4075@deserted.net>
References: <1396349287-33532-1-git-send-email-Alexandru.Vaduva@enea.com>
MIME-Version: 1.0
In-Reply-To: <1396349287-33532-1-git-send-email-Alexandru.Vaduva@enea.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend
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
X-List-Received-Date: Thu, 03 Apr 2014 18:52:29 -0000
X-Groupsio-MsgNum: 18835
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Dzs2zDY0zgkG72+7"
Content-Disposition: inline

--Dzs2zDY0zgkG72+7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Merged, thanks.
-J.

[[yocto] [PATCH 0/1] Changed refpolicy value FILESEXTRAPATHS_prepend] On 14=
=2E04.01 (Tue 12:48) Alexandru.Vaduva wrote:

> From: "Alexandru.Vaduva" <Alexandru.Vaduva@enea.com>
>=20
> The value was defined as:
>     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-${PV}:"
> and changed it to:
>     FILESEXTRAPATHS_prepend :=3D "${THISDIR}/refpolicy-2.20130424:"
> because the bb that inherit this overwrites the PV every time,
> changing its name.
>=20
> Upstream-Status: Pending
>=20
> Alexandru.Vaduva (1):
>   refpolicy: Updated FILESEXTRAPATHS_prepend value
>=20
>  recipes-security/refpolicy/refpolicy_2.20130424.inc |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> --=20
> 1.7.10.4
>=20
--=20
-Joe MacDonald.
:wq

--Dzs2zDY0zgkG72+7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlM9reEACgkQwFvcllog0XysYgCfc2lbBwQux/LAoZs6kmzUST25
PfEAnRYqAr29eqPzULF69DKVe/6cLpNp
=q+/n
-----END PGP SIGNATURE-----

--Dzs2zDY0zgkG72+7--
