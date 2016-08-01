Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3A89E00DA2; Sun, 31 Jul 2016 18:12:24 -0700 (PDT)
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
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E404DE00D92
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 18:12:22 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id q128so24184546wma.1
	for <yocto@yoctoproject.org>; Sun, 31 Jul 2016 18:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=2K/Jz28tRlBtM8c0UpY/B1qS4d337L9FE/mIOI4HfiI=;
	b=R0xfybk7Pl+0+SXBtE/sh7cMcKOOIjHtQkhvEyBn/oqtCKskqM1E99/7lE0Pro1v3g
	AbDQi8Vgn1rdj7hMMIozVs5HGu8aAbnLoFjaOSGNANfUPy2156RqWoiqo9aYWY8LeSv4
	5pEqxDAD1ERcaGFgjwwb/FJ6tauoNm4BdOuB4GAjWc158I5Erdeq2Tonz+rZNzfrqypd
	R8PT/4RuL1kvWwb4gMSfHtGwVOBwyKGtHyusq8GAe25MukyQv8ng1NAqNB5DsLglQdPh
	9b+FDMvi42019slFkpHU+fumUr5MGYWhcZoupZQGA7jxyES7ZerJgc0kXfUWITbLAgA3
	K4dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=2K/Jz28tRlBtM8c0UpY/B1qS4d337L9FE/mIOI4HfiI=;
	b=R1LHXdzDa4ZZYN5f+9HYyq6J7bUPVc+BRTKWEm2fFd8odqseg8APfWJPLld2d+JHU/
	7RsbZs+epswP7LCMBBU3ftUPZym0AkpxOs9SVXKL7ujWG6/yyU/Pq0WOln2offFdLt5N
	TJhgm8lPLtcikq2KPBAl9KcCayEoUiu2aCCfK2nmlZhaUzkvXXV6R8V2h34BPwyLBnoK
	7sw9ahPtOma+AcjUkbqEVfKWar1pVcIvWXmQfvPjYWtcXLFdM7iW8exFljZMVe+iUDPE
	Hl9IWImpuybDvFgyCi0EXRauCDEd3T4kpoqgxU1jq/RrMR0TMzjZwVQ+L/AwizFxMIJP
	V5ig==
X-Gm-Message-State: AEkooutzMsbw4/jqI4Ta9aYseS1hjS/v7lDOr9Gm2hkDwaMNZMQNq+PO3IMOpLtK4Ljdeg==
X-Received: by 10.28.232.149 with SMTP id f21mr51074105wmi.51.1470013941253;
	Sun, 31 Jul 2016 18:12:21 -0700 (PDT)
Received: from localhost (ip-89-176-104-169.net.upcbroadband.cz.
	[89.176.104.169]) by smtp.gmail.com with ESMTPSA id
	us9sm27841338wjb.43.2016.07.31.18.12.19
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sun, 31 Jul 2016 18:12:19 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 1 Aug 2016 03:12:21 +0200
To: Kyle Russell <bkylerussell@gmail.com>
Message-ID: <20160801011221.kzrthppcgro5ml5h@jama>
References: <1469823637-29815-1-git-send-email-bkylerussell@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1469823637-29815-1-git-send-email-bkylerussell@gmail.com>
User-Agent: Mutt/1.6.2 (2016-06-11)
Cc: yocto@yoctoproject.org, wesley.lindauer@lexmark.com
Subject: Re: [meta][PATCH] python-3.4-manifest: Add some missing RDEPENDS
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
X-List-Received-Date: Mon, 01 Aug 2016 01:12:24 -0000
X-Groupsio-MsgNum: 31319
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t3loamieasngapu7"
Content-Disposition: inline

--t3loamieasngapu7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 29, 2016 at 04:20:37PM -0400, Kyle Russell wrote:
> Signed-off-by: Kyle Russell <bkylerussell@gmail.com>

manifest is generated, you need to update the script which generates
that (read file header).

> ---
>  meta/recipes-devtools/python/python-3.4-manifest.inc | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>=20
> diff --git a/meta/recipes-devtools/python/python-3.4-manifest.inc b/meta/=
recipes-devtools/python/python-3.4-manifest.inc
> index 97070b6..f744441 100644
> --- a/meta/recipes-devtools/python/python-3.4-manifest.inc
> +++ b/meta/recipes-devtools/python/python-3.4-manifest.inc
> @@ -42,7 +42,7 @@ RDEPENDS_${PN}-crypt=3D"${PN}-core"
>  FILES_${PN}-crypt=3D"${libdir}/python3.4/hashlib.* ${libdir}/python3.4/m=
d5.* ${libdir}/python3.4/sha.* ${libdir}/python3.4/lib-dynload/crypt.*.so $=
{libdir}/python3.4/lib-dynload/_hashlib.*.so ${libdir}/python3.4/lib-dynloa=
d/_sha256.*.so ${libdir}/python3.4/lib-dynload/_sha512.*.so "
> =20
>  SUMMARY_${PN}-ctypes=3D"Python C types support"
> -RDEPENDS_${PN}-ctypes=3D"${PN}-core"
> +RDEPENDS_${PN}-ctypes=3D"${PN}-core ${PN}-subprocess"
>  FILES_${PN}-ctypes=3D"${libdir}/python3.4/ctypes ${libdir}/python3.4/lib=
-dynload/_ctypes.*.so ${libdir}/python3.4/lib-dynload/_ctypes_test.*.so "
> =20
>  SUMMARY_${PN}-curses=3D"Python curses support"
> @@ -122,7 +122,7 @@ RDEPENDS_${PN}-json=3D"${PN}-core ${PN}-math ${PN}-re"
>  FILES_${PN}-json=3D"${libdir}/python3.4/json ${libdir}/python3.4/lib-dyn=
load/_json.*.so "
> =20
>  SUMMARY_${PN}-lang=3D"Python low-level language support"
> -RDEPENDS_${PN}-lang=3D"${PN}-core"
> +RDEPENDS_${PN}-lang=3D"${PN}-core ${PN}-importlib"
>  FILES_${PN}-lang=3D"${libdir}/python3.4/lib-dynload/_bisect.*.so ${libdi=
r}/python3.4/lib-dynload/_collections.*.so ${libdir}/python3.4/lib-dynload/=
_heapq.*.so ${libdir}/python3.4/lib-dynload/_weakref.*.so ${libdir}/python3=
=2E4/lib-dynload/_functools.*.so ${libdir}/python3.4/lib-dynload/array.*.so=
 ${libdir}/python3.4/lib-dynload/itertools.*.so ${libdir}/python3.4/lib-dyn=
load/operator.*.so ${libdir}/python3.4/lib-dynload/parser.*.so ${libdir}/py=
thon3.4/atexit.* ${libdir}/python3.4/bisect.* ${libdir}/python3.4/code.* ${=
libdir}/python3.4/codeop.* ${libdir}/python3.4/collections.* ${libdir}/pyth=
on3.4/_collections_abc.* ${libdir}/python3.4/dis.* ${libdir}/python3.4/func=
tools.* ${libdir}/python3.4/heapq.* ${libdir}/python3.4/inspect.* ${libdir}=
/python3.4/keyword.* ${libdir}/python3.4/opcode.* ${libdir}/python3.4/symbo=
l.* ${libdir}/python3.4/repr.* ${libdir}/python3.4/token.* ${libdir}/python=
3.4/tokenize.* ${libdir}/python3.4/traceback.* ${libdir}/python3.4/weakref.=
* "
> =20
>  SUMMARY_${PN}-logging=3D"Python logging support"
> @@ -134,7 +134,7 @@ RDEPENDS_${PN}-mailbox=3D"${PN}-core ${PN}-mime"
>  FILES_${PN}-mailbox=3D"${libdir}/python3.4/mailbox.* "
> =20
>  SUMMARY_${PN}-math=3D"Python math support"
> -RDEPENDS_${PN}-math=3D"${PN}-core"
> +RDEPENDS_${PN}-math=3D"${PN}-core ${PN}-crypt"
>  FILES_${PN}-math=3D"${libdir}/python3.4/lib-dynload/cmath.*.so ${libdir}=
/python3.4/lib-dynload/math.*.so ${libdir}/python3.4/lib-dynload/_random.*.=
so ${libdir}/python3.4/random.* ${libdir}/python3.4/sets.* "
> =20
>  SUMMARY_${PN}-mime=3D"Python MIME handling APIs"
> @@ -198,7 +198,7 @@ RDEPENDS_${PN}-resource=3D"${PN}-core"
>  FILES_${PN}-resource=3D"${libdir}/python3.4/lib-dynload/resource.*.so "
> =20
>  SUMMARY_${PN}-shell=3D"Python shell-like functionality"
> -RDEPENDS_${PN}-shell=3D"${PN}-core ${PN}-re"
> +RDEPENDS_${PN}-shell=3D"${PN}-core ${PN}-re ${PN}-compression"
>  FILES_${PN}-shell=3D"${libdir}/python3.4/cmd.* ${libdir}/python3.4/comma=
nds.* ${libdir}/python3.4/dircache.* ${libdir}/python3.4/fnmatch.* ${libdir=
}/python3.4/glob.* ${libdir}/python3.4/popen2.* ${libdir}/python3.4/shlex.*=
 ${libdir}/python3.4/shutil.* "
> =20
>  SUMMARY_${PN}-smtpd=3D"Python Simple Mail Transport Daemon"
> @@ -218,7 +218,7 @@ RDEPENDS_${PN}-stringold=3D"${PN}-core ${PN}-re"
>  FILES_${PN}-stringold=3D"${libdir}/python3.4/lib-dynload/strop.*.so ${li=
bdir}/python3.4/string.* ${libdir}/python3.4/stringold.* "
> =20
>  SUMMARY_${PN}-subprocess=3D"Python subprocess support"
> -RDEPENDS_${PN}-subprocess=3D"${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${=
PN}-pickle"
> +RDEPENDS_${PN}-subprocess=3D"${PN}-core ${PN}-io ${PN}-re ${PN}-fcntl ${=
PN}-pickle ${PN}-threading"
>  FILES_${PN}-subprocess=3D"${libdir}/python3.4/subprocess.* "
> =20
>  SUMMARY_${PN}-syslog=3D"Python syslog interface"
> --=20
> 1.9.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--t3loamieasngapu7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAleeofQACgkQN1Ujt2V2gBz3VwCeNZZFKYcCwiAVXqkU4Ckz1to6
Bq0AoJhlSEEz3/uF8gvwb1S93xbcyBGY
=xvFw
-----END PGP SIGNATURE-----

--t3loamieasngapu7--
