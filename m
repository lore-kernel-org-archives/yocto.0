Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D78FE0070B
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:46:24 -0700 (PDT)
Received: by dadz8 with SMTP id z8so12155323dad.35
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:46:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=E0UQOWMcSDpHsliLjWYx7YA8c9u+uRKtaZRlcWtlg+k=;
	b=ccp8IBbuq/EwBp7rhXLLEHZ4munLjL1cNzCCkmriO7uUxpi6DgBOju8F4WlqI3CGYC
	S5SLHjWozwoCgQ9ZDtTemYPED+SKbc6HfRXaAqzkdyPeUhk3R0uYn2Od1rdcsoivK4I9
	MFilm53aSjQz6K1vJtKYcfSRt2NqAmD5QzdClkCkUecEODKNV4O+AhhJ07j+jSAxxQSu
	43zY8AL+9jKzZuGTuEmsITsTckcG+JO7AXbPLOyHk6xfW1AGDn8vZvxCE+rZeTOhKaws
	QdMs0FuGlwX5X4xrNrzmm8ybgYpKfqr88uxo6X+TuZN3tmxwwDpZlFotRJWAkArNF0JF
	C4Kw==
Received: by 10.68.222.9 with SMTP id qi9mr77567936pbc.164.1340207183653;
	Wed, 20 Jun 2012 08:46:23 -0700 (PDT)
Received: from [192.168.1.101] ([122.165.226.252])
	by mx.google.com with ESMTPS id qp9sm14772722pbc.9.2012.06.20.08.46.20
	(version=SSLv3 cipher=OTHER); Wed, 20 Jun 2012 08:46:22 -0700 (PDT)
Message-ID: <1340207171.3727.0.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 20 Jun 2012 21:16:11 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1+b1
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQlDDfN/CTAeh7ZNPb3K2nWKeVy35kk6yyXomQuQiXH9XkVIWBXWlEHgdJ35Sdc8fuqbLecQ
Subject: default variables in a python task/function
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 20 Jun 2012 15:46:24 -0000
X-Groupsio-MsgNum: 7346
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-3s+5oLb46gAVy2gx1w7q"

--=-3s+5oLb46gAVy2gx1w7q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

Considering the following code snippet variants of a recipe which does
the same job, I would like to clarify certain doubts regarding this.

python __anonymous () {
        pn_split =3D d.getVar('PN', True).split('-')
        ...
}

python __anonymous () {
        import bb
        pn_split =3D bb.data.getVar('PN', d, True).split('-')
        ...
}

In some .bbclass, 'bb' library is used without importing it. I find that
the 'd' variable is an instance of DataSmart class in the bitbake
library. Will this 'bb' and 'd' variables be available to all python
tasks and functions?=20

I also find that in global python functions such as 'get_imagecmds'
defined in image_types.bbclass 'd' is got as a parameter. Can someone
explain when the 'd' will be initialized? Will the instance of DataSmart
(i.e the variable 'd') in bbclass differ from that of the recipe which
inherited that class? In bitbake manual, example of global python
functions are shown as accepting 'bb' and 'd' variables as its
parameters. Can someone explain the right way of doing this.

Thank you

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in


--=-3s+5oLb46gAVy2gx1w7q
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk/h8EMACgkQWw85XwuSFMIhIwCfejNm4hVF3cGhNAcr/bn9/i7c
Ga0AnRj86fCskKvfGC6G4R6WIBn57UpP
=aRKR
-----END PGP SIGNATURE-----

--=-3s+5oLb46gAVy2gx1w7q--
