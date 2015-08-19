Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90EF4E00474; Wed, 19 Aug 2015 06:12:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF8A0E003D9
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 06:12:39 -0700 (PDT)
Received: by wijp15 with SMTP id p15so126509947wij.0
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=qcNmRT1vRomvc+dyHT49mFL8bC8i0L45+RIQNFxMM9g=;
	b=EfWrhTHwhIw1Kgx66I0d9vrmq7zR7BNxX9MesIrbKqNJjCbTKdrl+PlFCAlcYMg6Yc
	qz3tbeA1LoxrP+l4Cu427LDrmmr4CqD1d2C2RHfIevVP0sPexnU/PwDECZUY3hGBSbiy
	qshxcD1uiUMiUZEN+0RuD3NX+tQVwD9pL8kfq3AHFFlV3ormdiEpLZZK+s5BUtpSgyuC
	JWLh+HyyNlH+WgVRM2WfzdyPmssKF/IdwA/mim9AGWslvuc/0sROmwHopCX9oY8xsZcy
	8WJZQ2KdkSJTnDcw42Jxd4yPvU28QTnc7HzwmNsJTG3UCEAz0gOeB6pBkCIQ03Rltvpb
	jX5g==
X-Received: by 10.194.178.1 with SMTP id cu1mr23685471wjc.59.1439989958423;
	Wed, 19 Aug 2015 06:12:38 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id x6sm26005749wiy.6.2015.08.19.06.12.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 19 Aug 2015 06:12:37 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 19 Aug 2015 15:12:51 +0200
To: Li xin <lixin.fnst@cn.fujitsu.com>
Message-ID: <20150819131251.GB2441@jama>
References: <1439971693-9112-1-git-send-email-lixin.fnst@cn.fujitsu.com>
MIME-Version: 1.0
In-Reply-To: <1439971693-9112-1-git-send-email-lixin.fnst@cn.fujitsu.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-cgl][PATCH] ocfs2-tools: upgrade 1.4.3 -> 1.4.4
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
X-List-Received-Date: Wed, 19 Aug 2015 13:12:43 -0000
X-Groupsio-MsgNum: 26169
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NDin8bjvE/0mNLFQ"
Content-Disposition: inline

--NDin8bjvE/0mNLFQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 19, 2015 at 04:08:13PM +0800, Li xin wrote:
> Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
> ---
>  .../ocfs2-tools/{ocfs2-tools_1.4.3.bb =3D> ocfs2-tools_1.4.4.bb}     | 7=
 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>  rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.4.3.bb =3D=
> ocfs2-tools_1.4.4.bb} (94%)
>=20
> diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb=
 b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
> similarity index 94%
> rename from meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
> rename to meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
> index 1296fd6..84da217 100644
> --- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.3.bb
> +++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.4.4.bb
> @@ -20,9 +20,10 @@ SRC_URI =3D " \
>      file://o2cb.service \
>      file://ocfs2.service \
>  "
> -SRC_URI[md5sum] =3D "296f1242f4d00d188231d726d7a1d148"
> -SRC_URI[sha256sum] =3D "a809f03c62e515a4c23e98c4b4c3f8150377af2cf44cd2a2=
ee56e175b0e4d0b3"
> -S =3D "${WORKDIR}/ocfs2-tools-ocfs2-tools-1.4.3"
> +SRC_URI[md5sum] =3D "4a17530629bfea5a7517d1db466e32e1"
> +SRC_URI[sha256sum] =3D "a9956f296443360cf66a7bf8298bfd82c51a8e37e569674c=
0afb9cfa18f68af5"

Don't use unstable github archives which are regenerated from time to
time.

> +
> +S =3D "${WORKDIR}/${PN}-${PN}-${PV}"
>  inherit autotools-brokensep pkgconfig
>  DEPENDS =3D "corosync openais cluster-glue pacemaker libxml2 linux-libc-=
headers e2fsprogs"
>  RDEPENDS_${PN} =3D "bash coreutils net-tools module-init-tools e2fsprogs=
 chkconfig glib-2.0"
> --=20
> 1.8.4.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--NDin8bjvE/0mNLFQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlXUgNIACgkQN1Ujt2V2gBxpQwCeOAllnrC3rnc/1QuAmkkqyhRA
95YAmwXDQ0o4mdZHW/RFGd86V5SF1He4
=vAOD
-----END PGP SIGNATURE-----

--NDin8bjvE/0mNLFQ--
