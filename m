Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E88F4E00B94; Mon, 26 Oct 2015 04:43:59 -0700 (PDT)
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
	*      [209.85.212.171 listed in list.dnswl.org]
Received: from mail-wi0-f171.google.com (mail-wi0-f171.google.com
	[209.85.212.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AD4BE009D7
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:43:57 -0700 (PDT)
Received: by wikq8 with SMTP id q8so160494203wik.1
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 04:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=7LeSsYIEbEDxnQCeh0CDyDpMNQaliIBPvXPMJBvnGUA=;
	b=oSH+e0WM2vohIHTyee1D7Pr7zK+WhbwnFyb4RSzWvk+2s/X4dL0Huyeer5mQNdnRm5
	btwhLftNZTROOOuFRUZr8rc+F3RkZVR3p9luEN0t4/A+KqzcN3wpzE603ash5lla3D0X
	7uxLmRWN4vuuXqgTbBwxNy7lJBWzEWMKIQaFAvAHugBmzxSTCZnGrKBmWz+A1XtWA5eH
	JDzIfl9EWU40iQpKizZmRUwS3lAky88fnxiKBy1BGGnM2ZZDVjOWz2lfC43I+G4nTz6X
	9kF5XjCi89lgzA8SI3VYRLbDSA+W7l7k1vGmc2Lyyysk9h1mYaxmCLQmSYzgCUUuNv/U
	RG+A==
X-Received: by 10.194.71.46 with SMTP id r14mr20315691wju.11.1445859836966;
	Mon, 26 Oct 2015 04:43:56 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	o3sm13576718wif.22.2015.10.26.04.43.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 04:43:55 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 26 Oct 2015 12:44:07 +0100
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151026114407.GA2554@jama>
References: <1445856594-27890-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1445856594-27890-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 11:43:59 -0000
X-Groupsio-MsgNum: 27038
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline

--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 26, 2015 at 09:49:54PM +1100, Jonathan Liu wrote:
> [Support #16]
>=20
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-qt/qt5/qtbase_%.bbappend | 8 ++++++++
>  1 file changed, 8 insertions(+)
>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>=20
> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.b=
bappend
> new file mode 100644
> index 0000000..b20138a
> --- /dev/null
> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,8 @@
> +PACKAGE_ARCH_rpi =3D "${MACHINE_ARCH}"

This makes all other qt* recipes (and everything which depends on them)
also MACHINE_ARCH, you can use this code from qt5.inc:

# If Qt5 (qtbase) is machine specific, then everything will be,
# because the (initial) qtbase configuration becomes part of Qt5/qmake
python __anonymous() {
    barch =3D d.getVar("BUILD_ARCH", True) or ''
    tarch =3D d.getVar("TARGET_ARCH", True) or ''
    # do not do anything if we are building a native package
    if barch !=3D tarch:
        tarch =3D d.getVar("QT_PACKAGES_ARCH", True) or ''
        if tarch:
            d.setVar("PACKAGE_ARCH", tarch)
}

and set QT_PACKAGES_ARCH to cover at least the recipes which are using
qt5.inc (not the qt5 apps and other recipes).

That's why I didn't like the idea of making it MACHINE_ARCH in the first
place (even though I understand there are cases where is no choice).

> +
> +do_configure_prepend_rpi() {
> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> +EGLFS_DEVICE_INTEGRATION =3D eglfs_brcm
> +QMAKE_LIBS_EGL =3D -lEGL -lGLESv2
> +EOF
> +}
> --=20
> 2.6.1
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--Qxx1br4bt0+wmkIi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYuEgIACgkQN1Ujt2V2gBz5jQCfSexvUqyoo+a/O+ZEa7+Nhqn+
vtcAn3PDVdQHk04izXEeO0oNC+9mwfUm
=82A8
-----END PGP SIGNATURE-----

--Qxx1br4bt0+wmkIi--
