Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D998FE00803
	for <yocto@yoctoproject.org>; Fri,  3 Jan 2014 23:23:10 -0800 (PST)
Received: by mail-ea0-f181.google.com with SMTP id m10so6972137eaj.26
	for <yocto@yoctoproject.org>; Fri, 03 Jan 2014 23:23:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=XBOHc+N9Sqp9FqqYdvrnmkZZ2PkeNoBUF178O7vibFg=;
	b=MHnzWAAA64twZVV4b63gINdYoHurl3ueODih84fRs+WEUF5fDeahcPtAs0foU1O3UC
	0efcdugufu9qsmo5wazU1mX04AaGKdW+KQNdFA1FzhAUEd1Kd9Ry6xgI7Lb4q+7W/CcF
	XEDz539ayV3RF+zDFsyAEzqQG6YFzpRz7iulDbQ822+LDQ0kC4yIZZxyeUUHsMa71z83
	sEfPMnQ6Jg5y48rPGj7sCPzzvYEOYxxNJF2ODRS4QvNvTgLcg4bWTpCp0H1b6ks6iLMi
	CXXE8J7aXHrNoXssSAm8oie1ZmwV6QVuFDsxpugjlM55z/wA+YPjcrB0a1qXCF1Dv8bZ
	/kyQ==
X-Received: by 10.14.150.5 with SMTP id y5mr5898926eej.73.1388820189009;
	Fri, 03 Jan 2014 23:23:09 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id v1sm151198942eef.9.2014.01.03.23.23.07
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Jan 2014 23:23:08 -0800 (PST)
Date: Sat, 4 Jan 2014 08:23:13 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Belisko Marek <marek.belisko@gmail.com>
Message-ID: <20140104072313.GJ3707@jama>
References: <CAAfyv36VJSx65N_aG2f3MWpQ+YRtQTJLTfgJtojqUNLoZ-qXow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAfyv36VJSx65N_aG2f3MWpQ+YRtQTJLTfgJtojqUNLoZ-qXow@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Fedora 20 building core-image-miminal failed for danny
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
X-List-Received-Date: Sat, 04 Jan 2014 07:23:11 -0000
X-Groupsio-MsgNum: 17665
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="PEkEgRdBLZYkpbX2"
Content-Disposition: inline

--PEkEgRdBLZYkpbX2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 04, 2014 at 12:07:59AM +0100, Belisko Marek wrote:
> Hi,
>=20
> I'm trying to build minimal image for beagleboard in Fedora 20 in poky-da=
nny.
> With small tweaks (basically fix texinfo errors by replacing @colophon
> and doc@cygnus.com) I get rid of some initial bugs but
> binutils-cross-2.22 failing during install (log attached). I cannot
> understand what is an error with install. Any ideas?

c-tic54x.texi:348: @itemx must follow @item

see texinfo fix in dylan/dora branch, maybe it would be easier to backport =
to
danny instead of reinventing texinfo fixes there.

But there will be more components which will need a fix for texinfo,
IIRC only dylan and newer releases have already all fixes backported.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--PEkEgRdBLZYkpbX2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlLHtuEACgkQN1Ujt2V2gBzdiACfW/gQjTDy0Wq+1a5AjvOZHdcs
a2QAni6T8+PDWGoml4dEa+5UrdaJJgmZ
=BXgH
-----END PGP SIGNATURE-----

--PEkEgRdBLZYkpbX2--
