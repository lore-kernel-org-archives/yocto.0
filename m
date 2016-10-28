Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C898AE00DCA; Thu, 27 Oct 2016 19:30:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72F15E00DC6
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:30:01 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id u84so4184110pfj.1
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 19:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ceGOkezd0EiogO+t3JGMV753XBbsoieG63kbzmriOMY=;
	b=v8X1X9YT+MFhFhMG6t/Q9phy/8v5SPrk7x9fyjfseHDrJipoyTfeuEc6iZNAlzvp9r
	o6eGPqOJw1Ih+LHgoTrBshw8KO3Fq3crhnSgYk/ALZJxiAYNXuxYkud1S9DVTHHo1ysF
	Va2MJxl+J33VzWEta2BT4c+VVshpMIQO6F8c4adSRd5wQmWyp4f3HziEd1m0QOMe0eC5
	7O0//bL7pw0IJMe5+IOmAWB/9BXsUNJFavfu6nWRKi9WE6OaxSfZ76CKrdSi2VjsGFQy
	WVonNJgxJo8NhFsiNNuqBBgBRcPyiojOL/z8F67a3VspnvZ1zTlf7BvkozMCTuD0ZUhG
	3WOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ceGOkezd0EiogO+t3JGMV753XBbsoieG63kbzmriOMY=;
	b=eeF8kTcMJSBnMB9QS4KJnsVzbsCjWfh8KrOGIR+5aJ4zC+JAuMyauBEC88SNmVaN8n
	miQYX+wxjYbmCTCIVriBglDaLE5j4O5NUZLKCmTgaygAAkvP3veJEEsdHuOu2dSrCNbH
	L7kdewKeyoe7OkwxpkKZsYF6EjRpjdGo0X66YS6w+4FG5HJOy2qNfxAsmM5ZKlrQw9H4
	zs6gOc9UB3uOLLLCjGy3PAYcdJSX8skJU3ynp4dA80WUORBjPi05400eh8KqCbzjpWLH
	No3ulLa3/GIJ0qYzj4MoRN9d3P+yzs7exGpAR5FQrhYNzR52xvIxn7PT6Lr9ZQWNYV4p
	Qcbg==
X-Gm-Message-State: ABUngve6D0v69LNihYEkQ+yiskMNfM/R5B8xtIndv4QgYh4KysYzSd6J13TXh7QLK8eiZA==
X-Received: by 10.99.109.13 with SMTP id i13mr1840784pgc.134.1477621801254;
	Thu, 27 Oct 2016 19:30:01 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:98cf:ea9b:f72:6b74?
	([2601:646:8882:b8c:98cf:ea9b:f72:6b74])
	by smtp.gmail.com with ESMTPSA id
	ht5sm14584105pad.16.2016.10.27.19.30.00
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Oct 2016 19:30:00 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
Date: Thu, 27 Oct 2016 19:29:59 -0700
Message-Id: <34100DE9-F438-4619-A9C1-4625DB710A6B@gmail.com>
References: <1477494038-2895-1-git-send-email-akuster808@gmail.com>
To: Armin Kuster <akuster808@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 1/2] smack: Add new package
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
X-List-Received-Date: Fri, 28 Oct 2016 02:30:03 -0000
X-Groupsio-MsgNum: 32657
Content-Type: multipart/signed;
	boundary="Apple-Mail=_75FE7842-2FF8-4060-98EE-AB65C9FA7C24";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_75FE7842-2FF8-4060-98EE-AB65C9FA7C24
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 26, 2016, at 8:00 AM, Armin Kuster <akuster808@gmail.com> =
wrote:
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
> recipes-security/smack/files/run-ptest             |  3 ++
> .../smack/files/smack_generator_make_fixup.patch   | 18 ++++++++++
> recipes-security/smack/smack_1.3.0.bb              | 42 =
++++++++++++++++++++++
> 3 files changed, 63 insertions(+)
> create mode 100644 recipes-security/smack/files/run-ptest
> create mode 100644 =
recipes-security/smack/files/smack_generator_make_fixup.patch
> create mode 100644 recipes-security/smack/smack_1.3.0.bb
>=20
> diff --git a/recipes-security/smack/files/run-ptest =
b/recipes-security/smack/files/run-ptest
> new file mode 100644
> index 0000000..049a9b4
> --- /dev/null
> +++ b/recipes-security/smack/files/run-ptest
> @@ -0,0 +1,3 @@
> +#!/bin/sh
> +./tests/make_policies.bash ./tests/generator
> +./tests/make_policies.bash ./tests/generator labels
> diff --git =
a/recipes-security/smack/files/smack_generator_make_fixup.patch =
b/recipes-security/smack/files/smack_generator_make_fixup.patch
> new file mode 100644
> index 0000000..8bafc5e
> --- /dev/null
> +++ b/recipes-security/smack/files/smack_generator_make_fixup.patch
> @@ -0,0 +1,18 @@
> +Upstream-Status: Pending
> +
> +Signed-off-by: Armin Kuster <akuster808@gmail.com>
> +
> +
> +Index: git/tests/Makefile
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +--- git.orig/tests/Makefile
> ++++ git/tests/Makefile
> +@@ -4,7 +4,7 @@ clean:
> + 	rm -rf ./out ./generator
> +
> + generator: generator.c
> +-	gcc -Wall -O3 generator.c -o ./generator
> ++	${CC}  generator.c -o ./generator

This should be ${CC} ${LDFLAGS} since you are doing compiling and =
linking in single step
otherwise we may end up with hash-style problems

> +
> + policies: ./generator ./make_policies.bash
> + 	./make_policies.bash ./generator
> diff --git a/recipes-security/smack/smack_1.3.0.bb =
b/recipes-security/smack/smack_1.3.0.bb
> new file mode 100644
> index 0000000..46d305e
> --- /dev/null
> +++ b/recipes-security/smack/smack_1.3.0.bb
> @@ -0,0 +1,42 @@
> +DESCRIPTION =3D "Selection of tools for developers working with =
Smack"
> +HOMEPAGE =3D "https://github.com/smack-team/smack"
> +SECTION =3D "Security/Access Control"
> +LICENSE =3D "LGPL-2.1"
> +
> +LIC_FILES_CHKSUM =3D =
"file://COPYING;md5=3D4fbd65380cdd255951079008b364516c"
> +
> +SRCREV =3D "478f68d182c5070f510482194d3e097b11c21907"
> +SRC_URI =3D " \
> +	git://github.com/smack-team/smack.git;branch=3Dv1.3.x \
> +	file://smack_generator_make_fixup.patch \
> +	file://run-ptest"
> +
> +PV =3D "1.3.0+git${SRCPV}"
> +
> +inherit autotools pkgconfig systemd ptest
> +
> +S =3D "${WORKDIR}/git"
> +
> +PACKAGECONFIG ??=3D ""
> +PACKAGECONG +=3D "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', =
'systemd', '', d)}=E2=80=9D
     ^^^^
is this a typo ? and may be it should be _append not +=3D

> +
> +PACKAGECONFIG[systemd] =3D "--with-systemdsystemunitdir=3DDIR"
> +PACKAGECONFIG[systemd] =3D =
"--with-systemdsystemunitdir=3D${systemd_system_unitdir}, =
--without-systemdsystemunitdir, systemd"
> +
> +do_compile_append () {
> +	oe_runmake -C ${S}/tests generator
> +}
> +
> +do_install_ptest () {
> +	install -d ${D}${PTEST_PATH}/tests
> +	install ${S}/tests/generator ${D}/${PTEST_PATH}/tests
> +	install ${S}/tests/generate-rules.sh ${D}${PTEST_PATH}/tests
> +	install ${S}/tests/make_policies.bash ${D}${PTEST_PATH}/tests
> +}
> +
> +FILES_${PN}-ptest +=3D "generator"
> +
> +RDEPENDS_${PN} +=3D "coreutils"
> +RDEPENDS_${PN}-ptest +=3D "make bash bc"
> +
> +BBCLASSEXTEND =3D "native"
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_75FE7842-2FF8-4060-98EE-AB65C9FA7C24
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgSuCcACgkQuwUzVZGdMxSuTwCfSYO7WDttv8JTspWlAIgfpCuq
krkAn0EoiFSTK9K/1efjh7GG7DNj6n+F
=NMVf
-----END PGP SIGNATURE-----

--Apple-Mail=_75FE7842-2FF8-4060-98EE-AB65C9FA7C24--
