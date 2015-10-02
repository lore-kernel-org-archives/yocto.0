Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A88B9E00C91; Fri,  2 Oct 2015 09:36:15 -0700 (PDT)
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
	*      [209.85.212.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f181.google.com (mail-wi0-f181.google.com
	[209.85.212.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46B79E00B30
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 09:36:13 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so38387382wic.0
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 09:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=jmUvCJsxYLpZjbGyucNOkkukp720PbrseT6ACO52AyQ=;
	b=QBIKWoCv4gK2TpP3ZbDIE1ouIwaj1m/HdLWD3JlUBGa1W0DLu45imj/IT5uf8niKGj
	AOI1622tYNHcF/dDhFCgB/ste++GhCtJbvR5smUC7Aj129uucDsN0zVe0/UKVnBOEttO
	uSZPzajzyzAIcqNg8dHoiftmfe62ds9Z/oFQZZnm318WxI29AXsj2BRZGQN3e65fYPKf
	ns6AJHQlVZBn3gBJtvF+fdEjRpqviXw4IkDxTA5pZqTgq4psNRtrO0sehPbok3z0G9fO
	LanybxmKlTu/ykfIcXklNGp4e0+tfZ5GGVPwP0A1aBo5hgZa2ialmNJOwxfxdgalfMl0
	IZDQ==
X-Received: by 10.180.39.193 with SMTP id r1mr5105801wik.57.1443803772824;
	Fri, 02 Oct 2015 09:36:12 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id jf3sm9190713wic.8.2015.10.02.09.36.11
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 02 Oct 2015 09:36:12 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Fri, 2 Oct 2015 18:37:17 +0200
To: Fred Ollinger <Fred.Ollinger@seescan.com>
Message-ID: <20151002163717.GB2386@jama>
References: <1443801396017.79471@seescan.com>
MIME-Version: 1.0
In-Reply-To: <1443801396017.79471@seescan.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 16:36:15 -0000
X-Groupsio-MsgNum: 26661
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="DIOMP1UsTsWJauNi"
Content-Disposition: inline

--DIOMP1UsTsWJauNi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 02, 2015 at 03:58:04PM +0000, Fred Ollinger wrote:
> I'm trying to change my /etc/systemd/journald.conf file.
>=20
>=20
> I have created a file in:
>=20
>=20
> our_system/recipe-core/systemd_%.bbappend
>=20
>=20
> With the contents:
>=20
>=20
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"

This works only for files listed in SRC_URI, that's not the case for
journald.conf which is included directly in systemd sources.

>=20
> I created a directory in the same path called "systemd" and placed our ne=
w version of journald.conf in it.
>=20
> Then I did:
>=20
> bitbake -c cleanall systemd && bitbake systemd
> bitbake -c cleanall our_image && bitbake our_image
>=20
> Then I checked and the old journald.conf is still installed.
>=20
> What am I doing wrong?
>=20
> Frederick
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--DIOMP1UsTsWJauNi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYOsroACgkQN1Ujt2V2gBwlqACfRBOe+VxTPz29IHFlFoxWEYBM
BsUAnR6ypNOAmLf7k4LOUZyXZkUngk+U
=Nrpa
-----END PGP SIGNATURE-----

--DIOMP1UsTsWJauNi--
