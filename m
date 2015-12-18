Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6E45E00869; Fri, 18 Dec 2015 05:04:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79BB4E00321
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 05:04:50 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id p187so64136914wmp.0
	for <yocto@yoctoproject.org>; Fri, 18 Dec 2015 05:04:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=VeLfS4TOtiubolIIW26l6h2/FeVSFXdqLI4cUM5jtF4=;
	b=efgXeDtL1h42DVXKtcE2H/ug+U5tokefR5Fq0rII/rffUn6KCNJAJuNzIf1krA1dD0
	SpkF4voGApsFldohWdv5GbGsPtcTWNgfQBYSXIWv8JxVFtVnKmphoPsu7afHKbt74tQD
	UplKa8IpjG4FIW4+yFC2INZkx9+xHB4pGilN3VhzfmNttAwFyXOKvhWkfKIMVo991/qs
	F1xNnVErw0CpIYR9FwVIv5JNwQ9XCr2gIqTcgI+do2urPxcTQXqXFReDxIrS2dtK69yi
	ON+rxwr6MgFQ9N7zRGiL5thN5QnUXlfRzBO1WXGHkowTvE9zpfEqc6lqvs729UTl6D0m
	3VVQ==
X-Received: by 10.28.141.140 with SMTP id p134mr3163659wmd.6.1450443889616;
	Fri, 18 Dec 2015 05:04:49 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id u17sm6646657wmd.8.2015.12.18.05.04.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Dec 2015 05:04:48 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 18 Dec 2015 14:07:21 +0100
To: =?utf-8?B?0JXQstCz0LXQvdC40Lkg0JDRgdGC0LDRhNGM0LXQsg==?= <groovy@mail.ru>
Message-ID: <20151218130721.GH2563@jama>
References: <1450434924.569396788@f354.i.mail.ru>
MIME-Version: 1.0
In-Reply-To: <1450434924.569396788@f354.i.mail.ru>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: Different *.so content in recipe and rootfs
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
X-List-Received-Date: Fri, 18 Dec 2015 13:04:56 -0000
X-Groupsio-MsgNum: 27749
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NzX0AQGjRQPusK/O"
Content-Disposition: inline

--NzX0AQGjRQPusK/O
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 18, 2015 at 01:35:24PM +0300, =D0=95=D0=B2=D0=B3=D0=B5=D0=BD=D0=
=B8=D0=B9 =D0=90=D1=81=D1=82=D0=B0=D1=84=D1=8C=D0=B5=D0=B2 wrote:
>  Hi,
>=20
> Yocto 2.0
>=20
> I have a recipe qtbase.
>=20
> RECIPE SIDE:
> File /packages-split/qtbase/usr/lib/libQt5Core.so.5.5.1
> Size: 5186760
> Time: 01:21
> =C2=A0
> ROOTFS SIDE:
> File /usr/lib/libQt5Core.so.5.5.1
> Size: 5206080
> Time: 01:21

Do you happen to have prelink enabled for your image?

> The SDK constructed by -c populate_sdk has same version of file as a reci=
pe side has.
> Actually I have no file with size 5200680 anywhere in my /tmp dir. The on=
ly place it exists - rootfs image.=C2=A0
> =C2=A0
> I have many such differencies, including libc.
>=20
> The image works. Qt works. Local debugging in a device console works.
> Remote debugging fails. The debugger says I have different versions of li=
bs in my SDK's sysroot and the device.
>=20
> If I view the files in MC's viewer - it shows the same function names, bu=
t different addresses.
>=20
> If I put the file libQt5Core.so.5.5.1=C2=A0from the recipe to rootfs manu=
ally - image still works. Remote debugger reports no errors.
>=20
> But I still want to clear out what's going on and how to make debuggable =
image w.o. hand manipulations.
>=20
> BTW I did a full rebuild of the image. No success, libs are still differe=
nt
>=20
> Any help is appreciated.
>=20
> Eugene

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--NzX0AQGjRQPusK/O
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlZ0BQgACgkQN1Ujt2V2gByQcACeJAgDDRHe0mKv+0i4x8MYzUv1
iMcAn0eKVpqbd8CwUHn6FwSNIzDHRTv3
=KVgT
-----END PGP SIGNATURE-----

--NzX0AQGjRQPusK/O--
