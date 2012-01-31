Return-Path: <josh@hipro.co.in>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D214AE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 23:10:41 -0800 (PST)
Received: by dakj40 with SMTP id j40so5239484dak.35
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 23:10:41 -0800 (PST)
Received: by 10.68.231.10 with SMTP id tc10mr41980744pbc.91.1327993841077;
	Mon, 30 Jan 2012 23:10:41 -0800 (PST)
Received: from [192.168.10.231] ([59.99.251.45])
	by mx.google.com with ESMTPS id e10sm23139478pbv.0.2012.01.30.23.10.39
	(version=SSLv3 cipher=OTHER); Mon, 30 Jan 2012 23:10:40 -0800 (PST)
Message-ID: <1327993829.2696.18.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Tue, 31 Jan 2012 12:40:29 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1 
Mime-Version: 1.0
Subject: forcing a task to run while building an image
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
X-List-Received-Date: Tue, 31 Jan 2012 07:10:41 -0000
X-Groupsio-MsgNum: 4515
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-ZSzL3xR2UHZxyKZkLk5y"

--=-ZSzL3xR2UHZxyKZkLk5y
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello all,
	How do I force a particular task to run every time while building an
image? At present in my custom image recipe I've added the following
lines
       =20
        SOME_VARIABLE =3D "Blah"
        do_bootimg[depends] +=3D "base-files:do_install"
       =20
But the contents of ${SOME_VARIABLE} is not available in the
'base-files' recipe. Even

        export SOME_VARIABLE =3D "Blah"
       =20
doesn't solve the problem. So, I would like to know whether the approach
used here to force a task is correct. Moreover how can I make the
variable defined here to be available in the forced task.

Regards
Joshua

--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-ZSzL3xR2UHZxyKZkLk5y
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iEYEABECAAYFAk8nk+UACgkQWw85XwuSFMLqEACeMR9LpAOHKpMfttpJe+hUbfZ7
edoAn2NYBKpH1YRIRzn16Qz+k9Sd3GHN
=YPkl
-----END PGP SIGNATURE-----

--=-ZSzL3xR2UHZxyKZkLk5y--
