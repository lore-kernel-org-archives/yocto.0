Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f175.google.com (mail-ea0-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E7F4E00282
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 07:10:01 -0700 (PDT)
Received: by mail-ea0-f175.google.com with SMTP id m14so780787eaj.34
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 07:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Is7S2M1U0s8UroDaA4NpLaazG5HUDSZbOk10tW1oVRs=;
	b=o50rQ02J1pgx9vX/MO9hxMjzNZx7piYbEXMcnL+TCnzgC1XQDJFezyuuh7ZXEvwFN3
	4LvYbtAcsgjlUHic8HKtHXaUTW01TGEQqKrSjjn4tTSEew5+p9sOHZYC3OydMer5cudg
	CKmKNE58pPyKjwUJPQG+jmpugXkEUO+Q+ZtLx6AeXwggEinBwLLa7tZ4JAHIWZ2yrxEN
	EHPHQ8HSe4KMNcCZ7x8dbYloB43+TRC9HcP8oreljtlyRpXWQ62rBGH5cnz5WS5Wxdgo
	YorXuhMRRJYJBkvQC4J8x/b2W2vr3HXJocogX7j/rmqbwhdUcUY+X/JiUCboL6B+UNzm
	+igQ==
X-Received: by 10.14.108.9 with SMTP id p9mr8279782eeg.8.1377353400349;
	Sat, 24 Aug 2013 07:10:00 -0700 (PDT)
Received: from localhost (ip-62-24-80-145.net.upcbroadband.cz. [62.24.80.145])
	by mx.google.com with ESMTPSA id
	a6sm7092279eei.10.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Sat, 24 Aug 2013 07:09:59 -0700 (PDT)
Date: Sat, 24 Aug 2013 16:11:07 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Erik =?iso-8859-1?Q?Bot=F6?= <erik.boto@pelagicore.com>
Message-ID: <20130824141107.GG3544@jama>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Otavio Salvador <otavio.salvador@gmail.com>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Sat, 24 Aug 2013 14:10:02 -0000
X-Groupsio-MsgNum: 15645
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ulDeV4rPMk/y39in"
Content-Disposition: inline

--ulDeV4rPMk/y39in
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Aug 24, 2013 at 03:06:21PM +0200, Erik Bot=F6 wrote:
> On Sat, Aug 24, 2013 at 3:36 AM, Trevor Woerner
> <trevor.woerner@linaro.org> wrote:
> > Hi,
> >
> > When I try to include "qtwebkit" in my image from the "dylan" branch I =
end
> > up
> > with the following QA do_package_qa error [note that this does not happ=
en
> > with "master"]:
> >
> > ERROR: QA Issue: package qtwebkit contains bad RPATH
> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwe=
bkit/5.0.2-r0.0/build/lib
> > in file
> > /home/trevor/build/yocto/tmp/dylan/work/armv5te-poky-linux-gnueabi/qtwe=
bkit/5.0.2-r0.0/packages-split/qtwebkit/usr/lib/qt5/libexec/QtWebProcess
> >
> > And the QA test is correct. When I "objdump -x" this binary I get:
> >
> > Dynamic Section:
> >   NEEDED               libQt5WebKitWidgets.so.5
> >   NEEDED               libQt5WebKit.so.5
> >   NEEDED               libQt5Widgets.so.5
> >   NEEDED               libQt5Core.so.5
> >   NEEDED               libstdc++.so.6
> >   NEEDED               libc.so.6
> >   RPATH
> > /home/trevor/build/yocto/tmp/rdk/work/armv5te-rdk-linux-gnueabi/qtwebki=
t/5.0.2-r0.0/build/lib
> >
> > Can anyone suggest any fixes or patches? Note I'm using 5.0.2.
>=20
> Try adding a .bbappend with the following content:
>=20
> #################
> DEPENDS +=3D "chrpath-replacement-native"
> EXTRANATIVEPATH +=3D "chrpath-native"
>=20
> PRINC :=3D "${@int(PRINC) + 1}"
>=20
> do_install_append() {
>         # Remove rpath from the offending binaries
>         chrpath -d ${D}${OE_QMAKE_PATH_LIBEXECS}/QtWebProcess
> }
> #################
>=20
> That should do it.
>=20
> Is this something everyone building qtwebkit is seeing? I had just
> assumed that it had something to do with other changes I do to
> meta-qt5, but if it affect everyone I guess it could be done in
> meta-qt5 instead of local bbappends.

Yes I think everyone is seeing it, but in many distro configs bad RPATH
is only QA warning not error (that's why I was partially ignoring it
until now, concentrating on other issues).

You can see do_configure_append in qtwebkit.inc which is removing bad
rpath from qmake generated Makefile, this sometimes doesn't work, from
similar Makefile issue in qtjsondb I know that "sometimes" Makefile
generated in do_configure is regenerated later in do_compile or
do_install task, I'm not sure yet why, but that's what breaks similar
hack in qtjsondb_git.bb:do_configure_append().

Of course the real fix for both issues would be to fix .pri/.prf files
to prevent incorrect Makefile to be generated at all.

Regards,

>=20
> Cheers
> Erik
>=20
>=20
> >
> > Best regards,
> >     Trevor
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--ulDeV4rPMk/y39in
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.21 (GNU/Linux)

iEYEARECAAYFAlIYvvsACgkQN1Ujt2V2gBxfngCgjxRBF6aq/VV5mtP/8mSK9e12
bgcAn0CIFy2V3ja9h3KJKsjgjeH2HeX1
=5ghq
-----END PGP SIGNATURE-----

--ulDeV4rPMk/y39in--
