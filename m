Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8ADFE00CA3; Wed, 20 Apr 2016 11:02:23 -0700 (PDT)
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
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15834E006D3
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 11:02:22 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id r12so4895811wme.0
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 11:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ZI4f5rlwPhCaj58uHUsbRJwAHecaC4ZCOGTIdpUbimg=;
	b=VFX06SIU4sGl56G8BIiqata3QFks6xjcarjWS2tF9gn0q3TyxkqkkfKHKbS1OwemSD
	+HGJJxAXQGQKdmDe/7vxlAS0RnYnvQQPXofaaIayJWhEjsCsJwpt53zfcO32XsNkITCE
	Lc0UyiL7m9qhCQiktIoTBre3dJpKamOKZHd9Qnsb+p7bm0DP0TPPR4aD5QOwCmRp5oWU
	pnpwnoDV+zDhqD0ye73B6OMsRKlH5ynKUcaKuwKbQsHMYicp5dKHF/se3+YP3JWLWBpd
	Gc7JG3D+lM9aqx6YNJjZiue4HH6g1JsPgIevD69QO9gGVNc8ztZN3NCOoaUfaBuR/Yvt
	NS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ZI4f5rlwPhCaj58uHUsbRJwAHecaC4ZCOGTIdpUbimg=;
	b=kkjnOqDVCb9HniOdnDB3iwlyqsXFkUv2p4QHmzCTwFcgFZpDc+Hy9wdDzIbzLDT+ut
	f/wly+hwje7SrZlTYxAMCGwYvCikCzfFVb1eCb6ZxoRfxLgU0qLapQzikR7QELQgxr55
	Z9o4lCNLvcyp+VMoph/kUApOP8tLZMAIery3ZKkHaV8CSA6v2E9sfNyWTzKxkZhxQuF1
	O8eCYASwhmdBvbKiJ7xiSVpe7SS8nkXvGtGj2WZgLc+MW+8tHxyJGYPX1a70xZrxugO0
	hp8ACPa8rmKv9zItOSWigODF7t6xS1e4bJWSWG7aO+yRQu3cmz/Yv7SwLosaQx5JYDrJ
	ijrg==
X-Gm-Message-State: AOPr4FX8vqVvSKgWxvVCVhRYWnPZvg7ygy+lrnG0P2m4XADQX1pBkrvag/SNMSNkd4oInQ==
X-Received: by 10.28.183.213 with SMTP id h204mr10239813wmf.96.1461175342088; 
	Wed, 20 Apr 2016 11:02:22 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	u79sm10812111wmu.8.2016.04.20.11.02.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Apr 2016 11:02:21 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 20 Apr 2016 20:04:21 +0200
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20160420180421.GD2561@jama>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Wed, 20 Apr 2016 18:02:24 -0000
X-Groupsio-MsgNum: 29522
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NklN7DEeGtkPCoo3"
Content-Disposition: inline

--NklN7DEeGtkPCoo3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 20, 2016 at 12:42:42PM -0400, Robert P. J. Day wrote:
>=20
>   (i'm using wind river linux for this, but i'm getting the impression
> that this might be coming from YP, so i'm going to ask here.)
>=20
>   while i'm trying to reduce this to a minimal test case, here's the
> really annoying issue i'm running into.
>=20
>   i created a BSP layer, and under recipes-kernel/linux/ i created
> three subdirs to hold SRC_URI content:
>=20
>  * linux-windriver-3.14/         (3.14-specific)
>  * linux-windriver-4.1/          (4.1-specific)
>  * linux-windriver/              (applicable to either kernel)
>=20
> in addition, i have subdirectories for three possible target boards,
> and i also extended MACHINEOVERRIDES to define a common grouping for
> two of those boards. and here's the problem.
>=20
>   i have files:
>=20
>  * uio.scc
>  * uio.cfg
>  * uio.patch
>=20
> that used to apply to the two common boards, but should now apply to
> all three, for all kernels.  so i used to have the directory
> structure:
>=20
>   linux-windriver/
>     common/               (represents the 2 out of 3 related boards)
>       uio.scc
>       uio.cfg
>       uio.patch
>=20
> and the uio stuff was located just fine when building for either of
> the two target boards for which "common" was my extension to
> MACHINEOVERRIDES.
>=20
>   now that it applies to all three boards, i did this just as a test
> (as you can see, unnecessary duplication of the uio files):
>=20
>   linux-windriver/
>     uio.scc
>     uio.cfg
>     uio.patch
>     common/
>       uio.scc
>       uio.cfg
>       uio.patch
>=20
> and all three boards can now build. however, when i went to get rid of
> the redundant stuff and reduce it to:
>=20
>   linux-windriver/
>     uio.scc
>     uio.cfg
>     uio.patch
>     common/
>       ... remaining stuff that still applies only to common ...
>=20
> i can still build that third board, but now the two "common" boards
> fail to process the kernel fragment uio.cfg. having moved that
> completely common uio content out of the subdirectory and right under
> linux-windriver now breaks the boards for which there is still a
> subdirectory, for no reason that i can see.
>=20
>   it's as if, once the build process sees a more specific
> MACHINEOVERRIDES directory from which to get content, it will no
> longer look elsewhere, even above for more generically appropriate
> content.
>=20
>   am i misunderstanding something? it seems that the common thread
> running through all my problems with this is *.cfg files at the top
> level of one of these directories.
>=20
>   anyone seen anything like this?

Did you check FILESPATH variable to see order of directories how they
are searched?

e.g.:
$ bitbake -e sed | grep ^FILESPATH=3D | sed "s/FILESPATH=3D\"//g; s/\"$//g;=
 s/:/\n/g;"
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/nod=
istro
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/nodistro
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/nodistro
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qem=
ux86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemux86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemux86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/qem=
uall
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/qemuall
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/qemuall
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/x86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/x86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/x86
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/i586
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/i586
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/i586
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed-4.2.2/
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/sed/
/OE/build/oe-core/openembedded-core/meta/recipes-extended/sed/files/

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--NklN7DEeGtkPCoo3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlcXxKQACgkQN1Ujt2V2gBxmwgCdGj8HicCD5tYTC5zAMXC7bVCu
NScAn1tPtDHMH7k4p5Z7nu1Mv5JRrFAR
=NjdY
-----END PGP SIGNATURE-----

--NklN7DEeGtkPCoo3--
