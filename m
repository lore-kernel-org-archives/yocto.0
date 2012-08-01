Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C31AE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 23:15:58 -0700 (PDT)
Received: by weyu3 with SMTP id u3so5567081wey.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 23:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YrpbHPJKlR0Fgu0WoTCJDie0LnOGjhZLDl2ytrvsu1M=;
	b=b1Lm2psO+jqnyYh65L6sTDa/WOhEs0nOtRfZeCRmPkL8E4VDJDCsSw92Gaz510/p/t
	5uu9gPbxwdP5rBiNNVVH+cR9fyqllh2JL9gErt7Z66svjBFLPRESat02bQaC9Jxmv4PF
	DbqyUATVNxmnbAXRq4vuSXT1vUQ0zw7E+QXYCXJdMAiyGiXiBLkP/y66YpfC2zezVl3e
	mp2kksSRXASrww8WSGJCx+TkuoYFD/alh1ehg5f56ErSWSbCze9mtRbE9gBnKdPqdYHH
	lGH3GvKYhU9jWtcrB0qh9+3b+Tm9jQRG7+i3nXiaqmV/HajUbmHnIEwH34aMyeAU3QD8
	zknQ==
Received: by 10.217.1.197 with SMTP id n47mr7998357wes.27.1343801757013;
	Tue, 31 Jul 2012 23:15:57 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id z11sm6239729wiv.10.2012.07.31.23.15.55
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 23:15:56 -0700 (PDT)
Date: Wed, 1 Aug 2012 08:15:52 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120801061552.GB15199@jama.jama.net>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <5018A6E3.1020704@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 06:15:58 -0000
X-Groupsio-MsgNum: 8319
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WhfpMioaduB5tiZL"
Content-Disposition: inline

--WhfpMioaduB5tiZL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 31, 2012 at 08:47:47PM -0700, Darren Hart wrote:
>=20
>=20
> On 07/31/2012 08:13 PM, Khem Raj wrote:
> >=20
> > On Jul 31, 2012, at 7:46 PM, Darren Hart <dvhart@linux.intel.com> wrote:
> >=20
> >> I am trying to debug a userpsace application that misbehaves under
> >> poky-tiny. My current approach is use gdbserver on the target and atta=
ch
> >> to the offending process, then connect to it on the client using the
> >> yocto-built native gdb for the target.
> >>
> >> I can easily add gdbserver to the target image, and can successfully
> >> connect it to the process:
> >>
> >> # From the target (qemux86) root shell:
> >> # dropbearkey -t rsa -f ./rsa
> >> # dropbear -r ./rsa
> >> # DBPID=3D$(ps | grep dropbear | head -n1 | cut -f4 -d ' ')
> >> # gdbserver 127.0.0.1:1234 --attach $DBPID
> >>
> >> Now on the host machine (amd64) I want to:
> >> $ gdb????
> >> (gdb) target extended-remote 127.0.0.1:1234
> >>
> >> Which package do I need to build to get the appropriate gdb for the ho=
st
> >> to remote debug processes on the target?
> >=20
> > bake cross-gdb for your arch and use it same way as above
>=20
> ERROR: Nothing PROVIDES 'cross-gdb'
>=20
> gdb-cross maybe?
>=20
> Ah that gets a lot farther... and then do_compile fails.
>=20
> | libgdb.a(python.o): In function `gdbpy_target_wide_charset':
> | python.c:(.text+0x1c7): undefined reference to `PyUnicodeUCS4_Decode'
>=20
> And a lot more similar to that. I'm doing this on poky-tiny (so a
> minimal target libc... shouldn't impact native bits though right?

http://patchwork.openembedded.org/patch/33345/

Cheers,
--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WhfpMioaduB5tiZL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlAYyZgACgkQN1Ujt2V2gBzpPgCgrWtF2sZLV+r00DT4Ni8IrfGO
v8kAn2aKbnUFF0AKYLhjOFnPAHr9XS0Z
=AH06
-----END PGP SIGNATURE-----

--WhfpMioaduB5tiZL--
