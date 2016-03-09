Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA150E00C6F; Wed,  9 Mar 2016 15:49:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74610E00BF5
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 15:49:15 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id n186so7303156wmn.1
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 15:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=A7hVLVls36zL73CFmdNNrzyyNYdbHmBaYjdW1KQdwAw=;
	b=JCXA4oU1Pfn6DBw0Wpt/1JSfuWFV0wyc16f7akRxei5b1O2hhJbYOzTuxs3z0c1x2S
	Kw9aezrjhYKySAWDGl86EGf06AtWCDBZ6L1UNlLtQxVKaspJjD69gIoMOAy3MZ9/bTJk
	GMk48QPbxw+akqIUkuNf5S5iEqePxYNCUo6XY1y7ckQ7zYIqChtERQqpiUGzunZIZJa/
	UBkQHWd8u1E1IBJ73XyjqyuNpAB+bkZJs48i7oovHsenfMXHCHZsLEAAP31ZtXqD+hHg
	7NO2OcYWDcx7qFMaxpQutx1j/prgLLFWOneUzEmuTVzajA029lesHE34WGmoFIGXD9iJ
	wV3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=A7hVLVls36zL73CFmdNNrzyyNYdbHmBaYjdW1KQdwAw=;
	b=ke0WyMmqOPZeb8uOwh/1yJPFU2c38Ll/qDQ9t2nWxZc6JI+XfuPnCS6BOBpBZkPQq9
	O9DcqH38ToK5nuwyvfs85vSca9aQixiwmtH8KJVJK5YkUNOT79aZjbuiq49TJUqFasL2
	WVteUe3CyFKdMGIXnAzuyzytkD3SlqUIpn8fbK67NsDkJOPnJgeUqDjyYWFJof+lqeQ3
	Ak+cMxpS5bAu3zg1+l3DpCmr/rJjtao0Fh6eK8bAUwp5np0CqmWxWs9IzkeisyybZJHY
	wk0/C/BhSjf6GnPunGAsu8GW8x59YyUqovJ1dkJIZkqSCyHrvwveIDoln4HV3q+IQfgB
	9+iw==
X-Gm-Message-State: AD7BkJJ3A1xTLCxRNGHYZFPDRKmI0XMMNjY3xrZHpHLjlEJnUUMY3VDcN7mSa1cv+g4Qnw==
X-Received: by 10.28.125.195 with SMTP id y186mr313099wmc.79.1457567355072;
	Wed, 09 Mar 2016 15:49:15 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id gk4sm857805wjd.7.2016.03.09.15.49.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 09 Mar 2016 15:49:13 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 10 Mar 2016 00:52:07 +0100
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20160309235207.GO2542@jama>
References: <18448427.V3ACvxT67R@rjs-zotac.streifs.net>
	<CAJTo0La2CZAKw0Cd4_NpPLt=qXy3x3Arv36huhUMmCH3tV14YA@mail.gmail.com>
	<20160309225058.GM2542@jama>
	<1457564551.2804.199.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1457564551.2804.199.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "Peter A. Bigot" <pab@pabigot.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-core@lists.openembedded.org,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: [OE-core] Wrong sstate signatures for cross toolchain Was: Building gdb-7.10 for arm with master
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
X-List-Received-Date: Wed, 09 Mar 2016 23:49:19 -0000
X-Groupsio-MsgNum: 28949
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FcSpk3Icpd/Pbul4"
Content-Disposition: inline

--FcSpk3Icpd/Pbul4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 09, 2016 at 11:02:31PM +0000, Richard Purdie wrote:
> On Wed, 2016-03-09 at 23:50 +0100, Martin Jansa wrote:
> > What's even more interesting is that even gcc-cross-initial has
> > different signatures for 2 ARM MACHINEs with different DEFAULTTUNES
> >=20
> > OE qemuarm7@ ~/build/oe-core $ grep ^DEFAULTTUNE=3D env.gdb-cross-arm*
> > env.gdb-cross-arm:DEFAULTTUNE=3D"armv5te"
> > env.gdb-cross-arm7:DEFAULTTUNE=3D"armv7a-neon"
> >=20
> > OE qemuarm7@ ~/build/oe-core $ ls tmp-glibc/sstate
> > -diff/1457556601/*/*/*gcc-cross-initial*/*do_configure*
> > tmp-glibc/sstate-diff/1457556601/qemuarm/x86_64-linux/gcc-cross
> > -initial-arm/5.3.0
> > -r0.do_configure.sigdata.e54e7a04acf1029cc37463114c7e4dba
> > tmp-glibc/sstate-diff/1457556601/qemuarm7/x86_64-linux/gcc-cross
> > -initial-arm/5.3.0
> > -r0.do_configure.sigdata.3496e3dde08a49b14462741cc6f8d239
> > OE qemuarm7@ ~/build/oe-core $ bitbake-diffsigs tmp-glibc/sstate
> > -diff/1457556601/*/*/*gcc-cross-initial*/*do_configure*
> > basehash changed from 5848199c69eee0db746de21c5458c13d to
> > 673cd8d19bc4cbea132900a670593df6
> > Variable EXTRA_OECONF value changed from '--with-newlib --without
> > -headers --disable-shared --disable-threads --disable-multilib -
> > -disable-__cxa_atexit --enable-languages=3Dc --program
> > -prefix=3D${TARGET_PREFIX} --with-sysroot=3D/not/exist --with-build
> > -sysroot=3D${GCCCROSS_BUILDSYSROOT} ${EXTRA_OECONF_INITIAL}=20
> > ${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold', '--with
> > -ld=3D${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}ld.bfd', '', d)}
> > ${EXTRA_OECONF_GCC_FLOAT} ${@get_gcc_ppc_plt_settings(bb, d)} --with
> > -native-system-header-dir=3D${SYSTEMHEADERS}${DISABLE_STATIC}=20
> > ${@gettext_oeconf(d)}
> > DISTRO_FEATURES{ld-is-gold} =3D Unset' to '--with-newlib --without
> > -headers --disable-shared --disable-threads --disable-multilib -
> > -disable-__cxa_atexit --enable-languages=3Dc --program
> > -prefix=3D${TARGET_PREFIX} --with-sysroot=3D/not/exist --with-build
> > -sysroot=3D${GCCCROSS_BUILDSYSROOT} ${EXTRA_OECONF_INITIAL}=20
> > ${@bb.utils.contains('DISTRO_FEATURES', 'ld-is-gold', '--with
> > -ld=3D${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}ld.bfd', '', d)}
> > ${EXTRA_OECONF_GCC_FLOAT} ${@get_gcc_ppc_plt_settings(bb, d)} --with
> > -native-system-header-dir=3D${SYSTEMHEADERS}${DISABLE_STATIC}=20
> > ${@gettext_oeconf(d)} --with-arch=3Darmv7-a
> > DISTRO_FEATURES{ld-is-gold} =3D Unset'
>=20
> To answer my own question, it looks like:
>=20
> gcc-configure-common.inc:EXTRA_OECONF_append_armv6 =3D " --with-arch=3Dar=
mv6"
> gcc-configure-common.inc:EXTRA_OECONF_append_armv7a =3D " --with-arch=3Da=
rmv7-a"
> gcc-configure-common.inc:EXTRA_OECONF_append_armv7ve =3D " --with-arch=3D=
armv7-a"
>=20
> which effectively comes from:
>=20
> http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/gc=
c/gcc-configure-common.inc?id=3Dc0a071e16ec04f485f06eece5b807e5afbe1c1f1
>=20
> The concept of having one gcc for each arch precludes such changes :(.
>=20
> I believe these overrides need to move to the gcc-target.inc file.

Reverting this change in Dizzy based build fixes the signatures for
gcc-cross(-initial)-arm

for gdb-cross-arm, there is still datadir -> TUNE_PKGARCH dependency from e=
ven
older change:

OE qemuarm7@ ~/build/oe-core/openembedded-core $ git show -1 3e87aba1
commit 3e87aba1ee2ca0e39ba66fb7cba52e48df499c23
Author: Phil Blundell <pb@pbcl.net>
Date:   Wed Apr 24 16:15:54 2013 +0100

    gdb-cross: Adjust ${datadir} to avoid file conflicts in sysroot
   =20

+datadir .=3D "/gdb-${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS}"

Reverting this change fixes gdb-cross-arm signatures.

Will try what happens when I revert this in master and move --with-arch
options to gcc-target.inc only.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--FcSpk3Icpd/Pbul4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbgtyYACgkQN1Ujt2V2gBzKfQCfTm7ZOsAqJ1JFG5xO+9tEfl/d
3FMAoKTXaiNiXNnN6/J1sLNpA9z0QVjW
=Fmu8
-----END PGP SIGNATURE-----

--FcSpk3Icpd/Pbul4--
