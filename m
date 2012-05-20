Return-Path: <josh@hipro.co.in>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECFC6E00723
	for <yocto@yoctoproject.org>; Sun, 20 May 2012 08:39:45 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so7859635pbb.35
	for <yocto@yoctoproject.org>; Sun, 20 May 2012 08:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:subject:from:to:date:organization:content-type:x-mailer
	:mime-version:x-gm-message-state;
	bh=WBTp/4H/MjwY3zSLDxvMgqbNd8BMad+1trXULhHvjuE=;
	b=DsefydVOCxUh9fKtNkEy/FxHk5nUs48zWsydMW/dRZTY96QZ0ylfYZ0YiEmbW/qoiy
	7eA9kIWolS4qz/WsiaySGwYKOR8KnQABGAcZTvnbrU4EAX0ThCkN/yNIvZgocrL6InmH
	VYIIflUbzbC34/Ed3WGEc1HTF7U9RNYMtTKHKNSch8+7qFu3PCLlNhr18Ln/9glHEnei
	PEjY/RLQAJJDMTrJvsYhkSvefmeHzkHPSZ7BkiAVhO/iHhIF8JY85sJyXXh30xCRBE2c
	Rmda7lqeyjXEHAgWRYtd0DvWHQD7ZF1oaOwXn1mdNYWwMcDPqBwtHioMjh736CnuFAxA
	83Zg==
Received: by 10.68.200.193 with SMTP id ju1mr56352020pbc.90.1337528384850;
	Sun, 20 May 2012 08:39:44 -0700 (PDT)
Received: from [192.168.10.211] ([59.99.251.45])
	by mx.google.com with ESMTPS id tj4sm5932193pbc.33.2012.05.20.08.39.41
	(version=SSLv3 cipher=OTHER); Sun, 20 May 2012 08:39:43 -0700 (PDT)
Message-ID: <1337528370.3567.17.camel@babel.joshhome>
From: Joshua Immanuel <josh@hipro.co.in>
To: Yocto Project <yocto@yoctoproject.org>
Date: Sun, 20 May 2012 21:09:30 +0530
Organization: HiPro IT Solutions Private Limited
X-Mailer: Evolution 3.2.2-1+b1 
Mime-Version: 1.0
X-Gm-Message-State: ALoCoQnVZCHeThJYTNInceqFizMqBvkURVsRGqtOUESVDKU2r2xY6D5paW/TB3fPq58T+/uXh/d/
Subject: python-pygobject fails to find python-dev package
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
X-List-Received-Date: Sun, 20 May 2012 15:39:46 -0000
X-Groupsio-MsgNum: 6761
Content-Type: multipart/signed; micalg="pgp-sha1";
	protocol="application/pgp-signature"; 
	boundary="=-8V1NwkcdotX2Q0gAiOdN"

--=-8V1NwkcdotX2Q0gAiOdN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

The do_configure for python-pygobject fails with the following error
message

> | checking for headers required to compile python extensions... not found
> | configure: error: could not find Python headers

The configure script tries to find "Python.h" file and fails
subsequently. The required package for this is python-dev. I can find
this package in the bitbake environment for python

$ bitbake -e python | grep ^PACKAGES=3D
PACKAGES=3D"libpython2 python-dbg python-audio python-bsddb python-codecs
python-compile python-compiler python-compression python-core
python-crypt python-ctypes python-curses python-datetime python-db
python-debugger python-dev python-difflib python-distutils
python-doctest python-elementtree python-email python-fcntl python-gdbm
python-hotshot python-html python-idle python-image python-io
python-json python-lang python-logging python-mailbox python-math
python-mime python-mmap python-multiprocessing python-netclient
python-netserver python-numbers python-pickle python-pkgutil
python-pprint python-profile python-pydoc python-re python-readline
python-resource python-robotparser python-shell python-smtpd
python-sqlite3 python-sqlite3-tests python-stringold python-subprocess
python-syslog python-terminal python-tests python-textutils
python-threading python-tkinter python-unittest python-unixadmin
python-xml python-xmlrpc python-zlib python-modules python-misc
python-man"

In my recipe which RDEPENDS on python-pygobject, If I specify

        DEPENDS +=3D "python-dev"
       =20
bitbake complains for "Missing or unbuildable dependency chain".
Specifying DEPENDS as just "python" doesn't solve the missing Python
header error for python-pygobject. How do I address this issue? Maybe I
am missing something trivial. Please enlighten me.

Regards
--=20
Joshua Immanuel
HiPro IT Solutions Private Limited
http://hipro.co.in

--=-8V1NwkcdotX2Q0gAiOdN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEABECAAYFAk+5EDMACgkQWw85XwuSFMJt+gCfd4aJP7Htv8DmF/WIWQPsxpmx
8cYAn1kqq1y1SGLlElzz3SXd+vPY34Ed
=ooo/
-----END PGP SIGNATURE-----

--=-8V1NwkcdotX2Q0gAiOdN--
